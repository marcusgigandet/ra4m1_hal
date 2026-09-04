--
-- Copyright (C) 2026 Marcus Gigandet
--
-- SPDX-License-Identifier: LGPL-3.0-or-later
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  Temperature Sensor

package R7FA4M1AB.TSN is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  Temperature Sensor
   type TSN_Peripheral is record
      --  Temperature Sensor Calibration Data Register L
      TSCDRL : aliased R7FA4M1AB.Byte;
      --  Temperature Sensor Calibration Data Register H
      TSCDRH : aliased R7FA4M1AB.Byte;
   end record
   with Volatile;

   for TSN_Peripheral use
     record
       TSCDRL at 16#228# range 0 .. 7;
       TSCDRH at 16#229# range 0 .. 7;
     end record;

   --  Temperature Sensor
   TSN_Periph : aliased TSN_Peripheral
   with Import, Address => TSN_Base;

end R7FA4M1AB.TSN;
