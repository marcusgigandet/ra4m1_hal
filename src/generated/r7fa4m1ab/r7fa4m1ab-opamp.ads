--
-- Copyright (C) 2026 Marcus Gigandet
--
-- SPDX-License-Identifier: LGPL-3.0-or-later
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  OperationalAmplifier

package R7FA4M1AB.OPAMP is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Operational amplifier precharge control status
   type AMPMC_AMPPC0_Field is
     (--  Precharging is stopped.
     Val_0,
      --  Precharging is enabled.
      Val_1)
   with Size => 1;
   for AMPMC_AMPPC0_Field use (Val_0 => 0, Val_1 => 1);

   --  AMPMC_AMPPC array
   type AMPMC_AMPPC_Field_Array is array (0 .. 3) of AMPMC_AMPPC0_Field
   with Component_Size => 1, Size => 4;

   --  Type definition for AMPMC_AMPPC
   type AMPMC_AMPPC_Field (As_Array : Boolean := False) is record
      case As_Array is
         when False =>
            --  AMPPC as a value
            Val : R7FA4M1AB.UInt4;

         when True =>
            --  AMPPC as an array
            Arr : AMPMC_AMPPC_Field_Array;
      end case;
   end record
   with Unchecked_Union, Size => 4;

   for AMPMC_AMPPC_Field use
     record
       Val at 0 range 0 .. 3;
       Arr at 0 range 0 .. 3;
     end record;

   subtype AMPMC_Reserved_Field is R7FA4M1AB.UInt3;

   --  Operation mode selection
   type AMPMC_AMPSP_Field is
     (--  Low-power mode (low-speed).
     Val_0,
      --  High-speed mode.
      Val_1)
   with Size => 1;
   for AMPMC_AMPSP_Field use (Val_0 => 0, Val_1 => 1);

   --  Operational amplifier mode control register
   type AMPMC_Register is record
      --  Operational amplifier precharge control status
      AMPPC    : AMPMC_AMPPC_Field := (As_Array => False, Val => 16#0#);
      --  These bits are read as 000. The write value should be 000.
      Reserved : AMPMC_Reserved_Field := 16#0#;
      --  Operation mode selection
      AMPSP    : AMPMC_AMPSP_Field := R7FA4M1AB.OPAMP.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for AMPMC_Register use
     record
       AMPPC at 0 range 0 .. 3;
       Reserved at 0 range 4 .. 6;
       AMPSP at 0 range 7 .. 7;
     end record;

   --  Operational amplifier function activation/stop trigger control
   type AMPTRM_AMPTRM00_Field is
     (--  Software trigger mode(AMPTRM01=0)/Setting prohibited(AMPTRM01=1).
     Val_0,
      --  An activation trigger mode(AMPTRM01=0)/An activation and A/D trigger
      --  mode(AMPTRM01=1).
      Val_1)
   with Size => 1;
   for AMPTRM_AMPTRM00_Field use (Val_0 => 0, Val_1 => 1);

   --  Operational amplifier function activation/stop trigger control
   type AMPTRM_AMPTRM01_Field is
     (--  Software trigger mode(AMPTRM00=0)/An activation trigger mode(AMPTRM00=1).
     Val_0,
      --  Setting prohibited(AMPTRM00=0)/An activation and A/D trigger
      --  mode(AMPTRM00=1).
      Val_1)
   with Size => 1;
   for AMPTRM_AMPTRM01_Field use (Val_0 => 0, Val_1 => 1);

   --  Operational amplifier function activation/stop trigger control
   type AMPTRM_AMPTRM10_Field is
     (--  Software trigger mode(AMPTRM11=0)/Setting prohibited(AMPTRM11=1).
     Val_0,
      --  An activation trigger mode(AMPTRM11=0)/An activation and A/D trigger
      --  mode(AMPTRM11=1).
      Val_1)
   with Size => 1;
   for AMPTRM_AMPTRM10_Field use (Val_0 => 0, Val_1 => 1);

   --  Operational amplifier function activation/stop trigger control
   type AMPTRM_AMPTRM11_Field is
     (--  Software trigger mode(AMPTRM10=0)/An activation trigger mode(AMPTRM10=1).
     Val_0,
      --  Setting prohibited(AMPTRM10=0)/An activation and A/D trigger
      --  mode(AMPTRM10=1).
      Val_1)
   with Size => 1;
   for AMPTRM_AMPTRM11_Field use (Val_0 => 0, Val_1 => 1);

   --  Operational amplifier function activation/stop trigger control
   type AMPTRM_AMPTRM20_Field is
     (--  Software trigger mode(AMPTRM21=0)/Setting prohibited(AMPTRM21=1).
     Val_0,
      --  An activation trigger mode(AMPTRM21=0)/An activation and A/D trigger
      --  mode(AMPTRM21=1).
      Val_1)
   with Size => 1;
   for AMPTRM_AMPTRM20_Field use (Val_0 => 0, Val_1 => 1);

   --  Operational amplifier function activation/stop trigger control
   type AMPTRM_AMPTRM21_Field is
     (--  Software trigger mode(AMPTRM20=0)/An activation trigger mode(AMPTRM20=1).
     Val_0,
      --  Setting prohibited(AMPTRM20=0)/An activation and A/D trigger
      --  mode(AMPTRM20=1).
      Val_1)
   with Size => 1;
   for AMPTRM_AMPTRM21_Field use (Val_0 => 0, Val_1 => 1);

   --  Operational amplifier function activation/stop trigger control
   type AMPTRM_AMPTRM30_Field is
     (--  Software trigger mode(AMPTRM31=0)/Setting prohibited(AMPTRM31=1).
     Val_0,
      --  An activation trigger mode(AMPTRM31=0)/An activation and A/D trigger
      --  mode(AMPTRM31=1).
      Val_1)
   with Size => 1;
   for AMPTRM_AMPTRM30_Field use (Val_0 => 0, Val_1 => 1);

   --  Operational amplifier function activation/stop trigger control
   type AMPTRM_AMPTRM31_Field is
     (--  Software trigger mode(AMPTRM30=0)/An activation trigger mode(AMPTRM30=1).
     Val_0,
      --  Setting prohibited(AMPTRM30=0)/An activation and A/D trigger
      --  mode(AMPTRM30=1).
      Val_1)
   with Size => 1;
   for AMPTRM_AMPTRM31_Field use (Val_0 => 0, Val_1 => 1);

   --  Operational amplifier trigger mode control register
   type AMPTRM_Register is record
      --  Operational amplifier function activation/stop trigger control
      AMPTRM00 : AMPTRM_AMPTRM00_Field := R7FA4M1AB.OPAMP.Val_0;
      --  Operational amplifier function activation/stop trigger control
      AMPTRM01 : AMPTRM_AMPTRM01_Field := R7FA4M1AB.OPAMP.Val_0;
      --  Operational amplifier function activation/stop trigger control
      AMPTRM10 : AMPTRM_AMPTRM10_Field := R7FA4M1AB.OPAMP.Val_0;
      --  Operational amplifier function activation/stop trigger control
      AMPTRM11 : AMPTRM_AMPTRM11_Field := R7FA4M1AB.OPAMP.Val_0;
      --  Operational amplifier function activation/stop trigger control
      AMPTRM20 : AMPTRM_AMPTRM20_Field := R7FA4M1AB.OPAMP.Val_0;
      --  Operational amplifier function activation/stop trigger control
      AMPTRM21 : AMPTRM_AMPTRM21_Field := R7FA4M1AB.OPAMP.Val_0;
      --  Operational amplifier function activation/stop trigger control
      AMPTRM30 : AMPTRM_AMPTRM30_Field := R7FA4M1AB.OPAMP.Val_0;
      --  Operational amplifier function activation/stop trigger control
      AMPTRM31 : AMPTRM_AMPTRM31_Field := R7FA4M1AB.OPAMP.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for AMPTRM_Register use
     record
       AMPTRM00 at 0 range 0 .. 0;
       AMPTRM01 at 0 range 1 .. 1;
       AMPTRM10 at 0 range 2 .. 2;
       AMPTRM11 at 0 range 3 .. 3;
       AMPTRM20 at 0 range 4 .. 4;
       AMPTRM21 at 0 range 5 .. 5;
       AMPTRM30 at 0 range 6 .. 6;
       AMPTRM31 at 0 range 7 .. 7;
     end record;

   --  ELC trigger selection Do not change the value of the AMPTRS register
   --  after setting the AMPTRM register.
   type AMPTRS_AMPTRS_Field is
     (--  Operational amplifier 0: Operational amplifier An activation trigger
     --  0.Operational amplifier 1: Operational amplifier An activation trigger
     --  1.Operational amplifier 2: Operational amplifier An activation trigger
     --  2.Operational amplifier 3: Operational amplifier An activation trigger 3
     Val_00,
      --  Operational amplifier 0: Operational amplifier An activation trigger
      --  0.Operational amplifier 1: Operational amplifier An activation trigger
      --  0.Operational amplifier 2: Operational amplifier An activation trigger
      --  1.Operational amplifier 3: Operational amplifier An activation trigger 1
      Val_01,
      --  Setting prohibited
      Val_10,
      --  Operational amplifier 0: Operational amplifier An activation trigger
      --  0.Operational amplifier 1: Operational amplifier An activation trigger
      --  0.Operational amplifier 2: Operational amplifier An activation trigger
      --  0.Operational amplifier 3: Operational amplifier An activation trigger 0
      Val_11)
   with Size => 2;
   for AMPTRS_AMPTRS_Field use
     (Val_00 => 0, Val_01 => 1, Val_10 => 2, Val_11 => 3);

   --  Operational Amplifier Activation Trigger Select Register
   type AMPTRS_Register is record
      --  ELC trigger selection Do not change the value of the AMPTRS register
      --  after setting the AMPTRM register.
      AMPTRS       : AMPTRS_AMPTRS_Field := R7FA4M1AB.OPAMP.Val_00;
      --  unspecified
      Reserved_2_7 : R7FA4M1AB.UInt6 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for AMPTRS_Register use
     record
       AMPTRS at 0 range 0 .. 1;
       Reserved_2_7 at 0 range 2 .. 7;
     end record;

   --  Operation control of operational amplifier(UNIT0)
   type AMPC_AMPE0_Field is
     (--  Operation amplifier is stopped.
     Val_0,
      --  Software trigger mode: Operation of operational amplifier is enabled
      --  Operation of the operational amplifier reference current circuit is also
      --  enabled regardless of the IREFE bit se An activation trigger mode or An
      --  activation and A/D trigger mode: Wait for AGT is enabled.
      Val_1)
   with Size => 1;
   for AMPC_AMPE0_Field use (Val_0 => 0, Val_1 => 1);

   --  Operation control of operational amplifier(UNIT1)
   type AMPC_AMPE1_Field is
     (--  Operation amplifier is stopped.
     Val_0,
      --  Software trigger mode: Operation of operational amplifier is enabled
      --  Operation of the operational amplifier reference current circuit is also
      --  enabled regardless of the IREFE bit se An activation trigger mode or An
      --  activation and A/D trigger mode: Wait for An activation is enabled.
      Val_1)
   with Size => 1;
   for AMPC_AMPE1_Field use (Val_0 => 0, Val_1 => 1);

   --  AMPC_AMPE array
   type AMPC_AMPE_Field_Array is array (1 .. 3) of AMPC_AMPE1_Field
   with Component_Size => 1, Size => 3;

   --  Type definition for AMPC_AMPE
   type AMPC_AMPE_Field (As_Array : Boolean := False) is record
      case As_Array is
         when False =>
            --  AMPE as a value
            Val : R7FA4M1AB.UInt3;

         when True =>
            --  AMPE as an array
            Arr : AMPC_AMPE_Field_Array;
      end case;
   end record
   with Unchecked_Union, Size => 3;

   for AMPC_AMPE_Field use
     record
       Val at 0 range 0 .. 2;
       Arr at 0 range 0 .. 2;
     end record;

   subtype AMPC_Reserved_Field is R7FA4M1AB.UInt3;

   --  Operation control of operational amplifier reference current circuit
   type AMPC_IREFE_Field is
     (--  Operational amplifier reference current circuit is stopped.
     Val_0,
      --  Operation of operational amplifier reference current circuit is enabled.
      Val_1)
   with Size => 1;
   for AMPC_IREFE_Field use (Val_0 => 0, Val_1 => 1);

   --  Operational amplifier control register
   type AMPC_Register is record
      --  Operation control of operational amplifier(UNIT0)
      AMPE0    : AMPC_AMPE0_Field := R7FA4M1AB.OPAMP.Val_0;
      --  Operation control of operational amplifier(UNIT1)
      AMPE     : AMPC_AMPE_Field := (As_Array => False, Val => 16#0#);
      --  These bits are read as 000. The write value should be 000.
      Reserved : AMPC_Reserved_Field := 16#0#;
      --  Operation control of operational amplifier reference current circuit
      IREFE    : AMPC_IREFE_Field := R7FA4M1AB.OPAMP.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for AMPC_Register use
     record
       AMPE0 at 0 range 0 .. 0;
       AMPE at 0 range 1 .. 3;
       Reserved at 0 range 4 .. 6;
       IREFE at 0 range 7 .. 7;
     end record;

   --  Operational amplifier status(UNIT0)
   type AMPMON_AMPMON0_Field is
     (--  Operational amplifier 0 is stopped.
     Val_0,
      --  Operational amplifier 0 is operating.
      Val_1)
   with Size => 1;
   for AMPMON_AMPMON0_Field use (Val_0 => 0, Val_1 => 1);

   --  Operational amplifier status(UNIT1)
   type AMPMON_AMPMON1_Field is
     (--  Operational amplifier 1 is stopped.
     Val_0,
      --  Operational amplifier 1 is operating.
      Val_1)
   with Size => 1;
   for AMPMON_AMPMON1_Field use (Val_0 => 0, Val_1 => 1);

   --  Operational amplifier status(UNIT2)
   type AMPMON_AMPMON2_Field is
     (--  Operational amplifier 2 is stopped.
     Val_0,
      --  Operational amplifier 2 is operating.
      Val_1)
   with Size => 1;
   for AMPMON_AMPMON2_Field use (Val_0 => 0, Val_1 => 1);

   --  Operational amplifier status(UNIT3)
   type AMPMON_AMPMON3_Field is
     (--  Operational amplifier 3 is stopped.
     Val_0,
      --  Operational amplifier 3 is operating.
      Val_1)
   with Size => 1;
   for AMPMON_AMPMON3_Field use (Val_0 => 0, Val_1 => 1);

   subtype AMPMON_Reserved_Field is R7FA4M1AB.UInt4;

   --  Operational amplifier monitor register
   type AMPMON_Register is record
      --  Read-only. Operational amplifier status(UNIT0)
      AMPMON0  : AMPMON_AMPMON0_Field;
      --  Read-only. Operational amplifier status(UNIT1)
      AMPMON1  : AMPMON_AMPMON1_Field;
      --  Read-only. Operational amplifier status(UNIT2)
      AMPMON2  : AMPMON_AMPMON2_Field;
      --  Read-only. Operational amplifier status(UNIT3)
      AMPMON3  : AMPMON_AMPMON3_Field;
      --  Read-only. These bits are read as 0000.
      Reserved : AMPMON_Reserved_Field;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for AMPMON_Register use
     record
       AMPMON0 at 0 range 0 .. 0;
       AMPMON1 at 0 range 1 .. 1;
       AMPMON2 at 0 range 2 .. 2;
       AMPMON3 at 0 range 3 .. 3;
       Reserved at 0 range 4 .. 7;
     end record;

   -----------------
   -- Peripherals --
   -----------------

   --  OperationalAmplifier
   type OPAMP_Peripheral is record
      --  Operational amplifier mode control register
      AMPMC  : aliased AMPMC_Register;
      --  Operational amplifier trigger mode control register
      AMPTRM : aliased AMPTRM_Register;
      --  Operational Amplifier Activation Trigger Select Register
      AMPTRS : aliased AMPTRS_Register;
      --  Operational amplifier control register
      AMPC   : aliased AMPC_Register;
      --  Operational amplifier monitor register
      AMPMON : aliased AMPMON_Register;
   end record
   with Volatile;

   for OPAMP_Peripheral use
     record
       AMPMC at 16#8# range 0 .. 7;
       AMPTRM at 16#9# range 0 .. 7;
       AMPTRS at 16#A# range 0 .. 7;
       AMPC at 16#B# range 0 .. 7;
       AMPMON at 16#C# range 0 .. 7;
     end record;

   --  OperationalAmplifier
   OPAMP_Periph : aliased OPAMP_Peripheral
   with Import, Address => OPAMP_Base;

end R7FA4M1AB.OPAMP;
