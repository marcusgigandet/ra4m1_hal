--
-- Copyright (C) 2026 Marcus Gigandet
--
-- SPDX-License-Identifier: LGPL-3.0-or-later
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  12-bit D/A converter

package R7FA4M1AB.DAC12 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype DACR_Reserved_Field is R7FA4M1AB.UInt5;
   subtype DACR_Reserved_Field_1 is R7FA4M1AB.Bit;

   --  D/A Output Enable 0
   type DACR_DAOE0_Field is
     (--  Analog output of channel 0 (DA0) is disabled.
     Val_0,
      --  D/A conversion of channel 0 is enabled. Analog output of channel 0 (DA0) is
      --  enabled.
      Val_1)
   with Size => 1;
   for DACR_DAOE0_Field use (Val_0 => 0, Val_1 => 1);

   --  D/A Control Register
   type DACR_Register is record
      --  These bits are read as 11111. The write value should be 11111.
      Reserved   : DACR_Reserved_Field := 16#1F#;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : DACR_Reserved_Field_1 := 16#0#;
      --  D/A Output Enable 0
      DAOE0      : DACR_DAOE0_Field := R7FA4M1AB.DAC12.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_2 : DACR_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for DACR_Register use
     record
       Reserved at 0 range 0 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       DAOE0 at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 7;
     end record;

   subtype DADPR_Reserved_Field is R7FA4M1AB.UInt7;

   --  DADRm Format Select
   type DADPR_DPSEL_Field is
     (--  Right justified format.
     Val_0,
      --  Left justified format.
      Val_1)
   with Size => 1;
   for DADPR_DPSEL_Field use (Val_0 => 0, Val_1 => 1);

   --  DADR0 Format Select Register
   type DADPR_Register is record
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved : DADPR_Reserved_Field := 16#0#;
      --  DADRm Format Select
      DPSEL    : DADPR_DPSEL_Field := R7FA4M1AB.DAC12.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for DADPR_Register use
     record
       Reserved at 0 range 0 .. 6;
       DPSEL at 0 range 7 .. 7;
     end record;

   --  D/A-A/D Synchronous Conversion
   type DAADSCR_DAADST_Field is
     (--  D/A converter operation does not synchronize with A/D converter operation
     --  (unit 1) (countermeasure against interference between D/A and A/D
     --  conversions is disabled).
     Val_0,
      --  D/A converter operation synchronizes with A/D converter operation (unit 1)
      --  (countermeasure against interference between D/A and A/D conversions is
      --  enabled).
      Val_1)
   with Size => 1;
   for DAADSCR_DAADST_Field use (Val_0 => 0, Val_1 => 1);

   --  D/A-A/D Synchronous Start Control Register
   type DAADSCR_Register is record
      --  unspecified
      Reserved_0_6 : R7FA4M1AB.UInt7 := 16#0#;
      --  D/A-A/D Synchronous Conversion
      DAADST       : DAADSCR_DAADST_Field := R7FA4M1AB.DAC12.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for DAADSCR_Register use
     record
       Reserved_0_6 at 0 range 0 .. 6;
       DAADST at 0 range 7 .. 7;
     end record;

   --  D/A Reference Voltage Select
   type DAVREFCR_REF_Field is
     (--  Not selected
     Val_000,
      --  AVCC0/AVSS0
      Val_001,
      --  Internal reference voltage/AVSS0
      Val_011,
      --  VREFH/VREFL
      Val_110,
      --  Setting prohibited
      others_k)
   with Size => 3;
   for DAVREFCR_REF_Field use
     (Val_000 => 0, Val_001 => 1, Val_011 => 3, Val_110 => 6, others_k => 7);

   subtype DAVREFCR_Reserved_Field is R7FA4M1AB.UInt5;

   --  D/A VREF Control Register
   type DAVREFCR_Register is record
      --  D/A Reference Voltage Select
      REF      : DAVREFCR_REF_Field := R7FA4M1AB.DAC12.Val_000;
      --  These bits are read as 00000. The write value should be 00000.
      Reserved : DAVREFCR_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for DAVREFCR_Register use
     record
       REF at 0 range 0 .. 2;
       Reserved at 0 range 3 .. 7;
     end record;

   -----------------
   -- Peripherals --
   -----------------

   --  12-bit D/A converter
   type DAC12_Peripheral is record
      --  D/A Data Register 0
      DADR0    : aliased R7FA4M1AB.UInt16;
      --  D/A Control Register
      DACR     : aliased DACR_Register;
      --  DADR0 Format Select Register
      DADPR    : aliased DADPR_Register;
      --  D/A-A/D Synchronous Start Control Register
      DAADSCR  : aliased DAADSCR_Register;
      --  D/A VREF Control Register
      DAVREFCR : aliased DAVREFCR_Register;
   end record
   with Volatile;

   for DAC12_Peripheral use
     record
       DADR0 at 16#0# range 0 .. 15;
       DACR at 16#4# range 0 .. 7;
       DADPR at 16#5# range 0 .. 7;
       DAADSCR at 16#6# range 0 .. 7;
       DAVREFCR at 16#7# range 0 .. 7;
     end record;

   --  12-bit D/A converter
   DAC12_Periph : aliased DAC12_Peripheral
   with Import, Address => DAC12_Base;

end R7FA4M1AB.DAC12;
