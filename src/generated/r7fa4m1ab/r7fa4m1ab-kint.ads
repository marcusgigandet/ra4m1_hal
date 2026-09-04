--
-- Copyright (C) 2026 Marcus Gigandet
--
-- SPDX-License-Identifier: LGPL-3.0-or-later
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  Key Interrupt Function

package R7FA4M1AB.KINT is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Detection Edge Selection (KRF0 to KRF7)
   type KRCTL_KREG_Field is
     (--  Falling edge
     Val_0,
      --  Rising edge
      Val_1)
   with Size => 1;
   for KRCTL_KREG_Field use (Val_0 => 0, Val_1 => 1);

   subtype KRCTL_Reserved_Field is R7FA4M1AB.UInt6;

   --  Usage of Key Interrupt Flags(KR0 to KR7)
   type KRCTL_KRMD_Field is
     (--  Do not use key interrupt flags
     Val_0,
      --  Use key interrupt flags.
      Val_1)
   with Size => 1;
   for KRCTL_KRMD_Field use (Val_0 => 0, Val_1 => 1);

   --  KEY Return Control Register
   type KRCTL_Register is record
      --  Detection Edge Selection (KRF0 to KRF7)
      KREG     : KRCTL_KREG_Field := R7FA4M1AB.KINT.Val_0;
      --  These bits are read as 000000. The write value should be 000000.
      Reserved : KRCTL_Reserved_Field := 16#0#;
      --  Usage of Key Interrupt Flags(KR0 to KR7)
      KRMD     : KRCTL_KRMD_Field := R7FA4M1AB.KINT.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for KRCTL_Register use
     record
       KREG at 0 range 0 .. 0;
       Reserved at 0 range 1 .. 6;
       KRMD at 0 range 7 .. 7;
     end record;

   --  Key interrupt flag 0
   type KRF_KRF0_Field is
     (--  No interrupt detected
     Val_0,
      --  Interrupt detected.
      Val_1)
   with Size => 1;
   for KRF_KRF0_Field use (Val_0 => 0, Val_1 => 1);

   --  KRF array
   type KRF_Field_Array is array (0 .. 7) of KRF_KRF0_Field
   with Component_Size => 1, Size => 8;

   --  KEY Return Flag Register
   type KRF_Register (As_Array : Boolean := False) is record
      case As_Array is
         when False =>
            --  KRF as a value
            Val : R7FA4M1AB.Byte;

         when True =>
            --  KRF as an array
            Arr : KRF_Field_Array;
      end case;
   end record
   with
     Unchecked_Union,
     Size        => 8,
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for KRF_Register use
     record
       Val at 0 range 0 .. 7;
       Arr at 0 range 0 .. 7;
     end record;

   --  Key interrupt mode control 0
   type KRM_KRM0_Field is
     (--  Does not detect key interrupt signal
     Val_0,
      --  Detect key interrupt signal.
      Val_1)
   with Size => 1;
   for KRM_KRM0_Field use (Val_0 => 0, Val_1 => 1);

   --  KRM array
   type KRM_Field_Array is array (0 .. 7) of KRM_KRM0_Field
   with Component_Size => 1, Size => 8;

   --  KEY Return Mode Register
   type KRM_Register (As_Array : Boolean := False) is record
      case As_Array is
         when False =>
            --  KRM as a value
            Val : R7FA4M1AB.Byte;

         when True =>
            --  KRM as an array
            Arr : KRM_Field_Array;
      end case;
   end record
   with
     Unchecked_Union,
     Size        => 8,
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for KRM_Register use
     record
       Val at 0 range 0 .. 7;
       Arr at 0 range 0 .. 7;
     end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Key Interrupt Function
   type KINT_Peripheral is record
      --  KEY Return Control Register
      KRCTL : aliased KRCTL_Register;
      --  KEY Return Flag Register
      KRF   : aliased KRF_Register;
      --  KEY Return Mode Register
      KRM   : aliased KRM_Register;
   end record
   with Volatile;

   for KINT_Peripheral use
     record
       KRCTL at 16#0# range 0 .. 7;
       KRF at 16#4# range 0 .. 7;
       KRM at 16#8# range 0 .. 7;
     end record;

   --  Key Interrupt Function
   KINT_Periph : aliased KINT_Peripheral
   with Import, Address => KINT_Base;

end R7FA4M1AB.KINT;
