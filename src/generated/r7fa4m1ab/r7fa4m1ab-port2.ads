--
-- Copyright (C) 2026 Marcus Gigandet
--
-- SPDX-License-Identifier: LGPL-3.0-or-later
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  Port 2 Control Registers

package R7FA4M1AB.PORT2 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Pmn Direction
   subtype PCNTR1_PDR_Field is R7FA4M1AB.UInt16;

   --  Pmn Output Data
   subtype PCNTR1_PODR_Field is R7FA4M1AB.UInt16;

   --  Port Control Register 1
   type PCNTR1_Register is record
      --  Pmn Direction
      PDR  : PCNTR1_PDR_Field := 16#0#;
      --  Pmn Output Data
      PODR : PCNTR1_PODR_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => System.Low_Order_First;

   for PCNTR1_Register use
     record
       PDR at 0 range 0 .. 15;
       PODR at 0 range 16 .. 31;
     end record;

   --  Pmn Input Data
   subtype PCNTR2_PIDR_Field is R7FA4M1AB.UInt16;

   --  Pmn Event Input Data
   subtype PCNTR2_EIDR_Field is R7FA4M1AB.UInt16;

   --  Port Control Register 2
   type PCNTR2_Register is record
      --  Read-only. Pmn Input Data
      PIDR : PCNTR2_PIDR_Field;
      --  Read-only. Pmn Event Input Data
      EIDR : PCNTR2_EIDR_Field;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => System.Low_Order_First;

   for PCNTR2_Register use
     record
       PIDR at 0 range 0 .. 15;
       EIDR at 0 range 16 .. 31;
     end record;

   --  Pmn Output Set
   subtype PCNTR3_POSR_Field is R7FA4M1AB.UInt16;

   --  Pmn Output Reset
   subtype PCNTR3_PORR_Field is R7FA4M1AB.UInt16;

   --  Port Control Register 3
   type PCNTR3_Register is record
      --  Write-only. Pmn Output Set
      POSR : PCNTR3_POSR_Field := 16#0#;
      --  Write-only. Pmn Output Reset
      PORR : PCNTR3_PORR_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => System.Low_Order_First;

   for PCNTR3_Register use
     record
       POSR at 0 range 0 .. 15;
       PORR at 0 range 16 .. 31;
     end record;

   --  Pmn Event Output Set
   subtype PCNTR4_EOSR_Field is R7FA4M1AB.UInt16;

   --  Pmn Event Output Reset
   subtype PCNTR4_EORR_Field is R7FA4M1AB.UInt16;

   --  Port Control Register 4
   type PCNTR4_Register is record
      --  Pmn Event Output Set
      EOSR : PCNTR4_EOSR_Field := 16#0#;
      --  Pmn Event Output Reset
      EORR : PCNTR4_EORR_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => System.Low_Order_First;

   for PCNTR4_Register use
     record
       EOSR at 0 range 0 .. 15;
       EORR at 0 range 16 .. 31;
     end record;

   -----------------
   -- Peripherals --
   -----------------

   type PORT2_Disc is
     (View_PDR,
      View_PIDR,
      View_POSR,
      View_EOSR,
      View_PCNTR1,
      View_PODR,
      View_PCNTR2,
      View_PCNTR4,
      View_EIDR,
      View_EORR,
      View_PCNTR3,
      View_PORR);

   --  Port 2 Control Registers
   type PORT2_Peripheral (Discriminent : PORT2_Disc := View_PDR) is record
      case Discriminent is
         when View_PDR =>
            --  Data direction register
            PDR : aliased R7FA4M1AB.UInt16;

         when View_PIDR =>
            --  Input data register
            PIDR : aliased R7FA4M1AB.UInt16;

         when View_POSR =>
            --  Output reset register
            POSR : aliased R7FA4M1AB.UInt16;

         when View_EOSR =>
            --  Event output reset register
            EOSR : aliased R7FA4M1AB.UInt16;

         when View_PCNTR1 =>
            --  Port Control Register 1
            PCNTR1 : aliased PCNTR1_Register;

         when View_PODR =>
            --  Output data register
            PODR : aliased R7FA4M1AB.UInt16;

         when View_PCNTR2 =>
            --  Port Control Register 2
            PCNTR2 : aliased PCNTR2_Register;

         when View_PCNTR4 =>
            --  Port Control Register 4
            PCNTR4 : aliased PCNTR4_Register;

         when View_EIDR =>
            --  Event input data register
            EIDR : aliased R7FA4M1AB.UInt16;

         when View_EORR =>
            --  Event output set register
            EORR : aliased R7FA4M1AB.UInt16;

         when View_PCNTR3 =>
            --  Port Control Register 3
            PCNTR3 : aliased PCNTR3_Register;

         when View_PORR =>
            --  Output set register
            PORR : aliased R7FA4M1AB.UInt16;
      end case;
   end record
   with Unchecked_Union, Volatile;

   for PORT2_Peripheral use
     record
       PDR at 16#2# range 0 .. 15;
       PIDR at 16#6# range 0 .. 15;
       POSR at 16#A# range 0 .. 15;
       EOSR at 16#E# range 0 .. 15;
       PCNTR1 at 16#0# range 0 .. 31;
       PODR at 16#0# range 0 .. 15;
       PCNTR2 at 16#4# range 0 .. 31;
       PCNTR4 at 16#C# range 0 .. 31;
       EIDR at 16#4# range 0 .. 15;
       EORR at 16#C# range 0 .. 15;
       PCNTR3 at 16#8# range 0 .. 31;
       PORR at 16#8# range 0 .. 15;
     end record;

   --  Port 2 Control Registers
   PORT2_Periph : aliased PORT2_Peripheral
   with Import, Address => PORT2_Base;

end R7FA4M1AB.PORT2;
