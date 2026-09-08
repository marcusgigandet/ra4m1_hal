--
--  Copyright (C) 2026 Marcus Gigandet
--
--  SPDX-License-Identifier: LGPL-3.0-or-later
--

with HAL;
with HAL.Time;
with R7FA4M1AB;
with R7FA4M1AB.GPT320;
with R7FA4M1AB.MSTP;
with R7FA4M1AB.SYSTEM;
with System;

package body RA4M1_HAL.Time is
   --  Todo: Try to clean up the UInt references since the HAL and R7FA4M1AB both declare them.
   use type HAL.UInt32;
   use type HAL.UInt64;
   use type R7FA4M1AB.GPT320.GTSTR_CSTRT0_Field;

   --  Reads the timer counter register.
   --  @return The current tick count.
   function Get_Tick_Count return HAL.UInt32 with Inline is
   begin
      return HAL.UInt32 (R7FA4M1AB.GPT320.GPT320_Periph.GTCNT);
   end Get_Tick_Count;

   --  Gets the current timer status.
   --  @return True if the timer counter is running, otherwise False.
   function Is_Timer_Initialized return Boolean with Inline is
   begin
      return
        R7FA4M1AB.GPT320.GPT320_Periph.GTSTR.CSTRT0 = R7FA4M1AB.GPT320.Val_1;
   end Is_Timer_Initialized;

   procedure Initialize_Timer is
      Module_Stop_State : R7FA4M1AB.UInt2;
   begin
      if Is_Timer_Initialized then
         return;
      end if;

      --  Disable write protection for the register
      R7FA4M1AB.SYSTEM.SYSTEM_Periph.PRCR :=
        (PRC    => (As_Array => False, Val => 2#10#),
         PRC3   => R7FA4M1AB.SYSTEM.Val_0,
         PRKEY  => R7FA4M1AB.SYSTEM.Val_0x5A,
         others => <>);

      R7FA4M1AB.MSTP.MSTP_Periph.MSTPCRD.MSTPD_1.Arr (5) :=
        R7FA4M1AB.MSTP.Val_0;
      Module_Stop_State := R7FA4M1AB.MSTP.MSTP_Periph.MSTPCRD.MSTPD_1.Val;

      --  Enable write protection for the register
      R7FA4M1AB.SYSTEM.SYSTEM_Periph.PRCR :=
        (--  Restore write protection
         PRC    => (As_Array => False, Val => 2#00#),
         --  Protect write to the register
         PRC3   => R7FA4M1AB.SYSTEM.Val_0,
         --  Disable writing to the PRCR register
         PRKEY  => R7FA4M1AB.SYSTEM.Val_0x5A,
         others => <>);

      --  Enable writes to the register
      R7FA4M1AB.GPT320.GPT320_Periph.GTWP :=
        (WP     => R7FA4M1AB.GPT320.Val_0,
         PRKEY  => R7FA4M1AB.GPT320.Val_0xA5,
         others => <>);

      --  Configure the PWN timer controls
      R7FA4M1AB.GPT320.GPT320_Periph.GTCR :=
        (CST    => R7FA4M1AB.GPT320.Val_0,
         MD     => R7FA4M1AB.GPT320.Val_000,
         TPCS   => R7FA4M1AB.GPT320.Val_000,
         others => <>);

      --  Configure the timer count directions
      R7FA4M1AB.GPT320.GPT320_Periph.GTUDDTYC :=
        (--  Configure timer to count up.
         UD     => R7FA4M1AB.GPT320.Val_1,
         --  Force the count direction.
         UDF    => R7FA4M1AB.GPT320.Val_1,
         others => <>);

      --  Set counter to 0
      R7FA4M1AB.GPT320.GPT320_Periph.GTCNT := 0;

      --  Set cycle to Uint32 max
      R7FA4M1AB.GPT320.GPT320_Periph.GTPR := R7FA4M1AB.UInt32'Last;

      --  Start the counter
      R7FA4M1AB.GPT320.GPT320_Periph.GTCR.CST := R7FA4M1AB.GPT320.Val_1;

      --  Disable writes to the register
      R7FA4M1AB.GPT320.GPT320_Periph.GTWP :=
        (WP     => R7FA4M1AB.GPT320.Val_1,
         PRKEY  => R7FA4M1AB.GPT320.Val_0xA5,
         others => <>);
   end Initialize_Timer;

   function Get_PCLKD_Divider return HAL.UInt64 is
      PCKD : constant Natural :=
        R7FA4M1AB.SYSTEM.SCKDIVCR_PCKD_Field'Pos
          (R7FA4M1AB.SYSTEM.SYSTEM_Periph.SCKDIVCR.PCKD);
   begin
      if PCKD > 6 then
         return 0;
      end if;

      --  Valid numbers are 1 to 64
      return HAL.UInt64 (2) ** PCKD;
   end Get_PCLKD_Divider;

   function Get_Source_Frequency return HAL.UInt64 is
   begin
      --  Check for the selected clock in the clock selector mux.
      case R7FA4M1AB.SYSTEM.SCKSCR_CKSEL_Field'Pos
             (R7FA4M1AB.SYSTEM.SYSTEM_Periph.SCKSCR.CKSEL)
      is
         when 1      =>
            --  MOCO.
            return 8_000_000;

         when others =>
            --  Todo: Add support for other clocks
            return 0;
      end case;
   end Get_Source_Frequency;

   function Get_GPT_Divider return HAL.UInt64 is
      TPCS : constant Natural :=
        R7FA4M1AB.GPT320.GTCR_TPCS_Field'Pos
          (R7FA4M1AB.GPT320.GPT320_Periph.GTCR.TPCS);
   begin
      if TPCS > 5 then
         return 0;
      end if;

      return HAL.UInt64 (4) ** TPCS;
   end Get_GPT_Divider;

   --  Returns the timer frequency used for the delays.
   --  @return The calculated frequency in Hz.
   function Get_Timer_Frequency return HAL.UInt64 is
      Source_Frequency : constant HAL.UInt64 := Get_Source_Frequency;
      PCLKD_Divider    : constant HAL.UInt64 := Get_PCLKD_Divider;
      GPT_Divider      : constant HAL.UInt64 := Get_GPT_Divider;
   begin
      if Source_Frequency = 0 or else PCLKD_Divider = 0 or else GPT_Divider = 0
      then
         return 0;
      end if;

      return Source_Frequency / PCLKD_Divider / GPT_Divider;
   end Get_Timer_Frequency;

   function To_Ticks
     (Count : Integer; Units_Per_Second : Integer) return HAL.UInt64
   with Inline
   is
   begin
      --  Check that the ticks are positive since the HAL uses signed integers
      if Count <= 0 or else Units_Per_Second <= 0 then
         return 0;
      end if;

      return
        (HAL.UInt64 (Count) * Get_Timer_Frequency)
        / HAL.UInt64 (Units_Per_Second);
   end To_Ticks;

   procedure Delay_Ticks (Ticks_Count : HAL.UInt64) is
      Remaining_Ticks : HAL.UInt64 := Ticks_Count;
      Previous_Ticks  : HAL.UInt32;
      Current_Tick    : HAL.UInt32;
      Elapsed_Ticks   : HAL.UInt64;
   begin
      Initialize_Timer;

      Previous_Ticks := Get_Tick_Count;

      --  Todo: This should probably use WFI and interrupt when the delay is complete instead of polling it directly
      while Remaining_Ticks > 0 loop
         Current_Tick := Get_Tick_Count;
         Elapsed_Ticks := HAL.UInt64 (Current_Tick - Previous_Ticks);

         if Elapsed_Ticks >= Remaining_Ticks then
            Remaining_Ticks := 0;
         else
            Remaining_Ticks := Remaining_Ticks - Elapsed_Ticks;
         end if;

         Previous_Ticks := Current_Tick;
      end loop;
   end Delay_Ticks;

   overriding
   procedure Delay_Microseconds (This : in out Delays; Us : Integer) is
   begin
      Delay_Ticks (To_Ticks (Us, 1_000_000));
   end Delay_Microseconds;

   overriding
   procedure Delay_Milliseconds (This : in out Delays; Ms : Integer) is
   begin
      Delay_Ticks (To_Ticks (Ms, 1_000));
   end Delay_Milliseconds;

   overriding
   procedure Delay_Seconds (This : in out Delays; S : Integer) is
   begin
      Delay_Ticks (To_Ticks (S, 1));
   end Delay_Seconds;
end RA4M1_HAL.Time;
