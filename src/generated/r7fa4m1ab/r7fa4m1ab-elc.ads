--
-- Copyright (C) 2026 Marcus Gigandet
--
-- SPDX-License-Identifier: LGPL-3.0-or-later
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  Event Link Controller

package R7FA4M1AB.ELC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype ELCR_Reserved_Field is R7FA4M1AB.UInt7;

   --  All Event Link Enable
   type ELCR_ELCON_Field is
     (--  ELC function is disabled.
     Val_0,
      --  ELC function is enabled.
      Val_1)
   with Size => 1;
   for ELCR_ELCON_Field use (Val_0 => 0, Val_1 => 1);

   --  Event Link Controller Register
   type ELCR_Register is record
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved : ELCR_Reserved_Field := 16#0#;
      --  All Event Link Enable
      ELCON    : ELCR_ELCON_Field := R7FA4M1AB.ELC.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for ELCR_Register use
     record
       Reserved at 0 range 0 .. 6;
       ELCON at 0 range 7 .. 7;
     end record;

   --  Software Event Generation
   type ELSEGR0_SEG_Field is
     (--  Normal operation
     Val_0,
      --  Software event is generated.
      Val_1)
   with Size => 1;
   for ELSEGR0_SEG_Field use (Val_0 => 0, Val_1 => 1);

   subtype ELSEGR_Reserved_Field is R7FA4M1AB.UInt5;

   --  SEG Bit Write Enable
   type ELSEGR0_WE_Field is
     (--  Write to SEG bit is disabled.
     Val_0,
      --  Write to SEG bit is enabled.
      Val_1)
   with Size => 1;
   for ELSEGR0_WE_Field use (Val_0 => 0, Val_1 => 1);

   --  ELSEGR Register Write Disable
   type ELSEGR0_WI_Field is
     (--  Write to ELSEGR register is enabled.
     Val_0,
      --  Write to ELSEGR register is disabled.
      Val_1)
   with Size => 1;
   for ELSEGR0_WI_Field use (Val_0 => 0, Val_1 => 1);

   --  Event Link Software Event Generation Register %s
   type ELSEGR_Register is record
      --  Write-only. Software Event Generation
      SEG      : ELSEGR0_SEG_Field := R7FA4M1AB.ELC.Val_0;
      --  These bits are read as 00000. The write value should be 00000.
      Reserved : ELSEGR_Reserved_Field := 16#0#;
      --  SEG Bit Write Enable
      WE       : ELSEGR0_WE_Field := R7FA4M1AB.ELC.Val_0;
      --  Write-only. ELSEGR Register Write Disable
      WI       : ELSEGR0_WI_Field := R7FA4M1AB.ELC.Val_1;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for ELSEGR_Register use
     record
       SEG at 0 range 0 .. 0;
       Reserved at 0 range 1 .. 5;
       WE at 0 range 6 .. 6;
       WI at 0 range 7 .. 7;
     end record;

   --  Event Link Select
   type ELSR0_ELS_Field is
     (--  Event output to the corresponding peripheral module is disabled.
     Val_0x00,
      --  Set the number for the event signal to be linked.
      others_k)
   with Size => 8;
   for ELSR0_ELS_Field use (Val_0x00 => 0, others_k => 255);

   subtype ELSR_Reserved_Field is R7FA4M1AB.Byte;

   --  Event Link Setting Register %s
   type ELSR_Register is record
      --  Event Link Select
      ELS      : ELSR0_ELS_Field := R7FA4M1AB.ELC.Val_0x00;
      --  These bits are read as 00000000. The write value should be 00000000.
      Reserved : ELSR_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for ELSR_Register use
     record
       ELS at 0 range 0 .. 7;
       Reserved at 0 range 8 .. 15;
     end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Event Link Controller
   type ELC_Peripheral is record
      --  Event Link Controller Register
      ELCR    : aliased ELCR_Register;
      --  Event Link Software Event Generation Register %s
      ELSEGR0 : aliased ELSEGR_Register;
      --  Event Link Software Event Generation Register %s
      ELSEGR1 : aliased ELSEGR_Register;
      --  Event Link Setting Register %s
      ELSR0   : aliased ELSR_Register;
      --  Event Link Setting Register %s
      ELSR1   : aliased ELSR_Register;
      --  Event Link Setting Register %s
      ELSR2   : aliased ELSR_Register;
      --  Event Link Setting Register %s
      ELSR3   : aliased ELSR_Register;
      --  Event Link Setting Register %s
      ELSR4   : aliased ELSR_Register;
      --  Event Link Setting Register %s
      ELSR5   : aliased ELSR_Register;
      --  Event Link Setting Register %s
      ELSR6   : aliased ELSR_Register;
      --  Event Link Setting Register %s
      ELSR7   : aliased ELSR_Register;
      --  Event Link Setting Register %s
      ELSR8   : aliased ELSR_Register;
      --  Event Link Setting Register %s
      ELSR9   : aliased ELSR_Register;
      --  Event Link Setting Register 12
      ELSR12  : aliased ELSR_Register;
      --  Event Link Setting Register %s
      ELSR0_1 : aliased ELSR_Register;
      --  Event Link Setting Register %s
      ELSR1_1 : aliased ELSR_Register;
      --  Event Link Setting Register %s
      ELSR2_1 : aliased ELSR_Register;
      --  Event Link Setting Register %s
      ELSR3_1 : aliased ELSR_Register;
      --  Event Link Setting Register %s
      ELSR4_1 : aliased ELSR_Register;
   end record
   with Volatile;

   for ELC_Peripheral use
     record
       ELCR at 16#0# range 0 .. 7;
       ELSEGR0 at 16#2# range 0 .. 7;
       ELSEGR1 at 16#4# range 0 .. 7;
       ELSR0 at 16#10# range 0 .. 15;
       ELSR1 at 16#14# range 0 .. 15;
       ELSR2 at 16#18# range 0 .. 15;
       ELSR3 at 16#1C# range 0 .. 15;
       ELSR4 at 16#20# range 0 .. 15;
       ELSR5 at 16#24# range 0 .. 15;
       ELSR6 at 16#28# range 0 .. 15;
       ELSR7 at 16#2C# range 0 .. 15;
       ELSR8 at 16#30# range 0 .. 15;
       ELSR9 at 16#34# range 0 .. 15;
       ELSR12 at 16#40# range 0 .. 15;
       ELSR0_1 at 16#48# range 0 .. 15;
       ELSR1_1 at 16#4C# range 0 .. 15;
       ELSR2_1 at 16#50# range 0 .. 15;
       ELSR3_1 at 16#54# range 0 .. 15;
       ELSR4_1 at 16#58# range 0 .. 15;
     end record;

   --  Event Link Controller
   ELC_Periph : aliased ELC_Peripheral
   with Import, Address => ELC_Base;

end R7FA4M1AB.ELC;
