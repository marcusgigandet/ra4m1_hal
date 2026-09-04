--
-- Copyright (C) 2026 Marcus Gigandet
--
-- SPDX-License-Identifier: LGPL-3.0-or-later
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  Asynchronous General purpose Timer 1

package R7FA4M1AB.AGT1 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  AGT count start
   type AGTCR_TSTART_Field is
     (--  Count stops
     Val_0,
      --  Count starts.
      Val_1)
   with Size => 1;
   for AGTCR_TSTART_Field use (Val_0 => 0, Val_1 => 1);

   --  AGT count status flag
   type AGTCR_TCSTF_Field is
     (--  Count stops
     Val_0,
      --  Count in progress.
      Val_1)
   with Size => 1;
   for AGTCR_TCSTF_Field use (Val_0 => 0, Val_1 => 1);

   --  AGT count forced stop
   type AGTCR_TSTOP_Field is
     (--  Writing is invalid
     Val_0,
      --  The count is forcibly stopped.
      Val_1)
   with Size => 1;
   for AGTCR_TSTOP_Field use (Val_0 => 0, Val_1 => 1);

   subtype AGTCR_Reserved_Field is R7FA4M1AB.Bit;

   --  Active edge judgment flag
   type AGTCR_TEDGF_Field is
     (--  No active edge received
     Val_0,
      --  Active edge received.
      Val_1)
   with Size => 1;
   for AGTCR_TEDGF_Field use (Val_0 => 0, Val_1 => 1);

   --  Underflow flag
   type AGTCR_TUNDF_Field is
     (--  No match
     Val_0,
      --  Match.
      Val_1)
   with Size => 1;
   for AGTCR_TUNDF_Field use (Val_0 => 0, Val_1 => 1);

   --  Compare match A flag
   type AGTCR_TCMAF_Field is
     (--  No match
     Val_0,
      --  Match.
      Val_1)
   with Size => 1;
   for AGTCR_TCMAF_Field use (Val_0 => 0, Val_1 => 1);

   --  Compare match B flag
   type AGTCR_TCMBF_Field is
     (--  No match
     Val_0,
      --  Match.
      Val_1)
   with Size => 1;
   for AGTCR_TCMBF_Field use (Val_0 => 0, Val_1 => 1);

   --  AGT Control Register
   type AGTCR_Register is record
      --  AGT count start
      TSTART   : AGTCR_TSTART_Field := R7FA4M1AB.AGT1.Val_0;
      --  Read-only. AGT count status flag
      TCSTF    : AGTCR_TCSTF_Field := R7FA4M1AB.AGT1.Val_0;
      --  Write-only. AGT count forced stop
      TSTOP    : AGTCR_TSTOP_Field := R7FA4M1AB.AGT1.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved : AGTCR_Reserved_Field := 16#0#;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Active edge judgment flag
      TEDGF    : AGTCR_TEDGF_Field := R7FA4M1AB.AGT1.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Underflow flag
      TUNDF    : AGTCR_TUNDF_Field := R7FA4M1AB.AGT1.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Compare match A flag
      TCMAF    : AGTCR_TCMAF_Field := R7FA4M1AB.AGT1.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Compare match B flag
      TCMBF    : AGTCR_TCMBF_Field := R7FA4M1AB.AGT1.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for AGTCR_Register use
     record
       TSTART at 0 range 0 .. 0;
       TCSTF at 0 range 1 .. 1;
       TSTOP at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       TEDGF at 0 range 4 .. 4;
       TUNDF at 0 range 5 .. 5;
       TCMAF at 0 range 6 .. 6;
       TCMBF at 0 range 7 .. 7;
     end record;

   --  Operating mode
   type AGTMR1_TMOD_Field is
     (--  Timer mode
     Val_000,
      --  Pulse output mode
      Val_001,
      --  Event counter mode
      Val_010,
      --  Pulse width measurement mode
      Val_011,
      --  Pulse period measurement mode.
      Val_100,
      --  settings are prohibited
      others_k)
   with Size => 3;
   for AGTMR1_TMOD_Field use
     (Val_000  => 0,
      Val_001  => 1,
      Val_010  => 2,
      Val_011  => 3,
      Val_100  => 4,
      others_k => 7);

   --  Edge polarity
   type AGTMR1_TEDGPL_Field is
     (--  Single-edge
     Val_0,
      --  Both-edge.
      Val_1)
   with Size => 1;
   for AGTMR1_TEDGPL_Field use (Val_0 => 0, Val_1 => 1);

   --  Count source
   type AGTMR1_TCK_Field is
     (--  PCLKB
     Val_000,
      --  PCLKB/8
      Val_001,
      --  PCLKB/2
      Val_011,
      --  Divided clock AGTLCLK specified by CKS[2:0] bits in the AGTMR2 register
      Val_100,
      --  Underflow event signal from AGT0*6
      Val_101,
      --  Divided clock AGTSCLK specified by CKS[2:0] bits in the AGTMR2 register.
      Val_110,
      --  settings are prohibited.
      others_k)
   with Size => 3;
   for AGTMR1_TCK_Field use
     (Val_000  => 0,
      Val_001  => 1,
      Val_011  => 3,
      Val_100  => 4,
      Val_101  => 5,
      Val_110  => 6,
      others_k => 7);

   subtype AGTMR1_Reserved_Field is R7FA4M1AB.Bit;

   --  AGT Mode Register 1
   type AGTMR1_Register is record
      --  Operating mode
      TMOD     : AGTMR1_TMOD_Field := R7FA4M1AB.AGT1.Val_000;
      --  Edge polarity
      TEDGPL   : AGTMR1_TEDGPL_Field := R7FA4M1AB.AGT1.Val_0;
      --  Count source
      TCK      : AGTMR1_TCK_Field := R7FA4M1AB.AGT1.Val_000;
      --  This bit is read as 0. The write value should be 0.
      Reserved : AGTMR1_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for AGTMR1_Register use
     record
       TMOD at 0 range 0 .. 2;
       TEDGPL at 0 range 3 .. 3;
       TCK at 0 range 4 .. 6;
       Reserved at 0 range 7 .. 7;
     end record;

   --  AGTLCLK/AGTSCLK count source clock frequency division ratio
   type AGTMR2_CKS_Field is
     (--  1/1
     Val_000,
      --  1/2
      Val_001,
      --  1/4
      Val_010,
      --  1/8
      Val_011,
      --  1/16
      Val_100,
      --  1/32
      Val_101,
      --  1/64
      Val_110,
      --  1/128.
      Val_111)
   with Size => 3;
   for AGTMR2_CKS_Field use
     (Val_000 => 0,
      Val_001 => 1,
      Val_010 => 2,
      Val_011 => 3,
      Val_100 => 4,
      Val_101 => 5,
      Val_110 => 6,
      Val_111 => 7);

   subtype AGTMR2_Reserved_Field is R7FA4M1AB.UInt4;

   --  Low Power Mode
   type AGTMR2_LPM_Field is
     (--  Normal mode
     Val_0,
      --  Low Power mode
      Val_1)
   with Size => 1;
   for AGTMR2_LPM_Field use (Val_0 => 0, Val_1 => 1);

   --  AGT Mode Register 2
   type AGTMR2_Register is record
      --  AGTLCLK/AGTSCLK count source clock frequency division ratio
      CKS      : AGTMR2_CKS_Field := R7FA4M1AB.AGT1.Val_000;
      --  These bits are read as 0000. The write value should be 0000.
      Reserved : AGTMR2_Reserved_Field := 16#0#;
      --  Low Power Mode
      LPM      : AGTMR2_LPM_Field := R7FA4M1AB.AGT1.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for AGTMR2_Register use
     record
       CKS at 0 range 0 .. 2;
       Reserved at 0 range 3 .. 6;
       LPM at 0 range 7 .. 7;
     end record;

   subtype AGTIOC_TEDGSEL_Field is R7FA4M1AB.Bit;
   subtype AGTIOC_Reserved_Field is R7FA4M1AB.Bit;

   --  AGTOn output enable
   type AGTIOC_TOE_Field is
     (--  AGTOn output disabled
     Val_0,
      --  AGTOn output enabled.
      Val_1)
   with Size => 1;
   for AGTIOC_TOE_Field use (Val_0 => 0, Val_1 => 1);

   --  Input filter
   type AGTIOC_TIPF_Field is
     (--  No filter
     Val_00,
      --  Filter sampled at PCLKB
      Val_01,
      --  Filter sampled at PCLKB/8
      Val_10,
      --  Filter sampled at PCLKB/32
      Val_11)
   with Size => 2;
   for AGTIOC_TIPF_Field use
     (Val_00 => 0, Val_01 => 1, Val_10 => 2, Val_11 => 3);

   --  Count control
   type AGTIOC_TIOGT_Field is
     (--  Event is always counted
     Val_00,
      --  Event is counted during polarity period specified for AGTEEn.
      Val_01,
      --  settings are prohibited.
      others_k)
   with Size => 2;
   for AGTIOC_TIOGT_Field use (Val_00 => 0, Val_01 => 1, others_k => 3);

   --  AGT I/O Control Register
   type AGTIOC_Register is record
      --  I/O polarity switch Function varies depending on the operating mode.
      TEDGSEL    : AGTIOC_TEDGSEL_Field := 16#0#;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : AGTIOC_Reserved_Field := 16#0#;
      --  AGTOn output enable
      TOE        : AGTIOC_TOE_Field := R7FA4M1AB.AGT1.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : AGTIOC_Reserved_Field := 16#0#;
      --  Input filter
      TIPF       : AGTIOC_TIPF_Field := R7FA4M1AB.AGT1.Val_00;
      --  Count control
      TIOGT      : AGTIOC_TIOGT_Field := R7FA4M1AB.AGT1.Val_00;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for AGTIOC_Register use
     record
       TEDGSEL at 0 range 0 .. 0;
       Reserved at 0 range 1 .. 1;
       TOE at 0 range 2 .. 2;
       Reserved_1 at 0 range 3 .. 3;
       TIPF at 0 range 4 .. 5;
       TIOGT at 0 range 6 .. 7;
     end record;

   subtype AGTISR_Reserved_Field is R7FA4M1AB.UInt2;

   --  AGTEE polarty selection
   type AGTISR_EEPS_Field is
     (--  An event is counted during the low-level period
     Val_0,
      --  An event is counted during the high-level period
      Val_1)
   with Size => 1;
   for AGTISR_EEPS_Field use (Val_0 => 0, Val_1 => 1);

   subtype AGTISR_Reserved_Field_1 is R7FA4M1AB.UInt5;

   --  AGT Event Pin Select Register
   type AGTISR_Register is record
      --  These bits are read as 00. The write value should be 00.
      Reserved   : AGTISR_Reserved_Field := 16#0#;
      --  AGTEE polarty selection
      EEPS       : AGTISR_EEPS_Field := R7FA4M1AB.AGT1.Val_0;
      --  These bits are read as 00000. The write value should be 00000.
      Reserved_1 : AGTISR_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for AGTISR_Register use
     record
       Reserved at 0 range 0 .. 1;
       EEPS at 0 range 2 .. 2;
       Reserved_1 at 0 range 3 .. 7;
     end record;

   --  Compare match A register enable
   type AGTCMSR_TCMEA_Field is
     (--  Disable compare match A register
     Val_0,
      --  Enable compare match A register
      Val_1)
   with Size => 1;
   for AGTCMSR_TCMEA_Field use (Val_0 => 0, Val_1 => 1);

   --  AGTOA output enable
   type AGTCMSR_TOEA_Field is
     (--  AGTOA output disabled (port)
     Val_0,
      --  AGTOA output enabled
      Val_1)
   with Size => 1;
   for AGTCMSR_TOEA_Field use (Val_0 => 0, Val_1 => 1);

   --  AGTOA polarity select
   type AGTCMSR_TOPOLA_Field is
     (--  AGTOA Output is started at low
     Val_0,
      --  AGTOA Output is started at high
      Val_1)
   with Size => 1;
   for AGTCMSR_TOPOLA_Field use (Val_0 => 0, Val_1 => 1);

   subtype AGTCMSR_Reserved_Field is R7FA4M1AB.Bit;

   --  Compare match B register enable
   type AGTCMSR_TCMEB_Field is
     (--  Disable compare match B register
     Val_0,
      --  Enable compare match B register
      Val_1)
   with Size => 1;
   for AGTCMSR_TCMEB_Field use (Val_0 => 0, Val_1 => 1);

   --  AGTOB output enable
   type AGTCMSR_TOEB_Field is
     (--  AGTOB output disabled (port)
     Val_0,
      --  AGTOB output enabled
      Val_1)
   with Size => 1;
   for AGTCMSR_TOEB_Field use (Val_0 => 0, Val_1 => 1);

   --  AGTOB polarity select
   type AGTCMSR_TOPOLB_Field is
     (--  AGTOB Output is started at low
     Val_0,
      --  AGTOB Output is started at high
      Val_1)
   with Size => 1;
   for AGTCMSR_TOPOLB_Field use (Val_0 => 0, Val_1 => 1);

   --  AGT Compare Match Function Select Register
   type AGTCMSR_Register is record
      --  Compare match A register enable
      TCMEA      : AGTCMSR_TCMEA_Field := R7FA4M1AB.AGT1.Val_0;
      --  AGTOA output enable
      TOEA       : AGTCMSR_TOEA_Field := R7FA4M1AB.AGT1.Val_0;
      --  AGTOA polarity select
      TOPOLA     : AGTCMSR_TOPOLA_Field := R7FA4M1AB.AGT1.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : AGTCMSR_Reserved_Field := 16#0#;
      --  Compare match B register enable
      TCMEB      : AGTCMSR_TCMEB_Field := R7FA4M1AB.AGT1.Val_0;
      --  AGTOB output enable
      TOEB       : AGTCMSR_TOEB_Field := R7FA4M1AB.AGT1.Val_0;
      --  AGTOB polarity select
      TOPOLB     : AGTCMSR_TOPOLB_Field := R7FA4M1AB.AGT1.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : AGTCMSR_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for AGTCMSR_Register use
     record
       TCMEA at 0 range 0 .. 0;
       TOEA at 0 range 1 .. 1;
       TOPOLA at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       TCMEB at 0 range 4 .. 4;
       TOEB at 0 range 5 .. 5;
       TOPOLB at 0 range 6 .. 6;
       Reserved_1 at 0 range 7 .. 7;
     end record;

   --  AGTIO pin select
   type AGTIOSEL_SEL_Field is
     (--  Select the AGTIOn except for below pins
     Val_00,
      --  Setting prohibited
      Val_01,
      --  Select the P402/AGTIOn. P402/AGTIOn is input only. It is not possible to
      --  output
      Val_10,
      --  Select the P403/AGTIOn. P403/AGTIOn is input only. It is not possible to
      --  output
      Val_11)
   with Size => 2;
   for AGTIOSEL_SEL_Field use
     (Val_00 => 0, Val_01 => 1, Val_10 => 2, Val_11 => 3);

   subtype AGTIOSEL_Reserved_Field is R7FA4M1AB.UInt2;

   --  AGTIO input enable
   type AGTIOSEL_TIES_Field is
     (--  External event input is disabled during Software Standby mode
     Val_0,
      --  External event input is enabled during Software Standby mode.
      Val_1)
   with Size => 1;
   for AGTIOSEL_TIES_Field use (Val_0 => 0, Val_1 => 1);

   subtype AGTIOSEL_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  AGT Pin Select Register
   type AGTIOSEL_Register is record
      --  AGTIO pin select
      SEL        : AGTIOSEL_SEL_Field := R7FA4M1AB.AGT1.Val_00;
      --  These bits are read as 00. The write value should be 00.
      Reserved   : AGTIOSEL_Reserved_Field := 16#0#;
      --  AGTIO input enable
      TIES       : AGTIOSEL_TIES_Field := R7FA4M1AB.AGT1.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_1 : AGTIOSEL_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for AGTIOSEL_Register use
     record
       SEL at 0 range 0 .. 1;
       Reserved at 0 range 2 .. 3;
       TIES at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 7;
     end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Asynchronous General purpose Timer 1
   type AGT1_Peripheral is record
      --  AGT Counter Register
      AGT      : aliased R7FA4M1AB.UInt16;
      --  AGT Compare Match A Register
      AGTCMA   : aliased R7FA4M1AB.UInt16;
      --  AGT Compare Match B Register
      AGTCMB   : aliased R7FA4M1AB.UInt16;
      --  AGT Control Register
      AGTCR    : aliased AGTCR_Register;
      --  AGT Mode Register 1
      AGTMR1   : aliased AGTMR1_Register;
      --  AGT Mode Register 2
      AGTMR2   : aliased AGTMR2_Register;
      --  AGT I/O Control Register
      AGTIOC   : aliased AGTIOC_Register;
      --  AGT Event Pin Select Register
      AGTISR   : aliased AGTISR_Register;
      --  AGT Compare Match Function Select Register
      AGTCMSR  : aliased AGTCMSR_Register;
      --  AGT Pin Select Register
      AGTIOSEL : aliased AGTIOSEL_Register;
   end record
   with Volatile;

   for AGT1_Peripheral use
     record
       AGT at 16#0# range 0 .. 15;
       AGTCMA at 16#2# range 0 .. 15;
       AGTCMB at 16#4# range 0 .. 15;
       AGTCR at 16#8# range 0 .. 7;
       AGTMR1 at 16#9# range 0 .. 7;
       AGTMR2 at 16#A# range 0 .. 7;
       AGTIOC at 16#C# range 0 .. 7;
       AGTISR at 16#D# range 0 .. 7;
       AGTCMSR at 16#E# range 0 .. 7;
       AGTIOSEL at 16#F# range 0 .. 7;
     end record;

   --  Asynchronous General purpose Timer 1
   AGT1_Periph : aliased AGT1_Peripheral
   with Import, Address => AGT1_Base;

end R7FA4M1AB.AGT1;
