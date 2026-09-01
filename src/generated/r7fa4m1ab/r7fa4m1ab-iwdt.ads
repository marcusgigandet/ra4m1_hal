pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB-ada.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  Independent Watchdog Timer
package R7FA4M1AB.IWDT is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype IWDTSR_CNTVAL_Field is R7FA4M1AB.UInt14;

   --  Underflow Flag
   type IWDTSR_UNDFF_Field is
     (--  Underflow not occurred
      Val_0,
      --  Underflow occurred
      Val_1)
     with Size => 1;
   for IWDTSR_UNDFF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Refresh Error Flag
   type IWDTSR_REFEF_Field is
     (--  Refresh error not occurred
      Val_0,
      --  Refresh error occurred
      Val_1)
     with Size => 1;
   for IWDTSR_REFEF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  IWDT Status Register
   type IWDTSR_Register is record
      --  Read-only. Counter Value Value counted by the counter
      CNTVAL : IWDTSR_CNTVAL_Field := 16#0#;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Underflow Flag
      UNDFF  : IWDTSR_UNDFF_Field := R7FA4M1AB.IWDT.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Refresh Error Flag
      REFEF  : IWDTSR_REFEF_Field := R7FA4M1AB.IWDT.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for IWDTSR_Register use record
      CNTVAL at 0 range 0 .. 13;
      UNDFF  at 0 range 14 .. 14;
      REFEF  at 0 range 15 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Independent Watchdog Timer
   type IWDT_Peripheral is record
      --  IWDT Refresh Register
      IWDTRR : aliased R7FA4M1AB.Byte;
      --  IWDT Status Register
      IWDTSR : aliased IWDTSR_Register;
   end record
     with Volatile;

   for IWDT_Peripheral use record
      IWDTRR at 16#0# range 0 .. 7;
      IWDTSR at 16#4# range 0 .. 15;
   end record;

   --  Independent Watchdog Timer
   IWDT_Periph : aliased IWDT_Peripheral
     with Import, Address => IWDT_Base;

end R7FA4M1AB.IWDT;
