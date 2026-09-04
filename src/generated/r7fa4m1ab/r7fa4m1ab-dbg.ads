-- 
-- Copyright (C) 2026 Marcus Gigandet
--
-- SPDX-License-Identifier: LGPL-3.0-or-later
-- 

pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB-ada.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  Debug Function
package R7FA4M1AB.DBG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype DBGSTR_Reserved_Field is R7FA4M1AB.UInt28;

   --  Debug power-up request
   type DBGSTR_CDBGPWRUPREQ_Field is
     (--  OCD is not requesting debug power-up
      Val_0,
      --  OCD is requesting debug power-up
      Val_1)
     with Size => 1;
   for DBGSTR_CDBGPWRUPREQ_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Debug power-up acknowledge
   type DBGSTR_CDBGPWRUPACK_Field is
     (--  Debug power-up request is not acknowledged
      Val_0,
      --  Debug power-up request is acknowledged
      Val_1)
     with Size => 1;
   for DBGSTR_CDBGPWRUPACK_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype DBGSTR_Reserved_Field_1 is R7FA4M1AB.UInt2;

   --  Debug Status Register
   type DBGSTR_Register is record
      --  Read-only. These bits are read as 0000000000000000000000000000.
      Reserved     : DBGSTR_Reserved_Field;
      --  Read-only. Debug power-up request
      CDBGPWRUPREQ : DBGSTR_CDBGPWRUPREQ_Field;
      --  Read-only. Debug power-up acknowledge
      CDBGPWRUPACK : DBGSTR_CDBGPWRUPACK_Field;
      --  Read-only. These bits are read as 00.
      Reserved_1   : DBGSTR_Reserved_Field_1;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBGSTR_Register use record
      Reserved     at 0 range 0 .. 27;
      CDBGPWRUPREQ at 0 range 28 .. 28;
      CDBGPWRUPACK at 0 range 29 .. 29;
      Reserved_1   at 0 range 30 .. 31;
   end record;

   --  Mask bit for IWDT reset/interrupt
   type DBGSTOPCR_DBGSTOP_IWDT_Field is
     (--  Mask IWDT reset/interrupt
      Val_0,
      --  Enable IWDT reset
      Val_1)
     with Size => 1;
   for DBGSTOPCR_DBGSTOP_IWDT_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Mask bit for WDT reset/interrupt
   type DBGSTOPCR_DBGSTOP_WDT_Field is
     (--  Mask WDT reset/interrupt
      Val_0,
      --  Enable WDT reset
      Val_1)
     with Size => 1;
   for DBGSTOPCR_DBGSTOP_WDT_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype DBGSTOPCR_Reserved_Field is R7FA4M1AB.UInt14;
   subtype DBGSTOPCR_DBGSTOP_LVD_Field is R7FA4M1AB.UInt3;
   subtype DBGSTOPCR_Reserved_Field_1 is R7FA4M1AB.UInt5;

   --  Mask bit for RAM parity error reset/interrupt
   type DBGSTOPCR_DBGSTOP_RPER_Field is
     (--  Enable RAM parity error reset/interrupt
      Val_0,
      --  Mask RAM parity error reset/interrupt
      Val_1)
     with Size => 1;
   for DBGSTOPCR_DBGSTOP_RPER_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Mask bit for RAM ECC error reset/interrupt
   type DBGSTOPCR_DBGSTOP_RECCR_Field is
     (--  Enable RAM ECC error reset/interrupt
      Val_0,
      --  Mask RAM ECC error reset/interrupt
      Val_1)
     with Size => 1;
   for DBGSTOPCR_DBGSTOP_RECCR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype DBGSTOPCR_Reserved_Field_2 is R7FA4M1AB.UInt6;

   --  Debug Stop Control Register
   type DBGSTOPCR_Register is record
      --  Mask bit for IWDT reset/interrupt
      DBGSTOP_IWDT  : DBGSTOPCR_DBGSTOP_IWDT_Field := R7FA4M1AB.DBG.Val_1;
      --  Mask bit for WDT reset/interrupt
      DBGSTOP_WDT   : DBGSTOPCR_DBGSTOP_WDT_Field := R7FA4M1AB.DBG.Val_1;
      --  These bits are read as 00000000000000. The write value should be
      --  00000000000000.
      Reserved      : DBGSTOPCR_Reserved_Field := 16#0#;
      --  b18: Mask bit for LVD2 reset/interrupt (0:enable / 1:Mask) b17: Mask
      --  bit for LVD1 reset/interrupt (0:enable / 1:Mask) b16: Mask bit for
      --  LVD0 reset (0:enable / 1:Mask)
      DBGSTOP_LVD   : DBGSTOPCR_DBGSTOP_LVD_Field := 16#0#;
      --  These bits are read as 00000. The write value should be 00000.
      Reserved_1    : DBGSTOPCR_Reserved_Field_1 := 16#0#;
      --  Mask bit for RAM parity error reset/interrupt
      DBGSTOP_RPER  : DBGSTOPCR_DBGSTOP_RPER_Field := R7FA4M1AB.DBG.Val_0;
      --  Mask bit for RAM ECC error reset/interrupt
      DBGSTOP_RECCR : DBGSTOPCR_DBGSTOP_RECCR_Field := R7FA4M1AB.DBG.Val_0;
      --  These bits are read as 000000. The write value should be 000000.
      Reserved_2    : DBGSTOPCR_Reserved_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBGSTOPCR_Register use record
      DBGSTOP_IWDT  at 0 range 0 .. 0;
      DBGSTOP_WDT   at 0 range 1 .. 1;
      Reserved      at 0 range 2 .. 15;
      DBGSTOP_LVD   at 0 range 16 .. 18;
      Reserved_1    at 0 range 19 .. 23;
      DBGSTOP_RPER  at 0 range 24 .. 24;
      DBGSTOP_RECCR at 0 range 25 .. 25;
      Reserved_2    at 0 range 26 .. 31;
   end record;

   subtype TRACECTR_Reserved_Field is R7FA4M1AB.UInt31;

   --  Enable bit for halt request by ETB full
   type TRACECTR_ENETBFULL_Field is
     (--  ETB full does not cause CPU halt
      Val_0,
      --  ETB full cause CPU halt
      Val_1)
     with Size => 1;
   for TRACECTR_ENETBFULL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Trace Control Register
   type TRACECTR_Register is record
      --  These bits are read as 0000000000000000000000000000000. The write
      --  value should be 0000000000000000000000000000000.
      Reserved  : TRACECTR_Reserved_Field := 16#0#;
      --  Enable bit for halt request by ETB full
      ENETBFULL : TRACECTR_ENETBFULL_Field := R7FA4M1AB.DBG.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRACECTR_Register use record
      Reserved  at 0 range 0 .. 30;
      ENETBFULL at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Debug Function
   type DBG_Peripheral is record
      --  Debug Status Register
      DBGSTR    : aliased DBGSTR_Register;
      --  Debug Stop Control Register
      DBGSTOPCR : aliased DBGSTOPCR_Register;
      --  Trace Control Register
      TRACECTR  : aliased TRACECTR_Register;
   end record
     with Volatile;

   for DBG_Peripheral use record
      DBGSTR    at 16#0# range 0 .. 31;
      DBGSTOPCR at 16#10# range 0 .. 31;
      TRACECTR  at 16#20# range 0 .. 31;
   end record;

   --  Debug Function
   DBG_Periph : aliased DBG_Peripheral
     with Import, Address => DBG_Base;

end R7FA4M1AB.DBG;
