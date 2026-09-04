--
-- Copyright (C) 2026 Marcus Gigandet
--
-- SPDX-License-Identifier: LGPL-3.0-or-later
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  Serial Communication Interface 9

package R7FA4M1AB.SCI9 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Clock Select
   type SMR_CKS_Field is
     (--  PCLK clock
     Val_00,
      --  PCLK/4 clock
      Val_01,
      --  PCLK/16 clock
      Val_10,
      --  PCLK/64 clock
      Val_11)
   with Size => 2;
   for SMR_CKS_Field use (Val_00 => 0, Val_01 => 1, Val_10 => 2, Val_11 => 3);

   --  Multi-Processor Mode (Valid only in asynchronous mode)
   type SMR_MP_Field is
     (--  Multi-processor communications function is disabled
     Val_0,
      --  Multi-processor communications function is enabled
      Val_1)
   with Size => 1;
   for SMR_MP_Field use (Val_0 => 0, Val_1 => 1);

   --  Stop Bit Length (Valid only in asynchronous mode)
   type SMR_STOP_Field is
     (--  1 stop bit
     Val_0,
      --  2 stop bits
      Val_1)
   with Size => 1;
   for SMR_STOP_Field use (Val_0 => 0, Val_1 => 1);

   --  Parity Mode (Valid only when the PE bit is 1)
   type SMR_PM_Field is
     (--  Selects even parity
     Val_0,
      --  Selects odd parity
      Val_1)
   with Size => 1;
   for SMR_PM_Field use (Val_0 => 0, Val_1 => 1);

   --  Parity Enable (Valid only in asynchronous mode)
   type SMR_PE_Field is
     (--  Parity bit addition is not performed (transmitting) / Parity bit checking
     --  is not performed ( receiving )
     Val_0,
      --  The parity bit is added (transmitting) / The parity bit is checked
      --  (receiving)
      Val_1)
   with Size => 1;
   for SMR_PE_Field use (Val_0 => 0, Val_1 => 1);

   --  Character Length (Valid only in asynchronous mode)
   type SMR_CHR_Field is
     (--  Transmit/receive in 9-bit data length(SCMR.CHR1=0) / in 8bit data
     --  length(SCMR.CHR1=1)
     Val_0,
      --  Transmit/receive in 9-bit data length(SCMR.CHR1=0) / in 7bit data
      --  length(SCMR.CHR1=1)
      Val_1)
   with Size => 1;
   for SMR_CHR_Field use (Val_0 => 0, Val_1 => 1);

   --  Communication Mode
   type SMR_CM_Field is
     (--  Asynchronous mode or simple I2C mode
     Val_0,
      --  Clock synchronous mode
      Val_1)
   with Size => 1;
   for SMR_CM_Field use (Val_0 => 0, Val_1 => 1);

   --  Serial Mode Register (SCMR.SMIF = 0)
   type SMR_Register is record
      --  Clock Select
      CKS  : SMR_CKS_Field := R7FA4M1AB.SCI9.Val_00;
      --  Multi-Processor Mode (Valid only in asynchronous mode)
      MP   : SMR_MP_Field := R7FA4M1AB.SCI9.Val_0;
      --  Stop Bit Length (Valid only in asynchronous mode)
      STOP : SMR_STOP_Field := R7FA4M1AB.SCI9.Val_0;
      --  Parity Mode (Valid only when the PE bit is 1)
      PM   : SMR_PM_Field := R7FA4M1AB.SCI9.Val_0;
      --  Parity Enable (Valid only in asynchronous mode)
      PE   : SMR_PE_Field := R7FA4M1AB.SCI9.Val_0;
      --  Character Length (Valid only in asynchronous mode)
      CHR  : SMR_CHR_Field := R7FA4M1AB.SCI9.Val_0;
      --  Communication Mode
      CM   : SMR_CM_Field := R7FA4M1AB.SCI9.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for SMR_Register use
     record
       CKS at 0 range 0 .. 1;
       MP at 0 range 2 .. 2;
       STOP at 0 range 3 .. 3;
       PM at 0 range 4 .. 4;
       PE at 0 range 5 .. 5;
       CHR at 0 range 6 .. 6;
       CM at 0 range 7 .. 7;
     end record;

   --  Clock Select
   type SMR_SMCI_CKS_Field is
     (--  PCLK clock
     Val_00,
      --  PCLK/4 clock
      Val_01,
      --  PCLK/16 clock
      Val_10,
      --  PCLK/64 clock
      Val_11)
   with Size => 2;
   for SMR_SMCI_CKS_Field use
     (Val_00 => 0, Val_01 => 1, Val_10 => 2, Val_11 => 3);

   --  Base Clock Pulse (Valid only in asynchronous mode)
   type SMR_SMCI_BCP_Field is
     (--  93 clock cycles(S=93) (SCMR.BCP2=0) / 32 clock cycles(S=32) (SCMR.BCP2=1)
     Val_00,
      --  128 clock cycles(S=128) (SCMR.BCP2=0) / 64 clock cycles(S=64) (SCMR.BCP2=1)
      Val_01,
      --  186 clock cycles(S=186) (SCMR.BCP2=0) / 372 clock cycles(S=372)
      --  (SCMR.BCP2=1)
      Val_10,
      --  512 clock cycles(S=512) (SCMR.BCP2=0) / 256 clock cycles(S=256)
      --  (SCMR.BCP2=1)
      Val_11)
   with Size => 2;
   for SMR_SMCI_BCP_Field use
     (Val_00 => 0, Val_01 => 1, Val_10 => 2, Val_11 => 3);

   --  Parity Mode (Valid only when the PE bit is 1)
   type SMR_SMCI_PM_Field is
     (--  Selects even parity
     Val_0,
      --  Selects odd parity
      Val_1)
   with Size => 1;
   for SMR_SMCI_PM_Field use (Val_0 => 0, Val_1 => 1);

   --  Parity Enable (Valid only in asynchronous mode)
   type SMR_SMCI_PE_Field is
     (--  Setting Prohibited
     Val_0,
      --  Set this bit to 1 in smart card interface mode.
      Val_1)
   with Size => 1;
   for SMR_SMCI_PE_Field use (Val_0 => 0, Val_1 => 1);

   --  Block Transfer Mode
   type SMR_SMCI_BLK_Field is
     (--  Normal mode operation
     Val_0,
      --  Block transfer mode operation
      Val_1)
   with Size => 1;
   for SMR_SMCI_BLK_Field use (Val_0 => 0, Val_1 => 1);

   --  GSM Mode
   type SMR_SMCI_GM_Field is
     (--  Normal mode operation
     Val_0,
      --  GSM mode operation
      Val_1)
   with Size => 1;
   for SMR_SMCI_GM_Field use (Val_0 => 0, Val_1 => 1);

   --  Serial mode register (SCMR.SMIF = 1)
   type SMR_SMCI_Register is record
      --  Clock Select
      CKS : SMR_SMCI_CKS_Field := R7FA4M1AB.SCI9.Val_00;
      --  Base Clock Pulse (Valid only in asynchronous mode)
      BCP : SMR_SMCI_BCP_Field := R7FA4M1AB.SCI9.Val_00;
      --  Parity Mode (Valid only when the PE bit is 1)
      PM  : SMR_SMCI_PM_Field := R7FA4M1AB.SCI9.Val_0;
      --  Parity Enable (Valid only in asynchronous mode)
      PE  : SMR_SMCI_PE_Field := R7FA4M1AB.SCI9.Val_0;
      --  Block Transfer Mode
      BLK : SMR_SMCI_BLK_Field := R7FA4M1AB.SCI9.Val_0;
      --  GSM Mode
      GM  : SMR_SMCI_GM_Field := R7FA4M1AB.SCI9.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for SMR_SMCI_Register use
     record
       CKS at 0 range 0 .. 1;
       BCP at 0 range 2 .. 3;
       PM at 0 range 4 .. 4;
       PE at 0 range 5 .. 5;
       BLK at 0 range 6 .. 6;
       GM at 0 range 7 .. 7;
     end record;

   --  Clock Enable
   type SCR_CKE_Field is
     (--  The SCKn pin is available for use as an I/O port in accord with the I/O
     --  port settings.(Asynchronous mode) / The SCKn pin functions as the clock
     --  output pin(Clock synchronous mode)
     Val_00,
      --  The clock with the same frequency as the bit rate is output from the SCKn
      --  pin.(Asynchronous mode) / The SCKn pin functions as the clock output
      --  pin(Clock synchronous mode)
      Val_01,
      --  The clock with a frequency 16 times the bit rate should be input from the
      --  SCKn pin. (when SEMR.ABCS bit is 0) Input a clock signal with a frequency 8
      --  times the bit rate when the SEMR.ABCS bit is 1.(Asynchronous mode) / The
      --  SCKn pin functions as the clock input pin(Clock synchronous mode)
      others_k)
   with Size => 2;
   for SCR_CKE_Field use (Val_00 => 0, Val_01 => 1, others_k => 3);

   --  Transmit End Interrupt Enable
   type SCR_TEIE_Field is
     (--  SCI_TEI interrupt request is disabled
     Val_0,
      --  SCI_TEI interrupt request is enabled
      Val_1)
   with Size => 1;
   for SCR_TEIE_Field use (Val_0 => 0, Val_1 => 1);

   --  Multi-Processor Interrupt Enable (Valid in asynchronous mode when SMR.MP
   --  = 1)
   type SCR_MPIE_Field is
     (--  Normal reception
     Val_0,
      --  When the data with the multi-processor bit set to 0 is received, the data
      --  is not read, and setting the status flags RDRF,ORER and FER in SSR to 1 is
      --  disabled. When the data with the multiprocessor bit set to 1 is received,
      --  the MPIE bit is automatically cleared to 0, and normal reception is
      --  resumed.
      Val_1)
   with Size => 1;
   for SCR_MPIE_Field use (Val_0 => 0, Val_1 => 1);

   --  Receive Enable
   type SCR_RE_Field is
     (--  Serial reception is disabled
     Val_0,
      --  Serial reception is enabled
      Val_1)
   with Size => 1;
   for SCR_RE_Field use (Val_0 => 0, Val_1 => 1);

   --  Transmit Enable
   type SCR_TE_Field is
     (--  Serial transmission is disabled
     Val_0,
      --  Serial transmission is enabled
      Val_1)
   with Size => 1;
   for SCR_TE_Field use (Val_0 => 0, Val_1 => 1);

   --  Receive Interrupt Enable
   type SCR_RIE_Field is
     (--  SCI_RXI and SCI_ERI interrupt requests are disabled
     Val_0,
      --  SCI_RXI and SCI_ERI interrupt requests are enabled
      Val_1)
   with Size => 1;
   for SCR_RIE_Field use (Val_0 => 0, Val_1 => 1);

   --  Transmit Interrupt Enable
   type SCR_TIE_Field is
     (--  SCI_TXI interrupt request is disabled
     Val_0,
      --  SCI_TXI interrupt request is enabled
      Val_1)
   with Size => 1;
   for SCR_TIE_Field use (Val_0 => 0, Val_1 => 1);

   --  Serial Control Register (SCMR.SMIF = 0)
   type SCR_Register is record
      --  Clock Enable
      CKE  : SCR_CKE_Field := R7FA4M1AB.SCI9.Val_00;
      --  Transmit End Interrupt Enable
      TEIE : SCR_TEIE_Field := R7FA4M1AB.SCI9.Val_0;
      --  Multi-Processor Interrupt Enable (Valid in asynchronous mode when
      --  SMR.MP = 1)
      MPIE : SCR_MPIE_Field := R7FA4M1AB.SCI9.Val_0;
      --  Receive Enable
      RE   : SCR_RE_Field := R7FA4M1AB.SCI9.Val_0;
      --  Transmit Enable
      TE   : SCR_TE_Field := R7FA4M1AB.SCI9.Val_0;
      --  Receive Interrupt Enable
      RIE  : SCR_RIE_Field := R7FA4M1AB.SCI9.Val_0;
      --  Transmit Interrupt Enable
      TIE  : SCR_TIE_Field := R7FA4M1AB.SCI9.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for SCR_Register use
     record
       CKE at 0 range 0 .. 1;
       TEIE at 0 range 2 .. 2;
       MPIE at 0 range 3 .. 3;
       RE at 0 range 4 .. 4;
       TE at 0 range 5 .. 5;
       RIE at 0 range 6 .. 6;
       TIE at 0 range 7 .. 7;
     end record;

   --  Clock Enable
   type SCR_SMCI_CKE_Field is
     (--  Output disabled(SMR_SMCI.GM=0) / Output fixed low(SMR_SMCI.GM=1)
     Val_00,
      --  Clock Output
      Val_01,
      --  Setting prohibited(SMR_SMCI.GM=0) / Output fixed High(SMR_SMCI.GM=1)
      Val_10,
      --  Setting prohibited(SMR_SMCI.GM=0) / Clock Output(SMR_SMCI.GM=1)
      Val_11)
   with Size => 2;
   for SCR_SMCI_CKE_Field use
     (Val_00 => 0, Val_01 => 1, Val_10 => 2, Val_11 => 3);

   subtype SCR_SMCI_TEIE_Field is R7FA4M1AB.Bit;
   subtype SCR_SMCI_MPIE_Field is R7FA4M1AB.Bit;

   --  Receive Enable
   type SCR_SMCI_RE_Field is
     (--  Serial reception is disabled
     Val_0,
      --  Serial reception is enabled
      Val_1)
   with Size => 1;
   for SCR_SMCI_RE_Field use (Val_0 => 0, Val_1 => 1);

   --  Transmit Enable
   type SCR_SMCI_TE_Field is
     (--  Serial transmission is disabled
     Val_0,
      --  Serial transmission is enabled
      Val_1)
   with Size => 1;
   for SCR_SMCI_TE_Field use (Val_0 => 0, Val_1 => 1);

   --  Receive Interrupt Enable
   type SCR_SMCI_RIE_Field is
     (--  SCI_RXI and SCI_ERI interrupt requests are disabled
     Val_0,
      --  SCI_RXI and SCI_ERI interrupt requests are enabled
      Val_1)
   with Size => 1;
   for SCR_SMCI_RIE_Field use (Val_0 => 0, Val_1 => 1);

   --  Transmit Interrupt Enable
   type SCR_SMCI_TIE_Field is
     (--  A SCI_TXI interrupt request is disabled
     Val_0,
      --  A SCI_TXI interrupt request is enabled
      Val_1)
   with Size => 1;
   for SCR_SMCI_TIE_Field use (Val_0 => 0, Val_1 => 1);

   --  Serial Control Register (SCMR.SMIF =1)
   type SCR_SMCI_Register is record
      --  Clock Enable
      CKE  : SCR_SMCI_CKE_Field := R7FA4M1AB.SCI9.Val_00;
      --  Transmit End Interrupt Enable
      TEIE : SCR_SMCI_TEIE_Field := 16#0#;
      --  Multi-Processor Interrupt Enable
      MPIE : SCR_SMCI_MPIE_Field := 16#0#;
      --  Receive Enable
      RE   : SCR_SMCI_RE_Field := R7FA4M1AB.SCI9.Val_0;
      --  Transmit Enable
      TE   : SCR_SMCI_TE_Field := R7FA4M1AB.SCI9.Val_0;
      --  Receive Interrupt Enable
      RIE  : SCR_SMCI_RIE_Field := R7FA4M1AB.SCI9.Val_0;
      --  Transmit Interrupt Enable
      TIE  : SCR_SMCI_TIE_Field := R7FA4M1AB.SCI9.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for SCR_SMCI_Register use
     record
       CKE at 0 range 0 .. 1;
       TEIE at 0 range 2 .. 2;
       MPIE at 0 range 3 .. 3;
       RE at 0 range 4 .. 4;
       TE at 0 range 5 .. 5;
       RIE at 0 range 6 .. 6;
       TIE at 0 range 7 .. 7;
     end record;

   --  Multi-Processor Bit Transfer
   type SSR_MPBT_Field is
     (--  Data transmission cycles
     Val_0,
      --  ID transmission cycles
      Val_1)
   with Size => 1;
   for SSR_MPBT_Field use (Val_0 => 0, Val_1 => 1);

   --  Multi-Processor
   type SSR_MPB_Field is
     (--  Data transmission cycles
     Val_0,
      --  ID transmission cycles
      Val_1)
   with Size => 1;
   for SSR_MPB_Field use (Val_0 => 0, Val_1 => 1);

   --  Transmit End Flag
   type SSR_TEND_Field is
     (--  A character is being transmitted.
     Val_0,
      --  Character transfer has been completed.
      Val_1)
   with Size => 1;
   for SSR_TEND_Field use (Val_0 => 0, Val_1 => 1);

   --  Parity Error Flag
   type SSR_PER_Field is
     (--  No parity error occurred
     Val_0,
      --  A parity error has occurred
      Val_1)
   with Size => 1;
   for SSR_PER_Field use (Val_0 => 0, Val_1 => 1);

   --  Framing Error Flag
   type SSR_FER_Field is
     (--  No framing error occurred
     Val_0,
      --  A framing error has occurred
      Val_1)
   with Size => 1;
   for SSR_FER_Field use (Val_0 => 0, Val_1 => 1);

   --  Overrun Error Flag
   type SSR_ORER_Field is
     (--  No overrun error occurred
     Val_0,
      --  An overrun error has occurred
      Val_1)
   with Size => 1;
   for SSR_ORER_Field use (Val_0 => 0, Val_1 => 1);

   --  Receive Data Full Flag
   type SSR_RDRF_Field is
     (--  No received data is in RDR register
     Val_0,
      --  Received data is in RDR register
      Val_1)
   with Size => 1;
   for SSR_RDRF_Field use (Val_0 => 0, Val_1 => 1);

   --  Transmit Data Empty Flag
   type SSR_TDRE_Field is
     (--  Transmit data is in TDR register
     Val_0,
      --  No transmit data is in TDR register
      Val_1)
   with Size => 1;
   for SSR_TDRE_Field use (Val_0 => 0, Val_1 => 1);

   --  Serial Status Register(SCMR.SMIF = 0 and FCR.FM=0)
   type SSR_Register is record
      --  Multi-Processor Bit Transfer
      MPBT : SSR_MPBT_Field := R7FA4M1AB.SCI9.Val_0;
      --  Read-only. Multi-Processor
      MPB  : SSR_MPB_Field := R7FA4M1AB.SCI9.Val_0;
      --  Read-only. Transmit End Flag
      TEND : SSR_TEND_Field := R7FA4M1AB.SCI9.Val_1;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Parity Error Flag
      PER  : SSR_PER_Field := R7FA4M1AB.SCI9.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Framing Error Flag
      FER  : SSR_FER_Field := R7FA4M1AB.SCI9.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Overrun Error Flag
      ORER : SSR_ORER_Field := R7FA4M1AB.SCI9.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Receive Data Full Flag
      RDRF : SSR_RDRF_Field := R7FA4M1AB.SCI9.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Transmit Data Empty Flag
      TDRE : SSR_TDRE_Field := R7FA4M1AB.SCI9.Val_1;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for SSR_Register use
     record
       MPBT at 0 range 0 .. 0;
       MPB at 0 range 1 .. 1;
       TEND at 0 range 2 .. 2;
       PER at 0 range 3 .. 3;
       FER at 0 range 4 .. 4;
       ORER at 0 range 5 .. 5;
       RDRF at 0 range 6 .. 6;
       TDRE at 0 range 7 .. 7;
     end record;

   subtype SSR_SMCI_MPBT_Field is R7FA4M1AB.Bit;
   subtype SSR_SMCI_MPB_Field is R7FA4M1AB.Bit;

   --  Transmit End Flag
   type SSR_SMCI_TEND_Field is
     (--  A character is being transmitted.
     Val_0,
      --  Character transfer has been completed.
      Val_1)
   with Size => 1;
   for SSR_SMCI_TEND_Field use (Val_0 => 0, Val_1 => 1);

   --  Parity Error Flag
   type SSR_SMCI_PER_Field is
     (--  No parity error occurred
     Val_0,
      --  A parity error has occurred
      Val_1)
   with Size => 1;
   for SSR_SMCI_PER_Field use (Val_0 => 0, Val_1 => 1);

   --  Error Signal Status Flag
   type SSR_SMCI_ERS_Field is
     (--  Low error signal not responded
     Val_0,
      --  Low error signal responded
      Val_1)
   with Size => 1;
   for SSR_SMCI_ERS_Field use (Val_0 => 0, Val_1 => 1);

   --  Overrun Error Flag
   type SSR_SMCI_ORER_Field is
     (--  No overrun error occurred
     Val_0,
      --  An overrun error has occurred
      Val_1)
   with Size => 1;
   for SSR_SMCI_ORER_Field use (Val_0 => 0, Val_1 => 1);

   --  Receive Data Full Flag
   type SSR_SMCI_RDRF_Field is
     (--  No received data is in RDR register
     Val_0,
      --  Received data is in RDR register
      Val_1)
   with Size => 1;
   for SSR_SMCI_RDRF_Field use (Val_0 => 0, Val_1 => 1);

   --  Transmit Data Empty Flag
   type SSR_SMCI_TDRE_Field is
     (--  Transmit data is in TDR register
     Val_0,
      --  No transmit data is in TDR register
      Val_1)
   with Size => 1;
   for SSR_SMCI_TDRE_Field use (Val_0 => 0, Val_1 => 1);

   --  Serial Status Register(SCMR.SMIF = 1)
   type SSR_SMCI_Register is record
      --  Multi-Processor Bit Transfer This bit should be 0 in smart card
      --  interface mode.
      MPBT : SSR_SMCI_MPBT_Field := 16#0#;
      --  Read-only. Multi-Processor This bit should be 0 in smart card
      --  interface mode.
      MPB  : SSR_SMCI_MPB_Field := 16#0#;
      --  Read-only. Transmit End Flag
      TEND : SSR_SMCI_TEND_Field := R7FA4M1AB.SCI9.Val_1;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Parity Error Flag
      PER  : SSR_SMCI_PER_Field := R7FA4M1AB.SCI9.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Error Signal Status Flag
      ERS  : SSR_SMCI_ERS_Field := R7FA4M1AB.SCI9.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Overrun Error Flag
      ORER : SSR_SMCI_ORER_Field := R7FA4M1AB.SCI9.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Receive Data Full Flag
      RDRF : SSR_SMCI_RDRF_Field := R7FA4M1AB.SCI9.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Transmit Data Empty Flag
      TDRE : SSR_SMCI_TDRE_Field := R7FA4M1AB.SCI9.Val_1;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for SSR_SMCI_Register use
     record
       MPBT at 0 range 0 .. 0;
       MPB at 0 range 1 .. 1;
       TEND at 0 range 2 .. 2;
       PER at 0 range 3 .. 3;
       ERS at 0 range 4 .. 4;
       ORER at 0 range 5 .. 5;
       RDRF at 0 range 6 .. 6;
       TDRE at 0 range 7 .. 7;
     end record;

   --  Smart Card Interface Mode Select
   type SCMR_SMIF_Field is
     (--  Non-smart card interface mode(Asynchronous mode, clock synchronous mode,
     --  simple SPI mode, or simple I2C mode)
     Val_0,
      --  Smart card interface mode
      Val_1)
   with Size => 1;
   for SCMR_SMIF_Field use (Val_0 => 0, Val_1 => 1);

   subtype SCMR_Reserved_Field is R7FA4M1AB.Bit;

   --  Transmitted/Received Data Invert Set this bit to 0 if operation is to be
   --  in simple I2C mode.
   type SCMR_SINV_Field is
     (--  TDR contents are transmitted as they are. Receive data is stored as it is
     --  in RDR.
     Val_0,
      --  TDR contents are inverted before being transmitted. Receive data is stored
      --  in inverted form in RDR.
      Val_1)
   with Size => 1;
   for SCMR_SINV_Field use (Val_0 => 0, Val_1 => 1);

   --  Transmitted/Received Data Transfer Direction NOTE: The setting is
   --  invalid and a fixed data length of 8 bits is used in modes other than
   --  asynchronous mode. Set this bit to 1 if operation is to be in simple I2C
   --  mode.
   type SCMR_SDIR_Field is
     (--  Transfer with LSB first
     Val_0,
      --  Transfer with MSB first
      Val_1)
   with Size => 1;
   for SCMR_SDIR_Field use (Val_0 => 0, Val_1 => 1);

   --  Character Length 1 (Only valid in asynchronous mode)
   type SCMR_CHR1_Field is
     (--  Transmit/receive in 9-bit data length
     Val_0,
      --  Transmit/receive in 8-bit data length(SMR.CHR=0) / in 7bit data
      --  length(SMR.CHR=1)
      Val_1)
   with Size => 1;
   for SCMR_CHR1_Field use (Val_0 => 0, Val_1 => 1);

   subtype SCMR_Reserved_Field_1 is R7FA4M1AB.UInt2;

   --  Base Clock Pulse 2 Selects the number of base clock cycles in
   --  combination with the SMR.BCP[1:0] bits
   type SCMR_BCP2_Field is
     (--  S=93(SMR.BCP[1:0]=00), 128(SMR.BCP[1:0]=01), 186(SMR.BCP[1:0]=10),
     --  512(SMR.BCP[1:0]=11)
     Val_0,
      --  S=32(SMR.BCP[1:0]=00), 64(SMR.BCP[1:0]=01), 372(SMR.BCP[1:0]=10),
      --  256(SMR.BCP[1:0]=11)
      Val_1)
   with Size => 1;
   for SCMR_BCP2_Field use (Val_0 => 0, Val_1 => 1);

   --  Smart Card Mode Register
   type SCMR_Register is record
      --  Smart Card Interface Mode Select
      SMIF       : SCMR_SMIF_Field := R7FA4M1AB.SCI9.Val_0;
      --  This bit is read as 1. The write value should be 1.
      Reserved   : SCMR_Reserved_Field := 16#1#;
      --  Transmitted/Received Data Invert Set this bit to 0 if operation is to
      --  be in simple I2C mode.
      SINV       : SCMR_SINV_Field := R7FA4M1AB.SCI9.Val_0;
      --  Transmitted/Received Data Transfer Direction NOTE: The setting is
      --  invalid and a fixed data length of 8 bits is used in modes other than
      --  asynchronous mode. Set this bit to 1 if operation is to be in simple
      --  I2C mode.
      SDIR       : SCMR_SDIR_Field := R7FA4M1AB.SCI9.Val_0;
      --  Character Length 1 (Only valid in asynchronous mode)
      CHR1       : SCMR_CHR1_Field := R7FA4M1AB.SCI9.Val_1;
      --  These bits are read as 11. The write value should be 11.
      Reserved_1 : SCMR_Reserved_Field_1 := 16#3#;
      --  Base Clock Pulse 2 Selects the number of base clock cycles in
      --  combination with the SMR.BCP[1:0] bits
      BCP2       : SCMR_BCP2_Field := R7FA4M1AB.SCI9.Val_1;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for SCMR_Register use
     record
       SMIF at 0 range 0 .. 0;
       Reserved at 0 range 1 .. 1;
       SINV at 0 range 2 .. 2;
       SDIR at 0 range 3 .. 3;
       CHR1 at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 6;
       BCP2 at 0 range 7 .. 7;
     end record;

   subtype SEMR_Reserved_Field is R7FA4M1AB.UInt2;

   --  Bit Rate Modulation Enable
   type SEMR_BRME_Field is
     (--  Bit rate modulation function is disabled.
     Val_0,
      --  Bit rate modulation function is enabled.
      Val_1)
   with Size => 1;
   for SEMR_BRME_Field use (Val_0 => 0, Val_1 => 1);

   --  Asynchronous Mode Extended Base Clock Select 1 (Valid only in
   --  asynchronous mode and SCR.CKE[1]=0)
   type SEMR_ABCSE_Field is
     (--  Clock cycles for 1-bit period is decided with combination between BGDM and
     --  ABCS in SEMR.
     Val_0,
      --  Baud rate is 6 base clock cycles for 1-bit period and the clock of a double
      --  frequency is output from the baud rate generator.
      Val_1)
   with Size => 1;
   for SEMR_ABCSE_Field use (Val_0 => 0, Val_1 => 1);

   --  Asynchronous Mode Base Clock Select (Valid only in asynchronous mode)
   type SEMR_ABCS_Field is
     (--  Selects 16 base clock cycles for 1-bit period.
     Val_0,
      --  Selects 8 base clock cycles for 1-bit period.
      Val_1)
   with Size => 1;
   for SEMR_ABCS_Field use (Val_0 => 0, Val_1 => 1);

   --  Digital Noise Filter Function Enable (The NFEN bit should be 0 without
   --  simple I2C mode and asynchronous mode.) In asynchronous mode, for RXDn
   --  input only. In simple I2C mode, for RXDn/TxDn input.
   type SEMR_NFEN_Field is
     (--  Noise cancellation function for the RXDn/SSCLn and SSDAn input signal is
     --  disabled.
     Val_0,
      --  Noise cancellation function for the RXDn/SSCLn and SSDAn input signal is
      --  enabled.
      Val_1)
   with Size => 1;
   for SEMR_NFEN_Field use (Val_0 => 0, Val_1 => 1);

   --  Baud Rate Generator Double-Speed Mode Select (Only valid the CKE[1] bit
   --  in SCR is 0 in asynchronous mode).
   type SEMR_BGDM_Field is
     (--  Baud rate generator outputs the clock with normal frequency.
     Val_0,
      --  Baud rate generator outputs the clock with doubled frequency.
      Val_1)
   with Size => 1;
   for SEMR_BGDM_Field use (Val_0 => 0, Val_1 => 1);

   --  Asynchronous Start Bit Edge Detection Select (Valid only in asynchronous
   --  mode)
   type SEMR_RXDESEL_Field is
     (--  The low level on the RXDn pin is detected as the start bit.
     Val_0,
      --  A falling edge on the RXDn pin is detected as the start bit.
      Val_1)
   with Size => 1;
   for SEMR_RXDESEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Serial Extended Mode Register
   type SEMR_Register is record
      --  These bits are read as 00. The write value should be 00.
      Reserved : SEMR_Reserved_Field := 16#0#;
      --  Bit Rate Modulation Enable
      BRME     : SEMR_BRME_Field := R7FA4M1AB.SCI9.Val_0;
      --  Asynchronous Mode Extended Base Clock Select 1 (Valid only in
      --  asynchronous mode and SCR.CKE[1]=0)
      ABCSE    : SEMR_ABCSE_Field := R7FA4M1AB.SCI9.Val_0;
      --  Asynchronous Mode Base Clock Select (Valid only in asynchronous mode)
      ABCS     : SEMR_ABCS_Field := R7FA4M1AB.SCI9.Val_0;
      --  Digital Noise Filter Function Enable (The NFEN bit should be 0
      --  without simple I2C mode and asynchronous mode.) In asynchronous mode,
      --  for RXDn input only. In simple I2C mode, for RXDn/TxDn input.
      NFEN     : SEMR_NFEN_Field := R7FA4M1AB.SCI9.Val_0;
      --  Baud Rate Generator Double-Speed Mode Select (Only valid the CKE[1]
      --  bit in SCR is 0 in asynchronous mode).
      BGDM     : SEMR_BGDM_Field := R7FA4M1AB.SCI9.Val_0;
      --  Asynchronous Start Bit Edge Detection Select (Valid only in
      --  asynchronous mode)
      RXDESEL  : SEMR_RXDESEL_Field := R7FA4M1AB.SCI9.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for SEMR_Register use
     record
       Reserved at 0 range 0 .. 1;
       BRME at 0 range 2 .. 2;
       ABCSE at 0 range 3 .. 3;
       ABCS at 0 range 4 .. 4;
       NFEN at 0 range 5 .. 5;
       BGDM at 0 range 6 .. 6;
       RXDESEL at 0 range 7 .. 7;
     end record;

   --  Noise Filter Clock Select
   type SNFR_NFCS_Field is
     (--  The clock signal divided by 1 is used with the noise filter.(In
     --  asynchronous mode)
     Val_000,
      --  The clock signal divided by 1 is used with the noise filter.(In simple I2C
      --  mode)
      Val_001,
      --  The clock signal divided by 2 is used with the noise filter.(In simple I2C
      --  mode)
      Val_010,
      --  The clock signal divided by 4 is used with the noise filter.(In simple I2C
      --  mode)
      Val_011,
      --  The clock signal divided by 8 is used with the noise filter.(In simple I2C
      --  mode)
      Val_100,
      --  Settings prohibited.
      others_k)
   with Size => 3;
   for SNFR_NFCS_Field use
     (Val_000  => 0,
      Val_001  => 1,
      Val_010  => 2,
      Val_011  => 3,
      Val_100  => 4,
      others_k => 7);

   subtype SNFR_Reserved_Field is R7FA4M1AB.UInt5;

   --  Noise Filter Setting Register
   type SNFR_Register is record
      --  Noise Filter Clock Select
      NFCS     : SNFR_NFCS_Field := R7FA4M1AB.SCI9.Val_000;
      --  These bits are read as 00000. The write value should be 00000.
      Reserved : SNFR_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for SNFR_Register use
     record
       NFCS at 0 range 0 .. 2;
       Reserved at 0 range 3 .. 7;
     end record;

   --  Simple I2C Mode Select
   type SIMR1_IICM_Field is
     (--  Asynchronous mode, Multi-processor mode, Clock synchronous
     --  mode(SCMR.SMIF=0) /Smart card interface mode(SCMR.SMIF=1)
     Val_0,
      --  Simple I2C mode(SCMR.SMIF=0) / Setting prohibited.(SCMR.SMIF=1)
      Val_1)
   with Size => 1;
   for SIMR1_IICM_Field use (Val_0 => 0, Val_1 => 1);

   subtype SIMR1_Reserved_Field is R7FA4M1AB.UInt2;

   --  SDA Delay Output Select Cycles below are of the clock signal from the
   --  on-chip baud rate generator.
   type SIMR1_IICDL_Field is
     (--  No output delay
     Val_00000,
      --  (IICDL - 1 ) to IIDCDL cycles. The delay is in the clock cycles from the
      --  on-chip baud rate generator.
      others_k)
   with Size => 5;
   for SIMR1_IICDL_Field use (Val_00000 => 0, others_k => 31);

   --  I2C Mode Register 1
   type SIMR1_Register is record
      --  Simple I2C Mode Select
      IICM     : SIMR1_IICM_Field := R7FA4M1AB.SCI9.Val_0;
      --  These bits are read as 00. The write value should be 00.
      Reserved : SIMR1_Reserved_Field := 16#0#;
      --  SDA Delay Output Select Cycles below are of the clock signal from the
      --  on-chip baud rate generator.
      IICDL    : SIMR1_IICDL_Field := R7FA4M1AB.SCI9.Val_00000;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for SIMR1_Register use
     record
       IICM at 0 range 0 .. 0;
       Reserved at 0 range 1 .. 2;
       IICDL at 0 range 3 .. 7;
     end record;

   --  I2C Interrupt Mode Select
   type SIMR2_IICINTM_Field is
     (--  Use ACK/NACK interrupts.
     Val_0,
      --  Use reception and transmission interrupts
      Val_1)
   with Size => 1;
   for SIMR2_IICINTM_Field use (Val_0 => 0, Val_1 => 1);

   --  Clock Synchronization
   type SIMR2_IICCSC_Field is
     (--  No synchronization with the clock signal
     Val_0,
      --  Synchronization with the clock signal
      Val_1)
   with Size => 1;
   for SIMR2_IICCSC_Field use (Val_0 => 0, Val_1 => 1);

   subtype SIMR2_Reserved_Field is R7FA4M1AB.UInt3;

   --  ACK Transmission Data
   type SIMR2_IICACKT_Field is
     (--  ACK transmission
     Val_0,
      --  NACK transmission and reception of ACK/NACK
      Val_1)
   with Size => 1;
   for SIMR2_IICACKT_Field use (Val_0 => 0, Val_1 => 1);

   subtype SIMR2_Reserved_Field_1 is R7FA4M1AB.UInt2;

   --  I2C Mode Register 2
   type SIMR2_Register is record
      --  I2C Interrupt Mode Select
      IICINTM    : SIMR2_IICINTM_Field := R7FA4M1AB.SCI9.Val_0;
      --  Clock Synchronization
      IICCSC     : SIMR2_IICCSC_Field := R7FA4M1AB.SCI9.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved   : SIMR2_Reserved_Field := 16#0#;
      --  ACK Transmission Data
      IICACKT    : SIMR2_IICACKT_Field := R7FA4M1AB.SCI9.Val_0;
      --  These bits are read as 00. The write value should be 00.
      Reserved_1 : SIMR2_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for SIMR2_Register use
     record
       IICINTM at 0 range 0 .. 0;
       IICCSC at 0 range 1 .. 1;
       Reserved at 0 range 2 .. 4;
       IICACKT at 0 range 5 .. 5;
       Reserved_1 at 0 range 6 .. 7;
     end record;

   --  Start Condition Generation
   type SIMR3_IICSTAREQ_Field is
     (--  A start condition is not generated.
     Val_0,
      --  A start condition is generated.
      Val_1)
   with Size => 1;
   for SIMR3_IICSTAREQ_Field use (Val_0 => 0, Val_1 => 1);

   --  Restart Condition Generation
   type SIMR3_IICRSTAREQ_Field is
     (--  A restart condition is not generated.
     Val_0,
      --  A restart condition is generated.
      Val_1)
   with Size => 1;
   for SIMR3_IICRSTAREQ_Field use (Val_0 => 0, Val_1 => 1);

   --  Stop Condition Generation
   type SIMR3_IICSTPREQ_Field is
     (--  A stop condition is not generated.
     Val_0,
      --  A stop condition is generated.
      Val_1)
   with Size => 1;
   for SIMR3_IICSTPREQ_Field use (Val_0 => 0, Val_1 => 1);

   --  Issuing of Start, Restart, or Stop Condition Completed Flag (When 0 is
   --  written to IICSTIF, it is cleared to 0.)
   type SIMR3_IICSTIF_Field is
     (--  There are no requests for generating conditions or a condition is being
     --  generated.
     Val_0,
      --  A start, restart, or stop condition is completely generated.
      Val_1)
   with Size => 1;
   for SIMR3_IICSTIF_Field use (Val_0 => 0, Val_1 => 1);

   --  SDA Output Select
   type SIMR3_IICSDAS_Field is
     (--  Serial data output
     Val_00,
      --  Generate a start, restart, or stop condition.
      Val_01,
      --  Output the low level on the SSDAn pin.
      Val_10,
      --  Place the SSDAn pin in the high-impedance state.
      Val_11)
   with Size => 2;
   for SIMR3_IICSDAS_Field use
     (Val_00 => 0, Val_01 => 1, Val_10 => 2, Val_11 => 3);

   --  SCL Output Select
   type SIMR3_IICSCLS_Field is
     (--  Serial clock output
     Val_00,
      --  Generate a start, restart, or stop condition.
      Val_01,
      --  Output the low level on the SSCLn pin.
      Val_10,
      --  Place the SSCLn pin in the high-impedance state.
      Val_11)
   with Size => 2;
   for SIMR3_IICSCLS_Field use
     (Val_00 => 0, Val_01 => 1, Val_10 => 2, Val_11 => 3);

   --  I2C Mode Register 3
   type SIMR3_Register is record
      --  Start Condition Generation
      IICSTAREQ  : SIMR3_IICSTAREQ_Field := R7FA4M1AB.SCI9.Val_0;
      --  Restart Condition Generation
      IICRSTAREQ : SIMR3_IICRSTAREQ_Field := R7FA4M1AB.SCI9.Val_0;
      --  Stop Condition Generation
      IICSTPREQ  : SIMR3_IICSTPREQ_Field := R7FA4M1AB.SCI9.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Issuing of Start, Restart, or Stop Condition Completed
      --  Flag (When 0 is written to IICSTIF, it is cleared to 0.)
      IICSTIF    : SIMR3_IICSTIF_Field := R7FA4M1AB.SCI9.Val_0;
      --  SDA Output Select
      IICSDAS    : SIMR3_IICSDAS_Field := R7FA4M1AB.SCI9.Val_00;
      --  SCL Output Select
      IICSCLS    : SIMR3_IICSCLS_Field := R7FA4M1AB.SCI9.Val_00;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for SIMR3_Register use
     record
       IICSTAREQ at 0 range 0 .. 0;
       IICRSTAREQ at 0 range 1 .. 1;
       IICSTPREQ at 0 range 2 .. 2;
       IICSTIF at 0 range 3 .. 3;
       IICSDAS at 0 range 4 .. 5;
       IICSCLS at 0 range 6 .. 7;
     end record;

   --  ACK Reception Data Flag
   type SISR_IICACKR_Field is
     (--  ACK received
     Val_0,
      --  NACK received
      Val_1)
   with Size => 1;
   for SISR_IICACKR_Field use (Val_0 => 0, Val_1 => 1);

   --  SISR_Reserved array element
   subtype SISR_Reserved_Element is R7FA4M1AB.Bit;

   --  SISR_Reserved array
   type SISR_Reserved_Field_Array is array (1 .. 5) of SISR_Reserved_Element
   with Component_Size => 1, Size => 5;

   --  Type definition for SISR_Reserved
   type SISR_Reserved_Field (As_Array : Boolean := False) is record
      case As_Array is
         when False =>
            --  Reserved as a value
            Val : R7FA4M1AB.UInt5;

         when True =>
            --  Reserved as an array
            Arr : SISR_Reserved_Field_Array;
      end case;
   end record
   with Unchecked_Union, Size => 5;

   for SISR_Reserved_Field use
     record
       Val at 0 range 0 .. 4;
       Arr at 0 range 0 .. 4;
     end record;

   subtype SISR_Reserved_Field_1 is R7FA4M1AB.UInt2;

   --  I2C Status Register
   type SISR_Register is record
      --  Read-only. ACK Reception Data Flag
      IICACKR    : SISR_IICACKR_Field;
      --  Read-only. This bit is read as 0.
      Reserved   : SISR_Reserved_Field;
      --  Read-only. These bits are read as 00.
      Reserved_1 : SISR_Reserved_Field_1;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for SISR_Register use
     record
       IICACKR at 0 range 0 .. 0;
       Reserved at 0 range 1 .. 5;
       Reserved_1 at 0 range 6 .. 7;
     end record;

   --  SSn Pin Function Enable
   type SPMR_SSE_Field is
     (--  SSn pin function is disabled.
     Val_0,
      --  SSn pin function is enabled.
      Val_1)
   with Size => 1;
   for SPMR_SSE_Field use (Val_0 => 0, Val_1 => 1);

   --  CTS Enable
   type SPMR_CTSE_Field is
     (--  CTS function is disabled (RTS output function is enabled).
     Val_0,
      --  CTS function is enabled.
      Val_1)
   with Size => 1;
   for SPMR_CTSE_Field use (Val_0 => 0, Val_1 => 1);

   --  Master Slave Select
   type SPMR_MSS_Field is
     (--  Transmission is through the TXDn pin and reception is through the RXDn pin
     --  (master mode).
     Val_0,
      --  Reception is through the TXDn pin and transmission is through the RXDn pin
      --  (slave mode).
      Val_1)
   with Size => 1;
   for SPMR_MSS_Field use (Val_0 => 0, Val_1 => 1);

   subtype SPMR_Reserved_Field is R7FA4M1AB.Bit;

   --  Mode Fault Flag
   type SPMR_MFF_Field is
     (--  No mode fault error
     Val_0,
      --  Mode fault error
      Val_1)
   with Size => 1;
   for SPMR_MFF_Field use (Val_0 => 0, Val_1 => 1);

   --  Clock Polarity Select
   type SPMR_CKPOL_Field is
     (--  Clock polarity is not inverted.
     Val_0,
      --  Clock polarity is inverted
      Val_1)
   with Size => 1;
   for SPMR_CKPOL_Field use (Val_0 => 0, Val_1 => 1);

   --  Clock Phase Select
   type SPMR_CKPH_Field is
     (--  Clock is not delayed.
     Val_0,
      --  Clock is delayed.
      Val_1)
   with Size => 1;
   for SPMR_CKPH_Field use (Val_0 => 0, Val_1 => 1);

   --  SPI Mode Register
   type SPMR_Register is record
      --  SSn Pin Function Enable
      SSE        : SPMR_SSE_Field := R7FA4M1AB.SCI9.Val_0;
      --  CTS Enable
      CTSE       : SPMR_CTSE_Field := R7FA4M1AB.SCI9.Val_0;
      --  Master Slave Select
      MSS        : SPMR_MSS_Field := R7FA4M1AB.SCI9.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : SPMR_Reserved_Field := 16#0#;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Mode Fault Flag
      MFF        : SPMR_MFF_Field := R7FA4M1AB.SCI9.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : SPMR_Reserved_Field := 16#0#;
      --  Clock Polarity Select
      CKPOL      : SPMR_CKPOL_Field := R7FA4M1AB.SCI9.Val_0;
      --  Clock Phase Select
      CKPH       : SPMR_CKPH_Field := R7FA4M1AB.SCI9.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for SPMR_Register use
     record
       SSE at 0 range 0 .. 0;
       CTSE at 0 range 1 .. 1;
       MSS at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       MFF at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       CKPOL at 0 range 6 .. 6;
       CKPH at 0 range 7 .. 7;
     end record;

   --  Data Compare Match Flag
   type DCCR_DCMF_Field is
     (--  No matched
     Val_0,
      --  Matched
      Val_1)
   with Size => 1;
   for DCCR_DCMF_Field use (Val_0 => 0, Val_1 => 1);

   subtype DCCR_Reserved_Field is R7FA4M1AB.UInt2;

   --  Data Compare Match Parity Error Flag
   type DCCR_DPER_Field is
     (--  No parity error occurred
     Val_0,
      --  A parity error has occurred
      Val_1)
   with Size => 1;
   for DCCR_DPER_Field use (Val_0 => 0, Val_1 => 1);

   --  Data Compare Match Framing Error Flag
   type DCCR_DFER_Field is
     (--  No framing error occurred
     Val_0,
      --  A framing error has occurred
      Val_1)
   with Size => 1;
   for DCCR_DFER_Field use (Val_0 => 0, Val_1 => 1);

   subtype DCCR_Reserved_Field_1 is R7FA4M1AB.Bit;

   --  ID frame select (Valid only in asynchronous mode(including
   --  multi-processor)
   type DCCR_IDSEL_Field is
     (--  Always compare data regardless of the value of the MPB bit.
     Val_0,
      --  Compare data when the MPB bit is 1 (ID frame) only.
      Val_1)
   with Size => 1;
   for DCCR_IDSEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Data Compare Match Enable (Valid only in asynchronous mode(including
   --  multi-processor)
   type DCCR_DCME_Field is
     (--  Address match function is disabled.
     Val_0,
      --  Address match function is enabled
      Val_1)
   with Size => 1;
   for DCCR_DCME_Field use (Val_0 => 0, Val_1 => 1);

   --  Data Compare Match Control Register
   type DCCR_Register is record
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Data Compare Match Flag
      DCMF       : DCCR_DCMF_Field := R7FA4M1AB.SCI9.Val_0;
      --  These bits are read as 00. The write value should be 00.
      Reserved   : DCCR_Reserved_Field := 16#0#;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Data Compare Match Parity Error Flag
      DPER       : DCCR_DPER_Field := R7FA4M1AB.SCI9.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Data Compare Match Framing Error Flag
      DFER       : DCCR_DFER_Field := R7FA4M1AB.SCI9.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : DCCR_Reserved_Field_1 := 16#0#;
      --  ID frame select (Valid only in asynchronous mode(including
      --  multi-processor)
      IDSEL      : DCCR_IDSEL_Field := R7FA4M1AB.SCI9.Val_1;
      --  Data Compare Match Enable (Valid only in asynchronous mode(including
      --  multi-processor)
      DCME       : DCCR_DCME_Field := R7FA4M1AB.SCI9.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for DCCR_Register use
     record
       DCMF at 0 range 0 .. 0;
       Reserved at 0 range 1 .. 2;
       DPER at 0 range 3 .. 3;
       DFER at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       IDSEL at 0 range 6 .. 6;
       DCME at 0 range 7 .. 7;
     end record;

   subtype CDR_CMPD_Field is R7FA4M1AB.UInt9;
   subtype CDR_Reserved_Field is R7FA4M1AB.UInt7;

   --  Compare Match Data Register
   type CDR_Register is record
      --  Compare Match Data Compare data pattern for address match wake-up
      --  function
      CMPD     : CDR_CMPD_Field := 16#0#;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved : CDR_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for CDR_Register use
     record
       CMPD at 0 range 0 .. 8;
       Reserved at 0 range 9 .. 15;
     end record;

   --  Serial input data monitor bit (The state of the RXD terminal is shown.)
   type SPTR_RXDMON_Field is
     (--  RXD pin is low.
     Val_0,
      --  RXD pin is high.
      Val_1)
   with Size => 1;
   for SPTR_RXDMON_Field use (Val_0 => 0, Val_1 => 1);

   --  Serial port break data select bit (The output level of TxD terminal is
   --  selected when SCR.TE = 0.)
   type SPTR_SPB2DT_Field is
     (--  Low level is output on TXD pin
     Val_0,
      --  High level is output on TXD pin
      Val_1)
   with Size => 1;
   for SPTR_SPB2DT_Field use (Val_0 => 0, Val_1 => 1);

   --  Serial port break I/O bit (It's selected whether the value of SPB2DT is
   --  output to TxD terminal.)
   type SPTR_SPB2IO_Field is
     (--  The value of SPB2DT bit is not output in TXD pin.
     Val_0,
      --  The value of SPB2DT bit is output in TXD pin.
      Val_1)
   with Size => 1;
   for SPTR_SPB2IO_Field use (Val_0 => 0, Val_1 => 1);

   subtype SPTR_Reserved_Field is R7FA4M1AB.UInt5;

   --  Serial Port Register
   type SPTR_Register is record
      --  Read-only. Serial input data monitor bit (The state of the RXD
      --  terminal is shown.)
      RXDMON   : SPTR_RXDMON_Field := R7FA4M1AB.SCI9.Val_1;
      --  Serial port break data select bit (The output level of TxD terminal
      --  is selected when SCR.TE = 0.)
      SPB2DT   : SPTR_SPB2DT_Field := R7FA4M1AB.SCI9.Val_1;
      --  Serial port break I/O bit (It's selected whether the value of SPB2DT
      --  is output to TxD terminal.)
      SPB2IO   : SPTR_SPB2IO_Field := R7FA4M1AB.SCI9.Val_0;
      --  These bits are read as 00000. The write value should be 00000.
      Reserved : SPTR_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for SPTR_Register use
     record
       RXDMON at 0 range 0 .. 0;
       SPB2DT at 0 range 1 .. 1;
       SPB2IO at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 7;
     end record;

   -----------------
   -- Peripherals --
   -----------------

   type SCI9_Disc is
     (View_BRR,
      View_TDR,
      View_RDR,
      View_SCMR,
      View_SEMR,
      View_SNFR,
      View_SIMR1,
      View_SIMR2,
      View_SIMR3,
      View_SISR,
      View_SPMR,
      View_TDRHL,
      View_RDRHL,
      View_MDDR,
      View_DCCR,
      View_CDR,
      View_SPTR,
      View_SMR,
      View_SCR,
      View_SSR,
      View_SMR_SMCI,
      View_SCR_SMCI,
      View_SSR_SMCI);

   --  Serial Communication Interface 9
   type SCI9_Peripheral (Discriminent : SCI9_Disc := View_BRR) is record
      case Discriminent is
         when View_BRR =>
            --  Bit Rate Register
            BRR : aliased R7FA4M1AB.Byte;

         when View_TDR =>
            --  Transmit Data Register
            TDR : aliased R7FA4M1AB.Byte;

         when View_RDR =>
            --  Receive Data Register
            RDR : aliased R7FA4M1AB.Byte;

         when View_SCMR =>
            --  Smart Card Mode Register
            SCMR : aliased SCMR_Register;

         when View_SEMR =>
            --  Serial Extended Mode Register
            SEMR : aliased SEMR_Register;

         when View_SNFR =>
            --  Noise Filter Setting Register
            SNFR : aliased SNFR_Register;

         when View_SIMR1 =>
            --  I2C Mode Register 1
            SIMR1 : aliased SIMR1_Register;

         when View_SIMR2 =>
            --  I2C Mode Register 2
            SIMR2 : aliased SIMR2_Register;

         when View_SIMR3 =>
            --  I2C Mode Register 3
            SIMR3 : aliased SIMR3_Register;

         when View_SISR =>
            --  I2C Status Register
            SISR : aliased SISR_Register;

         when View_SPMR =>
            --  SPI Mode Register
            SPMR : aliased SPMR_Register;

         when View_TDRHL =>
            --  Transmit 9-bit Data Register
            TDRHL : aliased R7FA4M1AB.UInt16;

         when View_RDRHL =>
            --  Receive 9-bit Data Register
            RDRHL : aliased R7FA4M1AB.UInt16;

         when View_MDDR =>
            --  Modulation Duty Register
            MDDR : aliased R7FA4M1AB.Byte;

         when View_DCCR =>
            --  Data Compare Match Control Register
            DCCR : aliased DCCR_Register;

         when View_CDR =>
            --  Compare Match Data Register
            CDR : aliased CDR_Register;

         when View_SPTR =>
            --  Serial Port Register
            SPTR : aliased SPTR_Register;

         when View_SMR =>
            --  Serial Mode Register (SCMR.SMIF = 0)
            SMR : aliased SMR_Register;

         when View_SCR =>
            --  Serial Control Register (SCMR.SMIF = 0)
            SCR : aliased SCR_Register;

         when View_SSR =>
            --  Serial Status Register(SCMR.SMIF = 0 and FCR.FM=0)
            SSR : aliased SSR_Register;

         when View_SMR_SMCI =>
            --  Serial mode register (SCMR.SMIF = 1)
            SMR_SMCI : aliased SMR_SMCI_Register;

         when View_SCR_SMCI =>
            --  Serial Control Register (SCMR.SMIF =1)
            SCR_SMCI : aliased SCR_SMCI_Register;

         when View_SSR_SMCI =>
            --  Serial Status Register(SCMR.SMIF = 1)
            SSR_SMCI : aliased SSR_SMCI_Register;
      end case;
   end record
   with Unchecked_Union, Volatile;

   for SCI9_Peripheral use
     record
       BRR at 16#1# range 0 .. 7;
       TDR at 16#3# range 0 .. 7;
       RDR at 16#5# range 0 .. 7;
       SCMR at 16#6# range 0 .. 7;
       SEMR at 16#7# range 0 .. 7;
       SNFR at 16#8# range 0 .. 7;
       SIMR1 at 16#9# range 0 .. 7;
       SIMR2 at 16#A# range 0 .. 7;
       SIMR3 at 16#B# range 0 .. 7;
       SISR at 16#C# range 0 .. 7;
       SPMR at 16#D# range 0 .. 7;
       TDRHL at 16#E# range 0 .. 15;
       RDRHL at 16#10# range 0 .. 15;
       MDDR at 16#12# range 0 .. 7;
       DCCR at 16#13# range 0 .. 7;
       CDR at 16#1A# range 0 .. 15;
       SPTR at 16#1C# range 0 .. 7;
       SMR at 16#0# range 0 .. 7;
       SCR at 16#2# range 0 .. 7;
       SSR at 16#4# range 0 .. 7;
       SMR_SMCI at 16#0# range 0 .. 7;
       SCR_SMCI at 16#2# range 0 .. 7;
       SSR_SMCI at 16#4# range 0 .. 7;
     end record;

   --  Serial Communication Interface 9
   SCI9_Periph : aliased SCI9_Peripheral
   with Import, Address => SCI9_Base;

end R7FA4M1AB.SCI9;
