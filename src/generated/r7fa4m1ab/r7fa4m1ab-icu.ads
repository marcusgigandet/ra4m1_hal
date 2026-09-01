pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB-ada.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  Interrupt Controller
package R7FA4M1AB.ICU is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  IRQ Detection Sense Select
   type IRQCR_IRQMD_Field is
     (--  Falling edge
      Val_00,
      --  Rising edge
      Val_01,
      --  Rising and falling edges
      Val_10,
      --  Low level
      Val_11)
     with Size => 2;
   for IRQCR_IRQMD_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   subtype IRQCR_Reserved_Field is R7FA4M1AB.UInt2;

   --  IRQ Digital Filter Sampling Clock Select
   type IRQCR_FCLKSEL_Field is
     (--  PCLKB
      Val_00,
      --  PCLKB/8
      Val_01,
      --  PCLKB/32
      Val_10,
      --  PCLKB/64
      Val_11)
     with Size => 2;
   for IRQCR_FCLKSEL_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   --  IRQ Digital Filter Enable
   type IRQCR_FLTEN_Field is
     (--  Digital filter disabled.
      Val_0,
      --  Digital filter enabled.
      Val_1)
     with Size => 1;
   for IRQCR_FLTEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  IRQ Control Register %s
   type IRQCR_Register is record
      --  IRQ Detection Sense Select
      IRQMD      : IRQCR_IRQMD_Field := R7FA4M1AB.ICU.Val_00;
      --  These bits are read as 00. The write value should be 00.
      Reserved   : IRQCR_Reserved_Field := 16#0#;
      --  IRQ Digital Filter Sampling Clock Select
      FCLKSEL    : IRQCR_FCLKSEL_Field := R7FA4M1AB.ICU.Val_00;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : Boolean := False;
      --  IRQ Digital Filter Enable
      FLTEN      : IRQCR_FLTEN_Field := R7FA4M1AB.ICU.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for IRQCR_Register use record
      IRQMD      at 0 range 0 .. 1;
      Reserved   at 0 range 2 .. 3;
      FCLKSEL    at 0 range 4 .. 5;
      Reserved_1 at 0 range 6 .. 6;
      FLTEN      at 0 range 7 .. 7;
   end record;

   --  IRQ Control Register %s
   type IRQCR_Registers is array (0 .. 12) of IRQCR_Register;

   --  IRQ Control Register %s
   type IRQCR_Registers_1 is array (0 .. 1) of IRQCR_Register;

   --  NMI Detection Set
   type NMICR_NMIMD_Field is
     (--  Falling edge
      Val_0,
      --  Rising edge
      Val_1)
     with Size => 1;
   for NMICR_NMIMD_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype NMICR_Reserved_Field is R7FA4M1AB.UInt3;

   --  NMI Digital Filter Sampling Clock Select
   type NMICR_NFCLKSEL_Field is
     (--  PCLKB
      Val_00,
      --  PCLKB/8
      Val_01,
      --  PCLKB/32
      Val_10,
      --  PCLKB/64
      Val_11)
     with Size => 2;
   for NMICR_NFCLKSEL_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   --  NMI Digital Filter Enable
   type NMICR_NFLTEN_Field is
     (--  Digital filter is disabled.
      Val_0,
      --  Digital filter is enabled.
      Val_1)
     with Size => 1;
   for NMICR_NFLTEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  NMI Pin Interrupt Control Register
   type NMICR_Register is record
      --  NMI Detection Set
      NMIMD      : NMICR_NMIMD_Field := R7FA4M1AB.ICU.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved   : NMICR_Reserved_Field := 16#0#;
      --  NMI Digital Filter Sampling Clock Select
      NFCLKSEL   : NMICR_NFCLKSEL_Field := R7FA4M1AB.ICU.Val_00;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : Boolean := False;
      --  NMI Digital Filter Enable
      NFLTEN     : NMICR_NFLTEN_Field := R7FA4M1AB.ICU.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for NMICR_Register use record
      NMIMD      at 0 range 0 .. 0;
      Reserved   at 0 range 1 .. 3;
      NFCLKSEL   at 0 range 4 .. 5;
      Reserved_1 at 0 range 6 .. 6;
      NFLTEN     at 0 range 7 .. 7;
   end record;

   --  IWDT Underflow/Refresh Error Interrupt Enable
   type NMIER_IWDTEN_Field is
     (--  Disabled
      Val_0,
      --  Enabled.
      Val_1)
     with Size => 1;
   for NMIER_IWDTEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  WDT Underflow/Refresh Error Interrupt Enable
   type NMIER_WDTEN_Field is
     (--  Disabled
      Val_0,
      --  Enabled.
      Val_1)
     with Size => 1;
   for NMIER_WDTEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Voltage-Monitoring 1 Interrupt Enable
   type NMIER_LVD1EN_Field is
     (--  Disabled
      Val_0,
      --  Enabled.
      Val_1)
     with Size => 1;
   for NMIER_LVD1EN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Voltage-Monitoring 2 Interrupt Enable
   type NMIER_LVD2EN_Field is
     (--  Disabled
      Val_0,
      --  Enabled.
      Val_1)
     with Size => 1;
   for NMIER_LVD2EN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  VBATT monitor Interrupt Enable
   type NMIER_VBATTEN_Field is
     (--  Disabled
      Val_0,
      --  Enabled.
      Val_1)
     with Size => 1;
   for NMIER_VBATTEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Oscillation Stop Detection Interrupt Enable
   type NMIER_OSTEN_Field is
     (--  Disabled
      Val_0,
      --  Enabled.
      Val_1)
     with Size => 1;
   for NMIER_OSTEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  NMI Pin Interrupt Enable
   type NMIER_NMIEN_Field is
     (--  Disabled
      Val_0,
      --  Enabled.
      Val_1)
     with Size => 1;
   for NMIER_NMIEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  RAM Parity Error Interrupt Enable
   type NMIER_RPEEN_Field is
     (--  Disabled
      Val_0,
      --  Enabled.
      Val_1)
     with Size => 1;
   for NMIER_RPEEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  RAM ECC Error Interrupt Enable
   type NMIER_RECCEN_Field is
     (--  Disabled
      Val_0,
      --  Enabled.
      Val_1)
     with Size => 1;
   for NMIER_RECCEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  MPU Bus Slave Error Interrupt Enable
   type NMIER_BUSSEN_Field is
     (--  Disabled
      Val_0,
      --  Enabled.
      Val_1)
     with Size => 1;
   for NMIER_BUSSEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  MPU Bus Master Error Interrupt Enable
   type NMIER_BUSMEN_Field is
     (--  Disabled
      Val_0,
      --  Enabled.
      Val_1)
     with Size => 1;
   for NMIER_BUSMEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  CPU Stack pointer monitor Interrupt Enable
   type NMIER_SPEEN_Field is
     (--  Disabled
      Val_0,
      --  Enabled.
      Val_1)
     with Size => 1;
   for NMIER_SPEEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype NMIER_Reserved_Field is R7FA4M1AB.UInt3;

   --  Non-Maskable Interrupt Enable Register
   type NMIER_Register is record
      --  IWDT Underflow/Refresh Error Interrupt Enable
      IWDTEN     : NMIER_IWDTEN_Field := R7FA4M1AB.ICU.Val_0;
      --  WDT Underflow/Refresh Error Interrupt Enable
      WDTEN      : NMIER_WDTEN_Field := R7FA4M1AB.ICU.Val_0;
      --  Voltage-Monitoring 1 Interrupt Enable
      LVD1EN     : NMIER_LVD1EN_Field := R7FA4M1AB.ICU.Val_0;
      --  Voltage-Monitoring 2 Interrupt Enable
      LVD2EN     : NMIER_LVD2EN_Field := R7FA4M1AB.ICU.Val_0;
      --  VBATT monitor Interrupt Enable
      VBATTEN    : NMIER_VBATTEN_Field := R7FA4M1AB.ICU.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : Boolean := False;
      --  Oscillation Stop Detection Interrupt Enable
      OSTEN      : NMIER_OSTEN_Field := R7FA4M1AB.ICU.Val_0;
      --  NMI Pin Interrupt Enable
      NMIEN      : NMIER_NMIEN_Field := R7FA4M1AB.ICU.Val_0;
      --  RAM Parity Error Interrupt Enable
      RPEEN      : NMIER_RPEEN_Field := R7FA4M1AB.ICU.Val_0;
      --  RAM ECC Error Interrupt Enable
      RECCEN     : NMIER_RECCEN_Field := R7FA4M1AB.ICU.Val_0;
      --  MPU Bus Slave Error Interrupt Enable
      BUSSEN     : NMIER_BUSSEN_Field := R7FA4M1AB.ICU.Val_0;
      --  MPU Bus Master Error Interrupt Enable
      BUSMEN     : NMIER_BUSMEN_Field := R7FA4M1AB.ICU.Val_0;
      --  CPU Stack pointer monitor Interrupt Enable
      SPEEN      : NMIER_SPEEN_Field := R7FA4M1AB.ICU.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_1 : NMIER_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for NMIER_Register use record
      IWDTEN     at 0 range 0 .. 0;
      WDTEN      at 0 range 1 .. 1;
      LVD1EN     at 0 range 2 .. 2;
      LVD2EN     at 0 range 3 .. 3;
      VBATTEN    at 0 range 4 .. 4;
      Reserved   at 0 range 5 .. 5;
      OSTEN      at 0 range 6 .. 6;
      NMIEN      at 0 range 7 .. 7;
      RPEEN      at 0 range 8 .. 8;
      RECCEN     at 0 range 9 .. 9;
      BUSSEN     at 0 range 10 .. 10;
      BUSMEN     at 0 range 11 .. 11;
      SPEEN      at 0 range 12 .. 12;
      Reserved_1 at 0 range 13 .. 15;
   end record;

   --  IWDT Clear
   type NMICLR_IWDTCLR_Field is
     (--  No effect.
      Val_0,
      --  Clear the NMISR.IWDTST flag.
      Val_1)
     with Size => 1;
   for NMICLR_IWDTCLR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  WDT Clear
   type NMICLR_WDTCLR_Field is
     (--  No effect.
      Val_0,
      --  Clear the NMISR.WDTST flag.
      Val_1)
     with Size => 1;
   for NMICLR_WDTCLR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  LVD1 Clear
   type NMICLR_LVD1CLR_Field is
     (--  No effect.
      Val_0,
      --  Clear the NMISR.LVD1ST flag.
      Val_1)
     with Size => 1;
   for NMICLR_LVD1CLR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  LVD2 Clear
   type NMICLR_LVD2CLR_Field is
     (--  No effect.
      Val_0,
      --  Clear the NMISR.LVD2ST flag.
      Val_1)
     with Size => 1;
   for NMICLR_LVD2CLR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  VBATT Clear
   type NMICLR_VBATTCLR_Field is
     (--  No effect.
      Val_0,
      --  Clear the NMISR.VBATTST flag.
      Val_1)
     with Size => 1;
   for NMICLR_VBATTCLR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  OST Clear
   type NMICLR_OSTCLR_Field is
     (--  No effect.
      Val_0,
      --  Clear the NMISR.OSTST flag.
      Val_1)
     with Size => 1;
   for NMICLR_OSTCLR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  NMI Clear
   type NMICLR_NMICLR_Field is
     (--  No effect.
      Val_0,
      --  Clear the NMISR.NMIST flag.
      Val_1)
     with Size => 1;
   for NMICLR_NMICLR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  SRAM Parity Error Clear
   type NMICLR_RPECLR_Field is
     (--  No effect.
      Val_0,
      --  Clear the NMISR.RPEST flag.
      Val_1)
     with Size => 1;
   for NMICLR_RPECLR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  SRAM ECC Error Clear
   type NMICLR_RECCCLR_Field is
     (--  No effect.
      Val_0,
      --  Clear the NMISR.RECCST flag.
      Val_1)
     with Size => 1;
   for NMICLR_RECCCLR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Bus Slave Error Clear
   type NMICLR_BUSSCLR_Field is
     (--  No effect.
      Val_0,
      --  Clear the NMISR.BUSSST flag.
      Val_1)
     with Size => 1;
   for NMICLR_BUSSCLR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Bus Master Error Clear
   type NMICLR_BUSMCLR_Field is
     (--  No effect.
      Val_0,
      --  Clear the NMISR.BUSMST flag.
      Val_1)
     with Size => 1;
   for NMICLR_BUSMCLR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  CPU Stack Pointer Monitor Interrupt Clear
   type NMICLR_SPECLR_Field is
     (--  No effect.
      Val_0,
      --  Clear the NMISR.SPEST flag.
      Val_1)
     with Size => 1;
   for NMICLR_SPECLR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype NMICLR_Reserved_Field is R7FA4M1AB.UInt3;

   --  Non-Maskable Interrupt Status Clear Register
   type NMICLR_Register is record
      --  Write-only. IWDT Clear
      IWDTCLR    : NMICLR_IWDTCLR_Field := R7FA4M1AB.ICU.Val_0;
      --  Write-only. WDT Clear
      WDTCLR     : NMICLR_WDTCLR_Field := R7FA4M1AB.ICU.Val_0;
      --  Write-only. LVD1 Clear
      LVD1CLR    : NMICLR_LVD1CLR_Field := R7FA4M1AB.ICU.Val_0;
      --  Write-only. LVD2 Clear
      LVD2CLR    : NMICLR_LVD2CLR_Field := R7FA4M1AB.ICU.Val_0;
      --  Write-only. VBATT Clear
      VBATTCLR   : NMICLR_VBATTCLR_Field := R7FA4M1AB.ICU.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : Boolean := False;
      --  Write-only. OST Clear
      OSTCLR     : NMICLR_OSTCLR_Field := R7FA4M1AB.ICU.Val_0;
      --  Write-only. NMI Clear
      NMICLR     : NMICLR_NMICLR_Field := R7FA4M1AB.ICU.Val_0;
      --  Write-only. SRAM Parity Error Clear
      RPECLR     : NMICLR_RPECLR_Field := R7FA4M1AB.ICU.Val_0;
      --  Write-only. SRAM ECC Error Clear
      RECCCLR    : NMICLR_RECCCLR_Field := R7FA4M1AB.ICU.Val_0;
      --  Write-only. Bus Slave Error Clear
      BUSSCLR    : NMICLR_BUSSCLR_Field := R7FA4M1AB.ICU.Val_0;
      --  Write-only. Bus Master Error Clear
      BUSMCLR    : NMICLR_BUSMCLR_Field := R7FA4M1AB.ICU.Val_0;
      --  Write-only. CPU Stack Pointer Monitor Interrupt Clear
      SPECLR     : NMICLR_SPECLR_Field := R7FA4M1AB.ICU.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_1 : NMICLR_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for NMICLR_Register use record
      IWDTCLR    at 0 range 0 .. 0;
      WDTCLR     at 0 range 1 .. 1;
      LVD1CLR    at 0 range 2 .. 2;
      LVD2CLR    at 0 range 3 .. 3;
      VBATTCLR   at 0 range 4 .. 4;
      Reserved   at 0 range 5 .. 5;
      OSTCLR     at 0 range 6 .. 6;
      NMICLR     at 0 range 7 .. 7;
      RPECLR     at 0 range 8 .. 8;
      RECCCLR    at 0 range 9 .. 9;
      BUSSCLR    at 0 range 10 .. 10;
      BUSMCLR    at 0 range 11 .. 11;
      SPECLR     at 0 range 12 .. 12;
      Reserved_1 at 0 range 13 .. 15;
   end record;

   --  IWDT Underflow/Refresh Error Status Flag
   type NMISR_IWDTST_Field is
     (--  Interrupt not requested
      Val_0,
      --  Interrupt requested.
      Val_1)
     with Size => 1;
   for NMISR_IWDTST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  WDT Underflow/Refresh Error Status Flag
   type NMISR_WDTST_Field is
     (--  Interrupt not requested
      Val_0,
      --  Interrupt requested.
      Val_1)
     with Size => 1;
   for NMISR_WDTST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Voltage-Monitoring 1 Interrupt Status Flag
   type NMISR_LVD1ST_Field is
     (--  Interrupt not requested
      Val_0,
      --  Interrupt requested.
      Val_1)
     with Size => 1;
   for NMISR_LVD1ST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Voltage-Monitoring 2 Interrupt Status Flag
   type NMISR_LVD2ST_Field is
     (--  Interrupt not requested
      Val_0,
      --  Interrupt requested.
      Val_1)
     with Size => 1;
   for NMISR_LVD2ST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  VBATT monitor Interrupt Status Flag
   type NMISR_VBATTST_Field is
     (--  Interrupt not requested
      Val_0,
      --  Interrupt requested.
      Val_1)
     with Size => 1;
   for NMISR_VBATTST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Oscillation Stop Detection Interrupt Status Flag
   type NMISR_OSTST_Field is
     (--  Interrupt not requested for main oscillation stop
      Val_0,
      --  Interrupt requested for main oscillation stop.
      Val_1)
     with Size => 1;
   for NMISR_OSTST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  NMI Status Flag
   type NMISR_NMIST_Field is
     (--  Interrupt not requested
      Val_0,
      --  Interrupt requested.
      Val_1)
     with Size => 1;
   for NMISR_NMIST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  RAM Parity Error Interrupt Status Flag
   type NMISR_RPEST_Field is
     (--  Interrupt not requested
      Val_0,
      --  Interrupt requested.
      Val_1)
     with Size => 1;
   for NMISR_RPEST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  RAM ECC Error Interrupt Status Flag
   type NMISR_RECCST_Field is
     (--  Interrupt not requested
      Val_0,
      --  Interrupt requested.
      Val_1)
     with Size => 1;
   for NMISR_RECCST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  MPU Bus Slave Error Interrupt Status Flag
   type NMISR_BUSSST_Field is
     (--  Interrupt not requested
      Val_0,
      --  Interrupt requested.
      Val_1)
     with Size => 1;
   for NMISR_BUSSST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  MPU Bus Master Error Interrupt Status Flag
   type NMISR_BUSMST_Field is
     (--  Interrupt not requested
      Val_0,
      --  Interrupt requested.
      Val_1)
     with Size => 1;
   for NMISR_BUSMST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  CPU Stack pointer monitor Interrupt Status Flag
   type NMISR_SPEST_Field is
     (--  Interrupt not requested
      Val_0,
      --  Interrupt requested.
      Val_1)
     with Size => 1;
   for NMISR_SPEST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype NMISR_Reserved_Field is R7FA4M1AB.UInt3;

   --  Non-Maskable Interrupt Status Register
   type NMISR_Register is record
      --  Read-only. IWDT Underflow/Refresh Error Status Flag
      IWDTST     : NMISR_IWDTST_Field;
      --  Read-only. WDT Underflow/Refresh Error Status Flag
      WDTST      : NMISR_WDTST_Field;
      --  Read-only. Voltage-Monitoring 1 Interrupt Status Flag
      LVD1ST     : NMISR_LVD1ST_Field;
      --  Read-only. Voltage-Monitoring 2 Interrupt Status Flag
      LVD2ST     : NMISR_LVD2ST_Field;
      --  Read-only. VBATT monitor Interrupt Status Flag
      VBATTST    : NMISR_VBATTST_Field;
      --  Read-only. This bit is read as 0.
      Reserved   : Boolean;
      --  Read-only. Oscillation Stop Detection Interrupt Status Flag
      OSTST      : NMISR_OSTST_Field;
      --  Read-only. NMI Status Flag
      NMIST      : NMISR_NMIST_Field;
      --  Read-only. RAM Parity Error Interrupt Status Flag
      RPEST      : NMISR_RPEST_Field;
      --  Read-only. RAM ECC Error Interrupt Status Flag
      RECCST     : NMISR_RECCST_Field;
      --  Read-only. MPU Bus Slave Error Interrupt Status Flag
      BUSSST     : NMISR_BUSSST_Field;
      --  Read-only. MPU Bus Master Error Interrupt Status Flag
      BUSMST     : NMISR_BUSMST_Field;
      --  Read-only. CPU Stack pointer monitor Interrupt Status Flag
      SPEST      : NMISR_SPEST_Field;
      --  Read-only. These bits are read as 000.
      Reserved_1 : NMISR_Reserved_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for NMISR_Register use record
      IWDTST     at 0 range 0 .. 0;
      WDTST      at 0 range 1 .. 1;
      LVD1ST     at 0 range 2 .. 2;
      LVD2ST     at 0 range 3 .. 3;
      VBATTST    at 0 range 4 .. 4;
      Reserved   at 0 range 5 .. 5;
      OSTST      at 0 range 6 .. 6;
      NMIST      at 0 range 7 .. 7;
      RPEST      at 0 range 8 .. 8;
      RECCST     at 0 range 9 .. 9;
      BUSSST     at 0 range 10 .. 10;
      BUSMST     at 0 range 11 .. 11;
      SPEST      at 0 range 12 .. 12;
      Reserved_1 at 0 range 13 .. 15;
   end record;

   --  IRQ0 interrupt S/W standby returns enable
   type WUPEN_IRQWUPEN0_Field is
     (--  S/W standby returns by IRQ0 interrupt is disabled
      Val_0,
      --  S/W standby returns by IRQ0 interrupt is enabled
      Val_1)
     with Size => 1;
   for WUPEN_IRQWUPEN0_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  IRQ1 interrupt S/W standby returns enable
   type WUPEN_IRQWUPEN1_Field is
     (--  S/W standby returns by IRQ1 interrupt is disabled
      Val_0,
      --  S/W standby returns by IRQ1 interrupt is enabled
      Val_1)
     with Size => 1;
   for WUPEN_IRQWUPEN1_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  IRQ2 interrupt S/W standby returns enable
   type WUPEN_IRQWUPEN2_Field is
     (--  S/W standby returns by IRQ2 interrupt is disabled
      Val_0,
      --  S/W standby returns by IRQ2 interrupt is enabled
      Val_1)
     with Size => 1;
   for WUPEN_IRQWUPEN2_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  IRQ3 interrupt S/W standby returns enable
   type WUPEN_IRQWUPEN3_Field is
     (--  S/W standby returns by IRQ3 interrupt is disabled
      Val_0,
      --  S/W standby returns by IRQ3 interrupt is enabled
      Val_1)
     with Size => 1;
   for WUPEN_IRQWUPEN3_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  IRQ4 interrupt S/W standby returns enable
   type WUPEN_IRQWUPEN4_Field is
     (--  S/W standby returns by IRQ4 interrupt is disabled
      Val_0,
      --  S/W standby returns by IRQ4 interrupt is enabled
      Val_1)
     with Size => 1;
   for WUPEN_IRQWUPEN4_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  IRQ5 interrupt S/W standby returns enable
   type WUPEN_IRQWUPEN5_Field is
     (--  S/W standby returns by IRQ5 interrupt is disabled
      Val_0,
      --  S/W standby returns by IRQ5 interrupt is enabled
      Val_1)
     with Size => 1;
   for WUPEN_IRQWUPEN5_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  IRQ6 interrupt S/W standby returns enable
   type WUPEN_IRQWUPEN6_Field is
     (--  S/W standby returns by IRQ6 interrupt is disabled
      Val_0,
      --  S/W standby returns by IRQ6 interrupt is enabled
      Val_1)
     with Size => 1;
   for WUPEN_IRQWUPEN6_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  IRQ7 interrupt S/W standby returns enable
   type WUPEN_IRQWUPEN7_Field is
     (--  S/W standby returns by IRQ7 interrupt is disabled
      Val_0,
      --  S/W standby returns by IRQ7 interrupt is enabled
      Val_1)
     with Size => 1;
   for WUPEN_IRQWUPEN7_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  IRQ8 interrupt S/W standby returns enable
   type WUPEN_IRQWUPEN8_Field is
     (--  S/W standby returns by IRQ8 interrupt is disabled
      Val_0,
      --  S/W standby returns by IRQ8 interrupt is enabled
      Val_1)
     with Size => 1;
   for WUPEN_IRQWUPEN8_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  IRQ9 interrupt S/W standby returns enable
   type WUPEN_IRQWUPEN9_Field is
     (--  S/W standby returns by IRQ9 interrupt is disabled
      Val_0,
      --  S/W standby returns by IRQ9 interrupt is enabled
      Val_1)
     with Size => 1;
   for WUPEN_IRQWUPEN9_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  IRQ10 interrupt S/W standby returns enable
   type WUPEN_IRQWUPEN10_Field is
     (--  S/W standby returns by IRQ10 interrupt is disabled
      Val_0,
      --  S/W standby returns by IRQ10 interrupt is enabled
      Val_1)
     with Size => 1;
   for WUPEN_IRQWUPEN10_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  IRQ11 interrupt S/W standby returns enable
   type WUPEN_IRQWUPEN11_Field is
     (--  S/W standby returns by IRQ11 interrupt is disabled
      Val_0,
      --  S/W standby returns by IRQ11 interrupt is enabled
      Val_1)
     with Size => 1;
   for WUPEN_IRQWUPEN11_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  IRQ12 interrupt S/W standby returns enable
   type WUPEN_IRQWUPEN12_Field is
     (--  S/W standby returns by IRQ12 interrupt is disabled
      Val_0,
      --  S/W standby returns by IRQ12 interrupt is enabled
      Val_1)
     with Size => 1;
   for WUPEN_IRQWUPEN12_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  IRQ14 interrupt S/W standby returns enable
   type WUPEN_IRQWUPEN14_Field is
     (--  S/W standby returns by IRQ14 interrupt is disabled
      Val_0,
      --  S/W standby returns by IRQ14 interrupt is enabled
      Val_1)
     with Size => 1;
   for WUPEN_IRQWUPEN14_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  IRQ15 interrupt S/W standby returns enable
   type WUPEN_IRQWUPEN15_Field is
     (--  S/W standby returns by IRQ15 interrupt is disabled
      Val_0,
      --  S/W standby returns by IRQ15 interrupt is enabled
      Val_1)
     with Size => 1;
   for WUPEN_IRQWUPEN15_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  IWDT interrupt S/W standby returns enable
   type WUPEN_IWDTWUPEN_Field is
     (--  S/W standby returns by IWDT interrupt is disabled
      Val_0,
      --  S/W standby returns by IWDT interrupt is enabled
      Val_1)
     with Size => 1;
   for WUPEN_IWDTWUPEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Key interrupt S/W standby returns enable
   type WUPEN_KEYWUPEN_Field is
     (--  S/W standby returns by KEY interrupt is disabled
      Val_0,
      --  S/W standby returns by KEY interrupt is enabled
      Val_1)
     with Size => 1;
   for WUPEN_KEYWUPEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  LVD1 interrupt S/W standby returns enable
   type WUPEN_LVD1WUPEN_Field is
     (--  S/W standby returns by LVD1 interrupt is disabled
      Val_0,
      --  S/W standby returns by LVD1 interrupt is enabled
      Val_1)
     with Size => 1;
   for WUPEN_LVD1WUPEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  LVD2 interrupt S/W standby returns enable
   type WUPEN_LVD2WUPEN_Field is
     (--  S/W standby returns by LVD2 interrupt is disabled
      Val_0,
      --  S/W standby returns by LVD2 interrupt is enabled
      Val_1)
     with Size => 1;
   for WUPEN_LVD2WUPEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  VBATT monitor interrupt S/W standby returns enable
   type WUPEN_VBATTWUPEN_Field is
     (--  S/W standby returns by VBATT monitor interrupt is disabled
      Val_0,
      --  S/W standby returns by VBATT monitor interrupt is enabled
      Val_1)
     with Size => 1;
   for WUPEN_VBATTWUPEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype WUPEN_Reserved_Field is R7FA4M1AB.UInt2;

   --  ACMPLP0 interrupt S/W standby returns enable
   type WUPEN_ACMPLP0WUPEN_Field is
     (--  S/W standby returns by ACMPLP0 interrupt is disabled
      Val_0,
      --  S/W standby returns by ACMPLP0 interrupt is enabled
      Val_1)
     with Size => 1;
   for WUPEN_ACMPLP0WUPEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  RTC alarm interrupt S/W standby returns enable
   type WUPEN_RTCALMWUPEN_Field is
     (--  S/W standby returns by RTC alarm interrupt is disabled
      Val_0,
      --  S/W standby returns by RTC alarm interrupt is enabled
      Val_1)
     with Size => 1;
   for WUPEN_RTCALMWUPEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  RCT period interrupt S/W standby returns enable
   type WUPEN_RTCPRDWUPEN_Field is
     (--  S/W standby returns by RTC period interrupt is disabled
      Val_0,
      --  S/W standby returns by RTC period interrupt is enabled
      Val_1)
     with Size => 1;
   for WUPEN_RTCPRDWUPEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  USBFS interrupt S/W standby returns enable
   type WUPEN_USBFSWUPEN_Field is
     (--  S/W standby returns by USBFS interrupt is disabled
      Val_0,
      --  S/W standby returns by USBFS interrupt is enabled
      Val_1)
     with Size => 1;
   for WUPEN_USBFSWUPEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AGT1 underflow interrupt S/W standby returns enable
   type WUPEN_AGT1UDWUPEN_Field is
     (--  S/W standby returns by AGT1 underflow interrupt is disabled
      Val_0,
      --  S/W standby returns by AGT1 underflow interrupt is enabled
      Val_1)
     with Size => 1;
   for WUPEN_AGT1UDWUPEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AGT1 compare match A interrupt S/W standby returns enable
   type WUPEN_AGT1CAWUPEN_Field is
     (--  S/W standby returns by AGT1 compare match A interrupt is disabled
      Val_0,
      --  S/W standby returns by AGT1 compare match A interrupt is enabled
      Val_1)
     with Size => 1;
   for WUPEN_AGT1CAWUPEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  AGT1 compare match B interrupt S/W standby returns enable
   type WUPEN_AGT1CBWUPEN_Field is
     (--  S/W standby returns by AGT1 compare match B interrupt is disabled
      Val_0,
      --  S/W standby returns by AGT1 compare match B interrupt is enabled
      Val_1)
     with Size => 1;
   for WUPEN_AGT1CBWUPEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  IIC0 address match interrupt S/W standby returns enable
   type WUPEN_IIC0WUPEN_Field is
     (--  S/W standby returns by IIC0 address match interrupt is disabled
      Val_0,
      --  S/W standby returns by IIC0 address match interrupt is enabled
      Val_1)
     with Size => 1;
   for WUPEN_IIC0WUPEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Wake Up Interrupt Enable Register
   type WUPEN_Register is record
      --  IRQ0 interrupt S/W standby returns enable
      IRQWUPEN0    : WUPEN_IRQWUPEN0_Field := R7FA4M1AB.ICU.Val_0;
      --  IRQ1 interrupt S/W standby returns enable
      IRQWUPEN1    : WUPEN_IRQWUPEN1_Field := R7FA4M1AB.ICU.Val_0;
      --  IRQ2 interrupt S/W standby returns enable
      IRQWUPEN2    : WUPEN_IRQWUPEN2_Field := R7FA4M1AB.ICU.Val_0;
      --  IRQ3 interrupt S/W standby returns enable
      IRQWUPEN3    : WUPEN_IRQWUPEN3_Field := R7FA4M1AB.ICU.Val_0;
      --  IRQ4 interrupt S/W standby returns enable
      IRQWUPEN4    : WUPEN_IRQWUPEN4_Field := R7FA4M1AB.ICU.Val_0;
      --  IRQ5 interrupt S/W standby returns enable
      IRQWUPEN5    : WUPEN_IRQWUPEN5_Field := R7FA4M1AB.ICU.Val_0;
      --  IRQ6 interrupt S/W standby returns enable
      IRQWUPEN6    : WUPEN_IRQWUPEN6_Field := R7FA4M1AB.ICU.Val_0;
      --  IRQ7 interrupt S/W standby returns enable
      IRQWUPEN7    : WUPEN_IRQWUPEN7_Field := R7FA4M1AB.ICU.Val_0;
      --  IRQ8 interrupt S/W standby returns enable
      IRQWUPEN8    : WUPEN_IRQWUPEN8_Field := R7FA4M1AB.ICU.Val_0;
      --  IRQ9 interrupt S/W standby returns enable
      IRQWUPEN9    : WUPEN_IRQWUPEN9_Field := R7FA4M1AB.ICU.Val_0;
      --  IRQ10 interrupt S/W standby returns enable
      IRQWUPEN10   : WUPEN_IRQWUPEN10_Field := R7FA4M1AB.ICU.Val_0;
      --  IRQ11 interrupt S/W standby returns enable
      IRQWUPEN11   : WUPEN_IRQWUPEN11_Field := R7FA4M1AB.ICU.Val_0;
      --  IRQ12 interrupt S/W standby returns enable
      IRQWUPEN12   : WUPEN_IRQWUPEN12_Field := R7FA4M1AB.ICU.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved     : Boolean := False;
      --  IRQ14 interrupt S/W standby returns enable
      IRQWUPEN14   : WUPEN_IRQWUPEN14_Field := R7FA4M1AB.ICU.Val_0;
      --  IRQ15 interrupt S/W standby returns enable
      IRQWUPEN15   : WUPEN_IRQWUPEN15_Field := R7FA4M1AB.ICU.Val_0;
      --  IWDT interrupt S/W standby returns enable
      IWDTWUPEN    : WUPEN_IWDTWUPEN_Field := R7FA4M1AB.ICU.Val_0;
      --  Key interrupt S/W standby returns enable
      KEYWUPEN     : WUPEN_KEYWUPEN_Field := R7FA4M1AB.ICU.Val_0;
      --  LVD1 interrupt S/W standby returns enable
      LVD1WUPEN    : WUPEN_LVD1WUPEN_Field := R7FA4M1AB.ICU.Val_0;
      --  LVD2 interrupt S/W standby returns enable
      LVD2WUPEN    : WUPEN_LVD2WUPEN_Field := R7FA4M1AB.ICU.Val_0;
      --  VBATT monitor interrupt S/W standby returns enable
      VBATTWUPEN   : WUPEN_VBATTWUPEN_Field := R7FA4M1AB.ICU.Val_0;
      --  These bits are read as 00. The write value should be 00.
      Reserved_1   : WUPEN_Reserved_Field := 16#0#;
      --  ACMPLP0 interrupt S/W standby returns enable
      ACMPLP0WUPEN : WUPEN_ACMPLP0WUPEN_Field := R7FA4M1AB.ICU.Val_0;
      --  RTC alarm interrupt S/W standby returns enable
      RTCALMWUPEN  : WUPEN_RTCALMWUPEN_Field := R7FA4M1AB.ICU.Val_0;
      --  RCT period interrupt S/W standby returns enable
      RTCPRDWUPEN  : WUPEN_RTCPRDWUPEN_Field := R7FA4M1AB.ICU.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_2   : Boolean := False;
      --  USBFS interrupt S/W standby returns enable
      USBFSWUPEN   : WUPEN_USBFSWUPEN_Field := R7FA4M1AB.ICU.Val_0;
      --  AGT1 underflow interrupt S/W standby returns enable
      AGT1UDWUPEN  : WUPEN_AGT1UDWUPEN_Field := R7FA4M1AB.ICU.Val_0;
      --  AGT1 compare match A interrupt S/W standby returns enable
      AGT1CAWUPEN  : WUPEN_AGT1CAWUPEN_Field := R7FA4M1AB.ICU.Val_0;
      --  AGT1 compare match B interrupt S/W standby returns enable
      AGT1CBWUPEN  : WUPEN_AGT1CBWUPEN_Field := R7FA4M1AB.ICU.Val_0;
      --  IIC0 address match interrupt S/W standby returns enable
      IIC0WUPEN    : WUPEN_IIC0WUPEN_Field := R7FA4M1AB.ICU.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WUPEN_Register use record
      IRQWUPEN0    at 0 range 0 .. 0;
      IRQWUPEN1    at 0 range 1 .. 1;
      IRQWUPEN2    at 0 range 2 .. 2;
      IRQWUPEN3    at 0 range 3 .. 3;
      IRQWUPEN4    at 0 range 4 .. 4;
      IRQWUPEN5    at 0 range 5 .. 5;
      IRQWUPEN6    at 0 range 6 .. 6;
      IRQWUPEN7    at 0 range 7 .. 7;
      IRQWUPEN8    at 0 range 8 .. 8;
      IRQWUPEN9    at 0 range 9 .. 9;
      IRQWUPEN10   at 0 range 10 .. 10;
      IRQWUPEN11   at 0 range 11 .. 11;
      IRQWUPEN12   at 0 range 12 .. 12;
      Reserved     at 0 range 13 .. 13;
      IRQWUPEN14   at 0 range 14 .. 14;
      IRQWUPEN15   at 0 range 15 .. 15;
      IWDTWUPEN    at 0 range 16 .. 16;
      KEYWUPEN     at 0 range 17 .. 17;
      LVD1WUPEN    at 0 range 18 .. 18;
      LVD2WUPEN    at 0 range 19 .. 19;
      VBATTWUPEN   at 0 range 20 .. 20;
      Reserved_1   at 0 range 21 .. 22;
      ACMPLP0WUPEN at 0 range 23 .. 23;
      RTCALMWUPEN  at 0 range 24 .. 24;
      RTCPRDWUPEN  at 0 range 25 .. 25;
      Reserved_2   at 0 range 26 .. 26;
      USBFSWUPEN   at 0 range 27 .. 27;
      AGT1UDWUPEN  at 0 range 28 .. 28;
      AGT1CAWUPEN  at 0 range 29 .. 29;
      AGT1CBWUPEN  at 0 range 30 .. 30;
      IIC0WUPEN    at 0 range 31 .. 31;
   end record;

   subtype SELSR0_SELS_Field is R7FA4M1AB.Byte;
   subtype SELSR0_Reserved_Field is R7FA4M1AB.Byte;

   --  SYS Event Link Setting Register
   type SELSR0_Register is record
      --  SYS Event Link Select
      SELS     : SELSR0_SELS_Field := 16#0#;
      --  These bits are read as 00000000. The write value should be 00000000.
      Reserved : SELSR0_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for SELSR0_Register use record
      SELS     at 0 range 0 .. 7;
      Reserved at 0 range 8 .. 15;
   end record;

   subtype DELSR_DELS_Field is R7FA4M1AB.Byte;
   subtype DELSR_Reserved_Field is R7FA4M1AB.Byte;

   --  DMAC Event Link Setting Register %s
   type DELSR_Register is record
      --  Event selection to DMAC Start request
      DELS     : DELSR_DELS_Field := 16#0#;
      --  These bits are read as 00000000. The write value should be 00000000.
      Reserved : DELSR_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for DELSR_Register use record
      DELS     at 0 range 0 .. 7;
      Reserved at 0 range 8 .. 15;
   end record;

   subtype IELSR_IELS_Field is R7FA4M1AB.Byte;
   subtype IELSR_Reserved_Field is R7FA4M1AB.Byte;

   --  Interrupt Status Flag
   type IELSR_IR_Field is
     (--  No interrupt request is generated
      Val_0,
      --  An interrupt request is generated ( 1 write to the IR bit is prohibited. )
      Val_1)
     with Size => 1;
   for IELSR_IR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype IELSR_Reserved_Field_1 is R7FA4M1AB.UInt7;

   --  DTC Activation Enable
   type IELSR_DTCE_Field is
     (--  DTC activation is disabled
      Val_0,
      --  DTC activation is enabled
      Val_1)
     with Size => 1;
   for IELSR_DTCE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ICU Event Link Setting Register %s
   type IELSR_Register is record
      --  ICU Event selection to NVIC Set the number for the event signal to be
      --  linked .
      IELS       : IELSR_IELS_Field := 16#0#;
      --  These bits are read as 00000000. The write value should be 00000000.
      Reserved   : IELSR_Reserved_Field := 16#0#;
      --  Interrupt Status Flag
      IR         : IELSR_IR_Field := R7FA4M1AB.ICU.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved_1 : IELSR_Reserved_Field_1 := 16#0#;
      --  DTC Activation Enable
      DTCE       : IELSR_DTCE_Field := R7FA4M1AB.ICU.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved_2 : IELSR_Reserved_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IELSR_Register use record
      IELS       at 0 range 0 .. 7;
      Reserved   at 0 range 8 .. 15;
      IR         at 0 range 16 .. 16;
      Reserved_1 at 0 range 17 .. 23;
      DTCE       at 0 range 24 .. 24;
      Reserved_2 at 0 range 25 .. 31;
   end record;

   --  ICU Event Link Setting Register %s
   type IELSR_Registers is array (0 .. 31) of IELSR_Register;

   -----------------
   -- Peripherals --
   -----------------

   --  Interrupt Controller
   type ICU_Peripheral is record
      --  IRQ Control Register %s
      IRQCR   : aliased IRQCR_Registers;
      --  IRQ Control Register %s
      IRQCR_1 : aliased IRQCR_Registers_1;
      --  NMI Pin Interrupt Control Register
      NMICR   : aliased NMICR_Register;
      --  Non-Maskable Interrupt Enable Register
      NMIER   : aliased NMIER_Register;
      --  Non-Maskable Interrupt Status Clear Register
      NMICLR  : aliased NMICLR_Register;
      --  Non-Maskable Interrupt Status Register
      NMISR   : aliased NMISR_Register;
      --  Wake Up Interrupt Enable Register
      WUPEN   : aliased WUPEN_Register;
      --  SYS Event Link Setting Register
      SELSR0  : aliased SELSR0_Register;
      --  DMAC Event Link Setting Register %s
      DELSR0  : aliased DELSR_Register;
      --  DMAC Event Link Setting Register %s
      DELSR1  : aliased DELSR_Register;
      --  DMAC Event Link Setting Register %s
      DELSR2  : aliased DELSR_Register;
      --  DMAC Event Link Setting Register %s
      DELSR3  : aliased DELSR_Register;
      --  ICU Event Link Setting Register %s
      IELSR   : aliased IELSR_Registers;
   end record
     with Volatile;

   for ICU_Peripheral use record
      IRQCR   at 16#0# range 0 .. 103;
      IRQCR_1 at 16#E# range 0 .. 15;
      NMICR   at 16#100# range 0 .. 7;
      NMIER   at 16#120# range 0 .. 15;
      NMICLR  at 16#130# range 0 .. 15;
      NMISR   at 16#140# range 0 .. 15;
      WUPEN   at 16#1A0# range 0 .. 31;
      SELSR0  at 16#200# range 0 .. 15;
      DELSR0  at 16#280# range 0 .. 15;
      DELSR1  at 16#284# range 0 .. 15;
      DELSR2  at 16#288# range 0 .. 15;
      DELSR3  at 16#28C# range 0 .. 15;
      IELSR   at 16#300# range 0 .. 1023;
   end record;

   --  Interrupt Controller
   ICU_Periph : aliased ICU_Peripheral
     with Import, Address => ICU_Base;

end R7FA4M1AB.ICU;
