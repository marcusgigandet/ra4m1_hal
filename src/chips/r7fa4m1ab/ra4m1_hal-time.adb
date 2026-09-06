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

package body RA4M1_HAL.Time is
   --  Todo: Try to clean up the UInt references since the HAL and R7FA4M1AB both declare them.
   use type HAL.UInt32;
   use type HAL.UInt64;
   use type R7FA4M1AB.GPT320.GTSTR_CSTRT0_Field;

   --  GPT320 runs at 48 MHz
   Timer_Ticks_Per_Microsecond : constant := 48;

   --  Reads the timer counter register.
   --  @return The current tick count.
   function Current_Ticks return HAL.UInt32 with Inline is
   begin
      return HAL.UInt32 (R7FA4M1AB.GPT320.GPT320_Periph.GTCNT);
   end Current_Ticks;

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
         return; --  No initialization is needed.
      end if;

      --  Disable write protection for the register.
      R7FA4M1AB.SYSTEM.SYSTEM_Periph.PRCR :=
        (PRC    => (As_Array => False, Val => 2#10#),
         PRC3   => R7FA4M1AB.SYSTEM.Val_0,
         PRKEY  => R7FA4M1AB.SYSTEM.Val_0x5A,
         others => <>);

      R7FA4M1AB.MSTP.MSTP_Periph.MSTPCRD.MSTPD_1.Arr (5) :=
        R7FA4M1AB.MSTP.Val_0;
      Module_Stop_State := R7FA4M1AB.MSTP.MSTP_Periph.MSTPCRD.MSTPD_1.Val;

      --  Enable write protection for the register.
      R7FA4M1AB.SYSTEM.SYSTEM_Periph.PRCR :=
        (--  Restore write protection
         PRC    => (As_Array => False, Val => 2#00#),
         --  Protect write to the register.
         PRC3   => R7FA4M1AB.SYSTEM.Val_0,
         --  Disable writing to the PRCR register.
         PRKEY  => R7FA4M1AB.SYSTEM.Val_0x5A,
         others => <>);

      --  Configure PWM timer as a free-running, upward-counting 32-bit timer.
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

      --  Configure the timer count directions.
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

   function To_Ticks (Count : Integer; Scale : Integer) return HAL.UInt64
   with Inline
   is
   begin
      --  Check that the ticks are positive since the HAL uses signed integers.
      if Count <= 0 or else Scale <= 0 then
         return 0;
      end if;

      return HAL.UInt64 (Count) * HAL.UInt64 (Scale);
   end To_Ticks;

   procedure Delay_Ticks (Ticks_Count : HAL.UInt64) is
      Remaining_Ticks : HAL.UInt64 := Ticks_Count;
   begin
      Initialize_Timer;
   end Delay_Ticks;

   overriding
   procedure Delay_Microseconds (This : in out Delays; Us : Integer) is
   begin
      Delay_Ticks (To_Ticks (Us, Timer_Ticks_Per_Microsecond));
   end Delay_Microseconds;

   overriding
   procedure Delay_Milliseconds (This : in out Delays; Ms : Integer) is
   begin
      Delay_Ticks (To_Ticks (Ms, 1_000 * Timer_Ticks_Per_Microsecond));
   end Delay_Milliseconds;

   overriding
   procedure Delay_Seconds (This : in out Delays; S : Integer) is
   begin
      Delay_Ticks (To_Ticks (S, 1_000_000 * Timer_Ticks_Per_Microsecond));
   end Delay_Seconds;
end RA4M1_HAL.Time;
