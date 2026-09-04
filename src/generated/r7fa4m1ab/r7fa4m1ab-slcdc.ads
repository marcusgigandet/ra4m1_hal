-- 
-- Copyright (C) 2026 Marcus Gigandet
--
-- SPDX-License-Identifier: LGPL-3.0-or-later
-- 

pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB-ada.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  Segment LCD Controller/Driver
package R7FA4M1AB.SLCDC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  LCD Display Bias Method Select
   type LCDM0_LBAS_Field is
     (--  1/2 bias method
      Val_00,
      --  1/3 bias method
      Val_01,
      --  1/4 bias method
      Val_10,
      --  Setting prohibited
      Val_11)
     with Size => 2;
   for LCDM0_LBAS_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   --  Time Slice of LCD Display Select
   type LCDM0_LDTY_Field is
     (--  Static
      Val_000,
      --  Setting prohibited
      others_k,
      --  2-time slice
      Val_001,
      --  3-time slice
      Val_010,
      --  4-time slice
      Val_011,
      --  8-time slice
      Val_101)
     with Size => 3;
   for LCDM0_LDTY_Field use
     (Val_000 => 0,
      others_k => 0,
      Val_001 => 1,
      Val_010 => 2,
      Val_011 => 3,
      Val_101 => 5);

   --  LCD display waveform selection
   type LCDM0_LWAVE_Field is
     (--  Waveform A
      Val_0,
      --  Waveform B
      Val_1)
     with Size => 1;
   for LCDM0_LWAVE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  LCD drive voltage generator selection
   type LCDM0_MDSET_Field is
     (--  External resistance division method
      Val_00,
      --  Internal voltage boosting method
      Val_01,
      --  Capacitor split method
      Val_10,
      --  Setting prohibited
      Val_11)
     with Size => 2;
   for LCDM0_MDSET_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   --  LCD Mode Register 0
   type LCDM0_Register is record
      --  LCD Display Bias Method Select
      LBAS  : LCDM0_LBAS_Field := R7FA4M1AB.SLCDC.Val_00;
      --  Time Slice of LCD Display Select
      LDTY  : LCDM0_LDTY_Field := R7FA4M1AB.SLCDC.Val_000;
      --  LCD display waveform selection
      LWAVE : LCDM0_LWAVE_Field := R7FA4M1AB.SLCDC.Val_0;
      --  LCD drive voltage generator selection
      MDSET : LCDM0_MDSET_Field := R7FA4M1AB.SLCDC.Val_00;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for LCDM0_Register use record
      LBAS  at 0 range 0 .. 1;
      LDTY  at 0 range 2 .. 4;
      LWAVE at 0 range 5 .. 5;
      MDSET at 0 range 6 .. 7;
   end record;

   --  Voltage Boosting Pin Initial Value Switching Control
   type LCDM1_LCDVLM_Field is
     (--  Set when VDD >= 2.7 V
      Val_0,
      --  Set when VDD <= 4.2 V
      Val_1)
     with Size => 1;
   for LCDM1_LCDVLM_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype LCDM1_Reserved_Field is R7FA4M1AB.UInt2;

   --  Display data area control
   type LCDM1_LCDSEL_Field is
     (--  Displaying an A-pattern area data (lower four bits of LCD display data
--  register)(BLON=0)/Alternately displaying A-pattern and B-pattern area data
--  (blinking display corresponding to the constant-period interrupt (INTRTC)
--  timing of the real-time clock (RTC))(BLON=1)
      Val_0,
      --  Displaying a B-pattern area data (higher four bits of LCD display data
--  register)(BLON=0)/Alternately displaying A-pattern and B-pattern area data
--  (blinking display corresponding to the constant-period interrupt (INTRTC)
--  timing of the real-time clock (RTC))(BLON=1)
      Val_1)
     with Size => 1;
   for LCDM1_LCDSEL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Display data area control
   type LCDM1_BLON_Field is
     (--  Displaying an A-pattern area data (lower four bits of LCD display data
--  register)(LCDSEL=0)/Displaying a B-pattern area data (higher four bits of
--  LCD display data register)(LCDSEL=1)
      Val_0,
      --  Alternately displaying A-pattern and B-pattern area data (blinking display
--  corresponding to the constant-period interrupt (INTRTC) timing of the
--  real-time clock (RTC))
      Val_1)
     with Size => 1;
   for LCDM1_BLON_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Voltage boost circuit or capacitor split circuit operation
   --  enable/disable
   type LCDM1_VLCON_Field is
     (--  Stops voltage boost circuit or capacitor split circuit operation
      Val_0,
      --  Enables voltage boost circuit or capacitor split circuit operation
      Val_1)
     with Size => 1;
   for LCDM1_VLCON_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  LCD Display Enable/Disable
   type LCDM1_SCOC_Field is
     (--  Output ground level to segment/common pin(LCDON=0)/Output ground level to
--  segment/common pin(LCDON=1)
      Val_0,
      --  Display off (all segment outputs are deselected)(LCDON=0)/Display
--  on(LCDON=1)
      Val_1)
     with Size => 1;
   for LCDM1_SCOC_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  LCD Display Enable/Disable
   type LCDM1_LCDON_Field is
     (--  Output ground level to segment/common pin(SCOC=0)/Display off (all segment
--  outputs are deselected)(SCOC=1)
      Val_0,
      --  Output ground level to segment/common pin(SCOC=0)/Display on(SCOC=1)
      Val_1)
     with Size => 1;
   for LCDM1_LCDON_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  LCD Mode Register 1
   type LCDM1_Register is record
      --  Voltage Boosting Pin Initial Value Switching Control
      LCDVLM   : LCDM1_LCDVLM_Field := R7FA4M1AB.SLCDC.Val_0;
      --  These bits are read as 00. The write value should be 00.
      Reserved : LCDM1_Reserved_Field := 16#0#;
      --  Display data area control
      LCDSEL   : LCDM1_LCDSEL_Field := R7FA4M1AB.SLCDC.Val_0;
      --  Display data area control
      BLON     : LCDM1_BLON_Field := R7FA4M1AB.SLCDC.Val_0;
      --  Voltage boost circuit or capacitor split circuit operation
      --  enable/disable
      VLCON    : LCDM1_VLCON_Field := R7FA4M1AB.SLCDC.Val_0;
      --  LCD Display Enable/Disable
      SCOC     : LCDM1_SCOC_Field := R7FA4M1AB.SLCDC.Val_0;
      --  LCD Display Enable/Disable
      LCDON    : LCDM1_LCDON_Field := R7FA4M1AB.SLCDC.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for LCDM1_Register use record
      LCDVLM   at 0 range 0 .. 0;
      Reserved at 0 range 1 .. 2;
      LCDSEL   at 0 range 3 .. 3;
      BLON     at 0 range 4 .. 4;
      VLCON    at 0 range 5 .. 5;
      SCOC     at 0 range 6 .. 6;
      LCDON    at 0 range 7 .. 7;
   end record;

   --  LCD clock (LCDCL)
   type LCDC0_LCDC_Field is
     (--  Other than above Setting prohibited
      others_k,
      --  (Sub clock)/22 or (LOCO clock)/22
      Val_000001,
      --  (Sub clock)/23 or (LOCO clock)/23
      Val_000010,
      --  (Sub clock)/24 or (LOCO clock)/24
      Val_000011,
      --  (Sub clock)/25 or (LOCO clock)/25
      Val_000100,
      --  (Sub clock)/26 or (LOCO clock)/26
      Val_000101,
      --  (Sub clock)/27 or (LOCO clock)/27
      Val_000110,
      --  (Sub clock)/28 or (LOCO clock)/28
      Val_000111,
      --  (Sub clock)/29 or (LOCO clock)/29
      Val_001000,
      --  (Sub clock)/210 or (LOCO clock)/210
      Val_001001,
      --  (Main clock)/28 or (HOCO clock)/28
      Val_010001,
      --  (Main clock)/29 or (HOCO clock)/29
      Val_010010,
      --  (Main clock)/210 or (HOCO clock)/210
      Val_010011,
      --  (Main clock)/211 or (HOCO clock)/211
      Val_010100,
      --  (Main clock)/212 or (HOCO clock)/212
      Val_010101,
      --  (Main clock)/213 or (HOCO clock)/213
      Val_010110,
      --  (Main clock)/214 or (HOCO clock)/214
      Val_010111,
      --  (Main clock)/215 or (HOCO clock)/215
      Val_011000,
      --  (Main clock)/216 or (HOCO clock)/216
      Val_011001,
      --  (Main clock)/217 or (HOCO clock)/217
      Val_011010,
      --  (Main clock)/218 or (HOCO clock)/218
      Val_011011,
      --  (Main clock)/219 or (HOCO clock)/219
      Val_101011)
     with Size => 6;
   for LCDC0_LCDC_Field use
     (others_k => 0,
      Val_000001 => 1,
      Val_000010 => 2,
      Val_000011 => 3,
      Val_000100 => 4,
      Val_000101 => 5,
      Val_000110 => 6,
      Val_000111 => 7,
      Val_001000 => 8,
      Val_001001 => 9,
      Val_010001 => 17,
      Val_010010 => 18,
      Val_010011 => 19,
      Val_010100 => 20,
      Val_010101 => 21,
      Val_010110 => 22,
      Val_010111 => 23,
      Val_011000 => 24,
      Val_011001 => 25,
      Val_011010 => 26,
      Val_011011 => 27,
      Val_101011 => 43);

   --  LCD Clock Control Register 0
   type LCDC0_Register is record
      --  LCD clock (LCDCL)
      LCDC         : LCDC0_LCDC_Field := R7FA4M1AB.SLCDC.others_k;
      --  unspecified
      Reserved_6_7 : R7FA4M1AB.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for LCDC0_Register use record
      LCDC         at 0 range 0 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   --  Reference Voltage(Contrast Adjustment) Select
   type VLCD_VLCD_Field is
     (--  Setting prohibited
      others_k,
      --  Reference voltageselection(contrast adjustment): 1.00 V (default) VL4
--  voltage: 3.00 V(1/3 bias method)/4.00 V(1/4 bias method)
      Val_00100,
      --  Reference voltageselection(contrast adjustment): 1.05 V VL4 voltage: 3.15
--  V(1/3 bias method)/4.20 V(1/4 bias method)
      Val_00101,
      --  Reference voltageselection(contrast adjustment): 1.10 V VL4 voltage: 3.30
--  V(1/3 bias method)/4.40 V(1/4 bias method)
      Val_00110,
      --  Reference voltageselection(contrast adjustment): 1.15 V VL4 voltage: 3.45
--  V(1/3 bias method)/4.60 V(1/4 bias method)
      Val_00111,
      --  Reference voltageselection(contrast adjustment): 1.20 V VL4 voltage: 3.60
--  V(1/3 bias method)/4.80 V(1/4 bias method)
      Val_01000,
      --  Reference voltageselection(contrast adjustment): 1.25 V VL4 voltage: 3.75
--  V(1/3 bias method)/5.00 V(1/4 bias method)
      Val_01001,
      --  Reference voltageselection(contrast adjustment): 1.30 V VL4 voltage: 3.90
--  V(1/3 bias method)/5.20 V(1/4 bias method)
      Val_01010,
      --  Reference voltageselection(contrast adjustment): 1.35 V VL4 voltage: 4.05
--  V(1/3 bias method)/Setting prohibited(1/4 bias method)
      Val_01011,
      --  Reference voltageselection(contrast adjustment): 1.40 V VL4 voltage: 4.20
--  V(1/3 bias method)/Setting prohibited(1/4 bias method)
      Val_01100,
      --  Reference voltageselection(contrast adjustment): 1.45 V VL4 voltage: 4.35
--  V(1/3 bias method)/Setting prohibited(1/4 bias method)
      Val_01101,
      --  Reference voltageselection(contrast adjustment): 1.50 V VL4 voltage: 4.50
--  V(1/3 bias method)/Setting prohibited(1/4 bias method)
      Val_01110,
      --  Reference voltageselection(contrast adjustment): 1.55 V VL4 voltage: 4.65
--  V(1/3 bias method)/Setting prohibited(1/4 bias method)
      Val_01111,
      --  Reference voltageselection(contrast adjustment): 1.60 V VL4 voltage: 4.80
--  V(1/3 bias method)/Setting prohibited(1/4 bias method)
      Val_10000,
      --  Reference voltageselection(contrast adjustment): 1.65 V VL4 voltage: 4.95
--  V(1/3 bias method)/Setting prohibited(1/4 bias method)
      Val_10001,
      --  Reference voltageselection(contrast adjustment): 1.70 V VL4 voltage: 5.10
--  V(1/3 bias method)/Setting prohibited(1/4 bias method)
      Val_10010,
      --  Reference voltageselection(contrast adjustment): 1.75 V VL4 voltage: 5.25
--  V(1/3 bias method)/Setting prohibited(1/4 bias method)
      Val_10011)
     with Size => 5;
   for VLCD_VLCD_Field use
     (others_k => 0,
      Val_00100 => 4,
      Val_00101 => 5,
      Val_00110 => 6,
      Val_00111 => 7,
      Val_01000 => 8,
      Val_01001 => 9,
      Val_01010 => 10,
      Val_01011 => 11,
      Val_01100 => 12,
      Val_01101 => 13,
      Val_01110 => 14,
      Val_01111 => 15,
      Val_10000 => 16,
      Val_10001 => 17,
      Val_10010 => 18,
      Val_10011 => 19);

   --  LCD Boost Level Control Register
   type VLCD_Register is record
      --  Reference Voltage(Contrast Adjustment) Select
      VLCD         : VLCD_VLCD_Field := R7FA4M1AB.SLCDC.Val_00100;
      --  unspecified
      Reserved_5_7 : R7FA4M1AB.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for VLCD_Register use record
      VLCD         at 0 range 0 .. 4;
      Reserved_5_7 at 0 range 5 .. 7;
   end record;

   --  LCD Display Data Register %s

   --  LCD Display Data Register %s
   type SEG_Registers is array (0 .. 37) of R7FA4M1AB.Byte;

   -----------------
   -- Peripherals --
   -----------------

   --  Segment LCD Controller/Driver
   type SLCDC_Peripheral is record
      --  LCD Mode Register 0
      LCDM0 : aliased LCDM0_Register;
      --  LCD Mode Register 1
      LCDM1 : aliased LCDM1_Register;
      --  LCD Clock Control Register 0
      LCDC0 : aliased LCDC0_Register;
      --  LCD Boost Level Control Register
      VLCD  : aliased VLCD_Register;
      --  LCD Display Data Register %s
      SEG   : aliased SEG_Registers;
   end record
     with Volatile;

   for SLCDC_Peripheral use record
      LCDM0 at 16#0# range 0 .. 7;
      LCDM1 at 16#1# range 0 .. 7;
      LCDC0 at 16#2# range 0 .. 7;
      VLCD  at 16#3# range 0 .. 7;
      SEG   at 16#100# range 0 .. 303;
   end record;

   --  Segment LCD Controller/Driver
   SLCDC_Periph : aliased SLCDC_Peripheral
     with Import, Address => SLCDC_Base;

end R7FA4M1AB.SLCDC;
