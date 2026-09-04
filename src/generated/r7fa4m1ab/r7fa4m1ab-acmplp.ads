--
-- Copyright (C) 2026 Marcus Gigandet
--
-- SPDX-License-Identifier: LGPL-3.0-or-later
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  Low-Power Analog Comparator

package R7FA4M1AB.ACMPLP is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  ACMPLP0 Operation Enable
   type COMPMDR_C0ENB_Field is
     (--  Disabled
     Val_0,
      --  Enabled
      Val_1)
   with Size => 1;
   for COMPMDR_C0ENB_Field use (Val_0 => 0, Val_1 => 1);

   --  ACMPLP0 Window Function Mode Enable
   type COMPMDR_C0WDE_Field is
     (--  Disabled
     Val_0,
      --  Enabled
      Val_1)
   with Size => 1;
   for COMPMDR_C0WDE_Field use (Val_0 => 0, Val_1 => 1);

   --  ACMPLP0 Reference Voltage Selection
   type COMPMDR_C0VRF_Field is
     (--  IVREF0
     Val_0,
      --  internal reference voltage (Vref)
      Val_1)
   with Size => 1;
   for COMPMDR_C0VRF_Field use (Val_0 => 0, Val_1 => 1);

   --  ACMPLP0 Monitor Flag
   type COMPMDR_C0MON_Field is
     (--  CMPIN0 < CMPREF0, CMPIN0 < internal reference voltage, or ACMPLP0 operation
     --  disabled.(When the window function is disabled)/CMPIN0 < VRFL, CMPIN0 >
     --  VRFH, or ACMPLP0 operation disabled.(When the window function is enabled)
     Val_0,
      --  CMPIN0 > CMPREF0, or CMPIN0 > internal reference voltage.(When the window
      --  function is disabled)/VRFL < CMPIN0 < VRFH.(When the window function is
      --  enabled)
      Val_1)
   with Size => 1;
   for COMPMDR_C0MON_Field use (Val_0 => 0, Val_1 => 1);

   --  ACMPLP1 Operation Enable
   type COMPMDR_C1ENB_Field is
     (--  Disabled
     Val_0,
      --  Enabled
      Val_1)
   with Size => 1;
   for COMPMDR_C1ENB_Field use (Val_0 => 0, Val_1 => 1);

   --  ACMPLP1 Window Function Mode Enable
   type COMPMDR_C1WDE_Field is
     (--  Disabled
     Val_0,
      --  Enabled
      Val_1)
   with Size => 1;
   for COMPMDR_C1WDE_Field use (Val_0 => 0, Val_1 => 1);

   --  ACMPLP1 Reference Voltage Selection
   type COMPMDR_C1VRF_Field is
     (--  IVREF0 or IVREF1
     Val_0,
      --  internal reference voltage (Vref)
      Val_1)
   with Size => 1;
   for COMPMDR_C1VRF_Field use (Val_0 => 0, Val_1 => 1);

   --  ACMPLP1 Monitor Flag
   type COMPMDR_C1MON_Field is
     (--  CMPIN1 < CMPREF1, CMPIN1 < internal reference voltage, or ACMPLP1 operation
     --  disabled.(When the window function is disabled)/CMPIN1 < VRFL, CMPIN1 >
     --  VRFH, or ACMPLP1 operation disabled.(When the window function is enabled)
     Val_0,
      --  CMPIN1 > CMPREF1, or CMPIN1 > internal reference voltage.(When the window
      --  function is disabled)/VRFL < CMPIN1 < VRFH.(When the window function is
      --  enabled)
      Val_1)
   with Size => 1;
   for COMPMDR_C1MON_Field use (Val_0 => 0, Val_1 => 1);

   --  ACMPLP Mode Setting Register
   type COMPMDR_Register is record
      --  ACMPLP0 Operation Enable
      C0ENB : COMPMDR_C0ENB_Field := R7FA4M1AB.ACMPLP.Val_0;
      --  ACMPLP0 Window Function Mode Enable
      C0WDE : COMPMDR_C0WDE_Field := R7FA4M1AB.ACMPLP.Val_0;
      --  ACMPLP0 Reference Voltage Selection
      C0VRF : COMPMDR_C0VRF_Field := R7FA4M1AB.ACMPLP.Val_0;
      --  Read-only. ACMPLP0 Monitor Flag
      C0MON : COMPMDR_C0MON_Field := R7FA4M1AB.ACMPLP.Val_0;
      --  ACMPLP1 Operation Enable
      C1ENB : COMPMDR_C1ENB_Field := R7FA4M1AB.ACMPLP.Val_0;
      --  ACMPLP1 Window Function Mode Enable
      C1WDE : COMPMDR_C1WDE_Field := R7FA4M1AB.ACMPLP.Val_0;
      --  ACMPLP1 Reference Voltage Selection
      C1VRF : COMPMDR_C1VRF_Field := R7FA4M1AB.ACMPLP.Val_0;
      --  Read-only. ACMPLP1 Monitor Flag
      C1MON : COMPMDR_C1MON_Field := R7FA4M1AB.ACMPLP.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for COMPMDR_Register use
     record
       C0ENB at 0 range 0 .. 0;
       C0WDE at 0 range 1 .. 1;
       C0VRF at 0 range 2 .. 2;
       C0MON at 0 range 3 .. 3;
       C1ENB at 0 range 4 .. 4;
       C1WDE at 0 range 5 .. 5;
       C1VRF at 0 range 6 .. 6;
       C1MON at 0 range 7 .. 7;
     end record;

   --  ACMPLP0 Filter Select
   type COMPFIR_C0FCK_Field is
     (--  No Sampling (bypass)
     Val_00,
      --  Sampling at PCLK
      Val_01,
      --  Sampling at PCLK/8
      Val_10,
      --  Sampling at PCLK/32
      Val_11)
   with Size => 2;
   for COMPFIR_C0FCK_Field use
     (Val_00 => 0, Val_01 => 1, Val_10 => 2, Val_11 => 3);

   --  ACMPLP0 Edge Polarity Switching
   type COMPFIR_C0EPO_Field is
     (--  Interrupt and ELC event request at rising edge
     Val_0,
      --  Interrupt and ELC event request at falling edge
      Val_1)
   with Size => 1;
   for COMPFIR_C0EPO_Field use (Val_0 => 0, Val_1 => 1);

   --  ACMPLP0 Edge Detection Selection
   type COMPFIR_C0EDG_Field is
     (--  Interrupt and ELC event request by one-edge detection
     Val_0,
      --  Interrupt and ELC event request by both-edge detection
      Val_1)
   with Size => 1;
   for COMPFIR_C0EDG_Field use (Val_0 => 0, Val_1 => 1);

   --  ACMPLP1 Filter Select
   type COMPFIR_C1FCK_Field is
     (--  No Sampling (bypass)
     Val_00,
      --  Sampling at PCLK
      Val_01,
      --  Sampling at PCLK/8
      Val_10,
      --  Sampling at PCLK/32
      Val_11)
   with Size => 2;
   for COMPFIR_C1FCK_Field use
     (Val_00 => 0, Val_01 => 1, Val_10 => 2, Val_11 => 3);

   --  ACMPLP1 Edge Polarity Switching
   type COMPFIR_C1EPO_Field is
     (--  Interrupt and ELC event request at rising edge
     Val_0,
      --  Interrupt and ELC event request at falling edge
      Val_1)
   with Size => 1;
   for COMPFIR_C1EPO_Field use (Val_0 => 0, Val_1 => 1);

   --  ACMPLP1 Edge Detection Selection
   type COMPFIR_C1EDG_Field is
     (--  Interrupt and ELC event request by one-edge detection
     Val_0,
      --  Interrupt and ELC event request by both-edge detection
      Val_1)
   with Size => 1;
   for COMPFIR_C1EDG_Field use (Val_0 => 0, Val_1 => 1);

   --  ACMPLP Filter Control Register
   type COMPFIR_Register is record
      --  ACMPLP0 Filter Select
      C0FCK : COMPFIR_C0FCK_Field := R7FA4M1AB.ACMPLP.Val_00;
      --  ACMPLP0 Edge Polarity Switching
      C0EPO : COMPFIR_C0EPO_Field := R7FA4M1AB.ACMPLP.Val_0;
      --  ACMPLP0 Edge Detection Selection
      C0EDG : COMPFIR_C0EDG_Field := R7FA4M1AB.ACMPLP.Val_0;
      --  ACMPLP1 Filter Select
      C1FCK : COMPFIR_C1FCK_Field := R7FA4M1AB.ACMPLP.Val_00;
      --  ACMPLP1 Edge Polarity Switching
      C1EPO : COMPFIR_C1EPO_Field := R7FA4M1AB.ACMPLP.Val_0;
      --  ACMPLP1 Edge Detection Selection
      C1EDG : COMPFIR_C1EDG_Field := R7FA4M1AB.ACMPLP.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for COMPFIR_Register use
     record
       C0FCK at 0 range 0 .. 1;
       C0EPO at 0 range 2 .. 2;
       C0EDG at 0 range 3 .. 3;
       C1FCK at 0 range 4 .. 5;
       C1EPO at 0 range 6 .. 6;
       C1EDG at 0 range 7 .. 7;
     end record;

   subtype COMPOCR_Reserved_Field is R7FA4M1AB.Bit;

   --  ACMPLP0 VCOUT Pin Output Enable
   type COMPOCR_C0OE_Field is
     (--  Disabled
     Val_0,
      --  Enabled
      Val_1)
   with Size => 1;
   for COMPOCR_C0OE_Field use (Val_0 => 0, Val_1 => 1);

   --  ACMPLP0 VCOUT Output Polarity Selection
   type COMPOCR_C0OP_Field is
     (--  Non inverted
     Val_0,
      --  Inverted
      Val_1)
   with Size => 1;
   for COMPOCR_C0OP_Field use (Val_0 => 0, Val_1 => 1);

   subtype COMPOCR_Reserved_Field_1 is R7FA4M1AB.UInt2;

   --  ACMPLP1 VCOUT Pin Output Enable
   type COMPOCR_C1OE_Field is
     (--  Disabled
     Val_0,
      --  Enabled
      Val_1)
   with Size => 1;
   for COMPOCR_C1OE_Field use (Val_0 => 0, Val_1 => 1);

   --  ACMPLP1 VCOUT Output Polarity Selection
   type COMPOCR_C1OP_Field is
     (--  Non inverted
     Val_0,
      --  Inverted
      Val_1)
   with Size => 1;
   for COMPOCR_C1OP_Field use (Val_0 => 0, Val_1 => 1);

   --  ACMPLP0/ACMPLP1 Speed Selection
   type COMPOCR_SPDMD_Field is
     (--  Comparator low-speed mode
     Val_0,
      --  Comparator high-speed mode
      Val_1)
   with Size => 1;
   for COMPOCR_SPDMD_Field use (Val_0 => 0, Val_1 => 1);

   --  ACMPLP Output Control Register
   type COMPOCR_Register is record
      --  This bit is read as 0. The write value should be 0.
      Reserved   : COMPOCR_Reserved_Field := 16#0#;
      --  ACMPLP0 VCOUT Pin Output Enable
      C0OE       : COMPOCR_C0OE_Field := R7FA4M1AB.ACMPLP.Val_0;
      --  ACMPLP0 VCOUT Output Polarity Selection
      C0OP       : COMPOCR_C0OP_Field := R7FA4M1AB.ACMPLP.Val_0;
      --  These bits are read as 00. The write value should be 00.
      Reserved_1 : COMPOCR_Reserved_Field_1 := 16#0#;
      --  ACMPLP1 VCOUT Pin Output Enable
      C1OE       : COMPOCR_C1OE_Field := R7FA4M1AB.ACMPLP.Val_0;
      --  ACMPLP1 VCOUT Output Polarity Selection
      C1OP       : COMPOCR_C1OP_Field := R7FA4M1AB.ACMPLP.Val_0;
      --  ACMPLP0/ACMPLP1 Speed Selection
      SPDMD      : COMPOCR_SPDMD_Field := R7FA4M1AB.ACMPLP.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for COMPOCR_Register use
     record
       Reserved at 0 range 0 .. 0;
       C0OE at 0 range 1 .. 1;
       C0OP at 0 range 2 .. 2;
       Reserved_1 at 0 range 3 .. 4;
       C1OE at 0 range 5 .. 5;
       C1OP at 0 range 6 .. 6;
       SPDMD at 0 range 7 .. 7;
     end record;

   --  ACMPLP0 Input(IVCMP0) Selection
   type COMPSEL0_CMPSEL20_Field is
     (--  No input
     Val_000,
      --  CMPIN0 (P100)
      Val_001,
      --  CMPIN0 (P503)
      Val_100,
      --  settings prohibited
      others_k)
   with Size => 3;
   for COMPSEL0_CMPSEL20_Field use
     (Val_000 => 0, Val_001 => 1, Val_100 => 4, others_k => 7);

   subtype COMPSEL0_Reserved_Field is R7FA4M1AB.Bit;

   --  ACMPLP1 Input (IVCMP1) Selection
   type COMPSEL0_CMPSEL64_Field is
     (--  No input
     Val_000,
      --  CMPIN1 (P102)
      Val_001,
      --  CMPIN1 (P501)
      Val_100,
      --  settings prohibited
      others_k)
   with Size => 3;
   for COMPSEL0_CMPSEL64_Field use
     (Val_000 => 0, Val_001 => 1, Val_100 => 4, others_k => 7);

   --  Comparator Input Select Register
   type COMPSEL0_Register is record
      --  ACMPLP0 Input(IVCMP0) Selection
      CMPSEL20   : COMPSEL0_CMPSEL20_Field := R7FA4M1AB.ACMPLP.Val_001;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : COMPSEL0_Reserved_Field := 16#0#;
      --  ACMPLP1 Input (IVCMP1) Selection
      CMPSEL64   : COMPSEL0_CMPSEL64_Field := R7FA4M1AB.ACMPLP.Val_001;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : COMPSEL0_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for COMPSEL0_Register use
     record
       CMPSEL20 at 0 range 0 .. 2;
       Reserved at 0 range 3 .. 3;
       CMPSEL64 at 0 range 4 .. 6;
       Reserved_1 at 0 range 7 .. 7;
     end record;

   --  ACMPLP0 Reference Voltage(IVREF0) Selection*
   type COMPSEL1_CRVS20_Field is
     (--  No input
     Val_000,
      --  CMPREF0 (P101)
      Val_001,
      --  DAC8 (ch0) output
      Val_010,
      --  CMPREF0 (P502)
      Val_100,
      --  settings prohibited.
      others_k)
   with Size => 3;
   for COMPSEL1_CRVS20_Field use
     (Val_000 => 0, Val_001 => 1, Val_010 => 2, Val_100 => 4, others_k => 7);

   subtype COMPSEL1_Reserved_Field is R7FA4M1AB.Bit;

   --  ACMPLP1 Reference Voltage(IVREF1) Selection
   type COMPSEL1_CRVS64_Field is
     (--  No input
     Val_000,
      --  CMPREF1 (P103)
      Val_001,
      --  DAC8 (ch1) output
      Val_010,
      --  CMPREF1 (P500)
      Val_100,
      --  settings prohibited.
      others_k)
   with Size => 3;
   for COMPSEL1_CRVS64_Field use
     (Val_000 => 0, Val_001 => 1, Val_010 => 2, Val_100 => 4, others_k => 7);

   --  ACMPLP1 Reference Voltage Selection
   type COMPSEL1_C1VRF2_Field is
     (--  IVREF0 selected
     Val_0,
      --  IVREF1 selected.
      Val_1)
   with Size => 1;
   for COMPSEL1_C1VRF2_Field use (Val_0 => 0, Val_1 => 1);

   --  Comparator Reference Voltage Select Register
   type COMPSEL1_Register is record
      --  ACMPLP0 Reference Voltage(IVREF0) Selection*
      CRVS20   : COMPSEL1_CRVS20_Field := R7FA4M1AB.ACMPLP.Val_001;
      --  This bit is read as 0. The write value should be 0.
      Reserved : COMPSEL1_Reserved_Field := 16#0#;
      --  ACMPLP1 Reference Voltage(IVREF1) Selection
      CRVS64   : COMPSEL1_CRVS64_Field := R7FA4M1AB.ACMPLP.Val_001;
      --  ACMPLP1 Reference Voltage Selection
      C1VRF2   : COMPSEL1_C1VRF2_Field := R7FA4M1AB.ACMPLP.Val_1;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for COMPSEL1_Register use
     record
       CRVS20 at 0 range 0 .. 2;
       Reserved at 0 range 3 .. 3;
       CRVS64 at 0 range 4 .. 6;
       C1VRF2 at 0 range 7 .. 7;
     end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Low-Power Analog Comparator
   type ACMPLP_Peripheral is record
      --  ACMPLP Mode Setting Register
      COMPMDR  : aliased COMPMDR_Register;
      --  ACMPLP Filter Control Register
      COMPFIR  : aliased COMPFIR_Register;
      --  ACMPLP Output Control Register
      COMPOCR  : aliased COMPOCR_Register;
      --  Comparator Input Select Register
      COMPSEL0 : aliased COMPSEL0_Register;
      --  Comparator Reference Voltage Select Register
      COMPSEL1 : aliased COMPSEL1_Register;
   end record
   with Volatile;

   for ACMPLP_Peripheral use
     record
       COMPMDR at 16#0# range 0 .. 7;
       COMPFIR at 16#1# range 0 .. 7;
       COMPOCR at 16#2# range 0 .. 7;
       COMPSEL0 at 16#4# range 0 .. 7;
       COMPSEL1 at 16#5# range 0 .. 7;
     end record;

   --  Low-Power Analog Comparator
   ACMPLP_Periph : aliased ACMPLP_Peripheral
   with Import, Address => ACMPLP_Base;

end R7FA4M1AB.ACMPLP;
