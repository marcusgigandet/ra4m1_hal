-- 
-- Copyright (C) 2026 Marcus Gigandet
--
-- SPDX-License-Identifier: LGPL-3.0-or-later
-- 

pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB-ada.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  Module Stop Control B,C,D
package R7FA4M1AB.MSTP is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype MSTPCRB_Reserved_Field is R7FA4M1AB.UInt2;

   --  Controller Area Network Module Stop
   type MSTPCRB_MSTPB2_Field is
     (--  Cancel the module-stop state
      Val_0,
      --  Enter the module-stop state
      Val_1)
     with Size => 1;
   for MSTPCRB_MSTPB2_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype MSTPCRB_Reserved_Field_1 is R7FA4M1AB.UInt5;

   --  I2C Bus Interface 1 Module Stop
   type MSTPCRB_MSTPB8_Field is
     (--  Cancel the module-stop state
      Val_0,
      --  Enter the module-stop state
      Val_1)
     with Size => 1;
   for MSTPCRB_MSTPB8_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  MSTPCRB_MSTPB array
   type MSTPCRB_MSTPB_Field_Array is array (8 .. 9) of MSTPCRB_MSTPB8_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for MSTPCRB_MSTPB
   type MSTPCRB_MSTPB_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSTPB as a value
            Val : R7FA4M1AB.UInt2;
         when True =>
            --  MSTPB as an array
            Arr : MSTPCRB_MSTPB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for MSTPCRB_MSTPB_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Universal Serial Bus 2.0 FS Interface Module Stop
   type MSTPCRB_MSTPB11_Field is
     (--  Cancel the module-stop state
      Val_0,
      --  Enter the module-stop state
      Val_1)
     with Size => 1;
   for MSTPCRB_MSTPB11_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype MSTPCRB_Reserved_Field_2 is R7FA4M1AB.UInt6;

   --  Serial Peripheral Interface 1 Module Stop
   type MSTPCRB_MSTPB18_Field is
     (--  Cancel the module-stop state
      Val_0,
      --  Enter the module-stop state
      Val_1)
     with Size => 1;
   for MSTPCRB_MSTPB18_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  MSTPCRB_MSTPB array
   type MSTPCRB_MSTPB_Field_Array_1 is array (18 .. 19)
     of MSTPCRB_MSTPB18_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for MSTPCRB_MSTPB
   type MSTPCRB_MSTPB_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSTPB as a value
            Val : R7FA4M1AB.UInt2;
         when True =>
            --  MSTPB as an array
            Arr : MSTPCRB_MSTPB_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for MSTPCRB_MSTPB_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Serial Communication Interface 9 Module Stop
   type MSTPCRB_MSTPB22_Field is
     (--  Cancel the module-stop state
      Val_0,
      --  Enter the module-stop state
      Val_1)
     with Size => 1;
   for MSTPCRB_MSTPB22_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Serial Communication Interface 2 Module Stop
   type MSTPCRB_MSTPB29_Field is
     (--  Cancel the module-stop state
      Val_0,
      --  Enter the module-stop state
      Val_1)
     with Size => 1;
   for MSTPCRB_MSTPB29_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  MSTPCRB_MSTPB array
   type MSTPCRB_MSTPB_Field_Array_2 is array (29 .. 31)
     of MSTPCRB_MSTPB29_Field
     with Component_Size => 1, Size => 3;

   --  Type definition for MSTPCRB_MSTPB
   type MSTPCRB_MSTPB_Field_2
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSTPB as a value
            Val : R7FA4M1AB.UInt3;
         when True =>
            --  MSTPB as an array
            Arr : MSTPCRB_MSTPB_Field_Array_2;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for MSTPCRB_MSTPB_Field_2 use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  Module Stop Control Register B
   type MSTPCRB_Register is record
      --  These bits are read as 11. The write value should be 11.
      Reserved   : MSTPCRB_Reserved_Field := 16#3#;
      --  Controller Area Network Module Stop
      MSTPB2     : MSTPCRB_MSTPB2_Field := R7FA4M1AB.MSTP.Val_1;
      --  These bits are read as 11111. The write value should be 11111.
      Reserved_1 : MSTPCRB_Reserved_Field_1 := 16#1F#;
      --  I2C Bus Interface 1 Module Stop
      MSTPB      : MSTPCRB_MSTPB_Field := (As_Array => False, Val => 16#1#);
      --  This bit is read as 1. The write value should be 1.
      Reserved_2 : Boolean := True;
      --  Universal Serial Bus 2.0 FS Interface Module Stop
      MSTPB11    : MSTPCRB_MSTPB11_Field := R7FA4M1AB.MSTP.Val_1;
      --  These bits are read as 111111. The write value should be 111111.
      Reserved_3 : MSTPCRB_Reserved_Field_2 := 16#3F#;
      --  Serial Peripheral Interface 1 Module Stop
      MSTPB_1    : MSTPCRB_MSTPB_Field_1 := (As_Array => False, Val => 16#1#);
      --  These bits are read as 11. The write value should be 11.
      Reserved_4 : MSTPCRB_Reserved_Field := 16#3#;
      --  Serial Communication Interface 9 Module Stop
      MSTPB22    : MSTPCRB_MSTPB22_Field := R7FA4M1AB.MSTP.Val_1;
      --  These bits are read as 111111. The write value should be 111111.
      Reserved_5 : MSTPCRB_Reserved_Field_2 := 16#3F#;
      --  Serial Communication Interface 2 Module Stop
      MSTPB_2    : MSTPCRB_MSTPB_Field_2 := (As_Array => False, Val => 16#1#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSTPCRB_Register use record
      Reserved   at 0 range 0 .. 1;
      MSTPB2     at 0 range 2 .. 2;
      Reserved_1 at 0 range 3 .. 7;
      MSTPB      at 0 range 8 .. 9;
      Reserved_2 at 0 range 10 .. 10;
      MSTPB11    at 0 range 11 .. 11;
      Reserved_3 at 0 range 12 .. 17;
      MSTPB_1    at 0 range 18 .. 19;
      Reserved_4 at 0 range 20 .. 21;
      MSTPB22    at 0 range 22 .. 22;
      Reserved_5 at 0 range 23 .. 28;
      MSTPB_2    at 0 range 29 .. 31;
   end record;

   --  Clock Frequency Accuracy Measurement Circuit Module Stop
   type MSTPCRC_MSTPC0_Field is
     (--  Cancel the module-stop state
      Val_0,
      --  Enter the module-stop state
      Val_1)
     with Size => 1;
   for MSTPCRC_MSTPC0_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  MSTPCRC_MSTPC array
   type MSTPCRC_MSTPC_Field_Array is array (0 .. 1) of MSTPCRC_MSTPC0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for MSTPCRC_MSTPC
   type MSTPCRC_MSTPC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSTPC as a value
            Val : R7FA4M1AB.UInt2;
         when True =>
            --  MSTPC as an array
            Arr : MSTPCRC_MSTPC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for MSTPCRC_MSTPC_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Capacitive Touch Sensing Unit Module Stop
   type MSTPCRC_MSTPC3_Field is
     (--  Cancel the module-stop state
      Val_0,
      --  Enter the module-stop state
      Val_1)
     with Size => 1;
   for MSTPCRC_MSTPC3_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  MSTPCRC_MSTPC array
   type MSTPCRC_MSTPC_Field_Array_1 is array (3 .. 4) of MSTPCRC_MSTPC3_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for MSTPCRC_MSTPC
   type MSTPCRC_MSTPC_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSTPC as a value
            Val : R7FA4M1AB.UInt2;
         when True =>
            --  MSTPC as an array
            Arr : MSTPCRC_MSTPC_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for MSTPCRC_MSTPC_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype MSTPCRC_Reserved_Field is R7FA4M1AB.UInt3;

   --  Synchronous Serial Interface 0 Module Stop
   type MSTPCRC_MSTPC8_Field is
     (--  Cancel the module-stop state
      Val_0,
      --  Enter the module-stop state
      Val_1)
     with Size => 1;
   for MSTPCRC_MSTPC8_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype MSTPCRC_Reserved_Field_1 is R7FA4M1AB.UInt4;

   --  Data Operation Circuit Module Stop
   type MSTPCRC_MSTPC13_Field is
     (--  Cancel the module-stop state
      Val_0,
      --  Enter the module-stop state
      Val_1)
     with Size => 1;
   for MSTPCRC_MSTPC13_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  MSTPCRC_MSTPC array
   type MSTPCRC_MSTPC_Field_Array_2 is array (13 .. 14)
     of MSTPCRC_MSTPC13_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for MSTPCRC_MSTPC
   type MSTPCRC_MSTPC_Field_2
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSTPC as a value
            Val : R7FA4M1AB.UInt2;
         when True =>
            --  MSTPC as an array
            Arr : MSTPCRC_MSTPC_Field_Array_2;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for MSTPCRC_MSTPC_Field_2 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype MSTPCRC_Reserved_Field_2 is R7FA4M1AB.UInt16;

   --  SCE5 Module Stop
   type MSTPCRC_MSTPC31_Field is
     (--  Cancel the module-stop state
      Val_0,
      --  Enter the module-stop state
      Val_1)
     with Size => 1;
   for MSTPCRC_MSTPC31_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Module Stop Control Register C
   type MSTPCRC_Register is record
      --  Clock Frequency Accuracy Measurement Circuit Module Stop
      MSTPC      : MSTPCRC_MSTPC_Field := (As_Array => False, Val => 16#1#);
      --  This bit is read as 1. The write value should be 1.
      Reserved   : Boolean := True;
      --  Capacitive Touch Sensing Unit Module Stop
      MSTPC_1    : MSTPCRC_MSTPC_Field_1 := (As_Array => False, Val => 16#1#);
      --  These bits are read as 111. The write value should be 111.
      Reserved_1 : MSTPCRC_Reserved_Field := 16#7#;
      --  Synchronous Serial Interface 0 Module Stop
      MSTPC8     : MSTPCRC_MSTPC8_Field := R7FA4M1AB.MSTP.Val_1;
      --  These bits are read as 1111. The write value should be 1111.
      Reserved_2 : MSTPCRC_Reserved_Field_1 := 16#F#;
      --  Data Operation Circuit Module Stop
      MSTPC_2    : MSTPCRC_MSTPC_Field_2 := (As_Array => False, Val => 16#1#);
      --  These bits are read as 1111111111111111. The write value should be
      --  1111111111111111.
      Reserved_3 : MSTPCRC_Reserved_Field_2 := 16#FFFF#;
      --  SCE5 Module Stop
      MSTPC31    : MSTPCRC_MSTPC31_Field := R7FA4M1AB.MSTP.Val_1;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSTPCRC_Register use record
      MSTPC      at 0 range 0 .. 1;
      Reserved   at 0 range 2 .. 2;
      MSTPC_1    at 0 range 3 .. 4;
      Reserved_1 at 0 range 5 .. 7;
      MSTPC8     at 0 range 8 .. 8;
      Reserved_2 at 0 range 9 .. 12;
      MSTPC_2    at 0 range 13 .. 14;
      Reserved_3 at 0 range 15 .. 30;
      MSTPC31    at 0 range 31 .. 31;
   end record;

   subtype MSTPCRD_Reserved_Field is R7FA4M1AB.UInt2;

   --  Asynchronous General Purpose Timer 1 Module Stop
   type MSTPCRD_MSTPD2_Field is
     (--  Cancel the module-stop state
      Val_0,
      --  Enter the module-stop state
      Val_1)
     with Size => 1;
   for MSTPCRD_MSTPD2_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  MSTPCRD_MSTPD array
   type MSTPCRD_MSTPD_Field_Array is array (2 .. 3) of MSTPCRD_MSTPD2_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for MSTPCRD_MSTPD
   type MSTPCRD_MSTPD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSTPD as a value
            Val : R7FA4M1AB.UInt2;
         when True =>
            --  MSTPD as an array
            Arr : MSTPCRD_MSTPD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for MSTPCRD_MSTPD_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  General PWM Timer 323 to 320 Module Stop
   type MSTPCRD_MSTPD5_Field is
     (--  Cancel the module-stop state
      Val_0,
      --  Enter the module-stop state
      Val_1)
     with Size => 1;
   for MSTPCRD_MSTPD5_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  MSTPCRD_MSTPD array
   type MSTPCRD_MSTPD_Field_Array_1 is array (5 .. 6) of MSTPCRD_MSTPD5_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for MSTPCRD_MSTPD
   type MSTPCRD_MSTPD_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSTPD as a value
            Val : R7FA4M1AB.UInt2;
         when True =>
            --  MSTPD as an array
            Arr : MSTPCRD_MSTPD_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for MSTPCRD_MSTPD_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype MSTPCRD_Reserved_Field_1 is R7FA4M1AB.UInt7;

   --  Port Output Enable for GPT Module Stop
   type MSTPCRD_MSTPD14_Field is
     (--  Cancel the module-stop state
      Val_0,
      --  Enter the module-stop state
      Val_1)
     with Size => 1;
   for MSTPCRD_MSTPD14_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  14-Bit A/D Converter Module Stop
   type MSTPCRD_MSTPD16_Field is
     (--  Cancel the module-stop state
      Val_0,
      --  Enter the module-stop state
      Val_1)
     with Size => 1;
   for MSTPCRD_MSTPD16_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  8-bit D/A Converter Module Stop
   type MSTPCRD_MSTPD19_Field is
     (--  Cancel the module-stop state
      Val_0,
      --  Enter the module-stop state
      Val_1)
     with Size => 1;
   for MSTPCRD_MSTPD19_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  MSTPCRD_MSTPD array
   type MSTPCRD_MSTPD_Field_Array_2 is array (19 .. 20)
     of MSTPCRD_MSTPD19_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for MSTPCRD_MSTPD
   type MSTPCRD_MSTPD_Field_2
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSTPD as a value
            Val : R7FA4M1AB.UInt2;
         when True =>
            --  MSTPD as an array
            Arr : MSTPCRD_MSTPD_Field_Array_2;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for MSTPCRD_MSTPD_Field_2 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype MSTPCRD_Reserved_Field_2 is R7FA4M1AB.Byte;

   --  Low-Power Analog Comparator Module Stop
   type MSTPCRD_MSTPD29_Field is
     (--  Cancel the module-stop state
      Val_0,
      --  Enter the module-stop state
      Val_1)
     with Size => 1;
   for MSTPCRD_MSTPD29_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Operational Amplifier Module Stop
   type MSTPCRD_MSTPD31_Field is
     (--  Cancel the module-stop state
      Val_0,
      --  Enter the module-stop state
      Val_1)
     with Size => 1;
   for MSTPCRD_MSTPD31_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Module Stop Control Register D
   type MSTPCRD_Register is record
      --  These bits are read as 11. The write value should be 11.
      Reserved   : MSTPCRD_Reserved_Field := 16#3#;
      --  Asynchronous General Purpose Timer 1 Module Stop
      MSTPD      : MSTPCRD_MSTPD_Field := (As_Array => False, Val => 16#1#);
      --  This bit is read as 1. The write value should be 1.
      Reserved_1 : Boolean := True;
      --  General PWM Timer 323 to 320 Module Stop
      MSTPD_1    : MSTPCRD_MSTPD_Field_1 := (As_Array => False, Val => 16#1#);
      --  These bits are read as 1111111. The write value should be 1111111.
      Reserved_2 : MSTPCRD_Reserved_Field_1 := 16#7F#;
      --  Port Output Enable for GPT Module Stop
      MSTPD14    : MSTPCRD_MSTPD14_Field := R7FA4M1AB.MSTP.Val_1;
      --  This bit is read as 1. The write value should be 1.
      Reserved_3 : Boolean := True;
      --  14-Bit A/D Converter Module Stop
      MSTPD16    : MSTPCRD_MSTPD16_Field := R7FA4M1AB.MSTP.Val_1;
      --  These bits are read as 11. The write value should be 11.
      Reserved_4 : MSTPCRD_Reserved_Field := 16#3#;
      --  8-bit D/A Converter Module Stop
      MSTPD_2    : MSTPCRD_MSTPD_Field_2 := (As_Array => False, Val => 16#1#);
      --  These bits are read as 11111111. The write value should be 11111111.
      Reserved_5 : MSTPCRD_Reserved_Field_2 := 16#FF#;
      --  Low-Power Analog Comparator Module Stop
      MSTPD29    : MSTPCRD_MSTPD29_Field := R7FA4M1AB.MSTP.Val_1;
      --  This bit is read as 1. The write value should be 1.
      Reserved_6 : Boolean := True;
      --  Operational Amplifier Module Stop
      MSTPD31    : MSTPCRD_MSTPD31_Field := R7FA4M1AB.MSTP.Val_1;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSTPCRD_Register use record
      Reserved   at 0 range 0 .. 1;
      MSTPD      at 0 range 2 .. 3;
      Reserved_1 at 0 range 4 .. 4;
      MSTPD_1    at 0 range 5 .. 6;
      Reserved_2 at 0 range 7 .. 13;
      MSTPD14    at 0 range 14 .. 14;
      Reserved_3 at 0 range 15 .. 15;
      MSTPD16    at 0 range 16 .. 16;
      Reserved_4 at 0 range 17 .. 18;
      MSTPD_2    at 0 range 19 .. 20;
      Reserved_5 at 0 range 21 .. 28;
      MSTPD29    at 0 range 29 .. 29;
      Reserved_6 at 0 range 30 .. 30;
      MSTPD31    at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Module Stop Control B,C,D
   type MSTP_Peripheral is record
      --  Module Stop Control Register B
      MSTPCRB : aliased MSTPCRB_Register;
      --  Module Stop Control Register C
      MSTPCRC : aliased MSTPCRC_Register;
      --  Module Stop Control Register D
      MSTPCRD : aliased MSTPCRD_Register;
   end record
     with Volatile;

   for MSTP_Peripheral use record
      MSTPCRB at 16#0# range 0 .. 31;
      MSTPCRC at 16#4# range 0 .. 31;
      MSTPCRD at 16#8# range 0 .. 31;
   end record;

   --  Module Stop Control B,C,D
   MSTP_Periph : aliased MSTP_Peripheral
     with Import, Address => MSTP_Base;

end R7FA4M1AB.MSTP;
