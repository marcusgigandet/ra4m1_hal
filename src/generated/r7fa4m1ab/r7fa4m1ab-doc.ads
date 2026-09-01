pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB-ada.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  Data Operation Circuit
package R7FA4M1AB.DOC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Operating Mode Select
   type DOCR_OMS_Field is
     (--  Data comparison mode
      Val_00,
      --  Data addition mode
      Val_01,
      --  Data subtraction mode
      Val_10,
      --  Setting prohibited
      Val_11)
     with Size => 2;
   for DOCR_OMS_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   --  Detection Condition Select
   type DOCR_DCSEL_Field is
     (--  DOPCF is set when data mismatch is detected.
      Val_0,
      --  DOPCF is set when data match is detected.
      Val_1)
     with Size => 1;
   for DOCR_DCSEL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype DOCR_Reserved_Field is R7FA4M1AB.UInt2;

   --  DOPCF Clear
   type DOCR_DOPCFCL_Field is
     (--  Maintains the DOPCF flag state.
      Val_0,
      --  Clears the DOPCF flag.
      Val_1)
     with Size => 1;
   for DOCR_DOPCFCL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  DOC Control Register
   type DOCR_Register is record
      --  Operating Mode Select
      OMS        : DOCR_OMS_Field := R7FA4M1AB.DOC.Val_00;
      --  Detection Condition Select
      DCSEL      : DOCR_DCSEL_Field := R7FA4M1AB.DOC.Val_0;
      --  These bits are read as 00. The write value should be 00.
      Reserved   : DOCR_Reserved_Field := 16#0#;
      --  Read-only. Data Operation Circuit Flag Indicates the result of an
      --  operation.
      DOPCF      : Boolean := False;
      --  DOPCF Clear
      DOPCFCL    : DOCR_DOPCFCL_Field := R7FA4M1AB.DOC.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for DOCR_Register use record
      OMS        at 0 range 0 .. 1;
      DCSEL      at 0 range 2 .. 2;
      Reserved   at 0 range 3 .. 4;
      DOPCF      at 0 range 5 .. 5;
      DOPCFCL    at 0 range 6 .. 6;
      Reserved_1 at 0 range 7 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Data Operation Circuit
   type DOC_Peripheral is record
      --  DOC Control Register
      DOCR  : aliased DOCR_Register;
      --  DOC Data Input Register
      DODIR : aliased R7FA4M1AB.UInt16;
      --  DOC Data Setting Register
      DODSR : aliased R7FA4M1AB.UInt16;
   end record
     with Volatile;

   for DOC_Peripheral use record
      DOCR  at 16#0# range 0 .. 7;
      DODIR at 16#2# range 0 .. 15;
      DODSR at 16#4# range 0 .. 15;
   end record;

   --  Data Operation Circuit
   DOC_Periph : aliased DOC_Peripheral
     with Import, Address => DOC_Base;

end R7FA4M1AB.DOC;
