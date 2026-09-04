--
-- Copyright (C) 2026 Marcus Gigandet
--
-- SPDX-License-Identifier: LGPL-3.0-or-later
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  Inter-Integrated Circuit 0

package R7FA4M1AB.IIC0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  SDA Line Monitor
   type ICCR1_SDAI_Field is
     (--  SDAn line is low.
     Val_0,
      --  SDAn line is high.
      Val_1)
   with Size => 1;
   for ICCR1_SDAI_Field use (Val_0 => 0, Val_1 => 1);

   --  SCL Line Monitor
   type ICCR1_SCLI_Field is
     (--  SCLn line is low.
     Val_0,
      --  SCLn line is high.
      Val_1)
   with Size => 1;
   for ICCR1_SCLI_Field use (Val_0 => 0, Val_1 => 1);

   --  SDA Output Control/Monitor
   type ICCR1_SDAO_Field is
     (--  (Read)The RIIC has driven the SDAn pin low. / (Write)The RIIC drives the
     --  SDAn pin low.
     Val_0,
      --  (Read)The RIIC has released the SDAn pin./ (Write)The RIIC releases the
      --  SDAn pin.
      Val_1)
   with Size => 1;
   for ICCR1_SDAO_Field use (Val_0 => 0, Val_1 => 1);

   --  SCL Output Control/Monitor
   type ICCR1_SCLO_Field is
     (--  (Read)The RIIC has driven the SCLn pin low. / (Write)The RIIC drives the
     --  SCLn pin low.
     Val_0,
      --  (Read)The RIIC has released the SCLn pin. / (Write)The RIIC releases the
      --  SCLn pin.
      Val_1)
   with Size => 1;
   for ICCR1_SCLO_Field use (Val_0 => 0, Val_1 => 1);

   --  SCLO/SDAO Write Protect
   type ICCR1_SOWP_Field is
     (--  Bits SCLO and SDAO can be written
     Val_0,
      --  Bits SCLO and SDAO are protected.
      Val_1)
   with Size => 1;
   for ICCR1_SOWP_Field use (Val_0 => 0, Val_1 => 1);

   --  Extra SCL Clock Cycle Output
   type ICCR1_CLO_Field is
     (--  Does not output an extra SCL clock cycle.
     Val_0,
      --  Outputs an extra SCL clock cycle.
      Val_1)
   with Size => 1;
   for ICCR1_CLO_Field use (Val_0 => 0, Val_1 => 1);

   --  I2C Bus Interface Internal Reset Note:If an internal reset is initiated
   --  using the IICRST bit for a bus hang-up occurred during communication
   --  with the master device in slave mode, the states may become different
   --  between the slave device and the master device (due to the difference in
   --  the bit counter information).
   type ICCR1_IICRST_Field is
     (--  Releases the RIIC reset or internal reset.
     Val_0,
      --  Initiates the RIIC reset or internal reset.
      Val_1)
   with Size => 1;
   for ICCR1_IICRST_Field use (Val_0 => 0, Val_1 => 1);

   --  I2C Bus Interface Enable
   type ICCR1_ICE_Field is
     (--  Disable (SCLn and SDAn pins in inactive state)
     Val_0,
      --  Enable (SCLn and SDAn pins in active state)
      Val_1)
   with Size => 1;
   for ICCR1_ICE_Field use (Val_0 => 0, Val_1 => 1);

   --  I2C Bus Control Register 1
   type ICCR1_Register is record
      --  Read-only. SDA Line Monitor
      SDAI   : ICCR1_SDAI_Field := R7FA4M1AB.IIC0.Val_1;
      --  Read-only. SCL Line Monitor
      SCLI   : ICCR1_SCLI_Field := R7FA4M1AB.IIC0.Val_1;
      --  SDA Output Control/Monitor
      SDAO   : ICCR1_SDAO_Field := R7FA4M1AB.IIC0.Val_1;
      --  SCL Output Control/Monitor
      SCLO   : ICCR1_SCLO_Field := R7FA4M1AB.IIC0.Val_1;
      --  SCLO/SDAO Write Protect
      SOWP   : ICCR1_SOWP_Field := R7FA4M1AB.IIC0.Val_1;
      --  Extra SCL Clock Cycle Output
      CLO    : ICCR1_CLO_Field := R7FA4M1AB.IIC0.Val_0;
      --  I2C Bus Interface Internal Reset Note:If an internal reset is
      --  initiated using the IICRST bit for a bus hang-up occurred during
      --  communication with the master device in slave mode, the states may
      --  become different between the slave device and the master device (due
      --  to the difference in the bit counter information).
      IICRST : ICCR1_IICRST_Field := R7FA4M1AB.IIC0.Val_0;
      --  I2C Bus Interface Enable
      ICE    : ICCR1_ICE_Field := R7FA4M1AB.IIC0.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for ICCR1_Register use
     record
       SDAI at 0 range 0 .. 0;
       SCLI at 0 range 1 .. 1;
       SDAO at 0 range 2 .. 2;
       SCLO at 0 range 3 .. 3;
       SOWP at 0 range 4 .. 4;
       CLO at 0 range 5 .. 5;
       IICRST at 0 range 6 .. 6;
       ICE at 0 range 7 .. 7;
     end record;

   subtype ICCR2_Reserved_Field is R7FA4M1AB.Bit;

   --  Start Condition Issuance Request Set the ST bit to 1 (start condition
   --  issuance request) when the BBSY flag is set to 0 (bus free state).
   type ICCR2_ST_Field is
     (--  Does not request to issue a start condition.
     Val_0,
      --  Requests to issue a start condition.
      Val_1)
   with Size => 1;
   for ICCR2_ST_Field use (Val_0 => 0, Val_1 => 1);

   --  Restart Condition Issuance Request Note: Do not set the RS bit to 1
   --  while issuing a stop condition.
   type ICCR2_RS_Field is
     (--  Does not request to issue a restart condition.
     Val_0,
      --  Requests to issue a restart condition.
      Val_1)
   with Size => 1;
   for ICCR2_RS_Field use (Val_0 => 0, Val_1 => 1);

   --  Stop Condition Issuance Request Note: Writing to the SP bit is not
   --  possible while the setting of the BBSY flag is 0 (bus free state). Note:
   --  Do not set the SP bit to 1 while a restart condition is being issued.
   type ICCR2_SP_Field is
     (--  Does not request to issue a stop condition.
     Val_0,
      --  Requests to issue a stop condition.
      Val_1)
   with Size => 1;
   for ICCR2_SP_Field use (Val_0 => 0, Val_1 => 1);

   --  Transmit/Receive Mode
   type ICCR2_TRS_Field is
     (--  Receive mode
     Val_0,
      --  Transmit mode
      Val_1)
   with Size => 1;
   for ICCR2_TRS_Field use (Val_0 => 0, Val_1 => 1);

   --  Master/Slave Mode
   type ICCR2_MST_Field is
     (--  Slave mode
     Val_0,
      --  Master mode
      Val_1)
   with Size => 1;
   for ICCR2_MST_Field use (Val_0 => 0, Val_1 => 1);

   --  Bus Busy Detection Flag
   type ICCR2_BBSY_Field is
     (--  The I2C bus is released (bus free state).
     Val_0,
      --  The I2C bus is occupied (bus busy state).
      Val_1)
   with Size => 1;
   for ICCR2_BBSY_Field use (Val_0 => 0, Val_1 => 1);

   --  I2C Bus Control Register 2
   type ICCR2_Register is record
      --  This bit is read as 0. The write value should be 0.
      Reserved   : ICCR2_Reserved_Field := 16#0#;
      --  Start Condition Issuance Request Set the ST bit to 1 (start condition
      --  issuance request) when the BBSY flag is set to 0 (bus free state).
      ST         : ICCR2_ST_Field := R7FA4M1AB.IIC0.Val_0;
      --  Restart Condition Issuance Request Note: Do not set the RS bit to 1
      --  while issuing a stop condition.
      RS         : ICCR2_RS_Field := R7FA4M1AB.IIC0.Val_0;
      --  Stop Condition Issuance Request Note: Writing to the SP bit is not
      --  possible while the setting of the BBSY flag is 0 (bus free state).
      --  Note: Do not set the SP bit to 1 while a restart condition is being
      --  issued.
      SP         : ICCR2_SP_Field := R7FA4M1AB.IIC0.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : ICCR2_Reserved_Field := 16#0#;
      --  Transmit/Receive Mode
      TRS        : ICCR2_TRS_Field := R7FA4M1AB.IIC0.Val_0;
      --  Master/Slave Mode
      MST        : ICCR2_MST_Field := R7FA4M1AB.IIC0.Val_0;
      --  Read-only. Bus Busy Detection Flag
      BBSY       : ICCR2_BBSY_Field := R7FA4M1AB.IIC0.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for ICCR2_Register use
     record
       Reserved at 0 range 0 .. 0;
       ST at 0 range 1 .. 1;
       RS at 0 range 2 .. 2;
       SP at 0 range 3 .. 3;
       Reserved_1 at 0 range 4 .. 4;
       TRS at 0 range 5 .. 5;
       MST at 0 range 6 .. 6;
       BBSY at 0 range 7 .. 7;
     end record;

   --  Bit Counter
   type ICMR1_BC_Field is
     (--  9 bits
     Val_000,
      --  2 bits
      Val_001,
      --  3 bits
      Val_010,
      --  4 bits
      Val_011,
      --  5 bits
      Val_100,
      --  6 bits
      Val_101,
      --  7 bits
      Val_110,
      --  8 bits
      Val_111)
   with Size => 3;
   for ICMR1_BC_Field use
     (Val_000 => 0,
      Val_001 => 1,
      Val_010 => 2,
      Val_011 => 3,
      Val_100 => 4,
      Val_101 => 5,
      Val_110 => 6,
      Val_111 => 7);

   --  BC Write Protect (This bit is read as 1.)
   type ICMR1_BCWP_Field is
     (--  Enables a value to be written in the BC[2:0] bits.
     Val_0,
      --  Disables a value to be written in the BC[2:0] bits.
      Val_1)
   with Size => 1;
   for ICMR1_BCWP_Field use (Val_0 => 0, Val_1 => 1);

   --  Internal Reference Clock (fIIC) Selection ( fIIC = PCLKB / 2^CKS )
   type ICMR1_CKS_Field is
     (--  PCLKB/1 clock
     Val_000,
      --  PCLKB/2 clock
      Val_001,
      --  PCLKB/4 clock
      Val_010,
      --  PCLKB/8 clock
      Val_011,
      --  PCLKB/16 clock
      Val_100,
      --  PCLKB/32 clock
      Val_101,
      --  PCLKB/64 clock
      Val_110,
      --  PCLKB/128 clock
      Val_111)
   with Size => 3;
   for ICMR1_CKS_Field use
     (Val_000 => 0,
      Val_001 => 1,
      Val_010 => 2,
      Val_011 => 3,
      Val_100 => 4,
      Val_101 => 5,
      Val_110 => 6,
      Val_111 => 7);

   --  MST/TRS Write Protect
   type ICMR1_MTWP_Field is
     (--  Disables writing to the MST and TRS bits in ICCR2.
     Val_0,
      --  Enables writing to the MST and TRS bits in ICCR2.
      Val_1)
   with Size => 1;
   for ICMR1_MTWP_Field use (Val_0 => 0, Val_1 => 1);

   --  I2C Bus Mode Register 1
   type ICMR1_Register is record
      --  Bit Counter
      BC   : ICMR1_BC_Field := R7FA4M1AB.IIC0.Val_000;
      --  Write-only. BC Write Protect (This bit is read as 1.)
      BCWP : ICMR1_BCWP_Field := R7FA4M1AB.IIC0.Val_1;
      --  Internal Reference Clock (fIIC) Selection ( fIIC = PCLKB / 2^CKS )
      CKS  : ICMR1_CKS_Field := R7FA4M1AB.IIC0.Val_000;
      --  MST/TRS Write Protect
      MTWP : ICMR1_MTWP_Field := R7FA4M1AB.IIC0.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for ICMR1_Register use
     record
       BC at 0 range 0 .. 2;
       BCWP at 0 range 3 .. 3;
       CKS at 0 range 4 .. 6;
       MTWP at 0 range 7 .. 7;
     end record;

   --  Timeout Detection Time Select
   type ICMR2_TMOS_Field is
     (--  Long mode is selected.
     Val_0,
      --  Short mode is selected.
      Val_1)
   with Size => 1;
   for ICMR2_TMOS_Field use (Val_0 => 0, Val_1 => 1);

   --  Timeout L Count Control
   type ICMR2_TMOL_Field is
     (--  Count is disabled while the SCLn line is at a low level.
     Val_0,
      --  Count is enabled while the SCLn line is at a low level.
      Val_1)
   with Size => 1;
   for ICMR2_TMOL_Field use (Val_0 => 0, Val_1 => 1);

   --  Timeout H Count Control
   type ICMR2_TMOH_Field is
     (--  Count is disabled while the SCLn line is at a high level.
     Val_0,
      --  Count is enabled while the SCLn line is at a high level.
      Val_1)
   with Size => 1;
   for ICMR2_TMOH_Field use (Val_0 => 0, Val_1 => 1);

   subtype ICMR2_Reserved_Field is R7FA4M1AB.Bit;

   --  SDA Output Delay Counter
   type ICMR2_SDDL_Field is
     (--  No output delay
     Val_000,
      --  1 fIIC cycle (ICMR2.DLCS=0) / 1 or 2 fIIC cycles (ICMR2.DLCS=1)
      Val_001,
      --  2 fIIC cycles (ICMR2.DLCS=0) / 3 or 4 fIIC cycles (ICMR2.DLCS=1)
      Val_010,
      --  3 fIIC cycles (ICMR2.DLCS=0) / 5 or 6 fIIC cycles (ICMR2.DLCS=1)
      Val_011,
      --  4 fIIC cycles (ICMR2.DLCS=0) / 7 or 8 fIIC cycles (ICMR2.DLCS=1)
      Val_100,
      --  5 fIIC cycles (ICMR2.DLCS=0) / 9 or 10 fIIC cycles (ICMR2.DLCS=1)
      Val_101,
      --  6 fIIC cycles (ICMR2.DLCS=0) / 11 or 12 fIIC cycles (ICMR2.DLCS=1)
      Val_110,
      --  7 fIIC cycles (ICMR2.DLCS=0) / 13 or 14 fIIC cycles (ICMR2.DLCS=1)
      Val_111)
   with Size => 3;
   for ICMR2_SDDL_Field use
     (Val_000 => 0,
      Val_001 => 1,
      Val_010 => 2,
      Val_011 => 3,
      Val_100 => 4,
      Val_101 => 5,
      Val_110 => 6,
      Val_111 => 7);

   --  SDA Output Delay Clock Source Select
   type ICMR2_DLCS_Field is
     (--  The internal reference clock (fIIC) is selected as the clock source of the
     --  SDA output delay counter.
     Val_0,
      --  The internal reference clock divided by 2 (fIIC/2) is selected as the clock
      --  source of the SDA output delay counter.
      Val_1)
   with Size => 1;
   for ICMR2_DLCS_Field use (Val_0 => 0, Val_1 => 1);

   --  I2C Bus Mode Register 2
   type ICMR2_Register is record
      --  Timeout Detection Time Select
      TMOS     : ICMR2_TMOS_Field := R7FA4M1AB.IIC0.Val_0;
      --  Timeout L Count Control
      TMOL     : ICMR2_TMOL_Field := R7FA4M1AB.IIC0.Val_1;
      --  Timeout H Count Control
      TMOH     : ICMR2_TMOH_Field := R7FA4M1AB.IIC0.Val_1;
      --  This bit is read as 0. The write value should be 0.
      Reserved : ICMR2_Reserved_Field := 16#0#;
      --  SDA Output Delay Counter
      SDDL     : ICMR2_SDDL_Field := R7FA4M1AB.IIC0.Val_000;
      --  SDA Output Delay Clock Source Select
      DLCS     : ICMR2_DLCS_Field := R7FA4M1AB.IIC0.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for ICMR2_Register use
     record
       TMOS at 0 range 0 .. 0;
       TMOL at 0 range 1 .. 1;
       TMOH at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       SDDL at 0 range 4 .. 6;
       DLCS at 0 range 7 .. 7;
     end record;

   --  Noise Filter Stage Selection
   type ICMR3_NF_Field is
     (--  Noise of up to one fIIC cycle is filtered out (single-stage filter).
     Val_00,
      --  Noise of up to two fIIC cycles is filtered out (2-stage filter).
      Val_01,
      --  Noise of up to three fIIC cycles is filtered out (3-stage filter).
      Val_10,
      --  Noise of up to four fIIC cycles is filtered out (4-stage filter)
      Val_11)
   with Size => 2;
   for ICMR3_NF_Field use (Val_00 => 0, Val_01 => 1, Val_10 => 2, Val_11 => 3);

   --  Receive Acknowledge
   type ICMR3_ACKBR_Field is
     (--  A 0 is received as the acknowledge bit (ACK reception).
     Val_0,
      --  A 1 is received as the acknowledge bit (NACK reception).
      Val_1)
   with Size => 1;
   for ICMR3_ACKBR_Field use (Val_0 => 0, Val_1 => 1);

   --  Transmit Acknowledge
   type ICMR3_ACKBT_Field is
     (--  A 0 is sent as the acknowledge bit (ACK transmission).
     Val_0,
      --  A 1 is sent as the acknowledge bit (NACK transmission).
      Val_1)
   with Size => 1;
   for ICMR3_ACKBT_Field use (Val_0 => 0, Val_1 => 1);

   --  ACKBT Write Protect
   type ICMR3_ACKWP_Field is
     (--  Modification of the ACKBT bit is disabled.
     Val_0,
      --  Modification of the ACKBT bit is enabled.
      Val_1)
   with Size => 1;
   for ICMR3_ACKWP_Field use (Val_0 => 0, Val_1 => 1);

   --  RDRF Flag Set Timing Selection
   type ICMR3_RDRFS_Field is
     (--  The RDRF flag is set at the rising edge of the ninth SCL clock cycle. (The
     --  SCLn line is not held low at the falling edge of the eighth clock cycle.)
     Val_0,
      --  The RDRF flag is set at the rising edge of the eighth SCL clock cycle. (The
      --  SCLn line is held low at the falling edge of the eighth clock cycle.)
      Val_1)
   with Size => 1;
   for ICMR3_RDRFS_Field use (Val_0 => 0, Val_1 => 1);

   --  WAIT Note: When the value of the WAIT bit is to be read, be sure to read
   --  the ICDRR beforehand.
   type ICMR3_WAIT_Field is
     (--  No WAIT (The period between ninth clock cycle and first clock cycle is not
     --  held low.)
     Val_0,
      --  WAIT (The period between ninth clock cycle and first clock cycle is held
      --  low.)
      Val_1)
   with Size => 1;
   for ICMR3_WAIT_Field use (Val_0 => 0, Val_1 => 1);

   --  SMBus/I2C Bus Selection
   type ICMR3_SMBS_Field is
     (--  The I2C bus is selected.
     Val_0,
      --  The SMBus is selected.
      Val_1)
   with Size => 1;
   for ICMR3_SMBS_Field use (Val_0 => 0, Val_1 => 1);

   --  I2C Bus Mode Register 3
   type ICMR3_Register is record
      --  Noise Filter Stage Selection
      NF    : ICMR3_NF_Field := R7FA4M1AB.IIC0.Val_00;
      --  Read-only. Receive Acknowledge
      ACKBR : ICMR3_ACKBR_Field := R7FA4M1AB.IIC0.Val_0;
      --  Transmit Acknowledge
      ACKBT : ICMR3_ACKBT_Field := R7FA4M1AB.IIC0.Val_0;
      --  ACKBT Write Protect
      ACKWP : ICMR3_ACKWP_Field := R7FA4M1AB.IIC0.Val_0;
      --  RDRF Flag Set Timing Selection
      RDRFS : ICMR3_RDRFS_Field := R7FA4M1AB.IIC0.Val_0;
      --  WAIT Note: When the value of the WAIT bit is to be read, be sure to
      --  read the ICDRR beforehand.
      WAIT  : ICMR3_WAIT_Field := R7FA4M1AB.IIC0.Val_0;
      --  SMBus/I2C Bus Selection
      SMBS  : ICMR3_SMBS_Field := R7FA4M1AB.IIC0.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for ICMR3_Register use
     record
       NF at 0 range 0 .. 1;
       ACKBR at 0 range 2 .. 2;
       ACKBT at 0 range 3 .. 3;
       ACKWP at 0 range 4 .. 4;
       RDRFS at 0 range 5 .. 5;
       WAIT at 0 range 6 .. 6;
       SMBS at 0 range 7 .. 7;
     end record;

   --  Timeout Function Enable
   type ICFER_TMOE_Field is
     (--  The timeout function is disabled.
     Val_0,
      --  The timeout function is enabled.
      Val_1)
   with Size => 1;
   for ICFER_TMOE_Field use (Val_0 => 0, Val_1 => 1);

   --  Master Arbitration-Lost Detection Enable
   type ICFER_MALE_Field is
     (--  Master arbitration-lost detection is disabled.
     Val_0,
      --  Master arbitration-lost detection is enabled.
      Val_1)
   with Size => 1;
   for ICFER_MALE_Field use (Val_0 => 0, Val_1 => 1);

   --  NACK Transmission Arbitration-Lost Detection Enable
   type ICFER_NALE_Field is
     (--  NACK transmission arbitration-lost detection is disabled.
     Val_0,
      --  NACK transmission arbitration-lost detection is enabled.
      Val_1)
   with Size => 1;
   for ICFER_NALE_Field use (Val_0 => 0, Val_1 => 1);

   --  Slave Arbitration-Lost Detection Enable
   type ICFER_SALE_Field is
     (--  Slave arbitration-lost detection is disabled.
     Val_0,
      --  Slave arbitration-lost detection is enabled.
      Val_1)
   with Size => 1;
   for ICFER_SALE_Field use (Val_0 => 0, Val_1 => 1);

   --  NACK Reception Transfer Suspension Enable
   type ICFER_NACKE_Field is
     (--  Transfer operation is not suspended during NACK reception (transfer
     --  suspension disabled).
     Val_0,
      --  Transfer operation is suspended during NACK reception (transfer suspension
      --  enabled).
      Val_1)
   with Size => 1;
   for ICFER_NACKE_Field use (Val_0 => 0, Val_1 => 1);

   --  Digital Noise Filter Circuit Enable
   type ICFER_NFE_Field is
     (--  No digital noise filter circuit is used.
     Val_0,
      --  A digital noise filter circuit is used.
      Val_1)
   with Size => 1;
   for ICFER_NFE_Field use (Val_0 => 0, Val_1 => 1);

   --  SCL Synchronous Circuit Enable
   type ICFER_SCLE_Field is
     (--  No SCL synchronous circuit is used.
     Val_0,
      --  An SCL synchronous circuit is used.
      Val_1)
   with Size => 1;
   for ICFER_SCLE_Field use (Val_0 => 0, Val_1 => 1);

   subtype ICFER_Reserved_Field is R7FA4M1AB.Bit;

   --  I2C Bus Function Enable Register
   type ICFER_Register is record
      --  Timeout Function Enable
      TMOE     : ICFER_TMOE_Field := R7FA4M1AB.IIC0.Val_0;
      --  Master Arbitration-Lost Detection Enable
      MALE     : ICFER_MALE_Field := R7FA4M1AB.IIC0.Val_1;
      --  NACK Transmission Arbitration-Lost Detection Enable
      NALE     : ICFER_NALE_Field := R7FA4M1AB.IIC0.Val_0;
      --  Slave Arbitration-Lost Detection Enable
      SALE     : ICFER_SALE_Field := R7FA4M1AB.IIC0.Val_0;
      --  NACK Reception Transfer Suspension Enable
      NACKE    : ICFER_NACKE_Field := R7FA4M1AB.IIC0.Val_1;
      --  Digital Noise Filter Circuit Enable
      NFE      : ICFER_NFE_Field := R7FA4M1AB.IIC0.Val_1;
      --  SCL Synchronous Circuit Enable
      SCLE     : ICFER_SCLE_Field := R7FA4M1AB.IIC0.Val_1;
      --  This bit is read as 0. The write value should be 0.
      Reserved : ICFER_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for ICFER_Register use
     record
       TMOE at 0 range 0 .. 0;
       MALE at 0 range 1 .. 1;
       NALE at 0 range 2 .. 2;
       SALE at 0 range 3 .. 3;
       NACKE at 0 range 4 .. 4;
       NFE at 0 range 5 .. 5;
       SCLE at 0 range 6 .. 6;
       Reserved at 0 range 7 .. 7;
     end record;

   --  Slave Address Register 0 Enable
   type ICSER_SAR0E_Field is
     (--  Slave address in SARL0 and SARU0 is disabled.
     Val_0,
      --  Slave address in SARL0 and SARU0 is enabled.
      Val_1)
   with Size => 1;
   for ICSER_SAR0E_Field use (Val_0 => 0, Val_1 => 1);

   --  Slave Address Register 1 Enable
   type ICSER_SAR1E_Field is
     (--  Slave address in SARL1 and SARU1 is disabled.
     Val_0,
      --  Slave address in SARL1 and SARU1 is enabled.
      Val_1)
   with Size => 1;
   for ICSER_SAR1E_Field use (Val_0 => 0, Val_1 => 1);

   --  Slave Address Register 2 Enable
   type ICSER_SAR2E_Field is
     (--  Slave address in SARL2 and SARU2 is disabled.
     Val_0,
      --  Slave address in SARL2 and SARU2 is enabled
      Val_1)
   with Size => 1;
   for ICSER_SAR2E_Field use (Val_0 => 0, Val_1 => 1);

   --  General Call Address Enable
   type ICSER_GCAE_Field is
     (--  General call address detection is disabled.
     Val_0,
      --  General call address detection is enabled.
      Val_1)
   with Size => 1;
   for ICSER_GCAE_Field use (Val_0 => 0, Val_1 => 1);

   subtype ICSER_Reserved_Field is R7FA4M1AB.Bit;

   --  Device-ID Address Detection Enable
   type ICSER_DIDE_Field is
     (--  Device-ID address detection is disabled.
     Val_0,
      --  Device-ID address detection is enabled.
      Val_1)
   with Size => 1;
   for ICSER_DIDE_Field use (Val_0 => 0, Val_1 => 1);

   --  Host Address Enable
   type ICSER_HOAE_Field is
     (--  Host address detection is disabled.
     Val_0,
      --  Host address detection is enabled.
      Val_1)
   with Size => 1;
   for ICSER_HOAE_Field use (Val_0 => 0, Val_1 => 1);

   --  I2C Bus Status Enable Register
   type ICSER_Register is record
      --  Slave Address Register 0 Enable
      SAR0E      : ICSER_SAR0E_Field := R7FA4M1AB.IIC0.Val_1;
      --  Slave Address Register 1 Enable
      SAR1E      : ICSER_SAR1E_Field := R7FA4M1AB.IIC0.Val_0;
      --  Slave Address Register 2 Enable
      SAR2E      : ICSER_SAR2E_Field := R7FA4M1AB.IIC0.Val_0;
      --  General Call Address Enable
      GCAE       : ICSER_GCAE_Field := R7FA4M1AB.IIC0.Val_1;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : ICSER_Reserved_Field := 16#0#;
      --  Device-ID Address Detection Enable
      DIDE       : ICSER_DIDE_Field := R7FA4M1AB.IIC0.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : ICSER_Reserved_Field := 16#0#;
      --  Host Address Enable
      HOAE       : ICSER_HOAE_Field := R7FA4M1AB.IIC0.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for ICSER_Register use
     record
       SAR0E at 0 range 0 .. 0;
       SAR1E at 0 range 1 .. 1;
       SAR2E at 0 range 2 .. 2;
       GCAE at 0 range 3 .. 3;
       Reserved at 0 range 4 .. 4;
       DIDE at 0 range 5 .. 5;
       Reserved_1 at 0 range 6 .. 6;
       HOAE at 0 range 7 .. 7;
     end record;

   --  Timeout Interrupt Request Enable
   type ICIER_TMOIE_Field is
     (--  Timeout interrupt request (TMOI) is disabled.
     Val_0,
      --  Timeout interrupt request (TMOI) is enabled.
      Val_1)
   with Size => 1;
   for ICIER_TMOIE_Field use (Val_0 => 0, Val_1 => 1);

   --  Arbitration-Lost Interrupt Request Enable
   type ICIER_ALIE_Field is
     (--  Arbitration-lost interrupt request (ALI) is disabled.
     Val_0,
      --  Arbitration-lost interrupt request (ALI) is enabled.
      Val_1)
   with Size => 1;
   for ICIER_ALIE_Field use (Val_0 => 0, Val_1 => 1);

   --  Start Condition Detection Interrupt Request Enable
   type ICIER_STIE_Field is
     (--  Start condition detection interrupt request (STI) is disabled.
     Val_0,
      --  Start condition detection interrupt request (STI) is enabled.
      Val_1)
   with Size => 1;
   for ICIER_STIE_Field use (Val_0 => 0, Val_1 => 1);

   --  Stop Condition Detection Interrupt Request Enable
   type ICIER_SPIE_Field is
     (--  Stop condition detection interrupt request (SPI) is disabled.
     Val_0,
      --  Stop condition detection interrupt request (SPI) is enabled.
      Val_1)
   with Size => 1;
   for ICIER_SPIE_Field use (Val_0 => 0, Val_1 => 1);

   --  NACK Reception Interrupt Request Enable
   type ICIER_NAKIE_Field is
     (--  NACK reception interrupt request (NAKI) is disabled.
     Val_0,
      --  NACK reception interrupt request (NAKI) is enabled.
      Val_1)
   with Size => 1;
   for ICIER_NAKIE_Field use (Val_0 => 0, Val_1 => 1);

   --  Receive Data Full Interrupt Request Enable
   type ICIER_RIE_Field is
     (--  Receive data full interrupt request (IIC_RXI) is disabled.
     Val_0,
      --  Receive data full interrupt request (IIC_RXI) is enabled.
      Val_1)
   with Size => 1;
   for ICIER_RIE_Field use (Val_0 => 0, Val_1 => 1);

   --  Transmit End Interrupt Request Enable
   type ICIER_TEIE_Field is
     (--  Transmit end interrupt request (IIC_TEI) is disabled.
     Val_0,
      --  Transmit end interrupt request (IIC_TEI) is enabled.
      Val_1)
   with Size => 1;
   for ICIER_TEIE_Field use (Val_0 => 0, Val_1 => 1);

   --  Transmit Data Empty Interrupt Request Enable
   type ICIER_TIE_Field is
     (--  Transmit data empty interrupt request (IIC_TXI) is disabled.
     Val_0,
      --  Transmit data empty interrupt request (IIC_TXI) is enabled.
      Val_1)
   with Size => 1;
   for ICIER_TIE_Field use (Val_0 => 0, Val_1 => 1);

   --  I2C Bus Interrupt Enable Register
   type ICIER_Register is record
      --  Timeout Interrupt Request Enable
      TMOIE : ICIER_TMOIE_Field := R7FA4M1AB.IIC0.Val_0;
      --  Arbitration-Lost Interrupt Request Enable
      ALIE  : ICIER_ALIE_Field := R7FA4M1AB.IIC0.Val_0;
      --  Start Condition Detection Interrupt Request Enable
      STIE  : ICIER_STIE_Field := R7FA4M1AB.IIC0.Val_0;
      --  Stop Condition Detection Interrupt Request Enable
      SPIE  : ICIER_SPIE_Field := R7FA4M1AB.IIC0.Val_0;
      --  NACK Reception Interrupt Request Enable
      NAKIE : ICIER_NAKIE_Field := R7FA4M1AB.IIC0.Val_0;
      --  Receive Data Full Interrupt Request Enable
      RIE   : ICIER_RIE_Field := R7FA4M1AB.IIC0.Val_0;
      --  Transmit End Interrupt Request Enable
      TEIE  : ICIER_TEIE_Field := R7FA4M1AB.IIC0.Val_0;
      --  Transmit Data Empty Interrupt Request Enable
      TIE   : ICIER_TIE_Field := R7FA4M1AB.IIC0.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for ICIER_Register use
     record
       TMOIE at 0 range 0 .. 0;
       ALIE at 0 range 1 .. 1;
       STIE at 0 range 2 .. 2;
       SPIE at 0 range 3 .. 3;
       NAKIE at 0 range 4 .. 4;
       RIE at 0 range 5 .. 5;
       TEIE at 0 range 6 .. 6;
       TIE at 0 range 7 .. 7;
     end record;

   --  Slave Address 0 Detection Flag
   type ICSR1_AAS0_Field is
     (--  Slave address 0 is not detected.
     Val_0,
      --  Slave address 0 is detected.
      Val_1)
   with Size => 1;
   for ICSR1_AAS0_Field use (Val_0 => 0, Val_1 => 1);

   --  Slave Address 1 Detection Flag
   type ICSR1_AAS1_Field is
     (--  Slave address 1 is not detected.
     Val_0,
      --  Slave address 1 is detected.
      Val_1)
   with Size => 1;
   for ICSR1_AAS1_Field use (Val_0 => 0, Val_1 => 1);

   --  Slave Address 2 Detection Flag
   type ICSR1_AAS2_Field is
     (--  Slave address 2 is not detected.
     Val_0,
      --  Slave address 2 is detected
      Val_1)
   with Size => 1;
   for ICSR1_AAS2_Field use (Val_0 => 0, Val_1 => 1);

   --  General Call Address Detection Flag
   type ICSR1_GCA_Field is
     (--  General call address is not detected.
     Val_0,
      --  General call address is detected.
      Val_1)
   with Size => 1;
   for ICSR1_GCA_Field use (Val_0 => 0, Val_1 => 1);

   subtype ICSR1_Reserved_Field is R7FA4M1AB.Bit;

   --  Device-ID Address Detection Flag
   type ICSR1_DID_Field is
     (--  Device-ID command is not detected.
     Val_0,
      --  Device-ID command is detected.
      Val_1)
   with Size => 1;
   for ICSR1_DID_Field use (Val_0 => 0, Val_1 => 1);

   --  Host Address Detection Flag
   type ICSR1_HOA_Field is
     (--  Host address is not detected.
     Val_0,
      --  Host address is detected.
      Val_1)
   with Size => 1;
   for ICSR1_HOA_Field use (Val_0 => 0, Val_1 => 1);

   --  I2C Bus Status Register 1
   type ICSR1_Register is record
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Slave Address 0 Detection Flag
      AAS0       : ICSR1_AAS0_Field := R7FA4M1AB.IIC0.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Slave Address 1 Detection Flag
      AAS1       : ICSR1_AAS1_Field := R7FA4M1AB.IIC0.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Slave Address 2 Detection Flag
      AAS2       : ICSR1_AAS2_Field := R7FA4M1AB.IIC0.Val_0;
      --  General Call Address Detection Flag
      GCA        : ICSR1_GCA_Field := R7FA4M1AB.IIC0.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : ICSR1_Reserved_Field := 16#0#;
      --  Device-ID Address Detection Flag
      DID        : ICSR1_DID_Field := R7FA4M1AB.IIC0.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : ICSR1_Reserved_Field := 16#0#;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Host Address Detection Flag
      HOA        : ICSR1_HOA_Field := R7FA4M1AB.IIC0.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for ICSR1_Register use
     record
       AAS0 at 0 range 0 .. 0;
       AAS1 at 0 range 1 .. 1;
       AAS2 at 0 range 2 .. 2;
       GCA at 0 range 3 .. 3;
       Reserved at 0 range 4 .. 4;
       DID at 0 range 5 .. 5;
       Reserved_1 at 0 range 6 .. 6;
       HOA at 0 range 7 .. 7;
     end record;

   --  Timeout Detection Flag
   type ICSR2_TMOF_Field is
     (--  Timeout is not detected.
     Val_0,
      --  Timeout is detected.
      Val_1)
   with Size => 1;
   for ICSR2_TMOF_Field use (Val_0 => 0, Val_1 => 1);

   --  Arbitration-Lost Flag
   type ICSR2_AL_Field is
     (--  Arbitration is not lost.
     Val_0,
      --  Arbitration is lost.
      Val_1)
   with Size => 1;
   for ICSR2_AL_Field use (Val_0 => 0, Val_1 => 1);

   --  Start Condition Detection Flag
   type ICSR2_START_Field is
     (--  Start condition is not detected.
     Val_0,
      --  Start condition is detected.
      Val_1)
   with Size => 1;
   for ICSR2_START_Field use (Val_0 => 0, Val_1 => 1);

   --  Stop Condition Detection Flag
   type ICSR2_STOP_Field is
     (--  Stop condition is not detected.
     Val_0,
      --  Stop condition is detected.
      Val_1)
   with Size => 1;
   for ICSR2_STOP_Field use (Val_0 => 0, Val_1 => 1);

   --  NACK Detection Flag
   type ICSR2_NACKF_Field is
     (--  NACK is not detected.
     Val_0,
      --  NACK is detected.
      Val_1)
   with Size => 1;
   for ICSR2_NACKF_Field use (Val_0 => 0, Val_1 => 1);

   --  Receive Data Full Flag
   type ICSR2_RDRF_Field is
     (--  ICDRR contains no receive data.
     Val_0,
      --  ICDRR contains receive data.
      Val_1)
   with Size => 1;
   for ICSR2_RDRF_Field use (Val_0 => 0, Val_1 => 1);

   --  Transmit End Flag
   type ICSR2_TEND_Field is
     (--  Data is being transmitted.
     Val_0,
      --  Data has been transmitted.
      Val_1)
   with Size => 1;
   for ICSR2_TEND_Field use (Val_0 => 0, Val_1 => 1);

   --  Transmit Data Empty Flag
   type ICSR2_TDRE_Field is
     (--  ICDRT contains transmit data.
     Val_0,
      --  ICDRT contains no transmit data.
      Val_1)
   with Size => 1;
   for ICSR2_TDRE_Field use (Val_0 => 0, Val_1 => 1);

   --  I2C Bus Status Register 2
   type ICSR2_Register is record
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Timeout Detection Flag
      TMOF  : ICSR2_TMOF_Field := R7FA4M1AB.IIC0.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Arbitration-Lost Flag
      AL    : ICSR2_AL_Field := R7FA4M1AB.IIC0.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Start Condition Detection Flag
      START : ICSR2_START_Field := R7FA4M1AB.IIC0.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Stop Condition Detection Flag
      STOP  : ICSR2_STOP_Field := R7FA4M1AB.IIC0.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. NACK Detection Flag
      NACKF : ICSR2_NACKF_Field := R7FA4M1AB.IIC0.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Receive Data Full Flag
      RDRF  : ICSR2_RDRF_Field := R7FA4M1AB.IIC0.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Transmit End Flag
      TEND  : ICSR2_TEND_Field := R7FA4M1AB.IIC0.Val_0;
      --  Read-only. Transmit Data Empty Flag
      TDRE  : ICSR2_TDRE_Field := R7FA4M1AB.IIC0.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for ICSR2_Register use
     record
       TMOF at 0 range 0 .. 0;
       AL at 0 range 1 .. 1;
       START at 0 range 2 .. 2;
       STOP at 0 range 3 .. 3;
       NACKF at 0 range 4 .. 4;
       RDRF at 0 range 5 .. 5;
       TEND at 0 range 6 .. 6;
       TDRE at 0 range 7 .. 7;
     end record;

   --  7-Bit/10-Bit Address Format Selection
   type SARU0_FS_Field is
     (--  The 7-bit address format is selected.
     Val_0,
      --  The 10-bit address format is selected.
      Val_1)
   with Size => 1;
   for SARU0_FS_Field use (Val_0 => 0, Val_1 => 1);

   --  SARU_SVA array element
   subtype SARU_SVA_Element is R7FA4M1AB.Bit;

   --  SARU_SVA array
   type SARU_SVA_Field_Array is array (8 .. 9) of SARU_SVA_Element
   with Component_Size => 1, Size => 2;

   --  Type definition for SARU_SVA
   type SARU_SVA_Field (As_Array : Boolean := False) is record
      case As_Array is
         when False =>
            --  SVA as a value
            Val : R7FA4M1AB.UInt2;

         when True =>
            --  SVA as an array
            Arr : SARU_SVA_Field_Array;
      end case;
   end record
   with Unchecked_Union, Size => 2;

   for SARU_SVA_Field use
     record
       Val at 0 range 0 .. 1;
       Arr at 0 range 0 .. 1;
     end record;

   subtype SARU_Reserved_Field is R7FA4M1AB.UInt5;

   --  Slave Address Register U%s
   type SARU_Register is record
      --  7-Bit/10-Bit Address Format Selection
      FS       : SARU0_FS_Field := R7FA4M1AB.IIC0.Val_0;
      --  10-Bit Address(bit8)
      SVA      : SARU_SVA_Field := (As_Array => False, Val => 16#0#);
      --  These bits are read as 00000. The write value should be 00000.
      Reserved : SARU_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for SARU_Register use
     record
       FS at 0 range 0 .. 0;
       SVA at 0 range 1 .. 2;
       Reserved at 0 range 3 .. 7;
     end record;

   subtype ICBRL_BRL_Field is R7FA4M1AB.UInt5;
   subtype ICBRL_Reserved_Field is R7FA4M1AB.UInt3;

   --  I2C Bus Bit Rate Low-Level Register
   type ICBRL_Register is record
      --  Bit Rate Low-Level Period (Low-level period of SCL clock)
      BRL      : ICBRL_BRL_Field := 16#1F#;
      --  These bits are read as 111. The write value should be 111.
      Reserved : ICBRL_Reserved_Field := 16#7#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for ICBRL_Register use
     record
       BRL at 0 range 0 .. 4;
       Reserved at 0 range 5 .. 7;
     end record;

   subtype ICBRH_BRH_Field is R7FA4M1AB.UInt5;
   subtype ICBRH_Reserved_Field is R7FA4M1AB.UInt3;

   --  I2C Bus Bit Rate High-Level Register
   type ICBRH_Register is record
      --  Bit Rate High-Level Period (High-level period of SCL clock)
      BRH      : ICBRH_BRH_Field := 16#1F#;
      --  These bits are read as 111. The write value should be 111.
      Reserved : ICBRH_Reserved_Field := 16#7#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for ICBRH_Register use
     record
       BRH at 0 range 0 .. 4;
       Reserved at 0 range 5 .. 7;
     end record;

   --  Wakeup Analog Filter Additional Selection
   type ICWUR_WUAFA_Field is
     (--  Do not add the wakeup analog filter
     Val_0,
      --  Add the wakeup analog filter.
      Val_1)
   with Size => 1;
   for ICWUR_WUAFA_Field use (Val_0 => 0, Val_1 => 1);

   subtype ICWUR_Reserved_Field is R7FA4M1AB.UInt3;

   --  ACK bit for Wakeup Mode
   type ICWUR_WUACK_Field is
     (--  State of synchronous operation
     Val_0,
      --  State of asynchronous operation
      Val_1)
   with Size => 1;
   for ICWUR_WUACK_Field use (Val_0 => 0, Val_1 => 1);

   --  Wakeup Event Occurrence Flag
   type ICWUR_WUF_Field is
     (--  Slave address does not match during wakeup function
     Val_0,
      --  Slave address matches during wakeup function.
      Val_1)
   with Size => 1;
   for ICWUR_WUF_Field use (Val_0 => 0, Val_1 => 1);

   --  Wakeup Interrupt Request Enable
   type ICWUR_WUIE_Field is
     (--  Wakeup Interrupt Request (IIC0_WUI) disabled
     Val_0,
      --  Wakeup Interrupt Request (IIC0_WUI) enabled.
      Val_1)
   with Size => 1;
   for ICWUR_WUIE_Field use (Val_0 => 0, Val_1 => 1);

   --  Wakeup Function Enable
   type ICWUR_WUE_Field is
     (--  Wakeup function disabled
     Val_0,
      --  Wakeup function enabled.
      Val_1)
   with Size => 1;
   for ICWUR_WUE_Field use (Val_0 => 0, Val_1 => 1);

   --  I2C Bus Wake Up Unit Register
   type ICWUR_Register is record
      --  Wakeup Analog Filter Additional Selection
      WUAFA    : ICWUR_WUAFA_Field := R7FA4M1AB.IIC0.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved : ICWUR_Reserved_Field := 16#0#;
      --  ACK bit for Wakeup Mode
      WUACK    : ICWUR_WUACK_Field := R7FA4M1AB.IIC0.Val_1;
      --  Wakeup Event Occurrence Flag
      WUF      : ICWUR_WUF_Field := R7FA4M1AB.IIC0.Val_0;
      --  Wakeup Interrupt Request Enable
      WUIE     : ICWUR_WUIE_Field := R7FA4M1AB.IIC0.Val_0;
      --  Wakeup Function Enable
      WUE      : ICWUR_WUE_Field := R7FA4M1AB.IIC0.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for ICWUR_Register use
     record
       WUAFA at 0 range 0 .. 0;
       Reserved at 0 range 1 .. 3;
       WUACK at 0 range 4 .. 4;
       WUF at 0 range 5 .. 5;
       WUIE at 0 range 6 .. 6;
       WUE at 0 range 7 .. 7;
     end record;

   --  Wake-up Function Synchronous Enable
   type ICWUR2_WUSEN_Field is
     (--  IIC asynchronous circuit enable
     Val_0,
      --  IIC synchronous circuit enable
      Val_1)
   with Size => 1;
   for ICWUR2_WUSEN_Field use (Val_0 => 0, Val_1 => 1);

   --  Wake-up Function Asynchronous Operation Status Flag
   type ICWUR2_WUASYF_Field is
     (--  IIC synchronous circuit enable condition
     Val_0,
      --  IIC asynchronous circuit enable condition.
      Val_1)
   with Size => 1;
   for ICWUR2_WUASYF_Field use (Val_0 => 0, Val_1 => 1);

   --  Wake-up Function Synchronous Operation Status Flag
   type ICWUR2_WUSYF_Field is
     (--  IIC asynchronous circuit enable condition
     Val_0,
      --  IIC synchronous circuit enable condition.
      Val_1)
   with Size => 1;
   for ICWUR2_WUSYF_Field use (Val_0 => 0, Val_1 => 1);

   subtype ICWUR2_Reserved_Field is R7FA4M1AB.UInt5;

   --  I2C Bus Wake up Unit Register 2
   type ICWUR2_Register is record
      --  Wake-up Function Synchronous Enable
      WUSEN    : ICWUR2_WUSEN_Field := R7FA4M1AB.IIC0.Val_1;
      --  Read-only. Wake-up Function Asynchronous Operation Status Flag
      WUASYF   : ICWUR2_WUASYF_Field := R7FA4M1AB.IIC0.Val_0;
      --  Read-only. Wake-up Function Synchronous Operation Status Flag
      WUSYF    : ICWUR2_WUSYF_Field := R7FA4M1AB.IIC0.Val_1;
      --  These bits are read as 11111. The write value should be 11111.
      Reserved : ICWUR2_Reserved_Field := 16#1F#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for ICWUR2_Register use
     record
       WUSEN at 0 range 0 .. 0;
       WUASYF at 0 range 1 .. 1;
       WUSYF at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 7;
     end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Inter-Integrated Circuit 0
   type IIC0_Peripheral is record
      --  I2C Bus Control Register 1
      ICCR1  : aliased ICCR1_Register;
      --  I2C Bus Control Register 2
      ICCR2  : aliased ICCR2_Register;
      --  I2C Bus Mode Register 1
      ICMR1  : aliased ICMR1_Register;
      --  I2C Bus Mode Register 2
      ICMR2  : aliased ICMR2_Register;
      --  I2C Bus Mode Register 3
      ICMR3  : aliased ICMR3_Register;
      --  I2C Bus Function Enable Register
      ICFER  : aliased ICFER_Register;
      --  I2C Bus Status Enable Register
      ICSER  : aliased ICSER_Register;
      --  I2C Bus Interrupt Enable Register
      ICIER  : aliased ICIER_Register;
      --  I2C Bus Status Register 1
      ICSR1  : aliased ICSR1_Register;
      --  I2C Bus Status Register 2
      ICSR2  : aliased ICSR2_Register;
      --  Slave Address Register L%s
      SARL0  : aliased R7FA4M1AB.Byte;
      --  Slave Address Register U%s
      SARU0  : aliased SARU_Register;
      --  Slave Address Register L%s
      SARL1  : aliased R7FA4M1AB.Byte;
      --  Slave Address Register U%s
      SARU1  : aliased SARU_Register;
      --  Slave Address Register L%s
      SARL2  : aliased R7FA4M1AB.Byte;
      --  Slave Address Register U%s
      SARU2  : aliased SARU_Register;
      --  I2C Bus Bit Rate Low-Level Register
      ICBRL  : aliased ICBRL_Register;
      --  I2C Bus Bit Rate High-Level Register
      ICBRH  : aliased ICBRH_Register;
      --  I2C Bus Transmit Data Register
      ICDRT  : aliased R7FA4M1AB.Byte;
      --  I2C Bus Receive Data Register
      ICDRR  : aliased R7FA4M1AB.Byte;
      --  I2C Bus Wake Up Unit Register
      ICWUR  : aliased ICWUR_Register;
      --  I2C Bus Wake up Unit Register 2
      ICWUR2 : aliased ICWUR2_Register;
   end record
   with Volatile;

   for IIC0_Peripheral use
     record
       ICCR1 at 16#0# range 0 .. 7;
       ICCR2 at 16#1# range 0 .. 7;
       ICMR1 at 16#2# range 0 .. 7;
       ICMR2 at 16#3# range 0 .. 7;
       ICMR3 at 16#4# range 0 .. 7;
       ICFER at 16#5# range 0 .. 7;
       ICSER at 16#6# range 0 .. 7;
       ICIER at 16#7# range 0 .. 7;
       ICSR1 at 16#8# range 0 .. 7;
       ICSR2 at 16#9# range 0 .. 7;
       SARL0 at 16#A# range 0 .. 7;
       SARU0 at 16#B# range 0 .. 7;
       SARL1 at 16#C# range 0 .. 7;
       SARU1 at 16#D# range 0 .. 7;
       SARL2 at 16#E# range 0 .. 7;
       SARU2 at 16#F# range 0 .. 7;
       ICBRL at 16#10# range 0 .. 7;
       ICBRH at 16#11# range 0 .. 7;
       ICDRT at 16#12# range 0 .. 7;
       ICDRR at 16#13# range 0 .. 7;
       ICWUR at 16#16# range 0 .. 7;
       ICWUR2 at 16#17# range 0 .. 7;
     end record;

   --  Inter-Integrated Circuit 0
   IIC0_Periph : aliased IIC0_Peripheral
   with Import, Address => IIC0_Base;

end R7FA4M1AB.IIC0;
