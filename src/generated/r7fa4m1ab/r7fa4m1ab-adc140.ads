-- 
-- Copyright (C) 2026 Marcus Gigandet
--
-- SPDX-License-Identifier: LGPL-3.0-or-later
-- 

pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB-ada.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  14bit A/D Converter
package R7FA4M1AB.ADC140 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype ADCSR_DBLANS_Field is R7FA4M1AB.UInt5;

   --  Group B Scan End Interrupt Enable
   type ADCSR_GBADIE_Field is
     (--  Disables S12GBADI0 interrupt generation upon group B scan completion.
      Val_0,
      --  Enables S12GBADI0 interrupt generation upon group B scan completion.
      Val_1)
     with Size => 1;
   for ADCSR_GBADIE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Double Trigger Mode Select
   type ADCSR_DBLE_Field is
     (--  Double trigger mode non-selection
      Val_0,
      --  Double trigger mode selection
      Val_1)
     with Size => 1;
   for ADCSR_DBLE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Trigger Select
   type ADCSR_EXTRG_Field is
     (--  A/D conversion is started by the synchronous trigger (ELC).
      Val_0,
      --  A/D conversion is started by the asynchronous trigger (ADTRG0#).
      Val_1)
     with Size => 1;
   for ADCSR_EXTRG_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Trigger Start Enable
   type ADCSR_TRGE_Field is
     (--  Disables A/D conversion to be started by the synchronous or asynchronous
--  trigger.
      Val_0,
      --  Enables A/D conversion to be started by the synchronous or asynchronous
--  trigger.
      Val_1)
     with Size => 1;
   for ADCSR_TRGE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  A/D Conversion Operation Mode Select
   type ADCSR_ADHSC_Field is
     (--  High speed A/D conversion mode
      Val_0,
      --  Low current A/D conversion mode
      Val_1)
     with Size => 1;
   for ADCSR_ADHSC_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype ADCSR_Reserved_Field is R7FA4M1AB.UInt2;

   --  Scan Mode Select
   type ADCSR_ADCS_Field is
     (--  Single scan mode
      Val_00,
      --  Group scan mode
      Val_01,
      --  Continuous scan mode
      Val_10,
      --  Setting prohibited
      Val_11)
     with Size => 2;
   for ADCSR_ADCS_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   --  A/D Conversion Start
   type ADCSR_ADST_Field is
     (--  Stops A/D conversion process.
      Val_0,
      --  Starts A/D conversion process.
      Val_1)
     with Size => 1;
   for ADCSR_ADST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  A/D Control Register
   type ADCSR_Register is record
      --  Double Trigger Channel Select These bits select one analog input
      --  channel for double triggered operation. The setting is only effective
      --  while double trigger mode is selected.
      DBLANS     : ADCSR_DBLANS_Field := 16#0#;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : Boolean := False;
      --  Group B Scan End Interrupt Enable
      GBADIE     : ADCSR_GBADIE_Field := R7FA4M1AB.ADC140.Val_0;
      --  Double Trigger Mode Select
      DBLE       : ADCSR_DBLE_Field := R7FA4M1AB.ADC140.Val_0;
      --  Trigger Select
      EXTRG      : ADCSR_EXTRG_Field := R7FA4M1AB.ADC140.Val_0;
      --  Trigger Start Enable
      TRGE       : ADCSR_TRGE_Field := R7FA4M1AB.ADC140.Val_0;
      --  A/D Conversion Operation Mode Select
      ADHSC      : ADCSR_ADHSC_Field := R7FA4M1AB.ADC140.Val_0;
      --  These bits are read as 00. The write value should be 00.
      Reserved_1 : ADCSR_Reserved_Field := 16#0#;
      --  Scan Mode Select
      ADCS       : ADCSR_ADCS_Field := R7FA4M1AB.ADC140.Val_00;
      --  *** This field is modified following a read operation ***. A/D
      --  Conversion Start
      ADST       : ADCSR_ADST_Field := R7FA4M1AB.ADC140.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADCSR_Register use record
      DBLANS     at 0 range 0 .. 4;
      Reserved   at 0 range 5 .. 5;
      GBADIE     at 0 range 6 .. 6;
      DBLE       at 0 range 7 .. 7;
      EXTRG      at 0 range 8 .. 8;
      TRGE       at 0 range 9 .. 9;
      ADHSC      at 0 range 10 .. 10;
      Reserved_1 at 0 range 11 .. 12;
      ADCS       at 0 range 13 .. 14;
      ADST       at 0 range 15 .. 15;
   end record;

   --  AN000 Select
   type ADANSA0_ANSA00_Field is
     (--  AN000 is not subjected to conversion.
      Val_0,
      --  AN000 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSA0_ANSA00_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN001 Select
   type ADANSA0_ANSA01_Field is
     (--  AN001 is not subjected to conversion.
      Val_0,
      --  AN001 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSA0_ANSA01_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN002 Select
   type ADANSA0_ANSA02_Field is
     (--  AN002 is not subjected to conversion.
      Val_0,
      --  AN002 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSA0_ANSA02_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN003 Select
   type ADANSA0_ANSA03_Field is
     (--  AN003 is not subjected to conversion.
      Val_0,
      --  AN003 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSA0_ANSA03_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN004 Select
   type ADANSA0_ANSA04_Field is
     (--  AN004 is not subjected to conversion.
      Val_0,
      --  AN004 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSA0_ANSA04_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN005 Select
   type ADANSA0_ANSA05_Field is
     (--  AN005 is not subjected to conversion.
      Val_0,
      --  AN005 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSA0_ANSA05_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN006 Select
   type ADANSA0_ANSA06_Field is
     (--  AN006 is not subjected to conversion.
      Val_0,
      --  AN006 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSA0_ANSA06_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN007 Select
   type ADANSA0_ANSA07_Field is
     (--  AN007 is not subjected to conversion.
      Val_0,
      --  AN007 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSA0_ANSA07_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN008 Select
   type ADANSA0_ANSA08_Field is
     (--  AN008 is not subjected to conversion.
      Val_0,
      --  AN008 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSA0_ANSA08_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN009 Select
   type ADANSA0_ANSA09_Field is
     (--  AN009 is not subjected to conversion.
      Val_0,
      --  AN009 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSA0_ANSA09_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN010 Select
   type ADANSA0_ANSA010_Field is
     (--  AN010 is not subjected to conversion.
      Val_0,
      --  AN010 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSA0_ANSA010_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN011 Select
   type ADANSA0_ANSA011_Field is
     (--  AN011 is not subjected to conversion.
      Val_0,
      --  AN011 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSA0_ANSA011_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN012 Select
   type ADANSA0_ANSA012_Field is
     (--  AN012 is not subjected to conversion.
      Val_0,
      --  AN012 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSA0_ANSA012_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN013 Select
   type ADANSA0_ANSA013_Field is
     (--  AN013 is not subjected to conversion.
      Val_0,
      --  AN013 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSA0_ANSA013_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN014 Select
   type ADANSA0_ANSA014_Field is
     (--  AN014 is not subjected to conversion.
      Val_0,
      --  AN014 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSA0_ANSA014_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  A/D Channel Select Register A0
   type ADANSA0_Register is record
      --  AN000 Select
      ANSA00   : ADANSA0_ANSA00_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN001 Select
      ANSA01   : ADANSA0_ANSA01_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN002 Select
      ANSA02   : ADANSA0_ANSA02_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN003 Select
      ANSA03   : ADANSA0_ANSA03_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN004 Select
      ANSA04   : ADANSA0_ANSA04_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN005 Select
      ANSA05   : ADANSA0_ANSA05_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN006 Select
      ANSA06   : ADANSA0_ANSA06_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN007 Select
      ANSA07   : ADANSA0_ANSA07_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN008 Select
      ANSA08   : ADANSA0_ANSA08_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN009 Select
      ANSA09   : ADANSA0_ANSA09_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN010 Select
      ANSA010  : ADANSA0_ANSA010_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN011 Select
      ANSA011  : ADANSA0_ANSA011_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN012 Select
      ANSA012  : ADANSA0_ANSA012_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN013 Select
      ANSA013  : ADANSA0_ANSA013_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN014 Select
      ANSA014  : ADANSA0_ANSA014_Field := R7FA4M1AB.ADC140.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADANSA0_Register use record
      ANSA00   at 0 range 0 .. 0;
      ANSA01   at 0 range 1 .. 1;
      ANSA02   at 0 range 2 .. 2;
      ANSA03   at 0 range 3 .. 3;
      ANSA04   at 0 range 4 .. 4;
      ANSA05   at 0 range 5 .. 5;
      ANSA06   at 0 range 6 .. 6;
      ANSA07   at 0 range 7 .. 7;
      ANSA08   at 0 range 8 .. 8;
      ANSA09   at 0 range 9 .. 9;
      ANSA010  at 0 range 10 .. 10;
      ANSA011  at 0 range 11 .. 11;
      ANSA012  at 0 range 12 .. 12;
      ANSA013  at 0 range 13 .. 13;
      ANSA014  at 0 range 14 .. 14;
      Reserved at 0 range 15 .. 15;
   end record;

   --  AN016 Select
   type ADANSA1_ANSA16_Field is
     (--  AN016 is not subjected to conversion.
      Val_0,
      --  AN016 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSA1_ANSA16_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN017 Select
   type ADANSA1_ANSA17_Field is
     (--  AN017 is not subjected to conversion.
      Val_0,
      --  AN017 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSA1_ANSA17_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN018 Select
   type ADANSA1_ANSA18_Field is
     (--  AN018 is not subjected to conversion.
      Val_0,
      --  AN018 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSA1_ANSA18_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN019 Select
   type ADANSA1_ANSA19_Field is
     (--  AN019 is not subjected to conversion.
      Val_0,
      --  AN019 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSA1_ANSA19_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN020 Select
   type ADANSA1_ANSA20_Field is
     (--  AN020 is not subjected to conversion.
      Val_0,
      --  AN020 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSA1_ANSA20_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN021 Select
   type ADANSA1_ANSA21_Field is
     (--  AN021 is not subjected to conversion.
      Val_0,
      --  AN021 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSA1_ANSA21_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN022 Select
   type ADANSA1_ANSA22_Field is
     (--  AN022 is not subjected to conversion.
      Val_0,
      --  AN022 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSA1_ANSA22_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN023 Select
   type ADANSA1_ANSA23_Field is
     (--  AN023 is not subjected to conversion.
      Val_0,
      --  AN023 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSA1_ANSA23_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN024 Select
   type ADANSA1_ANSA24_Field is
     (--  AN024 is not subjected to conversion.
      Val_0,
      --  AN024 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSA1_ANSA24_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN025 Select
   type ADANSA1_ANSA25_Field is
     (--  AN025 is not subjected to conversion.
      Val_0,
      --  AN025 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSA1_ANSA25_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype ADANSA1_Reserved_Field is R7FA4M1AB.UInt6;

   --  A/D Channel Select Register A1
   type ADANSA1_Register is record
      --  AN016 Select
      ANSA16   : ADANSA1_ANSA16_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN017 Select
      ANSA17   : ADANSA1_ANSA17_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN018 Select
      ANSA18   : ADANSA1_ANSA18_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN019 Select
      ANSA19   : ADANSA1_ANSA19_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN020 Select
      ANSA20   : ADANSA1_ANSA20_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN021 Select
      ANSA21   : ADANSA1_ANSA21_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN022 Select
      ANSA22   : ADANSA1_ANSA22_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN023 Select
      ANSA23   : ADANSA1_ANSA23_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN024 Select
      ANSA24   : ADANSA1_ANSA24_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN025 Select
      ANSA25   : ADANSA1_ANSA25_Field := R7FA4M1AB.ADC140.Val_0;
      --  These bits are read as 000000. The write value should be 000000.
      Reserved : ADANSA1_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADANSA1_Register use record
      ANSA16   at 0 range 0 .. 0;
      ANSA17   at 0 range 1 .. 1;
      ANSA18   at 0 range 2 .. 2;
      ANSA19   at 0 range 3 .. 3;
      ANSA20   at 0 range 4 .. 4;
      ANSA21   at 0 range 5 .. 5;
      ANSA22   at 0 range 6 .. 6;
      ANSA23   at 0 range 7 .. 7;
      ANSA24   at 0 range 8 .. 8;
      ANSA25   at 0 range 9 .. 9;
      Reserved at 0 range 10 .. 15;
   end record;

   --  A/D-Converted Value Addition/Average Channel AN000 Select
   type ADADS0_ADS00_Field is
     (--  AN000 is not selected.
      Val_0,
      --  AN000 is selected.
      Val_1)
     with Size => 1;
   for ADADS0_ADS00_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  A/D-Converted Value Addition/Average Channel AN001 Select
   type ADADS0_ADS01_Field is
     (--  AN001 is not selected.
      Val_0,
      --  AN001 is selected.
      Val_1)
     with Size => 1;
   for ADADS0_ADS01_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  A/D-Converted Value Addition/Average Channel AN002 Select
   type ADADS0_ADS02_Field is
     (--  AN002 is not selected.
      Val_0,
      --  AN002 is selected.
      Val_1)
     with Size => 1;
   for ADADS0_ADS02_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  A/D-Converted Value Addition/Average Channel AN003 Select
   type ADADS0_ADS03_Field is
     (--  AN003 is not selected.
      Val_0,
      --  AN003 is selected.
      Val_1)
     with Size => 1;
   for ADADS0_ADS03_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  A/D-Converted Value Addition/Average Channel AN004 Select
   type ADADS0_ADS04_Field is
     (--  AN004 is not selected.
      Val_0,
      --  AN004 is selected.
      Val_1)
     with Size => 1;
   for ADADS0_ADS04_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  A/D-Converted Value Addition/Average Channel AN005 Select
   type ADADS0_ADS05_Field is
     (--  AN005 is not selected.
      Val_0,
      --  AN005 is selected.
      Val_1)
     with Size => 1;
   for ADADS0_ADS05_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  A/D-Converted Value Addition/Average Channel AN006 Select
   type ADADS0_ADS06_Field is
     (--  AN006 is not selected.
      Val_0,
      --  AN006 is selected.
      Val_1)
     with Size => 1;
   for ADADS0_ADS06_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  A/D-Converted Value Addition/Average Channel AN007 Select
   type ADADS0_ADS07_Field is
     (--  AN007 is not selected.
      Val_0,
      --  AN007 is selected.
      Val_1)
     with Size => 1;
   for ADADS0_ADS07_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  A/D-Converted Value Addition/Average Channel AN008 Select
   type ADADS0_ADS08_Field is
     (--  AN008 is not selected.
      Val_0,
      --  AN008 is selected.
      Val_1)
     with Size => 1;
   for ADADS0_ADS08_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  A/D-Converted Value Addition/Average Channel AN009 Select
   type ADADS0_ADS09_Field is
     (--  AN009 is not selected.
      Val_0,
      --  AN009 is selected.
      Val_1)
     with Size => 1;
   for ADADS0_ADS09_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  A/D-Converted Value Addition/Average Channel AN010 Select
   type ADADS0_ADS10_Field is
     (--  AN010 is not selected.
      Val_0,
      --  AN010 is selected.
      Val_1)
     with Size => 1;
   for ADADS0_ADS10_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  A/D-Converted Value Addition/Average Channel AN011 Select
   type ADADS0_ADS11_Field is
     (--  AN011 is not selected.
      Val_0,
      --  AN011 is selected.
      Val_1)
     with Size => 1;
   for ADADS0_ADS11_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  A/D-Converted Value Addition/Average Channel AN012 Select
   type ADADS0_ADS12_Field is
     (--  AN012 is not selected.
      Val_0,
      --  AN012 is selected.
      Val_1)
     with Size => 1;
   for ADADS0_ADS12_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  A/D-Converted Value Addition/Average Channel AN013 Select
   type ADADS0_ADS13_Field is
     (--  AN013 is not selected.
      Val_0,
      --  AN013 is selected.
      Val_1)
     with Size => 1;
   for ADADS0_ADS13_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  A/D-Converted Value Addition/Average Channel AN014 Select
   type ADADS0_ADS14_Field is
     (--  AN014 is not selected.
      Val_0,
      --  AN014 is selected.
      Val_1)
     with Size => 1;
   for ADADS0_ADS14_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  A/D-Converted Value Addition/Average Channel Select Register 0
   type ADADS0_Register is record
      --  A/D-Converted Value Addition/Average Channel AN000 Select
      ADS00    : ADADS0_ADS00_Field := R7FA4M1AB.ADC140.Val_0;
      --  A/D-Converted Value Addition/Average Channel AN001 Select
      ADS01    : ADADS0_ADS01_Field := R7FA4M1AB.ADC140.Val_0;
      --  A/D-Converted Value Addition/Average Channel AN002 Select
      ADS02    : ADADS0_ADS02_Field := R7FA4M1AB.ADC140.Val_0;
      --  A/D-Converted Value Addition/Average Channel AN003 Select
      ADS03    : ADADS0_ADS03_Field := R7FA4M1AB.ADC140.Val_0;
      --  A/D-Converted Value Addition/Average Channel AN004 Select
      ADS04    : ADADS0_ADS04_Field := R7FA4M1AB.ADC140.Val_0;
      --  A/D-Converted Value Addition/Average Channel AN005 Select
      ADS05    : ADADS0_ADS05_Field := R7FA4M1AB.ADC140.Val_0;
      --  A/D-Converted Value Addition/Average Channel AN006 Select
      ADS06    : ADADS0_ADS06_Field := R7FA4M1AB.ADC140.Val_0;
      --  A/D-Converted Value Addition/Average Channel AN007 Select
      ADS07    : ADADS0_ADS07_Field := R7FA4M1AB.ADC140.Val_0;
      --  A/D-Converted Value Addition/Average Channel AN008 Select
      ADS08    : ADADS0_ADS08_Field := R7FA4M1AB.ADC140.Val_0;
      --  A/D-Converted Value Addition/Average Channel AN009 Select
      ADS09    : ADADS0_ADS09_Field := R7FA4M1AB.ADC140.Val_0;
      --  A/D-Converted Value Addition/Average Channel AN010 Select
      ADS10    : ADADS0_ADS10_Field := R7FA4M1AB.ADC140.Val_0;
      --  A/D-Converted Value Addition/Average Channel AN011 Select
      ADS11    : ADADS0_ADS11_Field := R7FA4M1AB.ADC140.Val_0;
      --  A/D-Converted Value Addition/Average Channel AN012 Select
      ADS12    : ADADS0_ADS12_Field := R7FA4M1AB.ADC140.Val_0;
      --  A/D-Converted Value Addition/Average Channel AN013 Select
      ADS13    : ADADS0_ADS13_Field := R7FA4M1AB.ADC140.Val_0;
      --  A/D-Converted Value Addition/Average Channel AN014 Select
      ADS14    : ADADS0_ADS14_Field := R7FA4M1AB.ADC140.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADADS0_Register use record
      ADS00    at 0 range 0 .. 0;
      ADS01    at 0 range 1 .. 1;
      ADS02    at 0 range 2 .. 2;
      ADS03    at 0 range 3 .. 3;
      ADS04    at 0 range 4 .. 4;
      ADS05    at 0 range 5 .. 5;
      ADS06    at 0 range 6 .. 6;
      ADS07    at 0 range 7 .. 7;
      ADS08    at 0 range 8 .. 8;
      ADS09    at 0 range 9 .. 9;
      ADS10    at 0 range 10 .. 10;
      ADS11    at 0 range 11 .. 11;
      ADS12    at 0 range 12 .. 12;
      ADS13    at 0 range 13 .. 13;
      ADS14    at 0 range 14 .. 14;
      Reserved at 0 range 15 .. 15;
   end record;

   --  A/D-Converted Value Addition/Average Channel AN016 Select
   type ADADS1_ADS16_Field is
     (--  AN016 is not selected.
      Val_0,
      --  AN016 is selected.
      Val_1)
     with Size => 1;
   for ADADS1_ADS16_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  A/D-Converted Value Addition/Average Channel AN017 Select
   type ADADS1_ADS17_Field is
     (--  AN017 is not selected.
      Val_0,
      --  AN017 is selected.
      Val_1)
     with Size => 1;
   for ADADS1_ADS17_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  A/D-Converted Value Addition/Average Channel AN018 Select
   type ADADS1_ADS18_Field is
     (--  AN018 is not selected.
      Val_0,
      --  AN018 is selected.
      Val_1)
     with Size => 1;
   for ADADS1_ADS18_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  A/D-Converted Value Addition/Average Channel AN019 Select
   type ADADS1_ADS19_Field is
     (--  AN019 is not selected.
      Val_0,
      --  AN019 is selected.
      Val_1)
     with Size => 1;
   for ADADS1_ADS19_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  A/D-Converted Value Addition/Average Channel AN020 Select
   type ADADS1_ADS20_Field is
     (--  AN020 is not selected.
      Val_0,
      --  AN020 is selected.
      Val_1)
     with Size => 1;
   for ADADS1_ADS20_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  A/D-Converted Value Addition/Average Channel AN021 Select
   type ADADS1_ADS21_Field is
     (--  AN021 is not selected.
      Val_0,
      --  AN021 is selected.
      Val_1)
     with Size => 1;
   for ADADS1_ADS21_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  A/D-Converted Value Addition/Average Channel AN022 Select
   type ADADS1_ADS22_Field is
     (--  AN022 is not selected.
      Val_0,
      --  AN022 is selected.
      Val_1)
     with Size => 1;
   for ADADS1_ADS22_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  A/D-Converted Value Addition/Average Channel AN023 Select
   type ADADS1_ADS23_Field is
     (--  AN023 is not selected.
      Val_0,
      --  AN023 is selected.
      Val_1)
     with Size => 1;
   for ADADS1_ADS23_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  A/D-Converted Value Addition/Average Channel AN024 Select
   type ADADS1_ADS24_Field is
     (--  AN024 is not selected.
      Val_0,
      --  AN024 is selected.
      Val_1)
     with Size => 1;
   for ADADS1_ADS24_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  A/D-Converted Value Addition/Average Channel AN025 Select
   type ADADS1_ADS25_Field is
     (--  AN025 is not selected.
      Val_0,
      --  AN025 is selected.
      Val_1)
     with Size => 1;
   for ADADS1_ADS25_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype ADADS1_Reserved_Field is R7FA4M1AB.UInt6;

   --  A/D-Converted Value Addition/Average Channel Select Register 1
   type ADADS1_Register is record
      --  A/D-Converted Value Addition/Average Channel AN016 Select
      ADS16    : ADADS1_ADS16_Field := R7FA4M1AB.ADC140.Val_0;
      --  A/D-Converted Value Addition/Average Channel AN017 Select
      ADS17    : ADADS1_ADS17_Field := R7FA4M1AB.ADC140.Val_0;
      --  A/D-Converted Value Addition/Average Channel AN018 Select
      ADS18    : ADADS1_ADS18_Field := R7FA4M1AB.ADC140.Val_0;
      --  A/D-Converted Value Addition/Average Channel AN019 Select
      ADS19    : ADADS1_ADS19_Field := R7FA4M1AB.ADC140.Val_0;
      --  A/D-Converted Value Addition/Average Channel AN020 Select
      ADS20    : ADADS1_ADS20_Field := R7FA4M1AB.ADC140.Val_0;
      --  A/D-Converted Value Addition/Average Channel AN021 Select
      ADS21    : ADADS1_ADS21_Field := R7FA4M1AB.ADC140.Val_0;
      --  A/D-Converted Value Addition/Average Channel AN022 Select
      ADS22    : ADADS1_ADS22_Field := R7FA4M1AB.ADC140.Val_0;
      --  A/D-Converted Value Addition/Average Channel AN023 Select
      ADS23    : ADADS1_ADS23_Field := R7FA4M1AB.ADC140.Val_0;
      --  A/D-Converted Value Addition/Average Channel AN024 Select
      ADS24    : ADADS1_ADS24_Field := R7FA4M1AB.ADC140.Val_0;
      --  A/D-Converted Value Addition/Average Channel AN025 Select
      ADS25    : ADADS1_ADS25_Field := R7FA4M1AB.ADC140.Val_0;
      --  These bits are read as 000000. The write value should be 000000.
      Reserved : ADADS1_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADADS1_Register use record
      ADS16    at 0 range 0 .. 0;
      ADS17    at 0 range 1 .. 1;
      ADS18    at 0 range 2 .. 2;
      ADS19    at 0 range 3 .. 3;
      ADS20    at 0 range 4 .. 4;
      ADS21    at 0 range 5 .. 5;
      ADS22    at 0 range 6 .. 6;
      ADS23    at 0 range 7 .. 7;
      ADS24    at 0 range 8 .. 8;
      ADS25    at 0 range 9 .. 9;
      Reserved at 0 range 10 .. 15;
   end record;

   --  Addition frequency selection bit. NOTE: AVEE bit is valid at the only
   --  setting of ADC[2:0] bits = 001b or 011b. When average mode is selected
   --  by setting the ADADC.AVEE bit to 1, do not set the addition count to
   --  three times (ADADC.ADC[2:0] = 010b)
   type ADADC_ADC_Field is
     (--  1-time conversion (no addition; same as normal conversion)
      Val_000,
      --  Setting prohibited
      others_k,
      --  2-time conversion (addition once)
      Val_001,
      --  3-time conversion (addition twice)
      Val_010,
      --  4-time conversion (addition three times)
      Val_011,
      --  16-time conversion (addition 15 times), can be set when selecting 12-bit
--  accuracy.
      Val_101)
     with Size => 3;
   for ADADC_ADC_Field use
     (Val_000 => 0,
      others_k => 0,
      Val_001 => 1,
      Val_010 => 2,
      Val_011 => 3,
      Val_101 => 5);

   subtype ADADC_Reserved_Field is R7FA4M1AB.UInt4;

   --  Average mode enable bit. Note: The AVEE bit converts twice, and only
   --  when converting it four times, is effective. Please do not set
   --  (ADADC.AVEE=1) to conversion (ADADC.ADC 2:0=010b) three times when you
   --  select the average mode.
   type ADADC_AVEE_Field is
     (--  Disabled
      Val_0,
      --  Enabled
      Val_1)
     with Size => 1;
   for ADADC_AVEE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  A/D-Converted Value Addition/Average Count Select Register
   type ADADC_Register is record
      --  Addition frequency selection bit. NOTE: AVEE bit is valid at the only
      --  setting of ADC[2:0] bits = 001b or 011b. When average mode is
      --  selected by setting the ADADC.AVEE bit to 1, do not set the addition
      --  count to three times (ADADC.ADC[2:0] = 010b)
      ADC      : ADADC_ADC_Field := R7FA4M1AB.ADC140.Val_000;
      --  These bits are read as 0000. The write value should be 0000.
      Reserved : ADADC_Reserved_Field := 16#0#;
      --  Average mode enable bit. Note: The AVEE bit converts twice, and only
      --  when converting it four times, is effective. Please do not set
      --  (ADADC.AVEE=1) to conversion (ADADC.ADC 2:0=010b) three times when
      --  you select the average mode.
      AVEE     : ADADC_AVEE_Field := R7FA4M1AB.ADC140.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for ADADC_Register use record
      ADC      at 0 range 0 .. 2;
      Reserved at 0 range 3 .. 6;
      AVEE     at 0 range 7 .. 7;
   end record;

   --  A/D Conversion Accuracy Specify
   type ADCER_ADPRC_Field is
     (--  A/D conversion is performed with 12-bit accuracy.
      Val_00,
      --  Setting prohibited
      others_k,
      --  A/D conversion is performed with 14-bit accuracy.
      Val_11)
     with Size => 2;
   for ADCER_ADPRC_Field use
     (Val_00 => 0,
      others_k => 0,
      Val_11 => 3);

   --  ADCER_Reserved array
   type ADCER_Reserved_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for ADCER_Reserved
   type ADCER_Reserved_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  Reserved as a value
            Val : R7FA4M1AB.UInt2;
         when True =>
            --  Reserved as an array
            Arr : ADCER_Reserved_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for ADCER_Reserved_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  A/D Data Register Automatic Clearing Enable
   type ADCER_ACE_Field is
     (--  Disables automatic clearing.
      Val_0,
      --  Enables automatic clearing.
      Val_1)
     with Size => 1;
   for ADCER_ACE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype ADCER_Reserved_Field_1 is R7FA4M1AB.UInt2;

   --  Self-Diagnosis Conversion Voltage Select
   type ADCER_DIAGVAL_Field is
     (--  When the self-diagnosis fixation mode is selected, it set prohibits it.
      Val_00,
      --  The self-diagnosis by using the voltage of 0V.
      Val_01,
      --  The self-diagnosis by using the voltage of reference supply x 1/2.
      Val_10,
      --  The self-diagnosis by using the voltage of the reference supply.
      Val_11)
     with Size => 2;
   for ADCER_DIAGVAL_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   --  Self-Diagnosis Mode Select
   type ADCER_DIAGLD_Field is
     (--  Rotation mode for self-diagnosis voltage
      Val_0,
      --  Fixed mode for self-diagnosis voltage
      Val_1)
     with Size => 1;
   for ADCER_DIAGLD_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Self-Diagnosis Enable
   type ADCER_DIAGM_Field is
     (--  Disables self-diagnosis of A/D converter.
      Val_0,
      --  Enables self-diagnosis of A/D converter.
      Val_1)
     with Size => 1;
   for ADCER_DIAGM_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype ADCER_Reserved_Field_2 is R7FA4M1AB.UInt3;

   --  A/D Data Register Format Select
   type ADCER_ADRFMT_Field is
     (--  Flush-right is selected for the A/D data register format.
      Val_0,
      --  Flush-left is selected for the A/D data register format.
      Val_1)
     with Size => 1;
   for ADCER_ADRFMT_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  A/D Control Extended Register
   type ADCER_Register is record
      --  This bit is read as 0. The write value should be 0.
      Reserved   : Boolean := False;
      --  A/D Conversion Accuracy Specify
      ADPRC      : ADCER_ADPRC_Field := R7FA4M1AB.ADC140.Val_00;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : ADCER_Reserved_Field := (As_Array => False, Val => 16#0#);
      --  A/D Data Register Automatic Clearing Enable
      ACE        : ADCER_ACE_Field := R7FA4M1AB.ADC140.Val_0;
      --  These bits are read as 00. The write value should be 00.
      Reserved_2 : ADCER_Reserved_Field_1 := 16#0#;
      --  Self-Diagnosis Conversion Voltage Select
      DIAGVAL    : ADCER_DIAGVAL_Field := R7FA4M1AB.ADC140.Val_00;
      --  Self-Diagnosis Mode Select
      DIAGLD     : ADCER_DIAGLD_Field := R7FA4M1AB.ADC140.Val_0;
      --  Self-Diagnosis Enable
      DIAGM      : ADCER_DIAGM_Field := R7FA4M1AB.ADC140.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : ADCER_Reserved_Field_2 := 16#0#;
      --  A/D Data Register Format Select
      ADRFMT     : ADCER_ADRFMT_Field := R7FA4M1AB.ADC140.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADCER_Register use record
      Reserved   at 0 range 0 .. 0;
      ADPRC      at 0 range 1 .. 2;
      Reserved_1 at 0 range 3 .. 4;
      ACE        at 0 range 5 .. 5;
      Reserved_2 at 0 range 6 .. 7;
      DIAGVAL    at 0 range 8 .. 9;
      DIAGLD     at 0 range 10 .. 10;
      DIAGM      at 0 range 11 .. 11;
      Reserved_3 at 0 range 12 .. 14;
      ADRFMT     at 0 range 15 .. 15;
   end record;

   subtype ADSTRGR_TRSB_Field is R7FA4M1AB.UInt6;
   subtype ADSTRGR_Reserved_Field is R7FA4M1AB.UInt2;
   subtype ADSTRGR_TRSA_Field is R7FA4M1AB.UInt6;

   --  A/D Conversion Start Trigger Select Register
   type ADSTRGR_Register is record
      --  A/D Conversion Start Trigger Select for Group B Select the A/D
      --  conversion start trigger for group B in group scan mode.
      TRSB       : ADSTRGR_TRSB_Field := 16#0#;
      --  These bits are read as 00. The write value should be 00.
      Reserved   : ADSTRGR_Reserved_Field := 16#0#;
      --  A/D Conversion Start Trigger Select Select the A/D conversion start
      --  trigger in single scan mode and continuous mode. In group scan mode,
      --  the A/D conversion start trigger for group A is selected.
      TRSA       : ADSTRGR_TRSA_Field := 16#0#;
      --  These bits are read as 00. The write value should be 00.
      Reserved_1 : ADSTRGR_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADSTRGR_Register use record
      TRSB       at 0 range 0 .. 5;
      Reserved   at 0 range 6 .. 7;
      TRSA       at 0 range 8 .. 13;
      Reserved_1 at 0 range 14 .. 15;
   end record;

   --  Temperature Sensor Output A/D converted Value Addition/Average Mode
   --  Select
   type ADEXICR_TSSAD_Field is
     (--  Temperature sensor output A/D-converted value addition/average mode is not
--  selected.
      Val_0,
      --  Temperature sensor output A/D-converted value addition/average mode is
--  selected.
      Val_1)
     with Size => 1;
   for ADEXICR_TSSAD_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Internal Reference Voltage A/D converted Value Addition/Average Mode
   --  Select
   type ADEXICR_OCSAD_Field is
     (--  Internal reference voltage A/D-converted value addition/average mode is not
--  selected.
      Val_0,
      --  Internal reference voltage A/D-converted value addition/average mode is
--  selected.
      Val_1)
     with Size => 1;
   for ADEXICR_OCSAD_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype ADEXICR_Reserved_Field is R7FA4M1AB.UInt6;

   --  Temperature Sensor Output A/D Conversion Select
   type ADEXICR_TSSA_Field is
     (--  The temperature sensor output is not selected.
      Val_0,
      --  The temperature sensor output is selected.
      Val_1)
     with Size => 1;
   for ADEXICR_TSSA_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Internal Reference Voltage A/D Conversion Select
   type ADEXICR_OCSA_Field is
     (--  The internal reference voltage is not selected.
      Val_0,
      --  The internal reference voltage is selected for group A in single scan mode,
--  continuous scan mode, or group scan mode.
      Val_1)
     with Size => 1;
   for ADEXICR_OCSA_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ADEXICR_Reserved array
   type ADEXICR_Reserved_Field_Array is array (1 .. 3) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for ADEXICR_Reserved
   type ADEXICR_Reserved_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  Reserved as a value
            Val : R7FA4M1AB.UInt3;
         when True =>
            --  Reserved as an array
            Arr : ADEXICR_Reserved_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for ADEXICR_Reserved_Field_1 use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  ADEXICR_Reserved array
   type ADEXICR_Reserved_Field_Array_1 is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for ADEXICR_Reserved
   type ADEXICR_Reserved_Field_2
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  Reserved as a value
            Val : R7FA4M1AB.UInt2;
         when True =>
            --  Reserved as an array
            Arr : ADEXICR_Reserved_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for ADEXICR_Reserved_Field_2 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  A/D Conversion Extended Input Control Register
   type ADEXICR_Register is record
      --  Temperature Sensor Output A/D converted Value Addition/Average Mode
      --  Select
      TSSAD          : ADEXICR_TSSAD_Field := R7FA4M1AB.ADC140.Val_0;
      --  Internal Reference Voltage A/D converted Value Addition/Average Mode
      --  Select
      OCSAD          : ADEXICR_OCSAD_Field := R7FA4M1AB.ADC140.Val_0;
      --  These bits are read as 000000. The write value should be 000000.
      Reserved       : ADEXICR_Reserved_Field := 16#0#;
      --  Temperature Sensor Output A/D Conversion Select
      TSSA           : ADEXICR_TSSA_Field := R7FA4M1AB.ADC140.Val_0;
      --  Internal Reference Voltage A/D Conversion Select
      OCSA           : ADEXICR_OCSA_Field := R7FA4M1AB.ADC140.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1     : ADEXICR_Reserved_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_13_13 : R7FA4M1AB.Bit := 16#0#;
      --  This bit is read as 0. The write value should be 0.
      Reserved_2     : ADEXICR_Reserved_Field_2 :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADEXICR_Register use record
      TSSAD          at 0 range 0 .. 0;
      OCSAD          at 0 range 1 .. 1;
      Reserved       at 0 range 2 .. 7;
      TSSA           at 0 range 8 .. 8;
      OCSA           at 0 range 9 .. 9;
      Reserved_1     at 0 range 10 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      Reserved_2     at 0 range 14 .. 15;
   end record;

   --  AN000 Select
   type ADANSB0_ANSB00_Field is
     (--  AN000 is not subjected to conversion.
      Val_0,
      --  AN000 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSB0_ANSB00_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN001 Select
   type ADANSB0_ANSB01_Field is
     (--  AN001 is not subjected to conversion.
      Val_0,
      --  AN001 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSB0_ANSB01_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN002 Select
   type ADANSB0_ANSB02_Field is
     (--  AN002 is not subjected to conversion.
      Val_0,
      --  AN002 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSB0_ANSB02_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN003 Select
   type ADANSB0_ANSB03_Field is
     (--  AN003 is not subjected to conversion.
      Val_0,
      --  AN003 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSB0_ANSB03_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN004 Select
   type ADANSB0_ANSB04_Field is
     (--  AN004 is not subjected to conversion.
      Val_0,
      --  AN004 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSB0_ANSB04_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN005 Select
   type ADANSB0_ANSB05_Field is
     (--  AN005 is not subjected to conversion.
      Val_0,
      --  AN005 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSB0_ANSB05_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN006 Select
   type ADANSB0_ANSB06_Field is
     (--  AN006 is not subjected to conversion.
      Val_0,
      --  AN006 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSB0_ANSB06_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN007 Select
   type ADANSB0_ANSB07_Field is
     (--  AN007 is not subjected to conversion.
      Val_0,
      --  AN007 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSB0_ANSB07_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN008 Select
   type ADANSB0_ANSB08_Field is
     (--  AN008 is not subjected to conversion.
      Val_0,
      --  AN008 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSB0_ANSB08_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN009 Select
   type ADANSB0_ANSB09_Field is
     (--  AN009 is not subjected to conversion.
      Val_0,
      --  AN009 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSB0_ANSB09_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN010 Select
   type ADANSB0_ANSB10_Field is
     (--  AN010 is not subjected to conversion.
      Val_0,
      --  AN010 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSB0_ANSB10_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN011 Select
   type ADANSB0_ANSB11_Field is
     (--  AN011 is not subjected to conversion.
      Val_0,
      --  AN011 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSB0_ANSB11_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN012 Select
   type ADANSB0_ANSB12_Field is
     (--  AN012 is not subjected to conversion.
      Val_0,
      --  AN012 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSB0_ANSB12_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN013 Select
   type ADANSB0_ANSB13_Field is
     (--  AN013 is not subjected to conversion.
      Val_0,
      --  AN013 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSB0_ANSB13_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN014 Select
   type ADANSB0_ANSB14_Field is
     (--  AN014 is not subjected to conversion.
      Val_0,
      --  AN014 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSB0_ANSB14_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  A/D Channel Select Register B0
   type ADANSB0_Register is record
      --  AN000 Select
      ANSB00   : ADANSB0_ANSB00_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN001 Select
      ANSB01   : ADANSB0_ANSB01_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN002 Select
      ANSB02   : ADANSB0_ANSB02_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN003 Select
      ANSB03   : ADANSB0_ANSB03_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN004 Select
      ANSB04   : ADANSB0_ANSB04_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN005 Select
      ANSB05   : ADANSB0_ANSB05_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN006 Select
      ANSB06   : ADANSB0_ANSB06_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN007 Select
      ANSB07   : ADANSB0_ANSB07_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN008 Select
      ANSB08   : ADANSB0_ANSB08_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN009 Select
      ANSB09   : ADANSB0_ANSB09_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN010 Select
      ANSB10   : ADANSB0_ANSB10_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN011 Select
      ANSB11   : ADANSB0_ANSB11_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN012 Select
      ANSB12   : ADANSB0_ANSB12_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN013 Select
      ANSB13   : ADANSB0_ANSB13_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN014 Select
      ANSB14   : ADANSB0_ANSB14_Field := R7FA4M1AB.ADC140.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADANSB0_Register use record
      ANSB00   at 0 range 0 .. 0;
      ANSB01   at 0 range 1 .. 1;
      ANSB02   at 0 range 2 .. 2;
      ANSB03   at 0 range 3 .. 3;
      ANSB04   at 0 range 4 .. 4;
      ANSB05   at 0 range 5 .. 5;
      ANSB06   at 0 range 6 .. 6;
      ANSB07   at 0 range 7 .. 7;
      ANSB08   at 0 range 8 .. 8;
      ANSB09   at 0 range 9 .. 9;
      ANSB10   at 0 range 10 .. 10;
      ANSB11   at 0 range 11 .. 11;
      ANSB12   at 0 range 12 .. 12;
      ANSB13   at 0 range 13 .. 13;
      ANSB14   at 0 range 14 .. 14;
      Reserved at 0 range 15 .. 15;
   end record;

   --  AN016 Select
   type ADANSB1_ANSB16_Field is
     (--  AN016 is not subjected to conversion.
      Val_0,
      --  AN016 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSB1_ANSB16_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN017 Select
   type ADANSB1_ANSB17_Field is
     (--  AN017 is not subjected to conversion.
      Val_0,
      --  AN017 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSB1_ANSB17_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN018 Select
   type ADANSB1_ANSB18_Field is
     (--  AN018 is not subjected to conversion.
      Val_0,
      --  AN018 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSB1_ANSB18_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN019 Select
   type ADANSB1_ANSB19_Field is
     (--  AN019 is not subjected to conversion.
      Val_0,
      --  AN019 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSB1_ANSB19_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN020 Select
   type ADANSB1_ANSB20_Field is
     (--  AN020 is not subjected to conversion.
      Val_0,
      --  AN020 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSB1_ANSB20_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN021 Select
   type ADANSB1_ANSB21_Field is
     (--  AN021 is not subjected to conversion.
      Val_0,
      --  AN021 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSB1_ANSB21_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN022 Select
   type ADANSB1_ANSB22_Field is
     (--  AN022 is not subjected to conversion.
      Val_0,
      --  AN022 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSB1_ANSB22_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN023 Select
   type ADANSB1_ANSB23_Field is
     (--  AN023 is not subjected to conversion.
      Val_0,
      --  AN023 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSB1_ANSB23_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN024 Select
   type ADANSB1_ANSB24_Field is
     (--  AN024 is not subjected to conversion.
      Val_0,
      --  AN024 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSB1_ANSB24_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN025 Select
   type ADANSB1_ANSB25_Field is
     (--  AN025 is not subjected to conversion.
      Val_0,
      --  AN025 is subjected to conversion.
      Val_1)
     with Size => 1;
   for ADANSB1_ANSB25_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype ADANSB1_Reserved_Field is R7FA4M1AB.UInt6;

   --  A/D Channel Select Register B1
   type ADANSB1_Register is record
      --  AN016 Select
      ANSB16   : ADANSB1_ANSB16_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN017 Select
      ANSB17   : ADANSB1_ANSB17_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN018 Select
      ANSB18   : ADANSB1_ANSB18_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN019 Select
      ANSB19   : ADANSB1_ANSB19_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN020 Select
      ANSB20   : ADANSB1_ANSB20_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN021 Select
      ANSB21   : ADANSB1_ANSB21_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN022 Select
      ANSB22   : ADANSB1_ANSB22_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN023 Select
      ANSB23   : ADANSB1_ANSB23_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN024 Select
      ANSB24   : ADANSB1_ANSB24_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN025 Select
      ANSB25   : ADANSB1_ANSB25_Field := R7FA4M1AB.ADC140.Val_0;
      --  These bits are read as 000000. The write value should be 000000.
      Reserved : ADANSB1_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADANSB1_Register use record
      ANSB16   at 0 range 0 .. 0;
      ANSB17   at 0 range 1 .. 1;
      ANSB18   at 0 range 2 .. 2;
      ANSB19   at 0 range 3 .. 3;
      ANSB20   at 0 range 4 .. 4;
      ANSB21   at 0 range 5 .. 5;
      ANSB22   at 0 range 6 .. 6;
      ANSB23   at 0 range 7 .. 7;
      ANSB24   at 0 range 8 .. 8;
      ANSB25   at 0 range 9 .. 9;
      Reserved at 0 range 10 .. 15;
   end record;

   subtype ADRD_AD_Field is R7FA4M1AB.UInt14;

   --  Self-Diagnosis Status
   type ADRD_DIAGST_Field is
     (--  Self-diagnosis has never been executed since power-on.
      Val_00,
      --  Self-diagnosis using the voltage of 0 V has been executed.
      Val_01,
      --  Self-diagnosis using the voltage of reference power supply(VREFH) x 1/2 has
--  been executed.
      Val_10,
      --  Self-diagnosis using the voltage of reference power supply(VREFH) has been
--  executed.
      Val_11)
     with Size => 2;
   for ADRD_DIAGST_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   --  A/D Self-Diagnosis Data Register
   type ADRD_Register is record
      --  Read-only. A/D-converted value (right-justified) The format for data
      --  determine ADCER.ADRFMT and ADCER.ADPRC.
      AD     : ADRD_AD_Field;
      --  Read-only. Self-Diagnosis Status
      DIAGST : ADRD_DIAGST_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADRD_Register use record
      AD     at 0 range 0 .. 13;
      DIAGST at 0 range 14 .. 15;
   end record;

   --  A/D Data Register %s

   --  A/D Data Register %s
   type ADDR_Registers is array (0 .. 14) of R7FA4M1AB.UInt16;

   --  A/D Data Register %s

   --  A/D Data Register %s
   type ADDR_Registers_1 is array (0 .. 9) of R7FA4M1AB.UInt16;

   subtype ADDISCR_ADNDIS_Field is R7FA4M1AB.UInt4;

   --  Selection of Precharge or Discharge
   type ADDISCR_PCHG_Field is
     (--  Discharge
      Val_0,
      --  Precharge
      Val_1)
     with Size => 1;
   for ADDISCR_PCHG_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype ADDISCR_Reserved_Field is R7FA4M1AB.UInt3;

   --  A/D Disconnection Detection Control Register
   type ADDISCR_Register is record
      --  The charging time
      ADNDIS   : ADDISCR_ADNDIS_Field := 16#0#;
      --  Selection of Precharge or Discharge
      PCHG     : ADDISCR_PCHG_Field := R7FA4M1AB.ADC140.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved : ADDISCR_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for ADDISCR_Register use record
      ADNDIS   at 0 range 0 .. 3;
      PCHG     at 0 range 4 .. 4;
      Reserved at 0 range 5 .. 7;
   end record;

   --  Group A priority control setting bit. Note: When the PGS bit is to be
   --  set to 1, the ADCSR.ADCS[1:0] bits must be set to 01b (group scan mode).
   --  If the bits are set to any other values, proper operation is not
   --  guaranteed.
   type ADGSPCR_PGS_Field is
     (--  Operation is without group A priority control
      Val_0,
      --  Operation is with group A priority control
      Val_1)
     with Size => 1;
   for ADGSPCR_PGS_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Group B Restart Setting (Enabled only when PGS = 1. Reserved when PGS =
   --  0.)
   type ADGSPCR_GBRSCN_Field is
     (--  Scanning for group B is not restarted after having been discontinued due to
--  group A priority control.
      Val_0,
      --  Scanning for group B is restarted after having been discontinued due to
--  group A priority control.
      Val_1)
     with Size => 1;
   for ADGSPCR_GBRSCN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype ADGSPCR_Reserved_Field is R7FA4M1AB.UInt6;

   --  Group B Single Scan Continuous Start (Enabled only when PGS = 1.
   --  Reserved when PGS = 0.) Note: When the GBRP bit has been set to 1,
   --  single scan is performed continuously for group B regardless of the
   --  setting of the GBRSCN bit.
   type ADGSPCR_GBRP_Field is
     (--  Single scan for group B is not continuously activated.
      Val_0,
      --  Single scan for group B is continuously activated.
      Val_1)
     with Size => 1;
   for ADGSPCR_GBRP_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  A/D Group Scan Priority Control Register
   type ADGSPCR_Register is record
      --  Group A priority control setting bit. Note: When the PGS bit is to be
      --  set to 1, the ADCSR.ADCS[1:0] bits must be set to 01b (group scan
      --  mode). If the bits are set to any other values, proper operation is
      --  not guaranteed.
      PGS        : ADGSPCR_PGS_Field := R7FA4M1AB.ADC140.Val_0;
      --  Group B Restart Setting (Enabled only when PGS = 1. Reserved when PGS
      --  = 0.)
      GBRSCN     : ADGSPCR_GBRSCN_Field := R7FA4M1AB.ADC140.Val_0;
      --  These bits are read as 000000. The write value should be 000000.
      Reserved   : ADGSPCR_Reserved_Field := 16#0#;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : Boolean := False;
      --  These bits are read as 000000. The write value should be 000000.
      Reserved_2 : ADGSPCR_Reserved_Field := 16#0#;
      --  Group B Single Scan Continuous Start (Enabled only when PGS = 1.
      --  Reserved when PGS = 0.) Note: When the GBRP bit has been set to 1,
      --  single scan is performed continuously for group B regardless of the
      --  setting of the GBRSCN bit.
      GBRP       : ADGSPCR_GBRP_Field := R7FA4M1AB.ADC140.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADGSPCR_Register use record
      PGS        at 0 range 0 .. 0;
      GBRSCN     at 0 range 1 .. 1;
      Reserved   at 0 range 2 .. 7;
      Reserved_1 at 0 range 8 .. 8;
      Reserved_2 at 0 range 9 .. 14;
      GBRP       at 0 range 15 .. 15;
   end record;

   --  High-Potential Reference Voltage Select
   type ADHVREFCNT_HVSEL_Field is
     (--  AVCC0 is selected as the high-potential reference voltage
      Val_00,
      --  VREFH0 is selected as the high-potential reference voltage
      Val_01,
      --  Internal reference voltage is selected as the high-potential reference
--  voltage
      Val_10,
      --  Internal node discharge. No reference voltage pin is selected.
      Val_11)
     with Size => 2;
   for ADHVREFCNT_HVSEL_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   subtype ADHVREFCNT_Reserved_Field is R7FA4M1AB.UInt2;

   --  Sleep
   type ADHVREFCNT_ADSLP_Field is
     (--  Normal operation
      Val_0,
      --  Standby state.
      Val_1)
     with Size => 1;
   for ADHVREFCNT_ADSLP_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  A/D High-Potential/Low-Potential Reference Voltage Control Register
   type ADHVREFCNT_Register is record
      --  High-Potential Reference Voltage Select
      HVSEL        : ADHVREFCNT_HVSEL_Field := R7FA4M1AB.ADC140.Val_00;
      --  These bits are read as 00. The write value should be 00.
      Reserved     : ADHVREFCNT_Reserved_Field := 16#0#;
      --  unspecified
      Reserved_4_4 : R7FA4M1AB.Bit := 16#0#;
      --  These bits are read as 00. The write value should be 00.
      Reserved_1   : ADHVREFCNT_Reserved_Field := 16#0#;
      --  Sleep
      ADSLP        : ADHVREFCNT_ADSLP_Field := R7FA4M1AB.ADC140.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for ADHVREFCNT_Register use record
      HVSEL        at 0 range 0 .. 1;
      Reserved     at 0 range 2 .. 3;
      Reserved_4_4 at 0 range 4 .. 4;
      Reserved_1   at 0 range 5 .. 6;
      ADSLP        at 0 range 7 .. 7;
   end record;

   --  Combination result monitor This bit indicates the combination result.
   --  This bit is valid when both window A operation and window B operation
   --  are enabled.
   type ADWINMON_MONCOMB_Field is
     (--  Window A / window B composite conditions are not met.
      Val_0,
      --  Window A / window B composite conditions are met.
      Val_1)
     with Size => 1;
   for ADWINMON_MONCOMB_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype ADWINMON_Reserved_Field is R7FA4M1AB.UInt3;

   --  Comparison Result Monitor A
   type ADWINMON_MONCMPA_Field is
     (--  Window A comparison conditions are not met.
      Val_0,
      --  Window A comparison conditions are met.
      Val_1)
     with Size => 1;
   for ADWINMON_MONCMPA_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Comparison Result Monitor B
   type ADWINMON_MONCMPB_Field is
     (--  Window B comparison conditions are not met.
      Val_0,
      --  Window B comparison conditions are met.
      Val_1)
     with Size => 1;
   for ADWINMON_MONCMPB_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype ADWINMON_Reserved_Field_1 is R7FA4M1AB.UInt2;

   --  A/D Compare Function Window A/B Status Monitor Register
   type ADWINMON_Register is record
      --  Read-only. Combination result monitor This bit indicates the
      --  combination result. This bit is valid when both window A operation
      --  and window B operation are enabled.
      MONCOMB    : ADWINMON_MONCOMB_Field;
      --  Read-only. These bits are read as 000.
      Reserved   : ADWINMON_Reserved_Field;
      --  Read-only. Comparison Result Monitor A
      MONCMPA    : ADWINMON_MONCMPA_Field;
      --  Read-only. Comparison Result Monitor B
      MONCMPB    : ADWINMON_MONCMPB_Field;
      --  Read-only. These bits are read as 00.
      Reserved_1 : ADWINMON_Reserved_Field_1;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for ADWINMON_Register use record
      MONCOMB    at 0 range 0 .. 0;
      Reserved   at 0 range 1 .. 3;
      MONCMPA    at 0 range 4 .. 4;
      MONCMPB    at 0 range 5 .. 5;
      Reserved_1 at 0 range 6 .. 7;
   end record;

   --  Window A/B Composite Conditions Setting NOTE: These bits are valid when
   --  both window A and window B are enabled (CMPAE = 1 and CMPBE = 1).
   type ADCMPCR_CMPAB_Field is
     (--  ADC140_WCMPM is output when window A comparison conditions are met OR
--  window B comparison conditions are met. ADC140_WCMPUM is output in other
--  cases.
      Val_00,
      --  S14ADWMELC0 is output when window A comparison conditions are met EXOR
--  window B comparison conditions are met. ADC140_WCMPUM is output in other
--  cases.
      Val_01,
      --  ADC140_WCMPM is output when window A comparison conditions are met and
--  window B comparison conditions are met. ADC140_WCMPUM is output in other
--  cases.
      Val_10,
      --  Setting prohibited.
      Val_11)
     with Size => 2;
   for ADCMPCR_CMPAB_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   subtype ADCMPCR_Reserved_Field is R7FA4M1AB.UInt7;

   --  Compare Window B Operation Enable
   type ADCMPCR_CMPBE_Field is
     (--  Compare window B operation is disabled. ADC140_WCMPM and ADC140_WCMPUM
--  outputs are disabled.
      Val_0,
      --  Compare window B operation is enabled.
      Val_1)
     with Size => 1;
   for ADCMPCR_CMPBE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Compare Window A Operation Enable
   type ADCMPCR_CMPAE_Field is
     (--  Compare window A operation is disabled. ADC140_WCMPM and ADC140_WCMPUM
--  outputs are disabled.
      Val_0,
      --  Compare window A operation is enabled.
      Val_1)
     with Size => 1;
   for ADCMPCR_CMPAE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Compare B Interrupt Enable
   type ADCMPCR_CMPBIE_Field is
     (--  ADC140_CMPAI interrupt is disabled when comparison conditions (window B)
--  are met.
      Val_0,
      --  ADC140_CMPAI interrupt is enabled when comparison conditions (window B) are
--  met.
      Val_1)
     with Size => 1;
   for ADCMPCR_CMPBIE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Window Function Setting
   type ADCMPCR_WCMPE_Field is
     (--  Window function is disabled. Window A and window B operate as a comparator
--  to comparator the single value on the lower side with the A/D conversion
--  result.
      Val_0,
      --  Window function is enabled. Window A and window B operate as a comparator
--  to comparator the two values on the upper and lower sides with the A/D
--  conversion result.
      Val_1)
     with Size => 1;
   for ADCMPCR_WCMPE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Compare A Interrupt Enable
   type ADCMPCR_CMPAIE_Field is
     (--  ADC140_CMPAI interrupt is disabled when comparison conditions (window A)
--  are met.
      Val_0,
      --  ADC140_CMPAI interrupt is enabled when comparison conditions (window A) are
--  met.
      Val_1)
     with Size => 1;
   for ADCMPCR_CMPAIE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  A/D Compare Function Control Register
   type ADCMPCR_Register is record
      --  Window A/B Composite Conditions Setting NOTE: These bits are valid
      --  when both window A and window B are enabled (CMPAE = 1 and CMPBE =
      --  1).
      CMPAB      : ADCMPCR_CMPAB_Field := R7FA4M1AB.ADC140.Val_00;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved   : ADCMPCR_Reserved_Field := 16#0#;
      --  Compare Window B Operation Enable
      CMPBE      : ADCMPCR_CMPBE_Field := R7FA4M1AB.ADC140.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : Boolean := False;
      --  Compare Window A Operation Enable
      CMPAE      : ADCMPCR_CMPAE_Field := R7FA4M1AB.ADC140.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_2 : Boolean := False;
      --  Compare B Interrupt Enable
      CMPBIE     : ADCMPCR_CMPBIE_Field := R7FA4M1AB.ADC140.Val_0;
      --  Window Function Setting
      WCMPE      : ADCMPCR_WCMPE_Field := R7FA4M1AB.ADC140.Val_0;
      --  Compare A Interrupt Enable
      CMPAIE     : ADCMPCR_CMPAIE_Field := R7FA4M1AB.ADC140.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADCMPCR_Register use record
      CMPAB      at 0 range 0 .. 1;
      Reserved   at 0 range 2 .. 8;
      CMPBE      at 0 range 9 .. 9;
      Reserved_1 at 0 range 10 .. 10;
      CMPAE      at 0 range 11 .. 11;
      Reserved_2 at 0 range 12 .. 12;
      CMPBIE     at 0 range 13 .. 13;
      WCMPE      at 0 range 14 .. 14;
      CMPAIE     at 0 range 15 .. 15;
   end record;

   --  Temperature sensor output Compare selection bit.
   type ADCMPANSER_CMPTSA_Field is
     (--  Excludes the temperature sensor output from the compare window A target
--  range.
      Val_0,
      --  Includes the temperature sensor output in the compare window A target
--  range.
      Val_1)
     with Size => 1;
   for ADCMPANSER_CMPTSA_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Internal reference voltage Compare selection bit.
   type ADCMPANSER_CMPOCA_Field is
     (--  Excludes the internal reference voltage from the compare window A target
--  range.
      Val_0,
      --  Includes the internal reference voltage in the compare window A target
--  range.
      Val_1)
     with Size => 1;
   for ADCMPANSER_CMPOCA_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype ADCMPANSER_Reserved_Field is R7FA4M1AB.UInt6;

   --  A/D Compare Function Window A Extended Input Select Register
   type ADCMPANSER_Register is record
      --  Temperature sensor output Compare selection bit.
      CMPTSA   : ADCMPANSER_CMPTSA_Field := R7FA4M1AB.ADC140.Val_0;
      --  Internal reference voltage Compare selection bit.
      CMPOCA   : ADCMPANSER_CMPOCA_Field := R7FA4M1AB.ADC140.Val_0;
      --  These bits are read as 000000. The write value should be 000000.
      Reserved : ADCMPANSER_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for ADCMPANSER_Register use record
      CMPTSA   at 0 range 0 .. 0;
      CMPOCA   at 0 range 1 .. 1;
      Reserved at 0 range 2 .. 7;
   end record;

   --  Compare Window A Temperature Sensor Output Comparison Condition Select
   type ADCMPLER_CMPLTSA_Field is
     (--  ADCMPDR0 register value > A/D-converted value(ADCMPCR.WCMPE=0) /
--  AD-converted value < ADCMPDR0 register value or A/D-converted value >
--  ADCMPDR1 register value(ADCMPCR.WCMPE=1).
      Val_0,
      --  ADCMPDR0 register value < A/D-converted value(ADCMPCR.WCMPE=0) / ADCMPDR0
--  register value < A/D-converted value < ADCMPDR1 register
--  value(ADCMPCR.WCMPE=1).
      Val_1)
     with Size => 1;
   for ADCMPLER_CMPLTSA_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Compare Window A Internal Reference Voltage Comparison Condition Select
   type ADCMPLER_CMPLOCA_Field is
     (--  ADCMPDR0 value > A/D converted value(ADCMPCR.WCMPE=0) / A/D converted value
--  < ADCMPDR0 value or A/D converted value > ADCMPDR1 value (ADCMPCR.WCMPE=1)
      Val_0,
      --  ADCMPDR0 value < A/D converted value(ADCMPCR.WCMPE=0) / ADCMPDR0 value <
--  A/D converted value < ADCMPDR1 value(ADCMPCR.WCMPE=1)
      Val_1)
     with Size => 1;
   for ADCMPLER_CMPLOCA_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype ADCMPLER_Reserved_Field is R7FA4M1AB.UInt6;

   --  A/D Compare Function Window A Extended Input Comparison Condition
   --  Setting Register
   type ADCMPLER_Register is record
      --  Compare Window A Temperature Sensor Output Comparison Condition
      --  Select
      CMPLTSA  : ADCMPLER_CMPLTSA_Field := R7FA4M1AB.ADC140.Val_0;
      --  Compare Window A Internal Reference Voltage Comparison Condition
      --  Select
      CMPLOCA  : ADCMPLER_CMPLOCA_Field := R7FA4M1AB.ADC140.Val_0;
      --  These bits are read as 000000. The write value should be 000000.
      Reserved : ADCMPLER_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for ADCMPLER_Register use record
      CMPLTSA  at 0 range 0 .. 0;
      CMPLOCA  at 0 range 1 .. 1;
      Reserved at 0 range 2 .. 7;
   end record;

   --  AN000 Select
   type ADCMPANSR0_CMPCHA00_Field is
     (--  Excludes AN000 from the compare window A target range.
      Val_0,
      --  Includes AN000 from the compare window A target range.
      Val_1)
     with Size => 1;
   for ADCMPANSR0_CMPCHA00_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN001 Select
   type ADCMPANSR0_CMPCHA01_Field is
     (--  Excludes AN001 from the compare window A target range.
      Val_0,
      --  Includes AN001 from the compare window A target range.
      Val_1)
     with Size => 1;
   for ADCMPANSR0_CMPCHA01_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN002 Select
   type ADCMPANSR0_CMPCHA02_Field is
     (--  Excludes AN002 from the compare window A target range.
      Val_0,
      --  Includes AN002 from the compare window A target range.
      Val_1)
     with Size => 1;
   for ADCMPANSR0_CMPCHA02_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN003 Select
   type ADCMPANSR0_CMPCHA03_Field is
     (--  Excludes AN003 from the compare window A target range.
      Val_0,
      --  Includes AN003 from the compare window A target range.
      Val_1)
     with Size => 1;
   for ADCMPANSR0_CMPCHA03_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN004 Select
   type ADCMPANSR0_CMPCHA04_Field is
     (--  Excludes AN004 from the compare window A target range.
      Val_0,
      --  Includes AN004 from the compare window A target range.
      Val_1)
     with Size => 1;
   for ADCMPANSR0_CMPCHA04_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN005 Select
   type ADCMPANSR0_CMPCHA05_Field is
     (--  Excludes AN005 from the compare window A target range.
      Val_0,
      --  Includes AN005 from the compare window A target range.
      Val_1)
     with Size => 1;
   for ADCMPANSR0_CMPCHA05_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN006 Select
   type ADCMPANSR0_CMPCHA06_Field is
     (--  Excludes AN006 from the compare window A target range.
      Val_0,
      --  Includes AN006 from the compare window A target range.
      Val_1)
     with Size => 1;
   for ADCMPANSR0_CMPCHA06_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN007 Select
   type ADCMPANSR0_CMPCHA07_Field is
     (--  Excludes AN007 from the compare window A target range.
      Val_0,
      --  Includes AN007 from the compare window A target range.
      Val_1)
     with Size => 1;
   for ADCMPANSR0_CMPCHA07_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN008 Select
   type ADCMPANSR0_CMPCHA08_Field is
     (--  Excludes AN008 from the compare window A target range.
      Val_0,
      --  Includes AN008 from the compare window A target range.
      Val_1)
     with Size => 1;
   for ADCMPANSR0_CMPCHA08_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN009 Select
   type ADCMPANSR0_CMPCHA09_Field is
     (--  Excludes AN009 from the compare window A target range.
      Val_0,
      --  Includes AN009 from the compare window A target range.
      Val_1)
     with Size => 1;
   for ADCMPANSR0_CMPCHA09_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN010 Select
   type ADCMPANSR0_CMPCHA10_Field is
     (--  Excludes AN010 from the compare window A target range.
      Val_0,
      --  Includes AN010 from the compare window A target range.
      Val_1)
     with Size => 1;
   for ADCMPANSR0_CMPCHA10_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN011 Select
   type ADCMPANSR0_CMPCHA11_Field is
     (--  Excludes AN011 from the compare window A target range.
      Val_0,
      --  Includes AN011 from the compare window A target range.
      Val_1)
     with Size => 1;
   for ADCMPANSR0_CMPCHA11_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN012 Select
   type ADCMPANSR0_CMPCHA12_Field is
     (--  Excludes AN012 from the compare window A target range.
      Val_0,
      --  Includes AN012 from the compare window A target range.
      Val_1)
     with Size => 1;
   for ADCMPANSR0_CMPCHA12_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN013 Select
   type ADCMPANSR0_CMPCHA13_Field is
     (--  Excludes AN013 from the compare window A target range.
      Val_0,
      --  Includes AN013 from the compare window A target range.
      Val_1)
     with Size => 1;
   for ADCMPANSR0_CMPCHA13_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN014 Select
   type ADCMPANSR0_CMPCHA14_Field is
     (--  Excludes AN014 from the compare window A target range.
      Val_0,
      --  Includes AN014 from the compare window A target range.
      Val_1)
     with Size => 1;
   for ADCMPANSR0_CMPCHA14_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  A/D Compare Function Window A Channel Select Register 0
   type ADCMPANSR0_Register is record
      --  AN000 Select
      CMPCHA00 : ADCMPANSR0_CMPCHA00_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN001 Select
      CMPCHA01 : ADCMPANSR0_CMPCHA01_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN002 Select
      CMPCHA02 : ADCMPANSR0_CMPCHA02_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN003 Select
      CMPCHA03 : ADCMPANSR0_CMPCHA03_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN004 Select
      CMPCHA04 : ADCMPANSR0_CMPCHA04_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN005 Select
      CMPCHA05 : ADCMPANSR0_CMPCHA05_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN006 Select
      CMPCHA06 : ADCMPANSR0_CMPCHA06_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN007 Select
      CMPCHA07 : ADCMPANSR0_CMPCHA07_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN008 Select
      CMPCHA08 : ADCMPANSR0_CMPCHA08_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN009 Select
      CMPCHA09 : ADCMPANSR0_CMPCHA09_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN010 Select
      CMPCHA10 : ADCMPANSR0_CMPCHA10_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN011 Select
      CMPCHA11 : ADCMPANSR0_CMPCHA11_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN012 Select
      CMPCHA12 : ADCMPANSR0_CMPCHA12_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN013 Select
      CMPCHA13 : ADCMPANSR0_CMPCHA13_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN014 Select
      CMPCHA14 : ADCMPANSR0_CMPCHA14_Field := R7FA4M1AB.ADC140.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADCMPANSR0_Register use record
      CMPCHA00 at 0 range 0 .. 0;
      CMPCHA01 at 0 range 1 .. 1;
      CMPCHA02 at 0 range 2 .. 2;
      CMPCHA03 at 0 range 3 .. 3;
      CMPCHA04 at 0 range 4 .. 4;
      CMPCHA05 at 0 range 5 .. 5;
      CMPCHA06 at 0 range 6 .. 6;
      CMPCHA07 at 0 range 7 .. 7;
      CMPCHA08 at 0 range 8 .. 8;
      CMPCHA09 at 0 range 9 .. 9;
      CMPCHA10 at 0 range 10 .. 10;
      CMPCHA11 at 0 range 11 .. 11;
      CMPCHA12 at 0 range 12 .. 12;
      CMPCHA13 at 0 range 13 .. 13;
      CMPCHA14 at 0 range 14 .. 14;
      Reserved at 0 range 15 .. 15;
   end record;

   --  AN016 Select
   type ADCMPANSR1_CMPCHA16_Field is
     (--  Excludes AN016 from the compare window A target range.
      Val_0,
      --  Includes AN016 from the compare window A target range.
      Val_1)
     with Size => 1;
   for ADCMPANSR1_CMPCHA16_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN017 Select
   type ADCMPANSR1_CMPCHA17_Field is
     (--  Excludes AN017 from the compare window A target range.
      Val_0,
      --  Includes AN017 from the compare window A target range.
      Val_1)
     with Size => 1;
   for ADCMPANSR1_CMPCHA17_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN018 Select
   type ADCMPANSR1_CMPCHA18_Field is
     (--  Excludes AN018 from the compare window A target range.
      Val_0,
      --  Includes AN018 from the compare window A target range.
      Val_1)
     with Size => 1;
   for ADCMPANSR1_CMPCHA18_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN019 Select
   type ADCMPANSR1_CMPCHA19_Field is
     (--  Excludes AN019 from the compare window A target range.
      Val_0,
      --  Includes AN019 from the compare window A target range.
      Val_1)
     with Size => 1;
   for ADCMPANSR1_CMPCHA19_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN020 Select
   type ADCMPANSR1_CMPCHA20_Field is
     (--  Excludes AN020 from the compare window A target range.
      Val_0,
      --  Includes AN020 from the compare window A target range.
      Val_1)
     with Size => 1;
   for ADCMPANSR1_CMPCHA20_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN021 Select
   type ADCMPANSR1_CMPCHA21_Field is
     (--  Excludes AN021 from the compare window A target range.
      Val_0,
      --  Includes AN021 from the compare window A target range.
      Val_1)
     with Size => 1;
   for ADCMPANSR1_CMPCHA21_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN022 Select
   type ADCMPANSR1_CMPCHA22_Field is
     (--  Excludes AN022 from the compare window A target range.
      Val_0,
      --  Includes AN022 from the compare window A target range.
      Val_1)
     with Size => 1;
   for ADCMPANSR1_CMPCHA22_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN023 Select
   type ADCMPANSR1_CMPCHA23_Field is
     (--  Excludes AN023 from the compare window A target range.
      Val_0,
      --  Includes AN023 from the compare window A target range.
      Val_1)
     with Size => 1;
   for ADCMPANSR1_CMPCHA23_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN024 Select
   type ADCMPANSR1_CMPCHA24_Field is
     (--  Excludes AN024 from the compare window A target range.
      Val_0,
      --  Includes AN024 from the compare window A target range.
      Val_1)
     with Size => 1;
   for ADCMPANSR1_CMPCHA24_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AN025 Select
   type ADCMPANSR1_CMPCHA25_Field is
     (--  Excludes AN025 from the compare window A target range.
      Val_0,
      --  Includes AN025 from the compare window A target range.
      Val_1)
     with Size => 1;
   for ADCMPANSR1_CMPCHA25_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype ADCMPANSR1_Reserved_Field is R7FA4M1AB.UInt6;

   --  A/D Compare Function Window A Channel Select Register 1
   type ADCMPANSR1_Register is record
      --  AN016 Select
      CMPCHA16 : ADCMPANSR1_CMPCHA16_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN017 Select
      CMPCHA17 : ADCMPANSR1_CMPCHA17_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN018 Select
      CMPCHA18 : ADCMPANSR1_CMPCHA18_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN019 Select
      CMPCHA19 : ADCMPANSR1_CMPCHA19_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN020 Select
      CMPCHA20 : ADCMPANSR1_CMPCHA20_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN021 Select
      CMPCHA21 : ADCMPANSR1_CMPCHA21_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN022 Select
      CMPCHA22 : ADCMPANSR1_CMPCHA22_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN023 Select
      CMPCHA23 : ADCMPANSR1_CMPCHA23_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN024 Select
      CMPCHA24 : ADCMPANSR1_CMPCHA24_Field := R7FA4M1AB.ADC140.Val_0;
      --  AN025 Select
      CMPCHA25 : ADCMPANSR1_CMPCHA25_Field := R7FA4M1AB.ADC140.Val_0;
      --  These bits are read as 000000. The write value should be 000000.
      Reserved : ADCMPANSR1_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADCMPANSR1_Register use record
      CMPCHA16 at 0 range 0 .. 0;
      CMPCHA17 at 0 range 1 .. 1;
      CMPCHA18 at 0 range 2 .. 2;
      CMPCHA19 at 0 range 3 .. 3;
      CMPCHA20 at 0 range 4 .. 4;
      CMPCHA21 at 0 range 5 .. 5;
      CMPCHA22 at 0 range 6 .. 6;
      CMPCHA23 at 0 range 7 .. 7;
      CMPCHA24 at 0 range 8 .. 8;
      CMPCHA25 at 0 range 9 .. 9;
      Reserved at 0 range 10 .. 15;
   end record;

   --  Comparison condition of AN000
   type ADCMPLR0_CMPLCHA00_Field is
     (--  ADCMPDR0 value > A/D converted value (ADCMPCR.WCMPE=0) / A/D converted
--  value < ADCMPDR0 value or, ADCMPDR1 value < A/D converted value
--  (ADCMPCR.WCMPE=1)
      Val_0,
      --  ADCMPDR0 value < A/D converted value (ADCMPCR.WCMPE=0) / A/DCMPDR0 value <
--  A/D converted value < ADCMPDR1 value (ADCMPCR.WCMPE=1).
      Val_1)
     with Size => 1;
   for ADCMPLR0_CMPLCHA00_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ADCMPLR0_CMPLCHA array
   type ADCMPLR0_CMPLCHA_Field_Array is array (0 .. 14)
     of ADCMPLR0_CMPLCHA00_Field
     with Component_Size => 1, Size => 15;

   --  Type definition for ADCMPLR0_CMPLCHA
   type ADCMPLR0_CMPLCHA_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMPLCHA as a value
            Val : R7FA4M1AB.UInt15;
         when True =>
            --  CMPLCHA as an array
            Arr : ADCMPLR0_CMPLCHA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 15;

   for ADCMPLR0_CMPLCHA_Field use record
      Val at 0 range 0 .. 14;
      Arr at 0 range 0 .. 14;
   end record;

   --  A/D Compare Function Window A Comparison Condition Setting Register 0
   type ADCMPLR0_Register is record
      --  Comparison condition of AN000
      CMPLCHA  : ADCMPLR0_CMPLCHA_Field := (As_Array => False, Val => 16#0#);
      --  This bit is read as 0. The write value should be 0.
      Reserved : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADCMPLR0_Register use record
      CMPLCHA  at 0 range 0 .. 14;
      Reserved at 0 range 15 .. 15;
   end record;

   --  Comparison condition of AN016
   type ADCMPLR1_CMPLCHA16_Field is
     (--  ADCMPDR0 value > A/D converted value (ADCMPCR.WCMPE=0) / A/D converted
--  value < ADCMPDR0 value or, ADCMPDR1 value < A/D converted value
--  (ADCMPCR.WCMPE=1)
      Val_0,
      --  ADCMPDR0 value < A/D converted value (ADCMPCR.WCMPE=0) / A/DCMPDR0 value <
--  A/D converted value < ADCMPDR1 value (ADCMPCR.WCMPE=1).
      Val_1)
     with Size => 1;
   for ADCMPLR1_CMPLCHA16_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ADCMPLR1_CMPLCHA array
   type ADCMPLR1_CMPLCHA_Field_Array is array (16 .. 25)
     of ADCMPLR1_CMPLCHA16_Field
     with Component_Size => 1, Size => 10;

   --  Type definition for ADCMPLR1_CMPLCHA
   type ADCMPLR1_CMPLCHA_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMPLCHA as a value
            Val : R7FA4M1AB.UInt10;
         when True =>
            --  CMPLCHA as an array
            Arr : ADCMPLR1_CMPLCHA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for ADCMPLR1_CMPLCHA_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   subtype ADCMPLR1_Reserved_Field is R7FA4M1AB.UInt6;

   --  A/D Compare Function Window A Comparison Condition Setting Register 1
   type ADCMPLR1_Register is record
      --  Comparison condition of AN016
      CMPLCHA  : ADCMPLR1_CMPLCHA_Field := (As_Array => False, Val => 16#0#);
      --  These bits are read as 000000. The write value should be 000000.
      Reserved : ADCMPLR1_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADCMPLR1_Register use record
      CMPLCHA  at 0 range 0 .. 9;
      Reserved at 0 range 10 .. 15;
   end record;

   --  Compare window A flag of AN000
   type ADCMPSR0_CMPSTCHA00_Field is
     (--  Comparison conditions are not met.
      Val_0,
      --  Comparison conditions are met.
      Val_1)
     with Size => 1;
   for ADCMPSR0_CMPSTCHA00_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ADCMPSR0_CMPSTCHA array
   type ADCMPSR0_CMPSTCHA_Field_Array is array (0 .. 14)
     of ADCMPSR0_CMPSTCHA00_Field
     with Component_Size => 1, Size => 15;

   --  Type definition for ADCMPSR0_CMPSTCHA
   type ADCMPSR0_CMPSTCHA_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMPSTCHA as a value
            Val : R7FA4M1AB.UInt15;
         when True =>
            --  CMPSTCHA as an array
            Arr : ADCMPSR0_CMPSTCHA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 15;

   for ADCMPSR0_CMPSTCHA_Field use record
      Val at 0 range 0 .. 14;
      Arr at 0 range 0 .. 14;
   end record;

   --  A/D Compare Function Window A Channel Status Register 0
   type ADCMPSR0_Register is record
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Compare window A flag of AN000
      CMPSTCHA : ADCMPSR0_CMPSTCHA_Field := (As_Array => False, Val => 16#0#);
      --  This bit is read as 0. The write value should be 0.
      Reserved : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADCMPSR0_Register use record
      CMPSTCHA at 0 range 0 .. 14;
      Reserved at 0 range 15 .. 15;
   end record;

   --  Compare window A flag of AN016
   type ADCMPSR1_CMPSTCHA16_Field is
     (--  Comparison conditions are not met.
      Val_0,
      --  Comparison conditions are met.
      Val_1)
     with Size => 1;
   for ADCMPSR1_CMPSTCHA16_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ADCMPSR1_CMPSTCHA array
   type ADCMPSR1_CMPSTCHA_Field_Array is array (16 .. 25)
     of ADCMPSR1_CMPSTCHA16_Field
     with Component_Size => 1, Size => 10;

   --  Type definition for ADCMPSR1_CMPSTCHA
   type ADCMPSR1_CMPSTCHA_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMPSTCHA as a value
            Val : R7FA4M1AB.UInt10;
         when True =>
            --  CMPSTCHA as an array
            Arr : ADCMPSR1_CMPSTCHA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for ADCMPSR1_CMPSTCHA_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   subtype ADCMPSR1_Reserved_Field is R7FA4M1AB.UInt6;

   --  A/D Compare Function Window A Channel Status Register 1
   type ADCMPSR1_Register is record
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Compare window A flag of AN016
      CMPSTCHA : ADCMPSR1_CMPSTCHA_Field := (As_Array => False, Val => 16#0#);
      --  These bits are read as 000000. The write value should be 000000.
      Reserved : ADCMPSR1_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADCMPSR1_Register use record
      CMPSTCHA at 0 range 0 .. 9;
      Reserved at 0 range 10 .. 15;
   end record;

   --  Compare Window A Temperature Sensor Output Compare Flag When window A
   --  operation is enabled (ADCMPCR.CMPAE = 1b), this bit indicates the
   --  temperature sensor output comparison result. When window A operation is
   --  disabled (ADCMPCR.CMPAE = 0b), comparison conditions for CMPSTTSA are
   --  not met any time.
   type ADCMPSER_CMPSTTSA_Field is
     (--  Comparison conditions are not met.
      Val_0,
      --  Comparison conditions are met.
      Val_1)
     with Size => 1;
   for ADCMPSER_CMPSTTSA_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Compare Window A Internal Reference Voltage Compare Flag When window A
   --  operation is enabled (ADCMPCR.CMPAE = 1b), this bit indicates the
   --  temperature sensor output comparison result. When window A operation is
   --  disabled (ADCMPCR.CMPAE = 0b), comparison conditions for CMPSTTSA are
   --  not met any time.
   type ADCMPSER_CMPSTOCA_Field is
     (--  Comparison conditions are not met.
      Val_0,
      --  Comparison conditions are met.
      Val_1)
     with Size => 1;
   for ADCMPSER_CMPSTOCA_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype ADCMPSER_Reserved_Field is R7FA4M1AB.UInt6;

   --  A/D Compare Function Window A Extended Input Channel Status Register
   type ADCMPSER_Register is record
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Compare Window A Temperature Sensor Output Compare
      --  Flag When window A operation is enabled (ADCMPCR.CMPAE = 1b), this
      --  bit indicates the temperature sensor output comparison result. When
      --  window A operation is disabled (ADCMPCR.CMPAE = 0b), comparison
      --  conditions for CMPSTTSA are not met any time.
      CMPSTTSA : ADCMPSER_CMPSTTSA_Field := R7FA4M1AB.ADC140.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Compare Window A Internal Reference Voltage Compare
      --  Flag When window A operation is enabled (ADCMPCR.CMPAE = 1b), this
      --  bit indicates the temperature sensor output comparison result. When
      --  window A operation is disabled (ADCMPCR.CMPAE = 0b), comparison
      --  conditions for CMPSTTSA are not met any time.
      CMPSTOCA : ADCMPSER_CMPSTOCA_Field := R7FA4M1AB.ADC140.Val_0;
      --  These bits are read as 000000. The write value should be 000000.
      Reserved : ADCMPSER_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for ADCMPSER_Register use record
      CMPSTTSA at 0 range 0 .. 0;
      CMPSTOCA at 0 range 1 .. 1;
      Reserved at 0 range 2 .. 7;
   end record;

   --  Compare window B channel selection bit. The channel that compares it on
   --  the condition of compare window B is selected.
   type ADCMPBNSR_CMPCHB_Field is
     (--  AN000
      Val_0x00,
      --  Setting prohibited
      others_k,
      --  AN001
      Val_0x01,
      --  AN002
      Val_0x02,
      --  AN003
      Val_0x03,
      --  AN004
      Val_0x04,
      --  AN005
      Val_0x05,
      --  AN006
      Val_0x06,
      --  AN007
      Val_0x07,
      --  AN008
      Val_0x08,
      --  AN009
      Val_0x09,
      --  AN010
      Val_0x0A,
      --  AN011
      Val_0x0B,
      --  AN012
      Val_0x0C,
      --  AN013
      Val_0x0D,
      --  AN014
      Val_0x0E,
      --  AN015
      Val_0x0F,
      --  AN016
      Val_0x10,
      --  AN017
      Val_0x11,
      --  AN018
      Val_0x12,
      --  AN019
      Val_0x13,
      --  AN020
      Val_0x14,
      --  AN021
      Val_0x15,
      --  AN022
      Val_0x16,
      --  AN023
      Val_0x17,
      --  AN024
      Val_0x18,
      --  AN025
      Val_0x19,
      --  AN026
      Val_0x1A,
      --  AN027
      Val_0x1B,
      --  Temperature sensor
      Val_0x20,
      --  Internal reference voltage
      Val_0x21,
      --  No channel is selected
      Val_0x3F)
     with Size => 6;
   for ADCMPBNSR_CMPCHB_Field use
     (Val_0x00 => 0,
      others_k => 0,
      Val_0x01 => 1,
      Val_0x02 => 2,
      Val_0x03 => 3,
      Val_0x04 => 4,
      Val_0x05 => 5,
      Val_0x06 => 6,
      Val_0x07 => 7,
      Val_0x08 => 8,
      Val_0x09 => 9,
      Val_0x0A => 10,
      Val_0x0B => 11,
      Val_0x0C => 12,
      Val_0x0D => 13,
      Val_0x0E => 14,
      Val_0x0F => 15,
      Val_0x10 => 16,
      Val_0x11 => 17,
      Val_0x12 => 18,
      Val_0x13 => 19,
      Val_0x14 => 20,
      Val_0x15 => 21,
      Val_0x16 => 22,
      Val_0x17 => 23,
      Val_0x18 => 24,
      Val_0x19 => 25,
      Val_0x1A => 26,
      Val_0x1B => 27,
      Val_0x20 => 32,
      Val_0x21 => 33,
      Val_0x3F => 63);

   --  Compare window B Compare condition setting bit.
   type ADCMPBNSR_CMPLB_Field is
     (--  CMPLLB value > A/D converted value (ADCMPCR.WCMPE=0) / A/D converted value
--  < CMPLLB value or CMPULB value < A/D converted value (ADCMPCR.WCMPE=1)
      Val_0,
      --  CMPLLB value < A/D converted value(ADCMPCR.WCMPE=0) / CMPLLB value < A/D
--  converted value < CMPULB value (ADCMPCR.WCMPE=1)
      Val_1)
     with Size => 1;
   for ADCMPBNSR_CMPLB_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  A/D Compare Function Window B Channel Selection Register
   type ADCMPBNSR_Register is record
      --  Compare window B channel selection bit. The channel that compares it
      --  on the condition of compare window B is selected.
      CMPCHB   : ADCMPBNSR_CMPCHB_Field := R7FA4M1AB.ADC140.Val_0x00;
      --  This bit is read as 0. The write value should be 0.
      Reserved : Boolean := False;
      --  Compare window B Compare condition setting bit.
      CMPLB    : ADCMPBNSR_CMPLB_Field := R7FA4M1AB.ADC140.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for ADCMPBNSR_Register use record
      CMPCHB   at 0 range 0 .. 5;
      Reserved at 0 range 6 .. 6;
      CMPLB    at 0 range 7 .. 7;
   end record;

   --  Compare window B flag. It is a status flag that shows the comparative
   --  result of CH (AN000-AN027, temperature sensor, and internal reference
   --  voltage) made the object of window B relation condition.
   type ADCMPBSR_CMPSTB_Field is
     (--  Comparison conditions are not met.
      Val_0,
      --  Comparison conditions are met.
      Val_1)
     with Size => 1;
   for ADCMPBSR_CMPSTB_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype ADCMPBSR_Reserved_Field is R7FA4M1AB.UInt7;

   --  A/D Compare Function Window B Status Register
   type ADCMPBSR_Register is record
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Compare window B flag. It is a status flag that shows
      --  the comparative result of CH (AN000-AN027, temperature sensor, and
      --  internal reference voltage) made the object of window B relation
      --  condition.
      CMPSTB   : ADCMPBSR_CMPSTB_Field := R7FA4M1AB.ADC140.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved : ADCMPBSR_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for ADCMPBSR_Register use record
      CMPSTB   at 0 range 0 .. 0;
      Reserved at 0 range 1 .. 7;
   end record;

   --  A/D Sampling State Register %s

   --  A/D Sampling State Register %s
   type ADSSTR_Registers is array (0 .. 14) of R7FA4M1AB.Byte;

   -----------------
   -- Peripherals --
   -----------------

   --  14bit A/D Converter
   type ADC140_Peripheral is record
      --  A/D Control Register
      ADCSR      : aliased ADCSR_Register;
      --  A/D Channel Select Register A0
      ADANSA0    : aliased ADANSA0_Register;
      --  A/D Channel Select Register A1
      ADANSA1    : aliased ADANSA1_Register;
      --  A/D-Converted Value Addition/Average Channel Select Register 0
      ADADS0     : aliased ADADS0_Register;
      --  A/D-Converted Value Addition/Average Channel Select Register 1
      ADADS1     : aliased ADADS1_Register;
      --  A/D-Converted Value Addition/Average Count Select Register
      ADADC      : aliased ADADC_Register;
      --  A/D Control Extended Register
      ADCER      : aliased ADCER_Register;
      --  A/D Conversion Start Trigger Select Register
      ADSTRGR    : aliased ADSTRGR_Register;
      --  A/D Conversion Extended Input Control Register
      ADEXICR    : aliased ADEXICR_Register;
      --  A/D Channel Select Register B0
      ADANSB0    : aliased ADANSB0_Register;
      --  A/D Channel Select Register B1
      ADANSB1    : aliased ADANSB1_Register;
      --  A/D Data Duplication Register
      ADDBLDR    : aliased R7FA4M1AB.UInt16;
      --  A/D Temperature Sensor Data Register
      ADTSDR     : aliased R7FA4M1AB.UInt16;
      --  A/D Internal Reference Voltage Data Register
      ADOCDR     : aliased R7FA4M1AB.UInt16;
      --  A/D Self-Diagnosis Data Register
      ADRD       : aliased ADRD_Register;
      --  A/D Data Register %s
      ADDR       : aliased ADDR_Registers;
      --  A/D Data Register %s
      ADDR_1     : aliased ADDR_Registers_1;
      --  A/D Disconnection Detection Control Register
      ADDISCR    : aliased ADDISCR_Register;
      --  A/D Group Scan Priority Control Register
      ADGSPCR    : aliased ADGSPCR_Register;
      --  A/D Data Duplexing Register A
      ADDBLDRA   : aliased R7FA4M1AB.UInt16;
      --  A/D Data Duplexing Register B
      ADDBLDRB   : aliased R7FA4M1AB.UInt16;
      --  A/D High-Potential/Low-Potential Reference Voltage Control Register
      ADHVREFCNT : aliased ADHVREFCNT_Register;
      --  A/D Compare Function Window A/B Status Monitor Register
      ADWINMON   : aliased ADWINMON_Register;
      --  A/D Compare Function Control Register
      ADCMPCR    : aliased ADCMPCR_Register;
      --  A/D Compare Function Window A Extended Input Select Register
      ADCMPANSER : aliased ADCMPANSER_Register;
      --  A/D Compare Function Window A Extended Input Comparison Condition
      --  Setting Register
      ADCMPLER   : aliased ADCMPLER_Register;
      --  A/D Compare Function Window A Channel Select Register 0
      ADCMPANSR0 : aliased ADCMPANSR0_Register;
      --  A/D Compare Function Window A Channel Select Register 1
      ADCMPANSR1 : aliased ADCMPANSR1_Register;
      --  A/D Compare Function Window A Comparison Condition Setting Register 0
      ADCMPLR0   : aliased ADCMPLR0_Register;
      --  A/D Compare Function Window A Comparison Condition Setting Register 1
      ADCMPLR1   : aliased ADCMPLR1_Register;
      --  A/D Compare Function Window A Lower-Side Level Setting Register
      ADCMPDR0   : aliased R7FA4M1AB.UInt16;
      --  A/D Compare Function Window A Upper-Side Level Setting Register
      ADCMPDR1   : aliased R7FA4M1AB.UInt16;
      --  A/D Compare Function Window A Channel Status Register 0
      ADCMPSR0   : aliased ADCMPSR0_Register;
      --  A/D Compare Function Window A Channel Status Register 1
      ADCMPSR1   : aliased ADCMPSR1_Register;
      --  A/D Compare Function Window A Extended Input Channel Status Register
      ADCMPSER   : aliased ADCMPSER_Register;
      --  A/D Compare Function Window B Channel Selection Register
      ADCMPBNSR  : aliased ADCMPBNSR_Register;
      --  A/D Compare Function Window B Lower-Side Level Setting Register
      ADWINLLB   : aliased R7FA4M1AB.UInt16;
      --  A/D Compare Function Window B Upper-Side Level Setting Register
      ADWINULB   : aliased R7FA4M1AB.UInt16;
      --  A/D Compare Function Window B Status Register
      ADCMPBSR   : aliased ADCMPBSR_Register;
      --  A/D Sampling State Register L
      ADSSTRL    : aliased R7FA4M1AB.Byte;
      --  A/D Sampling State Register T
      ADSSTRT    : aliased R7FA4M1AB.Byte;
      --  A/D Sampling State Register O
      ADSSTRO    : aliased R7FA4M1AB.Byte;
      --  A/D Sampling State Register %s
      ADSSTR     : aliased ADSSTR_Registers;
   end record
     with Volatile;

   for ADC140_Peripheral use record
      ADCSR      at 16#0# range 0 .. 15;
      ADANSA0    at 16#4# range 0 .. 15;
      ADANSA1    at 16#6# range 0 .. 15;
      ADADS0     at 16#8# range 0 .. 15;
      ADADS1     at 16#A# range 0 .. 15;
      ADADC      at 16#C# range 0 .. 7;
      ADCER      at 16#E# range 0 .. 15;
      ADSTRGR    at 16#10# range 0 .. 15;
      ADEXICR    at 16#12# range 0 .. 15;
      ADANSB0    at 16#14# range 0 .. 15;
      ADANSB1    at 16#16# range 0 .. 15;
      ADDBLDR    at 16#18# range 0 .. 15;
      ADTSDR     at 16#1A# range 0 .. 15;
      ADOCDR     at 16#1C# range 0 .. 15;
      ADRD       at 16#1E# range 0 .. 15;
      ADDR       at 16#20# range 0 .. 239;
      ADDR_1     at 16#40# range 0 .. 159;
      ADDISCR    at 16#7A# range 0 .. 7;
      ADGSPCR    at 16#80# range 0 .. 15;
      ADDBLDRA   at 16#84# range 0 .. 15;
      ADDBLDRB   at 16#86# range 0 .. 15;
      ADHVREFCNT at 16#8A# range 0 .. 7;
      ADWINMON   at 16#8C# range 0 .. 7;
      ADCMPCR    at 16#90# range 0 .. 15;
      ADCMPANSER at 16#92# range 0 .. 7;
      ADCMPLER   at 16#93# range 0 .. 7;
      ADCMPANSR0 at 16#94# range 0 .. 15;
      ADCMPANSR1 at 16#96# range 0 .. 15;
      ADCMPLR0   at 16#98# range 0 .. 15;
      ADCMPLR1   at 16#9A# range 0 .. 15;
      ADCMPDR0   at 16#9C# range 0 .. 15;
      ADCMPDR1   at 16#9E# range 0 .. 15;
      ADCMPSR0   at 16#A0# range 0 .. 15;
      ADCMPSR1   at 16#A2# range 0 .. 15;
      ADCMPSER   at 16#A4# range 0 .. 7;
      ADCMPBNSR  at 16#A6# range 0 .. 7;
      ADWINLLB   at 16#A8# range 0 .. 15;
      ADWINULB   at 16#AA# range 0 .. 15;
      ADCMPBSR   at 16#AC# range 0 .. 7;
      ADSSTRL    at 16#DD# range 0 .. 7;
      ADSSTRT    at 16#DE# range 0 .. 7;
      ADSSTRO    at 16#DF# range 0 .. 7;
      ADSSTR     at 16#E0# range 0 .. 119;
   end record;

   --  14bit A/D Converter
   ADC140_Periph : aliased ADC140_Peripheral
     with Import, Address => ADC140_Base;

end R7FA4M1AB.ADC140;
