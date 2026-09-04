-- 
-- Copyright (C) 2026 Marcus Gigandet
--
-- SPDX-License-Identifier: LGPL-3.0-or-later
-- 

pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB-ada.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  Flash Cache
package R7FA4M1AB.FCACHE is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  FCACHE Enable
   type FCACHEE_FCACHEEN_Field is
     (--  FCACHE is disabled
      Val_0,
      --  FCACHE is enabled
      Val_1)
     with Size => 1;
   for FCACHEE_FCACHEEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype FCACHEE_Reserved_Field is R7FA4M1AB.UInt15;

   --  Flash Cache Enable Register
   type FCACHEE_Register is record
      --  FCACHE Enable
      FCACHEEN : FCACHEE_FCACHEEN_Field := R7FA4M1AB.FCACHE.Val_0;
      --  These bits are read as 000000000000000. The write value should be
      --  000000000000000.
      Reserved : FCACHEE_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for FCACHEE_Register use record
      FCACHEEN at 0 range 0 .. 0;
      Reserved at 0 range 1 .. 15;
   end record;

   --  FCACHE Invalidation
   type FCACHEIV_FCACHEIV_Field is
     (--  (Read)not in progress / (Write) no effect.
      Val_0,
      --  (Read)in progress /(Write) Starting Cache Invalidation
      Val_1)
     with Size => 1;
   for FCACHEIV_FCACHEIV_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype FCACHEIV_Reserved_Field is R7FA4M1AB.UInt15;

   --  Flash Cache Invalidate Register
   type FCACHEIV_Register is record
      --  Write data bit of one shall set (set to one) the corresponding bit in
      --  the field. *** This field is modified following a read operation ***.
      --  FCACHE Invalidation
      FCACHEIV : FCACHEIV_FCACHEIV_Field := R7FA4M1AB.FCACHE.Val_0;
      --  These bits are read as 000000000000000. The write value should be
      --  000000000000000.
      Reserved : FCACHEIV_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for FCACHEIV_Register use record
      FCACHEIV at 0 range 0 .. 0;
      Reserved at 0 range 1 .. 15;
   end record;

   subtype FLWT_FLWT_Field is R7FA4M1AB.UInt3;
   subtype FLWT_Reserved_Field is R7FA4M1AB.UInt5;

   --  Flash Wait Cycle Register
   type FLWT_Register is record
      --  These bits represent the ratio of the CPU clock period to the Flash
      --  memory access time.
      FLWT     : FLWT_FLWT_Field := 16#0#;
      --  These bits are read as 00000. The write value should be 00000.
      Reserved : FLWT_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for FLWT_Register use record
      FLWT     at 0 range 0 .. 2;
      Reserved at 0 range 3 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Flash Cache
   type FCACHE_Peripheral is record
      --  Flash Cache Enable Register
      FCACHEE  : aliased FCACHEE_Register;
      --  Flash Cache Invalidate Register
      FCACHEIV : aliased FCACHEIV_Register;
      --  Flash Wait Cycle Register
      FLWT     : aliased FLWT_Register;
   end record
     with Volatile;

   for FCACHE_Peripheral use record
      FCACHEE  at 16#100# range 0 .. 15;
      FCACHEIV at 16#104# range 0 .. 15;
      FLWT     at 16#11C# range 0 .. 7;
   end record;

   --  Flash Cache
   FCACHE_Periph : aliased FCACHE_Peripheral
     with Import, Address => FCACHE_Base;

end R7FA4M1AB.FCACHE;
