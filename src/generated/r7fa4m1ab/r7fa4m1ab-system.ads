--
-- Copyright (C) 2026 Marcus Gigandet
--
-- SPDX-License-Identifier: LGPL-3.0-or-later
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  System Control

package R7FA4M1AB.SYSTEM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype SBYCR_Reserved_Field is R7FA4M1AB.UInt14;
   subtype SBYCR_Reserved_Field_1 is R7FA4M1AB.Bit;

   --  Software Standby
   type SBYCR_SSBY_Field is
     (--  Sleep mode
     Val_0,
      --  Software Standby mode
      Val_1)
   with Size => 1;
   for SBYCR_SSBY_Field use (Val_0 => 0, Val_1 => 1);

   --  Standby Control Register
   type SBYCR_Register is record
      --  These bits are read as 00000000000000. The write value should be
      --  00000000000000.
      Reserved   : SBYCR_Reserved_Field := 16#0#;
      --  This bit is read as 1. The write value should be 1.
      Reserved_1 : SBYCR_Reserved_Field_1 := 16#1#;
      --  Software Standby
      SSBY       : SBYCR_SSBY_Field := R7FA4M1AB.SYSTEM.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => Standard.System.Low_Order_First;

   for SBYCR_Register use
     record
       Reserved at 0 range 0 .. 13;
       Reserved_1 at 0 range 14 .. 14;
       SSBY at 0 range 15 .. 15;
     end record;

   --  RAM0 Module Stop
   type MSTPCRA_MSTPA0_Field is
     (--  Cancel the module-stop state
     Val_0,
      --  Enter the module-stop state
      Val_1)
   with Size => 1;
   for MSTPCRA_MSTPA0_Field use (Val_0 => 0, Val_1 => 1);

   subtype MSTPCRA_Reserved_Field is R7FA4M1AB.UInt5;

   --  ECCRAM Module Stop
   type MSTPCRA_MSTPA6_Field is
     (--  Cancel the module-stop state
     Val_0,
      --  Enter the module-stop state
      Val_1)
   with Size => 1;
   for MSTPCRA_MSTPA6_Field use (Val_0 => 0, Val_1 => 1);

   subtype MSTPCRA_Reserved_Field_1 is R7FA4M1AB.UInt15;

   --  DMA Controller/Data Transfer Controller Module Stop
   type MSTPCRA_MSTPA22_Field is
     (--  Cancel the module-stop state
     Val_0,
      --  Enter the module-stop state
      Val_1)
   with Size => 1;
   for MSTPCRA_MSTPA22_Field use (Val_0 => 0, Val_1 => 1);

   subtype MSTPCRA_Reserved_Field_2 is R7FA4M1AB.UInt9;

   --  Module Stop Control Register A
   type MSTPCRA_Register is record
      --  RAM0 Module Stop
      MSTPA0     : MSTPCRA_MSTPA0_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 11111. The write value should be 11111.
      Reserved   : MSTPCRA_Reserved_Field := 16#1F#;
      --  ECCRAM Module Stop
      MSTPA6     : MSTPCRA_MSTPA6_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 111111111111111. The write value should be
      --  111111111111111.
      Reserved_1 : MSTPCRA_Reserved_Field_1 := 16#7FFF#;
      --  DMA Controller/Data Transfer Controller Module Stop
      MSTPA22    : MSTPCRA_MSTPA22_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 111111111. The write value should be
      --  111111111.
      Reserved_2 : MSTPCRA_Reserved_Field_2 := 16#1FF#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => Standard.System.Low_Order_First;

   for MSTPCRA_Register use
     record
       MSTPA0 at 0 range 0 .. 0;
       Reserved at 0 range 1 .. 5;
       MSTPA6 at 0 range 6 .. 6;
       Reserved_1 at 0 range 7 .. 21;
       MSTPA22 at 0 range 22 .. 22;
       Reserved_2 at 0 range 23 .. 31;
     end record;

   --  Peripheral Module Clock D (PCLKD) Select
   type SCKDIVCR_PCKD_Field is
     (--  /1
     Val_000,
      --  /2
      Val_001,
      --  /4
      Val_010,
      --  /8
      Val_011,
      --  /16
      Val_100,
      --  /32
      Val_101,
      --  /64
      Val_110,
      --  Setting prohibited
      others_k)
   with Size => 3;
   for SCKDIVCR_PCKD_Field use
     (Val_000  => 0,
      Val_001  => 1,
      Val_010  => 2,
      Val_011  => 3,
      Val_100  => 4,
      Val_101  => 5,
      Val_110  => 6,
      others_k => 7);

   subtype SCKDIVCR_Reserved_Field is R7FA4M1AB.Bit;

   --  Peripheral Module Clock C (PCLKC) Select
   type SCKDIVCR_PCKC_Field is
     (--  /1
     Val_000,
      --  /2
      Val_001,
      --  /4
      Val_010,
      --  /8
      Val_011,
      --  /16
      Val_100,
      --  /32
      Val_101,
      --  /64
      Val_110,
      --  Setting prohibited
      others_k)
   with Size => 3;
   for SCKDIVCR_PCKC_Field use
     (Val_000  => 0,
      Val_001  => 1,
      Val_010  => 2,
      Val_011  => 3,
      Val_100  => 4,
      Val_101  => 5,
      Val_110  => 6,
      others_k => 7);

   --  Peripheral Module Clock B (PCLKB) Select
   type SCKDIVCR_PCKB_Field is
     (--  /1
     Val_000,
      --  /2
      Val_001,
      --  /4
      Val_010,
      --  /8
      Val_011,
      --  /16
      Val_100,
      --  /32
      Val_101,
      --  /64
      Val_110,
      --  Setting prohibited
      others_k)
   with Size => 3;
   for SCKDIVCR_PCKB_Field use
     (Val_000  => 0,
      Val_001  => 1,
      Val_010  => 2,
      Val_011  => 3,
      Val_100  => 4,
      Val_101  => 5,
      Val_110  => 6,
      others_k => 7);

   --  Peripheral Module Clock A (PCLKA) Select
   type SCKDIVCR_PCKA_Field is
     (--  /1
     Val_000,
      --  /2
      Val_001,
      --  /4
      Val_010,
      --  /8
      Val_011,
      --  /16
      Val_100,
      --  /32
      Val_101,
      --  /64
      Val_110,
      --  Setting prohibited
      others_k)
   with Size => 3;
   for SCKDIVCR_PCKA_Field use
     (Val_000  => 0,
      Val_001  => 1,
      Val_010  => 2,
      Val_011  => 3,
      Val_100  => 4,
      Val_101  => 5,
      Val_110  => 6,
      others_k => 7);

   subtype SCKDIVCR_Reserved_Field_1 is R7FA4M1AB.UInt2;
   subtype SCKDIVCR_Reserved_Field_2 is R7FA4M1AB.UInt5;

   --  System Clock (ICLK) Select
   type SCKDIVCR_ICK_Field is
     (--  /1
     Val_000,
      --  /2
      Val_001,
      --  /4
      Val_010,
      --  /8
      Val_011,
      --  /16
      Val_100,
      --  /32
      Val_101,
      --  /64
      Val_110,
      --  Setting prohibited
      others_k)
   with Size => 3;
   for SCKDIVCR_ICK_Field use
     (Val_000  => 0,
      Val_001  => 1,
      Val_010  => 2,
      Val_011  => 3,
      Val_100  => 4,
      Val_101  => 5,
      Val_110  => 6,
      others_k => 7);

   --  Flash IF Clock (FCLK) Select
   type SCKDIVCR_FCK_Field is
     (--  /1
     Val_000,
      --  /2
      Val_001,
      --  /4
      Val_010,
      --  /8
      Val_011,
      --  /16
      Val_100,
      --  /32
      Val_101,
      --  /64
      Val_110,
      --  Setting prohibited
      others_k)
   with Size => 3;
   for SCKDIVCR_FCK_Field use
     (Val_000  => 0,
      Val_001  => 1,
      Val_010  => 2,
      Val_011  => 3,
      Val_100  => 4,
      Val_101  => 5,
      Val_110  => 6,
      others_k => 7);

   --  System Clock Division Control Register
   type SCKDIVCR_Register is record
      --  Peripheral Module Clock D (PCLKD) Select
      PCKD       : SCKDIVCR_PCKD_Field := R7FA4M1AB.SYSTEM.Val_100;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : SCKDIVCR_Reserved_Field := 16#0#;
      --  Peripheral Module Clock C (PCLKC) Select
      PCKC       : SCKDIVCR_PCKC_Field := R7FA4M1AB.SYSTEM.Val_100;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : SCKDIVCR_Reserved_Field := 16#0#;
      --  Peripheral Module Clock B (PCLKB) Select
      PCKB       : SCKDIVCR_PCKB_Field := R7FA4M1AB.SYSTEM.Val_100;
      --  This bit is read as 0. The write value should be 0.
      Reserved_2 : SCKDIVCR_Reserved_Field := 16#0#;
      --  Peripheral Module Clock A (PCLKA) Select
      PCKA       : SCKDIVCR_PCKA_Field := R7FA4M1AB.SYSTEM.Val_100;
      --  This bit is read as 0. The write value should be 0.
      Reserved_3 : SCKDIVCR_Reserved_Field := 16#0#;
      --  These bits are read as 00. The write value should be 00.
      Reserved_4 : SCKDIVCR_Reserved_Field_1 := 16#0#;
      --  This bit is read as 1. The write value should be 1.
      Reserved_5 : SCKDIVCR_Reserved_Field := 16#1#;
      --  These bits are read as 00000. The write value should be 00000.
      Reserved_6 : SCKDIVCR_Reserved_Field_2 := 16#0#;
      --  System Clock (ICLK) Select
      ICK        : SCKDIVCR_ICK_Field := R7FA4M1AB.SYSTEM.Val_100;
      --  This bit is read as 0. The write value should be 0.
      Reserved_7 : SCKDIVCR_Reserved_Field := 16#0#;
      --  Flash IF Clock (FCLK) Select
      FCK        : SCKDIVCR_FCK_Field := R7FA4M1AB.SYSTEM.Val_100;
      --  This bit is read as 0. The write value should be 0.
      Reserved_8 : SCKDIVCR_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => Standard.System.Low_Order_First;

   for SCKDIVCR_Register use
     record
       PCKD at 0 range 0 .. 2;
       Reserved at 0 range 3 .. 3;
       PCKC at 0 range 4 .. 6;
       Reserved_1 at 0 range 7 .. 7;
       PCKB at 0 range 8 .. 10;
       Reserved_2 at 0 range 11 .. 11;
       PCKA at 0 range 12 .. 14;
       Reserved_3 at 0 range 15 .. 15;
       Reserved_4 at 0 range 16 .. 17;
       Reserved_5 at 0 range 18 .. 18;
       Reserved_6 at 0 range 19 .. 23;
       ICK at 0 range 24 .. 26;
       Reserved_7 at 0 range 27 .. 27;
       FCK at 0 range 28 .. 30;
       Reserved_8 at 0 range 31 .. 31;
     end record;

   --  Clock Source Select Selecting the system clock source faster than
   --  32MHz(system clock source > 32MHz ) is prohibit when SCKDIVCR.ICK[2:0]
   --  bits select the division-by-1 and MEMWAIT.MEMWAIT =0.
   type SCKSCR_CKSEL_Field is
     (--  HOCO
     Val_000,
      --  MOCO
      Val_001,
      --  LOCO
      Val_010,
      --  Main clock oscillator
      Val_011,
      --  Sub-clock oscillator
      Val_100,
      --  PLL
      Val_101,
      --  Setting prohibited
      others_k)
   with Size => 3;
   for SCKSCR_CKSEL_Field use
     (Val_000  => 0,
      Val_001  => 1,
      Val_010  => 2,
      Val_011  => 3,
      Val_100  => 4,
      Val_101  => 5,
      others_k => 7);

   subtype SCKSCR_Reserved_Field is R7FA4M1AB.UInt5;

   --  System Clock Source Control Register
   type SCKSCR_Register is record
      --  Clock Source Select Selecting the system clock source faster than
      --  32MHz(system clock source > 32MHz ) is prohibit when
      --  SCKDIVCR.ICK[2:0] bits select the division-by-1 and MEMWAIT.MEMWAIT
      --  =0.
      CKSEL    : SCKSCR_CKSEL_Field := R7FA4M1AB.SYSTEM.Val_001;
      --  These bits are read as 00000. The write value should be 00000.
      Reserved : SCKSCR_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for SCKSCR_Register use
     record
       CKSEL at 0 range 0 .. 2;
       Reserved at 0 range 3 .. 7;
     end record;

   --  PLL Stop Control
   type PLLCR_PLLSTP_Field is
     (--  PLL is operating.
     Val_0,
      --  PLL is stopped.
      Val_1)
   with Size => 1;
   for PLLCR_PLLSTP_Field use (Val_0 => 0, Val_1 => 1);

   subtype PLLCR_Reserved_Field is R7FA4M1AB.UInt7;

   --  PLL Control Register
   type PLLCR_Register is record
      --  PLL Stop Control
      PLLSTP   : PLLCR_PLLSTP_Field := R7FA4M1AB.SYSTEM.Val_1;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved : PLLCR_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for PLLCR_Register use
     record
       PLLSTP at 0 range 0 .. 0;
       Reserved at 0 range 1 .. 7;
     end record;

   --  PLL Frequency Multiplication Factor Select
   type PLLCCR2_PLLMUL_Field is
     (      --  Reset value for the field
     PLLCCR2_PLLMUL_Field_Reset,
      --  Settings prohibited.
      Val_1111,
      --  x PLLMUL[4:0] +1
      others_k)
   with Size => 5;
   for PLLCCR2_PLLMUL_Field use
     (PLLCCR2_PLLMUL_Field_Reset => 7, Val_1111 => 15, others_k => 31);

   subtype PLLCCR2_Reserved_Field is R7FA4M1AB.Bit;

   --  PLL Output Frequency Division Ratio Select
   type PLLCCR2_PLODIV_Field is
     (--  /1.
     Val_00,
      --  /2.
      Val_01,
      --  /4.
      Val_10,
      --  Setting prohibited.
      Val_11)
   with Size => 2;
   for PLLCCR2_PLODIV_Field use
     (Val_00 => 0, Val_01 => 1, Val_10 => 2, Val_11 => 3);

   --  PLL Clock Control Register2
   type PLLCCR2_Register is record
      --  PLL Frequency Multiplication Factor Select
      PLLMUL   : PLLCCR2_PLLMUL_Field := PLLCCR2_PLLMUL_Field_Reset;
      --  This bit is read as 0. The write value should be 0.
      Reserved : PLLCCR2_Reserved_Field := 16#0#;
      --  PLL Output Frequency Division Ratio Select
      PLODIV   : PLLCCR2_PLODIV_Field := R7FA4M1AB.SYSTEM.Val_00;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for PLLCCR2_Register use
     record
       PLLMUL at 0 range 0 .. 4;
       Reserved at 0 range 5 .. 5;
       PLODIV at 0 range 6 .. 7;
     end record;

   --  Memory Wait Cycle Select Note: Writing 0 to the MEMWAIT is prohibited
   --  when SCKDIVCR.ICK selects division by 1 and SCKSCR.CKSEL[2:0] bits
   --  select the system clock source that is faster than 32 MHz (ICLK > 32
   --  MHz).
   type MEMWAIT_MEMWAIT_Field is
     (--  no wait
     Val_0,
      --  wait
      Val_1)
   with Size => 1;
   for MEMWAIT_MEMWAIT_Field use (Val_0 => 0, Val_1 => 1);

   subtype MEMWAIT_Reserved_Field is R7FA4M1AB.UInt7;

   --  Memory Wait Cycle Control Register
   type MEMWAIT_Register is record
      --  Memory Wait Cycle Select Note: Writing 0 to the MEMWAIT is prohibited
      --  when SCKDIVCR.ICK selects division by 1 and SCKSCR.CKSEL[2:0] bits
      --  select the system clock source that is faster than 32 MHz (ICLK > 32
      --  MHz).
      MEMWAIT  : MEMWAIT_MEMWAIT_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved : MEMWAIT_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for MEMWAIT_Register use
     record
       MEMWAIT at 0 range 0 .. 0;
       Reserved at 0 range 1 .. 7;
     end record;

   --  Main Clock Oscillator Stop Note: MOMCR register must be set before
   --  setting MOSTP to 0.
   type MOSCCR_MOSTP_Field is
     (--  Main clock oscillator is operating.
     Val_0,
      --  Main clock oscillator is stopped.
      Val_1)
   with Size => 1;
   for MOSCCR_MOSTP_Field use (Val_0 => 0, Val_1 => 1);

   subtype MOSCCR_Reserved_Field is R7FA4M1AB.UInt7;

   --  Main Clock Oscillator Control Register
   type MOSCCR_Register is record
      --  Main Clock Oscillator Stop Note: MOMCR register must be set before
      --  setting MOSTP to 0.
      MOSTP    : MOSCCR_MOSTP_Field := R7FA4M1AB.SYSTEM.Val_1;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved : MOSCCR_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for MOSCCR_Register use
     record
       MOSTP at 0 range 0 .. 0;
       Reserved at 0 range 1 .. 7;
     end record;

   --  HOCO Stop
   type HOCOCR_HCSTP_Field is
     (--  HOCO is operating.
     Val_0,
      --  HOCO is stopped.
      Val_1)
   with Size => 1;
   for HOCOCR_HCSTP_Field use (Val_0 => 0, Val_1 => 1);

   subtype HOCOCR_Reserved_Field is R7FA4M1AB.UInt7;

   --  High-Speed On-Chip Oscillator Control Register
   type HOCOCR_Register is record
      --  HOCO Stop
      HCSTP    : HOCOCR_HCSTP_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved : HOCOCR_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for HOCOCR_Register use
     record
       HCSTP at 0 range 0 .. 0;
       Reserved at 0 range 1 .. 7;
     end record;

   --  MOCO Stop
   type MOCOCR_MCSTP_Field is
     (--  MOCO is operating.
     Val_0,
      --  MOCO is stopped.
      Val_1)
   with Size => 1;
   for MOCOCR_MCSTP_Field use (Val_0 => 0, Val_1 => 1);

   subtype MOCOCR_Reserved_Field is R7FA4M1AB.UInt7;

   --  Middle-Speed On-Chip Oscillator Control Register
   type MOCOCR_Register is record
      --  MOCO Stop
      MCSTP    : MOCOCR_MCSTP_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved : MOCOCR_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for MOCOCR_Register use
     record
       MCSTP at 0 range 0 .. 0;
       Reserved at 0 range 1 .. 7;
     end record;

   --  HOCO Clock Oscillation Stabilization Flag NOTE: The HOCOSF bit value
   --  after a reset is 1 when the OFS1.HOCOEN bit is 0. It is 0 when the
   --  OFS1.HOCOEN bit is 1.
   type OSCSF_HOCOSF_Field is
     (--  The HOCO clock is stopped or oscillation of the HOCO clock has not yet
     --  become stable.
     Val_0,
      --  Oscillation of the HOCO clock is stable so the clock is available for use
      --  as the system clock.
      Val_1)
   with Size => 1;
   for OSCSF_HOCOSF_Field use (Val_0 => 0, Val_1 => 1);

   subtype OSCSF_Reserved_Field is R7FA4M1AB.UInt2;

   --  Main Clock Oscillation Stabilization Flag
   type OSCSF_MOSCSF_Field is
     (--  MOSTP = 1 (stopping the main clock oscillator) or oscillation of the main
     --  clock has not yet become stable.
     Val_0,
      --  Oscillation of the main clock is stable so the clock is available for use
      --  as the system clock.
      Val_1)
   with Size => 1;
   for OSCSF_MOSCSF_Field use (Val_0 => 0, Val_1 => 1);

   subtype OSCSF_Reserved_Field_1 is R7FA4M1AB.Bit;

   --  PLL Clock Oscillation Stabilization Flag
   type OSCSF_PLLSF_Field is
     (--  The PLL clock is stopped or oscillation of the PLL clock has not yet become
     --  stable.
     Val_0,
      --  Oscillation of the PLL clock is stable so the clock is available for use as
      --  the system clock.
      Val_1)
   with Size => 1;
   for OSCSF_PLLSF_Field use (Val_0 => 0, Val_1 => 1);

   --  Oscillation Stabilization Flag Register
   type OSCSF_Register is record
      --  Read-only. HOCO Clock Oscillation Stabilization Flag NOTE: The HOCOSF
      --  bit value after a reset is 1 when the OFS1.HOCOEN bit is 0. It is 0
      --  when the OFS1.HOCOEN bit is 1.
      HOCOSF     : OSCSF_HOCOSF_Field;
      --  Read-only. These bits are read as 00.
      Reserved   : OSCSF_Reserved_Field;
      --  Read-only. Main Clock Oscillation Stabilization Flag
      MOSCSF     : OSCSF_MOSCSF_Field;
      --  Read-only. This bit is read as 0.
      Reserved_1 : OSCSF_Reserved_Field_1;
      --  Read-only. PLL Clock Oscillation Stabilization Flag
      PLLSF      : OSCSF_PLLSF_Field;
      --  Read-only. These bits are read as 00.
      Reserved_2 : OSCSF_Reserved_Field;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for OSCSF_Register use
     record
       HOCOSF at 0 range 0 .. 0;
       Reserved at 0 range 1 .. 2;
       MOSCSF at 0 range 3 .. 3;
       Reserved_1 at 0 range 4 .. 4;
       PLLSF at 0 range 5 .. 5;
       Reserved_2 at 0 range 6 .. 7;
     end record;

   --  Clock out source select
   type CKOCR_CKOSEL_Field is
     (--  HOCO
     Val_000,
      --  MOCO
      Val_001,
      --  LOCO
      Val_010,
      --  MOSC
      Val_011,
      --  SOSC
      Val_100,
      --  Setting prohibited
      others_k)
   with Size => 3;
   for CKOCR_CKOSEL_Field use
     (Val_000  => 0,
      Val_001  => 1,
      Val_010  => 2,
      Val_011  => 3,
      Val_100  => 4,
      others_k => 7);

   subtype CKOCR_Reserved_Field is R7FA4M1AB.Bit;

   --  Clock out input frequency Division Select
   type CKOCR_CKODIV_Field is
     (--  /1
     Val_000,
      --  /2
      Val_001,
      --  /4
      Val_010,
      --  /8
      Val_011,
      --  /16
      Val_100,
      --  /32
      Val_101,
      --  /64
      Val_110,
      --  /128
      Val_111)
   with Size => 3;
   for CKOCR_CKODIV_Field use
     (Val_000 => 0,
      Val_001 => 1,
      Val_010 => 2,
      Val_011 => 3,
      Val_100 => 4,
      Val_101 => 5,
      Val_110 => 6,
      Val_111 => 7);

   --  Clock out enable
   type CKOCR_CKOEN_Field is
     (--  Clock Out disable
     Val_0,
      --  Clock Out enable
      Val_1)
   with Size => 1;
   for CKOCR_CKOEN_Field use (Val_0 => 0, Val_1 => 1);

   --  Clock Out Control Register
   type CKOCR_Register is record
      --  Clock out source select
      CKOSEL   : CKOCR_CKOSEL_Field := R7FA4M1AB.SYSTEM.Val_000;
      --  This bit is read as 0. The write value should be 0.
      Reserved : CKOCR_Reserved_Field := 16#0#;
      --  Clock out input frequency Division Select
      CKODIV   : CKOCR_CKODIV_Field := R7FA4M1AB.SYSTEM.Val_000;
      --  Clock out enable
      CKOEN    : CKOCR_CKOEN_Field := R7FA4M1AB.SYSTEM.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for CKOCR_Register use
     record
       CKOSEL at 0 range 0 .. 2;
       Reserved at 0 range 3 .. 3;
       CKODIV at 0 range 4 .. 6;
       CKOEN at 0 range 7 .. 7;
     end record;

   --  Trace Clock operating frequency select
   type TRCKCR_TRCK_Field is
     (--  /1
     Val_0000,
      --  /2(value after reset)
      Val_0001,
      --  /4
      Val_0010,
      --  Setting prohibited
      others_k)
   with Size => 4;
   for TRCKCR_TRCK_Field use
     (Val_0000 => 0, Val_0001 => 1, Val_0010 => 2, others_k => 15);

   subtype TRCKCR_Reserved_Field is R7FA4M1AB.UInt3;

   --  Trace Clock operating enable
   type TRCKCR_TRCKEN_Field is
     (--  Operation disabled
     Val_0,
      --  Operation enabled.
      Val_1)
   with Size => 1;
   for TRCKCR_TRCKEN_Field use (Val_0 => 0, Val_1 => 1);

   --  Trace Clock Control Register
   type TRCKCR_Register is record
      --  Trace Clock operating frequency select
      TRCK     : TRCKCR_TRCK_Field := R7FA4M1AB.SYSTEM.Val_0001;
      --  These bits are read as 000. The write value should be 000.
      Reserved : TRCKCR_Reserved_Field := 16#0#;
      --  Trace Clock operating enable
      TRCKEN   : TRCKCR_TRCKEN_Field := R7FA4M1AB.SYSTEM.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for TRCKCR_Register use
     record
       TRCK at 0 range 0 .. 3;
       Reserved at 0 range 4 .. 6;
       TRCKEN at 0 range 7 .. 7;
     end record;

   --  Oscillation Stop Detection Interrupt Enable
   type OSTDCR_OSTDIE_Field is
     (--  The oscillation stop detection interrupt is disabled. Oscillation stop
     --  detection is not notified to the POEG.
     Val_0,
      --  The oscillation stop detection interrupt is enabled. Oscillation stop
      --  detection is notified to the POEG.
      Val_1)
   with Size => 1;
   for OSTDCR_OSTDIE_Field use (Val_0 => 0, Val_1 => 1);

   subtype OSTDCR_Reserved_Field is R7FA4M1AB.UInt6;

   --  Oscillation Stop Detection Function Enable
   type OSTDCR_OSTDE_Field is
     (--  Oscillation stop detection function is disabled.
     Val_0,
      --  Oscillation stop detection function is enabled.
      Val_1)
   with Size => 1;
   for OSTDCR_OSTDE_Field use (Val_0 => 0, Val_1 => 1);

   --  Oscillation Stop Detection Control Register
   type OSTDCR_Register is record
      --  Oscillation Stop Detection Interrupt Enable
      OSTDIE   : OSTDCR_OSTDIE_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 000000. The write value should be 000000.
      Reserved : OSTDCR_Reserved_Field := 16#0#;
      --  Oscillation Stop Detection Function Enable
      OSTDE    : OSTDCR_OSTDE_Field := R7FA4M1AB.SYSTEM.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for OSTDCR_Register use
     record
       OSTDIE at 0 range 0 .. 0;
       Reserved at 0 range 1 .. 6;
       OSTDE at 0 range 7 .. 7;
     end record;

   --  Oscillation Stop Detection Flag
   type OSTDSR_OSTDF_Field is
     (--  The main clock oscillation stop has not been detected.
     Val_0,
      --  The main clock oscillation stop has been detected.
      Val_1)
   with Size => 1;
   for OSTDSR_OSTDF_Field use (Val_0 => 0, Val_1 => 1);

   subtype OSTDSR_Reserved_Field is R7FA4M1AB.UInt7;

   --  Oscillation Stop Detection Status Register
   type OSTDSR_Register is record
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Oscillation Stop Detection Flag
      OSTDF    : OSTDSR_OSTDF_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved : OSTDSR_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for OSTDSR_Register use
     record
       OSTDF at 0 range 0 .. 0;
       Reserved at 0 range 1 .. 7;
     end record;

   --  LCD Source Clock (LCDSRCCLK) Select
   type SLCDSCKCR_LCDSCKSEL_Field is
     (--  LOCO
     Val_000,
      --  SOSC
      Val_001,
      --  MOSC
      Val_010,
      --  HOCO
      Val_100,
      --  Settings other than above are prohibited.
      others_k)
   with Size => 3;
   for SLCDSCKCR_LCDSCKSEL_Field use
     (Val_000 => 0, Val_001 => 1, Val_010 => 2, Val_100 => 4, others_k => 7);

   subtype SLCDSCKCR_Reserved_Field is R7FA4M1AB.UInt4;

   --  LCD Source Clock Out Enable
   type SLCDSCKCR_LCDSCKEN_Field is
     (--  LCD source clock out disabled
     Val_0,
      --  LCD source clock out enabled.
      Val_1)
   with Size => 1;
   for SLCDSCKCR_LCDSCKEN_Field use (Val_0 => 0, Val_1 => 1);

   --  Segment LCD Source Clock Control Register
   type SLCDSCKCR_Register is record
      --  LCD Source Clock (LCDSRCCLK) Select
      LCDSCKSEL : SLCDSCKCR_LCDSCKSEL_Field := R7FA4M1AB.SYSTEM.Val_000;
      --  These bits are read as 0000. The write value should be 0000.
      Reserved  : SLCDSCKCR_Reserved_Field := 16#0#;
      --  LCD Source Clock Out Enable
      LCDSCKEN  : SLCDSCKCR_LCDSCKEN_Field := R7FA4M1AB.SYSTEM.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for SLCDSCKCR_Register use
     record
       LCDSCKSEL at 0 range 0 .. 2;
       Reserved at 0 range 3 .. 6;
       LCDSCKEN at 0 range 7 .. 7;
     end record;

   --  RXD0 Snooze Request Enable NOTE: Do not set to 1 other than in
   --  asynchronous mode.
   type SNZCR_RXDREQEN_Field is
     (--  Ignore RXD0 falling edge in Software Standby mode.
     Val_0,
      --  Accept RXD0 falling edge in Standby mode as a request to transit to Snooze
      --  mode.
      Val_1)
   with Size => 1;
   for SNZCR_RXDREQEN_Field use (Val_0 => 0, Val_1 => 1);

   --  DTC Enable in Snooze Mode
   type SNZCR_SNZDTCEN_Field is
     (--  Disable DTC operation
     Val_0,
      --  Enable DTC operation
      Val_1)
   with Size => 1;
   for SNZCR_SNZDTCEN_Field use (Val_0 => 0, Val_1 => 1);

   subtype SNZCR_Reserved_Field is R7FA4M1AB.UInt5;

   --  Snooze Mode Enable
   type SNZCR_SNZE_Field is
     (--  Disable Snooze Mode
     Val_0,
      --  Enable Snooze Mode
      Val_1)
   with Size => 1;
   for SNZCR_SNZE_Field use (Val_0 => 0, Val_1 => 1);

   --  Snooze Control Register
   type SNZCR_Register is record
      --  RXD0 Snooze Request Enable NOTE: Do not set to 1 other than in
      --  asynchronous mode.
      RXDREQEN : SNZCR_RXDREQEN_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  DTC Enable in Snooze Mode
      SNZDTCEN : SNZCR_SNZDTCEN_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 00000. The write value should be 00000.
      Reserved : SNZCR_Reserved_Field := 16#0#;
      --  Snooze Mode Enable
      SNZE     : SNZCR_SNZE_Field := R7FA4M1AB.SYSTEM.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for SNZCR_Register use
     record
       RXDREQEN at 0 range 0 .. 0;
       SNZDTCEN at 0 range 1 .. 1;
       Reserved at 0 range 2 .. 6;
       SNZE at 0 range 7 .. 7;
     end record;

   --  AGT1 Underflow Snooze End Enable
   type SNZEDCR_AGTUNFED_Field is
     (--  Disable the Snooze End request
     Val_0,
      --  Enable the Snooze End request
      Val_1)
   with Size => 1;
   for SNZEDCR_AGTUNFED_Field use (Val_0 => 0, Val_1 => 1);

   --  Last DTC Transmission Completion Snooze End Enable
   type SNZEDCR_DTCZRED_Field is
     (--  Disable the Snooze End request
     Val_0,
      --  Enable the Snooze End request
      Val_1)
   with Size => 1;
   for SNZEDCR_DTCZRED_Field use (Val_0 => 0, Val_1 => 1);

   --  Not Last DTC Transmission Completion Snooze End Enable
   type SNZEDCR_DTCNZRED_Field is
     (--  Disable the Snooze End request
     Val_0,
      --  Enable the Snooze End request
      Val_1)
   with Size => 1;
   for SNZEDCR_DTCNZRED_Field use (Val_0 => 0, Val_1 => 1);

   --  ADC140 Compare Match Snooze End Enable
   type SNZEDCR_AD0MATED_Field is
     (--  Disable the Snooze End request
     Val_0,
      --  Enable the Snooze End request
      Val_1)
   with Size => 1;
   for SNZEDCR_AD0MATED_Field use (Val_0 => 0, Val_1 => 1);

   --  ADC140 Compare Mismatch Snooze End Enable
   type SNZEDCR_AD0UMTED_Field is
     (--  Disable the Snooze End request
     Val_0,
      --  Enable the Snooze End request
      Val_1)
   with Size => 1;
   for SNZEDCR_AD0UMTED_Field use (Val_0 => 0, Val_1 => 1);

   subtype SNZEDCR_Reserved_Field is R7FA4M1AB.UInt2;

   --  SCI0 Address Mismatch Snooze End Enable
   type SNZEDCR_SCI0UMTED_Field is
     (--  Disable the Snooze End request
     Val_0,
      --  Enable the Snooze End request
      Val_1)
   with Size => 1;
   for SNZEDCR_SCI0UMTED_Field use (Val_0 => 0, Val_1 => 1);

   --  Snooze End Control Register
   type SNZEDCR_Register is record
      --  AGT1 Underflow Snooze End Enable
      AGTUNFED  : SNZEDCR_AGTUNFED_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  Last DTC Transmission Completion Snooze End Enable
      DTCZRED   : SNZEDCR_DTCZRED_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  Not Last DTC Transmission Completion Snooze End Enable
      DTCNZRED  : SNZEDCR_DTCNZRED_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  ADC140 Compare Match Snooze End Enable
      AD0MATED  : SNZEDCR_AD0MATED_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  ADC140 Compare Mismatch Snooze End Enable
      AD0UMTED  : SNZEDCR_AD0UMTED_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 00. The write value should be 00.
      Reserved  : SNZEDCR_Reserved_Field := 16#0#;
      --  SCI0 Address Mismatch Snooze End Enable
      SCI0UMTED : SNZEDCR_SCI0UMTED_Field := R7FA4M1AB.SYSTEM.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for SNZEDCR_Register use
     record
       AGTUNFED at 0 range 0 .. 0;
       DTCZRED at 0 range 1 .. 1;
       DTCNZRED at 0 range 2 .. 2;
       AD0MATED at 0 range 3 .. 3;
       AD0UMTED at 0 range 4 .. 4;
       Reserved at 0 range 5 .. 6;
       SCI0UMTED at 0 range 7 .. 7;
     end record;

   --  Snooze Request Enable 0 Enable IRQ0 pin snooze request
   type SNZREQCR_SNZREQEN0_Field is
     (--  Disable snooze request
     Val_0,
      --  Enable snooze request
      Val_1)
   with Size => 1;
   for SNZREQCR_SNZREQEN0_Field use (Val_0 => 0, Val_1 => 1);

   --  SNZREQCR_SNZREQEN array
   type SNZREQCR_SNZREQEN_Field_Array is
     array (0 .. 12) of SNZREQCR_SNZREQEN0_Field
   with Component_Size => 1, Size => 13;

   --  Type definition for SNZREQCR_SNZREQEN
   type SNZREQCR_SNZREQEN_Field (As_Array : Boolean := False) is record
      case As_Array is
         when False =>
            --  SNZREQEN as a value
            Val : R7FA4M1AB.UInt13;

         when True =>
            --  SNZREQEN as an array
            Arr : SNZREQCR_SNZREQEN_Field_Array;
      end case;
   end record
   with Unchecked_Union, Size => 13;

   for SNZREQCR_SNZREQEN_Field use
     record
       Val at 0 range 0 .. 12;
       Arr at 0 range 0 .. 12;
     end record;

   subtype SNZREQCR_Reserved_Field is R7FA4M1AB.Bit;

   --  Snooze Request Enable 14 Enable IRQ14 pin snooze request
   type SNZREQCR_SNZREQEN14_Field is
     (--  Disable snooze request
     Val_0,
      --  Enable snooze request
      Val_1)
   with Size => 1;
   for SNZREQCR_SNZREQEN14_Field use (Val_0 => 0, Val_1 => 1);

   --  SNZREQCR_SNZREQEN array
   type SNZREQCR_SNZREQEN_Field_Array_1 is
     array (14 .. 15) of SNZREQCR_SNZREQEN14_Field
   with Component_Size => 1, Size => 2;

   --  Type definition for SNZREQCR_SNZREQEN
   type SNZREQCR_SNZREQEN_Field_1 (As_Array : Boolean := False) is record
      case As_Array is
         when False =>
            --  SNZREQEN as a value
            Val : R7FA4M1AB.UInt2;

         when True =>
            --  SNZREQEN as an array
            Arr : SNZREQCR_SNZREQEN_Field_Array_1;
      end case;
   end record
   with Unchecked_Union, Size => 2;

   for SNZREQCR_SNZREQEN_Field_1 use
     record
       Val at 0 range 0 .. 1;
       Arr at 0 range 0 .. 1;
     end record;

   --  Snooze Request Enable 17 Enable KINT snooze request
   type SNZREQCR_SNZREQEN17_Field is
     (--  Disable snooze request
     Val_0,
      --  Enable snooze request
      Val_1)
   with Size => 1;
   for SNZREQCR_SNZREQEN17_Field use (Val_0 => 0, Val_1 => 1);

   subtype SNZREQCR_Reserved_Field_1 is R7FA4M1AB.UInt5;

   --  Snooze Request Enable 23 Enable RTC alarm snooze request
   type SNZREQCR_SNZREQEN23_Field is
     (--  Disable snooze request
     Val_0,
      --  Enable snooze request
      Val_1)
   with Size => 1;
   for SNZREQCR_SNZREQEN23_Field use (Val_0 => 0, Val_1 => 1);

   --  SNZREQCR_SNZREQEN array
   type SNZREQCR_SNZREQEN_Field_Array_2 is
     array (23 .. 25) of SNZREQCR_SNZREQEN23_Field
   with Component_Size => 1, Size => 3;

   --  Type definition for SNZREQCR_SNZREQEN
   type SNZREQCR_SNZREQEN_Field_2 (As_Array : Boolean := False) is record
      case As_Array is
         when False =>
            --  SNZREQEN as a value
            Val : R7FA4M1AB.UInt3;

         when True =>
            --  SNZREQEN as an array
            Arr : SNZREQCR_SNZREQEN_Field_Array_2;
      end case;
   end record
   with Unchecked_Union, Size => 3;

   for SNZREQCR_SNZREQEN_Field_2 use
     record
       Val at 0 range 0 .. 2;
       Arr at 0 range 0 .. 2;
     end record;

   subtype SNZREQCR_Reserved_Field_2 is R7FA4M1AB.UInt2;

   --  Snooze Request Enable 28 Enable AGT1 underflow snooze request
   type SNZREQCR_SNZREQEN28_Field is
     (--  Disable snooze request
     Val_0,
      --  Enable snooze request
      Val_1)
   with Size => 1;
   for SNZREQCR_SNZREQEN28_Field use (Val_0 => 0, Val_1 => 1);

   --  SNZREQCR_SNZREQEN array
   type SNZREQCR_SNZREQEN_Field_Array_3 is
     array (28 .. 30) of SNZREQCR_SNZREQEN28_Field
   with Component_Size => 1, Size => 3;

   --  Type definition for SNZREQCR_SNZREQEN
   type SNZREQCR_SNZREQEN_Field_3 (As_Array : Boolean := False) is record
      case As_Array is
         when False =>
            --  SNZREQEN as a value
            Val : R7FA4M1AB.UInt3;

         when True =>
            --  SNZREQEN as an array
            Arr : SNZREQCR_SNZREQEN_Field_Array_3;
      end case;
   end record
   with Unchecked_Union, Size => 3;

   for SNZREQCR_SNZREQEN_Field_3 use
     record
       Val at 0 range 0 .. 2;
       Arr at 0 range 0 .. 2;
     end record;

   --  Snooze Request Control Register
   type SNZREQCR_Register is record
      --  Snooze Request Enable 0 Enable IRQ0 pin snooze request
      SNZREQEN   : SNZREQCR_SNZREQEN_Field :=
        (As_Array => False, Val => 16#0#);
      --  This bit is read as 0. The write value should be 0.
      Reserved   : SNZREQCR_Reserved_Field := 16#0#;
      --  Snooze Request Enable 14 Enable IRQ14 pin snooze request
      SNZREQEN_1 : SNZREQCR_SNZREQEN_Field_1 :=
        (As_Array => False, Val => 16#0#);
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : SNZREQCR_Reserved_Field := 16#0#;
      --  Snooze Request Enable 17 Enable KINT snooze request
      SNZREQEN17 : SNZREQCR_SNZREQEN17_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 00000. The write value should be 00000.
      Reserved_2 : SNZREQCR_Reserved_Field_1 := 16#0#;
      --  Snooze Request Enable 23 Enable RTC alarm snooze request
      SNZREQEN_2 : SNZREQCR_SNZREQEN_Field_2 :=
        (As_Array => False, Val => 16#0#);
      --  These bits are read as 00. The write value should be 00.
      Reserved_3 : SNZREQCR_Reserved_Field_2 := 16#0#;
      --  Snooze Request Enable 28 Enable AGT1 underflow snooze request
      SNZREQEN_3 : SNZREQCR_SNZREQEN_Field_3 :=
        (As_Array => False, Val => 16#0#);
      --  This bit is read as 0. The write value should be 0.
      Reserved_4 : SNZREQCR_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => Standard.System.Low_Order_First;

   for SNZREQCR_Register use
     record
       SNZREQEN at 0 range 0 .. 12;
       Reserved at 0 range 13 .. 13;
       SNZREQEN_1 at 0 range 14 .. 15;
       Reserved_1 at 0 range 16 .. 16;
       SNZREQEN17 at 0 range 17 .. 17;
       Reserved_2 at 0 range 18 .. 22;
       SNZREQEN_2 at 0 range 23 .. 25;
       Reserved_3 at 0 range 26 .. 27;
       SNZREQEN_3 at 0 range 28 .. 30;
       Reserved_4 at 0 range 31 .. 31;
     end record;

   --  Selecting ON/OFF of the Flash Memory Operation
   type FLSTOP_FLSTOP_Field is
     (--  Code flash and data flash memory operates
     Val_0,
      --  Code flash and data flash memory stops.
      Val_1)
   with Size => 1;
   for FLSTOP_FLSTOP_Field use (Val_0 => 0, Val_1 => 1);

   subtype FLSTOP_Reserved_Field is R7FA4M1AB.UInt3;

   --  Flash Memory Operation Status Flag
   type FLSTOP_FLSTPF_Field is
     (--  Transition completed
     Val_0,
      --  During transition (from the flash-stop-status to flash-operating-status or
      --  vice versa)
      Val_1)
   with Size => 1;
   for FLSTOP_FLSTPF_Field use (Val_0 => 0, Val_1 => 1);

   --  Flash Operation Control Register
   type FLSTOP_Register is record
      --  Selecting ON/OFF of the Flash Memory Operation
      FLSTOP     : FLSTOP_FLSTOP_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved   : FLSTOP_Reserved_Field := 16#0#;
      --  Read-only. Flash Memory Operation Status Flag
      FLSTPF     : FLSTOP_FLSTPF_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_1 : FLSTOP_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for FLSTOP_Register use
     record
       FLSTOP at 0 range 0 .. 0;
       Reserved at 0 range 1 .. 3;
       FLSTPF at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 7;
     end record;

   --  Operating Power Control Mode Select
   type OPCCR_OPCM_Field is
     (--  High-speed mode
     Val_00,
      --  Middle-speed mode
      Val_01,
      --  Low-voltage mode
      Val_10,
      --  Low-speed mode
      Val_11)
   with Size => 2;
   for OPCCR_OPCM_Field use
     (Val_00 => 0, Val_01 => 1, Val_10 => 2, Val_11 => 3);

   subtype OPCCR_Reserved_Field is R7FA4M1AB.UInt2;

   --  Operating Power Control Mode Transition Status Flag
   type OPCCR_OPCMTSF_Field is
     (--  Transition completed
     Val_0,
      --  During transition
      Val_1)
   with Size => 1;
   for OPCCR_OPCMTSF_Field use (Val_0 => 0, Val_1 => 1);

   subtype OPCCR_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Operating Power Control Register
   type OPCCR_Register is record
      --  Operating Power Control Mode Select
      OPCM       : OPCCR_OPCM_Field := R7FA4M1AB.SYSTEM.Val_10;
      --  These bits are read as 00. The write value should be 00.
      Reserved   : OPCCR_Reserved_Field := 16#0#;
      --  Read-only. Operating Power Control Mode Transition Status Flag
      OPCMTSF    : OPCCR_OPCMTSF_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_1 : OPCCR_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for OPCCR_Register use
     record
       OPCM at 0 range 0 .. 1;
       Reserved at 0 range 2 .. 3;
       OPCMTSF at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 7;
     end record;

   --  Main clock oscillator wait time setting
   type MOSCWTCR_MSTS_Field is
     (--  Wait time = 2 cycles (0.25 us)
     Val_0000,
      --  Wait time = 1024 cycles (128 us)
      Val_0001,
      --  Wait time = 2048 cycles (256 us)
      Val_0010,
      --  Wait time = 4096 cycles (512 us)
      Val_0011,
      --  Wait time = 8192 cycles (1024 us)
      Val_0100,
      --  Wait time = 16384 cycles (2048 us) (value after reset)
      Val_0101,
      --  Wait time = 32768 cycles (4096 us)
      Val_0110,
      --  Wait time = 65536 cycles (8192 us)
      Val_0111,
      --  Wait time = 131072 cycles (16384 us)
      Val_1000,
      --  Wait time = 262144 cycles (32768 us).
      Val_1001,
      --  Setting prohibited
      others_k)
   with Size => 4;
   for MOSCWTCR_MSTS_Field use
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
      others_k => 15);

   subtype MOSCWTCR_Reserved_Field is R7FA4M1AB.UInt4;

   --  Main Clock Oscillator Wait Control Register
   type MOSCWTCR_Register is record
      --  Main clock oscillator wait time setting
      MSTS     : MOSCWTCR_MSTS_Field := R7FA4M1AB.SYSTEM.Val_0101;
      --  These bits are read as 0000. The write value should be 0000.
      Reserved : MOSCWTCR_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for MOSCWTCR_Register use
     record
       MSTS at 0 range 0 .. 3;
       Reserved at 0 range 4 .. 7;
     end record;

   --  HOCO wait time setting
   type HOCOWTCR_HSTS_Field is
     (      --  If HOCO frequency is other than 64MHz, should set the value to 101b.
     Val_101,
      --  If HOCO frequency = 64MHz, should set the value to 110b.
      Val_110,
      --  Setting prohibited
      others_k)
   with Size => 3;
   for HOCOWTCR_HSTS_Field use (Val_101 => 5, Val_110 => 6, others_k => 7);

   subtype HOCOWTCR_Reserved_Field is R7FA4M1AB.UInt5;

   --  High-Speed On-Chip Oscillator Wait Control Register
   type HOCOWTCR_Register is record
      --  HOCO wait time setting
      HSTS     : HOCOWTCR_HSTS_Field := R7FA4M1AB.SYSTEM.Val_101;
      --  These bits are read as 00000. The write value should be 00000.
      Reserved : HOCOWTCR_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for HOCOWTCR_Register use
     record
       HSTS at 0 range 0 .. 2;
       Reserved at 0 range 3 .. 7;
     end record;

   --  Sub Operating Power Control Mode Select
   type SOPCCR_SOPCM_Field is
     (--  Other than Subosc-speed mode
     Val_0,
      --  Subosc-speed mode
      Val_1)
   with Size => 1;
   for SOPCCR_SOPCM_Field use (Val_0 => 0, Val_1 => 1);

   subtype SOPCCR_Reserved_Field is R7FA4M1AB.UInt3;

   --  Sub Operating Power Control Mode Transition Status Flag
   type SOPCCR_SOPCMTSF_Field is
     (--  Transition completed
     Val_0,
      --  During transition
      Val_1)
   with Size => 1;
   for SOPCCR_SOPCMTSF_Field use (Val_0 => 0, Val_1 => 1);

   --  Sub Operating Power Control Register
   type SOPCCR_Register is record
      --  Sub Operating Power Control Mode Select
      SOPCM      : SOPCCR_SOPCM_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved   : SOPCCR_Reserved_Field := 16#0#;
      --  Read-only. Sub Operating Power Control Mode Transition Status Flag
      SOPCMTSF   : SOPCCR_SOPCMTSF_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_1 : SOPCCR_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for SOPCCR_Register use
     record
       SOPCM at 0 range 0 .. 0;
       Reserved at 0 range 1 .. 3;
       SOPCMTSF at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 7;
     end record;

   --  Independent Watchdog Timer Reset Detect Flag Note: Only 0 can be written
   --  to clear the flag. The reset flag must be written as 0 after the reset
   --  flag is read as 1.
   type RSTSR1_IWDTRF_Field is
     (--  Independent watchdog timer reset not detected.
     Val_0,
      --  Independent watchdog timer reset detected.
      Val_1)
   with Size => 1;
   for RSTSR1_IWDTRF_Field use (Val_0 => 0, Val_1 => 1);

   --  Watchdog Timer Reset Detect Flag Note: Only 0 can be written to clear
   --  the flag. The reset flag must be written as 0 after the reset flag is
   --  read as 1.
   type RSTSR1_WDTRF_Field is
     (--  Watchdog timer reset not detected.
     Val_0,
      --  Watchdog timer reset detected.
      Val_1)
   with Size => 1;
   for RSTSR1_WDTRF_Field use (Val_0 => 0, Val_1 => 1);

   --  Software Reset Detect Flag Note: Only 0 can be written to clear the
   --  flag. The reset flag must be written as 0 after the reset flag is read
   --  as 1.
   type RSTSR1_SWRF_Field is
     (--  Software reset not detected.
     Val_0,
      --  Software reset detected.
      Val_1)
   with Size => 1;
   for RSTSR1_SWRF_Field use (Val_0 => 0, Val_1 => 1);

   subtype RSTSR1_Reserved_Field is R7FA4M1AB.UInt5;

   --  RAM Parity Error Reset Detect Flag Note: Only 0 can be written to clear
   --  the flag. The reset flag must be written as 0 after the reset flag is
   --  read as 1.
   type RSTSR1_RPERF_Field is
     (--  RAM parity error reset not detected.
     Val_0,
      --  RAM parity error reset detected.
      Val_1)
   with Size => 1;
   for RSTSR1_RPERF_Field use (Val_0 => 0, Val_1 => 1);

   --  RAM ECC Error Reset Detect Flag Note: Only 0 can be written to clear the
   --  flag. The reset flag must be written as 0 after the reset flag is read
   --  as 1.
   type RSTSR1_REERF_Field is
     (--  RAM ECC error reset not detected.
     Val_0,
      --  RAM ECC error reset detected.
      Val_1)
   with Size => 1;
   for RSTSR1_REERF_Field use (Val_0 => 0, Val_1 => 1);

   --  Bus Slave MPU Reset Detect Flag Note: Only 0 can be written to clear the
   --  flag. The reset flag must be written as 0 after the reset flag is read
   --  as 1.
   type RSTSR1_BUSSRF_Field is
     (--  Bus Slave MPU reset not detected.
     Val_0,
      --  Bus Slave MPU reset detected.
      Val_1)
   with Size => 1;
   for RSTSR1_BUSSRF_Field use (Val_0 => 0, Val_1 => 1);

   --  Bus Master MPU Reset Detect Flag Note: Only 0 can be written to clear
   --  the flag. The reset flag must be written as 0 after the reset flag is
   --  read as 1.
   type RSTSR1_BUSMRF_Field is
     (--  Bus Master MPU reset not detected.
     Val_0,
      --  Bus Master MPU reset detected.
      Val_1)
   with Size => 1;
   for RSTSR1_BUSMRF_Field use (Val_0 => 0, Val_1 => 1);

   --  SP Error Reset Detect Flag Note: Only 0 can be written to clear the
   --  flag. The reset flag must be written as 0 after the reset flag is read
   --  as 1.
   type RSTSR1_SPERF_Field is
     (--  SP error reset not detected.
     Val_0,
      --  SP error reset detected.
      Val_1)
   with Size => 1;
   for RSTSR1_SPERF_Field use (Val_0 => 0, Val_1 => 1);

   subtype RSTSR1_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Reset Status Register 1
   type RSTSR1_Register is record
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Independent Watchdog Timer Reset Detect Flag Note:
      --  Only 0 can be written to clear the flag. The reset flag must be
      --  written as 0 after the reset flag is read as 1.
      IWDTRF     : RSTSR1_IWDTRF_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Watchdog Timer Reset Detect Flag Note: Only 0 can be
      --  written to clear the flag. The reset flag must be written as 0 after
      --  the reset flag is read as 1.
      WDTRF      : RSTSR1_WDTRF_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Software Reset Detect Flag Note: Only 0 can be written
      --  to clear the flag. The reset flag must be written as 0 after the
      --  reset flag is read as 1.
      SWRF       : RSTSR1_SWRF_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 00000. The write value should be 00000.
      Reserved   : RSTSR1_Reserved_Field := 16#0#;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. RAM Parity Error Reset Detect Flag Note: Only 0 can be
      --  written to clear the flag. The reset flag must be written as 0 after
      --  the reset flag is read as 1.
      RPERF      : RSTSR1_RPERF_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. RAM ECC Error Reset Detect Flag Note: Only 0 can be
      --  written to clear the flag. The reset flag must be written as 0 after
      --  the reset flag is read as 1.
      REERF      : RSTSR1_REERF_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Bus Slave MPU Reset Detect Flag Note: Only 0 can be
      --  written to clear the flag. The reset flag must be written as 0 after
      --  the reset flag is read as 1.
      BUSSRF     : RSTSR1_BUSSRF_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Bus Master MPU Reset Detect Flag Note: Only 0 can be
      --  written to clear the flag. The reset flag must be written as 0 after
      --  the reset flag is read as 1.
      BUSMRF     : RSTSR1_BUSMRF_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. SP Error Reset Detect Flag Note: Only 0 can be written
      --  to clear the flag. The reset flag must be written as 0 after the
      --  reset flag is read as 1.
      SPERF      : RSTSR1_SPERF_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_1 : RSTSR1_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => Standard.System.Low_Order_First;

   for RSTSR1_Register use
     record
       IWDTRF at 0 range 0 .. 0;
       WDTRF at 0 range 1 .. 1;
       SWRF at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 7;
       RPERF at 0 range 8 .. 8;
       REERF at 0 range 9 .. 9;
       BUSSRF at 0 range 10 .. 10;
       BUSMRF at 0 range 11 .. 11;
       SPERF at 0 range 12 .. 12;
       Reserved_1 at 0 range 13 .. 15;
     end record;

   --  Backup Register Access Control Register
   type BKRACR_BKRACS_Field is
     (--  Access control disable. When System clock source is SOSC or LOCO.
     Val_000,
      --  Access control enable. System clock source is other than SOSC or LOCO.
      Val_110,
      --  Setting prohibited
      others_k)
   with Size => 3;
   for BKRACR_BKRACS_Field use (Val_000 => 0, Val_110 => 6, others_k => 7);

   subtype BKRACR_Reserved_Field is R7FA4M1AB.UInt5;

   --  Backup Register Access Control Register
   type BKRACR_Register is record
      --  Backup Register Access Control Register
      BKRACS   : BKRACR_BKRACS_Field := R7FA4M1AB.SYSTEM.Val_110;
      --  These bits are read as 00000. The write value should be 00000.
      Reserved : BKRACR_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for BKRACR_Register use
     record
       BKRACS at 0 range 0 .. 2;
       Reserved at 0 range 3 .. 7;
     end record;

   --  USB Clock Source Select
   type USBCKCR_USBCLKSEL_Field is
     (--  PLL(Value after reset)
     Val_0,
      --  HOCO
      Val_1)
   with Size => 1;
   for USBCKCR_USBCLKSEL_Field use (Val_0 => 0, Val_1 => 1);

   subtype USBCKCR_Reserved_Field is R7FA4M1AB.UInt7;

   --  USB Clock Control register
   type USBCKCR_Register is record
      --  USB Clock Source Select
      USBCLKSEL : USBCKCR_USBCLKSEL_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved  : USBCKCR_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for USBCKCR_Register use
     record
       USBCLKSEL at 0 range 0 .. 0;
       Reserved at 0 range 1 .. 7;
     end record;

   --  Voltage Monitor Interrupt Generation Condition Select
   type LVDCR10_IDTSEL_Field is
     (--  When VCC>=Vdet (rise) is detected
     Val_00,
      --  When VCC<Vdet (drop) is detected
      Val_01,
      --  When drop and rise are detected
      Val_10,
      --  Settings prohibited
      Val_11)
   with Size => 2;
   for LVDCR10_IDTSEL_Field use
     (Val_00 => 0, Val_01 => 1, Val_10 => 2, Val_11 => 3);

   --  Voltage Monitor Interrupt Type Select
   type LVDCR10_IRQSEL_Field is
     (--  Non-maskable interrupt
     Val_0,
      --  Maskable interrupt
      Val_1)
   with Size => 1;
   for LVDCR10_IRQSEL_Field use (Val_0 => 0, Val_1 => 1);

   subtype LVDCR_Reserved_Field is R7FA4M1AB.UInt5;

   --  Voltage Monitor %s Circuit Control Register 1
   type LVDCR_Register is record
      --  Voltage Monitor Interrupt Generation Condition Select
      IDTSEL   : LVDCR10_IDTSEL_Field := R7FA4M1AB.SYSTEM.Val_01;
      --  Voltage Monitor Interrupt Type Select
      IRQSEL   : LVDCR10_IRQSEL_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 00000. The write value should be 00000.
      Reserved : LVDCR_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for LVDCR_Register use
     record
       IDTSEL at 0 range 0 .. 1;
       IRQSEL at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 7;
     end record;

   --  Voltage Monitor Voltage Change Detection Flag NOTE: Only 0 can be
   --  written to this bit. After writing 0 to this bit, it takes 2 system
   --  clock cycles for the bit to be read as 0.
   type LVDSR0_DET_Field is
     (--  Not detected
     Val_0,
      --  Vdet1 passage detection
      Val_1)
   with Size => 1;
   for LVDSR0_DET_Field use (Val_0 => 0, Val_1 => 1);

   --  Voltage Monitor 1 Signal Monitor Flag
   type LVDSR0_MON_Field is
     (--  VCC < Vdet
     Val_0,
      --  VCC >= Vdet or MON bit is disabled
      Val_1)
   with Size => 1;
   for LVDSR0_MON_Field use (Val_0 => 0, Val_1 => 1);

   subtype LVDSR_Reserved_Field is R7FA4M1AB.UInt6;

   --  Voltage Monitor %s Circuit Status Register
   type LVDSR_Register is record
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Voltage Monitor Voltage Change Detection Flag NOTE:
      --  Only 0 can be written to this bit. After writing 0 to this bit, it
      --  takes 2 system clock cycles for the bit to be read as 0.
      DET      : LVDSR0_DET_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  Read-only. Voltage Monitor 1 Signal Monitor Flag
      MON      : LVDSR0_MON_Field := R7FA4M1AB.SYSTEM.Val_1;
      --  These bits are read as 000000. The write value should be 000000.
      Reserved : LVDSR_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for LVDSR_Register use
     record
       DET at 0 range 0 .. 0;
       MON at 0 range 1 .. 1;
       Reserved at 0 range 2 .. 7;
     end record;

   --  Protect Bit 0
   type PRCR_PRC0_Field is
     (--  Writes protected.
     Val_0,
      --  Writes not protected.
      Val_1)
   with Size => 1;
   for PRCR_PRC0_Field use (Val_0 => 0, Val_1 => 1);

   --  PRCR_PRC array
   type PRCR_PRC_Field_Array is array (0 .. 1) of PRCR_PRC0_Field
   with Component_Size => 1, Size => 2;

   --  Type definition for PRCR_PRC
   type PRCR_PRC_Field (As_Array : Boolean := False) is record
      case As_Array is
         when False =>
            --  PRC as a value
            Val : R7FA4M1AB.UInt2;

         when True =>
            --  PRC as an array
            Arr : PRCR_PRC_Field_Array;
      end case;
   end record
   with Unchecked_Union, Size => 2;

   for PRCR_PRC_Field use
     record
       Val at 0 range 0 .. 1;
       Arr at 0 range 0 .. 1;
     end record;

   subtype PRCR_Reserved_Field is R7FA4M1AB.Bit;

   --  Protect Bit 3
   type PRCR_PRC3_Field is
     (--  Writes protected.
     Val_0,
      --  Writes not protected.
      Val_1)
   with Size => 1;
   for PRCR_PRC3_Field use (Val_0 => 0, Val_1 => 1);

   subtype PRCR_Reserved_Field_1 is R7FA4M1AB.UInt4;

   --  PRC Key Code
   type PRCR_PRKEY_Field is
     (      --  Enables writing to the PRCR register.
     Val_0x5A,
      --  Disables writing to the PRCR register.
      others_k)
   with Size => 8;
   for PRCR_PRKEY_Field use (Val_0x5A => 90, others_k => 255);

   --  Protect Register
   type PRCR_Register is record
      --  Protect Bit 0
      PRC        : PRCR_PRC_Field := (As_Array => False, Val => 16#0#);
      --  This bit is read as 0. The write value should be 0.
      Reserved   : PRCR_Reserved_Field := 16#0#;
      --  Protect Bit 3
      PRC3       : PRCR_PRC3_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 0000. The write value should be 0000.
      Reserved_1 : PRCR_Reserved_Field_1 := 16#0#;
      --  Write-only. PRC Key Code
      PRKEY      : PRCR_PRKEY_Field := R7FA4M1AB.SYSTEM.others_k;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => Standard.System.Low_Order_First;

   for PRCR_Register use
     record
       PRC at 0 range 0 .. 1;
       Reserved at 0 range 2 .. 2;
       PRC3 at 0 range 3 .. 3;
       Reserved_1 at 0 range 4 .. 7;
       PRKEY at 0 range 8 .. 15;
     end record;

   subtype SYOCDCR_Reserved_Field is R7FA4M1AB.UInt7;

   --  Debugger Enable bit
   type SYOCDCR_DBGEN_Field is
     (--  On-chip debugger is disabled
     Val_0,
      --  On-chip debugger is enabled
      Val_1)
   with Size => 1;
   for SYOCDCR_DBGEN_Field use (Val_0 => 0, Val_1 => 1);

   --  System Control OCD Control Register
   type SYOCDCR_Register is record
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved : SYOCDCR_Reserved_Field := 16#0#;
      --  Debugger Enable bit
      DBGEN    : SYOCDCR_DBGEN_Field := R7FA4M1AB.SYSTEM.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for SYOCDCR_Register use
     record
       Reserved at 0 range 0 .. 6;
       DBGEN at 0 range 7 .. 7;
     end record;

   --  Power-On Reset Detect Flag Note: Only 0 can be written to clear the
   --  flag. The reset flag must be written with 0 after the reset flag is read
   --  as 1.
   type RSTSR0_PORF_Field is
     (--  Power-on reset not detected.
     Val_0,
      --  Power-on reset detected.
      Val_1)
   with Size => 1;
   for RSTSR0_PORF_Field use (Val_0 => 0, Val_1 => 1);

   --  Voltage Monitor 0 Reset Detect Flag Note: Only 0 can be written to clear
   --  the flag. The reset flag must be written with 0 after the reset flag is
   --  read as 1.
   type RSTSR0_LVD0RF_Field is
     (--  Voltage Monitor 0 reset not detected.
     Val_0,
      --  Voltage Monitor 0 reset detected.
      Val_1)
   with Size => 1;
   for RSTSR0_LVD0RF_Field use (Val_0 => 0, Val_1 => 1);

   --  Voltage Monitor 1 Reset Detect Flag Note: Only 0 can be written to clear
   --  the flag. The reset flag must be written with 0 after the reset flag is
   --  read as 1.
   type RSTSR0_LVD1RF_Field is
     (--  Voltage Monitor 1 reset not detected.
     Val_0,
      --  Voltage Monitor 1 reset detected.
      Val_1)
   with Size => 1;
   for RSTSR0_LVD1RF_Field use (Val_0 => 0, Val_1 => 1);

   --  Voltage Monitor 2 Reset Detect Flag Note: Only 0 can be written to clear
   --  the flag. The reset flag must be written with 0 after the reset flag is
   --  read as 1.
   type RSTSR0_LVD2RF_Field is
     (--  Voltage Monitor 2 reset not detected.
     Val_0,
      --  Voltage Monitor 2 reset detected.
      Val_1)
   with Size => 1;
   for RSTSR0_LVD2RF_Field use (Val_0 => 0, Val_1 => 1);

   subtype RSTSR0_Reserved_Field is R7FA4M1AB.UInt4;

   --  Reset Status Register 0
   type RSTSR0_Register is record
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Power-On Reset Detect Flag Note: Only 0 can be written
      --  to clear the flag. The reset flag must be written with 0 after the
      --  reset flag is read as 1.
      PORF     : RSTSR0_PORF_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Voltage Monitor 0 Reset Detect Flag Note: Only 0 can
      --  be written to clear the flag. The reset flag must be written with 0
      --  after the reset flag is read as 1.
      LVD0RF   : RSTSR0_LVD0RF_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Voltage Monitor 1 Reset Detect Flag Note: Only 0 can
      --  be written to clear the flag. The reset flag must be written with 0
      --  after the reset flag is read as 1.
      LVD1RF   : RSTSR0_LVD1RF_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Voltage Monitor 2 Reset Detect Flag Note: Only 0 can
      --  be written to clear the flag. The reset flag must be written with 0
      --  after the reset flag is read as 1.
      LVD2RF   : RSTSR0_LVD2RF_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 0000. The write value should be 0000.
      Reserved : RSTSR0_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for RSTSR0_Register use
     record
       PORF at 0 range 0 .. 0;
       LVD0RF at 0 range 1 .. 1;
       LVD1RF at 0 range 2 .. 2;
       LVD2RF at 0 range 3 .. 3;
       Reserved at 0 range 4 .. 7;
     end record;

   --  Cold/Warm Start Determination Flag Note: Only 1 can be written to set
   --  the flag.
   type RSTSR2_CWSF_Field is
     (--  Cold start
     Val_0,
      --  Warm start
      Val_1)
   with Size => 1;
   for RSTSR2_CWSF_Field use (Val_0 => 0, Val_1 => 1);

   subtype RSTSR2_Reserved_Field is R7FA4M1AB.UInt7;

   --  Reset Status Register 2
   type RSTSR2_Register is record
      --  Write data bit of one shall set (set to one) the corresponding bit in
      --  the field. *** This field is modified following a read operation ***.
      --  Cold/Warm Start Determination Flag Note: Only 1 can be written to set
      --  the flag.
      CWSF     : RSTSR2_CWSF_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved : RSTSR2_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for RSTSR2_Register use
     record
       CWSF at 0 range 0 .. 0;
       Reserved at 0 range 1 .. 7;
     end record;

   subtype MOMCR_Reserved_Field is R7FA4M1AB.UInt3;

   --  Main Clock Oscillator Drive Capability 1 Switching
   type MOMCR_MODRV1_Field is
     (--  10 MHz to 20 MHz
     Val_0,
      --  1 MHz to 10 MHz.
      Val_1)
   with Size => 1;
   for MOMCR_MODRV1_Field use (Val_0 => 0, Val_1 => 1);

   subtype MOMCR_Reserved_Field_1 is R7FA4M1AB.UInt2;

   --  Main Clock Oscillator Switching
   type MOMCR_MOSEL_Field is
     (--  Resonator
     Val_0,
      --  External clock input
      Val_1)
   with Size => 1;
   for MOMCR_MOSEL_Field use (Val_0 => 0, Val_1 => 1);

   subtype MOMCR_Reserved_Field_2 is R7FA4M1AB.Bit;

   --  Main Clock Oscillator Mode Oscillation Control Register
   type MOMCR_Register is record
      --  These bits are read as 000. The write value should be 000.
      Reserved   : MOMCR_Reserved_Field := 16#0#;
      --  Main Clock Oscillator Drive Capability 1 Switching
      MODRV1     : MOMCR_MODRV1_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 00. The write value should be 00.
      Reserved_1 : MOMCR_Reserved_Field_1 := 16#0#;
      --  Main Clock Oscillator Switching
      MOSEL      : MOMCR_MOSEL_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_2 : MOMCR_Reserved_Field_2 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for MOMCR_Register use
     record
       Reserved at 0 range 0 .. 2;
       MODRV1 at 0 range 3 .. 3;
       Reserved_1 at 0 range 4 .. 5;
       MOSEL at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 7;
     end record;

   --  LVCMPCR_Reserved array element
   subtype LVCMPCR_Reserved_Element is R7FA4M1AB.UInt2;

   --  LVCMPCR_Reserved array
   type LVCMPCR_Reserved_Field_Array is
     array (1 .. 2) of LVCMPCR_Reserved_Element
   with Component_Size => 2, Size => 4;

   --  Type definition for LVCMPCR_Reserved
   type LVCMPCR_Reserved_Field (As_Array : Boolean := False) is record
      case As_Array is
         when False =>
            --  Reserved as a value
            Val : R7FA4M1AB.UInt4;

         when True =>
            --  Reserved as an array
            Arr : LVCMPCR_Reserved_Field_Array;
      end case;
   end record
   with Unchecked_Union, Size => 4;

   for LVCMPCR_Reserved_Field use
     record
       Val at 0 range 0 .. 3;
       Arr at 0 range 0 .. 3;
     end record;

   subtype LVCMPCR_Reserved_Field_1 is R7FA4M1AB.Bit;

   --  Voltage Detection 1 Enable
   type LVCMPCR_LVD1E_Field is
     (--  Voltage detection 1 circuit disabled
     Val_0,
      --  Voltage detection 1 circuit enabled
      Val_1)
   with Size => 1;
   for LVCMPCR_LVD1E_Field use (Val_0 => 0, Val_1 => 1);

   --  Voltage Detection 2 Enable
   type LVCMPCR_LVD2E_Field is
     (--  Voltage detection 2 circuit disabled
     Val_0,
      --  Voltage detection 2 circuit enabled
      Val_1)
   with Size => 1;
   for LVCMPCR_LVD2E_Field use (Val_0 => 0, Val_1 => 1);

   --  Voltage Monitor Circuit Control Register
   type LVCMPCR_Register is record
      --  These bits are read as 00. The write value should be 00.
      Reserved   : LVCMPCR_Reserved_Field := (As_Array => False, Val => 16#0#);
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : LVCMPCR_Reserved_Field_1 := 16#0#;
      --  Voltage Detection 1 Enable
      LVD1E      : LVCMPCR_LVD1E_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  Voltage Detection 2 Enable
      LVD2E      : LVCMPCR_LVD2E_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_2 : LVCMPCR_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for LVCMPCR_Register use
     record
       Reserved at 0 range 0 .. 3;
       Reserved_1 at 0 range 4 .. 4;
       LVD1E at 0 range 5 .. 5;
       LVD2E at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 7;
     end record;

   --  Voltage Detection 1 Level Select (Standard voltage during drop in
   --  voltage)
   type LVDLVLR_LVD1LVL_Field is
     (--  4.29V (Vdet1_0)
     Val_00000,
      --  4.14V (Vdet1_1)
      Val_00001,
      --  4.02V (Vdet1_2)
      Val_00010,
      --  3.84V (Vdet1_3)
      Val_00011,
      --  3.10V (Vdet1_4)
      Val_00100,
      --  3.00V (Vdet1_5)
      Val_00101,
      --  2.90V (Vdet1_6)
      Val_00110,
      --  2.79V (Vdet1_7)
      Val_00111,
      --  2.68V (Vdet1_8)
      Val_01000,
      --  2.58V (Vdet1_9)
      Val_01001,
      --  2.48V (Vdet1_A)
      Val_01010,
      --  2.20V (Vdet1_B)
      Val_01011,
      --  1.96V (Vdet1_C)
      Val_01100,
      --  1.86V (Vdet1_D)
      Val_01101,
      --  1.75V (Vdet1_E)
      Val_01110,
      --  1.65V (Vdet1_F)
      Val_01111,
      --  Setting prohibited
      others_k)
   with Size => 5;
   for LVDLVLR_LVD1LVL_Field use
     (Val_00000 => 0,
      Val_00001 => 1,
      Val_00010 => 2,
      Val_00011 => 3,
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
      others_k  => 31);

   --  Voltage Detection 2 Level Select (Standard voltage during drop in
   --  voltage)
   type LVDLVLR_LVD2LVL_Field is
     (--  4.29V (Vdet2_0)
     Val_000,
      --  4.14V (Vdet2_1)
      Val_001,
      --  4.02V (Vdet2_2)
      Val_010,
      --  3.84V (Vdet2_3)
      Val_011,
      --  Setting prohibited.
      others_k)
   with Size => 3;
   for LVDLVLR_LVD2LVL_Field use
     (Val_000 => 0, Val_001 => 1, Val_010 => 2, Val_011 => 3, others_k => 7);

   --  Voltage Detection Level Select Register
   type LVDLVLR_Register is record
      --  Voltage Detection 1 Level Select (Standard voltage during drop in
      --  voltage)
      LVD1LVL : LVDLVLR_LVD1LVL_Field := R7FA4M1AB.SYSTEM.Val_00111;
      --  Voltage Detection 2 Level Select (Standard voltage during drop in
      --  voltage)
      LVD2LVL : LVDLVLR_LVD2LVL_Field := R7FA4M1AB.SYSTEM.Val_000;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for LVDLVLR_Register use
     record
       LVD1LVL at 0 range 0 .. 4;
       LVD2LVL at 0 range 5 .. 7;
     end record;

   --  Voltage Monitor Interrupt/Reset Enable
   type LVDCR0_RIE_Field is
     (--  Disabled
     Val_0,
      --  Enabled
      Val_1)
   with Size => 1;
   for LVDCR0_RIE_Field use (Val_0 => 0, Val_1 => 1);

   subtype LVDCR0_Reserved_Field is R7FA4M1AB.Bit;

   --  Voltage Monitor Circuit Comparison Result Output Enable
   type LVDCR0_CMPE_Field is
     (--  Voltage Monitor circuit comparison result output disabled.
     Val_0,
      --  Voltage Monitor circuit comparison result output enabled.
      Val_1)
   with Size => 1;
   for LVDCR0_CMPE_Field use (Val_0 => 0, Val_1 => 1);

   subtype LVDCR0_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Voltage Monitor Circuit Mode Select
   type LVDCR0_RI_Field is
     (--  Voltage Monitor interrupt during Vdet1 passage
     Val_0,
      --  Voltage Monitor reset enabled when the voltage falls to and below Vdet1
      Val_1)
   with Size => 1;
   for LVDCR0_RI_Field use (Val_0 => 0, Val_1 => 1);

   --  Voltage Monitor Reset Negate Select
   type LVDCR0_RN_Field is
     (--  Negation follows a stabilization time (tLVD) after VCC > Vdet1 is detected.
     Val_0,
      --  Negation follows a stabilization time (tLVD) after assertion of the LVD
      --  reset.
      Val_1)
   with Size => 1;
   for LVDCR0_RN_Field use (Val_0 => 0, Val_1 => 1);

   --  Voltage Monitor %s Circuit Control Register 0
   type LVDCR0_Register is record
      --  Voltage Monitor Interrupt/Reset Enable
      RIE        : LVDCR0_RIE_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : LVDCR0_Reserved_Field := 16#0#;
      --  Voltage Monitor Circuit Comparison Result Output Enable
      CMPE       : LVDCR0_CMPE_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_1 : LVDCR0_Reserved_Field_1 := 16#0#;
      --  Voltage Monitor Circuit Mode Select
      RI         : LVDCR0_RI_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  Voltage Monitor Reset Negate Select
      RN         : LVDCR0_RN_Field := R7FA4M1AB.SYSTEM.Val_1;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for LVDCR0_Register use
     record
       RIE at 0 range 0 .. 0;
       Reserved at 0 range 1 .. 1;
       CMPE at 0 range 2 .. 2;
       Reserved_1 at 0 range 3 .. 5;
       RI at 0 range 6 .. 6;
       RN at 0 range 7 .. 7;
     end record;

   --  Voltage Monitor %s Circuit Control Register 0
   type LVDCR0_Registers is array (0 .. 1) of LVDCR0_Register;

   --  Battery Power supply Switch Stop
   type VBTCR1_BPWSWSTP_Field is
     (--  Battery Power supply Switch Enable
     Val_0,
      --  Battery Power supply Switch stop
      Val_1)
   with Size => 1;
   for VBTCR1_BPWSWSTP_Field use (Val_0 => 0, Val_1 => 1);

   subtype VBTCR1_Reserved_Field is R7FA4M1AB.UInt7;

   --  VBATT Control Register1
   type VBTCR1_Register is record
      --  Battery Power supply Switch Stop
      BPWSWSTP : VBTCR1_BPWSWSTP_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved : VBTCR1_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for VBTCR1_Register use
     record
       BPWSWSTP at 0 range 0 .. 0;
       Reserved at 0 range 1 .. 7;
     end record;

   --  Sub-Clock Oscillator Stop
   type SOSCCR_SOSTP_Field is
     (--  Sub-clock oscillator is operating.
     Val_0,
      --  Sub-clock oscillator is stopped.
      Val_1)
   with Size => 1;
   for SOSCCR_SOSTP_Field use (Val_0 => 0, Val_1 => 1);

   subtype SOSCCR_Reserved_Field is R7FA4M1AB.UInt7;

   --  Sub-Clock Oscillator Control Register
   type SOSCCR_Register is record
      --  Sub-Clock Oscillator Stop
      SOSTP    : SOSCCR_SOSTP_Field := R7FA4M1AB.SYSTEM.Val_1;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved : SOSCCR_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for SOSCCR_Register use
     record
       SOSTP at 0 range 0 .. 0;
       Reserved at 0 range 1 .. 7;
     end record;

   --  Sub-Clock Oscillator Drive Capability Switching
   type SOMCR_SODRV_Field is
     (--  Normal mode
     Val_00,
      --  Low power mode 1
      Val_01,
      --  Low power mode 2
      Val_10,
      --  Low power mode 3.
      Val_11)
   with Size => 2;
   for SOMCR_SODRV_Field use
     (Val_00 => 0, Val_01 => 1, Val_10 => 2, Val_11 => 3);

   subtype SOMCR_Reserved_Field is R7FA4M1AB.UInt6;

   --  Sub Clock Oscillator Mode Control Register
   type SOMCR_Register is record
      --  Sub-Clock Oscillator Drive Capability Switching
      SODRV    : SOMCR_SODRV_Field := R7FA4M1AB.SYSTEM.Val_00;
      --  These bits are read as 000000. The write value should be 000000.
      Reserved : SOMCR_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for SOMCR_Register use
     record
       SODRV at 0 range 0 .. 1;
       Reserved at 0 range 2 .. 7;
     end record;

   --  LOCO Stop
   type LOCOCR_LCSTP_Field is
     (--  LOCO is operating.
     Val_0,
      --  LOCO is stopped.
      Val_1)
   with Size => 1;
   for LOCOCR_LCSTP_Field use (Val_0 => 0, Val_1 => 1);

   subtype LOCOCR_Reserved_Field is R7FA4M1AB.UInt7;

   --  Low-Speed On-Chip Oscillator Control Register
   type LOCOCR_Register is record
      --  LOCO Stop
      LCSTP    : LOCOCR_LCSTP_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved : LOCOCR_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for LOCOCR_Register use
     record
       LCSTP at 0 range 0 .. 0;
       Reserved at 0 range 1 .. 7;
     end record;

   subtype VBTCR2_Reserved_Field is R7FA4M1AB.UInt4;

   --  VBATT Pin Low Voltage Detect Enable Bit
   type VBTCR2_VBTLVDEN_Field is
     (--  VBATT pin low voltage detect disable
     Val_0,
      --  VBATT pin low voltage detect enable
      Val_1)
   with Size => 1;
   for VBTCR2_VBTLVDEN_Field use (Val_0 => 0, Val_1 => 1);

   subtype VBTCR2_Reserved_Field_1 is R7FA4M1AB.Bit;

   --  VBATT Pin Voltage Low Voltage Detect Level Select Bit
   type VBTCR2_VBTLVDLVL_Field is
     (--  2.7V
     Val_00,
      --  Setting prohibited
      Val_01,
      --  2.3V
      Val_10,
      --  2.1V
      Val_11)
   with Size => 2;
   for VBTCR2_VBTLVDLVL_Field use
     (Val_00 => 0, Val_01 => 1, Val_10 => 2, Val_11 => 3);

   --  VBATT Control Register2
   type VBTCR2_Register is record
      --  These bits are read as 0000. The write value should be 0000.
      Reserved   : VBTCR2_Reserved_Field := 16#0#;
      --  VBATT Pin Low Voltage Detect Enable Bit
      VBTLVDEN   : VBTCR2_VBTLVDEN_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : VBTCR2_Reserved_Field_1 := 16#0#;
      --  VBATT Pin Voltage Low Voltage Detect Level Select Bit
      VBTLVDLVL  : VBTCR2_VBTLVDLVL_Field := R7FA4M1AB.SYSTEM.Val_00;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for VBTCR2_Register use
     record
       Reserved at 0 range 0 .. 3;
       VBTLVDEN at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       VBTLVDLVL at 0 range 6 .. 7;
     end record;

   --  VBAT_R Reset Detect Flag
   type VBTSR_VBTRDF_Field is
     (--  VBATT_R voltage power-on reset not detected
     Val_0,
      --  VBATT_R selected voltage power-on reset detected.
      Val_1)
   with Size => 1;
   for VBTSR_VBTRDF_Field use (Val_0 => 0, Val_1 => 1);

   --  VBATT Battery Low voltage Detect Flag
   type VBTSR_VBTBLDF_Field is
     (--  VBATT pin low voltage not detected
     Val_0,
      --  VBATT pin low voltage detected.
      Val_1)
   with Size => 1;
   for VBTSR_VBTBLDF_Field use (Val_0 => 0, Val_1 => 1);

   subtype VBTSR_Reserved_Field is R7FA4M1AB.UInt2;

   --  VBATT_R Valid
   type VBTSR_VBTRVLD_Field is
     (--  VBATT_R area not valid
     Val_0,
      --  VBATT_R area valid
      Val_1)
   with Size => 1;
   for VBTSR_VBTRVLD_Field use (Val_0 => 0, Val_1 => 1);

   subtype VBTSR_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  VBATT Status Register
   type VBTSR_Register is record
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. VBAT_R Reset Detect Flag
      VBTRDF     : VBTSR_VBTRDF_Field := R7FA4M1AB.SYSTEM.Val_1;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. VBATT Battery Low voltage Detect Flag
      VBTBLDF    : VBTSR_VBTBLDF_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 00. The write value should be 00.
      Reserved   : VBTSR_Reserved_Field := 16#0#;
      --  Read-only. VBATT_R Valid
      VBTRVLD    : VBTSR_VBTRVLD_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_1 : VBTSR_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for VBTSR_Register use
     record
       VBTRDF at 0 range 0 .. 0;
       VBTBLDF at 0 range 1 .. 1;
       Reserved at 0 range 2 .. 3;
       VBTRVLD at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 7;
     end record;

   --  VBATT pin low voltage detect circuit output enable
   type VBTCMPCR_VBTCMPE_Field is
     (--  VBATT pin low voltage detect circuit output disabled
     Val_0,
      --  VBATT pin low voltage detect circuit output enabled
      Val_1)
   with Size => 1;
   for VBTCMPCR_VBTCMPE_Field use (Val_0 => 0, Val_1 => 1);

   subtype VBTCMPCR_Reserved_Field is R7FA4M1AB.UInt7;

   --  VBATT Comparator Control Register
   type VBTCMPCR_Register is record
      --  VBATT pin low voltage detect circuit output enable
      VBTCMPE  : VBTCMPCR_VBTCMPE_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved : VBTCMPCR_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for VBTCMPCR_Register use
     record
       VBTCMPE at 0 range 0 .. 0;
       Reserved at 0 range 1 .. 7;
     end record;

   --  VBATT Pin Low Voltage Detect Interrupt Enable bit
   type VBTLVDICR_VBTLVDIE_Field is
     (--  VBATT Pin Low Voltage Detect Interrupt Disable
     Val_0,
      --  VBATT Pin Low Voltage Detect Interrupt Enable
      Val_1)
   with Size => 1;
   for VBTLVDICR_VBTLVDIE_Field use (Val_0 => 0, Val_1 => 1);

   --  Pin Low Voltage Detect Interrupt Select bit
   type VBTLVDICR_VBTLVDISEL_Field is
     (--  Non Maskable Interrupt
     Val_0,
      --  Maskable Interrupt
      Val_1)
   with Size => 1;
   for VBTLVDICR_VBTLVDISEL_Field use (Val_0 => 0, Val_1 => 1);

   subtype VBTLVDICR_Reserved_Field is R7FA4M1AB.UInt6;

   --  VBATT Pin Low Voltage Detect Interrupt Control Register
   type VBTLVDICR_Register is record
      --  VBATT Pin Low Voltage Detect Interrupt Enable bit
      VBTLVDIE   : VBTLVDICR_VBTLVDIE_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  Pin Low Voltage Detect Interrupt Select bit
      VBTLVDISEL : VBTLVDICR_VBTLVDISEL_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 000000. The write value should be 000000.
      Reserved   : VBTLVDICR_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for VBTLVDICR_Register use
     record
       VBTLVDIE at 0 range 0 .. 0;
       VBTLVDISEL at 0 range 1 .. 1;
       Reserved at 0 range 2 .. 7;
     end record;

   --  VBATT wakeup enable
   type VBTWCTLR_VWEN_Field is
     (--  Disable Wakeup function
     Val_0,
      --  Enable Wakeup function
      Val_1)
   with Size => 1;
   for VBTWCTLR_VWEN_Field use (Val_0 => 0, Val_1 => 1);

   subtype VBTWCTLR_Reserved_Field is R7FA4M1AB.UInt7;

   --  VBATT Wakeup function Control Register
   type VBTWCTLR_Register is record
      --  VBATT wakeup enable
      VWEN     : VBTWCTLR_VWEN_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved : VBTWCTLR_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for VBTWCTLR_Register use
     record
       VWEN at 0 range 0 .. 0;
       Reserved at 0 range 1 .. 7;
     end record;

   subtype VBTWCH0OTSR_Reserved_Field is R7FA4M1AB.Bit;

   --  VBATWIO0 Output VBATWIO1 Trigger Enable
   type VBTWCH0OTSR_CH0VCH1TE_Field is
     (--  VBATT wakeup I/O 0 output trigger by the VBATWIO1 pin is disabled
     Val_0,
      --  VBATT wakeup I/O 0 output trigger by the VBATWIO1 pin is enabled.
      Val_1)
   with Size => 1;
   for VBTWCH0OTSR_CH0VCH1TE_Field use (Val_0 => 0, Val_1 => 1);

   --  VBATWIO0 Output VBATWIO2 Trigger Enable
   type VBTWCH0OTSR_CH0VCH2TE_Field is
     (--  VBATT wakeup I/O 0 output trigger by the VBATWIO2 pin is disabled
     Val_0,
      --  VBATT wakeup I/O 0 output trigger by the VBATWIO2 pin is enabled.
      Val_1)
   with Size => 1;
   for VBTWCH0OTSR_CH0VCH2TE_Field use (Val_0 => 0, Val_1 => 1);

   --  VBATWIO0 Output RTC Periodic Signal Enable
   type VBTWCH0OTSR_CH0VRTCTE_Field is
     (--  VBATT wakeup I/O 0 output trigger by the RTC periodic signal is disabled
     Val_0,
      --  VBATT wakeup I/O 0 output trigger by the RTC periodic signal is enabled.
      Val_1)
   with Size => 1;
   for VBTWCH0OTSR_CH0VRTCTE_Field use (Val_0 => 0, Val_1 => 1);

   --  VBATWIO0 Output RTC Alarm Signal Enable
   type VBTWCH0OTSR_CH0VRTCATE_Field is
     (--  VBATT wakeup I/O 0 output trigger by the RTC alarm signal is disabled
     Val_0,
      --  VBATT wakeup I/O 0 output trigger by the RTC alarm signal is enabled.
      Val_1)
   with Size => 1;
   for VBTWCH0OTSR_CH0VRTCATE_Field use (Val_0 => 0, Val_1 => 1);

   subtype VBTWCH0OTSR_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  VBATT Wakeup I/O 0 Output Trigger Select Register
   type VBTWCH0OTSR_Register is record
      --  This bit is read as 0. The write value should be 0.
      Reserved   : VBTWCH0OTSR_Reserved_Field := 16#0#;
      --  VBATWIO0 Output VBATWIO1 Trigger Enable
      CH0VCH1TE  : VBTWCH0OTSR_CH0VCH1TE_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  VBATWIO0 Output VBATWIO2 Trigger Enable
      CH0VCH2TE  : VBTWCH0OTSR_CH0VCH2TE_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  VBATWIO0 Output RTC Periodic Signal Enable
      CH0VRTCTE  : VBTWCH0OTSR_CH0VRTCTE_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  VBATWIO0 Output RTC Alarm Signal Enable
      CH0VRTCATE : VBTWCH0OTSR_CH0VRTCATE_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_1 : VBTWCH0OTSR_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for VBTWCH0OTSR_Register use
     record
       Reserved at 0 range 0 .. 0;
       CH0VCH1TE at 0 range 1 .. 1;
       CH0VCH2TE at 0 range 2 .. 2;
       CH0VRTCTE at 0 range 3 .. 3;
       CH0VRTCATE at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 7;
     end record;

   --  VBATWIO1 Output VBATWIO0 Trigger Enable
   type VBTWCH1OTSR_CH1VCH0TE_Field is
     (--  VBATT wakeup I/O 1 output trigger by the VBATWIO0 pin is disabled
     Val_0,
      --  VBATT wakeup I/O 1 output trigger by the VBATWIO0 pin is enabled.
      Val_1)
   with Size => 1;
   for VBTWCH1OTSR_CH1VCH0TE_Field use (Val_0 => 0, Val_1 => 1);

   subtype VBTWCH1OTSR_Reserved_Field is R7FA4M1AB.Bit;

   --  VBATWIO1 Output VBATWIO2 Trigger Enable
   type VBTWCH1OTSR_CH1VCH2TE_Field is
     (--  VBATT wakeup I/O 1 output trigger by the VBATWIO2 pin is disabled
     Val_0,
      --  VBATT wakeup I/O 1 output trigger by the VBATWIO2 pin is enabled.
      Val_1)
   with Size => 1;
   for VBTWCH1OTSR_CH1VCH2TE_Field use (Val_0 => 0, Val_1 => 1);

   --  VBATWIO1 Output RTC Periodic Signal Enable
   type VBTWCH1OTSR_CH1VRTCTE_Field is
     (--  VBATT wakeup I/O 1 output trigger by the RTC periodic signal is disabled
     Val_0,
      --  VBATT wakeup I/O 1 output trigger by the RTC periodic signal is enabled
      Val_1)
   with Size => 1;
   for VBTWCH1OTSR_CH1VRTCTE_Field use (Val_0 => 0, Val_1 => 1);

   --  VBATWIO1 Output RTC Alarm Signal Enable
   type VBTWCH1OTSR_CH1VRTCATE_Field is
     (--  VBATT wakeup I/O 1 output trigger by the RTC alarm signal is disabled
     Val_0,
      --  VBATT wakeup I/O 1 output trigger by the RTC alarm signal is enabled.
      Val_1)
   with Size => 1;
   for VBTWCH1OTSR_CH1VRTCATE_Field use (Val_0 => 0, Val_1 => 1);

   subtype VBTWCH1OTSR_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  VBATT Wakeup I/O 1 Output Trigger Select Register
   type VBTWCH1OTSR_Register is record
      --  VBATWIO1 Output VBATWIO0 Trigger Enable
      CH1VCH0TE  : VBTWCH1OTSR_CH1VCH0TE_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : VBTWCH1OTSR_Reserved_Field := 16#0#;
      --  VBATWIO1 Output VBATWIO2 Trigger Enable
      CH1VCH2TE  : VBTWCH1OTSR_CH1VCH2TE_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  VBATWIO1 Output RTC Periodic Signal Enable
      CH1VRTCTE  : VBTWCH1OTSR_CH1VRTCTE_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  VBATWIO1 Output RTC Alarm Signal Enable
      CH1VRTCATE : VBTWCH1OTSR_CH1VRTCATE_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_1 : VBTWCH1OTSR_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for VBTWCH1OTSR_Register use
     record
       CH1VCH0TE at 0 range 0 .. 0;
       Reserved at 0 range 1 .. 1;
       CH1VCH2TE at 0 range 2 .. 2;
       CH1VRTCTE at 0 range 3 .. 3;
       CH1VRTCATE at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 7;
     end record;

   --  VBATWIO2 Output VBATWIO0 Trigger Enable
   type VBTWCH2OTSR_CH2VCH0TE_Field is
     (--  VBATT wakeup I/O 2 output trigger by the VBATWIO0 pin is disabled
     Val_0,
      --  VBATT wakeup I/O 2 output trigger by the VBATWIO0 pin is enabled.
      Val_1)
   with Size => 1;
   for VBTWCH2OTSR_CH2VCH0TE_Field use (Val_0 => 0, Val_1 => 1);

   --  VBATWIO2 Output VBATWIO1 Trigger Enable
   type VBTWCH2OTSR_CH2VCH1TE_Field is
     (--  VBATT wakeup I/O 2 output trigger by the VBATWIO1 pin is disabled
     Val_0,
      --  VBATT wakeup I/O 2 output trigger by the VBATWIO1 pin is enabled.
      Val_1)
   with Size => 1;
   for VBTWCH2OTSR_CH2VCH1TE_Field use (Val_0 => 0, Val_1 => 1);

   subtype VBTWCH2OTSR_Reserved_Field is R7FA4M1AB.Bit;

   --  VBATWIO2 Output RTC Periodic Signal Enable
   type VBTWCH2OTSR_CH2VRTCTE_Field is
     (--  VBATT wakeup I/O 2 output trigger by the RTC periodic signal is disabled
     Val_0,
      --  VBATT wakeup I/O 2 output trigger by the RTC periodic signal is enabled.
      Val_1)
   with Size => 1;
   for VBTWCH2OTSR_CH2VRTCTE_Field use (Val_0 => 0, Val_1 => 1);

   --  VBATWIO2 Output RTC Alarm Signal Enable
   type VBTWCH2OTSR_CH2VRTCATE_Field is
     (--  VBATT wakeup I/O 2 output trigger by the RTC alarm signal is disabled
     Val_0,
      --  VBATT wakeup I/O 2 output trigger by the RTC alarm signal is enabled.
      Val_1)
   with Size => 1;
   for VBTWCH2OTSR_CH2VRTCATE_Field use (Val_0 => 0, Val_1 => 1);

   subtype VBTWCH2OTSR_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  VBATT Wakeup I/O 2 Output Trigger Select Register
   type VBTWCH2OTSR_Register is record
      --  VBATWIO2 Output VBATWIO0 Trigger Enable
      CH2VCH0TE  : VBTWCH2OTSR_CH2VCH0TE_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  VBATWIO2 Output VBATWIO1 Trigger Enable
      CH2VCH1TE  : VBTWCH2OTSR_CH2VCH1TE_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : VBTWCH2OTSR_Reserved_Field := 16#0#;
      --  VBATWIO2 Output RTC Periodic Signal Enable
      CH2VRTCTE  : VBTWCH2OTSR_CH2VRTCTE_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  VBATWIO2 Output RTC Alarm Signal Enable
      CH2VRTCATE : VBTWCH2OTSR_CH2VRTCATE_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_1 : VBTWCH2OTSR_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for VBTWCH2OTSR_Register use
     record
       CH2VCH0TE at 0 range 0 .. 0;
       CH2VCH1TE at 0 range 1 .. 1;
       Reserved at 0 range 2 .. 2;
       CH2VRTCTE at 0 range 3 .. 3;
       CH2VRTCATE at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 7;
     end record;

   --  VBATT Wakeup I/O 0 Input Enable
   type VBTICTLR_VCH0INEN_Field is
     (--  VBATWIO0, RTCIC0 inputs disabled
     Val_0,
      --  VBATWIO0, RTCIC0 inputs enabled.
      Val_1)
   with Size => 1;
   for VBTICTLR_VCH0INEN_Field use (Val_0 => 0, Val_1 => 1);

   --  VBATT Wakeup I/O 1 Input Enable
   type VBTICTLR_VCH1INEN_Field is
     (--  VBATWIO1, RTCIC1 inputs disabled
     Val_0,
      --  VBATWIO1, RTCIC1 inputs enabled.
      Val_1)
   with Size => 1;
   for VBTICTLR_VCH1INEN_Field use (Val_0 => 0, Val_1 => 1);

   --  VBATT Wakeup I/O 2 Input Enable
   type VBTICTLR_VCH2INEN_Field is
     (--  VBATWIO2 and RTCIC2 inputs disabled
     Val_0,
      --  VBATWIO2 and RTCIC2 inputs enabled.
      Val_1)
   with Size => 1;
   for VBTICTLR_VCH2INEN_Field use (Val_0 => 0, Val_1 => 1);

   subtype VBTICTLR_Reserved_Field is R7FA4M1AB.UInt5;

   --  VBATT Input Control Register
   type VBTICTLR_Register is record
      --  VBATT Wakeup I/O 0 Input Enable
      VCH0INEN : VBTICTLR_VCH0INEN_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  VBATT Wakeup I/O 1 Input Enable
      VCH1INEN : VBTICTLR_VCH1INEN_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  VBATT Wakeup I/O 2 Input Enable
      VCH2INEN : VBTICTLR_VCH2INEN_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 00000. The write value should be 00000.
      Reserved : VBTICTLR_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for VBTICTLR_Register use
     record
       VCH0INEN at 0 range 0 .. 0;
       VCH1INEN at 0 range 1 .. 1;
       VCH2INEN at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 7;
     end record;

   --  VBATT Wakeup I/O 0 Output Enable
   type VBTOCTLR_VCH0OEN_Field is
     (--  VBATWIO0 output disabled
     Val_0,
      --  VBATWIO0 output enabled
      Val_1)
   with Size => 1;
   for VBTOCTLR_VCH0OEN_Field use (Val_0 => 0, Val_1 => 1);

   --  VBATT Wakeup I/O 1 Output Enable
   type VBTOCTLR_VCH1OEN_Field is
     (--  VBATWIO1 output disabled
     Val_0,
      --  VBATWIO1 output enabled
      Val_1)
   with Size => 1;
   for VBTOCTLR_VCH1OEN_Field use (Val_0 => 0, Val_1 => 1);

   --  VBATT Wakeup I/O 2 Output Enable
   type VBTOCTLR_VCH2OEN_Field is
     (--  VBATWIO2 output disabled
     Val_0,
      --  VBATWIO2 output enabled
      Val_1)
   with Size => 1;
   for VBTOCTLR_VCH2OEN_Field use (Val_0 => 0, Val_1 => 1);

   --  VBATT Wakeup I/O 0 Output Level Selection
   type VBTOCTLR_VOUT0LSEL_Field is
     (--  Output L before VBATT wakeup trigger
     Val_0,
      --  Output H before VBATT wakeup trigger
      Val_1)
   with Size => 1;
   for VBTOCTLR_VOUT0LSEL_Field use (Val_0 => 0, Val_1 => 1);

   --  VBATT Wakeup I/O 1 Output Level Selection
   type VBTOCTLR_VOUT1LSEL_Field is
     (--  Output L before VBATT wake up trigger
     Val_0,
      --  Output H before VBATT wake up trigger
      Val_1)
   with Size => 1;
   for VBTOCTLR_VOUT1LSEL_Field use (Val_0 => 0, Val_1 => 1);

   --  VBATT Wakeup I/O 2 Output Level Selection
   type VBTOCTLR_VOUT2LSEL_Field is
     (--  Output L before VBATT wake up trigger
     Val_0,
      --  Output H before VBATT wake up trigger
      Val_1)
   with Size => 1;
   for VBTOCTLR_VOUT2LSEL_Field use (Val_0 => 0, Val_1 => 1);

   subtype VBTOCTLR_Reserved_Field is R7FA4M1AB.UInt2;

   --  VBATT Output Control Register
   type VBTOCTLR_Register is record
      --  VBATT Wakeup I/O 0 Output Enable
      VCH0OEN   : VBTOCTLR_VCH0OEN_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  VBATT Wakeup I/O 1 Output Enable
      VCH1OEN   : VBTOCTLR_VCH1OEN_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  VBATT Wakeup I/O 2 Output Enable
      VCH2OEN   : VBTOCTLR_VCH2OEN_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  VBATT Wakeup I/O 0 Output Level Selection
      VOUT0LSEL : VBTOCTLR_VOUT0LSEL_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  VBATT Wakeup I/O 1 Output Level Selection
      VOUT1LSEL : VBTOCTLR_VOUT1LSEL_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  VBATT Wakeup I/O 2 Output Level Selection
      VOUT2LSEL : VBTOCTLR_VOUT2LSEL_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 00. The write value should be 00.
      Reserved  : VBTOCTLR_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for VBTOCTLR_Register use
     record
       VCH0OEN at 0 range 0 .. 0;
       VCH1OEN at 0 range 1 .. 1;
       VCH2OEN at 0 range 2 .. 2;
       VOUT0LSEL at 0 range 3 .. 3;
       VOUT1LSEL at 0 range 4 .. 4;
       VOUT2LSEL at 0 range 5 .. 5;
       Reserved at 0 range 6 .. 7;
     end record;

   --  VBATWIO0 Pin Enable
   type VBTWTER_VCH0E_Field is
     (--  VBATT wakeup triggered by the VBATWIO0 pin is disabled
     Val_0,
      --  VBATT wakeup triggered by the VBATWIO0 pin is enabled.
      Val_1)
   with Size => 1;
   for VBTWTER_VCH0E_Field use (Val_0 => 0, Val_1 => 1);

   --  VBATWIO1 Pin Enable
   type VBTWTER_VCH1E_Field is
     (--  VBATT wakeup triggered by the VBATWIO1 pin is disabled
     Val_0,
      --  VBATT wakeup triggered by the VBATWIO1 pin is enabled.
      Val_1)
   with Size => 1;
   for VBTWTER_VCH1E_Field use (Val_0 => 0, Val_1 => 1);

   --  VBATWIO2 Pin Enable
   type VBTWTER_VCH2E_Field is
     (--  VBATT wakeup triggered by the VBATWIO2 pin is disabled
     Val_0,
      --  VBATT wakeup triggered by the VBATWIO2 pin is enabled.
      Val_1)
   with Size => 1;
   for VBTWTER_VCH2E_Field use (Val_0 => 0, Val_1 => 1);

   --  RTC Periodic Signal Enable
   type VBTWTER_VRTCIE_Field is
     (--  VBATT wakeup triggered by RTC periodic signal is disabled
     Val_0,
      --  VBATT wakeup triggered by RTC periodic signal is enabled.
      Val_1)
   with Size => 1;
   for VBTWTER_VRTCIE_Field use (Val_0 => 0, Val_1 => 1);

   --  RTC Alarm Signal Enable
   type VBTWTER_VRTCAE_Field is
     (--  VBATT wakeup triggered by RTC alarm signal is disabled
     Val_0,
      --  VBATT wakeup triggered by RTC alarm signal is enabled.
      Val_1)
   with Size => 1;
   for VBTWTER_VRTCAE_Field use (Val_0 => 0, Val_1 => 1);

   subtype VBTWTER_Reserved_Field is R7FA4M1AB.UInt3;

   --  VBATT Wakeup Trigger source Enable Register
   type VBTWTER_Register is record
      --  VBATWIO0 Pin Enable
      VCH0E    : VBTWTER_VCH0E_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  VBATWIO1 Pin Enable
      VCH1E    : VBTWTER_VCH1E_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  VBATWIO2 Pin Enable
      VCH2E    : VBTWTER_VCH2E_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  RTC Periodic Signal Enable
      VRTCIE   : VBTWTER_VRTCIE_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  RTC Alarm Signal Enable
      VRTCAE   : VBTWTER_VRTCAE_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved : VBTWTER_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for VBTWTER_Register use
     record
       VCH0E at 0 range 0 .. 0;
       VCH1E at 0 range 1 .. 1;
       VCH2E at 0 range 2 .. 2;
       VRTCIE at 0 range 3 .. 3;
       VRTCAE at 0 range 4 .. 4;
       Reserved at 0 range 5 .. 7;
     end record;

   --  VBATWIO0 Wakeup Trigger Source Edge Select
   type VBTWEGR_VCH0EG_Field is
     (--  Wakeup trigger is generated at a falling edge
     Val_0,
      --  Wakeup trigger is generated at a rising edge.
      Val_1)
   with Size => 1;
   for VBTWEGR_VCH0EG_Field use (Val_0 => 0, Val_1 => 1);

   --  VBATWIO1 Wakeup Trigger Source Edge Select
   type VBTWEGR_VCH1EG_Field is
     (--  Wakeup trigger is generated at a falling edge
     Val_0,
      --  Wakeup trigger is generated at a rising edge.
      Val_1)
   with Size => 1;
   for VBTWEGR_VCH1EG_Field use (Val_0 => 0, Val_1 => 1);

   --  VBATWIO2 Wakeup Trigger Source Edge Select
   type VBTWEGR_VCH2EG_Field is
     (--  Wakeup trigger is generated at a falling edge
     Val_0,
      --  Wakeup trigger is generated at a rising edge.
      Val_1)
   with Size => 1;
   for VBTWEGR_VCH2EG_Field use (Val_0 => 0, Val_1 => 1);

   subtype VBTWEGR_Reserved_Field is R7FA4M1AB.UInt5;

   --  VBATT Wakeup Trigger source Edge Register
   type VBTWEGR_Register is record
      --  VBATWIO0 Wakeup Trigger Source Edge Select
      VCH0EG   : VBTWEGR_VCH0EG_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  VBATWIO1 Wakeup Trigger Source Edge Select
      VCH1EG   : VBTWEGR_VCH1EG_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  VBATWIO2 Wakeup Trigger Source Edge Select
      VCH2EG   : VBTWEGR_VCH2EG_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 00000. The write value should be 00000.
      Reserved : VBTWEGR_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for VBTWEGR_Register use
     record
       VCH0EG at 0 range 0 .. 0;
       VCH1EG at 0 range 1 .. 1;
       VCH2EG at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 7;
     end record;

   --  VBATWIO0 Wakeup Trigger Flag
   type VBTWFR_VCH0F_Field is
     (--  No wakeup trigger by the VBATWIO0 pin is generated
     Val_0,
      --  A wakeup trigger by the VBATWIO0 pin is generated
      Val_1)
   with Size => 1;
   for VBTWFR_VCH0F_Field use (Val_0 => 0, Val_1 => 1);

   --  VBATWIO1 Wakeup Trigger Flag
   type VBTWFR_VCH1F_Field is
     (--  No wakeup trigger by the VBATWIO1 pin is generated
     Val_0,
      --  A wakeup trigger by the VBATWIO1 pin is generated
      Val_1)
   with Size => 1;
   for VBTWFR_VCH1F_Field use (Val_0 => 0, Val_1 => 1);

   --  VBATWIO2 Wakeup Trigger Flag
   type VBTWFR_VCH2F_Field is
     (--  No wakeup trigger by the VBATWIO2 pin is generated
     Val_0,
      --  A wakeup trigger by the VBATWIO2 pin is generated
      Val_1)
   with Size => 1;
   for VBTWFR_VCH2F_Field use (Val_0 => 0, Val_1 => 1);

   --  VBATT RTC-Interval Wakeup Trigger Flag
   type VBTWFR_VRTCIF_Field is
     (--  No wakeup trigger by the RTC interval is generated
     Val_0,
      --  A wakeup trigger by the RTC interval is generated
      Val_1)
   with Size => 1;
   for VBTWFR_VRTCIF_Field use (Val_0 => 0, Val_1 => 1);

   --  VBATT RTC-Alarm Wakeup Trigger Flag
   type VBTWFR_VRTCAF_Field is
     (--  No wakeup trigger by the RTC alarm is generated
     Val_0,
      --  A wakeup trigger by the RTC alarm is generated
      Val_1)
   with Size => 1;
   for VBTWFR_VRTCAF_Field use (Val_0 => 0, Val_1 => 1);

   subtype VBTWFR_Reserved_Field is R7FA4M1AB.UInt3;

   --  VBATT Wakeup trigger source Flag Register
   type VBTWFR_Register is record
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. VBATWIO0 Wakeup Trigger Flag
      VCH0F    : VBTWFR_VCH0F_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. VBATWIO1 Wakeup Trigger Flag
      VCH1F    : VBTWFR_VCH1F_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. VBATWIO2 Wakeup Trigger Flag
      VCH2F    : VBTWFR_VCH2F_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. VBATT RTC-Interval Wakeup Trigger Flag
      VRTCIF   : VBTWFR_VRTCIF_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. VBATT RTC-Alarm Wakeup Trigger Flag
      VRTCAF   : VBTWFR_VRTCAF_Field := R7FA4M1AB.SYSTEM.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved : VBTWFR_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => Standard.System.Low_Order_First;

   for VBTWFR_Register use
     record
       VCH0F at 0 range 0 .. 0;
       VCH1F at 0 range 1 .. 1;
       VCH2F at 0 range 2 .. 2;
       VRTCIF at 0 range 3 .. 3;
       VRTCAF at 0 range 4 .. 4;
       Reserved at 0 range 5 .. 7;
     end record;

   --  VBATT Backup Register [%s]

   --  VBATT Backup Register [%s]
   type VBTBKR_Registers is array (0 .. 511) of R7FA4M1AB.Byte;

   -----------------
   -- Peripherals --
   -----------------

   --  System Control
   type SYSTEM_Peripheral is record
      --  Standby Control Register
      SBYCR       : aliased SBYCR_Register;
      --  Module Stop Control Register A
      MSTPCRA     : aliased MSTPCRA_Register;
      --  System Clock Division Control Register
      SCKDIVCR    : aliased SCKDIVCR_Register;
      --  System Clock Source Control Register
      SCKSCR      : aliased SCKSCR_Register;
      --  PLL Control Register
      PLLCR       : aliased PLLCR_Register;
      --  PLL Clock Control Register2
      PLLCCR2     : aliased PLLCCR2_Register;
      --  Memory Wait Cycle Control Register
      MEMWAIT     : aliased MEMWAIT_Register;
      --  Main Clock Oscillator Control Register
      MOSCCR      : aliased MOSCCR_Register;
      --  High-Speed On-Chip Oscillator Control Register
      HOCOCR      : aliased HOCOCR_Register;
      --  Middle-Speed On-Chip Oscillator Control Register
      MOCOCR      : aliased MOCOCR_Register;
      --  Oscillation Stabilization Flag Register
      OSCSF       : aliased OSCSF_Register;
      --  Clock Out Control Register
      CKOCR       : aliased CKOCR_Register;
      --  Trace Clock Control Register
      TRCKCR      : aliased TRCKCR_Register;
      --  Oscillation Stop Detection Control Register
      OSTDCR      : aliased OSTDCR_Register;
      --  Oscillation Stop Detection Status Register
      OSTDSR      : aliased OSTDSR_Register;
      --  Segment LCD Source Clock Control Register
      SLCDSCKCR   : aliased SLCDSCKCR_Register;
      --  MOCO User Trimming Control Register
      MOCOUTCR    : aliased R7FA4M1AB.Byte;
      --  HOCO User Trimming Control Register
      HOCOUTCR    : aliased R7FA4M1AB.Byte;
      --  Snooze Control Register
      SNZCR       : aliased SNZCR_Register;
      --  Snooze End Control Register
      SNZEDCR     : aliased SNZEDCR_Register;
      --  Snooze Request Control Register
      SNZREQCR    : aliased SNZREQCR_Register;
      --  Flash Operation Control Register
      FLSTOP      : aliased FLSTOP_Register;
      --  Operating Power Control Register
      OPCCR       : aliased OPCCR_Register;
      --  Main Clock Oscillator Wait Control Register
      MOSCWTCR    : aliased MOSCWTCR_Register;
      --  High-Speed On-Chip Oscillator Wait Control Register
      HOCOWTCR    : aliased HOCOWTCR_Register;
      --  Sub Operating Power Control Register
      SOPCCR      : aliased SOPCCR_Register;
      --  Reset Status Register 1
      RSTSR1      : aliased RSTSR1_Register;
      --  Backup Register Access Control Register
      BKRACR      : aliased BKRACR_Register;
      --  USB Clock Control register
      USBCKCR     : aliased USBCKCR_Register;
      --  Voltage Monitor %s Circuit Control Register 1
      LVDCR10     : aliased LVDCR_Register;
      --  Voltage Monitor %s Circuit Status Register
      LVDSR0      : aliased LVDSR_Register;
      --  Voltage Monitor %s Circuit Control Register 1
      LVDCR11     : aliased LVDCR_Register;
      --  Voltage Monitor %s Circuit Status Register
      LVDSR1      : aliased LVDSR_Register;
      --  Protect Register
      PRCR        : aliased PRCR_Register;
      --  System Control OCD Control Register
      SYOCDCR     : aliased SYOCDCR_Register;
      --  Reset Status Register 0
      RSTSR0      : aliased RSTSR0_Register;
      --  Reset Status Register 2
      RSTSR2      : aliased RSTSR2_Register;
      --  Main Clock Oscillator Mode Oscillation Control Register
      MOMCR       : aliased MOMCR_Register;
      --  Voltage Monitor Circuit Control Register
      LVCMPCR     : aliased LVCMPCR_Register;
      --  Voltage Detection Level Select Register
      LVDLVLR     : aliased LVDLVLR_Register;
      --  Voltage Monitor %s Circuit Control Register 0
      LVDCR0      : aliased LVDCR0_Registers;
      --  VBATT Control Register1
      VBTCR1      : aliased VBTCR1_Register;
      --  Sub-Clock Oscillator Control Register
      SOSCCR      : aliased SOSCCR_Register;
      --  Sub Clock Oscillator Mode Control Register
      SOMCR       : aliased SOMCR_Register;
      --  Low-Speed On-Chip Oscillator Control Register
      LOCOCR      : aliased LOCOCR_Register;
      --  LOCO User Trimming Control Register
      LOCOUTCR    : aliased R7FA4M1AB.Byte;
      --  VBATT Control Register2
      VBTCR2      : aliased VBTCR2_Register;
      --  VBATT Status Register
      VBTSR       : aliased VBTSR_Register;
      --  VBATT Comparator Control Register
      VBTCMPCR    : aliased VBTCMPCR_Register;
      --  VBATT Pin Low Voltage Detect Interrupt Control Register
      VBTLVDICR   : aliased VBTLVDICR_Register;
      --  VBATT Wakeup function Control Register
      VBTWCTLR    : aliased VBTWCTLR_Register;
      --  VBATT Wakeup I/O 0 Output Trigger Select Register
      VBTWCH0OTSR : aliased VBTWCH0OTSR_Register;
      --  VBATT Wakeup I/O 1 Output Trigger Select Register
      VBTWCH1OTSR : aliased VBTWCH1OTSR_Register;
      --  VBATT Wakeup I/O 2 Output Trigger Select Register
      VBTWCH2OTSR : aliased VBTWCH2OTSR_Register;
      --  VBATT Input Control Register
      VBTICTLR    : aliased VBTICTLR_Register;
      --  VBATT Output Control Register
      VBTOCTLR    : aliased VBTOCTLR_Register;
      --  VBATT Wakeup Trigger source Enable Register
      VBTWTER     : aliased VBTWTER_Register;
      --  VBATT Wakeup Trigger source Edge Register
      VBTWEGR     : aliased VBTWEGR_Register;
      --  VBATT Wakeup trigger source Flag Register
      VBTWFR      : aliased VBTWFR_Register;
      --  VBATT Backup Register [%s]
      VBTBKR      : aliased VBTBKR_Registers;
   end record
   with Volatile;

   for SYSTEM_Peripheral use
     record
       SBYCR at 16#C# range 0 .. 15;
       MSTPCRA at 16#1C# range 0 .. 31;
       SCKDIVCR at 16#20# range 0 .. 31;
       SCKSCR at 16#26# range 0 .. 7;
       PLLCR at 16#2A# range 0 .. 7;
       PLLCCR2 at 16#2B# range 0 .. 7;
       MEMWAIT at 16#31# range 0 .. 7;
       MOSCCR at 16#32# range 0 .. 7;
       HOCOCR at 16#36# range 0 .. 7;
       MOCOCR at 16#38# range 0 .. 7;
       OSCSF at 16#3C# range 0 .. 7;
       CKOCR at 16#3E# range 0 .. 7;
       TRCKCR at 16#3F# range 0 .. 7;
       OSTDCR at 16#40# range 0 .. 7;
       OSTDSR at 16#41# range 0 .. 7;
       SLCDSCKCR at 16#50# range 0 .. 7;
       MOCOUTCR at 16#61# range 0 .. 7;
       HOCOUTCR at 16#62# range 0 .. 7;
       SNZCR at 16#92# range 0 .. 7;
       SNZEDCR at 16#94# range 0 .. 7;
       SNZREQCR at 16#98# range 0 .. 31;
       FLSTOP at 16#9E# range 0 .. 7;
       OPCCR at 16#A0# range 0 .. 7;
       MOSCWTCR at 16#A2# range 0 .. 7;
       HOCOWTCR at 16#A5# range 0 .. 7;
       SOPCCR at 16#AA# range 0 .. 7;
       RSTSR1 at 16#C0# range 0 .. 15;
       BKRACR at 16#C6# range 0 .. 7;
       USBCKCR at 16#D0# range 0 .. 7;
       LVDCR10 at 16#E0# range 0 .. 7;
       LVDSR0 at 16#E1# range 0 .. 7;
       LVDCR11 at 16#E2# range 0 .. 7;
       LVDSR1 at 16#E3# range 0 .. 7;
       PRCR at 16#3FE# range 0 .. 15;
       SYOCDCR at 16#40E# range 0 .. 7;
       RSTSR0 at 16#410# range 0 .. 7;
       RSTSR2 at 16#411# range 0 .. 7;
       MOMCR at 16#413# range 0 .. 7;
       LVCMPCR at 16#417# range 0 .. 7;
       LVDLVLR at 16#418# range 0 .. 7;
       LVDCR0 at 16#41A# range 0 .. 15;
       VBTCR1 at 16#41F# range 0 .. 7;
       SOSCCR at 16#480# range 0 .. 7;
       SOMCR at 16#481# range 0 .. 7;
       LOCOCR at 16#490# range 0 .. 7;
       LOCOUTCR at 16#492# range 0 .. 7;
       VBTCR2 at 16#4B0# range 0 .. 7;
       VBTSR at 16#4B1# range 0 .. 7;
       VBTCMPCR at 16#4B2# range 0 .. 7;
       VBTLVDICR at 16#4B4# range 0 .. 7;
       VBTWCTLR at 16#4B6# range 0 .. 7;
       VBTWCH0OTSR at 16#4B8# range 0 .. 7;
       VBTWCH1OTSR at 16#4B9# range 0 .. 7;
       VBTWCH2OTSR at 16#4BA# range 0 .. 7;
       VBTICTLR at 16#4BB# range 0 .. 7;
       VBTOCTLR at 16#4BC# range 0 .. 7;
       VBTWTER at 16#4BD# range 0 .. 7;
       VBTWEGR at 16#4BE# range 0 .. 7;
       VBTWFR at 16#4BF# range 0 .. 7;
       VBTBKR at 16#500# range 0 .. 4095;
     end record;

   --  System Control
   SYSTEM_Periph : aliased SYSTEM_Peripheral
   with Import, Address => SYSTEM_Base;

end R7FA4M1AB.SYSTEM;
