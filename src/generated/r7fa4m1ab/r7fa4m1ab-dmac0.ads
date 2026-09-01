pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB-ada.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  Direct memory access controller 0
package R7FA4M1AB.DMAC0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype DMCRA_DMCRAL_Field is R7FA4M1AB.UInt16;
   subtype DMCRA_DMCRAH_Field is R7FA4M1AB.UInt10;
   subtype DMCRA_Reserved_Field is R7FA4M1AB.UInt6;

   --  DMA Transfer Count Register
   type DMCRA_Register is record
      --  Lower bits of transfer count
      DMCRAL   : DMCRA_DMCRAL_Field := 16#0#;
      --  Upper bits of transfer count
      DMCRAH   : DMCRA_DMCRAH_Field := 16#0#;
      --  These bits are read as 000000. The write value should be 000000.
      Reserved : DMCRA_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMCRA_Register use record
      DMCRAL   at 0 range 0 .. 15;
      DMCRAH   at 0 range 16 .. 25;
      Reserved at 0 range 26 .. 31;
   end record;

   --  Transfer Request Source Select
   type DMTMD_DCTG_Field is
     (--  Software
      Val_00,
      --  Interrupts*1 from peripheral modules or external interrupt input pins
      Val_01,
      --  Setting prohibited
      Val_10,
      --  Setting prohibited
      Val_11)
     with Size => 2;
   for DMTMD_DCTG_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   subtype DMTMD_Reserved_Field is R7FA4M1AB.UInt6;

   --  Transfer Data Size Select
   type DMTMD_SZ_Field is
     (--  8 bits
      Val_00,
      --  16 bits
      Val_01,
      --  32 bits
      Val_10,
      --  Setting prohibited
      Val_11)
     with Size => 2;
   for DMTMD_SZ_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   subtype DMTMD_Reserved_Field_1 is R7FA4M1AB.UInt2;

   --  Repeat Area Select
   type DMTMD_DTS_Field is
     (--  The destination is specified as the repeat area or block area.
      Val_00,
      --  The source is specified as the repeat area or block area.
      Val_01,
      --  The repeat area or block area is not specified.
      Val_10,
      --  Setting prohibited
      Val_11)
     with Size => 2;
   for DMTMD_DTS_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   --  Transfer Mode Select
   type DMTMD_MD_Field is
     (--  Normal transfer
      Val_00,
      --  Repeat transfer
      Val_01,
      --  Block transfer
      Val_10,
      --  Setting prohibited
      Val_11)
     with Size => 2;
   for DMTMD_MD_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   --  DMA Transfer Mode Register
   type DMTMD_Register is record
      --  Transfer Request Source Select
      DCTG       : DMTMD_DCTG_Field := R7FA4M1AB.DMAC0.Val_00;
      --  These bits are read as 000000. The write value should be 000000.
      Reserved   : DMTMD_Reserved_Field := 16#0#;
      --  Transfer Data Size Select
      SZ         : DMTMD_SZ_Field := R7FA4M1AB.DMAC0.Val_00;
      --  These bits are read as 00. The write value should be 00.
      Reserved_1 : DMTMD_Reserved_Field_1 := 16#0#;
      --  Repeat Area Select
      DTS        : DMTMD_DTS_Field := R7FA4M1AB.DMAC0.Val_00;
      --  Transfer Mode Select
      MD         : DMTMD_MD_Field := R7FA4M1AB.DMAC0.Val_00;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for DMTMD_Register use record
      DCTG       at 0 range 0 .. 1;
      Reserved   at 0 range 2 .. 7;
      SZ         at 0 range 8 .. 9;
      Reserved_1 at 0 range 10 .. 11;
      DTS        at 0 range 12 .. 13;
      MD         at 0 range 14 .. 15;
   end record;

   --  Destination Address Extended Repeat Area Overflow Interrupt Enable
   type DMINT_DARIE_Field is
     (--  Disabled
      Val_0,
      --  Enabled
      Val_1)
     with Size => 1;
   for DMINT_DARIE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Source Address Extended Repeat Area Overflow Interrupt Enable
   type DMINT_SARIE_Field is
     (--  Disabled
      Val_0,
      --  Enabled
      Val_1)
     with Size => 1;
   for DMINT_SARIE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Repeat Size End Interrupt Enable
   type DMINT_RPTIE_Field is
     (--  Disabled
      Val_0,
      --  Enabled
      Val_1)
     with Size => 1;
   for DMINT_RPTIE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Transfer Escape End Interrupt Enable
   type DMINT_ESIE_Field is
     (--  Disabled
      Val_0,
      --  Enabled
      Val_1)
     with Size => 1;
   for DMINT_ESIE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Transfer End Interrupt Enable
   type DMINT_DTIE_Field is
     (--  Disabled
      Val_0,
      --  Enabled
      Val_1)
     with Size => 1;
   for DMINT_DTIE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype DMINT_Reserved_Field is R7FA4M1AB.UInt3;

   --  DMA Interrupt Setting Register
   type DMINT_Register is record
      --  Destination Address Extended Repeat Area Overflow Interrupt Enable
      DARIE    : DMINT_DARIE_Field := R7FA4M1AB.DMAC0.Val_0;
      --  Source Address Extended Repeat Area Overflow Interrupt Enable
      SARIE    : DMINT_SARIE_Field := R7FA4M1AB.DMAC0.Val_0;
      --  Repeat Size End Interrupt Enable
      RPTIE    : DMINT_RPTIE_Field := R7FA4M1AB.DMAC0.Val_0;
      --  Transfer Escape End Interrupt Enable
      ESIE     : DMINT_ESIE_Field := R7FA4M1AB.DMAC0.Val_0;
      --  Transfer End Interrupt Enable
      DTIE     : DMINT_DTIE_Field := R7FA4M1AB.DMAC0.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved : DMINT_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for DMINT_Register use record
      DARIE    at 0 range 0 .. 0;
      SARIE    at 0 range 1 .. 1;
      RPTIE    at 0 range 2 .. 2;
      ESIE     at 0 range 3 .. 3;
      DTIE     at 0 range 4 .. 4;
      Reserved at 0 range 5 .. 7;
   end record;

   subtype DMAMD_DARA_Field is R7FA4M1AB.UInt5;

   --  Destination Address Update Mode
   type DMAMD_DM_Field is
     (--  Fixed address
      Val_00,
      --  Offset addition
      Val_01,
      --  Incremented address
      Val_10,
      --  Decremented address.
      Val_11)
     with Size => 2;
   for DMAMD_DM_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   subtype DMAMD_SARA_Field is R7FA4M1AB.UInt5;

   --  Source Address Update Mode
   type DMAMD_SM_Field is
     (--  Fixed address
      Val_00,
      --  Offset addition
      Val_01,
      --  Incremented address
      Val_10,
      --  Decremented address.
      Val_11)
     with Size => 2;
   for DMAMD_SM_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   --  DMA Address Mode Register
   type DMAMD_Register is record
      --  Destination Address Extended Repeat Area Specifies the extended
      --  repeat area on the destination address. For details on the settings.
      DARA       : DMAMD_DARA_Field := 16#0#;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : Boolean := False;
      --  Destination Address Update Mode
      DM         : DMAMD_DM_Field := R7FA4M1AB.DMAC0.Val_00;
      --  Source Address Extended Repeat Area Specifies the extended repeat
      --  area on the source address. For details on the settings.
      SARA       : DMAMD_SARA_Field := 16#0#;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : Boolean := False;
      --  Source Address Update Mode
      SM         : DMAMD_SM_Field := R7FA4M1AB.DMAC0.Val_00;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for DMAMD_Register use record
      DARA       at 0 range 0 .. 4;
      Reserved   at 0 range 5 .. 5;
      DM         at 0 range 6 .. 7;
      SARA       at 0 range 8 .. 12;
      Reserved_1 at 0 range 13 .. 13;
      SM         at 0 range 14 .. 15;
   end record;

   --  DMA Transfer Enable
   type DMCNT_DTE_Field is
     (--  Disabled
      Val_0,
      --  Enabled.
      Val_1)
     with Size => 1;
   for DMCNT_DTE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype DMCNT_Reserved_Field is R7FA4M1AB.UInt7;

   --  DMA Transfer Enable Register
   type DMCNT_Register is record
      --  *** This field is modified following a read operation ***. DMA
      --  Transfer Enable
      DTE      : DMCNT_DTE_Field := R7FA4M1AB.DMAC0.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved : DMCNT_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for DMCNT_Register use record
      DTE      at 0 range 0 .. 0;
      Reserved at 0 range 1 .. 7;
   end record;

   --  DMA Software Start
   type DMREQ_SWREQ_Field is
     (--  DMA transfer is not requested.
      Val_0,
      --  DMA transfer is requested.
      Val_1)
     with Size => 1;
   for DMREQ_SWREQ_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype DMREQ_Reserved_Field is R7FA4M1AB.UInt3;

   --  DMA Software Start Bit Auto Clear Select
   type DMREQ_CLRS_Field is
     (--  SWREQ bit is cleared after DMA transfer is started by software.
      Val_0,
      --  SWREQ bit is not cleared after DMA transfer is started by software.
      Val_1)
     with Size => 1;
   for DMREQ_CLRS_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  DMA Software Start Register
   type DMREQ_Register is record
      --  *** This field is modified following a read operation ***. DMA
      --  Software Start
      SWREQ      : DMREQ_SWREQ_Field := R7FA4M1AB.DMAC0.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved   : DMREQ_Reserved_Field := 16#0#;
      --  DMA Software Start Bit Auto Clear Select
      CLRS       : DMREQ_CLRS_Field := R7FA4M1AB.DMAC0.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_1 : DMREQ_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for DMREQ_Register use record
      SWREQ      at 0 range 0 .. 0;
      Reserved   at 0 range 1 .. 3;
      CLRS       at 0 range 4 .. 4;
      Reserved_1 at 0 range 5 .. 7;
   end record;

   --  Transfer Escape End Interrupt Flag
   type DMSTS_ESIF_Field is
     (--  No interrupt
      Val_0,
      --  Interrupt occurred.
      Val_1)
     with Size => 1;
   for DMSTS_ESIF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype DMSTS_Reserved_Field is R7FA4M1AB.UInt3;

   --  Transfer End Interrupt Flag
   type DMSTS_DTIF_Field is
     (--  No interrupt
      Val_0,
      --  Interrupt occurred.
      Val_1)
     with Size => 1;
   for DMSTS_DTIF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype DMSTS_Reserved_Field_1 is R7FA4M1AB.UInt2;

   --  DMA Active Flag
   type DMSTS_ACT_Field is
     (--  DMAC operation suspended
      Val_0,
      --  DMAC operating.
      Val_1)
     with Size => 1;
   for DMSTS_ACT_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  DMA Status Register
   type DMSTS_Register is record
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Transfer Escape End Interrupt Flag
      ESIF       : DMSTS_ESIF_Field := R7FA4M1AB.DMAC0.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved   : DMSTS_Reserved_Field := 16#0#;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Transfer End Interrupt Flag
      DTIF       : DMSTS_DTIF_Field := R7FA4M1AB.DMAC0.Val_0;
      --  These bits are read as 00. The write value should be 00.
      Reserved_1 : DMSTS_Reserved_Field_1 := 16#0#;
      --  Read-only. DMA Active Flag
      ACT        : DMSTS_ACT_Field := R7FA4M1AB.DMAC0.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for DMSTS_Register use record
      ESIF       at 0 range 0 .. 0;
      Reserved   at 0 range 1 .. 3;
      DTIF       at 0 range 4 .. 4;
      Reserved_1 at 0 range 5 .. 6;
      ACT        at 0 range 7 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Direct memory access controller 0
   type DMAC0_Peripheral is record
      --  DMA Source Address Register
      DMSAR : aliased R7FA4M1AB.UInt32;
      --  DMA Destination Address Register
      DMDAR : aliased R7FA4M1AB.UInt32;
      --  DMA Transfer Count Register
      DMCRA : aliased DMCRA_Register;
      --  DMA Block Transfer Count Register
      DMCRB : aliased R7FA4M1AB.UInt16;
      --  DMA Transfer Mode Register
      DMTMD : aliased DMTMD_Register;
      --  DMA Interrupt Setting Register
      DMINT : aliased DMINT_Register;
      --  DMA Address Mode Register
      DMAMD : aliased DMAMD_Register;
      --  DMA Offset Register
      DMOFR : aliased R7FA4M1AB.UInt32;
      --  DMA Transfer Enable Register
      DMCNT : aliased DMCNT_Register;
      --  DMA Software Start Register
      DMREQ : aliased DMREQ_Register;
      --  DMA Status Register
      DMSTS : aliased DMSTS_Register;
   end record
     with Volatile;

   for DMAC0_Peripheral use record
      DMSAR at 16#0# range 0 .. 31;
      DMDAR at 16#4# range 0 .. 31;
      DMCRA at 16#8# range 0 .. 31;
      DMCRB at 16#C# range 0 .. 15;
      DMTMD at 16#10# range 0 .. 15;
      DMINT at 16#13# range 0 .. 7;
      DMAMD at 16#14# range 0 .. 15;
      DMOFR at 16#18# range 0 .. 31;
      DMCNT at 16#1C# range 0 .. 7;
      DMREQ at 16#1D# range 0 .. 7;
      DMSTS at 16#1E# range 0 .. 7;
   end record;

   --  Direct memory access controller 0
   DMAC0_Periph : aliased DMAC0_Peripheral
     with Import, Address => DMAC0_Base;

end R7FA4M1AB.DMAC0;
