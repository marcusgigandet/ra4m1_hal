--
-- Copyright (C) 2026 Marcus Gigandet
--
-- SPDX-License-Identifier: LGPL-3.0-or-later
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  Output Phase Switching Controller

package R7FA4M1AB.GPT_OPS is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype OPSCR_UF_Field is R7FA4M1AB.Bit;
   subtype OPSCR_VF_Field is R7FA4M1AB.Bit;
   subtype OPSCR_WF_Field is R7FA4M1AB.Bit;
   subtype OPSCR_Reserved_Field is R7FA4M1AB.Bit;
   subtype OPSCR_U_Field is R7FA4M1AB.Bit;
   subtype OPSCR_V_Field is R7FA4M1AB.Bit;
   subtype OPSCR_W_Field is R7FA4M1AB.Bit;

   --  Enable-Phase Output Control
   type OPSCR_EN_Field is
     (--  Not Output(Hi-Z external terminals).
     Val_0,
      --  Output
      Val_1)
   with Size => 1;
   for OPSCR_EN_Field use (Val_0 => 0, Val_1 => 1);

   subtype OPSCR_Reserved_Field_1 is R7FA4M1AB.UInt7;

   --  External Feedback Signal Enable This bit selects the input phase from
   --  the software settings and external input.
   type OPSCR_FB_Field is
     (--  Select the external input.
     Val_0,
      --  Select the soft setting(OPSCR.UF, VF, WF).
      Val_1)
   with Size => 1;
   for OPSCR_FB_Field use (Val_0 => 0, Val_1 => 1);

   --  Positive-Phase Output (P) Control
   type OPSCR_P_Field is
     (--  Level signal output
     Val_0,
      --  PWM signal output (PWM of GPT0)
      Val_1)
   with Size => 1;
   for OPSCR_P_Field use (Val_0 => 0, Val_1 => 1);

   --  Negative-Phase Output (N) Control
   type OPSCR_N_Field is
     (--  Level signal output
     Val_0,
      --  PWM signal output (PWM of GPT0)
      Val_1)
   with Size => 1;
   for OPSCR_N_Field use (Val_0 => 0, Val_1 => 1);

   --  Invert-Phase Output Control
   type OPSCR_INV_Field is
     (--  Positive Logic (Active High)output
     Val_0,
      --  Negative Logic (Active Low)output
      Val_1)
   with Size => 1;
   for OPSCR_INV_Field use (Val_0 => 0, Val_1 => 1);

   --  Output phase rotation direction reversal
   type OPSCR_RV_Field is
     (--  U/V/W-Phase output
     Val_0,
      --  Output to reverse the V / W-phase
      Val_1)
   with Size => 1;
   for OPSCR_RV_Field use (Val_0 => 0, Val_1 => 1);

   --  Input phase alignment
   type OPSCR_ALIGN_Field is
     (--  Input phase is aligned to PCLK.
     Val_0,
      --  Input phase is aligned PWM.
      Val_1)
   with Size => 1;
   for OPSCR_ALIGN_Field use (Val_0 => 0, Val_1 => 1);

   subtype OPSCR_Reserved_Field_2 is R7FA4M1AB.UInt2;

   --  Output disabled source selection
   type OPSCR_GRP_Field is
     (--  Select Group A output disable source
     Val_00,
      --  Select Group B output disable source
      Val_01,
      --  Setting prohibited
      others_k)
   with Size => 2;
   for OPSCR_GRP_Field use (Val_00 => 0, Val_01 => 1, others_k => 3);

   --  Group output disable function
   type OPSCR_GODF_Field is
     (--  This bit function is ignored.
     Val_0,
      --  Group disable will clear OPSCR.EN Bit.
      Val_1)
   with Size => 1;
   for OPSCR_GODF_Field use (Val_0 => 0, Val_1 => 1);

   --  External Input Noise Filter Enable
   type OPSCR_NFEN_Field is
     (--  Do not use a noise filter to the external input.
     Val_0,
      --  Use a noise filter to the external input.
      Val_1)
   with Size => 1;
   for OPSCR_NFEN_Field use (Val_0 => 0, Val_1 => 1);

   --  External Input Noise Filter Clock selection Noise filter sampling clock
   --  setting of the external input.
   type OPSCR_NFCS_Field is
     (--  PCLK/1
     Val_00,
      --  PCLK/4
      Val_01,
      --  PCLK/16
      Val_10,
      --  PCLK/64
      Val_11)
   with Size => 2;
   for OPSCR_NFCS_Field use
     (Val_00 => 0, Val_01 => 1, Val_10 => 2, Val_11 => 3);

   --  Output Phase Switching Control Register
   type OPSCR_Register is record
      --  Input Phase Soft Setting WF This bit sets the input phase by the
      --  software settings. This bit setting is valid when the OPSCR.FB bit =
      --  1.
      UF         : OPSCR_UF_Field := 16#0#;
      --  Input Phase Soft Setting VF This bit sets the input phase by the
      --  software settings. This bit setting is valid when the OPSCR.FB bit =
      --  1.
      VF         : OPSCR_VF_Field := 16#0#;
      --  Input Phase Soft Setting UF This bit sets the input phase by the
      --  software settings. This bit setting is valid when the OPSCR.FB bit =
      --  1.
      WF         : OPSCR_WF_Field := 16#0#;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : OPSCR_Reserved_Field := 16#0#;
      --  Read-only. Input U-Phase Monitor This bit monitors the state of the
      --  input phase. OPSCR.FB=0:External input monitoring by PCLK
      --  OPSCR.FB=1:Software settings (UF/VF/WF)
      U          : OPSCR_U_Field := 16#0#;
      --  Read-only. Input V-Phase Monitor This bit monitors the state of the
      --  input phase. OPSCR.FB=0:External input monitoring by PCLK
      --  OPSCR.FB=1:Software settings (UF/VF/WF)
      V          : OPSCR_V_Field := 16#0#;
      --  Read-only. Input W-Phase Monitor This bit monitors the state of the
      --  input phase. OPSCR.FB=0:External input monitoring by PCLK
      --  OPSCR.FB=1:Software settings (UF/VF/WF)
      W          : OPSCR_W_Field := 16#0#;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : OPSCR_Reserved_Field := 16#0#;
      --  Enable-Phase Output Control
      EN         : OPSCR_EN_Field := R7FA4M1AB.GPT_OPS.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved_2 : OPSCR_Reserved_Field_1 := 16#0#;
      --  External Feedback Signal Enable This bit selects the input phase from
      --  the software settings and external input.
      FB         : OPSCR_FB_Field := R7FA4M1AB.GPT_OPS.Val_0;
      --  Positive-Phase Output (P) Control
      P          : OPSCR_P_Field := R7FA4M1AB.GPT_OPS.Val_0;
      --  Negative-Phase Output (N) Control
      N          : OPSCR_N_Field := R7FA4M1AB.GPT_OPS.Val_0;
      --  Invert-Phase Output Control
      INV        : OPSCR_INV_Field := R7FA4M1AB.GPT_OPS.Val_0;
      --  Output phase rotation direction reversal
      RV         : OPSCR_RV_Field := R7FA4M1AB.GPT_OPS.Val_0;
      --  Input phase alignment
      ALIGN      : OPSCR_ALIGN_Field := R7FA4M1AB.GPT_OPS.Val_0;
      --  These bits are read as 00. The write value should be 00.
      Reserved_3 : OPSCR_Reserved_Field_2 := 16#0#;
      --  Output disabled source selection
      GRP        : OPSCR_GRP_Field := R7FA4M1AB.GPT_OPS.Val_00;
      --  Group output disable function
      GODF       : OPSCR_GODF_Field := R7FA4M1AB.GPT_OPS.Val_0;
      --  These bits are read as 00. The write value should be 00.
      Reserved_4 : OPSCR_Reserved_Field_2 := 16#0#;
      --  External Input Noise Filter Enable
      NFEN       : OPSCR_NFEN_Field := R7FA4M1AB.GPT_OPS.Val_0;
      --  External Input Noise Filter Clock selection Noise filter sampling
      --  clock setting of the external input.
      NFCS       : OPSCR_NFCS_Field := R7FA4M1AB.GPT_OPS.Val_00;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => System.Low_Order_First;

   for OPSCR_Register use
     record
       UF at 0 range 0 .. 0;
       VF at 0 range 1 .. 1;
       WF at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       U at 0 range 4 .. 4;
       V at 0 range 5 .. 5;
       W at 0 range 6 .. 6;
       Reserved_1 at 0 range 7 .. 7;
       EN at 0 range 8 .. 8;
       Reserved_2 at 0 range 9 .. 15;
       FB at 0 range 16 .. 16;
       P at 0 range 17 .. 17;
       N at 0 range 18 .. 18;
       INV at 0 range 19 .. 19;
       RV at 0 range 20 .. 20;
       ALIGN at 0 range 21 .. 21;
       Reserved_3 at 0 range 22 .. 23;
       GRP at 0 range 24 .. 25;
       GODF at 0 range 26 .. 26;
       Reserved_4 at 0 range 27 .. 28;
       NFEN at 0 range 29 .. 29;
       NFCS at 0 range 30 .. 31;
     end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Output Phase Switching Controller
   type GPT_OPS_Peripheral is record
      --  Output Phase Switching Control Register
      OPSCR : aliased OPSCR_Register;
   end record
   with Volatile;

   for GPT_OPS_Peripheral use
     record
       OPSCR at 0 range 0 .. 31;
     end record;

   --  Output Phase Switching Controller
   GPT_OPS_Periph : aliased GPT_OPS_Peripheral
   with Import, Address => GPT_OPS_Base;

end R7FA4M1AB.GPT_OPS;
