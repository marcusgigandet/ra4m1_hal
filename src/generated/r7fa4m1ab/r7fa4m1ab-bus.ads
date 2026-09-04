--
-- Copyright (C) 2026 Marcus Gigandet
--
-- SPDX-License-Identifier: LGPL-3.0-or-later
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  BUS Control

package R7FA4M1AB.BUS is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype BUSMCNT_Reserved_Field is R7FA4M1AB.UInt15;

   --  Ignore Error Responses
   type BUSMCNT0_IERES_Field is
     (--  A bus error is reported
     Val_0,
      --  A bus error is not reported.
      Val_1)
   with Size => 1;
   for BUSMCNT0_IERES_Field use (Val_0 => 0, Val_1 => 1);

   --  Master Bus Control Register %s
   type BUSMCNT_Register is record
      --  These bits are read as 000000000000000. The write value should be
      --  000000000000000.
      Reserved : BUSMCNT_Reserved_Field := 16#0#;
      --  Ignore Error Responses
      IERES    : BUSMCNT0_IERES_Field := R7FA4M1AB.BUS.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for BUSMCNT_Register use
     record
       Reserved at 0 range 0 .. 14;
       IERES at 0 range 15 .. 15;
     end record;

   subtype BUSSCNTFLI_Reserved_Field is R7FA4M1AB.UInt4;

   --  Arbitration Method Specify the priority between groups
   type BUSSCNTFLI_ARBMET_Field is
     (--  fixed priority
     Val_00,
      --  round-robin
      Val_01,
      --  Setting prohibited
      others_k)
   with Size => 2;
   for BUSSCNTFLI_ARBMET_Field use (Val_00 => 0, Val_01 => 1, others_k => 3);

   subtype BUSSCNTFLI_Reserved_Field_1 is R7FA4M1AB.UInt10;

   --  Slave Bus Control Register FLI
   type BUSSCNTFLI_Register is record
      --  These bits are read as 0000. The write value should be 0000.
      Reserved   : BUSSCNTFLI_Reserved_Field := 16#0#;
      --  Arbitration Method Specify the priority between groups
      ARBMET     : BUSSCNTFLI_ARBMET_Field := R7FA4M1AB.BUS.Val_00;
      --  These bits are read as 0000000000. The write value should be
      --  0000000000.
      Reserved_1 : BUSSCNTFLI_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for BUSSCNTFLI_Register use
     record
       Reserved at 0 range 0 .. 3;
       ARBMET at 0 range 4 .. 5;
       Reserved_1 at 0 range 6 .. 15;
     end record;

   subtype BUSSCNT_Reserved_Field is R7FA4M1AB.UInt4;

   --  Arbitration Method Specify the priority between groups
   type BUSSCNT0_ARBMET_Field is
     (--  fixed priority
     Val_00,
      --  round-robin
      Val_01,
      --  Setting prohibited
      others_k)
   with Size => 2;
   for BUSSCNT0_ARBMET_Field use (Val_00 => 0, Val_01 => 1, others_k => 3);

   subtype BUSSCNT_Reserved_Field_1 is R7FA4M1AB.UInt10;

   --  Slave Bus Control Register %s
   type BUSSCNT_Register is record
      --  These bits are read as 0000. The write value should be 0000.
      Reserved   : BUSSCNT_Reserved_Field := 16#0#;
      --  Arbitration Method Specify the priority between groups
      ARBMET     : BUSSCNT0_ARBMET_Field := R7FA4M1AB.BUS.Val_00;
      --  These bits are read as 0000000000. The write value should be
      --  0000000000.
      Reserved_1 : BUSSCNT_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for BUSSCNT_Register use
     record
       Reserved at 0 range 0 .. 3;
       ARBMET at 0 range 4 .. 5;
       Reserved_1 at 0 range 6 .. 15;
     end record;

   subtype BUSSCNTP6B_Reserved_Field is R7FA4M1AB.UInt4;

   --  Arbitration Method Specify the priority between groups
   type BUSSCNTP6B_ARBMET_Field is
     (--  fixed priority
     Val_00,
      --  round-robin
      Val_01,
      --  Setting prohibited
      others_k)
   with Size => 2;
   for BUSSCNTP6B_ARBMET_Field use (Val_00 => 0, Val_01 => 1, others_k => 3);

   subtype BUSSCNTP6B_Reserved_Field_1 is R7FA4M1AB.UInt10;

   --  Slave Bus Control Register P6B
   type BUSSCNTP6B_Register is record
      --  These bits are read as 0000. The write value should be 0000.
      Reserved   : BUSSCNTP6B_Reserved_Field := 16#0#;
      --  Arbitration Method Specify the priority between groups
      ARBMET     : BUSSCNTP6B_ARBMET_Field := R7FA4M1AB.BUS.Val_00;
      --  These bits are read as 0000000000. The write value should be
      --  0000000000.
      Reserved_1 : BUSSCNTP6B_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for BUSSCNTP6B_Register use
     record
       Reserved at 0 range 0 .. 3;
       ARBMET at 0 range 4 .. 5;
       Reserved_1 at 0 range 6 .. 15;
     end record;

   subtype BUSSCNTFBU_Reserved_Field is R7FA4M1AB.UInt4;

   --  Arbitration Method Specify the priority between groups
   type BUSSCNTFBU_ARBMET_Field is
     (--  fixed priority
     Val_00,
      --  round-robin
      Val_01,
      --  Setting prohibited
      others_k)
   with Size => 2;
   for BUSSCNTFBU_ARBMET_Field use (Val_00 => 0, Val_01 => 1, others_k => 3);

   subtype BUSSCNTFBU_Reserved_Field_1 is R7FA4M1AB.UInt10;

   --  Slave Bus Control Register FBU
   type BUSSCNTFBU_Register is record
      --  These bits are read as 0000. The write value should be 0000.
      Reserved   : BUSSCNTFBU_Reserved_Field := 16#0#;
      --  Arbitration Method Specify the priority between groups
      ARBMET     : BUSSCNTFBU_ARBMET_Field := R7FA4M1AB.BUS.Val_00;
      --  These bits are read as 0000000000. The write value should be
      --  0000000000.
      Reserved_1 : BUSSCNTFBU_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for BUSSCNTFBU_Register use
     record
       Reserved at 0 range 0 .. 3;
       ARBMET at 0 range 4 .. 5;
       Reserved_1 at 0 range 6 .. 15;
     end record;

   --  Error Access Status The status at the time of the error
   type BUSERRSTAT0_ACCSTAT_Field is
     (--  Read access
     Val_0,
      --  Write Access
      Val_1)
   with Size => 1;
   for BUSERRSTAT0_ACCSTAT_Field use (Val_0 => 0, Val_1 => 1);

   subtype BUSERRSTAT_Reserved_Field is R7FA4M1AB.UInt6;

   --  Bus Error Status When bus error assert, error flag occurs.
   type BUSERRSTAT0_ERRSTAT_Field is
     (--  No bus error occurred
     Val_0,
      --  Bus error occurred.
      Val_1)
   with Size => 1;
   for BUSERRSTAT0_ERRSTAT_Field use (Val_0 => 0, Val_1 => 1);

   --  Bus Error Status Register %s
   type BUSERRSTAT_Register is record
      --  Read-only. Error Access Status The status at the time of the error
      ACCSTAT  : BUSERRSTAT0_ACCSTAT_Field;
      --  Read-only. These bits are read as 000000.
      Reserved : BUSERRSTAT_Reserved_Field;
      --  Read-only. Bus Error Status When bus error assert, error flag occurs.
      ERRSTAT  : BUSERRSTAT0_ERRSTAT_Field;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for BUSERRSTAT_Register use
     record
       ACCSTAT at 0 range 0 .. 0;
       Reserved at 0 range 1 .. 6;
       ERRSTAT at 0 range 7 .. 7;
     end record;

   -----------------
   -- Peripherals --
   -----------------

   --  BUS Control
   type BUS_Peripheral is record
      --  Master Bus Control Register %s
      BUSMCNT0    : aliased BUSMCNT_Register;
      --  Master Bus Control Register %s
      BUSMCNT1    : aliased BUSMCNT_Register;
      --  Master Bus Control Register %s
      BUSMCNT2    : aliased BUSMCNT_Register;
      --  Master Bus Control Register %s
      BUSMCNT3    : aliased BUSMCNT_Register;
      --  Slave Bus Control Register FLI
      BUSSCNTFLI  : aliased BUSSCNTFLI_Register;
      --  Slave Bus Control Register %s
      BUSSCNT0    : aliased BUSSCNT_Register;
      --  Slave Bus Control Register %s
      BUSSCNT1    : aliased BUSSCNT_Register;
      --  Slave Bus Control Register %s
      BUSSCNT0_1  : aliased BUSSCNT_Register;
      --  Slave Bus Control Register %s
      BUSSCNT1_1  : aliased BUSSCNT_Register;
      --  Slave Bus Control Register %s
      BUSSCNT2    : aliased BUSSCNT_Register;
      --  Slave Bus Control Register %s
      BUSSCNT3    : aliased BUSSCNT_Register;
      --  Slave Bus Control Register P6B
      BUSSCNTP6B  : aliased BUSSCNTP6B_Register;
      --  Slave Bus Control Register FBU
      BUSSCNTFBU  : aliased BUSSCNTFBU_Register;
      --  Bus Error Address Register %s
      BUSERRADD0  : aliased R7FA4M1AB.UInt32;
      --  Bus Error Status Register %s
      BUSERRSTAT0 : aliased BUSERRSTAT_Register;
      --  Bus Error Address Register %s
      BUSERRADD1  : aliased R7FA4M1AB.UInt32;
      --  Bus Error Status Register %s
      BUSERRSTAT1 : aliased BUSERRSTAT_Register;
      --  Bus Error Address Register %s
      BUSERRADD2  : aliased R7FA4M1AB.UInt32;
      --  Bus Error Status Register %s
      BUSERRSTAT2 : aliased BUSERRSTAT_Register;
      --  Bus Error Address Register %s
      BUSERRADD3  : aliased R7FA4M1AB.UInt32;
      --  Bus Error Status Register %s
      BUSERRSTAT3 : aliased BUSERRSTAT_Register;
   end record
   with Volatile;

   for BUS_Peripheral use
     record
       BUSMCNT0 at 16#1000# range 0 .. 15;
       BUSMCNT1 at 16#1004# range 0 .. 15;
       BUSMCNT2 at 16#1008# range 0 .. 15;
       BUSMCNT3 at 16#100C# range 0 .. 15;
       BUSSCNTFLI at 16#1100# range 0 .. 15;
       BUSSCNT0 at 16#1108# range 0 .. 15;
       BUSSCNT1 at 16#110C# range 0 .. 15;
       BUSSCNT0_1 at 16#1114# range 0 .. 15;
       BUSSCNT1_1 at 16#1118# range 0 .. 15;
       BUSSCNT2 at 16#111C# range 0 .. 15;
       BUSSCNT3 at 16#1120# range 0 .. 15;
       BUSSCNTP6B at 16#1128# range 0 .. 15;
       BUSSCNTFBU at 16#1130# range 0 .. 15;
       BUSERRADD0 at 16#1800# range 0 .. 31;
       BUSERRSTAT0 at 16#1804# range 0 .. 7;
       BUSERRADD1 at 16#1810# range 0 .. 31;
       BUSERRSTAT1 at 16#1814# range 0 .. 7;
       BUSERRADD2 at 16#1820# range 0 .. 31;
       BUSERRSTAT2 at 16#1824# range 0 .. 7;
       BUSERRADD3 at 16#1830# range 0 .. 31;
       BUSERRSTAT3 at 16#1834# range 0 .. 7;
     end record;

   --  BUS Control
   BUS_Periph : aliased BUS_Peripheral
   with Import, Address => BUS_Base;

end R7FA4M1AB.BUS;
