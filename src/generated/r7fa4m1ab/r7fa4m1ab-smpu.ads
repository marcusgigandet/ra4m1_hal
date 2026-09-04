--
-- Copyright (C) 2026 Marcus Gigandet
--
-- SPDX-License-Identifier: LGPL-3.0-or-later
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  Bus Slave MPU

package R7FA4M1AB.SMPU is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Master Group enable
   type SMPUCTL_OAD_Field is
     (--  Non-maskable interrupt.
     Val_0,
      --  Internal reset.
      Val_1)
   with Size => 1;
   for SMPUCTL_OAD_Field use (Val_0 => 0, Val_1 => 1);

   --  Protection of register
   type SMPUCTL_PROTECT_Field is
     (--  All Bus Slave register writing is possible.
     Val_0,
      --  All Bus Slave register writing is protected. Read is possible.
      Val_1)
   with Size => 1;
   for SMPUCTL_PROTECT_Field use (Val_0 => 0, Val_1 => 1);

   subtype SMPUCTL_Reserved_Field is R7FA4M1AB.UInt6;

   --  Key Code This bit is used to enable or disable rewriting of the PROTECT
   --  and OAD bit.
   type SMPUCTL_KEY_Field is
     (      --  Writing to the PROTECT and OAD bit is valid, when the KEY bits are written
     --  0xA5.
     Val_0xA5,
      --  Writing to the PROTECT and OAD bit is invalid.
      others_k)
   with Size => 8;
   for SMPUCTL_KEY_Field use (Val_0xA5 => 165, others_k => 255);

   --  Slave MPU Control Register
   type SMPUCTL_Register is record
      --  Master Group enable
      OAD      : SMPUCTL_OAD_Field := R7FA4M1AB.SMPU.Val_0;
      --  Protection of register
      PROTECT  : SMPUCTL_PROTECT_Field := R7FA4M1AB.SMPU.Val_0;
      --  These bits are read as 000000. The write value should be 000000.
      Reserved : SMPUCTL_Reserved_Field := 16#0#;
      --  Key Code This bit is used to enable or disable rewriting of the
      --  PROTECT and OAD bit.
      KEY      : SMPUCTL_KEY_Field := R7FA4M1AB.SMPU.others_k;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for SMPUCTL_Register use
     record
       OAD at 0 range 0 .. 0;
       PROTECT at 0 range 1 .. 1;
       Reserved at 0 range 2 .. 7;
       KEY at 0 range 8 .. 15;
     end record;

   subtype SMPUMBIU_Reserved_Field is R7FA4M1AB.UInt2;

   --  Master Group A Read protection
   type SMPUMBIU_RPGRPA_Field is
     (--  Master group A read of memory protection disabled.
     Val_0,
      --  Master group A read of memory protection enabled.
      Val_1)
   with Size => 1;
   for SMPUMBIU_RPGRPA_Field use (Val_0 => 0, Val_1 => 1);

   --  Master Group A Write protection
   type SMPUMBIU_WPGRPA_Field is
     (--  Master group A write of memory protection disabled.
     Val_0,
      --  Master group A write of memory protection enabled.
      Val_1)
   with Size => 1;
   for SMPUMBIU_WPGRPA_Field use (Val_0 => 0, Val_1 => 1);

   subtype SMPUMBIU_Reserved_Field_1 is R7FA4M1AB.UInt12;

   --  Access Control Register for MBIU
   type SMPUMBIU_Register is record
      --  These bits are read as 00. The write value should be 00.
      Reserved   : SMPUMBIU_Reserved_Field := 16#0#;
      --  Master Group A Read protection
      RPGRPA     : SMPUMBIU_RPGRPA_Field := R7FA4M1AB.SMPU.Val_0;
      --  Master Group A Write protection
      WPGRPA     : SMPUMBIU_WPGRPA_Field := R7FA4M1AB.SMPU.Val_0;
      --  These bits are read as 000000000000. The write value should be
      --  000000000000.
      Reserved_1 : SMPUMBIU_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for SMPUMBIU_Register use
     record
       Reserved at 0 range 0 .. 1;
       RPGRPA at 0 range 2 .. 2;
       WPGRPA at 0 range 3 .. 3;
       Reserved_1 at 0 range 4 .. 15;
     end record;

   --  CPU Read protection
   type SMPUFBIU_RPCPU_Field is
     (--  CPU read of memory protection disabled.
     Val_0,
      --  CPU read of memory protection enabled.
      Val_1)
   with Size => 1;
   for SMPUFBIU_RPCPU_Field use (Val_0 => 0, Val_1 => 1);

   --  CPU Write protection
   type SMPUFBIU_WPCPU_Field is
     (--  CPU write of memory protection disabled.
     Val_0,
      --  CPU write of memory protection enabled.
      Val_1)
   with Size => 1;
   for SMPUFBIU_WPCPU_Field use (Val_0 => 0, Val_1 => 1);

   --  Master Group A Read protection
   type SMPUFBIU_RPGRPA_Field is
     (--  Master group A read of memory protection disabled.
     Val_0,
      --  Master group A read of memory protection enabled.
      Val_1)
   with Size => 1;
   for SMPUFBIU_RPGRPA_Field use (Val_0 => 0, Val_1 => 1);

   --  Master Group A Write protection
   type SMPUFBIU_WPGRPA_Field is
     (--  Master group A write of memory protection disabled.
     Val_0,
      --  Master group A write of memory protection enabled.
      Val_1)
   with Size => 1;
   for SMPUFBIU_WPGRPA_Field use (Val_0 => 0, Val_1 => 1);

   subtype SMPUFBIU_Reserved_Field is R7FA4M1AB.UInt12;

   --  Access Control Register for FBIU
   type SMPUFBIU_Register is record
      --  CPU Read protection
      RPCPU    : SMPUFBIU_RPCPU_Field := R7FA4M1AB.SMPU.Val_0;
      --  CPU Write protection
      WPCPU    : SMPUFBIU_WPCPU_Field := R7FA4M1AB.SMPU.Val_0;
      --  Master Group A Read protection
      RPGRPA   : SMPUFBIU_RPGRPA_Field := R7FA4M1AB.SMPU.Val_0;
      --  Master Group A Write protection
      WPGRPA   : SMPUFBIU_WPGRPA_Field := R7FA4M1AB.SMPU.Val_0;
      --  These bits are read as 000000000000. The write value should be
      --  000000000000.
      Reserved : SMPUFBIU_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for SMPUFBIU_Register use
     record
       RPCPU at 0 range 0 .. 0;
       WPCPU at 0 range 1 .. 1;
       RPGRPA at 0 range 2 .. 2;
       WPGRPA at 0 range 3 .. 3;
       Reserved at 0 range 4 .. 15;
     end record;

   --  CPU Read protection
   type SMPUSRAM0_RPCPU_Field is
     (--  CPU read of memory protection disabled.
     Val_0,
      --  CPU read of memory protection enabled.
      Val_1)
   with Size => 1;
   for SMPUSRAM0_RPCPU_Field use (Val_0 => 0, Val_1 => 1);

   --  CPU Write protection
   type SMPUSRAM0_WPCPU_Field is
     (--  CPU write of memory protection disabled.
     Val_0,
      --  CPU write of memory protection enabled.
      Val_1)
   with Size => 1;
   for SMPUSRAM0_WPCPU_Field use (Val_0 => 0, Val_1 => 1);

   --  Master Group A Read protection
   type SMPUSRAM0_RPGRPA_Field is
     (--  Master group A read of memory protection disabled.
     Val_0,
      --  Master group A read of memory protection enabled.
      Val_1)
   with Size => 1;
   for SMPUSRAM0_RPGRPA_Field use (Val_0 => 0, Val_1 => 1);

   --  Master Group A Write protection
   type SMPUSRAM0_WPGRPA_Field is
     (--  Master group A write of memory protection disabled.
     Val_0,
      --  Master group A write of memory protection enabled.
      Val_1)
   with Size => 1;
   for SMPUSRAM0_WPGRPA_Field use (Val_0 => 0, Val_1 => 1);

   subtype SMPUSRAM0_Reserved_Field is R7FA4M1AB.UInt12;

   --  Access Control Register for SRAM0
   type SMPUSRAM0_Register is record
      --  CPU Read protection
      RPCPU    : SMPUSRAM0_RPCPU_Field := R7FA4M1AB.SMPU.Val_0;
      --  CPU Write protection
      WPCPU    : SMPUSRAM0_WPCPU_Field := R7FA4M1AB.SMPU.Val_0;
      --  Master Group A Read protection
      RPGRPA   : SMPUSRAM0_RPGRPA_Field := R7FA4M1AB.SMPU.Val_0;
      --  Master Group A Write protection
      WPGRPA   : SMPUSRAM0_WPGRPA_Field := R7FA4M1AB.SMPU.Val_0;
      --  These bits are read as 000000000000. The write value should be
      --  000000000000.
      Reserved : SMPUSRAM0_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for SMPUSRAM0_Register use
     record
       RPCPU at 0 range 0 .. 0;
       WPCPU at 0 range 1 .. 1;
       RPGRPA at 0 range 2 .. 2;
       WPGRPA at 0 range 3 .. 3;
       Reserved at 0 range 4 .. 15;
     end record;

   --  CPU Read protection
   type SMPUPBIU0_RPCPU_Field is
     (--  CPU read of memory protection disabled.
     Val_0,
      --  CPU read of memory protection enabled.
      Val_1)
   with Size => 1;
   for SMPUPBIU0_RPCPU_Field use (Val_0 => 0, Val_1 => 1);

   --  CPU Write protection
   type SMPUPBIU0_WPCPU_Field is
     (--  CPU write of memory protection disabled.
     Val_0,
      --  CPU write of memory protection enabled.
      Val_1)
   with Size => 1;
   for SMPUPBIU0_WPCPU_Field use (Val_0 => 0, Val_1 => 1);

   --  Master Group A Read protection
   type SMPUPBIU0_RPGRPA_Field is
     (--  Master group A read of memory protection disabled.
     Val_0,
      --  Master group A read of memory protection enabled.
      Val_1)
   with Size => 1;
   for SMPUPBIU0_RPGRPA_Field use (Val_0 => 0, Val_1 => 1);

   --  Master Group A Write protection
   type SMPUPBIU0_WPGRPA_Field is
     (--  Master group A write of memory protection disabled.
     Val_0,
      --  Master group A write of memory protection enabled.
      Val_1)
   with Size => 1;
   for SMPUPBIU0_WPGRPA_Field use (Val_0 => 0, Val_1 => 1);

   subtype SMPUPBIU_Reserved_Field is R7FA4M1AB.UInt12;

   --  Access Control Register for P%sBIU
   type SMPUPBIU_Register is record
      --  CPU Read protection
      RPCPU    : SMPUPBIU0_RPCPU_Field := R7FA4M1AB.SMPU.Val_0;
      --  CPU Write protection
      WPCPU    : SMPUPBIU0_WPCPU_Field := R7FA4M1AB.SMPU.Val_0;
      --  Master Group A Read protection
      RPGRPA   : SMPUPBIU0_RPGRPA_Field := R7FA4M1AB.SMPU.Val_0;
      --  Master Group A Write protection
      WPGRPA   : SMPUPBIU0_WPGRPA_Field := R7FA4M1AB.SMPU.Val_0;
      --  These bits are read as 000000000000. The write value should be
      --  000000000000.
      Reserved : SMPUPBIU_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for SMPUPBIU_Register use
     record
       RPCPU at 0 range 0 .. 0;
       WPCPU at 0 range 1 .. 1;
       RPGRPA at 0 range 2 .. 2;
       WPGRPA at 0 range 3 .. 3;
       Reserved at 0 range 4 .. 15;
     end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Bus Slave MPU
   type SMPU_Peripheral is record
      --  Slave MPU Control Register
      SMPUCTL   : aliased SMPUCTL_Register;
      --  Access Control Register for MBIU
      SMPUMBIU  : aliased SMPUMBIU_Register;
      --  Access Control Register for FBIU
      SMPUFBIU  : aliased SMPUFBIU_Register;
      --  Access Control Register for SRAM0
      SMPUSRAM0 : aliased SMPUSRAM0_Register;
      --  Access Control Register for P%sBIU
      SMPUPBIU0 : aliased SMPUPBIU_Register;
      --  Access Control Register for P%sBIU
      SMPUPBIU1 : aliased SMPUPBIU_Register;
      --  Access Control Register for P%sBIU
      SMPUPBIU2 : aliased SMPUPBIU_Register;
   end record
   with Volatile;

   for SMPU_Peripheral use
     record
       SMPUCTL at 16#0# range 0 .. 15;
       SMPUMBIU at 16#10# range 0 .. 15;
       SMPUFBIU at 16#14# range 0 .. 15;
       SMPUSRAM0 at 16#18# range 0 .. 15;
       SMPUPBIU0 at 16#20# range 0 .. 15;
       SMPUPBIU1 at 16#24# range 0 .. 15;
       SMPUPBIU2 at 16#28# range 0 .. 15;
     end record;

   --  Bus Slave MPU
   SMPU_Periph : aliased SMPU_Peripheral
   with Import, Address => SMPU_Base;

end R7FA4M1AB.SMPU;
