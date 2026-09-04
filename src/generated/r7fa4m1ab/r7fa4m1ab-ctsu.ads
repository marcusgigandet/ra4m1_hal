--
-- Copyright (C) 2026 Marcus Gigandet
--
-- SPDX-License-Identifier: LGPL-3.0-or-later
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  Capacitive Touch Sensing Unit

package R7FA4M1AB.CTSU is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  CTSU Measurement Operation Start
   type CTSUCR0_CTSUSTRT_Field is
     (--  Measurement operation stops.
     Val_0,
      --  Measurement operation starts.
      Val_1)
   with Size => 1;
   for CTSUCR0_CTSUSTRT_Field use (Val_0 => 0, Val_1 => 1);

   --  CTSU Measurement Operation Start Trigger Select
   type CTSUCR0_CTSUCAP_Field is
     (--  Software trigger.
     Val_0,
      --  External trigger.
      Val_1)
   with Size => 1;
   for CTSUCR0_CTSUCAP_Field use (Val_0 => 0, Val_1 => 1);

   --  CTSU Wait State Power-Saving Enable
   type CTSUCR0_CTSUSNZ_Field is
     (--  Power-saving function during wait state is disabled.
     Val_0,
      --  Power-saving function during wait state is enabled.
      Val_1)
   with Size => 1;
   for CTSUCR0_CTSUSNZ_Field use (Val_0 => 0, Val_1 => 1);

   subtype CTSUCR0_Reserved_Field is R7FA4M1AB.Bit;

   --  CTSU Control Block Initialization
   type CTSUCR0_CTSUINIT_Field is
     (--  Writing a 0 has no effect, this bit is read as 0.
     Val_0,
      --  initializes the CTSU control block and registers.
      Val_1)
   with Size => 1;
   for CTSUCR0_CTSUINIT_Field use (Val_0 => 0, Val_1 => 1);

   --  CTSU Control Register 0
   type CTSUCR0_Register is record
      --  CTSU Measurement Operation Start
      CTSUSTRT     : CTSUCR0_CTSUSTRT_Field := R7FA4M1AB.CTSU.Val_0;
      --  CTSU Measurement Operation Start Trigger Select
      CTSUCAP      : CTSUCR0_CTSUCAP_Field := R7FA4M1AB.CTSU.Val_0;
      --  CTSU Wait State Power-Saving Enable
      CTSUSNZ      : CTSUCR0_CTSUSNZ_Field := R7FA4M1AB.CTSU.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved     : CTSUCR0_Reserved_Field := 16#0#;
      --  CTSU Control Block Initialization
      CTSUINIT     : CTSUCR0_CTSUINIT_Field := R7FA4M1AB.CTSU.Val_0;
      --  unspecified
      Reserved_5_7 : R7FA4M1AB.UInt3 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for CTSUCR0_Register use
     record
       CTSUSTRT at 0 range 0 .. 0;
       CTSUCAP at 0 range 1 .. 1;
       CTSUSNZ at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       CTSUINIT at 0 range 4 .. 4;
       Reserved_5_7 at 0 range 5 .. 7;
     end record;

   --  CTSU Power Supply Enable
   type CTSUCR1_CTSUPON_Field is
     (--  Powered off the CTSU
     Val_0,
      --  Powered on the CTSU
      Val_1)
   with Size => 1;
   for CTSUCR1_CTSUPON_Field use (Val_0 => 0, Val_1 => 1);

   --  CTSU LPF Capacitance Charging Control
   type CTSUCR1_CTSUCSW_Field is
     (--  Turned off capacitance switch
     Val_0,
      --  Turned on capacitance switch
      Val_1)
   with Size => 1;
   for CTSUCR1_CTSUCSW_Field use (Val_0 => 0, Val_1 => 1);

   --  CTSU Power Supply Operating Mode Setting
   type CTSUCR1_CTSUATUNE0_Field is
     (--  Normal operating mode
     Val_0,
      --  Low-voltage operating mode
      Val_1)
   with Size => 1;
   for CTSUCR1_CTSUATUNE0_Field use (Val_0 => 0, Val_1 => 1);

   --  CTSU Power Supply Capacity Adjustment
   type CTSUCR1_CTSUATUNE1_Field is
     (--  Normal output
     Val_0,
      --  High-current output
      Val_1)
   with Size => 1;
   for CTSUCR1_CTSUATUNE1_Field use (Val_0 => 0, Val_1 => 1);

   --  CTSU Operating Clock Select
   type CTSUCR1_CTSUCLK_Field is
     (--  PCLK
     Val_00,
      --  PCLK/2 (PCLK divided by 2)
      Val_01,
      --  PCLK/2 (PCLK divided by 4)
      Val_10,
      --  Setting prohibited
      Val_11)
   with Size => 2;
   for CTSUCR1_CTSUCLK_Field use
     (Val_00 => 0, Val_01 => 1, Val_10 => 2, Val_11 => 3);

   --  CTSU Measurement Mode Select
   type CTSUCR1_CTSUMD_Field is
     (--  Self-capacitance single scan mode
     Val_00,
      --  Self-capacitance multi-scan mode
      Val_01,
      --  Mutual capacitance simple scan mode
      Val_10,
      --  Mutual capacitance full scan mode
      Val_11)
   with Size => 2;
   for CTSUCR1_CTSUMD_Field use
     (Val_00 => 0, Val_01 => 1, Val_10 => 2, Val_11 => 3);

   --  CTSU Control Register 1
   type CTSUCR1_Register is record
      --  CTSU Power Supply Enable
      CTSUPON    : CTSUCR1_CTSUPON_Field := R7FA4M1AB.CTSU.Val_0;
      --  CTSU LPF Capacitance Charging Control
      CTSUCSW    : CTSUCR1_CTSUCSW_Field := R7FA4M1AB.CTSU.Val_0;
      --  CTSU Power Supply Operating Mode Setting
      CTSUATUNE0 : CTSUCR1_CTSUATUNE0_Field := R7FA4M1AB.CTSU.Val_0;
      --  CTSU Power Supply Capacity Adjustment
      CTSUATUNE1 : CTSUCR1_CTSUATUNE1_Field := R7FA4M1AB.CTSU.Val_0;
      --  CTSU Operating Clock Select
      CTSUCLK    : CTSUCR1_CTSUCLK_Field := R7FA4M1AB.CTSU.Val_00;
      --  CTSU Measurement Mode Select
      CTSUMD     : CTSUCR1_CTSUMD_Field := R7FA4M1AB.CTSU.Val_00;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for CTSUCR1_Register use
     record
       CTSUPON at 0 range 0 .. 0;
       CTSUCSW at 0 range 1 .. 1;
       CTSUATUNE0 at 0 range 2 .. 2;
       CTSUATUNE1 at 0 range 3 .. 3;
       CTSUCLK at 0 range 4 .. 5;
       CTSUMD at 0 range 6 .. 7;
     end record;

   subtype CTSUSDPRS_CTSUPRRATIO_Field is R7FA4M1AB.UInt4;

   --  CTSU Base Period and Pulse Count Setting
   type CTSUSDPRS_CTSUPRMODE_Field is
     (--  510 pulses
     Val_00,
      --  126 pulses
      Val_01,
      --  62 pulses (recommended setting value)
      Val_10,
      --  Setting prohibited
      Val_11)
   with Size => 2;
   for CTSUSDPRS_CTSUPRMODE_Field use
     (Val_00 => 0, Val_01 => 1, Val_10 => 2, Val_11 => 3);

   --  CTSU High-Pass Noise Reduction Function Off Setting
   type CTSUSDPRS_CTSUSOFF_Field is
     (--  High-pass noise reduction function turned on
     Val_0,
      --  High-pass noise reduction function turned off
      Val_1)
   with Size => 1;
   for CTSUSDPRS_CTSUSOFF_Field use (Val_0 => 0, Val_1 => 1);

   subtype CTSUSDPRS_Reserved_Field is R7FA4M1AB.Bit;

   --  CTSU Synchronous Noise Reduction Setting Register
   type CTSUSDPRS_Register is record
      --  CTSU Measurement Time and Pulse Count Adjustment Recommended setting:
      --  3 (0011b)
      CTSUPRRATIO : CTSUSDPRS_CTSUPRRATIO_Field := 16#0#;
      --  CTSU Base Period and Pulse Count Setting
      CTSUPRMODE  : CTSUSDPRS_CTSUPRMODE_Field := R7FA4M1AB.CTSU.Val_00;
      --  CTSU High-Pass Noise Reduction Function Off Setting
      CTSUSOFF    : CTSUSDPRS_CTSUSOFF_Field := R7FA4M1AB.CTSU.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved    : CTSUSDPRS_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for CTSUSDPRS_Register use
     record
       CTSUPRRATIO at 0 range 0 .. 3;
       CTSUPRMODE at 0 range 4 .. 5;
       CTSUSOFF at 0 range 6 .. 6;
       Reserved at 0 range 7 .. 7;
     end record;

   --  CTSU Measurement Channel 0. Note1: Writing to these bits is only enabled
   --  in self-capacitance single-scan mode (CTSUCR1.CTSUMD[1:0] bits = 00b).
   --  Note2: If the value of CTSUMCH0 was set to b'111111 in mode other than
   --  self-capacitor single scan mode, the measurement is stopped.
   type CTSUMCH0_CTSUMCH0_Field is
     (--  The value of CTSUMCH0 indicate to channel to be measured.
     CTSUMCH0,
      --  Reset value for the field
      CTSUMCH0_CTSUMCH0_Field_Reset)
   with Size => 6;
   for CTSUMCH0_CTSUMCH0_Field use
     (CTSUMCH0 => 0, CTSUMCH0_CTSUMCH0_Field_Reset => 63);

   subtype CTSUMCH0_Reserved_Field is R7FA4M1AB.UInt2;

   --  CTSU Measurement Channel Register 0
   type CTSUMCH0_Register is record
      --  CTSU Measurement Channel 0. Note1: Writing to these bits is only
      --  enabled in self-capacitance single-scan mode (CTSUCR1.CTSUMD[1:0]
      --  bits = 00b). Note2: If the value of CTSUMCH0 was set to b'111111 in
      --  mode other than self-capacitor single scan mode, the measurement is
      --  stopped.
      CTSUMCH0 : CTSUMCH0_CTSUMCH0_Field := CTSUMCH0_CTSUMCH0_Field_Reset;
      --  These bits are read as 00. The write value should be 00.
      Reserved : CTSUMCH0_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for CTSUMCH0_Register use
     record
       CTSUMCH0 at 0 range 0 .. 5;
       Reserved at 0 range 6 .. 7;
     end record;

   --  CTSU Measurement Channel 1 Note1: If the value of CTSUMCH1 was set to
   --  b'111111, the measurement is stopped.
   type CTSUMCH1_CTSUMCH1_Field is
     (--  The value of CTSUMCH1 indicate to channel to be measured.
     CTSUMCH1,
      --  Reset value for the field
      CTSUMCH1_CTSUMCH1_Field_Reset)
   with Size => 6;
   for CTSUMCH1_CTSUMCH1_Field use
     (CTSUMCH1 => 0, CTSUMCH1_CTSUMCH1_Field_Reset => 63);

   subtype CTSUMCH1_Reserved_Field is R7FA4M1AB.UInt2;

   --  CTSU Measurement Channel Register 1
   type CTSUMCH1_Register is record
      --  Read-only. CTSU Measurement Channel 1 Note1: If the value of CTSUMCH1
      --  was set to b'111111, the measurement is stopped.
      CTSUMCH1 : CTSUMCH1_CTSUMCH1_Field := CTSUMCH1_CTSUMCH1_Field_Reset;
      --  These bits are read as 00. The write value should be 00.
      Reserved : CTSUMCH1_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for CTSUMCH1_Register use
     record
       CTSUMCH1 at 0 range 0 .. 5;
       Reserved at 0 range 6 .. 7;
     end record;

   --  CTSU Channel Enable Control 4. 0: Not measurement target 1: Measurement
   --  target Note: CTSUCHAC4[0] corresponds to TS32 and CTSUCHAC4[3]
   --  corresponds to TS35. but the write value of
   --  CTSUCHAC0[4],CTSUCHAC4[5],CTSUCHAC4[6],CTSUCHAC4[7] should be 0.
   type CTSUCHAC4_CTSUCHAC4_Field is
     (--  TS pin which correspond to the bit number of CTSUCHAC4 register set whether
     --  the measurement target.
     CTSUCHAC4)
   with Size => 4;
   for CTSUCHAC4_CTSUCHAC4_Field use (CTSUCHAC4 => 0);

   subtype CTSUCHAC4_Reserved_Field is R7FA4M1AB.UInt4;

   --  CTSU Channel Enable Control Register 4
   type CTSUCHAC4_Register is record
      --  CTSU Channel Enable Control 4. 0: Not measurement target 1:
      --  Measurement target Note: CTSUCHAC4[0] corresponds to TS32 and
      --  CTSUCHAC4[3] corresponds to TS35. but the write value of
      --  CTSUCHAC0[4],CTSUCHAC4[5],CTSUCHAC4[6],CTSUCHAC4[7] should be 0.
      CTSUCHAC4 : CTSUCHAC4_CTSUCHAC4_Field := R7FA4M1AB.CTSU.CTSUCHAC4;
      --  These bits are read as 0000. The write value should be 0000.
      Reserved  : CTSUCHAC4_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for CTSUCHAC4_Register use
     record
       CTSUCHAC4 at 0 range 0 .. 3;
       Reserved at 0 range 4 .. 7;
     end record;

   --  CTSU Channel Transmit/Receive Control 4
   type CTSUCHTRC4_CTSUCHAC4_Field is
     (--  Reception
     Val_0,
      --  Transmission
      Val_1)
   with Size => 4;
   for CTSUCHTRC4_CTSUCHAC4_Field use (Val_0 => 0, Val_1 => 1);

   subtype CTSUCHTRC4_Reserved_Field is R7FA4M1AB.UInt4;

   --  CTSU Channel Transmit/Receive Control Register 4
   type CTSUCHTRC4_Register is record
      --  CTSU Channel Transmit/Receive Control 4
      CTSUCHAC4 : CTSUCHTRC4_CTSUCHAC4_Field := R7FA4M1AB.CTSU.Val_0;
      --  These bits are read as 0000. The write value should be 0000.
      Reserved  : CTSUCHTRC4_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for CTSUCHTRC4_Register use
     record
       CTSUCHAC4 at 0 range 0 .. 3;
       Reserved at 0 range 4 .. 7;
     end record;

   subtype CTSUDCLKC_CTSUSSMOD_Field is R7FA4M1AB.UInt2;
   subtype CTSUDCLKC_Reserved_Field is R7FA4M1AB.UInt2;
   subtype CTSUDCLKC_CTSUSSCNT_Field is R7FA4M1AB.UInt2;

   --  CTSU High-Pass Noise Reduction Control Register
   type CTSUDCLKC_Register is record
      --  CTSU Diffusion Clock Mode Select NOTE: This bit should be set to 00b.
      CTSUSSMOD  : CTSUDCLKC_CTSUSSMOD_Field := 16#0#;
      --  These bits are read as 00. The write value should be 00.
      Reserved   : CTSUDCLKC_Reserved_Field := 16#0#;
      --  CTSU Diffusion Clock Mode Control NOTE: This bit should be set to
      --  11b.
      CTSUSSCNT  : CTSUDCLKC_CTSUSSCNT_Field := 16#0#;
      --  These bits are read as 00. The write value should be 00.
      Reserved_1 : CTSUDCLKC_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for CTSUDCLKC_Register use
     record
       CTSUSSMOD at 0 range 0 .. 1;
       Reserved at 0 range 2 .. 3;
       CTSUSSCNT at 0 range 4 .. 5;
       Reserved_1 at 0 range 6 .. 7;
     end record;

   --  CTSU Measurement Status Counter
   type CTSUST_CTSUSTC_Field is
     (--  Status 0
     Val_000,
      --  Status 1
      Val_001,
      --  Status 2
      Val_010,
      --  Status 3
      Val_011,
      --  Status 4
      Val_100,
      --  Status 5
      Val_101)
   with Size => 3;
   for CTSUST_CTSUSTC_Field use
     (Val_000 => 0,
      Val_001 => 1,
      Val_010 => 2,
      Val_011 => 3,
      Val_100 => 4,
      Val_101 => 5);

   subtype CTSUST_Reserved_Field is R7FA4M1AB.Bit;

   --  CTSU Data Transfer Status Flag
   type CTSUST_CTSUDTSR_Field is
     (--  Measurement result has been read
     Val_0,
      --  Measurement result has not been read
      Val_1)
   with Size => 1;
   for CTSUST_CTSUDTSR_Field use (Val_0 => 0, Val_1 => 1);

   --  CTSU Sensor Counter Overflow Flag
   type CTSUST_CTSUSOVF_Field is
     (--  No overflow
     Val_0,
      --  An overflow
      Val_1)
   with Size => 1;
   for CTSUST_CTSUSOVF_Field use (Val_0 => 0, Val_1 => 1);

   --  CTSU Reference Counter Overflow Flag
   type CTSUST_CTSUROVF_Field is
     (--  No overflow
     Val_0,
      --  An overflow
      Val_1)
   with Size => 1;
   for CTSUST_CTSUROVF_Field use (Val_0 => 0, Val_1 => 1);

   --  CTSU Mutual Capacitance Status Flag
   type CTSUST_CTSUPS_Field is
     (--  First measurement
     Val_0,
      --  Second measurement
      Val_1)
   with Size => 1;
   for CTSUST_CTSUPS_Field use (Val_0 => 0, Val_1 => 1);

   --  CTSU Status Register
   type CTSUST_Register is record
      --  Read-only. CTSU Measurement Status Counter
      CTSUSTC  : CTSUST_CTSUSTC_Field := R7FA4M1AB.CTSU.Val_000;
      --  This bit is read as 0. The write value should be 0.
      Reserved : CTSUST_Reserved_Field := 16#0#;
      --  Read-only. CTSU Data Transfer Status Flag
      CTSUDTSR : CTSUST_CTSUDTSR_Field := R7FA4M1AB.CTSU.Val_0;
      --  CTSU Sensor Counter Overflow Flag
      CTSUSOVF : CTSUST_CTSUSOVF_Field := R7FA4M1AB.CTSU.Val_0;
      --  CTSU Reference Counter Overflow Flag
      CTSUROVF : CTSUST_CTSUROVF_Field := R7FA4M1AB.CTSU.Val_0;
      --  Read-only. CTSU Mutual Capacitance Status Flag
      CTSUPS   : CTSUST_CTSUPS_Field := R7FA4M1AB.CTSU.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for CTSUST_Register use
     record
       CTSUSTC at 0 range 0 .. 2;
       Reserved at 0 range 3 .. 3;
       CTSUDTSR at 0 range 4 .. 4;
       CTSUSOVF at 0 range 5 .. 5;
       CTSUROVF at 0 range 6 .. 6;
       CTSUPS at 0 range 7 .. 7;
     end record;

   subtype CTSUSSC_Reserved_Field is R7FA4M1AB.Byte;

   --  CTSU Spectrum Diffusion Frequency Division Setting
   type CTSUSSC_CTSUSSDIV_Field is
     (--  4.00 <= fb
     Val_0000,
      --  2.00 <= fb < 4.00
      Val_0001,
      --  1.33 <= fb < 2.00
      Val_0010,
      --  1.00 <= fb < 1.33
      Val_0011,
      --  0.80 <= fb < 1.00
      Val_0100,
      --  0.67 <= fb < 0.80
      Val_0101,
      --  0.57 <= fb < 0.67
      Val_0110,
      --  0.50 <= fb < 0.57
      Val_0111,
      --  0.44 <= fb < 0.50
      Val_1000,
      --  0.40 <= fb < 0.44
      Val_1001,
      --  0.36 <= fb < 0.40
      Val_1010,
      --  0.33 <= fb < 0.36
      Val_1011,
      --  0.31 <= fb < 0.33
      Val_1100,
      --  0.29 <= fb < 0.31
      Val_1101,
      --  0.27 <= fb < 0.29
      Val_1110,
      --  fb < 0.27
      Val_1111)
   with Size => 4;
   for CTSUSSC_CTSUSSDIV_Field use
     (Val_0000 => 0,
      Val_0001 => 1,
      Val_0010 => 2,
      Val_0011 => 3,
      Val_0100 => 4,
      Val_0101 => 5,
      Val_0110 => 6,
      Val_0111 => 7,
      Val_1000 => 8,
      Val_1001 => 9,
      Val_1010 => 10,
      Val_1011 => 11,
      Val_1100 => 12,
      Val_1101 => 13,
      Val_1110 => 14,
      Val_1111 => 15);

   subtype CTSUSSC_Reserved_Field_1 is R7FA4M1AB.UInt4;

   --  CTSU High-Pass Noise Reduction Spectrum Diffusion Control Register
   type CTSUSSC_Register is record
      --  These bits are read as 00000000. The write value should be 00000000.
      Reserved   : CTSUSSC_Reserved_Field := 16#0#;
      --  CTSU Spectrum Diffusion Frequency Division Setting
      CTSUSSDIV  : CTSUSSC_CTSUSSDIV_Field := R7FA4M1AB.CTSU.Val_0000;
      --  These bits are read as 0000. The write value should be 0000.
      Reserved_1 : CTSUSSC_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for CTSUSSC_Register use
     record
       Reserved at 0 range 0 .. 7;
       CTSUSSDIV at 0 range 8 .. 11;
       Reserved_1 at 0 range 12 .. 15;
     end record;

   subtype CTSUSO0_CTSUSO_Field is R7FA4M1AB.UInt10;
   subtype CTSUSO0_CTSUSNUM_Field is R7FA4M1AB.UInt6;

   --  CTSU Sensor Offset Register 0
   type CTSUSO0_Register is record
      --  CTSU Sensor Offset Adjustment Current offset amount is CTSUSO ( 0 to
      --  1023 )
      CTSUSO   : CTSUSO0_CTSUSO_Field := 16#0#;
      --  CTSU Measurement Count Setting
      CTSUSNUM : CTSUSO0_CTSUSNUM_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for CTSUSO0_Register use
     record
       CTSUSO at 0 range 0 .. 9;
       CTSUSNUM at 0 range 10 .. 15;
     end record;

   subtype CTSUSO1_CTSURICOA_Field is R7FA4M1AB.Byte;
   subtype CTSUSO1_CTSUSDPA_Field is R7FA4M1AB.UInt5;

   --  CTSU ICO Gain Adjustment
   type CTSUSO1_CTSUICOG_Field is
     (--  100 percent gain
     Val_00,
      --  66 percent gain
      Val_01,
      --  50 percent gain
      Val_10,
      --  40 percent gain
      Val_11)
   with Size => 2;
   for CTSUSO1_CTSUICOG_Field use
     (Val_00 => 0, Val_01 => 1, Val_10 => 2, Val_11 => 3);

   subtype CTSUSO1_Reserved_Field is R7FA4M1AB.Bit;

   --  CTSU Sensor Offset Register 1
   type CTSUSO1_Register is record
      --  CTSU Reference ICO Current Adjustment Current offset amount is CTSUSO
      --  ( 0 to 255 )
      CTSURICOA : CTSUSO1_CTSURICOA_Field := 16#0#;
      --  CTSU Base Clock Setting Operating clock divided by ( CTSUSDPA + 1 ) x
      --  2
      CTSUSDPA  : CTSUSO1_CTSUSDPA_Field := 16#0#;
      --  CTSU ICO Gain Adjustment
      CTSUICOG  : CTSUSO1_CTSUICOG_Field := R7FA4M1AB.CTSU.Val_00;
      --  This bit is read as 0. The write value should be 0.
      Reserved  : CTSUSO1_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for CTSUSO1_Register use
     record
       CTSURICOA at 0 range 0 .. 7;
       CTSUSDPA at 0 range 8 .. 12;
       CTSUICOG at 0 range 13 .. 14;
       Reserved at 0 range 15 .. 15;
     end record;

   subtype CTSUERRS_Reserved_Field is R7FA4M1AB.UInt15;

   --  TSCAP Voltage Error Monitor
   type CTSUERRS_CTSUICOMP_Field is
     (--  Normal TSCAP voltage
     Val_0,
      --  Abnormal TSCAP voltage
      Val_1)
   with Size => 1;
   for CTSUERRS_CTSUICOMP_Field use (Val_0 => 0, Val_1 => 1);

   --  CTSU Error Status Register
   type CTSUERRS_Register is record
      --  Read-only. These bits are read as 000000000000000.
      Reserved  : CTSUERRS_Reserved_Field;
      --  Read-only. TSCAP Voltage Error Monitor
      CTSUICOMP : CTSUERRS_CTSUICOMP_Field;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for CTSUERRS_Register use
     record
       Reserved at 0 range 0 .. 14;
       CTSUICOMP at 0 range 15 .. 15;
     end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Capacitive Touch Sensing Unit
   type CTSU_Peripheral is record
      --  CTSU Control Register 0
      CTSUCR0    : aliased CTSUCR0_Register;
      --  CTSU Control Register 1
      CTSUCR1    : aliased CTSUCR1_Register;
      --  CTSU Synchronous Noise Reduction Setting Register
      CTSUSDPRS  : aliased CTSUSDPRS_Register;
      --  CTSU Sensor Stabilization Wait Control Register
      CTSUSST    : aliased R7FA4M1AB.Byte;
      --  CTSU Measurement Channel Register 0
      CTSUMCH0   : aliased CTSUMCH0_Register;
      --  CTSU Measurement Channel Register 1
      CTSUMCH1   : aliased CTSUMCH1_Register;
      --  CTSU Channel Enable Control Register 0
      CTSUCHAC0  : aliased R7FA4M1AB.Byte;
      --  CTSU Channel Enable Control Register 1
      CTSUCHAC1  : aliased R7FA4M1AB.Byte;
      --  CTSU Channel Enable Control Register 2
      CTSUCHAC2  : aliased R7FA4M1AB.Byte;
      --  CTSU Channel Enable Control Register 3
      CTSUCHAC3  : aliased R7FA4M1AB.Byte;
      --  CTSU Channel Enable Control Register 4
      CTSUCHAC4  : aliased CTSUCHAC4_Register;
      --  CTSU Channel Transmit/Receive Control Register 0
      CTSUCHTRC0 : aliased R7FA4M1AB.Byte;
      --  CTSU Channel Transmit/Receive Control Register 1
      CTSUCHTRC1 : aliased R7FA4M1AB.Byte;
      --  CTSU Channel Transmit/Receive Control Register 3
      CTSUCHTRC2 : aliased R7FA4M1AB.Byte;
      --  CTSU Channel Transmit/Receive Control Register 3
      CTSUCHTRC3 : aliased R7FA4M1AB.Byte;
      --  CTSU Channel Transmit/Receive Control Register 4
      CTSUCHTRC4 : aliased CTSUCHTRC4_Register;
      --  CTSU High-Pass Noise Reduction Control Register
      CTSUDCLKC  : aliased CTSUDCLKC_Register;
      --  CTSU Status Register
      CTSUST     : aliased CTSUST_Register;
      --  CTSU High-Pass Noise Reduction Spectrum Diffusion Control Register
      CTSUSSC    : aliased CTSUSSC_Register;
      --  CTSU Sensor Offset Register 0
      CTSUSO0    : aliased CTSUSO0_Register;
      --  CTSU Sensor Offset Register 1
      CTSUSO1    : aliased CTSUSO1_Register;
      --  CTSU Sensor Counter
      CTSUSC     : aliased R7FA4M1AB.UInt16;
      --  CTSU Reference Counter
      CTSURC     : aliased R7FA4M1AB.UInt16;
      --  CTSU Error Status Register
      CTSUERRS   : aliased CTSUERRS_Register;
   end record
   with Volatile;

   for CTSU_Peripheral use
     record
       CTSUCR0 at 16#0# range 0 .. 7;
       CTSUCR1 at 16#1# range 0 .. 7;
       CTSUSDPRS at 16#2# range 0 .. 7;
       CTSUSST at 16#3# range 0 .. 7;
       CTSUMCH0 at 16#4# range 0 .. 7;
       CTSUMCH1 at 16#5# range 0 .. 7;
       CTSUCHAC0 at 16#6# range 0 .. 7;
       CTSUCHAC1 at 16#7# range 0 .. 7;
       CTSUCHAC2 at 16#8# range 0 .. 7;
       CTSUCHAC3 at 16#9# range 0 .. 7;
       CTSUCHAC4 at 16#A# range 0 .. 7;
       CTSUCHTRC0 at 16#B# range 0 .. 7;
       CTSUCHTRC1 at 16#C# range 0 .. 7;
       CTSUCHTRC2 at 16#D# range 0 .. 7;
       CTSUCHTRC3 at 16#E# range 0 .. 7;
       CTSUCHTRC4 at 16#F# range 0 .. 7;
       CTSUDCLKC at 16#10# range 0 .. 7;
       CTSUST at 16#11# range 0 .. 7;
       CTSUSSC at 16#12# range 0 .. 15;
       CTSUSO0 at 16#14# range 0 .. 15;
       CTSUSO1 at 16#16# range 0 .. 15;
       CTSUSC at 16#18# range 0 .. 15;
       CTSURC at 16#1A# range 0 .. 15;
       CTSUERRS at 16#1C# range 0 .. 15;
     end record;

   --  Capacitive Touch Sensing Unit
   CTSU_Periph : aliased CTSU_Peripheral
   with Import, Address => CTSU_Base;

end R7FA4M1AB.CTSU;
