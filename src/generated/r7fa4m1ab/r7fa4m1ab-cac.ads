pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB-ada.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  Clock Frequency Accuracy Measurement Circuit 
package R7FA4M1AB.CAC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Clock Frequency Measurement Enable.
   type CACR0_CFME_Field is
     (--  Disable
      Val_0,
      --  Enable
      Val_1)
     with Size => 1;
   for CACR0_CFME_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype CACR0_Reserved_Field is R7FA4M1AB.UInt7;

   --  CAC Control Register 0
   type CACR0_Register is record
      --  Clock Frequency Measurement Enable.
      CFME     : CACR0_CFME_Field := R7FA4M1AB.CAC.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved : CACR0_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for CACR0_Register use record
      CFME     at 0 range 0 .. 0;
      Reserved at 0 range 1 .. 7;
   end record;

   --  CACREF Pin Input Enable
   type CACR1_CACREFE_Field is
     (--  Disable
      Val_0,
      --  Enable
      Val_1)
     with Size => 1;
   for CACR1_CACREFE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Measurement Target Clock Select
   type CACR1_FMCS_Field is
     (--  Main clock
      Val_000,
      --  Sub-clock
      Val_001,
      --  HOCO clock
      Val_010,
      --  MOCO clock
      Val_011,
      --  LOCO clock
      Val_100,
      --  Peripheral module clock(PCLKB)
      Val_101,
      --  IWDTCLK clock
      Val_110,
      --  Setting prohibited
      Val_111)
     with Size => 3;
   for CACR1_FMCS_Field use
     (Val_000 => 0,
      Val_001 => 1,
      Val_010 => 2,
      Val_011 => 3,
      Val_100 => 4,
      Val_101 => 5,
      Val_110 => 6,
      Val_111 => 7);

   --  Measurement Target Clock Frequency Division Ratio Select
   type CACR1_TCSS_Field is
     (--  No division
      Val_00,
      --  x 1/4 clock
      Val_01,
      --  x 1/8 clock
      Val_10,
      --  x 1/32 clock
      Val_11)
     with Size => 2;
   for CACR1_TCSS_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   --  Valid Edge Select
   type CACR1_EDGES_Field is
     (--  Rising edge
      Val_00,
      --  Falling edge
      Val_01,
      --  Both rising and falling edges
      Val_10,
      --  Setting prohibited
      Val_11)
     with Size => 2;
   for CACR1_EDGES_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   --  CAC Control Register 1
   type CACR1_Register is record
      --  CACREF Pin Input Enable
      CACREFE : CACR1_CACREFE_Field := R7FA4M1AB.CAC.Val_0;
      --  Measurement Target Clock Select
      FMCS    : CACR1_FMCS_Field := R7FA4M1AB.CAC.Val_000;
      --  Measurement Target Clock Frequency Division Ratio Select
      TCSS    : CACR1_TCSS_Field := R7FA4M1AB.CAC.Val_00;
      --  Valid Edge Select
      EDGES   : CACR1_EDGES_Field := R7FA4M1AB.CAC.Val_00;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for CACR1_Register use record
      CACREFE at 0 range 0 .. 0;
      FMCS    at 0 range 1 .. 3;
      TCSS    at 0 range 4 .. 5;
      EDGES   at 0 range 6 .. 7;
   end record;

   --  Reference Signal Select
   type CACR2_RPS_Field is
     (--  CACREF pin input
      Val_0,
      --  Internal clock (internally generated signal)
      Val_1)
     with Size => 1;
   for CACR2_RPS_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Measurement Reference Clock Select
   type CACR2_RSCS_Field is
     (--  Main clock
      Val_000,
      --  Sub-clock
      Val_001,
      --  HOCO clock
      Val_010,
      --  MOCO clock
      Val_011,
      --  LOCO clock
      Val_100,
      --  Peripheral module clock(PCLKB)
      Val_101,
      --  IWDTCLK clock
      Val_110,
      --  Setting prohibited
      Val_111)
     with Size => 3;
   for CACR2_RSCS_Field use
     (Val_000 => 0,
      Val_001 => 1,
      Val_010 => 2,
      Val_011 => 3,
      Val_100 => 4,
      Val_101 => 5,
      Val_110 => 6,
      Val_111 => 7);

   --  Measurement Reference Clock Frequency Division Ratio Select
   type CACR2_RCDS_Field is
     (--  1/32 clock
      Val_00,
      --  1/128 clock
      Val_01,
      --  1/1024 clock
      Val_10,
      --  1/8192 clock
      Val_11)
     with Size => 2;
   for CACR2_RCDS_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   --  Digital Filter Selection
   type CACR2_DFS_Field is
     (--  Digital filtering is disabled.
      Val_00,
      --  The sampling clock for the digital filter is the frequency measuring clock.
      Val_01,
      --  The sampling clock for the digital filter is the frequency measuring clock
--  divided by 4.
      Val_10,
      --  The sampling clock for the digital filter is the frequency measuring clock
--  divided by 16.
      Val_11)
     with Size => 2;
   for CACR2_DFS_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   --  CAC Control Register 2
   type CACR2_Register is record
      --  Reference Signal Select
      RPS  : CACR2_RPS_Field := R7FA4M1AB.CAC.Val_0;
      --  Measurement Reference Clock Select
      RSCS : CACR2_RSCS_Field := R7FA4M1AB.CAC.Val_000;
      --  Measurement Reference Clock Frequency Division Ratio Select
      RCDS : CACR2_RCDS_Field := R7FA4M1AB.CAC.Val_00;
      --  Digital Filter Selection
      DFS  : CACR2_DFS_Field := R7FA4M1AB.CAC.Val_00;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for CACR2_Register use record
      RPS  at 0 range 0 .. 0;
      RSCS at 0 range 1 .. 3;
      RCDS at 0 range 4 .. 5;
      DFS  at 0 range 6 .. 7;
   end record;

   --  Frequency Error Interrupt Request Enable
   type CAICR_FERRIE_Field is
     (--  Disable
      Val_0,
      --  Enable
      Val_1)
     with Size => 1;
   for CAICR_FERRIE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Measurement End Interrupt Request Enable
   type CAICR_MENDIE_Field is
     (--  Disable
      Val_0,
      --  Enable
      Val_1)
     with Size => 1;
   for CAICR_MENDIE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Overflow Interrupt Request Enable
   type CAICR_OVFIE_Field is
     (--  Disable
      Val_0,
      --  Enable
      Val_1)
     with Size => 1;
   for CAICR_OVFIE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  FERRF Clear
   type CAICR_FERRFCL_Field is
     (--  No effect on operations
      Val_0,
      --  Clears the FERRF flag
      Val_1)
     with Size => 1;
   for CAICR_FERRFCL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  MENDF Clear
   type CAICR_MENDFCL_Field is
     (--  No effect on operations
      Val_0,
      --  Clears the MENDF flag
      Val_1)
     with Size => 1;
   for CAICR_MENDFCL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  OVFF Clear
   type CAICR_OVFFCL_Field is
     (--  No effect on operations
      Val_0,
      --  Clears the OVFF flag
      Val_1)
     with Size => 1;
   for CAICR_OVFFCL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  CAC Interrupt Control Register
   type CAICR_Register is record
      --  Frequency Error Interrupt Request Enable
      FERRIE     : CAICR_FERRIE_Field := R7FA4M1AB.CAC.Val_0;
      --  Measurement End Interrupt Request Enable
      MENDIE     : CAICR_MENDIE_Field := R7FA4M1AB.CAC.Val_0;
      --  Overflow Interrupt Request Enable
      OVFIE      : CAICR_OVFIE_Field := R7FA4M1AB.CAC.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : Boolean := False;
      --  Write-only. FERRF Clear
      FERRFCL    : CAICR_FERRFCL_Field := R7FA4M1AB.CAC.Val_0;
      --  Write-only. MENDF Clear
      MENDFCL    : CAICR_MENDFCL_Field := R7FA4M1AB.CAC.Val_0;
      --  Write-only. OVFF Clear
      OVFFCL     : CAICR_OVFFCL_Field := R7FA4M1AB.CAC.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for CAICR_Register use record
      FERRIE     at 0 range 0 .. 0;
      MENDIE     at 0 range 1 .. 1;
      OVFIE      at 0 range 2 .. 2;
      Reserved   at 0 range 3 .. 3;
      FERRFCL    at 0 range 4 .. 4;
      MENDFCL    at 0 range 5 .. 5;
      OVFFCL     at 0 range 6 .. 6;
      Reserved_1 at 0 range 7 .. 7;
   end record;

   --  Frequency Error Flag
   type CASTR_FERRF_Field is
     (--  The clock frequency is within the range corresponding to the settings.
      Val_0,
      --  The clock frequency has deviated beyond the range corresponding to the
--  settings (frequency error).
      Val_1)
     with Size => 1;
   for CASTR_FERRF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Measurement End Flag
   type CASTR_MENDF_Field is
     (--  Measurement is in progress.
      Val_0,
      --  Measurement has ended.
      Val_1)
     with Size => 1;
   for CASTR_MENDF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Counter Overflow Flag
   type CASTR_OVFF_Field is
     (--  The counter has not overflowed.
      Val_0,
      --  The counter has overflowed.
      Val_1)
     with Size => 1;
   for CASTR_OVFF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  CAC Status Register
   type CASTR_Register is record
      --  Read-only. Frequency Error Flag
      FERRF        : CASTR_FERRF_Field;
      --  Read-only. Measurement End Flag
      MENDF        : CASTR_MENDF_Field;
      --  Read-only. Counter Overflow Flag
      OVFF         : CASTR_OVFF_Field;
      --  unspecified
      Reserved_3_7 : R7FA4M1AB.UInt5;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for CASTR_Register use record
      FERRF        at 0 range 0 .. 0;
      MENDF        at 0 range 1 .. 1;
      OVFF         at 0 range 2 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Clock Frequency Accuracy Measurement Circuit
   type CAC_Peripheral is record
      --  CAC Control Register 0
      CACR0   : aliased CACR0_Register;
      --  CAC Control Register 1
      CACR1   : aliased CACR1_Register;
      --  CAC Control Register 2
      CACR2   : aliased CACR2_Register;
      --  CAC Interrupt Control Register
      CAICR   : aliased CAICR_Register;
      --  CAC Status Register
      CASTR   : aliased CASTR_Register;
      --  CAC Upper-Limit Value Setting Register
      CAULVR  : aliased R7FA4M1AB.UInt16;
      --  CAC Lower-Limit Value Setting Register
      CALLVR  : aliased R7FA4M1AB.UInt16;
      --  CAC Counter Buffer Register
      CACNTBR : aliased R7FA4M1AB.UInt16;
   end record
     with Volatile;

   for CAC_Peripheral use record
      CACR0   at 16#0# range 0 .. 7;
      CACR1   at 16#1# range 0 .. 7;
      CACR2   at 16#2# range 0 .. 7;
      CAICR   at 16#3# range 0 .. 7;
      CASTR   at 16#4# range 0 .. 7;
      CAULVR  at 16#6# range 0 .. 15;
      CALLVR  at 16#8# range 0 .. 15;
      CACNTBR at 16#A# range 0 .. 15;
   end record;

   --  Clock Frequency Accuracy Measurement Circuit
   CAC_Periph : aliased CAC_Peripheral
     with Import, Address => CAC_Base;

end R7FA4M1AB.CAC;
