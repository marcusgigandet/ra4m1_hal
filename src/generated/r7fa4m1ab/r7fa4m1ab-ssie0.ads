--
-- Copyright (C) 2026 Marcus Gigandet
--
-- SPDX-License-Identifier: LGPL-3.0-or-later
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  Serial Sound Interface Ver.2.0

package R7FA4M1AB.SSIE0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Receive Enable
   type SSICR_REN_Field is
     (--  Disables the receive operation.
     Val_0,
      --  Enables the receive operation.
      Val_1)
   with Size => 1;
   for SSICR_REN_Field use (Val_0 => 0, Val_1 => 1);

   --  Transmit Enable
   type SSICR_TEN_Field is
     (--  Disables the transmit operation.
     Val_0,
      --  Enables the transmit operation.
      Val_1)
   with Size => 1;
   for SSICR_TEN_Field use (Val_0 => 0, Val_1 => 1);

   subtype SSICR_Reserved_Field is R7FA4M1AB.Bit;

   --  Mute Enable
   type SSICR_MUEN_Field is
     (--  Disables muting on the next frame boundary
     Val_0,
      --  Enables muting on the next frame boundary.
      Val_1)
   with Size => 1;
   for SSICR_MUEN_Field use (Val_0 => 0, Val_1 => 1);

   --  Selects Bit Clock Division Ratio
   type SSICR_CKDV_Field is
     (--  AUDIO_MCK
     Val_0000,
      --  AUDIO_MCK/2
      Val_0001,
      --  AUDIO_MCK/4
      Val_0010,
      --  AUDIO_MCK/8
      Val_0011,
      --  AUDIO_MCK/16
      Val_0100,
      --  AUDIO_MCK/32
      Val_0101,
      --  AUDIO_MCK/64
      Val_0110,
      --  AUDIO_MCK/128
      Val_0111,
      --  AUDIO_MCK/6
      Val_1000,
      --  AUDIO_MCK/12
      Val_1001,
      --  AUDIO_MCK/24
      Val_1010,
      --  AUDIO_MCK/48
      Val_1011,
      --  AUDIO_MCK/96
      Val_1100,
      --  Setting prohibited
      others_k)
   with Size => 4;
   for SSICR_CKDV_Field use
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
      Val_1010 => 10,
      Val_1011 => 11,
      Val_1100 => 12,
      others_k => 15);

   --  Selects Serial Data Delay
   type SSICR_DEL_Field is
     (--  Delay of one cycle of SSIBCK between SSILRCK/SSIFS and SSITXD0/SSIRXD0
     Val_0,
      --  No delay between SSILRCK/SSIFS and SSITXD0/SSIRXD0 In the monaural format,
      --  this bit controls the waveform of SSILRCK/SSIFS.
      Val_1)
   with Size => 1;
   for SSICR_DEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Selects Placement Data Alignment
   type SSICR_PDTA_Field is
     (--  Left-justifies placement data (SSIFTDR, SSIFRDR)
     Val_0,
      --  Right-justifies placement data (SSIFTDR, SSIFRDR).
      Val_1)
   with Size => 1;
   for SSICR_PDTA_Field use (Val_0 => 0, Val_1 => 1);

   --  Selects Serial Data Alignment
   type SSICR_SDTA_Field is
     (--  Transmits and receives serial data first and then padding bits
     Val_0,
      --  Transmit and receives padding bits first and then serial data.
      Val_1)
   with Size => 1;
   for SSICR_SDTA_Field use (Val_0 => 0, Val_1 => 1);

   --  Selects Serial Padding Polarity
   type SSICR_SPDP_Field is
     (--  Padding data is at a low level
     Val_0,
      --  Padding data is at a high level.
      Val_1)
   with Size => 1;
   for SSICR_SPDP_Field use (Val_0 => 0, Val_1 => 1);

   --  Selects the Initial Value and Polarity of LR Clock/Frame Synchronization
   --  Signal
   type SSICR_LRCKP_Field is
     (--  The initial value is at a high level The start trigger for a frame is
     --  synchronized with a falling edge of SSILRCK/SSIFS
     Val_0,
      --  The initial value is at a low level The start trigger for a frame is
      --  synchronized with a rising edge of SSILRCK/SSIFS.
      Val_1)
   with Size => 1;
   for SSICR_LRCKP_Field use (Val_0 => 0, Val_1 => 1);

   --  Selects Bit Clock Polarity
   type SSICR_BCKP_Field is
     (--  SSILRCK/SSIFS and SSITXD0/SSIRXD0 change at a falling edge (SSILRCK/SSIFS
     --  and SSIRXD0 are sampled at a rising edge of SSIBCK)
     Val_0,
      --  SSILRCK/SSIFS and SSITXD0/SSIRXD0 change at a rising edge (SSILRCK/SSIFS
      --  and SSIRXD0 are sampled at a falling edge of SSIBCK).
      Val_1)
   with Size => 1;
   for SSICR_BCKP_Field use (Val_0 => 0, Val_1 => 1);

   --  Master Enable
   type SSICR_MST_Field is
     (--  Slave-mode communication
     Val_0,
      --  Master-mode communication.
      Val_1)
   with Size => 1;
   for SSICR_MST_Field use (Val_0 => 0, Val_1 => 1);

   --  Selects System Word Length
   type SSICR_SWL_Field is
     (--  8 bits
     Val_000,
      --  16 bits
      Val_001,
      --  24 bits
      Val_010,
      --  32 bits
      Val_011,
      --  48 bits
      Val_100,
      --  64 bits
      Val_101,
      --  128 bits
      Val_110,
      --  256 bits.
      Val_111)
   with Size => 3;
   for SSICR_SWL_Field use
     (Val_000 => 0,
      Val_001 => 1,
      Val_010 => 2,
      Val_011 => 3,
      Val_100 => 4,
      Val_101 => 5,
      Val_110 => 6,
      Val_111 => 7);

   --  Selects Data Word Length
   type SSICR_DWL_Field is
     (--  8 bits
     Val_000,
      --  16 bits
      Val_001,
      --  18 bits
      Val_010,
      --  20 bits
      Val_011,
      --  22 bits
      Val_100,
      --  24 bits
      Val_101,
      --  32 bits
      Val_110,
      --  Settings other than above are prohibited.
      others_k)
   with Size => 3;
   for SSICR_DWL_Field use
     (Val_000  => 0,
      Val_001  => 1,
      Val_010  => 2,
      Val_011  => 3,
      Val_100  => 4,
      Val_101  => 5,
      Val_110  => 6,
      others_k => 7);

   subtype SSICR_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Idle Mode Interrupt Output Enable
   type SSICR_IIEN_Field is
     (--  Disables idle mode interrupt output
     Val_0,
      --  Enables idle mode interrupt output.
      Val_1)
   with Size => 1;
   for SSICR_IIEN_Field use (Val_0 => 0, Val_1 => 1);

   --  Receive Overflow Interrupt Output Enable
   type SSICR_ROIEN_Field is
     (--  Disables receive overflow interrupt output
     Val_0,
      --  Enables receive overflow interrupt output.
      Val_1)
   with Size => 1;
   for SSICR_ROIEN_Field use (Val_0 => 0, Val_1 => 1);

   --  Receive Underflow Interrupt Output Enable
   type SSICR_RUIEN_Field is
     (--  Disables receive underflow interrupt output
     Val_0,
      --  Enables receive underflow interrupt output.
      Val_1)
   with Size => 1;
   for SSICR_RUIEN_Field use (Val_0 => 0, Val_1 => 1);

   --  Transmit Overflow Interrupt Output Enable
   type SSICR_TOIEN_Field is
     (--  Disables transmit overflow interrupt output
     Val_0,
      --  Enables transmit overflow interrupt output.
      Val_1)
   with Size => 1;
   for SSICR_TOIEN_Field use (Val_0 => 0, Val_1 => 1);

   --  Transmit Underflow Interrupt Output Enable
   type SSICR_TUIEN_Field is
     (--  Disables transmit underflow interrupt output
     Val_0,
      --  Enables transmit underflow interrupt output.
      Val_1)
   with Size => 1;
   for SSICR_TUIEN_Field use (Val_0 => 0, Val_1 => 1);

   --  Selects an Audio Clock for Master-mode Communication
   type SSICR_CKS_Field is
     (--  Selects the AUDIO_CLK input
     Val_0,
      --  Selects the GTIOC1A (GPT output).
      Val_1)
   with Size => 1;
   for SSICR_CKS_Field use (Val_0 => 0, Val_1 => 1);

   --  Control Register
   type SSICR_Register is record
      --  Receive Enable
      REN        : SSICR_REN_Field := R7FA4M1AB.SSIE0.Val_0;
      --  Transmit Enable
      TEN        : SSICR_TEN_Field := R7FA4M1AB.SSIE0.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : SSICR_Reserved_Field := 16#0#;
      --  Mute Enable
      MUEN       : SSICR_MUEN_Field := R7FA4M1AB.SSIE0.Val_0;
      --  Selects Bit Clock Division Ratio
      CKDV       : SSICR_CKDV_Field := R7FA4M1AB.SSIE0.Val_0000;
      --  Selects Serial Data Delay
      DEL        : SSICR_DEL_Field := R7FA4M1AB.SSIE0.Val_0;
      --  Selects Placement Data Alignment
      PDTA       : SSICR_PDTA_Field := R7FA4M1AB.SSIE0.Val_0;
      --  Selects Serial Data Alignment
      SDTA       : SSICR_SDTA_Field := R7FA4M1AB.SSIE0.Val_0;
      --  Selects Serial Padding Polarity
      SPDP       : SSICR_SPDP_Field := R7FA4M1AB.SSIE0.Val_0;
      --  Selects the Initial Value and Polarity of LR Clock/Frame
      --  Synchronization Signal
      LRCKP      : SSICR_LRCKP_Field := R7FA4M1AB.SSIE0.Val_0;
      --  Selects Bit Clock Polarity
      BCKP       : SSICR_BCKP_Field := R7FA4M1AB.SSIE0.Val_0;
      --  Master Enable
      MST        : SSICR_MST_Field := R7FA4M1AB.SSIE0.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : SSICR_Reserved_Field := 16#0#;
      --  Selects System Word Length
      SWL        : SSICR_SWL_Field := R7FA4M1AB.SSIE0.Val_000;
      --  Selects Data Word Length
      DWL        : SSICR_DWL_Field := R7FA4M1AB.SSIE0.Val_000;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : SSICR_Reserved_Field_1 := 16#0#;
      --  Idle Mode Interrupt Output Enable
      IIEN       : SSICR_IIEN_Field := R7FA4M1AB.SSIE0.Val_0;
      --  Receive Overflow Interrupt Output Enable
      ROIEN      : SSICR_ROIEN_Field := R7FA4M1AB.SSIE0.Val_0;
      --  Receive Underflow Interrupt Output Enable
      RUIEN      : SSICR_RUIEN_Field := R7FA4M1AB.SSIE0.Val_0;
      --  Transmit Overflow Interrupt Output Enable
      TOIEN      : SSICR_TOIEN_Field := R7FA4M1AB.SSIE0.Val_0;
      --  Transmit Underflow Interrupt Output Enable
      TUIEN      : SSICR_TUIEN_Field := R7FA4M1AB.SSIE0.Val_0;
      --  Selects an Audio Clock for Master-mode Communication
      CKS        : SSICR_CKS_Field := R7FA4M1AB.SSIE0.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_3 : SSICR_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => System.Low_Order_First;

   for SSICR_Register use
     record
       REN at 0 range 0 .. 0;
       TEN at 0 range 1 .. 1;
       Reserved at 0 range 2 .. 2;
       MUEN at 0 range 3 .. 3;
       CKDV at 0 range 4 .. 7;
       DEL at 0 range 8 .. 8;
       PDTA at 0 range 9 .. 9;
       SDTA at 0 range 10 .. 10;
       SPDP at 0 range 11 .. 11;
       LRCKP at 0 range 12 .. 12;
       BCKP at 0 range 13 .. 13;
       MST at 0 range 14 .. 14;
       Reserved_1 at 0 range 15 .. 15;
       SWL at 0 range 16 .. 18;
       DWL at 0 range 19 .. 21;
       Reserved_2 at 0 range 22 .. 24;
       IIEN at 0 range 25 .. 25;
       ROIEN at 0 range 26 .. 26;
       RUIEN at 0 range 27 .. 27;
       TOIEN at 0 range 28 .. 28;
       TUIEN at 0 range 29 .. 29;
       CKS at 0 range 30 .. 30;
       Reserved_3 at 0 range 31 .. 31;
     end record;

   subtype SSISR_Reserved_Field is R7FA4M1AB.UInt25;

   --  Idle Mode Status Flag
   type SSISR_IIRQ_Field is
     (--  In the communication state
     Val_0,
      --  In the idle state
      Val_1)
   with Size => 1;
   for SSISR_IIRQ_Field use (Val_0 => 0, Val_1 => 1);

   --  Receive Overflow Error Status Flag
   type SSISR_ROIRQ_Field is
     (--  No receive overflow error is generated
     Val_0,
      --  A receive overflow error is generated.
      Val_1)
   with Size => 1;
   for SSISR_ROIRQ_Field use (Val_0 => 0, Val_1 => 1);

   --  Receive Underflow Error Status Flag
   type SSISR_RUIRQ_Field is
     (--  No receive underflow error is generated
     Val_0,
      --  A receive underflow error is generated.
      Val_1)
   with Size => 1;
   for SSISR_RUIRQ_Field use (Val_0 => 0, Val_1 => 1);

   --  Transmit Overflow Error Status Flag
   type SSISR_TOIRQ_Field is
     (--  No transmit overflow error is generated
     Val_0,
      --  A transmit overflow error is generated.
      Val_1)
   with Size => 1;
   for SSISR_TOIRQ_Field use (Val_0 => 0, Val_1 => 1);

   --  Transmit Underflow Error Status flag
   type SSISR_TUIRQ_Field is
     (--  No transmit underflow error is generated
     Val_0,
      --  A transmit underflow error is generated.
      Val_1)
   with Size => 1;
   for SSISR_TUIRQ_Field use (Val_0 => 0, Val_1 => 1);

   subtype SSISR_Reserved_Field_1 is R7FA4M1AB.UInt2;

   --  Status Register
   type SSISR_Register is record
      --  These bits are read as 0000000000000000000000000. The write value
      --  should be 0000000000000000000000000.
      Reserved   : SSISR_Reserved_Field := 16#0#;
      --  Read-only. Idle Mode Status Flag
      IIRQ       : SSISR_IIRQ_Field := R7FA4M1AB.SSIE0.Val_1;
      --  Receive Overflow Error Status Flag
      ROIRQ      : SSISR_ROIRQ_Field := R7FA4M1AB.SSIE0.Val_0;
      --  Receive Underflow Error Status Flag
      RUIRQ      : SSISR_RUIRQ_Field := R7FA4M1AB.SSIE0.Val_0;
      --  Transmit Overflow Error Status Flag
      TOIRQ      : SSISR_TOIRQ_Field := R7FA4M1AB.SSIE0.Val_0;
      --  Transmit Underflow Error Status flag
      TUIRQ      : SSISR_TUIRQ_Field := R7FA4M1AB.SSIE0.Val_0;
      --  These bits are read as 00. The write value should be 00.
      Reserved_1 : SSISR_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => System.Low_Order_First;

   for SSISR_Register use
     record
       Reserved at 0 range 0 .. 24;
       IIRQ at 0 range 25 .. 25;
       ROIRQ at 0 range 26 .. 26;
       RUIRQ at 0 range 27 .. 27;
       TOIRQ at 0 range 28 .. 28;
       TUIRQ at 0 range 29 .. 29;
       Reserved_1 at 0 range 30 .. 31;
     end record;

   --  Receive FIFO Data Register Reset
   type SSIFCR_RFRST_Field is
     (--  Clears a receive data FIFO reset condition
     Val_0,
      --  Sets a receive data FIFO reset condition.
      Val_1)
   with Size => 1;
   for SSIFCR_RFRST_Field use (Val_0 => 0, Val_1 => 1);

   --  Transmit FIFO Data Register Reset
   type SSIFCR_TFRST_Field is
     (--  Clears a transmit data FIFO reset condition
     Val_0,
      --  Sets a transmit data FIFO reset condition.
      Val_1)
   with Size => 1;
   for SSIFCR_TFRST_Field use (Val_0 => 0, Val_1 => 1);

   --  Receive Data Full Interrupt Output Enable
   type SSIFCR_RIE_Field is
     (--  Disables receive data full interrupts
     Val_0,
      --  Enables receive data full interrupts.
      Val_1)
   with Size => 1;
   for SSIFCR_RIE_Field use (Val_0 => 0, Val_1 => 1);

   --  Transmit Data Empty Interrupt Output Enable
   type SSIFCR_TIE_Field is
     (--  Disables transmit data empty interrupts
     Val_0,
      --  Enables transmit data empty interrupts.
      Val_1)
   with Size => 1;
   for SSIFCR_TIE_Field use (Val_0 => 0, Val_1 => 1);

   subtype SSIFCR_Reserved_Field is R7FA4M1AB.UInt7;

   --  Byte Swap Enable
   type SSIFCR_BSW_Field is
     (--  Disables byte swap
     Val_0,
      --  Enables byte swap
      Val_1)
   with Size => 1;
   for SSIFCR_BSW_Field use (Val_0 => 0, Val_1 => 1);

   subtype SSIFCR_Reserved_Field_1 is R7FA4M1AB.UInt4;

   --  Software Reset
   type SSIFCR_SSIRST_Field is
     (--  Clears a software reset condition
     Val_0,
      --  Sets a software reset condition.
      Val_1)
   with Size => 1;
   for SSIFCR_SSIRST_Field use (Val_0 => 0, Val_1 => 1);

   subtype SSIFCR_Reserved_Field_2 is R7FA4M1AB.UInt14;

   --  AUDIO_MCK Enable in Mastermode Communication
   type SSIFCR_AUCKE_Field is
     (--  Disables supply of AUDIO_MCK
     Val_0,
      --  Enables supply of AUDIO_MCK.
      Val_1)
   with Size => 1;
   for SSIFCR_AUCKE_Field use (Val_0 => 0, Val_1 => 1);

   --  FIFO Control Register
   type SSIFCR_Register is record
      --  Receive FIFO Data Register Reset
      RFRST      : SSIFCR_RFRST_Field := R7FA4M1AB.SSIE0.Val_0;
      --  Transmit FIFO Data Register Reset
      TFRST      : SSIFCR_TFRST_Field := R7FA4M1AB.SSIE0.Val_0;
      --  Receive Data Full Interrupt Output Enable
      RIE        : SSIFCR_RIE_Field := R7FA4M1AB.SSIE0.Val_0;
      --  Transmit Data Empty Interrupt Output Enable
      TIE        : SSIFCR_TIE_Field := R7FA4M1AB.SSIE0.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved   : SSIFCR_Reserved_Field := 16#0#;
      --  Byte Swap Enable
      BSW        : SSIFCR_BSW_Field := R7FA4M1AB.SSIE0.Val_0;
      --  These bits are read as 0000. The write value should be 0000.
      Reserved_1 : SSIFCR_Reserved_Field_1 := 16#0#;
      --  Software Reset
      SSIRST     : SSIFCR_SSIRST_Field := R7FA4M1AB.SSIE0.Val_0;
      --  These bits are read as 00000000000000. The write value should be
      --  00000000000000.
      Reserved_2 : SSIFCR_Reserved_Field_2 := 16#0#;
      --  AUDIO_MCK Enable in Mastermode Communication
      AUCKE      : SSIFCR_AUCKE_Field := R7FA4M1AB.SSIE0.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => System.Low_Order_First;

   for SSIFCR_Register use
     record
       RFRST at 0 range 0 .. 0;
       TFRST at 0 range 1 .. 1;
       RIE at 0 range 2 .. 2;
       TIE at 0 range 3 .. 3;
       Reserved at 0 range 4 .. 10;
       BSW at 0 range 11 .. 11;
       Reserved_1 at 0 range 12 .. 15;
       SSIRST at 0 range 16 .. 16;
       Reserved_2 at 0 range 17 .. 30;
       AUCKE at 0 range 31 .. 31;
     end record;

   --  Receive Data Full Flag
   type SSIFSR_RDF_Field is
     (--  The size of received data in SSIFRDR is not more than the value of
     --  SSISCR.RDFS
     Val_0,
      --  The size of received data in SSIFRDR is not less than the value of
      --  SSISCR.RDFS plus one.
      Val_1)
   with Size => 1;
   for SSIFSR_RDF_Field use (Val_0 => 0, Val_1 => 1);

   subtype SSIFSR_Reserved_Field is R7FA4M1AB.UInt7;
   subtype SSIFSR_RDC_Field is R7FA4M1AB.UInt4;

   --  Transmit Data Empty Flag
   type SSIFSR_TDE_Field is
     (--  The free space of SSIFTDR is not more than the value of SSISCR.TDES
     Val_0,
      --  The free space of SSIFTDR is not less than the value of SSISCR.TDES plus
      --  one.
      Val_1)
   with Size => 1;
   for SSIFSR_TDE_Field use (Val_0 => 0, Val_1 => 1);

   subtype SSIFSR_TDC_Field is R7FA4M1AB.UInt4;
   subtype SSIFSR_Reserved_Field_1 is R7FA4M1AB.UInt4;

   --  FIFO Status Register
   type SSIFSR_Register is record
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Receive Data Full Flag
      RDF            : SSIFSR_RDF_Field := R7FA4M1AB.SSIE0.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved       : SSIFSR_Reserved_Field := 16#0#;
      --  Read-only. Number of Receive FIFO Data Indication Flag Number of
      --  receive FIFO data indication flag.
      RDC            : SSIFSR_RDC_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : R7FA4M1AB.UInt4 := 16#0#;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Transmit Data Empty Flag
      TDE            : SSIFSR_TDE_Field := R7FA4M1AB.SSIE0.Val_1;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved_1     : SSIFSR_Reserved_Field := 16#0#;
      --  Read-only. Number of Transmit FIFO Data Indication Flag Number of
      --  transmit FIFO data indication flag.
      TDC            : SSIFSR_TDC_Field := 16#0#;
      --  These bits are read as 0000. The write value should be 0000.
      Reserved_2     : SSIFSR_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => System.Low_Order_First;

   for SSIFSR_Register use
     record
       RDF at 0 range 0 .. 0;
       Reserved at 0 range 1 .. 7;
       RDC at 0 range 8 .. 11;
       Reserved_12_15 at 0 range 12 .. 15;
       TDE at 0 range 16 .. 16;
       Reserved_1 at 0 range 17 .. 23;
       TDC at 0 range 24 .. 27;
       Reserved_2 at 0 range 28 .. 31;
     end record;

   --  Audio Format Select
   type SSITDMR_OMOD_Field is
     (--  I2S format
     Val_00,
      --  Setting prohibited
      Val_01,
      --  Monaural format
      Val_10,
      --  Setting prohibited.
      Val_11)
   with Size => 2;
   for SSITDMR_OMOD_Field use
     (Val_00 => 0, Val_01 => 1, Val_10 => 2, Val_11 => 3);

   subtype SSITDMR_Reserved_Field is R7FA4M1AB.UInt6;

   --  Whether to Enable LRCK/FS Continuation
   type SSITDMR_LRCONT_Field is
     (--  Disables LRCK/FS continuation
     Val_0,
      --  Enables LRCK/FS continuation.
      Val_1)
   with Size => 1;
   for SSITDMR_LRCONT_Field use (Val_0 => 0, Val_1 => 1);

   --  Whether to Enable Stopping BCK Output When SSIE is in Idle Status
   type SSITDMR_BCKASTP_Field is
     (--  Always outputs BCK to the SSIBCK pin
     Val_0,
      --  Automatically controls output of BCK to the SSIBCK pin.
      Val_1)
   with Size => 1;
   for SSITDMR_BCKASTP_Field use (Val_0 => 0, Val_1 => 1);

   subtype SSITDMR_Reserved_Field_1 is R7FA4M1AB.UInt22;

   --  TDM Mode Register
   type SSITDMR_Register is record
      --  Audio Format Select
      OMOD       : SSITDMR_OMOD_Field := R7FA4M1AB.SSIE0.Val_00;
      --  These bits are read as 000000. The write value should be 000000.
      Reserved   : SSITDMR_Reserved_Field := 16#0#;
      --  Whether to Enable LRCK/FS Continuation
      LRCONT     : SSITDMR_LRCONT_Field := R7FA4M1AB.SSIE0.Val_0;
      --  Whether to Enable Stopping BCK Output When SSIE is in Idle Status
      BCKASTP    : SSITDMR_BCKASTP_Field := R7FA4M1AB.SSIE0.Val_0;
      --  These bits are read as 0000000000000000000000. The write value should
      --  be 0000000000000000000000.
      Reserved_1 : SSITDMR_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => System.Low_Order_First;

   for SSITDMR_Register use
     record
       OMOD at 0 range 0 .. 1;
       Reserved at 0 range 2 .. 7;
       LRCONT at 0 range 8 .. 8;
       BCKASTP at 0 range 9 .. 9;
       Reserved_1 at 0 range 10 .. 31;
     end record;

   --  RDF Setting Condition Select
   type SSISCR_RDFS_Field is
     (--  SSIFRDR has one stage or more data size
     Val_000,
      --  SSIFRDR has two stages or more data size (snip)
      Val_001,
      --  SSIFRDR has seven stages or more data size
      Val_110,
      --  SSIFRDR has eight stages or more data size.
      Val_111)
   with Size => 3;
   for SSISCR_RDFS_Field use
     (Val_000 => 0, Val_001 => 1, Val_110 => 6, Val_111 => 7);

   subtype SSISCR_Reserved_Field is R7FA4M1AB.UInt5;

   --  TDE Setting Condition Select
   type SSISCR_TDES_Field is
     (--  SSIFTDR has one stage or more free space
     Val_000,
      --  SSIFTDR has two stages or more free space (snip)
      Val_001,
      --  SSIFTDR has seven stages or more free space
      Val_110,
      --  SSIFTDR has eight stages or more free space.
      Val_111)
   with Size => 3;
   for SSISCR_TDES_Field use
     (Val_000 => 0, Val_001 => 1, Val_110 => 6, Val_111 => 7);

   subtype SSISCR_Reserved_Field_1 is R7FA4M1AB.UInt16;

   --  Status Control Register
   type SSISCR_Register is record
      --  RDF Setting Condition Select
      RDFS       : SSISCR_RDFS_Field := R7FA4M1AB.SSIE0.Val_000;
      --  These bits are read as 00000. The write value should be 00000.
      Reserved   : SSISCR_Reserved_Field := 16#0#;
      --  TDE Setting Condition Select
      TDES       : SSISCR_TDES_Field := R7FA4M1AB.SSIE0.Val_000;
      --  These bits are read as 00000. The write value should be 00000.
      Reserved_1 : SSISCR_Reserved_Field := 16#0#;
      --  These bits are read as 0000000000000000. The write value should be
      --  0000000000000000.
      Reserved_2 : SSISCR_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => System.Low_Order_First;

   for SSISCR_Register use
     record
       RDFS at 0 range 0 .. 2;
       Reserved at 0 range 3 .. 7;
       TDES at 0 range 8 .. 10;
       Reserved_1 at 0 range 11 .. 15;
       Reserved_2 at 0 range 16 .. 31;
     end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Serial Sound Interface Ver.2.0
   type SSIE0_Peripheral is record
      --  Control Register
      SSICR   : aliased SSICR_Register;
      --  Status Register
      SSISR   : aliased SSISR_Register;
      --  FIFO Control Register
      SSIFCR  : aliased SSIFCR_Register;
      --  FIFO Status Register
      SSIFSR  : aliased SSIFSR_Register;
      --  Transmit FIFO Data Register
      SSIFTDR : aliased R7FA4M1AB.UInt32;
      --  Receive FIFO Data Register
      SSIFRDR : aliased R7FA4M1AB.UInt32;
      --  TDM Mode Register
      SSITDMR : aliased SSITDMR_Register;
      --  Status Control Register
      SSISCR  : aliased SSISCR_Register;
   end record
   with Volatile;

   for SSIE0_Peripheral use
     record
       SSICR at 16#0# range 0 .. 31;
       SSISR at 16#4# range 0 .. 31;
       SSIFCR at 16#10# range 0 .. 31;
       SSIFSR at 16#14# range 0 .. 31;
       SSIFTDR at 16#18# range 0 .. 31;
       SSIFRDR at 16#1C# range 0 .. 31;
       SSITDMR at 16#20# range 0 .. 31;
       SSISCR at 16#24# range 0 .. 31;
     end record;

   --  Serial Sound Interface Ver.2.0
   SSIE0_Periph : aliased SSIE0_Peripheral
   with Import, Address => SSIE0_Base;

end R7FA4M1AB.SSIE0;
