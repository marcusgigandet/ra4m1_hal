-- 
-- Copyright (C) 2026 Marcus Gigandet
--
-- SPDX-License-Identifier: LGPL-3.0-or-later
-- 

pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB-ada.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  8-bit D/A converter
package R7FA4M1AB.DAC8 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  D/A Conversion Value Setting Register %s

   --  D/A Conversion Value Setting Register %s
   type DACS_Registers is array (0 .. 1) of R7FA4M1AB.Byte;

   subtype DAM_Reserved_Field is R7FA4M1AB.UInt4;

   --  D/A Operation Enable 0
   type DAM_DACE0_Field is
     (--  D/A conversion disabled for channel 0
      Val_0,
      --  D/A conversion enabled for channel 0.
      Val_1)
     with Size => 1;
   for DAM_DACE0_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  D/A Operation Enable 1
   type DAM_DACE1_Field is
     (--  D/A conversion disabled for channel 1
      Val_0,
      --  D/A conversion enabled for channel 1
      Val_1)
     with Size => 1;
   for DAM_DACE1_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype DAM_Reserved_Field_1 is R7FA4M1AB.UInt2;

   --  D/A Converter Mode Register
   type DAM_Register is record
      --  These bits are read as 0000. The write value should be 0000.
      Reserved   : DAM_Reserved_Field := 16#0#;
      --  D/A Operation Enable 0
      DACE0      : DAM_DACE0_Field := R7FA4M1AB.DAC8.Val_0;
      --  D/A Operation Enable 1
      DACE1      : DAM_DACE1_Field := R7FA4M1AB.DAC8.Val_0;
      --  These bits are read as 00. The write value should be 00.
      Reserved_1 : DAM_Reserved_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for DAM_Register use record
      Reserved   at 0 range 0 .. 3;
      DACE0      at 0 range 4 .. 4;
      DACE1      at 0 range 5 .. 5;
      Reserved_1 at 0 range 6 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  8-bit D/A converter
   type DAC8_Peripheral is record
      --  D/A Conversion Value Setting Register %s
      DACS : aliased DACS_Registers;
      --  D/A Converter Mode Register
      DAM  : aliased DAM_Register;
   end record
     with Volatile;

   for DAC8_Peripheral use record
      DACS at 16#0# range 0 .. 15;
      DAM  at 16#3# range 0 .. 7;
   end record;

   --  8-bit D/A converter
   DAC8_Periph : aliased DAC8_Peripheral
     with Import, Address => DAC8_Base;

end R7FA4M1AB.DAC8;
