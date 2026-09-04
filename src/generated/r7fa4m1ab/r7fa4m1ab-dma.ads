--
-- Copyright (C) 2026 Marcus Gigandet
--
-- SPDX-License-Identifier: LGPL-3.0-or-later
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  DMAC Module Activation

package R7FA4M1AB.DMA is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  DMAC Operation Enable
   type DMAST_DMST_Field is
     (--  Disabled.
     Val_0,
      --  Enabled.
      Val_1)
   with Size => 1;
   for DMAST_DMST_Field use (Val_0 => 0, Val_1 => 1);

   subtype DMAST_Reserved_Field is R7FA4M1AB.UInt7;

   --  DMAC Module Activation Register
   type DMAST_Register is record
      --  DMAC Operation Enable
      DMST     : DMAST_DMST_Field := R7FA4M1AB.DMA.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved : DMAST_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for DMAST_Register use
     record
       DMST at 0 range 0 .. 0;
       Reserved at 0 range 1 .. 7;
     end record;

   -----------------
   -- Peripherals --
   -----------------

   --  DMAC Module Activation
   type DMA_Peripheral is record
      --  DMAC Module Activation Register
      DMAST : aliased DMAST_Register;
   end record
   with Volatile;

   for DMA_Peripheral use
     record
       DMAST at 0 range 0 .. 7;
     end record;

   --  DMAC Module Activation
   DMA_Periph : aliased DMA_Peripheral
   with Import, Address => DMA_Base;

end R7FA4M1AB.DMA;
