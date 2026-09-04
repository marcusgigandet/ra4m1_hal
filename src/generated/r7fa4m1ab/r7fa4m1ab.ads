-- 
-- Copyright (C) 2026 Marcus Gigandet
--
-- SPDX-License-Identifier: LGPL-3.0-or-later
-- 

pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB-ada.svd

pragma Restrictions (No_Elaboration_Code);

with Interfaces;
with System;

--  ARM 32-bit Cortex-M4F Microcontroller based device, CPU clock up to 48MHz,
--  etc. 
package R7FA4M1AB is
   pragma Preelaborate;

   ---------------
   -- Base type --
   ---------------

   type UInt32 is new Interfaces.Unsigned_32;
   type UInt16 is new Interfaces.Unsigned_16;
   type Byte is new Interfaces.Unsigned_8;
   type Bit is mod 2**1
     with Size => 1;
   type UInt2 is mod 2**2
     with Size => 2;
   type UInt3 is mod 2**3
     with Size => 3;
   type UInt4 is mod 2**4
     with Size => 4;
   type UInt5 is mod 2**5
     with Size => 5;
   type UInt6 is mod 2**6
     with Size => 6;
   type UInt7 is mod 2**7
     with Size => 7;
   type UInt9 is mod 2**9
     with Size => 9;
   type UInt10 is mod 2**10
     with Size => 10;
   type UInt11 is mod 2**11
     with Size => 11;
   type UInt12 is mod 2**12
     with Size => 12;
   type UInt13 is mod 2**13
     with Size => 13;
   type UInt14 is mod 2**14
     with Size => 14;
   type UInt15 is mod 2**15
     with Size => 15;
   type UInt17 is mod 2**17
     with Size => 17;
   type UInt18 is mod 2**18
     with Size => 18;
   type UInt19 is mod 2**19
     with Size => 19;
   type UInt20 is mod 2**20
     with Size => 20;
   type UInt21 is mod 2**21
     with Size => 21;
   type UInt22 is mod 2**22
     with Size => 22;
   type UInt23 is mod 2**23
     with Size => 23;
   type UInt24 is mod 2**24
     with Size => 24;
   type UInt25 is mod 2**25
     with Size => 25;
   type UInt26 is mod 2**26
     with Size => 26;
   type UInt27 is mod 2**27
     with Size => 27;
   type UInt28 is mod 2**28
     with Size => 28;
   type UInt29 is mod 2**29
     with Size => 29;
   type UInt30 is mod 2**30
     with Size => 30;
   type UInt31 is mod 2**31
     with Size => 31;

   --------------------
   -- Base addresses --
   --------------------

   SYSTEM_Base : constant System.Address := System'To_Address (16#4001E000#);
   BUS_Base : constant System.Address := System'To_Address (16#40003000#);
   CAC_Base : constant System.Address := System'To_Address (16#40044600#);
   CAN0_Base : constant System.Address := System'To_Address (16#40050000#);
   DBG_Base : constant System.Address := System'To_Address (16#4001B000#);
   CRC_Base : constant System.Address := System'To_Address (16#40074000#);
   CTSU_Base : constant System.Address := System'To_Address (16#40081000#);
   DAC12_Base : constant System.Address := System'To_Address (16#4005E000#);
   DAC8_Base : constant System.Address := System'To_Address (16#4009E000#);
   DMAC0_Base : constant System.Address := System'To_Address (16#40005000#);
   DMAC1_Base : constant System.Address := System'To_Address (16#40005040#);
   DMAC2_Base : constant System.Address := System'To_Address (16#40005080#);
   DMAC3_Base : constant System.Address := System'To_Address (16#400050C0#);
   DMA_Base : constant System.Address := System'To_Address (16#40005200#);
   DOC_Base : constant System.Address := System'To_Address (16#40054100#);
   DTC_Base : constant System.Address := System'To_Address (16#40005400#);
   ELC_Base : constant System.Address := System'To_Address (16#40041000#);
   FCACHE_Base : constant System.Address := System'To_Address (16#4001C000#);
   PORT0_Base : constant System.Address := System'To_Address (16#40040000#);
   PORT1_Base : constant System.Address := System'To_Address (16#40040020#);
   PORT2_Base : constant System.Address := System'To_Address (16#40040040#);
   PORT3_Base : constant System.Address := System'To_Address (16#40040060#);
   PORT4_Base : constant System.Address := System'To_Address (16#40040080#);
   PORT5_Base : constant System.Address := System'To_Address (16#400400A0#);
   PORT6_Base : constant System.Address := System'To_Address (16#400400C0#);
   PORT7_Base : constant System.Address := System'To_Address (16#400400E0#);
   PORT8_Base : constant System.Address := System'To_Address (16#40040100#);
   PORT9_Base : constant System.Address := System'To_Address (16#40040120#);
   PFS_Base : constant System.Address := System'To_Address (16#40040800#);
   PMISC_Base : constant System.Address := System'To_Address (16#40040D00#);
   ICU_Base : constant System.Address := System'To_Address (16#40006000#);
   IIC0_Base : constant System.Address := System'To_Address (16#40053000#);
   IIC1_Base : constant System.Address := System'To_Address (16#40053100#);
   IWDT_Base : constant System.Address := System'To_Address (16#40044400#);
   KINT_Base : constant System.Address := System'To_Address (16#40080000#);
   MSTP_Base : constant System.Address := System'To_Address (16#40047000#);
   MMPU_Base : constant System.Address := System'To_Address (16#40000000#);
   SMPU_Base : constant System.Address := System'To_Address (16#40000C00#);
   SPMON_Base : constant System.Address := System'To_Address (16#40000D00#);
   OPAMP_Base : constant System.Address := System'To_Address (16#40086000#);
   POEG_Base : constant System.Address := System'To_Address (16#40042000#);
   SRAM_Base : constant System.Address := System'To_Address (16#40002000#);
   RTC_Base : constant System.Address := System'To_Address (16#40044000#);
   SCI0_Base : constant System.Address := System'To_Address (16#40070000#);
   SCI1_Base : constant System.Address := System'To_Address (16#40070020#);
   SCI2_Base : constant System.Address := System'To_Address (16#40070040#);
   SCI9_Base : constant System.Address := System'To_Address (16#40070120#);
   SLCDC_Base : constant System.Address := System'To_Address (16#40082000#);
   SPI0_Base : constant System.Address := System'To_Address (16#40072000#);
   SPI1_Base : constant System.Address := System'To_Address (16#40072100#);
   SSIE0_Base : constant System.Address := System'To_Address (16#4004E000#);
   TSN_Base : constant System.Address := System'To_Address (16#407EC000#);
   USBFS_Base : constant System.Address := System'To_Address (16#40090000#);
   WDT_Base : constant System.Address := System'To_Address (16#40044200#);
   ACMPLP_Base : constant System.Address := System'To_Address (16#40085E00#);
   ADC140_Base : constant System.Address := System'To_Address (16#4005C000#);
   AGT0_Base : constant System.Address := System'To_Address (16#40084000#);
   AGT1_Base : constant System.Address := System'To_Address (16#40084100#);
   GPT320_Base : constant System.Address := System'To_Address (16#40078000#);
   GPT321_Base : constant System.Address := System'To_Address (16#40078100#);
   GPT162_Base : constant System.Address := System'To_Address (16#40078200#);
   GPT163_Base : constant System.Address := System'To_Address (16#40078300#);
   GPT164_Base : constant System.Address := System'To_Address (16#40078400#);
   GPT165_Base : constant System.Address := System'To_Address (16#40078500#);
   GPT166_Base : constant System.Address := System'To_Address (16#40078600#);
   GPT167_Base : constant System.Address := System'To_Address (16#40078700#);
   GPT_OPS_Base : constant System.Address := System'To_Address (16#40078FF0#);

end R7FA4M1AB;
