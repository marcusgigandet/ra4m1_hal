--
-- Copyright (C) 2026 Marcus Gigandet
--
-- SPDX-License-Identifier: LGPL-3.0-or-later
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  Data Transfer Controller

package R7FA4M1AB.DTC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype DTCCR_Reserved_Field is R7FA4M1AB.UInt3;
   subtype DTCCR_Reserved_Field_1 is R7FA4M1AB.Bit;

   --  DTC Transfer Information Read Skip Enable.
   type DTCCR_RRS_Field is
     (--  Do not skip transfer information read
     Val_0,
      --  Skip transfer information read when vector numbers match
      Val_1)
   with Size => 1;
   for DTCCR_RRS_Field use (Val_0 => 0, Val_1 => 1);

   --  DTC Control Register
   type DTCCR_Register is record
      --  These bits are read as 000. The write value should be 000.
      Reserved   : DTCCR_Reserved_Field := 16#0#;
      --  This bit is read as 1. The write value should be 1.
      Reserved_1 : DTCCR_Reserved_Field_1 := 16#1#;
      --  DTC Transfer Information Read Skip Enable.
      RRS        : DTCCR_RRS_Field := R7FA4M1AB.DTC.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : DTCCR_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for DTCCR_Register use
     record
       Reserved at 0 range 0 .. 2;
       Reserved_1 at 0 range 3 .. 3;
       RRS at 0 range 4 .. 4;
       Reserved_2 at 0 range 5 .. 7;
     end record;

   --  DTC Module Start
   type DTCST_DTCST_Field is
     (--  DTC module stop
     Val_0,
      --  DTC module start
      Val_1)
   with Size => 1;
   for DTCST_DTCST_Field use (Val_0 => 0, Val_1 => 1);

   subtype DTCST_Reserved_Field is R7FA4M1AB.UInt7;

   --  DTC Module Start Register
   type DTCST_Register is record
      --  DTC Module Start
      DTCST    : DTCST_DTCST_Field := R7FA4M1AB.DTC.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved : DTCST_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for DTCST_Register use
     record
       DTCST at 0 range 0 .. 0;
       Reserved at 0 range 1 .. 7;
     end record;

   subtype DTCSTS_VECN_Field is R7FA4M1AB.Byte;
   subtype DTCSTS_Reserved_Field is R7FA4M1AB.UInt7;

   --  DTC Active Flag
   type DTCSTS_ACT_Field is
     (--  DTC transfer operation is not in progress.
     Val_0,
      --  DTC transfer operation is in progress.
      Val_1)
   with Size => 1;
   for DTCSTS_ACT_Field use (Val_0 => 0, Val_1 => 1);

   --  DTC Status Register
   type DTCSTS_Register is record
      --  Read-only. DTC-Activating Vector Number Monitoring These bits
      --  indicate the vector number for the activating source when DTC
      --  transfer is in progress. The value is only valid if DTC transfer is
      --  in progress (the value of the ACT flag is 1)
      VECN     : DTCSTS_VECN_Field;
      --  Read-only. These bits are read as 0000000.
      Reserved : DTCSTS_Reserved_Field;
      --  Read-only. DTC Active Flag
      ACT      : DTCSTS_ACT_Field;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for DTCSTS_Register use
     record
       VECN at 0 range 0 .. 7;
       Reserved at 0 range 8 .. 14;
       ACT at 0 range 15 .. 15;
     end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Data Transfer Controller
   type DTC_Peripheral is record
      --  DTC Control Register
      DTCCR  : aliased DTCCR_Register;
      --  DTC Vector Base Register
      DTCVBR : aliased R7FA4M1AB.UInt32;
      --  DTC Module Start Register
      DTCST  : aliased DTCST_Register;
      --  DTC Status Register
      DTCSTS : aliased DTCSTS_Register;
   end record
   with Volatile;

   for DTC_Peripheral use
     record
       DTCCR at 16#0# range 0 .. 7;
       DTCVBR at 16#4# range 0 .. 31;
       DTCST at 16#C# range 0 .. 7;
       DTCSTS at 16#E# range 0 .. 15;
     end record;

   --  Data Transfer Controller
   DTC_Periph : aliased DTC_Peripheral
   with Import, Address => DTC_Base;

end R7FA4M1AB.DTC;
