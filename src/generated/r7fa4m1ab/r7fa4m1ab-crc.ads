pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB-ada.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  CRC Calculator
package R7FA4M1AB.CRC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  CRC Generating Polynomial Switching
   type CRCCR0_GPS_Field is
     (--  No calculation is executed.
      Val_000,
      --  No calculation is executed.
      others_k,
      --  8-bit CRC-8 (X8 + X2 + X + 1)
      Val_001,
      --  16-bit CRC-16 (X16 + X15 + X2 + 1)
      Val_010,
      --  16-bit CRC-CCITT (X16 + X12 + X5 + 1)
      Val_011,
      --  32-bit CRC-32 (X32+X26+X23+X22+X16+X12+X11+X10+X8+X7+X5+X4+X2+X+1)
      Val_100,
      --  32-bit CRC-32C (X32+X28+X27+X26+
--  X25+X23+X22+X20+X19+X18+X14+X13+X11+X10+X9+X8+X6+1)
      Val_101)
     with Size => 3;
   for CRCCR0_GPS_Field use
     (Val_000 => 0,
      others_k => 0,
      Val_001 => 1,
      Val_010 => 2,
      Val_011 => 3,
      Val_100 => 4,
      Val_101 => 5);

   subtype CRCCR0_Reserved_Field is R7FA4M1AB.UInt3;

   --  CRC Calculation Switching
   type CRCCR0_LMS_Field is
     (--  Generates CRC for LSB first communication.
      Val_0,
      --  Generates CRC for MSB first communication.
      Val_1)
     with Size => 1;
   for CRCCR0_LMS_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  CRCDOR Register Clear
   type CRCCR0_DORCLR_Field is
     (--  No effect.
      Val_0,
      --  Clears the CRCDOR register.
      Val_1)
     with Size => 1;
   for CRCCR0_DORCLR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  CRC Control Register0
   type CRCCR0_Register is record
      --  CRC Generating Polynomial Switching
      GPS      : CRCCR0_GPS_Field := R7FA4M1AB.CRC.Val_000;
      --  These bits are read as 000. The write value should be 000.
      Reserved : CRCCR0_Reserved_Field := 16#0#;
      --  CRC Calculation Switching
      LMS      : CRCCR0_LMS_Field := R7FA4M1AB.CRC.Val_0;
      --  Write-only. CRCDOR Register Clear
      DORCLR   : CRCCR0_DORCLR_Field := R7FA4M1AB.CRC.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for CRCCR0_Register use record
      GPS      at 0 range 0 .. 2;
      Reserved at 0 range 3 .. 5;
      LMS      at 0 range 6 .. 6;
      DORCLR   at 0 range 7 .. 7;
   end record;

   subtype CRCCR1_Reserved_Field is R7FA4M1AB.UInt6;

   --  Snoop-on-write/read switch bit
   type CRCCR1_CRCSWR_Field is
     (--  Snoop-on-read
      Val_0,
      --  Snoop-on-write
      Val_1)
     with Size => 1;
   for CRCCR1_CRCSWR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Snoop enable bit
   type CRCCR1_CRCSEN_Field is
     (--  Disabled
      Val_0,
      --  Enabled
      Val_1)
     with Size => 1;
   for CRCCR1_CRCSEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  CRC Control Register1
   type CRCCR1_Register is record
      --  These bits are read as 000000. The write value should be 000000.
      Reserved : CRCCR1_Reserved_Field := 16#0#;
      --  Snoop-on-write/read switch bit
      CRCSWR   : CRCCR1_CRCSWR_Field := R7FA4M1AB.CRC.Val_0;
      --  Snoop enable bit
      CRCSEN   : CRCCR1_CRCSEN_Field := R7FA4M1AB.CRC.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for CRCCR1_Register use record
      Reserved at 0 range 0 .. 5;
      CRCSWR   at 0 range 6 .. 6;
      CRCSEN   at 0 range 7 .. 7;
   end record;

   --  snoop address bit Set the I/O register address to snoop
   type CRCSAR_CRCSA_Field is
     (--  Settings other than above are prohibited.
      others_k,
      --  SCI0.TDR
      Val_0x0003,
      --  SCI0.RDR
      Val_0x0005,
      --  SCI1.TDR
      Val_0x0023,
      --  SCI1.RDR
      Val_0x0025,
      --  SCI2.TDR
      Val_0x0043,
      --  SCI2.RDR
      Val_0x0045,
      --  SCI3.TDR
      Val_0x0063,
      --  SCI3.RDR
      Val_0x0065,
      --  SCI4.TDR
      Val_0x0083,
      --  SCI4.RDR
      Val_0x0085,
      --  SCI9.TDR
      Val_0x0123,
      --  SCI9.RDR
      Val_0x0125)
     with Size => 14;
   for CRCSAR_CRCSA_Field use
     (others_k => 0,
      Val_0x0003 => 3,
      Val_0x0005 => 5,
      Val_0x0023 => 35,
      Val_0x0025 => 37,
      Val_0x0043 => 67,
      Val_0x0045 => 69,
      Val_0x0063 => 99,
      Val_0x0065 => 101,
      Val_0x0083 => 131,
      Val_0x0085 => 133,
      Val_0x0123 => 291,
      Val_0x0125 => 293);

   subtype CRCSAR_Reserved_Field is R7FA4M1AB.UInt2;

   --  Snoop Address Register
   type CRCSAR_Register is record
      --  snoop address bit Set the I/O register address to snoop
      CRCSA    : CRCSAR_CRCSA_Field := R7FA4M1AB.CRC.others_k;
      --  These bits are read as 00. The write value should be 00.
      Reserved : CRCSAR_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for CRCSAR_Register use record
      CRCSA    at 0 range 0 .. 13;
      Reserved at 0 range 14 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  CRC Calculator
   type CRC_Peripheral is record
      --  CRC Control Register0
      CRCCR0 : aliased CRCCR0_Register;
      --  CRC Control Register1
      CRCCR1 : aliased CRCCR1_Register;
      --  CRC Data Input Register
      CRCDIR : aliased R7FA4M1AB.UInt32;
      --  CRC Data Output Register
      CRCDOR : aliased R7FA4M1AB.UInt32;
      --  Snoop Address Register
      CRCSAR : aliased CRCSAR_Register;
   end record
     with Volatile;

   for CRC_Peripheral use record
      CRCCR0 at 16#0# range 0 .. 7;
      CRCCR1 at 16#1# range 0 .. 7;
      CRCDIR at 16#4# range 0 .. 31;
      CRCDOR at 16#8# range 0 .. 31;
      CRCSAR at 16#C# range 0 .. 15;
   end record;

   --  CRC Calculator
   CRC_Periph : aliased CRC_Peripheral
     with Import, Address => CRC_Base;

end R7FA4M1AB.CRC;
