--
-- Copyright (C) 2026 Marcus Gigandet
--
-- SPDX-License-Identifier: LGPL-3.0-or-later
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  Watchdog Timer

package R7FA4M1AB.WDT is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Timeout Period Selection
   type WDTCR_TOPS_Field is
     (--  1,024 cycles (03FFh)
     Val_00,
      --  4,096 cycles (0FFFh)
      Val_01,
      --  8,192 cycles (1FFFh)
      Val_10,
      --  16,384 cycles (3FFFh)
      Val_11)
   with Size => 2;
   for WDTCR_TOPS_Field use
     (Val_00 => 0, Val_01 => 1, Val_10 => 2, Val_11 => 3);

   subtype WDTCR_Reserved_Field is R7FA4M1AB.UInt2;

   --  Clock Division Ratio Selection
   type WDTCR_CKS_Field is
     (      --  PCLK/4
     Val_0001,
      --  PCLK/64
      Val_0100,
      --  PCLK/512
      Val_0110,
      --  PCLK/2048
      Val_0111,
      --  PCLK/8192
      Val_1000,
      --  setting prohibited
      others_k,
      --  PCLK/128
      Val_1111)
   with Size => 4;
   for WDTCR_CKS_Field use
     (Val_0001 => 1,
      Val_0100 => 4,
      Val_0110 => 6,
      Val_0111 => 7,
      Val_1000 => 8,
      others_k => 14,
      Val_1111 => 15);

   --  Window End Position Selection
   type WDTCR_RPES_Field is
     (--  75 percent
     Val_00,
      --  50 percent
      Val_01,
      --  25 percent
      Val_10,
      --  0 percent (window end position is not specified)
      Val_11)
   with Size => 2;
   for WDTCR_RPES_Field use
     (Val_00 => 0, Val_01 => 1, Val_10 => 2, Val_11 => 3);

   --  Window Start Position Selection
   type WDTCR_RPSS_Field is
     (--  25 percent
     Val_00,
      --  50 percent
      Val_01,
      --  75 percent
      Val_10,
      --  100 percent (window start position is not specified)
      Val_11)
   with Size => 2;
   for WDTCR_RPSS_Field use
     (Val_00 => 0, Val_01 => 1, Val_10 => 2, Val_11 => 3);

   --  WDT Control Register
   type WDTCR_Register is record
      --  Timeout Period Selection
      TOPS       : WDTCR_TOPS_Field := R7FA4M1AB.WDT.Val_11;
      --  These bits are read as 00. The write value should be 00.
      Reserved   : WDTCR_Reserved_Field := 16#0#;
      --  Clock Division Ratio Selection
      CKS        : WDTCR_CKS_Field := R7FA4M1AB.WDT.Val_1111;
      --  Window End Position Selection
      RPES       : WDTCR_RPES_Field := R7FA4M1AB.WDT.Val_11;
      --  These bits are read as 00. The write value should be 00.
      Reserved_1 : WDTCR_Reserved_Field := 16#0#;
      --  Window Start Position Selection
      RPSS       : WDTCR_RPSS_Field := R7FA4M1AB.WDT.Val_11;
      --  These bits are read as 00. The write value should be 00.
      Reserved_2 : WDTCR_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for WDTCR_Register use
     record
       TOPS at 0 range 0 .. 1;
       Reserved at 0 range 2 .. 3;
       CKS at 0 range 4 .. 7;
       RPES at 0 range 8 .. 9;
       Reserved_1 at 0 range 10 .. 11;
       RPSS at 0 range 12 .. 13;
       Reserved_2 at 0 range 14 .. 15;
     end record;

   subtype WDTSR_CNTVAL_Field is R7FA4M1AB.UInt14;

   --  Underflow Flag
   type WDTSR_UNDFF_Field is
     (--  No underflow occurred
     Val_0,
      --  Underflow occurred
      Val_1)
   with Size => 1;
   for WDTSR_UNDFF_Field use (Val_0 => 0, Val_1 => 1);

   --  Refresh Error Flag
   type WDTSR_REFEF_Field is
     (--  No refresh error occurred
     Val_0,
      --  Refresh error occurred
      Val_1)
   with Size => 1;
   for WDTSR_REFEF_Field use (Val_0 => 0, Val_1 => 1);

   --  WDT Status Register
   type WDTSR_Register is record
      --  Read-only. Down-Counter Value Value counted by the down-counter
      CNTVAL : WDTSR_CNTVAL_Field := 16#0#;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Underflow Flag
      UNDFF  : WDTSR_UNDFF_Field := R7FA4M1AB.WDT.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Refresh Error Flag
      REFEF  : WDTSR_REFEF_Field := R7FA4M1AB.WDT.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for WDTSR_Register use
     record
       CNTVAL at 0 range 0 .. 13;
       UNDFF at 0 range 14 .. 14;
       REFEF at 0 range 15 .. 15;
     end record;

   --  Reset Interrupt Request Selection
   type WDTRCR_RSTIRQS_Field is
     (--  Non-maskable interrupt request or interrupt request output is enabled
     Val_0,
      --  Reset output is enabled.
      Val_1)
   with Size => 1;
   for WDTRCR_RSTIRQS_Field use (Val_0 => 0, Val_1 => 1);

   --  WDT Reset Control Register
   type WDTRCR_Register is record
      --  unspecified
      Reserved_0_6 : R7FA4M1AB.UInt7 := 16#0#;
      --  Reset Interrupt Request Selection
      RSTIRQS      : WDTRCR_RSTIRQS_Field := R7FA4M1AB.WDT.Val_1;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for WDTRCR_Register use
     record
       Reserved_0_6 at 0 range 0 .. 6;
       RSTIRQS at 0 range 7 .. 7;
     end record;

   subtype WDTCSTPR_Reserved_Field is R7FA4M1AB.UInt7;

   --  Sleep-Mode Count Stop Control
   type WDTCSTPR_SLCSTP_Field is
     (--  Count stop is disabled.
     Val_0,
      --  Count is stopped at a transition to sleep mode.
      Val_1)
   with Size => 1;
   for WDTCSTPR_SLCSTP_Field use (Val_0 => 0, Val_1 => 1);

   --  WDT Count Stop Control Register
   type WDTCSTPR_Register is record
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved : WDTCSTPR_Reserved_Field := 16#0#;
      --  Sleep-Mode Count Stop Control
      SLCSTP   : WDTCSTPR_SLCSTP_Field := R7FA4M1AB.WDT.Val_1;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for WDTCSTPR_Register use
     record
       Reserved at 0 range 0 .. 6;
       SLCSTP at 0 range 7 .. 7;
     end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Watchdog Timer
   type WDT_Peripheral is record
      --  WDT Refresh Register
      WDTRR    : aliased R7FA4M1AB.Byte;
      --  WDT Control Register
      WDTCR    : aliased WDTCR_Register;
      --  WDT Status Register
      WDTSR    : aliased WDTSR_Register;
      --  WDT Reset Control Register
      WDTRCR   : aliased WDTRCR_Register;
      --  WDT Count Stop Control Register
      WDTCSTPR : aliased WDTCSTPR_Register;
   end record
   with Volatile;

   for WDT_Peripheral use
     record
       WDTRR at 16#0# range 0 .. 7;
       WDTCR at 16#2# range 0 .. 15;
       WDTSR at 16#4# range 0 .. 15;
       WDTRCR at 16#6# range 0 .. 7;
       WDTCSTPR at 16#8# range 0 .. 7;
     end record;

   --  Watchdog Timer
   WDT_Periph : aliased WDT_Peripheral
   with Import, Address => WDT_Base;

end R7FA4M1AB.WDT;
