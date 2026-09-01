pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB-ada.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  Bus Master MPU
package R7FA4M1AB.MMPU is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Master Group enable
   type MMPUCTLA_ENABLE_Field is
     (--  Master Group A disabled
      Val_0,
      --  Master Group A enabled.
      Val_1)
     with Size => 1;
   for MMPUCTLA_ENABLE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Operation after detection
   type MMPUCTLA_OAD_Field is
     (--  Non-maskable interrupt.
      Val_0,
      --  Internal reset.
      Val_1)
     with Size => 1;
   for MMPUCTLA_OAD_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype MMPUCTLA_Reserved_Field is R7FA4M1AB.UInt6;
   subtype MMPUCTLA_KEY_Field is R7FA4M1AB.Byte;

   --  Bus Master MPU Control Register A
   type MMPUCTLA_Register is record
      --  Master Group enable
      ENABLE   : MMPUCTLA_ENABLE_Field := R7FA4M1AB.MMPU.Val_0;
      --  Operation after detection
      OAD      : MMPUCTLA_OAD_Field := R7FA4M1AB.MMPU.Val_0;
      --  These bits are read as 000000. The write value should be 000000.
      Reserved : MMPUCTLA_Reserved_Field := 16#0#;
      --  Write-only. Key Code These bits are used to enable or disable writing
      --  of the OAD and ENABLE bit.
      KEY      : MMPUCTLA_KEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for MMPUCTLA_Register use record
      ENABLE   at 0 range 0 .. 0;
      OAD      at 0 range 1 .. 1;
      Reserved at 0 range 2 .. 7;
      KEY      at 0 range 8 .. 15;
   end record;

   --  Protection of register (MMPUSAn, MMPUEAn and MMPUACAn)
   type MMPUPTA_PROTECT_Field is
     (--  All Bus Master MPU Group A register writing is possible.
      Val_0,
      --  All Bus Master MPU Group A register writing is protected. Read is possible.
      Val_1)
     with Size => 1;
   for MMPUPTA_PROTECT_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype MMPUPTA_Reserved_Field is R7FA4M1AB.UInt7;

   --  Write Keyword The data written to these bits are not stored.
   type MMPUPTA_KEY_Field is
     (--  Writing to the PROTECT bit is invalid.
      others_k,
      --  Writing to the PROTECT bit is valid, when the KEY bits are written 0xA5.
      Val_0xA5)
     with Size => 8;
   for MMPUPTA_KEY_Field use
     (others_k => 0,
      Val_0xA5 => 165);

   --  Group A Protection of Register
   type MMPUPTA_Register is record
      --  Protection of register (MMPUSAn, MMPUEAn and MMPUACAn)
      PROTECT  : MMPUPTA_PROTECT_Field := R7FA4M1AB.MMPU.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved : MMPUPTA_Reserved_Field := 16#0#;
      --  Write-only. Write Keyword The data written to these bits are not
      --  stored.
      KEY      : MMPUPTA_KEY_Field := R7FA4M1AB.MMPU.others_k;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for MMPUPTA_Register use record
      PROTECT  at 0 range 0 .. 0;
      Reserved at 0 range 1 .. 7;
      KEY      at 0 range 8 .. 15;
   end record;

   --  Region enable
   type MMPUACA0_ENABLE_Field is
     (--  Group m Region n unit is disabled
      Val_0,
      --  Group m Region n unit is enabled
      Val_1)
     with Size => 1;
   for MMPUACA0_ENABLE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Read protection
   type MMPUACA0_RP_Field is
     (--  Read permission
      Val_0,
      --  Read protection
      Val_1)
     with Size => 1;
   for MMPUACA0_RP_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Write protection
   type MMPUACA0_WP_Field is
     (--  Write permission
      Val_0,
      --  Write protection
      Val_1)
     with Size => 1;
   for MMPUACA0_WP_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype MMPUACA_Reserved_Field is R7FA4M1AB.UInt13;

   --  Group A Region %s Access Control Register
   type MMPUACA_Register is record
      --  Region enable
      ENABLE   : MMPUACA0_ENABLE_Field := R7FA4M1AB.MMPU.Val_0;
      --  Read protection
      RP       : MMPUACA0_RP_Field := R7FA4M1AB.MMPU.Val_0;
      --  Write protection
      WP       : MMPUACA0_WP_Field := R7FA4M1AB.MMPU.Val_0;
      --  These bits are read as 0000000000000. The write value should be
      --  0000000000000.
      Reserved : MMPUACA_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for MMPUACA_Register use record
      ENABLE   at 0 range 0 .. 0;
      RP       at 0 range 1 .. 1;
      WP       at 0 range 2 .. 2;
      Reserved at 0 range 3 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Bus Master MPU
   type MMPU_Peripheral is record
      --  Bus Master MPU Control Register A
      MMPUCTLA  : aliased MMPUCTLA_Register;
      --  Group A Protection of Register
      MMPUPTA   : aliased MMPUPTA_Register;
      --  Group A Region %s Access Control Register
      MMPUACA0  : aliased MMPUACA_Register;
      --  Group A Region %s Start Address Register
      MMPUSA0   : aliased R7FA4M1AB.UInt32;
      --  Group A Region %s End Address Register
      MMPUEA0   : aliased R7FA4M1AB.UInt32;
      --  Group A Region %s Access Control Register
      MMPUACA1  : aliased MMPUACA_Register;
      --  Group A Region %s Start Address Register
      MMPUSA1   : aliased R7FA4M1AB.UInt32;
      --  Group A Region %s End Address Register
      MMPUEA1   : aliased R7FA4M1AB.UInt32;
      --  Group A Region %s Access Control Register
      MMPUACA2  : aliased MMPUACA_Register;
      --  Group A Region %s Start Address Register
      MMPUSA2   : aliased R7FA4M1AB.UInt32;
      --  Group A Region %s End Address Register
      MMPUEA2   : aliased R7FA4M1AB.UInt32;
      --  Group A Region %s Access Control Register
      MMPUACA3  : aliased MMPUACA_Register;
      --  Group A Region %s Start Address Register
      MMPUSA3   : aliased R7FA4M1AB.UInt32;
      --  Group A Region %s End Address Register
      MMPUEA3   : aliased R7FA4M1AB.UInt32;
      --  Group A Region %s Access Control Register
      MMPUACA4  : aliased MMPUACA_Register;
      --  Group A Region %s Start Address Register
      MMPUSA4   : aliased R7FA4M1AB.UInt32;
      --  Group A Region %s End Address Register
      MMPUEA4   : aliased R7FA4M1AB.UInt32;
      --  Group A Region %s Access Control Register
      MMPUACA5  : aliased MMPUACA_Register;
      --  Group A Region %s Start Address Register
      MMPUSA5   : aliased R7FA4M1AB.UInt32;
      --  Group A Region %s End Address Register
      MMPUEA5   : aliased R7FA4M1AB.UInt32;
      --  Group A Region %s Access Control Register
      MMPUACA6  : aliased MMPUACA_Register;
      --  Group A Region %s Start Address Register
      MMPUSA6   : aliased R7FA4M1AB.UInt32;
      --  Group A Region %s End Address Register
      MMPUEA6   : aliased R7FA4M1AB.UInt32;
      --  Group A Region %s Access Control Register
      MMPUACA7  : aliased MMPUACA_Register;
      --  Group A Region %s Start Address Register
      MMPUSA7   : aliased R7FA4M1AB.UInt32;
      --  Group A Region %s End Address Register
      MMPUEA7   : aliased R7FA4M1AB.UInt32;
      --  Group A Region %s Access Control Register
      MMPUACA8  : aliased MMPUACA_Register;
      --  Group A Region %s Start Address Register
      MMPUSA8   : aliased R7FA4M1AB.UInt32;
      --  Group A Region %s End Address Register
      MMPUEA8   : aliased R7FA4M1AB.UInt32;
      --  Group A Region %s Access Control Register
      MMPUACA9  : aliased MMPUACA_Register;
      --  Group A Region %s Start Address Register
      MMPUSA9   : aliased R7FA4M1AB.UInt32;
      --  Group A Region %s End Address Register
      MMPUEA9   : aliased R7FA4M1AB.UInt32;
      --  Group A Region %s Access Control Register
      MMPUACA10 : aliased MMPUACA_Register;
      --  Group A Region %s Start Address Register
      MMPUSA10  : aliased R7FA4M1AB.UInt32;
      --  Group A Region %s End Address Register
      MMPUEA10  : aliased R7FA4M1AB.UInt32;
      --  Group A Region %s Access Control Register
      MMPUACA11 : aliased MMPUACA_Register;
      --  Group A Region %s Start Address Register
      MMPUSA11  : aliased R7FA4M1AB.UInt32;
      --  Group A Region %s End Address Register
      MMPUEA11  : aliased R7FA4M1AB.UInt32;
      --  Group A Region %s Access Control Register
      MMPUACA12 : aliased MMPUACA_Register;
      --  Group A Region %s Start Address Register
      MMPUSA12  : aliased R7FA4M1AB.UInt32;
      --  Group A Region %s End Address Register
      MMPUEA12  : aliased R7FA4M1AB.UInt32;
      --  Group A Region %s Access Control Register
      MMPUACA13 : aliased MMPUACA_Register;
      --  Group A Region %s Start Address Register
      MMPUSA13  : aliased R7FA4M1AB.UInt32;
      --  Group A Region %s End Address Register
      MMPUEA13  : aliased R7FA4M1AB.UInt32;
      --  Group A Region %s Access Control Register
      MMPUACA14 : aliased MMPUACA_Register;
      --  Group A Region %s Start Address Register
      MMPUSA14  : aliased R7FA4M1AB.UInt32;
      --  Group A Region %s End Address Register
      MMPUEA14  : aliased R7FA4M1AB.UInt32;
      --  Group A Region %s Access Control Register
      MMPUACA15 : aliased MMPUACA_Register;
      --  Group A Region %s Start Address Register
      MMPUSA15  : aliased R7FA4M1AB.UInt32;
      --  Group A Region %s End Address Register
      MMPUEA15  : aliased R7FA4M1AB.UInt32;
   end record
     with Volatile;

   for MMPU_Peripheral use record
      MMPUCTLA  at 16#0# range 0 .. 15;
      MMPUPTA   at 16#102# range 0 .. 15;
      MMPUACA0  at 16#200# range 0 .. 15;
      MMPUSA0   at 16#204# range 0 .. 31;
      MMPUEA0   at 16#208# range 0 .. 31;
      MMPUACA1  at 16#210# range 0 .. 15;
      MMPUSA1   at 16#214# range 0 .. 31;
      MMPUEA1   at 16#218# range 0 .. 31;
      MMPUACA2  at 16#220# range 0 .. 15;
      MMPUSA2   at 16#224# range 0 .. 31;
      MMPUEA2   at 16#228# range 0 .. 31;
      MMPUACA3  at 16#230# range 0 .. 15;
      MMPUSA3   at 16#234# range 0 .. 31;
      MMPUEA3   at 16#238# range 0 .. 31;
      MMPUACA4  at 16#240# range 0 .. 15;
      MMPUSA4   at 16#244# range 0 .. 31;
      MMPUEA4   at 16#248# range 0 .. 31;
      MMPUACA5  at 16#250# range 0 .. 15;
      MMPUSA5   at 16#254# range 0 .. 31;
      MMPUEA5   at 16#258# range 0 .. 31;
      MMPUACA6  at 16#260# range 0 .. 15;
      MMPUSA6   at 16#264# range 0 .. 31;
      MMPUEA6   at 16#268# range 0 .. 31;
      MMPUACA7  at 16#270# range 0 .. 15;
      MMPUSA7   at 16#274# range 0 .. 31;
      MMPUEA7   at 16#278# range 0 .. 31;
      MMPUACA8  at 16#280# range 0 .. 15;
      MMPUSA8   at 16#284# range 0 .. 31;
      MMPUEA8   at 16#288# range 0 .. 31;
      MMPUACA9  at 16#290# range 0 .. 15;
      MMPUSA9   at 16#294# range 0 .. 31;
      MMPUEA9   at 16#298# range 0 .. 31;
      MMPUACA10 at 16#2A0# range 0 .. 15;
      MMPUSA10  at 16#2A4# range 0 .. 31;
      MMPUEA10  at 16#2A8# range 0 .. 31;
      MMPUACA11 at 16#2B0# range 0 .. 15;
      MMPUSA11  at 16#2B4# range 0 .. 31;
      MMPUEA11  at 16#2B8# range 0 .. 31;
      MMPUACA12 at 16#2C0# range 0 .. 15;
      MMPUSA12  at 16#2C4# range 0 .. 31;
      MMPUEA12  at 16#2C8# range 0 .. 31;
      MMPUACA13 at 16#2D0# range 0 .. 15;
      MMPUSA13  at 16#2D4# range 0 .. 31;
      MMPUEA13  at 16#2D8# range 0 .. 31;
      MMPUACA14 at 16#2E0# range 0 .. 15;
      MMPUSA14  at 16#2E4# range 0 .. 31;
      MMPUEA14  at 16#2E8# range 0 .. 31;
      MMPUACA15 at 16#2F0# range 0 .. 15;
      MMPUSA15  at 16#2F4# range 0 .. 31;
      MMPUEA15  at 16#2F8# range 0 .. 31;
   end record;

   --  Bus Master MPU
   MMPU_Periph : aliased MMPU_Peripheral
     with Import, Address => MMPU_Base;

end R7FA4M1AB.MMPU;
