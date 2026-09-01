pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB-ada.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  SRAM Control
package R7FA4M1AB.SRAM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Operation after Detection
   type PARIOAD_OAD_Field is
     (--  Non maskable interrupt.
      Val_0,
      --  Reset
      Val_1)
     with Size => 1;
   for PARIOAD_OAD_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype PARIOAD_Reserved_Field is R7FA4M1AB.UInt7;

   --  SRAM Parity Error Operation After Detection Register
   type PARIOAD_Register is record
      --  Operation after Detection
      OAD      : PARIOAD_OAD_Field := R7FA4M1AB.SRAM.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved : PARIOAD_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for PARIOAD_Register use record
      OAD      at 0 range 0 .. 0;
      Reserved at 0 range 1 .. 7;
   end record;

   --  Register Write Control
   type SRAMPRCR_SRAMPRCR_Field is
     (--  Disable writes to protected registers
      Val_0,
      --  Enable writes to protected registers.
      Val_1)
     with Size => 1;
   for SRAMPRCR_SRAMPRCR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Write Key Code
   type SRAMPRCR_KW_Field is
     (--  Writing to the RAMPRCR bit is invalid.
      others_k,
      --  Writing to the RAMPRCR bit is valid, when the KEY bits are written
--  1111000b.
      Val_1111000)
     with Size => 7;
   for SRAMPRCR_KW_Field use
     (others_k => 0,
      Val_1111000 => 120);

   --  SRAM Protection Register
   type SRAMPRCR_Register is record
      --  Register Write Control
      SRAMPRCR : SRAMPRCR_SRAMPRCR_Field := R7FA4M1AB.SRAM.Val_0;
      --  Write-only. Write Key Code
      KW       : SRAMPRCR_KW_Field := R7FA4M1AB.SRAM.others_k;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for SRAMPRCR_Register use record
      SRAMPRCR at 0 range 0 .. 0;
      KW       at 0 range 1 .. 7;
   end record;

   --  ECC Operating Mode Select
   type ECCMODE_ECCMOD_Field is
     (--  Disable ECC function
      Val_00,
      --  Setting prohibited
      Val_01,
      --  Enable ECC function without error checking
      Val_10,
      --  Enable ECC function with error checking
      Val_11)
     with Size => 2;
   for ECCMODE_ECCMOD_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   subtype ECCMODE_Reserved_Field is R7FA4M1AB.UInt6;

   --  ECC Operating Mode Control Register
   type ECCMODE_Register is record
      --  ECC Operating Mode Select
      ECCMOD   : ECCMODE_ECCMOD_Field := R7FA4M1AB.SRAM.Val_00;
      --  These bits are read as 000000. The write value should be 000000.
      Reserved : ECCMODE_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for ECCMODE_Register use record
      ECCMOD   at 0 range 0 .. 1;
      Reserved at 0 range 2 .. 7;
   end record;

   --  ECC 2-Bit Error Status
   type ECC2STS_ECC2ERR_Field is
     (--  No 2-bit ECC error occurred
      Val_0,
      --  2-bit ECC error occurred.
      Val_1)
     with Size => 1;
   for ECC2STS_ECC2ERR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype ECC2STS_Reserved_Field is R7FA4M1AB.UInt7;

   --  ECC 2-Bit Error Status Register
   type ECC2STS_Register is record
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. ECC 2-Bit Error Status
      ECC2ERR  : ECC2STS_ECC2ERR_Field := R7FA4M1AB.SRAM.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved : ECC2STS_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for ECC2STS_Register use record
      ECC2ERR  at 0 range 0 .. 0;
      Reserved at 0 range 1 .. 7;
   end record;

   --  ECC 1-Bit Error Information Update Enable
   type ECC1STSEN_E1STSEN_Field is
     (--  Disables updating of the 1-bit ECC error information.
      Val_0,
      --  Enables updating of the 1-bit ECC error information.
      Val_1)
     with Size => 1;
   for ECC1STSEN_E1STSEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype ECC1STSEN_Reserved_Field is R7FA4M1AB.UInt7;

   --  ECC 1-Bit Error Information Update Enable Register
   type ECC1STSEN_Register is record
      --  ECC 1-Bit Error Information Update Enable
      E1STSEN  : ECC1STSEN_E1STSEN_Field := R7FA4M1AB.SRAM.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved : ECC1STSEN_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for ECC1STSEN_Register use record
      E1STSEN  at 0 range 0 .. 0;
      Reserved at 0 range 1 .. 7;
   end record;

   --  ECC 1-Bit Error Status
   type ECC1STS_ECC1ERR_Field is
     (--  No 1-bit ECC error occurred
      Val_0,
      --  1-bit ECC error occurred
      Val_1)
     with Size => 1;
   for ECC1STS_ECC1ERR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype ECC1STS_Reserved_Field is R7FA4M1AB.UInt7;

   --  ECC 1-Bit Error Status Register
   type ECC1STS_Register is record
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. ECC 1-Bit Error Status
      ECC1ERR  : ECC1STS_ECC1ERR_Field := R7FA4M1AB.SRAM.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved : ECC1STS_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for ECC1STS_Register use record
      ECC1ERR  at 0 range 0 .. 0;
      Reserved at 0 range 1 .. 7;
   end record;

   --  Register Write Control
   type ECCPRCR_ECCPRCR_Field is
     (--  Disable writes to the protected registers
      Val_0,
      --  Enable writes to the protected registers
      Val_1)
     with Size => 1;
   for ECCPRCR_ECCPRCR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Write Key Code
   type ECCPRCR_KW_Field is
     (--  Writing to the ECCRAMPRCR bit is invalid.
      others_k,
      --  Writing to the ECCRAMPRCR bit is valid, when the KEY bits are written
--  1111000b.
      Val_1111000)
     with Size => 7;
   for ECCPRCR_KW_Field use
     (others_k => 0,
      Val_1111000 => 120);

   --  ECC Protection Register
   type ECCPRCR_Register is record
      --  Register Write Control
      ECCPRCR : ECCPRCR_ECCPRCR_Field := R7FA4M1AB.SRAM.Val_0;
      --  Write-only. Write Key Code
      KW      : ECCPRCR_KW_Field := R7FA4M1AB.SRAM.others_k;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for ECCPRCR_Register use record
      ECCPRCR at 0 range 0 .. 0;
      KW      at 0 range 1 .. 7;
   end record;

   --  Register Write Control
   type ECCPRCR2_ECCPRCR2_Field is
     (--  Disable writes to the protected registers
      Val_0,
      --  Enable writes to the protected registers.
      Val_1)
     with Size => 1;
   for ECCPRCR2_ECCPRCR2_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Write Key Code
   type ECCPRCR2_KW2_Field is
     (--  Writing to the ECCRAMPRCR2 bit is invalid.
      others_k,
      --  These bits enable or disable writes to the ECCPRCR2 bit..
      Val_1111000)
     with Size => 7;
   for ECCPRCR2_KW2_Field use
     (others_k => 0,
      Val_1111000 => 120);

   --  ECC Protection Register 2
   type ECCPRCR2_Register is record
      --  Register Write Control
      ECCPRCR2 : ECCPRCR2_ECCPRCR2_Field := R7FA4M1AB.SRAM.Val_0;
      --  Write-only. Write Key Code
      KW2      : ECCPRCR2_KW2_Field := R7FA4M1AB.SRAM.others_k;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for ECCPRCR2_Register use record
      ECCPRCR2 at 0 range 0 .. 0;
      KW2      at 0 range 1 .. 7;
   end record;

   --  ECC Bypass Select
   type ECCETST_TSTBYP_Field is
     (--  ECC bypass disabled.
      Val_0,
      --  ECC bypass enabled.
      Val_1)
     with Size => 1;
   for ECCETST_TSTBYP_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype ECCETST_Reserved_Field is R7FA4M1AB.UInt7;

   --  ECC Test Control Register
   type ECCETST_Register is record
      --  ECC Bypass Select
      TSTBYP   : ECCETST_TSTBYP_Field := R7FA4M1AB.SRAM.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved : ECCETST_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for ECCETST_Register use record
      TSTBYP   at 0 range 0 .. 0;
      Reserved at 0 range 1 .. 7;
   end record;

   --  Operation after Detection
   type ECCOAD_OAD_Field is
     (--  Non-maskable interrupt
      Val_0,
      --  Reset
      Val_1)
     with Size => 1;
   for ECCOAD_OAD_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype ECCOAD_Reserved_Field is R7FA4M1AB.UInt7;

   --  SRAM ECC Error Operation After Detection Register
   type ECCOAD_Register is record
      --  Operation after Detection
      OAD      : ECCOAD_OAD_Field := R7FA4M1AB.SRAM.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved : ECCOAD_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for ECCOAD_Register use record
      OAD      at 0 range 0 .. 0;
      Reserved at 0 range 1 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  SRAM Control
   type SRAM_Peripheral is record
      --  SRAM Parity Error Operation After Detection Register
      PARIOAD   : aliased PARIOAD_Register;
      --  SRAM Protection Register
      SRAMPRCR  : aliased SRAMPRCR_Register;
      --  ECC Operating Mode Control Register
      ECCMODE   : aliased ECCMODE_Register;
      --  ECC 2-Bit Error Status Register
      ECC2STS   : aliased ECC2STS_Register;
      --  ECC 1-Bit Error Information Update Enable Register
      ECC1STSEN : aliased ECC1STSEN_Register;
      --  ECC 1-Bit Error Status Register
      ECC1STS   : aliased ECC1STS_Register;
      --  ECC Protection Register
      ECCPRCR   : aliased ECCPRCR_Register;
      --  ECC Protection Register 2
      ECCPRCR2  : aliased ECCPRCR2_Register;
      --  ECC Test Control Register
      ECCETST   : aliased ECCETST_Register;
      --  SRAM ECC Error Operation After Detection Register
      ECCOAD    : aliased ECCOAD_Register;
   end record
     with Volatile;

   for SRAM_Peripheral use record
      PARIOAD   at 16#0# range 0 .. 7;
      SRAMPRCR  at 16#4# range 0 .. 7;
      ECCMODE   at 16#C0# range 0 .. 7;
      ECC2STS   at 16#C1# range 0 .. 7;
      ECC1STSEN at 16#C2# range 0 .. 7;
      ECC1STS   at 16#C3# range 0 .. 7;
      ECCPRCR   at 16#C4# range 0 .. 7;
      ECCPRCR2  at 16#D0# range 0 .. 7;
      ECCETST   at 16#D4# range 0 .. 7;
      ECCOAD    at 16#D8# range 0 .. 7;
   end record;

   --  SRAM Control
   SRAM_Periph : aliased SRAM_Peripheral
     with Import, Address => SRAM_Base;

end R7FA4M1AB.SRAM;
