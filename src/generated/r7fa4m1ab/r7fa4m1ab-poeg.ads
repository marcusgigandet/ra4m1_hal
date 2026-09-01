pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB-ada.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  Port Output Enable Module for GPT
package R7FA4M1AB.POEG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Port Input Detection Flag
   type POEGG0_PIDF_Field is
     (--  No output-disable request from the GTETRGn pin has occurred
      Val_0,
      --  Output-disable request from the GTETRGn pin occurred.
      Val_1)
     with Size => 1;
   for POEGG0_PIDF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Output-disable Request Detection Flag from GPT
   type POEGG0_IOCF_Field is
     (--  No output-disable request from the GPT disable request has occurred
      Val_0,
      --  Output-disable request from the GPT disable request occurred.
      Val_1)
     with Size => 1;
   for POEGG0_IOCF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Oscillation Stop Detection Flag
   type POEGG0_OSTPF_Field is
     (--  No output-disable request from oscillation stop detection has occurred
      Val_0,
      --  Output-disable request from oscillation stop detection occurred.
      Val_1)
     with Size => 1;
   for POEGG0_OSTPF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Software Stop Flag
   type POEGG0_SSF_Field is
     (--  No output-disable request from software has occurred
      Val_0,
      --  Output-disable request from software occurred.
      Val_1)
     with Size => 1;
   for POEGG0_SSF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Port Input Detection Enable Note: Can be modified only once after a
   --  reset.
   type POEGG0_PIDE_Field is
     (--  Output-disable request from the GTETRG pins disabled
      Val_0,
      --  Output-disable request from the GTETRG pins enabled.
      Val_1)
     with Size => 1;
   for POEGG0_PIDE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Output-disable Request Enable from GPT Note: Can be modified only once
   --  after a reset.
   type POEGG0_IOCE_Field is
     (--  Output-disable request from the GPT disable request disabled
      Val_0,
      --  Output-disable request from the GPT disable request enabled.
      Val_1)
     with Size => 1;
   for POEGG0_IOCE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Oscillation Stop Detection Enable Note: Can be modified only once after
   --  a reset.
   type POEGG0_OSTPE_Field is
     (--  A output-disable request from the oscillation stop detection disabled.
      Val_0,
      --  A output-disable request from the oscillation stop detection enabled.
      Val_1)
     with Size => 1;
   for POEGG0_OSTPE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTETRG Input Status Flag
   type POEGG0_ST_Field is
     (--  GTETRG input after filtering is 0.
      Val_0,
      --  GTETRG input after filtering is 1.
      Val_1)
     with Size => 1;
   for POEGG0_ST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype POEGG_Reserved_Field is R7FA4M1AB.UInt11;

   --  GTETRG Input Reverse
   type POEGG0_INV_Field is
     (--  GTETRG Input
      Val_0,
      --  GTETRG Input Reversed.
      Val_1)
     with Size => 1;
   for POEGG0_INV_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Noise Filter Enable
   type POEGG0_NFEN_Field is
     (--  Filtering noise disabled
      Val_0,
      --  Filtering noise enabled
      Val_1)
     with Size => 1;
   for POEGG0_NFEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Noise Filter Clock Select
   type POEGG0_NFCS_Field is
     (--  Sampling GTETRG pin input level for three times in every PCLKB.
      Val_00,
      --  Sampling GTETRG pin input level for three times in every PCLKB /8.
      Val_01,
      --  Sampling GTETRG pin input level for three times in every PCLKB /32.
      Val_10,
      --  Sampling GTETRG pin input level for three times in every PCLKB /128.
      Val_11)
     with Size => 2;
   for POEGG0_NFCS_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   --  POEG Group %s Setting Register
   type POEGG_Register is record
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Port Input Detection Flag
      PIDF          : POEGG0_PIDF_Field := R7FA4M1AB.POEG.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Output-disable Request Detection Flag from GPT
      IOCF          : POEGG0_IOCF_Field := R7FA4M1AB.POEG.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Oscillation Stop Detection Flag
      OSTPF         : POEGG0_OSTPF_Field := R7FA4M1AB.POEG.Val_0;
      --  Software Stop Flag
      SSF           : POEGG0_SSF_Field := R7FA4M1AB.POEG.Val_0;
      --  Port Input Detection Enable Note: Can be modified only once after a
      --  reset.
      PIDE          : POEGG0_PIDE_Field := R7FA4M1AB.POEG.Val_0;
      --  Output-disable Request Enable from GPT Note: Can be modified only
      --  once after a reset.
      IOCE          : POEGG0_IOCE_Field := R7FA4M1AB.POEG.Val_0;
      --  Oscillation Stop Detection Enable Note: Can be modified only once
      --  after a reset.
      OSTPE         : POEGG0_OSTPE_Field := R7FA4M1AB.POEG.Val_0;
      --  unspecified
      Reserved_7_15 : R7FA4M1AB.UInt9 := 16#0#;
      --  Read-only. GTETRG Input Status Flag
      ST            : POEGG0_ST_Field := R7FA4M1AB.POEG.Val_0;
      --  These bits are read as 00000000000. The write value should be
      --  00000000000.
      Reserved      : POEGG_Reserved_Field := 16#0#;
      --  GTETRG Input Reverse
      INV           : POEGG0_INV_Field := R7FA4M1AB.POEG.Val_0;
      --  Noise Filter Enable
      NFEN          : POEGG0_NFEN_Field := R7FA4M1AB.POEG.Val_0;
      --  Noise Filter Clock Select
      NFCS          : POEGG0_NFCS_Field := R7FA4M1AB.POEG.Val_00;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for POEGG_Register use record
      PIDF          at 0 range 0 .. 0;
      IOCF          at 0 range 1 .. 1;
      OSTPF         at 0 range 2 .. 2;
      SSF           at 0 range 3 .. 3;
      PIDE          at 0 range 4 .. 4;
      IOCE          at 0 range 5 .. 5;
      OSTPE         at 0 range 6 .. 6;
      Reserved_7_15 at 0 range 7 .. 15;
      ST            at 0 range 16 .. 16;
      Reserved      at 0 range 17 .. 27;
      INV           at 0 range 28 .. 28;
      NFEN          at 0 range 29 .. 29;
      NFCS          at 0 range 30 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Port Output Enable Module for GPT
   type POEG_Peripheral is record
      --  POEG Group %s Setting Register
      POEGG0 : aliased POEGG_Register;
      --  POEG Group %s Setting Register
      POEGG1 : aliased POEGG_Register;
   end record
     with Volatile;

   for POEG_Peripheral use record
      POEGG0 at 16#0# range 0 .. 31;
      POEGG1 at 16#100# range 0 .. 31;
   end record;

   --  Port Output Enable Module for GPT
   POEG_Periph : aliased POEG_Peripheral
     with Import, Address => POEG_Base;

end R7FA4M1AB.POEG;
