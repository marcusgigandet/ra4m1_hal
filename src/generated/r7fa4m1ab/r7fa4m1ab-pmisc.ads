--
-- Copyright (C) 2026 Marcus Gigandet
--
-- SPDX-License-Identifier: LGPL-3.0-or-later
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  Miscellaneous Port Control Register

package R7FA4M1AB.PMISC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype PWPR_Reserved_Field is R7FA4M1AB.UInt6;

   --  PFS Register Write Enable
   type PWPR_PFSWE_Field is
     (--  Writing to the PFS register is disabled
     Val_0,
      --  Writing to the PFS register is enabled
      Val_1)
   with Size => 1;
   for PWPR_PFSWE_Field use (Val_0 => 0, Val_1 => 1);

   --  PFSWE Bit Write Disable
   type PWPR_B0WI_Field is
     (--  Writing to the PFSWE bit is enabled
     Val_0,
      --  Writing to the PFSWE bit is disabled
      Val_1)
   with Size => 1;
   for PWPR_B0WI_Field use (Val_0 => 0, Val_1 => 1);

   --  Write-Protect Register
   type PWPR_Register is record
      --  These bits are read as 000000. The write value should be 000000.
      Reserved : PWPR_Reserved_Field := 16#0#;
      --  PFS Register Write Enable
      PFSWE    : PWPR_PFSWE_Field := R7FA4M1AB.PMISC.Val_0;
      --  PFSWE Bit Write Disable
      B0WI     : PWPR_B0WI_Field := R7FA4M1AB.PMISC.Val_1;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for PWPR_Register use
     record
       Reserved at 0 range 0 .. 5;
       PFSWE at 0 range 6 .. 6;
       B0WI at 0 range 7 .. 7;
     end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Miscellaneous Port Control Register
   type PMISC_Peripheral is record
      --  Write-Protect Register
      PWPR : aliased PWPR_Register;
   end record
   with Volatile;

   for PMISC_Peripheral use
     record
       PWPR at 16#3# range 0 .. 7;
     end record;

   --  Miscellaneous Port Control Register
   PMISC_Periph : aliased PMISC_Peripheral
   with Import, Address => PMISC_Base;

end R7FA4M1AB.PMISC;
