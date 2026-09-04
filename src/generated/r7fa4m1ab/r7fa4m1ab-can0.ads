-- 
-- Copyright (C) 2026 Marcus Gigandet
--
-- SPDX-License-Identifier: LGPL-3.0-or-later
-- 

pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB-ada.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  CAN0 Module   
package R7FA4M1AB.CAN0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype MB_ID_EID_Field is R7FA4M1AB.UInt18;
   subtype MB_ID_SID_Field is R7FA4M1AB.UInt11;

   --  Remote Transmission Request
   type MB_ID0_RTR_Field is
     (--  Data frame
      Val_0,
      --  Remote frame
      Val_1)
     with Size => 1;
   for MB_ID0_RTR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ID Extension
   type MB_ID0_IDE_Field is
     (--  Standard ID
      Val_0,
      --  Extended ID
      Val_1)
     with Size => 1;
   for MB_ID0_IDE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Mailbox Register
   type MB_ID_Register is record
      --  Extended ID
      EID      : MB_ID_EID_Field := 16#0#;
      --  Standard ID
      SID      : MB_ID_SID_Field := 16#0#;
      --  This bit is read as 0. The write value should be 0.
      Reserved : Boolean := False;
      --  Remote Transmission Request
      RTR      : MB_ID0_RTR_Field := R7FA4M1AB.CAN0.Val_0;
      --  ID Extension
      IDE      : MB_ID0_IDE_Field := R7FA4M1AB.CAN0.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MB_ID_Register use record
      EID      at 0 range 0 .. 17;
      SID      at 0 range 18 .. 28;
      Reserved at 0 range 29 .. 29;
      RTR      at 0 range 30 .. 30;
      IDE      at 0 range 31 .. 31;
   end record;

   --  Data Length Code
   type MB_DL0_DLC_Field is
     (--  Data length = 0 byte
      Val_0000,
      --  Data length = 8 bytes
      others_k,
      --  Data length = 1 byte
      Val_0001,
      --  Data length = 2 bytes
      Val_0010,
      --  Data length = 3 bytes
      Val_0011,
      --  Data length = 4 bytes
      Val_0100,
      --  Data length = 5 bytes
      Val_0101,
      --  Data length = 6 bytes
      Val_0110,
      --  Data length = 7 bytes
      Val_0111)
     with Size => 4;
   for MB_DL0_DLC_Field use
     (Val_0000 => 0,
      others_k => 0,
      Val_0001 => 1,
      Val_0010 => 2,
      Val_0011 => 3,
      Val_0100 => 4,
      Val_0101 => 5,
      Val_0110 => 6,
      Val_0111 => 7);

   subtype MB_DL_Reserved_Field is R7FA4M1AB.UInt12;

   --  Mailbox Register
   type MB_DL_Register is record
      --  Data Length Code
      DLC      : MB_DL0_DLC_Field := R7FA4M1AB.CAN0.Val_0000;
      --  These bits are read as 000000000000. The write value should be
      --  000000000000.
      Reserved : MB_DL_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for MB_DL_Register use record
      DLC      at 0 range 0 .. 3;
      Reserved at 0 range 4 .. 15;
   end record;

   subtype MB_TS_TSL_Field is R7FA4M1AB.Byte;
   subtype MB_TS_TSH_Field is R7FA4M1AB.Byte;

   --  Mailbox Register
   type MB_TS_Register is record
      --  Time Stamp Higher Byte Bits TSL[7:0] store the counter value of the
      --  time stamp when received messages are stored in the mailbox.
      TSL : MB_TS_TSL_Field := 16#0#;
      --  Time Stamp Lower Byte Bits TSH[7:0] store the counter value of the
      --  time stamp when received messages are stored in the mailbox.
      TSH : MB_TS_TSH_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for MB_TS_Register use record
      TSL at 0 range 0 .. 7;
      TSH at 0 range 8 .. 15;
   end record;

   subtype MKR_EID_Field is R7FA4M1AB.UInt18;
   subtype MKR_SID_Field is R7FA4M1AB.UInt11;
   subtype MKR_Reserved_Field is R7FA4M1AB.UInt3;

   --  Mask Register
   type MKR_Register is record
      --  Extended ID
      EID      : MKR_EID_Field := 16#0#;
      --  Standard ID
      SID      : MKR_SID_Field := 16#0#;
      --  These bits are read as 000. The write value should be 000.
      Reserved : MKR_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MKR_Register use record
      EID      at 0 range 0 .. 17;
      SID      at 0 range 18 .. 28;
      Reserved at 0 range 29 .. 31;
   end record;

   --  Mask Register
   type MKR_Registers is array (0 .. 7) of MKR_Register;

   subtype FIDCR_EID_Field is R7FA4M1AB.UInt18;
   subtype FIDCR_SID_Field is R7FA4M1AB.UInt11;

   --  Remote Transmission Request
   type FIDCR_RTR_Field is
     (--  Data frame
      Val_0,
      --  Remote frame
      Val_1)
     with Size => 1;
   for FIDCR_RTR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ID Extension
   type FIDCR_IDE_Field is
     (--  Standard ID
      Val_0,
      --  Extended ID
      Val_1)
     with Size => 1;
   for FIDCR_IDE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  FIFO Received ID Compare Registers
   type FIDCR_Register is record
      --  Extended ID
      EID      : FIDCR_EID_Field := 16#0#;
      --  Standard ID
      SID      : FIDCR_SID_Field := 16#0#;
      --  This bit is read as 0. The write value should be 0.
      Reserved : Boolean := False;
      --  Remote Transmission Request
      RTR      : FIDCR_RTR_Field := R7FA4M1AB.CAN0.Val_0;
      --  ID Extension
      IDE      : FIDCR_IDE_Field := R7FA4M1AB.CAN0.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIDCR_Register use record
      EID      at 0 range 0 .. 17;
      SID      at 0 range 18 .. 28;
      Reserved at 0 range 29 .. 29;
      RTR      at 0 range 30 .. 30;
      IDE      at 0 range 31 .. 31;
   end record;

   --  FIFO Received ID Compare Registers
   type FIDCR_Registers is array (0 .. 1) of FIDCR_Register;

   --  mailbox 0 Mask Invalid
   type MKIVLR_MB0_Field is
     (--  Mask valid
      Val_0,
      --  Mask invalid
      Val_1)
     with Size => 1;
   for MKIVLR_MB0_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  MKIVLR_MB array
   type MKIVLR_MB_Field_Array is array (0 .. 31) of MKIVLR_MB0_Field
     with Component_Size => 1, Size => 32;

   --  Mask Invalid Register
   type MKIVLR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MB as a value
            Val : R7FA4M1AB.UInt32;
         when True =>
            --  MB as an array
            Arr : MKIVLR_MB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MKIVLR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  mailbox 0 Interrupt Enable
   type MIER_MB0_Field is
     (--  Interrupt disabled
      Val_0,
      --  Interrupt enabled
      Val_1)
     with Size => 1;
   for MIER_MB0_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  MIER_MB array
   type MIER_MB_Field_Array is array (0 .. 31) of MIER_MB0_Field
     with Component_Size => 1, Size => 32;

   --  Mailbox Interrupt Enable Register
   type MIER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MB as a value
            Val : R7FA4M1AB.UInt32;
         when True =>
            --  MB as an array
            Arr : MIER_MB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MIER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Transmission Complete Flag
   type MCTL_TX_SENTDATA_Field is
     (--  Transmission is not completed
      Val_0,
      --  Transmission is completed
      Val_1)
     with Size => 1;
   for MCTL_TX_SENTDATA_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Transmission-in-Progress Status Flag (Transmit mailbox setting enabled)
   type MCTL_TX_TRMACTIVE_Field is
     (--  Transmission is pending or transmission is not requested
      Val_0,
      --  From acceptance of transmission request to completion of transmission, or
--  error/arbitration-lost
      Val_1)
     with Size => 1;
   for MCTL_TX_TRMACTIVE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Transmission Abort Complete Flag (Transmit mailbox setting enabled)
   type MCTL_TX_TRMABT_Field is
     (--  Transmission has started, transmission abort failed because transmission is
--  completed, or transmission abort is not requested
      Val_0,
      --  Transmission abort is completed
      Val_1)
     with Size => 1;
   for MCTL_TX_TRMABT_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  One-Shot Enable
   type MCTL_TX_ONESHOT_Field is
     (--  One-shot reception or one-shot transmission disabled
      Val_0,
      --  One-shot reception or one-shot transmission enabled
      Val_1)
     with Size => 1;
   for MCTL_TX_ONESHOT_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Receive Mailbox Request
   type MCTL_TX_RECREQ_Field is
     (--  Not configured for reception
      Val_0,
      --  Configured for reception
      Val_1)
     with Size => 1;
   for MCTL_TX_RECREQ_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Transmit Mailbox Request
   type MCTL_TX_TRMREQ_Field is
     (--  Not configured for transmission
      Val_0,
      --  Configured for transmission
      Val_1)
     with Size => 1;
   for MCTL_TX_TRMREQ_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Message Control Register for Transmit
   type MCTL_TX_Register is record
      --  Transmission Complete Flag
      SENTDATA   : MCTL_TX_SENTDATA_Field := R7FA4M1AB.CAN0.Val_0;
      --  Read-only. Transmission-in-Progress Status Flag (Transmit mailbox
      --  setting enabled)
      TRMACTIVE  : MCTL_TX_TRMACTIVE_Field := R7FA4M1AB.CAN0.Val_0;
      --  Transmission Abort Complete Flag (Transmit mailbox setting enabled)
      TRMABT     : MCTL_TX_TRMABT_Field := R7FA4M1AB.CAN0.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : Boolean := False;
      --  One-Shot Enable
      ONESHOT    : MCTL_TX_ONESHOT_Field := R7FA4M1AB.CAN0.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : Boolean := False;
      --  Receive Mailbox Request
      RECREQ     : MCTL_TX_RECREQ_Field := R7FA4M1AB.CAN0.Val_0;
      --  Transmit Mailbox Request
      TRMREQ     : MCTL_TX_TRMREQ_Field := R7FA4M1AB.CAN0.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for MCTL_TX_Register use record
      SENTDATA   at 0 range 0 .. 0;
      TRMACTIVE  at 0 range 1 .. 1;
      TRMABT     at 0 range 2 .. 2;
      Reserved   at 0 range 3 .. 3;
      ONESHOT    at 0 range 4 .. 4;
      Reserved_1 at 0 range 5 .. 5;
      RECREQ     at 0 range 6 .. 6;
      TRMREQ     at 0 range 7 .. 7;
   end record;

   --  Message Control Register for Transmit
   type MCTL_TX_Registers is array (0 .. 31) of MCTL_TX_Register;

   --  CAN Mailbox Mode Select
   type CTLR_MBM_Field is
     (--  Normal mailbox mode
      Val_0,
      --  FIFO mailbox mode
      Val_1)
     with Size => 1;
   for CTLR_MBM_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ID Format Mode Select
   type CTLR_IDFM_Field is
     (--  Standard ID mode.All mailboxes (including FIFO mailboxes) handle only
--  standard Ids.
      Val_00,
      --  Extended ID mode.All mailboxes (including FIFO mailboxes) handle only
--  extended IDs.
      Val_01,
      --  Mixed ID mode.All mailboxes (including FIFO mailboxes) handle both standard
--  IDs and extended IDs. Standard IDs or extended IDs are specified by using
--  the IDE bit in the corresponding mailbox in normal mailbox mode. In FIFO
--  mailbox mode, the IDE bit in the corresponding mailbox is used for
--  mailboxes [0] to [23], the IDE bits in FIDCR0 and FIDCR1 are used for the
--  receive FIFO, and the IDE bit in mailbox [24] is used for the transmit
--  FIFO.
      Val_10,
      --  Do not use this combination
      Val_11)
     with Size => 2;
   for CTLR_IDFM_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   --  Message Lost Mode Select
   type CTLR_MLM_Field is
     (--  Overwrite mode
      Val_0,
      --  Overrun mode
      Val_1)
     with Size => 1;
   for CTLR_MLM_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Transmission Priority Mode Select
   type CTLR_TPM_Field is
     (--  ID priority transmit mode
      Val_0,
      --  Mailbox number priority transmit mode
      Val_1)
     with Size => 1;
   for CTLR_TPM_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Time Stamp Counter Reset Command
   type CTLR_TSRC_Field is
     (--  Nothing occurred
      Val_0,
      --  Reset
      Val_1)
     with Size => 1;
   for CTLR_TSRC_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Time Stamp Prescaler Select
   type CTLR_TSPS_Field is
     (--  Every bit time
      Val_00,
      --  Every 2-bit time
      Val_01,
      --  Every 4-bit time
      Val_10,
      --  Every 8-bit time
      Val_11)
     with Size => 2;
   for CTLR_TSPS_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   --  CAN Operating Mode Select
   type CTLR_CANM_Field is
     (--  CAN operation mode
      Val_00,
      --  CAN reset mode
      Val_01,
      --  CAN halt mode
      Val_10,
      --  CAN reset mode (forcible transition)
      Val_11)
     with Size => 2;
   for CTLR_CANM_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   --  CAN Sleep Mode
   type CTLR_SLPM_Field is
     (--  Other than CAN sleep mode
      Val_0,
      --  CAN sleep mode
      Val_1)
     with Size => 1;
   for CTLR_SLPM_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Bus-Off Recovery Mode by a program request
   type CTLR_BOM_Field is
     (--  Normal mode (ISO11898-1 compliant)
      Val_00,
      --  Entry to CAN halt mode automatically at bus-off entry
      Val_01,
      --  Entry to CAN halt mode automatically at bus-off end
      Val_10,
      --  Entry to CAN halt mode (during bus-off recovery period)
      Val_11)
     with Size => 2;
   for CTLR_BOM_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   --  Forcible Return From Bus-Off
   type CTLR_RBOC_Field is
     (--  Nothing occurred
      Val_0,
      --  Forcible return from bus-off
      Val_1)
     with Size => 1;
   for CTLR_RBOC_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype CTLR_Reserved_Field is R7FA4M1AB.UInt2;

   --  Control Register
   type CTLR_Register is record
      --  CAN Mailbox Mode Select
      MBM      : CTLR_MBM_Field := R7FA4M1AB.CAN0.Val_0;
      --  ID Format Mode Select
      IDFM     : CTLR_IDFM_Field := R7FA4M1AB.CAN0.Val_00;
      --  Message Lost Mode Select
      MLM      : CTLR_MLM_Field := R7FA4M1AB.CAN0.Val_0;
      --  Transmission Priority Mode Select
      TPM      : CTLR_TPM_Field := R7FA4M1AB.CAN0.Val_0;
      --  Time Stamp Counter Reset Command
      TSRC     : CTLR_TSRC_Field := R7FA4M1AB.CAN0.Val_0;
      --  Time Stamp Prescaler Select
      TSPS     : CTLR_TSPS_Field := R7FA4M1AB.CAN0.Val_00;
      --  CAN Operating Mode Select
      CANM     : CTLR_CANM_Field := R7FA4M1AB.CAN0.Val_01;
      --  CAN Sleep Mode
      SLPM     : CTLR_SLPM_Field := R7FA4M1AB.CAN0.Val_1;
      --  Bus-Off Recovery Mode by a program request
      BOM      : CTLR_BOM_Field := R7FA4M1AB.CAN0.Val_00;
      --  Forcible Return From Bus-Off
      RBOC     : CTLR_RBOC_Field := R7FA4M1AB.CAN0.Val_0;
      --  These bits are read as 00. The write value should be 00.
      Reserved : CTLR_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for CTLR_Register use record
      MBM      at 0 range 0 .. 0;
      IDFM     at 0 range 1 .. 2;
      MLM      at 0 range 3 .. 3;
      TPM      at 0 range 4 .. 4;
      TSRC     at 0 range 5 .. 5;
      TSPS     at 0 range 6 .. 7;
      CANM     at 0 range 8 .. 9;
      SLPM     at 0 range 10 .. 10;
      BOM      at 0 range 11 .. 12;
      RBOC     at 0 range 13 .. 13;
      Reserved at 0 range 14 .. 15;
   end record;

   --  NEWDATA Status Flag
   type STR_NDST_Field is
     (--  No mailbox with NEWDATA bit = 1
      Val_0,
      --  Mailbox(es) with NEWDATA bit = 1
      Val_1)
     with Size => 1;
   for STR_NDST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  SENTDATA Status Flag
   type STR_SDST_Field is
     (--  No mailbox with SENTDATA bit = 1
      Val_0,
      --  Mailbox(es) with SENTDATA bit = 1
      Val_1)
     with Size => 1;
   for STR_SDST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Receive FIFO Status Flag
   type STR_RFST_Field is
     (--  No message in receive FIFO (empty)
      Val_0,
      --  Message in receive FIFO
      Val_1)
     with Size => 1;
   for STR_RFST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Transmit FIFO Status Flag
   type STR_TFST_Field is
     (--  Transmit FIFO is full
      Val_0,
      --  Transmit FIFO is not full
      Val_1)
     with Size => 1;
   for STR_TFST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Normal Mailbox Message Lost Status Flag
   type STR_NMLST_Field is
     (--  No mailbox with MSGLOST bit = 1
      Val_0,
      --  Mailbox(es) with MSGLOST bit = 1
      Val_1)
     with Size => 1;
   for STR_NMLST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  FIFO Mailbox Message Lost Status Flag
   type STR_FMLST_Field is
     (--  RFMLF bit = 0
      Val_0,
      --  RFMLF bit = 1
      Val_1)
     with Size => 1;
   for STR_FMLST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Transmission Abort Status Flag
   type STR_TABST_Field is
     (--  No mailbox with TRMABT bit = 1
      Val_0,
      --  Mailbox(es) with TRMABT bit = 1
      Val_1)
     with Size => 1;
   for STR_TABST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Error Status Flag
   type STR_EST_Field is
     (--  No error occurred
      Val_0,
      --  Error occurred
      Val_1)
     with Size => 1;
   for STR_EST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  CAN Reset Status Flag
   type STR_RSTST_Field is
     (--  Not in CAN reset mode
      Val_0,
      --  In CAN reset mode
      Val_1)
     with Size => 1;
   for STR_RSTST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  CAN Halt Status Flag
   type STR_HLTST_Field is
     (--  Not in CAN halt mode
      Val_0,
      --  In CAN halt mode
      Val_1)
     with Size => 1;
   for STR_HLTST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  CAN Sleep Status Flag
   type STR_SLPST_Field is
     (--  Not in CAN sleep mode
      Val_0,
      --  In CAN sleep mode
      Val_1)
     with Size => 1;
   for STR_SLPST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Error-Passive Status Flag
   type STR_EPST_Field is
     (--  Not in error-passive state
      Val_0,
      --  In error-passive state
      Val_1)
     with Size => 1;
   for STR_EPST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Bus-Off Status Flag
   type STR_BOST_Field is
     (--  Not in bus-off state
      Val_0,
      --  In bus-off state
      Val_1)
     with Size => 1;
   for STR_BOST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Transmit Status Flag (transmitter)
   type STR_TRMST_Field is
     (--  Bus idle or reception in progress
      Val_0,
      --  Transmission in progress or in bus-off state
      Val_1)
     with Size => 1;
   for STR_TRMST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Receive Status Flag (receiver)
   type STR_RECST_Field is
     (--  Bus idle or transmission in progress
      Val_0,
      --  Reception in progress
      Val_1)
     with Size => 1;
   for STR_RECST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Status Register
   type STR_Register is record
      --  Read-only. NEWDATA Status Flag
      NDST     : STR_NDST_Field;
      --  Read-only. SENTDATA Status Flag
      SDST     : STR_SDST_Field;
      --  Read-only. Receive FIFO Status Flag
      RFST     : STR_RFST_Field;
      --  Read-only. Transmit FIFO Status Flag
      TFST     : STR_TFST_Field;
      --  Read-only. Normal Mailbox Message Lost Status Flag
      NMLST    : STR_NMLST_Field;
      --  Read-only. FIFO Mailbox Message Lost Status Flag
      FMLST    : STR_FMLST_Field;
      --  Read-only. Transmission Abort Status Flag
      TABST    : STR_TABST_Field;
      --  Read-only. Error Status Flag
      EST      : STR_EST_Field;
      --  Read-only. CAN Reset Status Flag
      RSTST    : STR_RSTST_Field;
      --  Read-only. CAN Halt Status Flag
      HLTST    : STR_HLTST_Field;
      --  Read-only. CAN Sleep Status Flag
      SLPST    : STR_SLPST_Field;
      --  Read-only. Error-Passive Status Flag
      EPST     : STR_EPST_Field;
      --  Read-only. Bus-Off Status Flag
      BOST     : STR_BOST_Field;
      --  Read-only. Transmit Status Flag (transmitter)
      TRMST    : STR_TRMST_Field;
      --  Read-only. Receive Status Flag (receiver)
      RECST    : STR_RECST_Field;
      --  Read-only. This bit is read as 0.
      Reserved : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for STR_Register use record
      NDST     at 0 range 0 .. 0;
      SDST     at 0 range 1 .. 1;
      RFST     at 0 range 2 .. 2;
      TFST     at 0 range 3 .. 3;
      NMLST    at 0 range 4 .. 4;
      FMLST    at 0 range 5 .. 5;
      TABST    at 0 range 6 .. 6;
      EST      at 0 range 7 .. 7;
      RSTST    at 0 range 8 .. 8;
      HLTST    at 0 range 9 .. 9;
      SLPST    at 0 range 10 .. 10;
      EPST     at 0 range 11 .. 11;
      BOST     at 0 range 12 .. 12;
      TRMST    at 0 range 13 .. 13;
      RECST    at 0 range 14 .. 14;
      Reserved at 0 range 15 .. 15;
   end record;

   --  CAN Clock Source Selection
   type BCR_CCLKS_Field is
     (--  PCLK (generated by the PLL clock)
      Val_0,
      --  CANMCLK (generated by the main clock)
      Val_1)
     with Size => 1;
   for BCR_CCLKS_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype BCR_Reserved_Field is R7FA4M1AB.UInt7;

   --  Time Segment 2 Control
   type BCR_TSEG2_Field is
     (--  Setting prohibited
      Val_000,
      --  2 Tq
      Val_001,
      --  3 Tq
      Val_010,
      --  4 Tq
      Val_011,
      --  5 Tq
      Val_100,
      --  6 Tq
      Val_101,
      --  7 Tq
      Val_110,
      --  8 Tq
      Val_111)
     with Size => 3;
   for BCR_TSEG2_Field use
     (Val_000 => 0,
      Val_001 => 1,
      Val_010 => 2,
      Val_011 => 3,
      Val_100 => 4,
      Val_101 => 5,
      Val_110 => 6,
      Val_111 => 7);

   --  Resynchronization Jump Width Control
   type BCR_SJW_Field is
     (--  1 Tq
      Val_00,
      --  2 Tq
      Val_01,
      --  3 Tq
      Val_10,
      --  4 Tq
      Val_11)
     with Size => 2;
   for BCR_SJW_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   subtype BCR_Reserved_Field_1 is R7FA4M1AB.UInt2;
   subtype BCR_BRP_Field is R7FA4M1AB.UInt10;

   --  Time Segment 1 Control
   type BCR_TSEG1_Field is
     (--  Setting prohibited
      others_k,
      --  4 Tq
      Val_0011,
      --  5 Tq
      Val_0100,
      --  6 Tq
      Val_0101,
      --  7 Tq
      Val_0110,
      --  8 Tq
      Val_0111,
      --  9 Tq
      Val_1000,
      --  10 Tq
      Val_1001,
      --  11 Tq
      Val_1010,
      --  12 Tq
      Val_1011,
      --  13 Tq
      Val_1100,
      --  14 Tq
      Val_1101,
      --  15 Tq
      Val_1110,
      --  16 Tq
      Val_1111)
     with Size => 4;
   for BCR_TSEG1_Field use
     (others_k => 0,
      Val_0011 => 3,
      Val_0100 => 4,
      Val_0101 => 5,
      Val_0110 => 6,
      Val_0111 => 7,
      Val_1000 => 8,
      Val_1001 => 9,
      Val_1010 => 10,
      Val_1011 => 11,
      Val_1100 => 12,
      Val_1101 => 13,
      Val_1110 => 14,
      Val_1111 => 15);

   --  Bit Configuration Register
   type BCR_Register is record
      --  CAN Clock Source Selection
      CCLKS      : BCR_CCLKS_Field := R7FA4M1AB.CAN0.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved   : BCR_Reserved_Field := 16#0#;
      --  Time Segment 2 Control
      TSEG2      : BCR_TSEG2_Field := R7FA4M1AB.CAN0.Val_000;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : Boolean := False;
      --  Resynchronization Jump Width Control
      SJW        : BCR_SJW_Field := R7FA4M1AB.CAN0.Val_00;
      --  These bits are read as 00. The write value should be 00.
      Reserved_2 : BCR_Reserved_Field_1 := 16#0#;
      --  Prescaler Division Ratio Select . These bits set the frequency of the
      --  CAN communication clock (fCANCLK).
      BRP        : BCR_BRP_Field := 16#0#;
      --  These bits are read as 00. The write value should be 00.
      Reserved_3 : BCR_Reserved_Field_1 := 16#0#;
      --  Time Segment 1 Control
      TSEG1      : BCR_TSEG1_Field := R7FA4M1AB.CAN0.others_k;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BCR_Register use record
      CCLKS      at 0 range 0 .. 0;
      Reserved   at 0 range 1 .. 7;
      TSEG2      at 0 range 8 .. 10;
      Reserved_1 at 0 range 11 .. 11;
      SJW        at 0 range 12 .. 13;
      Reserved_2 at 0 range 14 .. 15;
      BRP        at 0 range 16 .. 25;
      Reserved_3 at 0 range 26 .. 27;
      TSEG1      at 0 range 28 .. 31;
   end record;

   --  Receive FIFO Enable
   type RFCR_RFE_Field is
     (--  Receive FIFO disabled
      Val_0,
      --  Receive FIFO enabled
      Val_1)
     with Size => 1;
   for RFCR_RFE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Receive FIFO Unread Message Number Status
   type RFCR_RFUST_Field is
     (--  No unread message
      Val_000,
      --  Setting prohibited
      others_k,
      --  1 unread message
      Val_001,
      --  2 unread messages
      Val_010,
      --  3 unread messages
      Val_011,
      --  4 unread messages
      Val_100)
     with Size => 3;
   for RFCR_RFUST_Field use
     (Val_000 => 0,
      others_k => 0,
      Val_001 => 1,
      Val_010 => 2,
      Val_011 => 3,
      Val_100 => 4);

   --  Receive FIFO Message Lost Flag
   type RFCR_RFMLF_Field is
     (--  No receive FIFO message lost has occurred
      Val_0,
      --  Receive FIFO message lost has occurred
      Val_1)
     with Size => 1;
   for RFCR_RFMLF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Receive FIFO Full Status Flag
   type RFCR_RFFST_Field is
     (--  Receive FIFO is not full
      Val_0,
      --  Receive FIFO is full (4 unread messages)
      Val_1)
     with Size => 1;
   for RFCR_RFFST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Receive FIFO Buffer Warning Status Flag
   type RFCR_RFWST_Field is
     (--  Receive FIFO is not buffer warning
      Val_0,
      --  Receive FIFO is buffer warning (3 unread messages)
      Val_1)
     with Size => 1;
   for RFCR_RFWST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Receive FIFO Empty Status Flag
   type RFCR_RFEST_Field is
     (--  Unread message in receive FIFO
      Val_0,
      --  No unread message in receive FIFO
      Val_1)
     with Size => 1;
   for RFCR_RFEST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Receive FIFO Control Register
   type RFCR_Register is record
      --  Receive FIFO Enable
      RFE   : RFCR_RFE_Field := R7FA4M1AB.CAN0.Val_0;
      --  Read-only. Receive FIFO Unread Message Number Status
      RFUST : RFCR_RFUST_Field := R7FA4M1AB.CAN0.Val_000;
      --  Receive FIFO Message Lost Flag
      RFMLF : RFCR_RFMLF_Field := R7FA4M1AB.CAN0.Val_0;
      --  Read-only. Receive FIFO Full Status Flag
      RFFST : RFCR_RFFST_Field := R7FA4M1AB.CAN0.Val_0;
      --  Read-only. Receive FIFO Buffer Warning Status Flag
      RFWST : RFCR_RFWST_Field := R7FA4M1AB.CAN0.Val_0;
      --  Read-only. Receive FIFO Empty Status Flag
      RFEST : RFCR_RFEST_Field := R7FA4M1AB.CAN0.Val_1;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for RFCR_Register use record
      RFE   at 0 range 0 .. 0;
      RFUST at 0 range 1 .. 3;
      RFMLF at 0 range 4 .. 4;
      RFFST at 0 range 5 .. 5;
      RFWST at 0 range 6 .. 6;
      RFEST at 0 range 7 .. 7;
   end record;

   --  Transmit FIFO Enable
   type TFCR_TFE_Field is
     (--  Transmit FIFO disabled
      Val_0,
      --  Transmit FIFO enabled
      Val_1)
     with Size => 1;
   for TFCR_TFE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Transmit FIFO Unsent Message Number Status
   type TFCR_TFUST_Field is
     (--  No unsent message
      Val_000,
      --  Setting prohibited
      others_k,
      --  1 unsent message
      Val_001,
      --  2 unsent messages
      Val_010,
      --  3 unsent messages
      Val_011,
      --  4 unsent messages
      Val_100)
     with Size => 3;
   for TFCR_TFUST_Field use
     (Val_000 => 0,
      others_k => 0,
      Val_001 => 1,
      Val_010 => 2,
      Val_011 => 3,
      Val_100 => 4);

   subtype TFCR_Reserved_Field is R7FA4M1AB.UInt2;

   --  Transmit FIFO Full Status
   type TFCR_TFFST_Field is
     (--  Transmit FIFO is not full
      Val_0,
      --  Transmit FIFO is full (4 unsent messages)
      Val_1)
     with Size => 1;
   for TFCR_TFFST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Transmit FIFO Empty Status
   type TFCR_TFEST_Field is
     (--  Unsent message in transmit FIFO
      Val_0,
      --  No unsent message in transmit FIFO
      Val_1)
     with Size => 1;
   for TFCR_TFEST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Transmit FIFO Control Register
   type TFCR_Register is record
      --  Transmit FIFO Enable
      TFE      : TFCR_TFE_Field := R7FA4M1AB.CAN0.Val_0;
      --  Read-only. Transmit FIFO Unsent Message Number Status
      TFUST    : TFCR_TFUST_Field := R7FA4M1AB.CAN0.Val_000;
      --  These bits are read as 00. The write value should be 00.
      Reserved : TFCR_Reserved_Field := 16#0#;
      --  Read-only. Transmit FIFO Full Status
      TFFST    : TFCR_TFFST_Field := R7FA4M1AB.CAN0.Val_0;
      --  Read-only. Transmit FIFO Empty Status
      TFEST    : TFCR_TFEST_Field := R7FA4M1AB.CAN0.Val_1;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for TFCR_Register use record
      TFE      at 0 range 0 .. 0;
      TFUST    at 0 range 1 .. 3;
      Reserved at 0 range 4 .. 5;
      TFFST    at 0 range 6 .. 6;
      TFEST    at 0 range 7 .. 7;
   end record;

   --  Bus Error Interrupt Enable
   type EIER_BEIE_Field is
     (--  Bus error interrupt disabled
      Val_0,
      --  Bus error interrupt enabled
      Val_1)
     with Size => 1;
   for EIER_BEIE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Error-Warning Interrupt Enable
   type EIER_EWIE_Field is
     (--  Error-warning interrupt disabled
      Val_0,
      --  Error-warning interrupt enabled
      Val_1)
     with Size => 1;
   for EIER_EWIE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Error-Passive Interrupt Enable
   type EIER_EPIE_Field is
     (--  Error-passive interrupt disabled
      Val_0,
      --  Error-passive interrupt enabled
      Val_1)
     with Size => 1;
   for EIER_EPIE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Bus-Off Entry Interrupt Enable
   type EIER_BOEIE_Field is
     (--  Bus-off entry interrupt disabled
      Val_0,
      --  Bus-off entry interrupt enabled
      Val_1)
     with Size => 1;
   for EIER_BOEIE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Bus-Off Recovery Interrupt Enable
   type EIER_BORIE_Field is
     (--  Bus-off recovery interrupt disabled
      Val_0,
      --  Bus-off recovery interrupt enabled
      Val_1)
     with Size => 1;
   for EIER_BORIE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Overrun Interrupt Enable
   type EIER_ORIE_Field is
     (--  Receive overrun interrupt disabled
      Val_0,
      --  Receive overrun interrupt enabled
      Val_1)
     with Size => 1;
   for EIER_ORIE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Overload Frame Transmit Interrupt Enable
   type EIER_OLIE_Field is
     (--  Overload frame transmit interrupt disabled
      Val_0,
      --  Overload frame transmit interrupt enabled
      Val_1)
     with Size => 1;
   for EIER_OLIE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Bus Lock Interrupt Enable
   type EIER_BLIE_Field is
     (--  Bus lock interrupt disabled
      Val_0,
      --  Bus lock interrupt enabled
      Val_1)
     with Size => 1;
   for EIER_BLIE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Error Interrupt Enable Register
   type EIER_Register is record
      --  Bus Error Interrupt Enable
      BEIE  : EIER_BEIE_Field := R7FA4M1AB.CAN0.Val_0;
      --  Error-Warning Interrupt Enable
      EWIE  : EIER_EWIE_Field := R7FA4M1AB.CAN0.Val_0;
      --  Error-Passive Interrupt Enable
      EPIE  : EIER_EPIE_Field := R7FA4M1AB.CAN0.Val_0;
      --  Bus-Off Entry Interrupt Enable
      BOEIE : EIER_BOEIE_Field := R7FA4M1AB.CAN0.Val_0;
      --  Bus-Off Recovery Interrupt Enable
      BORIE : EIER_BORIE_Field := R7FA4M1AB.CAN0.Val_0;
      --  Overrun Interrupt Enable
      ORIE  : EIER_ORIE_Field := R7FA4M1AB.CAN0.Val_0;
      --  Overload Frame Transmit Interrupt Enable
      OLIE  : EIER_OLIE_Field := R7FA4M1AB.CAN0.Val_0;
      --  Bus Lock Interrupt Enable
      BLIE  : EIER_BLIE_Field := R7FA4M1AB.CAN0.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for EIER_Register use record
      BEIE  at 0 range 0 .. 0;
      EWIE  at 0 range 1 .. 1;
      EPIE  at 0 range 2 .. 2;
      BOEIE at 0 range 3 .. 3;
      BORIE at 0 range 4 .. 4;
      ORIE  at 0 range 5 .. 5;
      OLIE  at 0 range 6 .. 6;
      BLIE  at 0 range 7 .. 7;
   end record;

   --  Bus Error Detect Flag
   type EIFR_BEIF_Field is
     (--  No bus error detected
      Val_0,
      --  Bus error detected
      Val_1)
     with Size => 1;
   for EIFR_BEIF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Error-Warning Detect Flag
   type EIFR_EWIF_Field is
     (--  No error-warning detected
      Val_0,
      --  Error-warning detected
      Val_1)
     with Size => 1;
   for EIFR_EWIF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Error-Passive Detect Flag
   type EIFR_EPIF_Field is
     (--  No error-passive detected
      Val_0,
      --  Error-passive detected
      Val_1)
     with Size => 1;
   for EIFR_EPIF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Bus-Off Entry Detect Flag
   type EIFR_BOEIF_Field is
     (--  No bus-off entry detected
      Val_0,
      --  Bus-off entry detected
      Val_1)
     with Size => 1;
   for EIFR_BOEIF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Bus-Off Recovery Detect Flag
   type EIFR_BORIF_Field is
     (--  No bus-off recovery detected
      Val_0,
      --  Bus-off recovery detected
      Val_1)
     with Size => 1;
   for EIFR_BORIF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Receive Overrun Detect Flag
   type EIFR_ORIF_Field is
     (--  No receive overrun detected
      Val_0,
      --  Receive overrun detected
      Val_1)
     with Size => 1;
   for EIFR_ORIF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Overload Frame Transmission Detect Flag
   type EIFR_OLIF_Field is
     (--  No overload frame transmission detected
      Val_0,
      --  Overload frame transmission detected
      Val_1)
     with Size => 1;
   for EIFR_OLIF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Bus Lock Detect Flag
   type EIFR_BLIF_Field is
     (--  No bus lock detected
      Val_0,
      --  Bus lock detected
      Val_1)
     with Size => 1;
   for EIFR_BLIF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Error Interrupt Factor Judge Register
   type EIFR_Register is record
      --  Bus Error Detect Flag
      BEIF  : EIFR_BEIF_Field := R7FA4M1AB.CAN0.Val_0;
      --  Error-Warning Detect Flag
      EWIF  : EIFR_EWIF_Field := R7FA4M1AB.CAN0.Val_0;
      --  Error-Passive Detect Flag
      EPIF  : EIFR_EPIF_Field := R7FA4M1AB.CAN0.Val_0;
      --  Bus-Off Entry Detect Flag
      BOEIF : EIFR_BOEIF_Field := R7FA4M1AB.CAN0.Val_0;
      --  Bus-Off Recovery Detect Flag
      BORIF : EIFR_BORIF_Field := R7FA4M1AB.CAN0.Val_0;
      --  Receive Overrun Detect Flag
      ORIF  : EIFR_ORIF_Field := R7FA4M1AB.CAN0.Val_0;
      --  Overload Frame Transmission Detect Flag
      OLIF  : EIFR_OLIF_Field := R7FA4M1AB.CAN0.Val_0;
      --  Bus Lock Detect Flag
      BLIF  : EIFR_BLIF_Field := R7FA4M1AB.CAN0.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for EIFR_Register use record
      BEIF  at 0 range 0 .. 0;
      EWIF  at 0 range 1 .. 1;
      EPIF  at 0 range 2 .. 2;
      BOEIF at 0 range 3 .. 3;
      BORIF at 0 range 4 .. 4;
      ORIF  at 0 range 5 .. 5;
      OLIF  at 0 range 6 .. 6;
      BLIF  at 0 range 7 .. 7;
   end record;

   --  Stuff Error Flag
   type ECSR_SEF_Field is
     (--  No stuff error detected
      Val_0,
      --  Stuff error detected
      Val_1)
     with Size => 1;
   for ECSR_SEF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Form Error Flag
   type ECSR_FEF_Field is
     (--  No form error detected
      Val_0,
      --  Form error detected
      Val_1)
     with Size => 1;
   for ECSR_FEF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ACK Error Flag
   type ECSR_AEF_Field is
     (--  No ACK error detected
      Val_0,
      --  ACK error detected
      Val_1)
     with Size => 1;
   for ECSR_AEF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  CRC Error Flag
   type ECSR_CEF_Field is
     (--  No CRC error detected
      Val_0,
      --  CRC error detected
      Val_1)
     with Size => 1;
   for ECSR_CEF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Bit Error (recessive) Flag
   type ECSR_BE1F_Field is
     (--  No bit error (recessive) detected
      Val_0,
      --  Bit error (recessive) detected
      Val_1)
     with Size => 1;
   for ECSR_BE1F_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Bit Error (dominant) Flag
   type ECSR_BE0F_Field is
     (--  No bit error (dominant) detected
      Val_0,
      --  Bit error (dominant) detected
      Val_1)
     with Size => 1;
   for ECSR_BE0F_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ACK Delimiter Error Flag
   type ECSR_ADEF_Field is
     (--  No ACK delimiter error detected
      Val_0,
      --  ACK delimiter error detected
      Val_1)
     with Size => 1;
   for ECSR_ADEF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Error Display Mode Select
   type ECSR_EDPM_Field is
     (--  Output of first detected error code
      Val_0,
      --  Output of accumulated error code
      Val_1)
     with Size => 1;
   for ECSR_EDPM_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Error Code Store Register
   type ECSR_Register is record
      --  Stuff Error Flag
      SEF  : ECSR_SEF_Field := R7FA4M1AB.CAN0.Val_0;
      --  Form Error Flag
      FEF  : ECSR_FEF_Field := R7FA4M1AB.CAN0.Val_0;
      --  ACK Error Flag
      AEF  : ECSR_AEF_Field := R7FA4M1AB.CAN0.Val_0;
      --  CRC Error Flag
      CEF  : ECSR_CEF_Field := R7FA4M1AB.CAN0.Val_0;
      --  Bit Error (recessive) Flag
      BE1F : ECSR_BE1F_Field := R7FA4M1AB.CAN0.Val_0;
      --  Bit Error (dominant) Flag
      BE0F : ECSR_BE0F_Field := R7FA4M1AB.CAN0.Val_0;
      --  ACK Delimiter Error Flag
      ADEF : ECSR_ADEF_Field := R7FA4M1AB.CAN0.Val_0;
      --  Error Display Mode Select
      EDPM : ECSR_EDPM_Field := R7FA4M1AB.CAN0.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for ECSR_Register use record
      SEF  at 0 range 0 .. 0;
      FEF  at 0 range 1 .. 1;
      AEF  at 0 range 2 .. 2;
      CEF  at 0 range 3 .. 3;
      BE1F at 0 range 4 .. 4;
      BE0F at 0 range 5 .. 5;
      ADEF at 0 range 6 .. 6;
      EDPM at 0 range 7 .. 7;
   end record;

   subtype MSSR_MBNST_Field is R7FA4M1AB.UInt5;
   subtype MSSR_Reserved_Field is R7FA4M1AB.UInt2;

   --  Search Result Status
   type MSSR_SEST_Field is
     (--  Search result found
      Val_0,
      --  No search result
      Val_1)
     with Size => 1;
   for MSSR_SEST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Mailbox Search Status Register
   type MSSR_Register is record
      --  Read-only. Search Result Mailbox Number Status These bits output the
      --  smallest mailbox number that is searched in each mode of MSMR.
      MBNST    : MSSR_MBNST_Field;
      --  Read-only. These bits are read as 00.
      Reserved : MSSR_Reserved_Field;
      --  Read-only. Search Result Status
      SEST     : MSSR_SEST_Field;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for MSSR_Register use record
      MBNST    at 0 range 0 .. 4;
      Reserved at 0 range 5 .. 6;
      SEST     at 0 range 7 .. 7;
   end record;

   --  Mailbox Search Mode Select
   type MSMR_MBSM_Field is
     (--  Receive mailbox search mode
      Val_00,
      --  Transmit mailbox search mode
      Val_01,
      --  Message lost search mode
      Val_10,
      --  Channel search mode
      Val_11)
     with Size => 2;
   for MSMR_MBSM_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   subtype MSMR_Reserved_Field is R7FA4M1AB.UInt6;

   --  Mailbox Search Mode Register
   type MSMR_Register is record
      --  Mailbox Search Mode Select
      MBSM     : MSMR_MBSM_Field := R7FA4M1AB.CAN0.Val_00;
      --  These bits are read as 000000. The write value should be 000000.
      Reserved : MSMR_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for MSMR_Register use record
      MBSM     at 0 range 0 .. 1;
      Reserved at 0 range 2 .. 7;
   end record;

   --  CAN Test Mode Enable
   type TCR_TSTE_Field is
     (--  CAN test mode disabled
      Val_0,
      --  CAN test mode enabled
      Val_1)
     with Size => 1;
   for TCR_TSTE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  CAN Test Mode Select
   type TCR_TSTM_Field is
     (--  Other than CAN test mode
      Val_00,
      --  Listen-only mode
      Val_01,
      --  Self-test mode 0 (external loopback)
      Val_10,
      --  Self-test mode 1 (internal loopback)
      Val_11)
     with Size => 2;
   for TCR_TSTM_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   subtype TCR_Reserved_Field is R7FA4M1AB.UInt5;

   --  Test Control Register
   type TCR_Register is record
      --  CAN Test Mode Enable
      TSTE     : TCR_TSTE_Field := R7FA4M1AB.CAN0.Val_0;
      --  CAN Test Mode Select
      TSTM     : TCR_TSTM_Field := R7FA4M1AB.CAN0.Val_00;
      --  These bits are read as 00000. The write value should be 00000.
      Reserved : TCR_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for TCR_Register use record
      TSTE     at 0 range 0 .. 0;
      TSTM     at 0 range 1 .. 2;
      Reserved at 0 range 3 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  CAN0 Module
   type CAN0_Peripheral is record
      --  Mailbox Register
      MB_ID0  : aliased MB_ID_Register;
      --  Mailbox Register
      MB_DL0  : aliased MB_DL_Register;
      --  Mailbox Register
      MB_D00  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D10  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D20  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D30  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D40  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D50  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D60  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D70  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_TS0  : aliased MB_TS_Register;
      --  Mailbox Register
      MB_ID1  : aliased MB_ID_Register;
      --  Mailbox Register
      MB_DL1  : aliased MB_DL_Register;
      --  Mailbox Register
      MB_D01  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D11  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D21  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D31  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D41  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D51  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D61  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D71  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_TS1  : aliased MB_TS_Register;
      --  Mailbox Register
      MB_ID2  : aliased MB_ID_Register;
      --  Mailbox Register
      MB_DL2  : aliased MB_DL_Register;
      --  Mailbox Register
      MB_D02  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D12  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D22  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D32  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D42  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D52  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D62  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D72  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_TS2  : aliased MB_TS_Register;
      --  Mailbox Register
      MB_ID3  : aliased MB_ID_Register;
      --  Mailbox Register
      MB_DL3  : aliased MB_DL_Register;
      --  Mailbox Register
      MB_D03  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D13  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D23  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D33  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D43  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D53  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D63  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D73  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_TS3  : aliased MB_TS_Register;
      --  Mailbox Register
      MB_ID4  : aliased MB_ID_Register;
      --  Mailbox Register
      MB_DL4  : aliased MB_DL_Register;
      --  Mailbox Register
      MB_D04  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D14  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D24  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D34  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D44  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D54  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D64  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D74  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_TS4  : aliased MB_TS_Register;
      --  Mailbox Register
      MB_ID5  : aliased MB_ID_Register;
      --  Mailbox Register
      MB_DL5  : aliased MB_DL_Register;
      --  Mailbox Register
      MB_D05  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D15  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D25  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D35  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D45  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D55  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D65  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D75  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_TS5  : aliased MB_TS_Register;
      --  Mailbox Register
      MB_ID6  : aliased MB_ID_Register;
      --  Mailbox Register
      MB_DL6  : aliased MB_DL_Register;
      --  Mailbox Register
      MB_D06  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D16  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D26  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D36  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D46  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D56  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D66  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D76  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_TS6  : aliased MB_TS_Register;
      --  Mailbox Register
      MB_ID7  : aliased MB_ID_Register;
      --  Mailbox Register
      MB_DL7  : aliased MB_DL_Register;
      --  Mailbox Register
      MB_D07  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D17  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D27  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D37  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D47  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D57  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D67  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D77  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_TS7  : aliased MB_TS_Register;
      --  Mailbox Register
      MB_ID8  : aliased MB_ID_Register;
      --  Mailbox Register
      MB_DL8  : aliased MB_DL_Register;
      --  Mailbox Register
      MB_D08  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D18  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D28  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D38  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D48  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D58  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D68  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D78  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_TS8  : aliased MB_TS_Register;
      --  Mailbox Register
      MB_ID9  : aliased MB_ID_Register;
      --  Mailbox Register
      MB_DL9  : aliased MB_DL_Register;
      --  Mailbox Register
      MB_D09  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D19  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D29  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D39  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D49  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D59  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D69  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D79  : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_TS9  : aliased MB_TS_Register;
      --  Mailbox Register
      MB_ID10 : aliased MB_ID_Register;
      --  Mailbox Register
      MB_DL10 : aliased MB_DL_Register;
      --  Mailbox Register
      MB_D010 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D110 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D210 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D310 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D410 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D510 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D610 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D710 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_TS10 : aliased MB_TS_Register;
      --  Mailbox Register
      MB_ID11 : aliased MB_ID_Register;
      --  Mailbox Register
      MB_DL11 : aliased MB_DL_Register;
      --  Mailbox Register
      MB_D011 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D111 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D211 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D311 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D411 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D511 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D611 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D711 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_TS11 : aliased MB_TS_Register;
      --  Mailbox Register
      MB_ID12 : aliased MB_ID_Register;
      --  Mailbox Register
      MB_DL12 : aliased MB_DL_Register;
      --  Mailbox Register
      MB_D012 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D112 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D212 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D312 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D412 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D512 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D612 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D712 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_TS12 : aliased MB_TS_Register;
      --  Mailbox Register
      MB_ID13 : aliased MB_ID_Register;
      --  Mailbox Register
      MB_DL13 : aliased MB_DL_Register;
      --  Mailbox Register
      MB_D013 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D113 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D213 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D313 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D413 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D513 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D613 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D713 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_TS13 : aliased MB_TS_Register;
      --  Mailbox Register
      MB_ID14 : aliased MB_ID_Register;
      --  Mailbox Register
      MB_DL14 : aliased MB_DL_Register;
      --  Mailbox Register
      MB_D014 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D114 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D214 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D314 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D414 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D514 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D614 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D714 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_TS14 : aliased MB_TS_Register;
      --  Mailbox Register
      MB_ID15 : aliased MB_ID_Register;
      --  Mailbox Register
      MB_DL15 : aliased MB_DL_Register;
      --  Mailbox Register
      MB_D015 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D115 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D215 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D315 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D415 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D515 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D615 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D715 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_TS15 : aliased MB_TS_Register;
      --  Mailbox Register
      MB_ID16 : aliased MB_ID_Register;
      --  Mailbox Register
      MB_DL16 : aliased MB_DL_Register;
      --  Mailbox Register
      MB_D016 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D116 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D216 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D316 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D416 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D516 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D616 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D716 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_TS16 : aliased MB_TS_Register;
      --  Mailbox Register
      MB_ID17 : aliased MB_ID_Register;
      --  Mailbox Register
      MB_DL17 : aliased MB_DL_Register;
      --  Mailbox Register
      MB_D017 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D117 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D217 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D317 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D417 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D517 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D617 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D717 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_TS17 : aliased MB_TS_Register;
      --  Mailbox Register
      MB_ID18 : aliased MB_ID_Register;
      --  Mailbox Register
      MB_DL18 : aliased MB_DL_Register;
      --  Mailbox Register
      MB_D018 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D118 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D218 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D318 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D418 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D518 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D618 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D718 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_TS18 : aliased MB_TS_Register;
      --  Mailbox Register
      MB_ID19 : aliased MB_ID_Register;
      --  Mailbox Register
      MB_DL19 : aliased MB_DL_Register;
      --  Mailbox Register
      MB_D019 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D119 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D219 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D319 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D419 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D519 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D619 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D719 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_TS19 : aliased MB_TS_Register;
      --  Mailbox Register
      MB_ID20 : aliased MB_ID_Register;
      --  Mailbox Register
      MB_DL20 : aliased MB_DL_Register;
      --  Mailbox Register
      MB_D020 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D120 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D220 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D320 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D420 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D520 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D620 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D720 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_TS20 : aliased MB_TS_Register;
      --  Mailbox Register
      MB_ID21 : aliased MB_ID_Register;
      --  Mailbox Register
      MB_DL21 : aliased MB_DL_Register;
      --  Mailbox Register
      MB_D021 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D121 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D221 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D321 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D421 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D521 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D621 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D721 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_TS21 : aliased MB_TS_Register;
      --  Mailbox Register
      MB_ID22 : aliased MB_ID_Register;
      --  Mailbox Register
      MB_DL22 : aliased MB_DL_Register;
      --  Mailbox Register
      MB_D022 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D122 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D222 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D322 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D422 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D522 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D622 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D722 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_TS22 : aliased MB_TS_Register;
      --  Mailbox Register
      MB_ID23 : aliased MB_ID_Register;
      --  Mailbox Register
      MB_DL23 : aliased MB_DL_Register;
      --  Mailbox Register
      MB_D023 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D123 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D223 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D323 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D423 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D523 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D623 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D723 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_TS23 : aliased MB_TS_Register;
      --  Mailbox Register
      MB_ID24 : aliased MB_ID_Register;
      --  Mailbox Register
      MB_DL24 : aliased MB_DL_Register;
      --  Mailbox Register
      MB_D024 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D124 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D224 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D324 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D424 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D524 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D624 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D724 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_TS24 : aliased MB_TS_Register;
      --  Mailbox Register
      MB_ID25 : aliased MB_ID_Register;
      --  Mailbox Register
      MB_DL25 : aliased MB_DL_Register;
      --  Mailbox Register
      MB_D025 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D125 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D225 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D325 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D425 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D525 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D625 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D725 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_TS25 : aliased MB_TS_Register;
      --  Mailbox Register
      MB_ID26 : aliased MB_ID_Register;
      --  Mailbox Register
      MB_DL26 : aliased MB_DL_Register;
      --  Mailbox Register
      MB_D026 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D126 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D226 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D326 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D426 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D526 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D626 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D726 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_TS26 : aliased MB_TS_Register;
      --  Mailbox Register
      MB_ID27 : aliased MB_ID_Register;
      --  Mailbox Register
      MB_DL27 : aliased MB_DL_Register;
      --  Mailbox Register
      MB_D027 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D127 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D227 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D327 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D427 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D527 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D627 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D727 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_TS27 : aliased MB_TS_Register;
      --  Mailbox Register
      MB_ID28 : aliased MB_ID_Register;
      --  Mailbox Register
      MB_DL28 : aliased MB_DL_Register;
      --  Mailbox Register
      MB_D028 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D128 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D228 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D328 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D428 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D528 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D628 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D728 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_TS28 : aliased MB_TS_Register;
      --  Mailbox Register
      MB_ID29 : aliased MB_ID_Register;
      --  Mailbox Register
      MB_DL29 : aliased MB_DL_Register;
      --  Mailbox Register
      MB_D029 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D129 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D229 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D329 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D429 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D529 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D629 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D729 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_TS29 : aliased MB_TS_Register;
      --  Mailbox Register
      MB_ID30 : aliased MB_ID_Register;
      --  Mailbox Register
      MB_DL30 : aliased MB_DL_Register;
      --  Mailbox Register
      MB_D030 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D130 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D230 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D330 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D430 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D530 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D630 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D730 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_TS30 : aliased MB_TS_Register;
      --  Mailbox Register
      MB_ID31 : aliased MB_ID_Register;
      --  Mailbox Register
      MB_DL31 : aliased MB_DL_Register;
      --  Mailbox Register
      MB_D031 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D131 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D231 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D331 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D431 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D531 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D631 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_D731 : aliased R7FA4M1AB.Byte;
      --  Mailbox Register
      MB_TS31 : aliased MB_TS_Register;
      --  Mask Register
      MKR     : aliased MKR_Registers;
      --  FIFO Received ID Compare Registers
      FIDCR   : aliased FIDCR_Registers;
      --  Mask Invalid Register
      MKIVLR  : aliased MKIVLR_Register;
      --  Mailbox Interrupt Enable Register
      MIER    : aliased MIER_Register;
      --  Message Control Register for Transmit
      MCTL_TX : aliased MCTL_TX_Registers;
      --  Control Register
      CTLR    : aliased CTLR_Register;
      --  Status Register
      STR     : aliased STR_Register;
      --  Bit Configuration Register
      BCR     : aliased BCR_Register;
      --  Receive FIFO Control Register
      RFCR    : aliased RFCR_Register;
      --  Receive FIFO Pointer Control Register
      RFPCR   : aliased R7FA4M1AB.Byte;
      --  Transmit FIFO Control Register
      TFCR    : aliased TFCR_Register;
      --  Transmit FIFO Pointer Control Register
      TFPCR   : aliased R7FA4M1AB.Byte;
      --  Error Interrupt Enable Register
      EIER    : aliased EIER_Register;
      --  Error Interrupt Factor Judge Register
      EIFR    : aliased EIFR_Register;
      --  Receive Error Count Register
      RECR    : aliased R7FA4M1AB.Byte;
      --  Transmit Error Count Register
      TECR    : aliased R7FA4M1AB.Byte;
      --  Error Code Store Register
      ECSR    : aliased ECSR_Register;
      --  Channel Search Support Register
      CSSR    : aliased R7FA4M1AB.Byte;
      --  Mailbox Search Status Register
      MSSR    : aliased MSSR_Register;
      --  Mailbox Search Mode Register
      MSMR    : aliased MSMR_Register;
      --  Time Stamp Register
      TSR     : aliased R7FA4M1AB.UInt16;
      --  Acceptance Filter Support Register
      AFSR    : aliased R7FA4M1AB.UInt16;
      --  Test Control Register
      TCR     : aliased TCR_Register;
   end record
     with Volatile;

   for CAN0_Peripheral use record
      MB_ID0  at 16#200# range 0 .. 31;
      MB_DL0  at 16#204# range 0 .. 15;
      MB_D00  at 16#206# range 0 .. 7;
      MB_D10  at 16#207# range 0 .. 7;
      MB_D20  at 16#208# range 0 .. 7;
      MB_D30  at 16#209# range 0 .. 7;
      MB_D40  at 16#20A# range 0 .. 7;
      MB_D50  at 16#20B# range 0 .. 7;
      MB_D60  at 16#20C# range 0 .. 7;
      MB_D70  at 16#20D# range 0 .. 7;
      MB_TS0  at 16#20E# range 0 .. 15;
      MB_ID1  at 16#210# range 0 .. 31;
      MB_DL1  at 16#214# range 0 .. 15;
      MB_D01  at 16#216# range 0 .. 7;
      MB_D11  at 16#217# range 0 .. 7;
      MB_D21  at 16#218# range 0 .. 7;
      MB_D31  at 16#219# range 0 .. 7;
      MB_D41  at 16#21A# range 0 .. 7;
      MB_D51  at 16#21B# range 0 .. 7;
      MB_D61  at 16#21C# range 0 .. 7;
      MB_D71  at 16#21D# range 0 .. 7;
      MB_TS1  at 16#21E# range 0 .. 15;
      MB_ID2  at 16#220# range 0 .. 31;
      MB_DL2  at 16#224# range 0 .. 15;
      MB_D02  at 16#226# range 0 .. 7;
      MB_D12  at 16#227# range 0 .. 7;
      MB_D22  at 16#228# range 0 .. 7;
      MB_D32  at 16#229# range 0 .. 7;
      MB_D42  at 16#22A# range 0 .. 7;
      MB_D52  at 16#22B# range 0 .. 7;
      MB_D62  at 16#22C# range 0 .. 7;
      MB_D72  at 16#22D# range 0 .. 7;
      MB_TS2  at 16#22E# range 0 .. 15;
      MB_ID3  at 16#230# range 0 .. 31;
      MB_DL3  at 16#234# range 0 .. 15;
      MB_D03  at 16#236# range 0 .. 7;
      MB_D13  at 16#237# range 0 .. 7;
      MB_D23  at 16#238# range 0 .. 7;
      MB_D33  at 16#239# range 0 .. 7;
      MB_D43  at 16#23A# range 0 .. 7;
      MB_D53  at 16#23B# range 0 .. 7;
      MB_D63  at 16#23C# range 0 .. 7;
      MB_D73  at 16#23D# range 0 .. 7;
      MB_TS3  at 16#23E# range 0 .. 15;
      MB_ID4  at 16#240# range 0 .. 31;
      MB_DL4  at 16#244# range 0 .. 15;
      MB_D04  at 16#246# range 0 .. 7;
      MB_D14  at 16#247# range 0 .. 7;
      MB_D24  at 16#248# range 0 .. 7;
      MB_D34  at 16#249# range 0 .. 7;
      MB_D44  at 16#24A# range 0 .. 7;
      MB_D54  at 16#24B# range 0 .. 7;
      MB_D64  at 16#24C# range 0 .. 7;
      MB_D74  at 16#24D# range 0 .. 7;
      MB_TS4  at 16#24E# range 0 .. 15;
      MB_ID5  at 16#250# range 0 .. 31;
      MB_DL5  at 16#254# range 0 .. 15;
      MB_D05  at 16#256# range 0 .. 7;
      MB_D15  at 16#257# range 0 .. 7;
      MB_D25  at 16#258# range 0 .. 7;
      MB_D35  at 16#259# range 0 .. 7;
      MB_D45  at 16#25A# range 0 .. 7;
      MB_D55  at 16#25B# range 0 .. 7;
      MB_D65  at 16#25C# range 0 .. 7;
      MB_D75  at 16#25D# range 0 .. 7;
      MB_TS5  at 16#25E# range 0 .. 15;
      MB_ID6  at 16#260# range 0 .. 31;
      MB_DL6  at 16#264# range 0 .. 15;
      MB_D06  at 16#266# range 0 .. 7;
      MB_D16  at 16#267# range 0 .. 7;
      MB_D26  at 16#268# range 0 .. 7;
      MB_D36  at 16#269# range 0 .. 7;
      MB_D46  at 16#26A# range 0 .. 7;
      MB_D56  at 16#26B# range 0 .. 7;
      MB_D66  at 16#26C# range 0 .. 7;
      MB_D76  at 16#26D# range 0 .. 7;
      MB_TS6  at 16#26E# range 0 .. 15;
      MB_ID7  at 16#270# range 0 .. 31;
      MB_DL7  at 16#274# range 0 .. 15;
      MB_D07  at 16#276# range 0 .. 7;
      MB_D17  at 16#277# range 0 .. 7;
      MB_D27  at 16#278# range 0 .. 7;
      MB_D37  at 16#279# range 0 .. 7;
      MB_D47  at 16#27A# range 0 .. 7;
      MB_D57  at 16#27B# range 0 .. 7;
      MB_D67  at 16#27C# range 0 .. 7;
      MB_D77  at 16#27D# range 0 .. 7;
      MB_TS7  at 16#27E# range 0 .. 15;
      MB_ID8  at 16#280# range 0 .. 31;
      MB_DL8  at 16#284# range 0 .. 15;
      MB_D08  at 16#286# range 0 .. 7;
      MB_D18  at 16#287# range 0 .. 7;
      MB_D28  at 16#288# range 0 .. 7;
      MB_D38  at 16#289# range 0 .. 7;
      MB_D48  at 16#28A# range 0 .. 7;
      MB_D58  at 16#28B# range 0 .. 7;
      MB_D68  at 16#28C# range 0 .. 7;
      MB_D78  at 16#28D# range 0 .. 7;
      MB_TS8  at 16#28E# range 0 .. 15;
      MB_ID9  at 16#290# range 0 .. 31;
      MB_DL9  at 16#294# range 0 .. 15;
      MB_D09  at 16#296# range 0 .. 7;
      MB_D19  at 16#297# range 0 .. 7;
      MB_D29  at 16#298# range 0 .. 7;
      MB_D39  at 16#299# range 0 .. 7;
      MB_D49  at 16#29A# range 0 .. 7;
      MB_D59  at 16#29B# range 0 .. 7;
      MB_D69  at 16#29C# range 0 .. 7;
      MB_D79  at 16#29D# range 0 .. 7;
      MB_TS9  at 16#29E# range 0 .. 15;
      MB_ID10 at 16#2A0# range 0 .. 31;
      MB_DL10 at 16#2A4# range 0 .. 15;
      MB_D010 at 16#2A6# range 0 .. 7;
      MB_D110 at 16#2A7# range 0 .. 7;
      MB_D210 at 16#2A8# range 0 .. 7;
      MB_D310 at 16#2A9# range 0 .. 7;
      MB_D410 at 16#2AA# range 0 .. 7;
      MB_D510 at 16#2AB# range 0 .. 7;
      MB_D610 at 16#2AC# range 0 .. 7;
      MB_D710 at 16#2AD# range 0 .. 7;
      MB_TS10 at 16#2AE# range 0 .. 15;
      MB_ID11 at 16#2B0# range 0 .. 31;
      MB_DL11 at 16#2B4# range 0 .. 15;
      MB_D011 at 16#2B6# range 0 .. 7;
      MB_D111 at 16#2B7# range 0 .. 7;
      MB_D211 at 16#2B8# range 0 .. 7;
      MB_D311 at 16#2B9# range 0 .. 7;
      MB_D411 at 16#2BA# range 0 .. 7;
      MB_D511 at 16#2BB# range 0 .. 7;
      MB_D611 at 16#2BC# range 0 .. 7;
      MB_D711 at 16#2BD# range 0 .. 7;
      MB_TS11 at 16#2BE# range 0 .. 15;
      MB_ID12 at 16#2C0# range 0 .. 31;
      MB_DL12 at 16#2C4# range 0 .. 15;
      MB_D012 at 16#2C6# range 0 .. 7;
      MB_D112 at 16#2C7# range 0 .. 7;
      MB_D212 at 16#2C8# range 0 .. 7;
      MB_D312 at 16#2C9# range 0 .. 7;
      MB_D412 at 16#2CA# range 0 .. 7;
      MB_D512 at 16#2CB# range 0 .. 7;
      MB_D612 at 16#2CC# range 0 .. 7;
      MB_D712 at 16#2CD# range 0 .. 7;
      MB_TS12 at 16#2CE# range 0 .. 15;
      MB_ID13 at 16#2D0# range 0 .. 31;
      MB_DL13 at 16#2D4# range 0 .. 15;
      MB_D013 at 16#2D6# range 0 .. 7;
      MB_D113 at 16#2D7# range 0 .. 7;
      MB_D213 at 16#2D8# range 0 .. 7;
      MB_D313 at 16#2D9# range 0 .. 7;
      MB_D413 at 16#2DA# range 0 .. 7;
      MB_D513 at 16#2DB# range 0 .. 7;
      MB_D613 at 16#2DC# range 0 .. 7;
      MB_D713 at 16#2DD# range 0 .. 7;
      MB_TS13 at 16#2DE# range 0 .. 15;
      MB_ID14 at 16#2E0# range 0 .. 31;
      MB_DL14 at 16#2E4# range 0 .. 15;
      MB_D014 at 16#2E6# range 0 .. 7;
      MB_D114 at 16#2E7# range 0 .. 7;
      MB_D214 at 16#2E8# range 0 .. 7;
      MB_D314 at 16#2E9# range 0 .. 7;
      MB_D414 at 16#2EA# range 0 .. 7;
      MB_D514 at 16#2EB# range 0 .. 7;
      MB_D614 at 16#2EC# range 0 .. 7;
      MB_D714 at 16#2ED# range 0 .. 7;
      MB_TS14 at 16#2EE# range 0 .. 15;
      MB_ID15 at 16#2F0# range 0 .. 31;
      MB_DL15 at 16#2F4# range 0 .. 15;
      MB_D015 at 16#2F6# range 0 .. 7;
      MB_D115 at 16#2F7# range 0 .. 7;
      MB_D215 at 16#2F8# range 0 .. 7;
      MB_D315 at 16#2F9# range 0 .. 7;
      MB_D415 at 16#2FA# range 0 .. 7;
      MB_D515 at 16#2FB# range 0 .. 7;
      MB_D615 at 16#2FC# range 0 .. 7;
      MB_D715 at 16#2FD# range 0 .. 7;
      MB_TS15 at 16#2FE# range 0 .. 15;
      MB_ID16 at 16#300# range 0 .. 31;
      MB_DL16 at 16#304# range 0 .. 15;
      MB_D016 at 16#306# range 0 .. 7;
      MB_D116 at 16#307# range 0 .. 7;
      MB_D216 at 16#308# range 0 .. 7;
      MB_D316 at 16#309# range 0 .. 7;
      MB_D416 at 16#30A# range 0 .. 7;
      MB_D516 at 16#30B# range 0 .. 7;
      MB_D616 at 16#30C# range 0 .. 7;
      MB_D716 at 16#30D# range 0 .. 7;
      MB_TS16 at 16#30E# range 0 .. 15;
      MB_ID17 at 16#310# range 0 .. 31;
      MB_DL17 at 16#314# range 0 .. 15;
      MB_D017 at 16#316# range 0 .. 7;
      MB_D117 at 16#317# range 0 .. 7;
      MB_D217 at 16#318# range 0 .. 7;
      MB_D317 at 16#319# range 0 .. 7;
      MB_D417 at 16#31A# range 0 .. 7;
      MB_D517 at 16#31B# range 0 .. 7;
      MB_D617 at 16#31C# range 0 .. 7;
      MB_D717 at 16#31D# range 0 .. 7;
      MB_TS17 at 16#31E# range 0 .. 15;
      MB_ID18 at 16#320# range 0 .. 31;
      MB_DL18 at 16#324# range 0 .. 15;
      MB_D018 at 16#326# range 0 .. 7;
      MB_D118 at 16#327# range 0 .. 7;
      MB_D218 at 16#328# range 0 .. 7;
      MB_D318 at 16#329# range 0 .. 7;
      MB_D418 at 16#32A# range 0 .. 7;
      MB_D518 at 16#32B# range 0 .. 7;
      MB_D618 at 16#32C# range 0 .. 7;
      MB_D718 at 16#32D# range 0 .. 7;
      MB_TS18 at 16#32E# range 0 .. 15;
      MB_ID19 at 16#330# range 0 .. 31;
      MB_DL19 at 16#334# range 0 .. 15;
      MB_D019 at 16#336# range 0 .. 7;
      MB_D119 at 16#337# range 0 .. 7;
      MB_D219 at 16#338# range 0 .. 7;
      MB_D319 at 16#339# range 0 .. 7;
      MB_D419 at 16#33A# range 0 .. 7;
      MB_D519 at 16#33B# range 0 .. 7;
      MB_D619 at 16#33C# range 0 .. 7;
      MB_D719 at 16#33D# range 0 .. 7;
      MB_TS19 at 16#33E# range 0 .. 15;
      MB_ID20 at 16#340# range 0 .. 31;
      MB_DL20 at 16#344# range 0 .. 15;
      MB_D020 at 16#346# range 0 .. 7;
      MB_D120 at 16#347# range 0 .. 7;
      MB_D220 at 16#348# range 0 .. 7;
      MB_D320 at 16#349# range 0 .. 7;
      MB_D420 at 16#34A# range 0 .. 7;
      MB_D520 at 16#34B# range 0 .. 7;
      MB_D620 at 16#34C# range 0 .. 7;
      MB_D720 at 16#34D# range 0 .. 7;
      MB_TS20 at 16#34E# range 0 .. 15;
      MB_ID21 at 16#350# range 0 .. 31;
      MB_DL21 at 16#354# range 0 .. 15;
      MB_D021 at 16#356# range 0 .. 7;
      MB_D121 at 16#357# range 0 .. 7;
      MB_D221 at 16#358# range 0 .. 7;
      MB_D321 at 16#359# range 0 .. 7;
      MB_D421 at 16#35A# range 0 .. 7;
      MB_D521 at 16#35B# range 0 .. 7;
      MB_D621 at 16#35C# range 0 .. 7;
      MB_D721 at 16#35D# range 0 .. 7;
      MB_TS21 at 16#35E# range 0 .. 15;
      MB_ID22 at 16#360# range 0 .. 31;
      MB_DL22 at 16#364# range 0 .. 15;
      MB_D022 at 16#366# range 0 .. 7;
      MB_D122 at 16#367# range 0 .. 7;
      MB_D222 at 16#368# range 0 .. 7;
      MB_D322 at 16#369# range 0 .. 7;
      MB_D422 at 16#36A# range 0 .. 7;
      MB_D522 at 16#36B# range 0 .. 7;
      MB_D622 at 16#36C# range 0 .. 7;
      MB_D722 at 16#36D# range 0 .. 7;
      MB_TS22 at 16#36E# range 0 .. 15;
      MB_ID23 at 16#370# range 0 .. 31;
      MB_DL23 at 16#374# range 0 .. 15;
      MB_D023 at 16#376# range 0 .. 7;
      MB_D123 at 16#377# range 0 .. 7;
      MB_D223 at 16#378# range 0 .. 7;
      MB_D323 at 16#379# range 0 .. 7;
      MB_D423 at 16#37A# range 0 .. 7;
      MB_D523 at 16#37B# range 0 .. 7;
      MB_D623 at 16#37C# range 0 .. 7;
      MB_D723 at 16#37D# range 0 .. 7;
      MB_TS23 at 16#37E# range 0 .. 15;
      MB_ID24 at 16#380# range 0 .. 31;
      MB_DL24 at 16#384# range 0 .. 15;
      MB_D024 at 16#386# range 0 .. 7;
      MB_D124 at 16#387# range 0 .. 7;
      MB_D224 at 16#388# range 0 .. 7;
      MB_D324 at 16#389# range 0 .. 7;
      MB_D424 at 16#38A# range 0 .. 7;
      MB_D524 at 16#38B# range 0 .. 7;
      MB_D624 at 16#38C# range 0 .. 7;
      MB_D724 at 16#38D# range 0 .. 7;
      MB_TS24 at 16#38E# range 0 .. 15;
      MB_ID25 at 16#390# range 0 .. 31;
      MB_DL25 at 16#394# range 0 .. 15;
      MB_D025 at 16#396# range 0 .. 7;
      MB_D125 at 16#397# range 0 .. 7;
      MB_D225 at 16#398# range 0 .. 7;
      MB_D325 at 16#399# range 0 .. 7;
      MB_D425 at 16#39A# range 0 .. 7;
      MB_D525 at 16#39B# range 0 .. 7;
      MB_D625 at 16#39C# range 0 .. 7;
      MB_D725 at 16#39D# range 0 .. 7;
      MB_TS25 at 16#39E# range 0 .. 15;
      MB_ID26 at 16#3A0# range 0 .. 31;
      MB_DL26 at 16#3A4# range 0 .. 15;
      MB_D026 at 16#3A6# range 0 .. 7;
      MB_D126 at 16#3A7# range 0 .. 7;
      MB_D226 at 16#3A8# range 0 .. 7;
      MB_D326 at 16#3A9# range 0 .. 7;
      MB_D426 at 16#3AA# range 0 .. 7;
      MB_D526 at 16#3AB# range 0 .. 7;
      MB_D626 at 16#3AC# range 0 .. 7;
      MB_D726 at 16#3AD# range 0 .. 7;
      MB_TS26 at 16#3AE# range 0 .. 15;
      MB_ID27 at 16#3B0# range 0 .. 31;
      MB_DL27 at 16#3B4# range 0 .. 15;
      MB_D027 at 16#3B6# range 0 .. 7;
      MB_D127 at 16#3B7# range 0 .. 7;
      MB_D227 at 16#3B8# range 0 .. 7;
      MB_D327 at 16#3B9# range 0 .. 7;
      MB_D427 at 16#3BA# range 0 .. 7;
      MB_D527 at 16#3BB# range 0 .. 7;
      MB_D627 at 16#3BC# range 0 .. 7;
      MB_D727 at 16#3BD# range 0 .. 7;
      MB_TS27 at 16#3BE# range 0 .. 15;
      MB_ID28 at 16#3C0# range 0 .. 31;
      MB_DL28 at 16#3C4# range 0 .. 15;
      MB_D028 at 16#3C6# range 0 .. 7;
      MB_D128 at 16#3C7# range 0 .. 7;
      MB_D228 at 16#3C8# range 0 .. 7;
      MB_D328 at 16#3C9# range 0 .. 7;
      MB_D428 at 16#3CA# range 0 .. 7;
      MB_D528 at 16#3CB# range 0 .. 7;
      MB_D628 at 16#3CC# range 0 .. 7;
      MB_D728 at 16#3CD# range 0 .. 7;
      MB_TS28 at 16#3CE# range 0 .. 15;
      MB_ID29 at 16#3D0# range 0 .. 31;
      MB_DL29 at 16#3D4# range 0 .. 15;
      MB_D029 at 16#3D6# range 0 .. 7;
      MB_D129 at 16#3D7# range 0 .. 7;
      MB_D229 at 16#3D8# range 0 .. 7;
      MB_D329 at 16#3D9# range 0 .. 7;
      MB_D429 at 16#3DA# range 0 .. 7;
      MB_D529 at 16#3DB# range 0 .. 7;
      MB_D629 at 16#3DC# range 0 .. 7;
      MB_D729 at 16#3DD# range 0 .. 7;
      MB_TS29 at 16#3DE# range 0 .. 15;
      MB_ID30 at 16#3E0# range 0 .. 31;
      MB_DL30 at 16#3E4# range 0 .. 15;
      MB_D030 at 16#3E6# range 0 .. 7;
      MB_D130 at 16#3E7# range 0 .. 7;
      MB_D230 at 16#3E8# range 0 .. 7;
      MB_D330 at 16#3E9# range 0 .. 7;
      MB_D430 at 16#3EA# range 0 .. 7;
      MB_D530 at 16#3EB# range 0 .. 7;
      MB_D630 at 16#3EC# range 0 .. 7;
      MB_D730 at 16#3ED# range 0 .. 7;
      MB_TS30 at 16#3EE# range 0 .. 15;
      MB_ID31 at 16#3F0# range 0 .. 31;
      MB_DL31 at 16#3F4# range 0 .. 15;
      MB_D031 at 16#3F6# range 0 .. 7;
      MB_D131 at 16#3F7# range 0 .. 7;
      MB_D231 at 16#3F8# range 0 .. 7;
      MB_D331 at 16#3F9# range 0 .. 7;
      MB_D431 at 16#3FA# range 0 .. 7;
      MB_D531 at 16#3FB# range 0 .. 7;
      MB_D631 at 16#3FC# range 0 .. 7;
      MB_D731 at 16#3FD# range 0 .. 7;
      MB_TS31 at 16#3FE# range 0 .. 15;
      MKR     at 16#400# range 0 .. 255;
      FIDCR   at 16#420# range 0 .. 63;
      MKIVLR  at 16#428# range 0 .. 31;
      MIER    at 16#42C# range 0 .. 31;
      MCTL_TX at 16#820# range 0 .. 255;
      CTLR    at 16#840# range 0 .. 15;
      STR     at 16#842# range 0 .. 15;
      BCR     at 16#844# range 0 .. 31;
      RFCR    at 16#848# range 0 .. 7;
      RFPCR   at 16#849# range 0 .. 7;
      TFCR    at 16#84A# range 0 .. 7;
      TFPCR   at 16#84B# range 0 .. 7;
      EIER    at 16#84C# range 0 .. 7;
      EIFR    at 16#84D# range 0 .. 7;
      RECR    at 16#84E# range 0 .. 7;
      TECR    at 16#84F# range 0 .. 7;
      ECSR    at 16#850# range 0 .. 7;
      CSSR    at 16#851# range 0 .. 7;
      MSSR    at 16#852# range 0 .. 7;
      MSMR    at 16#853# range 0 .. 7;
      TSR     at 16#854# range 0 .. 15;
      AFSR    at 16#856# range 0 .. 15;
      TCR     at 16#858# range 0 .. 7;
   end record;

   --  CAN0 Module
   CAN0_Periph : aliased CAN0_Peripheral
     with Import, Address => CAN0_Base;

end R7FA4M1AB.CAN0;
