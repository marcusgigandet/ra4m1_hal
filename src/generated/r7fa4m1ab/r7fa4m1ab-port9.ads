-- 
-- Copyright (C) 2026 Marcus Gigandet
--
-- SPDX-License-Identifier: LGPL-3.0-or-later
-- 

pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB-ada.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  Port 9 Control Registers
package R7FA4M1AB.PORT9 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype PCNTR1_PDR_Field is R7FA4M1AB.UInt16;
   subtype PCNTR1_PODR_Field is R7FA4M1AB.UInt16;

   --  Port Control Register 1
   type PCNTR1_Register is record
      --  Pmn Direction
      PDR  : PCNTR1_PDR_Field := 16#0#;
      --  Pmn Output Data
      PODR : PCNTR1_PODR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCNTR1_Register use record
      PDR  at 0 range 0 .. 15;
      PODR at 0 range 16 .. 31;
   end record;

   subtype PCNTR2_PIDR_Field is R7FA4M1AB.UInt16;
   subtype PCNTR2_Reserved_Field is R7FA4M1AB.UInt16;

   --  Port Control Register 2
   type PCNTR2_Register is record
      --  Read-only. Pmn Input Data
      PIDR     : PCNTR2_PIDR_Field;
      --  Read-only. These bits are read as 0000000000000000.
      Reserved : PCNTR2_Reserved_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCNTR2_Register use record
      PIDR     at 0 range 0 .. 15;
      Reserved at 0 range 16 .. 31;
   end record;

   subtype PCNTR3_POSR_Field is R7FA4M1AB.UInt16;
   subtype PCNTR3_PORR_Field is R7FA4M1AB.UInt16;

   --  Port Control Register 3
   type PCNTR3_Register is record
      --  Write-only. Pmn Output Set
      POSR : PCNTR3_POSR_Field := 16#0#;
      --  Write-only. Pmn Output Reset
      PORR : PCNTR3_PORR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCNTR3_Register use record
      POSR at 0 range 0 .. 15;
      PORR at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Port 9 Control Registers
   type PORT9_Peripheral is record
      --  Port Control Register 1
      PCNTR1 : aliased PCNTR1_Register;
      --  Port Control Register 2
      PCNTR2 : aliased PCNTR2_Register;
      --  Port Control Register 3
      PCNTR3 : aliased PCNTR3_Register;
   end record
     with Volatile;

   for PORT9_Peripheral use record
      PCNTR1 at 16#0# range 0 .. 31;
      PCNTR2 at 16#4# range 0 .. 31;
      PCNTR3 at 16#8# range 0 .. 31;
   end record;

   --  Port 9 Control Registers
   PORT9_Periph : aliased PORT9_Peripheral
     with Import,
          Address       => PORT9_Base,
          Async_Readers,
          Async_Writers,
          Effective_Reads,
          Effective_Writes;

end R7FA4M1AB.PORT9;
