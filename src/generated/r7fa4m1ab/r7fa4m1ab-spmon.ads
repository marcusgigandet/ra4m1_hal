pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB-ada.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  CPU Stack Pointer Monitor
package R7FA4M1AB.SPMON is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Operation after detection
   type MSPMPUOAD_OAD_Field is
     (--  Non-maskable interrupt
      Val_0,
      --  Reset.
      Val_1)
     with Size => 1;
   for MSPMPUOAD_OAD_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype MSPMPUOAD_Reserved_Field is R7FA4M1AB.UInt7;

   --  Write Keyword The data written to these bits are not stored.
   type MSPMPUOAD_KEY_Field is
     (--  Writing to the OAD bit is invalid.
      others_k,
      --  Writing to the OAD bit is valid, when the KEY bits are written 0xA5.
      Val_0xA5)
     with Size => 8;
   for MSPMPUOAD_KEY_Field use
     (others_k => 0,
      Val_0xA5 => 165);

   --  Stack Pointer Monitor Operation After Detection Register
   type MSPMPUOAD_Register is record
      --  Operation after detection
      OAD      : MSPMPUOAD_OAD_Field := R7FA4M1AB.SPMON.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved : MSPMPUOAD_Reserved_Field := 16#0#;
      --  Write-only. Write Keyword The data written to these bits are not
      --  stored.
      KEY      : MSPMPUOAD_KEY_Field := R7FA4M1AB.SPMON.others_k;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for MSPMPUOAD_Register use record
      OAD      at 0 range 0 .. 0;
      Reserved at 0 range 1 .. 7;
      KEY      at 0 range 8 .. 15;
   end record;

   --  Stack Pointer Monitor Enable
   type MSPMPUCTL_ENABLE_Field is
     (--  Stack pointer monitor is disabled
      Val_0,
      --  Stack pointer monitor is enabled.
      Val_1)
     with Size => 1;
   for MSPMPUCTL_ENABLE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype MSPMPUCTL_Reserved_Field is R7FA4M1AB.UInt7;

   --  Stack Pointer Monitor Error Flag
   type MSPMPUCTL_ERROR_Field is
     (--  Stack pointer has not overflowed or underflowed
      Val_0,
      --  Stack pointer has overflowed or underflowed
      Val_1)
     with Size => 1;
   for MSPMPUCTL_ERROR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Stack Pointer Monitor Access Control Register
   type MSPMPUCTL_Register is record
      --  Stack Pointer Monitor Enable
      ENABLE     : MSPMPUCTL_ENABLE_Field := R7FA4M1AB.SPMON.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved   : MSPMPUCTL_Reserved_Field := 16#0#;
      --  Stack Pointer Monitor Error Flag
      ERROR      : MSPMPUCTL_ERROR_Field := R7FA4M1AB.SPMON.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved_1 : MSPMPUCTL_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for MSPMPUCTL_Register use record
      ENABLE     at 0 range 0 .. 0;
      Reserved   at 0 range 1 .. 7;
      ERROR      at 0 range 8 .. 8;
      Reserved_1 at 0 range 9 .. 15;
   end record;

   --  Protection of register (MSPMPUAC, MSPMPUSA and MSPMPUSE)
   type MSPMPUPT_PROTECT_Field is
     (--  Stack Pointer Monitor register writing is possible.
      Val_0,
      --  Stack Pointer Monitor register writing is protected.
      Val_1)
     with Size => 1;
   for MSPMPUPT_PROTECT_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype MSPMPUPT_Reserved_Field is R7FA4M1AB.UInt7;

   --  Write Keyword The data written to these bits are not stored.
   type MSPMPUPT_KEY_Field is
     (--  Writing to the PROTECT bit is invalid.
      others_k,
      --  Writing to the PROTECT bit is valid, when the KEY bits are written 0xA5.
      Val_0xA5)
     with Size => 8;
   for MSPMPUPT_KEY_Field use
     (others_k => 0,
      Val_0xA5 => 165);

   --  Stack Pointer Monitor Protection Register
   type MSPMPUPT_Register is record
      --  Protection of register (MSPMPUAC, MSPMPUSA and MSPMPUSE)
      PROTECT  : MSPMPUPT_PROTECT_Field := R7FA4M1AB.SPMON.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved : MSPMPUPT_Reserved_Field := 16#0#;
      --  Write-only. Write Keyword The data written to these bits are not
      --  stored.
      KEY      : MSPMPUPT_KEY_Field := R7FA4M1AB.SPMON.others_k;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for MSPMPUPT_Register use record
      PROTECT  at 0 range 0 .. 0;
      Reserved at 0 range 1 .. 7;
      KEY      at 0 range 8 .. 15;
   end record;

   --  Operation after detection
   type PSPMPUOAD_OAD_Field is
     (--  Non-maskable interrupt
      Val_0,
      --  Reset.
      Val_1)
     with Size => 1;
   for PSPMPUOAD_OAD_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype PSPMPUOAD_Reserved_Field is R7FA4M1AB.UInt7;

   --  Key Code The data written to these bits are not stored.
   type PSPMPUOAD_KEY_Field is
     (--  Writing to the OAD bit is invalid.
      others_k,
      --  Writing to the OAD bit is valid, when the KEY bits are written 0xA5.
      Val_0xA5)
     with Size => 8;
   for PSPMPUOAD_KEY_Field use
     (others_k => 0,
      Val_0xA5 => 165);

   --  Stack Pointer Monitor Operation After Detection Register
   type PSPMPUOAD_Register is record
      --  Operation after detection
      OAD      : PSPMPUOAD_OAD_Field := R7FA4M1AB.SPMON.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved : PSPMPUOAD_Reserved_Field := 16#0#;
      --  Write-only. Key Code The data written to these bits are not stored.
      KEY      : PSPMPUOAD_KEY_Field := R7FA4M1AB.SPMON.others_k;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for PSPMPUOAD_Register use record
      OAD      at 0 range 0 .. 0;
      Reserved at 0 range 1 .. 7;
      KEY      at 0 range 8 .. 15;
   end record;

   --  Stack Pointer Monitor Enable
   type PSPMPUCTL_ENABLE_Field is
     (--  Stack pointer monitor is disabled
      Val_0,
      --  Stack pointer monitor is enabled
      Val_1)
     with Size => 1;
   for PSPMPUCTL_ENABLE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype PSPMPUCTL_Reserved_Field is R7FA4M1AB.UInt7;

   --  Stack Pointer Monitor Error Flag
   type PSPMPUCTL_ERROR_Field is
     (--  Stack pointer has not overflowed or underflowed
      Val_0,
      --  Stack pointer has overflowed or underflowed
      Val_1)
     with Size => 1;
   for PSPMPUCTL_ERROR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Stack Pointer Monitor Access Control Register
   type PSPMPUCTL_Register is record
      --  Stack Pointer Monitor Enable
      ENABLE     : PSPMPUCTL_ENABLE_Field := R7FA4M1AB.SPMON.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved   : PSPMPUCTL_Reserved_Field := 16#0#;
      --  Stack Pointer Monitor Error Flag
      ERROR      : PSPMPUCTL_ERROR_Field := R7FA4M1AB.SPMON.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved_1 : PSPMPUCTL_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for PSPMPUCTL_Register use record
      ENABLE     at 0 range 0 .. 0;
      Reserved   at 0 range 1 .. 7;
      ERROR      at 0 range 8 .. 8;
      Reserved_1 at 0 range 9 .. 15;
   end record;

   --  Protection register (PSPMPUAC, PSPMPUSA and PSPMPUSE)
   type PSPMPUPT_PROTECT_Field is
     (--  Stack Pointer Monitor register writing is possible.
      Val_0,
      --  Stack Pointer Monitor register writing is protected.
      Val_1)
     with Size => 1;
   for PSPMPUPT_PROTECT_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype PSPMPUPT_Reserved_Field is R7FA4M1AB.UInt7;

   --  Key Code The data written to these bits are not stored.
   type PSPMPUPT_KEY_Field is
     (--  Writing to the PROTECT bit is invalid.
      others_k,
      --  Writing to the PROTECT bit is valid, when the KEY bits are written 0xA5.
      Val_0xA5)
     with Size => 8;
   for PSPMPUPT_KEY_Field use
     (others_k => 0,
      Val_0xA5 => 165);

   --  Stack Pointer Monitor Protection Register
   type PSPMPUPT_Register is record
      --  Protection register (PSPMPUAC, PSPMPUSA and PSPMPUSE)
      PROTECT  : PSPMPUPT_PROTECT_Field := R7FA4M1AB.SPMON.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved : PSPMPUPT_Reserved_Field := 16#0#;
      --  Write-only. Key Code The data written to these bits are not stored.
      KEY      : PSPMPUPT_KEY_Field := R7FA4M1AB.SPMON.others_k;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for PSPMPUPT_Register use record
      PROTECT  at 0 range 0 .. 0;
      Reserved at 0 range 1 .. 7;
      KEY      at 0 range 8 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  CPU Stack Pointer Monitor
   type SPMON_Peripheral is record
      --  Stack Pointer Monitor Operation After Detection Register
      MSPMPUOAD : aliased MSPMPUOAD_Register;
      --  Stack Pointer Monitor Access Control Register
      MSPMPUCTL : aliased MSPMPUCTL_Register;
      --  Stack Pointer Monitor Protection Register
      MSPMPUPT  : aliased MSPMPUPT_Register;
      --  Main Stack Pointer (MSP) Monitor Start Address Register
      MSPMPUSA  : aliased R7FA4M1AB.UInt32;
      --  Main Stack Pointer (MSP) Monitor End Address Register
      MSPMPUEA  : aliased R7FA4M1AB.UInt32;
      --  Stack Pointer Monitor Operation After Detection Register
      PSPMPUOAD : aliased PSPMPUOAD_Register;
      --  Stack Pointer Monitor Access Control Register
      PSPMPUCTL : aliased PSPMPUCTL_Register;
      --  Stack Pointer Monitor Protection Register
      PSPMPUPT  : aliased PSPMPUPT_Register;
      --  Process Stack Pointer (PSP) Monitor Start Address Register
      PSPMPUSA  : aliased R7FA4M1AB.UInt32;
      --  Process Stack Pointer (PSP) Monitor End Address Register
      PSPMPUEA  : aliased R7FA4M1AB.UInt32;
   end record
     with Volatile;

   for SPMON_Peripheral use record
      MSPMPUOAD at 16#0# range 0 .. 15;
      MSPMPUCTL at 16#4# range 0 .. 15;
      MSPMPUPT  at 16#6# range 0 .. 15;
      MSPMPUSA  at 16#8# range 0 .. 31;
      MSPMPUEA  at 16#C# range 0 .. 31;
      PSPMPUOAD at 16#10# range 0 .. 15;
      PSPMPUCTL at 16#14# range 0 .. 15;
      PSPMPUPT  at 16#16# range 0 .. 15;
      PSPMPUSA  at 16#18# range 0 .. 31;
      PSPMPUEA  at 16#1C# range 0 .. 31;
   end record;

   --  CPU Stack Pointer Monitor
   SPMON_Periph : aliased SPMON_Peripheral
     with Import, Address => SPMON_Base;

end R7FA4M1AB.SPMON;
