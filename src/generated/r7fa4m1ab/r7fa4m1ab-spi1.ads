-- 
-- Copyright (C) 2026 Marcus Gigandet
--
-- SPDX-License-Identifier: LGPL-3.0-or-later
-- 

pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB-ada.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  Serial Peripheral Interface 1
package R7FA4M1AB.SPI1 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  SPI Mode Select
   type SPCR_SPMS_Field is
     (--  SPI operation (4-wire method)
      Val_0,
      --  Clock synchronous operation (3-wire method)
      Val_1)
     with Size => 1;
   for SPCR_SPMS_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Communications Operating Mode Select
   type SPCR_TXMD_Field is
     (--  Full-duplex synchronous serial communications
      Val_0,
      --  Serial communications consisting of only transmit operations
      Val_1)
     with Size => 1;
   for SPCR_TXMD_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Mode Fault Error Detection Enable
   type SPCR_MODFEN_Field is
     (--  Disables the detection of mode fault error
      Val_0,
      --  Enables the detection of mode fault error
      Val_1)
     with Size => 1;
   for SPCR_MODFEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  SPI Master/Slave Mode Select
   type SPCR_MSTR_Field is
     (--  Slave mode
      Val_0,
      --  Master mode
      Val_1)
     with Size => 1;
   for SPCR_MSTR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  SPI Error Interrupt Enable
   type SPCR_SPEIE_Field is
     (--  Disables the generation of SPI error interrupt requests
      Val_0,
      --  Enables the generation of SPI error interrupt requests
      Val_1)
     with Size => 1;
   for SPCR_SPEIE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Transmit Buffer Empty Interrupt Enable
   type SPCR_SPTIE_Field is
     (--  Disables the generation of transmit buffer empty interrupt requests
      Val_0,
      --  Enables the generation of transmit buffer empty interrupt requests
      Val_1)
     with Size => 1;
   for SPCR_SPTIE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  SPI Function Enable
   type SPCR_SPE_Field is
     (--  Disables the SPI function
      Val_0,
      --  Enables the SPI function
      Val_1)
     with Size => 1;
   for SPCR_SPE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  SPI Receive Buffer Full Interrupt Enable
   type SPCR_SPRIE_Field is
     (--  Disables the generation of SPI receive buffer full interrupt requests
      Val_0,
      --  Enables the generation of SPI receive buffer full interrupt requests
      Val_1)
     with Size => 1;
   for SPCR_SPRIE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  SPI Control Register
   type SPCR_Register is record
      --  SPI Mode Select
      SPMS   : SPCR_SPMS_Field := R7FA4M1AB.SPI1.Val_0;
      --  Communications Operating Mode Select
      TXMD   : SPCR_TXMD_Field := R7FA4M1AB.SPI1.Val_0;
      --  Mode Fault Error Detection Enable
      MODFEN : SPCR_MODFEN_Field := R7FA4M1AB.SPI1.Val_0;
      --  SPI Master/Slave Mode Select
      MSTR   : SPCR_MSTR_Field := R7FA4M1AB.SPI1.Val_0;
      --  SPI Error Interrupt Enable
      SPEIE  : SPCR_SPEIE_Field := R7FA4M1AB.SPI1.Val_0;
      --  Transmit Buffer Empty Interrupt Enable
      SPTIE  : SPCR_SPTIE_Field := R7FA4M1AB.SPI1.Val_0;
      --  SPI Function Enable
      SPE    : SPCR_SPE_Field := R7FA4M1AB.SPI1.Val_0;
      --  SPI Receive Buffer Full Interrupt Enable
      SPRIE  : SPCR_SPRIE_Field := R7FA4M1AB.SPI1.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for SPCR_Register use record
      SPMS   at 0 range 0 .. 0;
      TXMD   at 0 range 1 .. 1;
      MODFEN at 0 range 2 .. 2;
      MSTR   at 0 range 3 .. 3;
      SPEIE  at 0 range 4 .. 4;
      SPTIE  at 0 range 5 .. 5;
      SPE    at 0 range 6 .. 6;
      SPRIE  at 0 range 7 .. 7;
   end record;

   --  SSL0 Signal Polarity Setting
   type SSLP_SSL0P_Field is
     (--  SSL0 signal is active low
      Val_0,
      --  SSL0 signal is active high
      Val_1)
     with Size => 1;
   for SSLP_SSL0P_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  SSL1 Signal Polarity Setting
   type SSLP_SSL1P_Field is
     (--  SSL1 signal is active low
      Val_0,
      --  SSL1 signal is active high
      Val_1)
     with Size => 1;
   for SSLP_SSL1P_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  SSL2 Signal Polarity Setting
   type SSLP_SSL2P_Field is
     (--  SSL2 signal is active low
      Val_0,
      --  SSL2 signal is active high
      Val_1)
     with Size => 1;
   for SSLP_SSL2P_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  SSL3 Signal Polarity Setting
   type SSLP_SSL3P_Field is
     (--  SSL3 signal is active low
      Val_0,
      --  SSL3 signal is active high
      Val_1)
     with Size => 1;
   for SSLP_SSL3P_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype SSLP_Reserved_Field is R7FA4M1AB.UInt4;

   --  SPI Slave Select Polarity Register
   type SSLP_Register is record
      --  SSL0 Signal Polarity Setting
      SSL0P    : SSLP_SSL0P_Field := R7FA4M1AB.SPI1.Val_0;
      --  SSL1 Signal Polarity Setting
      SSL1P    : SSLP_SSL1P_Field := R7FA4M1AB.SPI1.Val_0;
      --  SSL2 Signal Polarity Setting
      SSL2P    : SSLP_SSL2P_Field := R7FA4M1AB.SPI1.Val_0;
      --  SSL3 Signal Polarity Setting
      SSL3P    : SSLP_SSL3P_Field := R7FA4M1AB.SPI1.Val_0;
      --  These bits are read as 0000. The write value should be 0000.
      Reserved : SSLP_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for SSLP_Register use record
      SSL0P    at 0 range 0 .. 0;
      SSL1P    at 0 range 1 .. 1;
      SSL2P    at 0 range 2 .. 2;
      SSL3P    at 0 range 3 .. 3;
      Reserved at 0 range 4 .. 7;
   end record;

   --  RSPI Loopback
   type SPPCR_SPLP_Field is
     (--  Normal mode
      Val_0,
      --  Loopback mode (data is inverted for transmission)
      Val_1)
     with Size => 1;
   for SPPCR_SPLP_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  RSPI Loopback 2
   type SPPCR_SPLP2_Field is
     (--  Normal mode
      Val_0,
      --  Loopback mode (data is not inverted for transmission)
      Val_1)
     with Size => 1;
   for SPPCR_SPLP2_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype SPPCR_Reserved_Field is R7FA4M1AB.UInt2;

   --  MOSI Idle Fixed Value
   type SPPCR_MOIFV_Field is
     (--  The level output on the MOSIn pin during MOSI idling corresponds to low.
      Val_0,
      --  The level output on the MOSIn pin during MOSI idling corresponds to high.
      Val_1)
     with Size => 1;
   for SPPCR_MOIFV_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  MOSI Idle Value Fixing Enable
   type SPPCR_MOIFE_Field is
     (--  MOSI output value equals final data from previous transfer
      Val_0,
      --  MOSI output value equals the value set in the MOIFV bit
      Val_1)
     with Size => 1;
   for SPPCR_MOIFE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  SPI Pin Control Register
   type SPPCR_Register is record
      --  RSPI Loopback
      SPLP       : SPPCR_SPLP_Field := R7FA4M1AB.SPI1.Val_0;
      --  RSPI Loopback 2
      SPLP2      : SPPCR_SPLP2_Field := R7FA4M1AB.SPI1.Val_0;
      --  These bits are read as 00. The write value should be 00.
      Reserved   : SPPCR_Reserved_Field := 16#0#;
      --  MOSI Idle Fixed Value
      MOIFV      : SPPCR_MOIFV_Field := R7FA4M1AB.SPI1.Val_0;
      --  MOSI Idle Value Fixing Enable
      MOIFE      : SPPCR_MOIFE_Field := R7FA4M1AB.SPI1.Val_0;
      --  These bits are read as 00. The write value should be 00.
      Reserved_1 : SPPCR_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for SPPCR_Register use record
      SPLP       at 0 range 0 .. 0;
      SPLP2      at 0 range 1 .. 1;
      Reserved   at 0 range 2 .. 3;
      MOIFV      at 0 range 4 .. 4;
      MOIFE      at 0 range 5 .. 5;
      Reserved_1 at 0 range 6 .. 7;
   end record;

   --  Overrun Error Flag
   type SPSR_OVRF_Field is
     (--  No overrun error occurs
      Val_0,
      --  An overrun error occurs
      Val_1)
     with Size => 1;
   for SPSR_OVRF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  SPI Idle Flag
   type SPSR_IDLNF_Field is
     (--  SPI is in the idle state
      Val_0,
      --  SPI is in the transfer state
      Val_1)
     with Size => 1;
   for SPSR_IDLNF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Mode Fault Error Flag
   type SPSR_MODF_Field is
     (--  Neither mode fault error nor underrun error occurs
      Val_0,
      --  A mode fault error or an underrun error occurs.
      Val_1)
     with Size => 1;
   for SPSR_MODF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Parity Error Flag
   type SPSR_PERF_Field is
     (--  No parity error occurs
      Val_0,
      --  A parity error occurs
      Val_1)
     with Size => 1;
   for SPSR_PERF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Underrun Error Flag (When MODF is 0, This bit is invalid.)
   type SPSR_UDRF_Field is
     (--  A mode fault error occurs (MODF=1)
      Val_0,
      --  An underrun error occurs (MODF=1)
      Val_1)
     with Size => 1;
   for SPSR_UDRF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  SPI Transmit Buffer Empty Flag
   type SPSR_SPTEF_Field is
     (--  Data found in the transmit buffer
      Val_0,
      --  No data in the transmit buffer
      Val_1)
     with Size => 1;
   for SPSR_SPTEF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  SPI Receive Buffer Full Flag
   type SPSR_SPRF_Field is
     (--  No valid data in SPDR
      Val_0,
      --  Valid data found in SPDR
      Val_1)
     with Size => 1;
   for SPSR_SPRF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  SPI Status Register
   type SPSR_Register is record
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Overrun Error Flag
      OVRF     : SPSR_OVRF_Field := R7FA4M1AB.SPI1.Val_0;
      --  Read-only. SPI Idle Flag
      IDLNF    : SPSR_IDLNF_Field := R7FA4M1AB.SPI1.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Mode Fault Error Flag
      MODF     : SPSR_MODF_Field := R7FA4M1AB.SPI1.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Parity Error Flag
      PERF     : SPSR_PERF_Field := R7FA4M1AB.SPI1.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Underrun Error Flag (When MODF is 0, This bit is
      --  invalid.)
      UDRF     : SPSR_UDRF_Field := R7FA4M1AB.SPI1.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. SPI Transmit Buffer Empty Flag
      SPTEF    : SPSR_SPTEF_Field := R7FA4M1AB.SPI1.Val_1;
      --  This bit is read as 0. The write value should be 0.
      Reserved : Boolean := False;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. SPI Receive Buffer Full Flag
      SPRF     : SPSR_SPRF_Field := R7FA4M1AB.SPI1.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for SPSR_Register use record
      OVRF     at 0 range 0 .. 0;
      IDLNF    at 0 range 1 .. 1;
      MODF     at 0 range 2 .. 2;
      PERF     at 0 range 3 .. 3;
      UDRF     at 0 range 4 .. 4;
      SPTEF    at 0 range 5 .. 5;
      Reserved at 0 range 6 .. 6;
      SPRF     at 0 range 7 .. 7;
   end record;

   subtype SPDCR_Reserved_Field is R7FA4M1AB.UInt4;

   --  RSPI Receive/Transmit Data Selection
   type SPDCR_SPRDTD_Field is
     (--  SPDR values are read from the receive buffer
      Val_0,
      --  SPDR values are read from the transmit buffer (but only if the transmit
--  buffer is empty)
      Val_1)
     with Size => 1;
   for SPDCR_SPRDTD_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  SPI Word Access/Halfword Access Specification
   type SPDCR_SPLW_Field is
     (--  SPDR_HA is valid to access in halfwords
      Val_0,
      --  SPDR is valid (to access in words).
      Val_1)
     with Size => 1;
   for SPDCR_SPLW_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype SPDCR_Reserved_Field_1 is R7FA4M1AB.UInt2;

   --  SPI Data Control Register
   type SPDCR_Register is record
      --  These bits are read as 0000. The write value should be 0000.
      Reserved   : SPDCR_Reserved_Field := 16#0#;
      --  RSPI Receive/Transmit Data Selection
      SPRDTD     : SPDCR_SPRDTD_Field := R7FA4M1AB.SPI1.Val_0;
      --  SPI Word Access/Halfword Access Specification
      SPLW       : SPDCR_SPLW_Field := R7FA4M1AB.SPI1.Val_0;
      --  These bits are read as 00. The write value should be 00.
      Reserved_1 : SPDCR_Reserved_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for SPDCR_Register use record
      Reserved   at 0 range 0 .. 3;
      SPRDTD     at 0 range 4 .. 4;
      SPLW       at 0 range 5 .. 5;
      Reserved_1 at 0 range 6 .. 7;
   end record;

   --  RSPCK Delay Setting
   type SPCKD_SCKDL_Field is
     (--  1 RSPCK
      Val_000,
      --  2 RSPCK
      Val_001,
      --  3 RSPCK
      Val_010,
      --  4 RSPCK
      Val_011,
      --  5 RSPCK
      Val_100,
      --  6 RSPCK
      Val_101,
      --  7 RSPCK
      Val_110,
      --  8 RSPCK
      Val_111)
     with Size => 3;
   for SPCKD_SCKDL_Field use
     (Val_000 => 0,
      Val_001 => 1,
      Val_010 => 2,
      Val_011 => 3,
      Val_100 => 4,
      Val_101 => 5,
      Val_110 => 6,
      Val_111 => 7);

   subtype SPCKD_Reserved_Field is R7FA4M1AB.UInt5;

   --  SPI Clock Delay Register
   type SPCKD_Register is record
      --  RSPCK Delay Setting
      SCKDL    : SPCKD_SCKDL_Field := R7FA4M1AB.SPI1.Val_000;
      --  These bits are read as 00000. The write value should be 00000.
      Reserved : SPCKD_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for SPCKD_Register use record
      SCKDL    at 0 range 0 .. 2;
      Reserved at 0 range 3 .. 7;
   end record;

   --  SSL Negation Delay Setting
   type SSLND_SLNDL_Field is
     (--  1 RSPCK
      Val_000,
      --  2 RSPCK
      Val_001,
      --  3 RSPCK
      Val_010,
      --  4 RSPCK
      Val_011,
      --  5 RSPCK
      Val_100,
      --  6 RSPCK
      Val_101,
      --  7 RSPCK
      Val_110,
      --  8 RSPCK
      Val_111)
     with Size => 3;
   for SSLND_SLNDL_Field use
     (Val_000 => 0,
      Val_001 => 1,
      Val_010 => 2,
      Val_011 => 3,
      Val_100 => 4,
      Val_101 => 5,
      Val_110 => 6,
      Val_111 => 7);

   subtype SSLND_Reserved_Field is R7FA4M1AB.UInt5;

   --  SPI Slave Select Negation Delay Register
   type SSLND_Register is record
      --  SSL Negation Delay Setting
      SLNDL    : SSLND_SLNDL_Field := R7FA4M1AB.SPI1.Val_000;
      --  These bits are read as 00000. The write value should be 00000.
      Reserved : SSLND_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for SSLND_Register use record
      SLNDL    at 0 range 0 .. 2;
      Reserved at 0 range 3 .. 7;
   end record;

   --  SPI Next-Access Delay Setting
   type SPND_SPNDL_Field is
     (--  1 RSPCK + 2 PCLK
      Val_000,
      --  2 RSPCK + 2 PCLK
      Val_001,
      --  3 RSPCK + 2 PCLK
      Val_010,
      --  4 RSPCK + 2 PCLK
      Val_011,
      --  5 RSPCK + 2 PCLK
      Val_100,
      --  6 RSPCK + 2 PCLK
      Val_101,
      --  7 RSPCK + 2 PCLK
      Val_110,
      --  8 RSPCK + 2 PCLK
      Val_111)
     with Size => 3;
   for SPND_SPNDL_Field use
     (Val_000 => 0,
      Val_001 => 1,
      Val_010 => 2,
      Val_011 => 3,
      Val_100 => 4,
      Val_101 => 5,
      Val_110 => 6,
      Val_111 => 7);

   subtype SPND_Reserved_Field is R7FA4M1AB.UInt5;

   --  SPI Next-Access Delay Register
   type SPND_Register is record
      --  SPI Next-Access Delay Setting
      SPNDL    : SPND_SPNDL_Field := R7FA4M1AB.SPI1.Val_000;
      --  These bits are read as 00000. The write value should be 00000.
      Reserved : SPND_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for SPND_Register use record
      SPNDL    at 0 range 0 .. 2;
      Reserved at 0 range 3 .. 7;
   end record;

   --  Parity Enable
   type SPCR2_SPPE_Field is
     (--  Does not add the parity bit to transmit data and does not check the parity
--  bit of receive data
      Val_0,
      --  Adds the parity bit to transmit data and checks the parity bit of receive
--  data (when SPCR.TXMD = 0) / Adds the parity bit to transmit data but does
--  not check the parity bit of receive data (when SPCR.TXMD = 1)
      Val_1)
     with Size => 1;
   for SPCR2_SPPE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Parity Mode
   type SPCR2_SPOE_Field is
     (--  Selects even parity for use in transmission and reception
      Val_0,
      --  Selects odd parity for use in transmission and reception
      Val_1)
     with Size => 1;
   for SPCR2_SPOE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  SPI Idle Interrupt Enable
   type SPCR2_SPIIE_Field is
     (--  Disables the generation of idle interrupt requests
      Val_0,
      --  Enables the generation of idle interrupt requests
      Val_1)
     with Size => 1;
   for SPCR2_SPIIE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Parity Self-Testing
   type SPCR2_PTE_Field is
     (--  Disables the self-diagnosis function of the parity circuit
      Val_0,
      --  Enables the self-diagnosis function of the parity circuit
      Val_1)
     with Size => 1;
   for SPCR2_PTE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  RSPCK Auto-Stop Function Enable
   type SPCR2_SCKASE_Field is
     (--  Disables the RSPCK auto-stop function
      Val_0,
      --  Enables the RSPCK auto-stop function
      Val_1)
     with Size => 1;
   for SPCR2_SCKASE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype SPCR2_Reserved_Field is R7FA4M1AB.UInt3;

   --  SPI Control Register 2
   type SPCR2_Register is record
      --  Parity Enable
      SPPE     : SPCR2_SPPE_Field := R7FA4M1AB.SPI1.Val_0;
      --  Parity Mode
      SPOE     : SPCR2_SPOE_Field := R7FA4M1AB.SPI1.Val_0;
      --  SPI Idle Interrupt Enable
      SPIIE    : SPCR2_SPIIE_Field := R7FA4M1AB.SPI1.Val_0;
      --  Parity Self-Testing
      PTE      : SPCR2_PTE_Field := R7FA4M1AB.SPI1.Val_0;
      --  RSPCK Auto-Stop Function Enable
      SCKASE   : SPCR2_SCKASE_Field := R7FA4M1AB.SPI1.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved : SPCR2_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for SPCR2_Register use record
      SPPE     at 0 range 0 .. 0;
      SPOE     at 0 range 1 .. 1;
      SPIIE    at 0 range 2 .. 2;
      PTE      at 0 range 3 .. 3;
      SCKASE   at 0 range 4 .. 4;
      Reserved at 0 range 5 .. 7;
   end record;

   --  RSPCK Phase Setting
   type SPCMD0_CPHA_Field is
     (--  Data sampling on odd edge, data variation on even edge
      Val_0,
      --  Data variation on odd edge, data sampling on even edge
      Val_1)
     with Size => 1;
   for SPCMD0_CPHA_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  RSPCK Polarity Setting
   type SPCMD0_CPOL_Field is
     (--  RSPCK is low when idle
      Val_0,
      --  RSPCK is high when idle
      Val_1)
     with Size => 1;
   for SPCMD0_CPOL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Bit Rate Division Setting
   type SPCMD0_BRDV_Field is
     (--  These bits select the base bit rate
      Val_00,
      --  These bits select the base bit rate divided by 2
      Val_01,
      --  These bits select the base bit rate divided by 4
      Val_10,
      --  These bits select the base bit rate divided by 8
      Val_11)
     with Size => 2;
   for SPCMD0_BRDV_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   --  SSL Signal Assertion Setting
   type SPCMD0_SSLA_Field is
     (--  SSL0
      Val_000,
      --  Setting prohibited
      others_k,
      --  SSL1
      Val_001,
      --  SSL2
      Val_010,
      --  SSL3
      Val_011)
     with Size => 3;
   for SPCMD0_SSLA_Field use
     (Val_000 => 0,
      others_k => 0,
      Val_001 => 1,
      Val_010 => 2,
      Val_011 => 3);

   --  RSPI Data Length Setting
   type SPCMD0_SPB_Field is
     (--  20 bits
      Val_0000,
      --  8bits
      others_k,
      --  24 bits
      Val_0001,
      --  32 bits
      Val_0010,
      --  32 bits
      Val_0011,
      --  Reset value for the field
      SPCMD0_SPB_Field_Reset,
      --  9 bits
      Val_1000,
      --  10 bits
      Val_1001,
      --  11 bits
      Val_1010,
      --  12 bits
      Val_1011,
      --  13 bits
      Val_1100,
      --  14 bits
      Val_1101,
      --  15 bits
      Val_1110,
      --  16 bits
      Val_1111)
     with Size => 4;
   for SPCMD0_SPB_Field use
     (Val_0000 => 0,
      others_k => 0,
      Val_0001 => 1,
      Val_0010 => 2,
      Val_0011 => 3,
      SPCMD0_SPB_Field_Reset => 7,
      Val_1000 => 8,
      Val_1001 => 9,
      Val_1010 => 10,
      Val_1011 => 11,
      Val_1100 => 12,
      Val_1101 => 13,
      Val_1110 => 14,
      Val_1111 => 15);

   --  RSPI LSB First
   type SPCMD0_LSBF_Field is
     (--  MSB first
      Val_0,
      --  LSB first
      Val_1)
     with Size => 1;
   for SPCMD0_LSBF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  RSPI Next-Access Delay Enable
   type SPCMD0_SPNDEN_Field is
     (--  A next-access delay of 1 RSPCK + 2 PCLK
      Val_0,
      --  A next-access delay is equal to the setting of the RSPI next-access delay
--  register (SPND)
      Val_1)
     with Size => 1;
   for SPCMD0_SPNDEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  SSL Negation Delay Setting Enable
   type SPCMD0_SLNDEN_Field is
     (--  An SSL negation delay of 1 RSPCK
      Val_0,
      --  An SSL negation delay is equal to the setting of the RSPI slave select
--  negation delay register (SSLND)
      Val_1)
     with Size => 1;
   for SPCMD0_SLNDEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  RSPCK Delay Setting Enable
   type SPCMD0_SCKDEN_Field is
     (--  An RSPCK delay of 1 RSPCK
      Val_0,
      --  An RSPCK delay is equal to the setting of the RSPI clock delay register
--  (SPCKD)
      Val_1)
     with Size => 1;
   for SPCMD0_SCKDEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  SPI Command Register 0
   type SPCMD0_Register is record
      --  RSPCK Phase Setting
      CPHA     : SPCMD0_CPHA_Field := R7FA4M1AB.SPI1.Val_1;
      --  RSPCK Polarity Setting
      CPOL     : SPCMD0_CPOL_Field := R7FA4M1AB.SPI1.Val_0;
      --  Bit Rate Division Setting
      BRDV     : SPCMD0_BRDV_Field := R7FA4M1AB.SPI1.Val_11;
      --  SSL Signal Assertion Setting
      SSLA     : SPCMD0_SSLA_Field := R7FA4M1AB.SPI1.Val_000;
      --  This bit is read as 0. The write value should be 0.
      Reserved : Boolean := False;
      --  RSPI Data Length Setting
      SPB      : SPCMD0_SPB_Field := SPCMD0_SPB_Field_Reset;
      --  RSPI LSB First
      LSBF     : SPCMD0_LSBF_Field := R7FA4M1AB.SPI1.Val_0;
      --  RSPI Next-Access Delay Enable
      SPNDEN   : SPCMD0_SPNDEN_Field := R7FA4M1AB.SPI1.Val_0;
      --  SSL Negation Delay Setting Enable
      SLNDEN   : SPCMD0_SLNDEN_Field := R7FA4M1AB.SPI1.Val_0;
      --  RSPCK Delay Setting Enable
      SCKDEN   : SPCMD0_SCKDEN_Field := R7FA4M1AB.SPI1.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for SPCMD0_Register use record
      CPHA     at 0 range 0 .. 0;
      CPOL     at 0 range 1 .. 1;
      BRDV     at 0 range 2 .. 3;
      SSLA     at 0 range 4 .. 6;
      Reserved at 0 range 7 .. 7;
      SPB      at 0 range 8 .. 11;
      LSBF     at 0 range 12 .. 12;
      SPNDEN   at 0 range 13 .. 13;
      SLNDEN   at 0 range 14 .. 14;
      SCKDEN   at 0 range 15 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Serial Peripheral Interface 1
   type SPI1_Peripheral is record
      --  SPI Control Register
      SPCR   : aliased SPCR_Register;
      --  SPI Slave Select Polarity Register
      SSLP   : aliased SSLP_Register;
      --  SPI Pin Control Register
      SPPCR  : aliased SPPCR_Register;
      --  SPI Status Register
      SPSR   : aliased SPSR_Register;
      --  SPI Data Register
      SPDR   : aliased R7FA4M1AB.UInt32;
      --  SPI Bit Rate Register
      SPBR   : aliased R7FA4M1AB.Byte;
      --  SPI Data Control Register
      SPDCR  : aliased SPDCR_Register;
      --  SPI Clock Delay Register
      SPCKD  : aliased SPCKD_Register;
      --  SPI Slave Select Negation Delay Register
      SSLND  : aliased SSLND_Register;
      --  SPI Next-Access Delay Register
      SPND   : aliased SPND_Register;
      --  SPI Control Register 2
      SPCR2  : aliased SPCR2_Register;
      --  SPI Command Register 0
      SPCMD0 : aliased SPCMD0_Register;
   end record
     with Volatile;

   for SPI1_Peripheral use record
      SPCR   at 16#0# range 0 .. 7;
      SSLP   at 16#1# range 0 .. 7;
      SPPCR  at 16#2# range 0 .. 7;
      SPSR   at 16#3# range 0 .. 7;
      SPDR   at 16#4# range 0 .. 31;
      SPBR   at 16#A# range 0 .. 7;
      SPDCR  at 16#B# range 0 .. 7;
      SPCKD  at 16#C# range 0 .. 7;
      SSLND  at 16#D# range 0 .. 7;
      SPND   at 16#E# range 0 .. 7;
      SPCR2  at 16#F# range 0 .. 7;
      SPCMD0 at 16#10# range 0 .. 15;
   end record;

   --  Serial Peripheral Interface 1
   SPI1_Periph : aliased SPI1_Peripheral
     with Import, Address => SPI1_Base;

end R7FA4M1AB.SPI1;
