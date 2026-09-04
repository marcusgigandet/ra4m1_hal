--
-- Copyright (C) 2026 Marcus Gigandet
--
-- SPDX-License-Identifier: LGPL-3.0-or-later
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  Pmn Pin Function Control Register

package R7FA4M1AB.PFS is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Port Output Data
   type P000PFS_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P000PFS_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P000PFS_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P000PFS_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P000PFS_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P000PFS_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P000PFS_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P000PFS_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P000PFS_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P000PFS_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P000PFS_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P000PFS_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P000PFS_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P000PFS_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P000PFS_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P000PFS_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P000PFS_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P000PFS_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Mode Control
   type P000PFS_PMR_Field is
     (--  Uses the pin as a general I/O pin.
     Val_0,
      --  Uses the pin as an I/O port for peripheral functions.
      Val_1)
   with Size => 1;
   for P000PFS_PMR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P000PFS_Reserved_Field_2 is R7FA4M1AB.UInt7;
   subtype P000PFS_PSEL_Field is R7FA4M1AB.UInt5;

   --  P00%s Pin Function Control Register
   type P000PFS_Register is record
      --  Port Output Data
      PODR       : P000PFS_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P000PFS_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P000PFS_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P000PFS_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P000PFS_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P000PFS_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P000PFS_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P000PFS_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P000PFS_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : P000PFS_Reserved_Field_1 := 16#0#;
      --  IRQ input enable
      ISEL       : P000PFS_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P000PFS_ASEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Mode Control
      PMR        : P000PFS_PMR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved_4 : P000PFS_Reserved_Field_2 := 16#0#;
      --  Port Function Select These bits select the peripheral function. For
      --  individual pin functions, see the MPC table
      PSEL       : P000PFS_PSEL_Field := 16#0#;
      --  These bits are read as 000. The write value should be 000.
      Reserved_5 : P000PFS_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => System.Low_Order_First;

   for P000PFS_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
       PMR at 0 range 16 .. 16;
       Reserved_4 at 0 range 17 .. 23;
       PSEL at 0 range 24 .. 28;
       Reserved_5 at 0 range 29 .. 31;
     end record;

   --  Port Output Data
   type P000PFS_HA_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P000PFS_HA_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P000PFS_HA_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P000PFS_HA_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P000PFS_HA_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P000PFS_HA_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P000PFS_HA_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P000PFS_HA_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P000PFS_HA_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P000PFS_HA_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P000PFS_HA_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P000PFS_HA_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P000PFS_HA_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P000PFS_HA_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P000PFS_HA_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P000PFS_HA_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P000PFS_HA_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P000PFS_HA_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  P00%s Pin Function Control Register
   type P000PFS_HA_Register is record
      --  Port Output Data
      PODR       : P000PFS_HA_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P000PFS_HA_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P000PFS_HA_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P000PFS_HA_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P000PFS_HA_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P000PFS_HA_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P000PFS_HA_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P000PFS_HA_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P000PFS_HA_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : P000PFS_HA_Reserved_Field_1 := 16#0#;
      --  IRQ input enable
      ISEL       : P000PFS_HA_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P000PFS_HA_ASEL_Field := R7FA4M1AB.PFS.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for P000PFS_HA_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
     end record;

   --  Port Output Data
   type P000PFS_BY_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P000PFS_BY_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P000PFS_BY_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P000PFS_BY_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P000PFS_BY_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P000PFS_BY_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P000PFS_BY_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P000PFS_BY_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P000PFS_BY_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P000PFS_BY_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P000PFS_BY_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   --  P00%s Pin Function Control Register
   type P000PFS_BY_Register is record
      --  Port Output Data
      PODR       : P000PFS_BY_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P000PFS_BY_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P000PFS_BY_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P000PFS_BY_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P000PFS_BY_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P000PFS_BY_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P000PFS_BY_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_2 : P000PFS_BY_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for P000PFS_BY_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 7;
     end record;

   --  Port Output Data
   type P00PFS_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P00PFS_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P00PFS_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P00PFS_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P00PFS_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P00PFS_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P00PFS_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P00PFS_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P00PFS_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P00PFS_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P00PFS_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P00PFS_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P00PFS_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P00PFS_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P00PFS_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P00PFS_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P00PFS_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P00PFS_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Mode Control
   type P00PFS_PMR_Field is
     (--  Uses the pin as a general I/O pin.
     Val_0,
      --  Uses the pin as an I/O port for peripheral functions.
      Val_1)
   with Size => 1;
   for P00PFS_PMR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P00PFS_Reserved_Field_2 is R7FA4M1AB.UInt7;
   subtype P00PFS_PSEL_Field is R7FA4M1AB.UInt5;

   --  P00%s Pin Function Control Register
   type P00PFS_Register is record
      --  Port Output Data
      PODR       : P00PFS_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P00PFS_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P00PFS_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P00PFS_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P00PFS_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P00PFS_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P00PFS_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P00PFS_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P00PFS_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : P00PFS_Reserved_Field_1 := 16#0#;
      --  IRQ input enable
      ISEL       : P00PFS_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P00PFS_ASEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Mode Control
      PMR        : P00PFS_PMR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved_4 : P00PFS_Reserved_Field_2 := 16#0#;
      --  Port Function Select These bits select the peripheral function. For
      --  individual pin functions, see the MPC table
      PSEL       : P00PFS_PSEL_Field := 16#0#;
      --  These bits are read as 000. The write value should be 000.
      Reserved_5 : P00PFS_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => System.Low_Order_First;

   for P00PFS_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
       PMR at 0 range 16 .. 16;
       Reserved_4 at 0 range 17 .. 23;
       PSEL at 0 range 24 .. 28;
       Reserved_5 at 0 range 29 .. 31;
     end record;

   --  P00%s Pin Function Control Register
   type P00PFS_Registers is array (0 .. 7) of P00PFS_Register;

   --  Port Output Data
   type P00PFS_HA0_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P00PFS_HA0_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P00PFS_HA0_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P00PFS_HA0_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P00PFS_HA0_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P00PFS_HA0_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P00PFS_HA_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P00PFS_HA0_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P00PFS_HA0_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P00PFS_HA0_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P00PFS_HA0_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P00PFS_HA_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P00PFS_HA0_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P00PFS_HA0_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P00PFS_HA0_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P00PFS_HA0_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P00PFS_HA0_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P00PFS_HA0_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  P00%s Pin Function Control Register
   type P00PFS_HA_Register is record
      --  Port Output Data
      PODR       : P00PFS_HA0_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P00PFS_HA0_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P00PFS_HA0_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P00PFS_HA_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P00PFS_HA0_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P00PFS_HA_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P00PFS_HA0_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P00PFS_HA_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P00PFS_HA0_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : P00PFS_HA_Reserved_Field_1 := 16#0#;
      --  IRQ input enable
      ISEL       : P00PFS_HA0_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P00PFS_HA0_ASEL_Field := R7FA4M1AB.PFS.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for P00PFS_HA_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
     end record;

   --  Port Output Data
   type P00PFS_BY0_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P00PFS_BY0_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P00PFS_BY0_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P00PFS_BY0_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P00PFS_BY0_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P00PFS_BY0_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P00PFS_BY_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P00PFS_BY0_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P00PFS_BY0_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P00PFS_BY0_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P00PFS_BY0_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   --  P00%s Pin Function Control Register
   type P00PFS_BY_Register is record
      --  Port Output Data
      PODR       : P00PFS_BY0_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P00PFS_BY0_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P00PFS_BY0_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P00PFS_BY_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P00PFS_BY0_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P00PFS_BY_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P00PFS_BY0_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_2 : P00PFS_BY_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for P00PFS_BY_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 7;
     end record;

   --  Port Output Data
   type P0PFS_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P0PFS_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P0PFS_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P0PFS_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P0PFS_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P0PFS_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P0PFS_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P0PFS_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P0PFS_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P0PFS_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P0PFS_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P0PFS_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P0PFS_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P0PFS_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P0PFS_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P0PFS_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P0PFS_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P0PFS_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Mode Control
   type P0PFS_PMR_Field is
     (--  Uses the pin as a general I/O pin.
     Val_0,
      --  Uses the pin as an I/O port for peripheral functions.
      Val_1)
   with Size => 1;
   for P0PFS_PMR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P0PFS_Reserved_Field_2 is R7FA4M1AB.UInt7;
   subtype P0PFS_PSEL_Field is R7FA4M1AB.UInt5;

   --  P0%s Pin Function Control Register
   type P0PFS_Register is record
      --  Port Output Data
      PODR       : P0PFS_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P0PFS_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P0PFS_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P0PFS_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P0PFS_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P0PFS_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P0PFS_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P0PFS_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P0PFS_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : P0PFS_Reserved_Field_1 := 16#0#;
      --  IRQ input enable
      ISEL       : P0PFS_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P0PFS_ASEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Mode Control
      PMR        : P0PFS_PMR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved_4 : P0PFS_Reserved_Field_2 := 16#0#;
      --  Port Function Select These bits select the peripheral function. For
      --  individual pin functions, see the MPC table
      PSEL       : P0PFS_PSEL_Field := 16#0#;
      --  These bits are read as 000. The write value should be 000.
      Reserved_5 : P0PFS_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => System.Low_Order_First;

   for P0PFS_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
       PMR at 0 range 16 .. 16;
       Reserved_4 at 0 range 17 .. 23;
       PSEL at 0 range 24 .. 28;
       Reserved_5 at 0 range 29 .. 31;
     end record;

   --  P0%s Pin Function Control Register
   type P0PFS_Registers is array (0 .. 5) of P0PFS_Register;

   --  Port Output Data
   type P0PFS_HA0_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P0PFS_HA0_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P0PFS_HA0_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P0PFS_HA0_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P0PFS_HA0_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P0PFS_HA0_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P0PFS_HA_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P0PFS_HA0_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P0PFS_HA0_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P0PFS_HA0_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P0PFS_HA0_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P0PFS_HA_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P0PFS_HA0_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P0PFS_HA0_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P0PFS_HA0_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P0PFS_HA0_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P0PFS_HA0_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P0PFS_HA0_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  P0%s Pin Function Control Register
   type P0PFS_HA_Register is record
      --  Port Output Data
      PODR       : P0PFS_HA0_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P0PFS_HA0_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P0PFS_HA0_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P0PFS_HA_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P0PFS_HA0_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P0PFS_HA_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P0PFS_HA0_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P0PFS_HA_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P0PFS_HA0_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : P0PFS_HA_Reserved_Field_1 := 16#0#;
      --  IRQ input enable
      ISEL       : P0PFS_HA0_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P0PFS_HA0_ASEL_Field := R7FA4M1AB.PFS.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for P0PFS_HA_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
     end record;

   --  Port Output Data
   type P0PFS_BY0_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P0PFS_BY0_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P0PFS_BY0_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P0PFS_BY0_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P0PFS_BY0_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P0PFS_BY0_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P0PFS_BY_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P0PFS_BY0_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P0PFS_BY0_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P0PFS_BY0_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P0PFS_BY0_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   --  P0%s Pin Function Control Register
   type P0PFS_BY_Register is record
      --  Port Output Data
      PODR       : P0PFS_BY0_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P0PFS_BY0_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P0PFS_BY0_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P0PFS_BY_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P0PFS_BY0_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P0PFS_BY_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P0PFS_BY0_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_2 : P0PFS_BY_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for P0PFS_BY_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 7;
     end record;

   --  Port Output Data
   type P100PFS_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P100PFS_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P100PFS_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P100PFS_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P100PFS_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P100PFS_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P100PFS_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P100PFS_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P100PFS_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P100PFS_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P100PFS_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P100PFS_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P100PFS_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P100PFS_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Rising
   type P100PFS_EOR_Field is
     (--  Do not care
     Val_0,
      --  Detect rising edge
      Val_1)
   with Size => 1;
   for P100PFS_EOR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Falling
   type P100PFS_EOF_Field is
     (--  Do not care
     Val_0,
      --  Detect falling edge
      Val_1)
   with Size => 1;
   for P100PFS_EOF_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P100PFS_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P100PFS_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P100PFS_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P100PFS_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Mode Control
   type P100PFS_PMR_Field is
     (--  Uses the pin as a general I/O pin.
     Val_0,
      --  Uses the pin as an I/O port for peripheral functions.
      Val_1)
   with Size => 1;
   for P100PFS_PMR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P100PFS_Reserved_Field_2 is R7FA4M1AB.UInt7;
   subtype P100PFS_PSEL_Field is R7FA4M1AB.UInt5;

   --  P100 Pin Function Control Register
   type P100PFS_Register is record
      --  Port Output Data
      PODR       : P100PFS_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P100PFS_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P100PFS_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P100PFS_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P100PFS_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P100PFS_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P100PFS_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P100PFS_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P100PFS_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : P100PFS_Reserved_Field := 16#0#;
      --  Event on Rising
      EOR        : P100PFS_EOR_Field := R7FA4M1AB.PFS.Val_0;
      --  Event on Falling
      EOF        : P100PFS_EOF_Field := R7FA4M1AB.PFS.Val_0;
      --  IRQ input enable
      ISEL       : P100PFS_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P100PFS_ASEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Mode Control
      PMR        : P100PFS_PMR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved_4 : P100PFS_Reserved_Field_2 := 16#0#;
      --  Port Function Select These bits select the peripheral function. For
      --  individual pin functions, see the MPC table
      PSEL       : P100PFS_PSEL_Field := 16#0#;
      --  These bits are read as 000. The write value should be 000.
      Reserved_5 : P100PFS_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => System.Low_Order_First;

   for P100PFS_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 11;
       EOR at 0 range 12 .. 12;
       EOF at 0 range 13 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
       PMR at 0 range 16 .. 16;
       Reserved_4 at 0 range 17 .. 23;
       PSEL at 0 range 24 .. 28;
       Reserved_5 at 0 range 29 .. 31;
     end record;

   --  Port Output Data
   type P100PFS_HA_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P100PFS_HA_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P100PFS_HA_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P100PFS_HA_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P100PFS_HA_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P100PFS_HA_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P100PFS_HA_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P100PFS_HA_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P100PFS_HA_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P100PFS_HA_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P100PFS_HA_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P100PFS_HA_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P100PFS_HA_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P100PFS_HA_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Rising
   type P100PFS_HA_EOR_Field is
     (--  Do not care
     Val_0,
      --  Detect rising edge
      Val_1)
   with Size => 1;
   for P100PFS_HA_EOR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Falling
   type P100PFS_HA_EOF_Field is
     (--  Do not care
     Val_0,
      --  Detect falling edge
      Val_1)
   with Size => 1;
   for P100PFS_HA_EOF_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P100PFS_HA_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P100PFS_HA_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P100PFS_HA_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P100PFS_HA_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  P100 Pin Function Control Register
   type P100PFS_HA_Register is record
      --  Port Output Data
      PODR       : P100PFS_HA_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P100PFS_HA_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P100PFS_HA_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P100PFS_HA_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P100PFS_HA_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P100PFS_HA_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P100PFS_HA_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P100PFS_HA_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P100PFS_HA_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : P100PFS_HA_Reserved_Field := 16#0#;
      --  Event on Rising
      EOR        : P100PFS_HA_EOR_Field := R7FA4M1AB.PFS.Val_0;
      --  Event on Falling
      EOF        : P100PFS_HA_EOF_Field := R7FA4M1AB.PFS.Val_0;
      --  IRQ input enable
      ISEL       : P100PFS_HA_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P100PFS_HA_ASEL_Field := R7FA4M1AB.PFS.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for P100PFS_HA_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 11;
       EOR at 0 range 12 .. 12;
       EOF at 0 range 13 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
     end record;

   --  Port Output Data
   type P100PFS_BY_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P100PFS_BY_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P100PFS_BY_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P100PFS_BY_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P100PFS_BY_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P100PFS_BY_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P100PFS_BY_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P100PFS_BY_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P100PFS_BY_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P100PFS_BY_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P100PFS_BY_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   --  P100 Pin Function Control Register
   type P100PFS_BY_Register is record
      --  Port Output Data
      PODR       : P100PFS_BY_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P100PFS_BY_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P100PFS_BY_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P100PFS_BY_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P100PFS_BY_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P100PFS_BY_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P100PFS_BY_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P100PFS_BY_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for P100PFS_BY_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 7;
     end record;

   --  Port Output Data
   type P10PFS_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P10PFS_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P10PFS_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P10PFS_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P10PFS_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P10PFS_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P10PFS_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P10PFS_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P10PFS_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P10PFS_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P10PFS_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P10PFS_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P10PFS_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P10PFS_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Rising
   type P10PFS_EOR_Field is
     (--  Do not care
     Val_0,
      --  Detect rising edge
      Val_1)
   with Size => 1;
   for P10PFS_EOR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Falling
   type P10PFS_EOF_Field is
     (--  Do not care
     Val_0,
      --  Detect falling edge
      Val_1)
   with Size => 1;
   for P10PFS_EOF_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P10PFS_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P10PFS_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P10PFS_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P10PFS_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Mode Control
   type P10PFS_PMR_Field is
     (--  Uses the pin as a general I/O pin.
     Val_0,
      --  Uses the pin as an I/O port for peripheral functions.
      Val_1)
   with Size => 1;
   for P10PFS_PMR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P10PFS_Reserved_Field_2 is R7FA4M1AB.UInt7;
   subtype P10PFS_PSEL_Field is R7FA4M1AB.UInt5;

   --  P10%s Pin Function Control Register
   type P10PFS_Register is record
      --  Port Output Data
      PODR       : P10PFS_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P10PFS_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P10PFS_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P10PFS_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P10PFS_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P10PFS_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P10PFS_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P10PFS_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P10PFS_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : P10PFS_Reserved_Field := 16#0#;
      --  Event on Rising
      EOR        : P10PFS_EOR_Field := R7FA4M1AB.PFS.Val_0;
      --  Event on Falling
      EOF        : P10PFS_EOF_Field := R7FA4M1AB.PFS.Val_0;
      --  IRQ input enable
      ISEL       : P10PFS_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P10PFS_ASEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Mode Control
      PMR        : P10PFS_PMR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved_4 : P10PFS_Reserved_Field_2 := 16#0#;
      --  Port Function Select These bits select the peripheral function. For
      --  individual pin functions, see the MPC table
      PSEL       : P10PFS_PSEL_Field := 16#0#;
      --  These bits are read as 000. The write value should be 000.
      Reserved_5 : P10PFS_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => System.Low_Order_First;

   for P10PFS_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 11;
       EOR at 0 range 12 .. 12;
       EOF at 0 range 13 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
       PMR at 0 range 16 .. 16;
       Reserved_4 at 0 range 17 .. 23;
       PSEL at 0 range 24 .. 28;
       Reserved_5 at 0 range 29 .. 31;
     end record;

   --  P10%s Pin Function Control Register
   type P10PFS_Registers is array (0 .. 6) of P10PFS_Register;

   --  Port Output Data
   type P10PFS_HA0_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P10PFS_HA0_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P10PFS_HA0_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P10PFS_HA0_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P10PFS_HA0_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P10PFS_HA0_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P10PFS_HA_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P10PFS_HA0_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P10PFS_HA0_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P10PFS_HA0_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P10PFS_HA0_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P10PFS_HA_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P10PFS_HA0_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P10PFS_HA0_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Rising
   type P10PFS_HA0_EOR_Field is
     (--  Do not care
     Val_0,
      --  Detect rising edge
      Val_1)
   with Size => 1;
   for P10PFS_HA0_EOR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Falling
   type P10PFS_HA0_EOF_Field is
     (--  Do not care
     Val_0,
      --  Detect falling edge
      Val_1)
   with Size => 1;
   for P10PFS_HA0_EOF_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P10PFS_HA0_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P10PFS_HA0_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P10PFS_HA0_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P10PFS_HA0_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  P10%s Pin Function Control Register
   type P10PFS_HA_Register is record
      --  Port Output Data
      PODR       : P10PFS_HA0_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P10PFS_HA0_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P10PFS_HA0_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P10PFS_HA_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P10PFS_HA0_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P10PFS_HA_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P10PFS_HA0_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P10PFS_HA_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P10PFS_HA0_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : P10PFS_HA_Reserved_Field := 16#0#;
      --  Event on Rising
      EOR        : P10PFS_HA0_EOR_Field := R7FA4M1AB.PFS.Val_0;
      --  Event on Falling
      EOF        : P10PFS_HA0_EOF_Field := R7FA4M1AB.PFS.Val_0;
      --  IRQ input enable
      ISEL       : P10PFS_HA0_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P10PFS_HA0_ASEL_Field := R7FA4M1AB.PFS.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for P10PFS_HA_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 11;
       EOR at 0 range 12 .. 12;
       EOF at 0 range 13 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
     end record;

   --  Port Output Data
   type P10PFS_BY0_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P10PFS_BY0_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P10PFS_BY0_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P10PFS_BY0_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P10PFS_BY0_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P10PFS_BY0_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P10PFS_BY_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P10PFS_BY0_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P10PFS_BY0_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P10PFS_BY0_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P10PFS_BY0_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   --  P10%s Pin Function Control Register
   type P10PFS_BY_Register is record
      --  Port Output Data
      PODR       : P10PFS_BY0_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P10PFS_BY0_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P10PFS_BY0_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P10PFS_BY_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P10PFS_BY0_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P10PFS_BY_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P10PFS_BY0_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P10PFS_BY_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for P10PFS_BY_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 7;
     end record;

   --  Port Output Data
   type P108PFS_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P108PFS_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P108PFS_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P108PFS_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P108PFS_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P108PFS_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P108PFS_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P108PFS_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P108PFS_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P108PFS_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P108PFS_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P108PFS_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P108PFS_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P108PFS_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Rising
   type P108PFS_EOR_Field is
     (--  No effected
     Val_0,
      --  Detect rising edge
      Val_1)
   with Size => 1;
   for P108PFS_EOR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Failing
   type P108PFS_EOF_Field is
     (--  No effected
     Val_0,
      --  Detect failing edge
      Val_1)
   with Size => 1;
   for P108PFS_EOF_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P108PFS_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P108PFS_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P108PFS_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P108PFS_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Mode Control
   type P108PFS_PMR_Field is
     (--  Uses the pin as a general I/O pin.
     Val_0,
      --  Uses the pin as an I/O port for peripheral functions.
      Val_1)
   with Size => 1;
   for P108PFS_PMR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P108PFS_Reserved_Field_2 is R7FA4M1AB.UInt7;
   subtype P108PFS_PSEL_Field is R7FA4M1AB.UInt5;

   --  P108 Pin Function Control Register
   type P108PFS_Register is record
      --  Port Output Data
      PODR       : P108PFS_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P108PFS_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P108PFS_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P108PFS_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P108PFS_PCR_Field := R7FA4M1AB.PFS.Val_1;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P108PFS_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P108PFS_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P108PFS_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P108PFS_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_3 : P108PFS_Reserved_Field := 16#0#;
      --  Event on Rising
      EOR        : P108PFS_EOR_Field := R7FA4M1AB.PFS.Val_0;
      --  Event on Failing
      EOF        : P108PFS_EOF_Field := R7FA4M1AB.PFS.Val_0;
      --  IRQ input enable
      ISEL       : P108PFS_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P108PFS_ASEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Mode Control
      PMR        : P108PFS_PMR_Field := R7FA4M1AB.PFS.Val_1;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved_4 : P108PFS_Reserved_Field_2 := 16#0#;
      --  Port Function Select These bits select the peripheral function. For
      --  individual pin functions, see the setting table.
      PSEL       : P108PFS_PSEL_Field := 16#0#;
      --  These bits are read as 000. The write value should be 000.
      Reserved_5 : P108PFS_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => System.Low_Order_First;

   for P108PFS_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 11;
       EOR at 0 range 12 .. 12;
       EOF at 0 range 13 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
       PMR at 0 range 16 .. 16;
       Reserved_4 at 0 range 17 .. 23;
       PSEL at 0 range 24 .. 28;
       Reserved_5 at 0 range 29 .. 31;
     end record;

   --  Port Output Data
   type P108PFS_HA_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P108PFS_HA_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P108PFS_HA_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P108PFS_HA_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P108PFS_HA_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P108PFS_HA_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P108PFS_HA_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P108PFS_HA_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P108PFS_HA_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P108PFS_HA_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P108PFS_HA_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P108PFS_HA_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P108PFS_HA_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P108PFS_HA_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Rising
   type P108PFS_HA_EOR_Field is
     (--  No effected
     Val_0,
      --  Detect rising edge
      Val_1)
   with Size => 1;
   for P108PFS_HA_EOR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Failing
   type P108PFS_HA_EOF_Field is
     (--  No effected
     Val_0,
      --  Detect failing edge
      Val_1)
   with Size => 1;
   for P108PFS_HA_EOF_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P108PFS_HA_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P108PFS_HA_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P108PFS_HA_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P108PFS_HA_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  P108 Pin Function Control Register
   type P108PFS_HA_Register is record
      --  Port Output Data
      PODR       : P108PFS_HA_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P108PFS_HA_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P108PFS_HA_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P108PFS_HA_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P108PFS_HA_PCR_Field := R7FA4M1AB.PFS.Val_1;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P108PFS_HA_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P108PFS_HA_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P108PFS_HA_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P108PFS_HA_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_3 : P108PFS_HA_Reserved_Field := 16#0#;
      --  Event on Rising
      EOR        : P108PFS_HA_EOR_Field := R7FA4M1AB.PFS.Val_0;
      --  Event on Failing
      EOF        : P108PFS_HA_EOF_Field := R7FA4M1AB.PFS.Val_0;
      --  IRQ input enable
      ISEL       : P108PFS_HA_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P108PFS_HA_ASEL_Field := R7FA4M1AB.PFS.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for P108PFS_HA_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 11;
       EOR at 0 range 12 .. 12;
       EOF at 0 range 13 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
     end record;

   --  Port Output Data
   type P108PFS_BY_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P108PFS_BY_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P108PFS_BY_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P108PFS_BY_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P108PFS_BY_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P108PFS_BY_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P108PFS_BY_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P108PFS_BY_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P108PFS_BY_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P108PFS_BY_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P108PFS_BY_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   --  P108 Pin Function Control Register
   type P108PFS_BY_Register is record
      --  Port Output Data
      PODR       : P108PFS_BY_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P108PFS_BY_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P108PFS_BY_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P108PFS_BY_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P108PFS_BY_PCR_Field := R7FA4M1AB.PFS.Val_1;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P108PFS_BY_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P108PFS_BY_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_2 : P108PFS_BY_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for P108PFS_BY_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 7;
     end record;

   --  Port Output Data
   type P109PFS_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P109PFS_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P109PFS_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P109PFS_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P109PFS_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P109PFS_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P109PFS_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P109PFS_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P109PFS_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P109PFS_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P109PFS_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P109PFS_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P109PFS_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P109PFS_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Rising
   type P109PFS_EOR_Field is
     (--  No effected
     Val_0,
      --  Detect rising edge
      Val_1)
   with Size => 1;
   for P109PFS_EOR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Failing
   type P109PFS_EOF_Field is
     (--  No effected
     Val_0,
      --  Detect failing edge
      Val_1)
   with Size => 1;
   for P109PFS_EOF_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P109PFS_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P109PFS_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P109PFS_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P109PFS_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Mode Control
   type P109PFS_PMR_Field is
     (--  Uses the pin as a general I/O pin.
     Val_0,
      --  Uses the pin as an I/O port for peripheral functions.
      Val_1)
   with Size => 1;
   for P109PFS_PMR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P109PFS_Reserved_Field_2 is R7FA4M1AB.UInt7;
   subtype P109PFS_PSEL_Field is R7FA4M1AB.UInt5;

   --  P109 Pin Function Control Register
   type P109PFS_Register is record
      --  Port Output Data
      PODR       : P109PFS_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P109PFS_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P109PFS_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P109PFS_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P109PFS_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P109PFS_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P109PFS_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P109PFS_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P109PFS_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_3 : P109PFS_Reserved_Field := 16#0#;
      --  Event on Rising
      EOR        : P109PFS_EOR_Field := R7FA4M1AB.PFS.Val_0;
      --  Event on Failing
      EOF        : P109PFS_EOF_Field := R7FA4M1AB.PFS.Val_0;
      --  IRQ input enable
      ISEL       : P109PFS_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P109PFS_ASEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Mode Control
      PMR        : P109PFS_PMR_Field := R7FA4M1AB.PFS.Val_1;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved_4 : P109PFS_Reserved_Field_2 := 16#0#;
      --  Port Function Select These bits select the peripheral function. For
      --  individual pin functions, see the setting table.
      PSEL       : P109PFS_PSEL_Field := 16#0#;
      --  These bits are read as 000. The write value should be 000.
      Reserved_5 : P109PFS_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => System.Low_Order_First;

   for P109PFS_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 11;
       EOR at 0 range 12 .. 12;
       EOF at 0 range 13 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
       PMR at 0 range 16 .. 16;
       Reserved_4 at 0 range 17 .. 23;
       PSEL at 0 range 24 .. 28;
       Reserved_5 at 0 range 29 .. 31;
     end record;

   --  Port Output Data
   type P109PFS_HA_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P109PFS_HA_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P109PFS_HA_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P109PFS_HA_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P109PFS_HA_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P109PFS_HA_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P109PFS_HA_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P109PFS_HA_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P109PFS_HA_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P109PFS_HA_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P109PFS_HA_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P109PFS_HA_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P109PFS_HA_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P109PFS_HA_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Rising
   type P109PFS_HA_EOR_Field is
     (--  No effected
     Val_0,
      --  Detect rising edge
      Val_1)
   with Size => 1;
   for P109PFS_HA_EOR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Failing
   type P109PFS_HA_EOF_Field is
     (--  No effected
     Val_0,
      --  Detect failing edge
      Val_1)
   with Size => 1;
   for P109PFS_HA_EOF_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P109PFS_HA_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P109PFS_HA_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P109PFS_HA_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P109PFS_HA_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  P109 Pin Function Control Register
   type P109PFS_HA_Register is record
      --  Port Output Data
      PODR       : P109PFS_HA_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P109PFS_HA_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P109PFS_HA_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P109PFS_HA_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P109PFS_HA_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P109PFS_HA_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P109PFS_HA_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P109PFS_HA_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P109PFS_HA_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_3 : P109PFS_HA_Reserved_Field := 16#0#;
      --  Event on Rising
      EOR        : P109PFS_HA_EOR_Field := R7FA4M1AB.PFS.Val_0;
      --  Event on Failing
      EOF        : P109PFS_HA_EOF_Field := R7FA4M1AB.PFS.Val_0;
      --  IRQ input enable
      ISEL       : P109PFS_HA_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P109PFS_HA_ASEL_Field := R7FA4M1AB.PFS.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for P109PFS_HA_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 11;
       EOR at 0 range 12 .. 12;
       EOF at 0 range 13 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
     end record;

   --  Port Output Data
   type P109PFS_BY_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P109PFS_BY_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P109PFS_BY_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P109PFS_BY_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P109PFS_BY_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P109PFS_BY_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P109PFS_BY_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P109PFS_BY_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P109PFS_BY_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P109PFS_BY_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P109PFS_BY_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   --  P109 Pin Function Control Register
   type P109PFS_BY_Register is record
      --  Port Output Data
      PODR       : P109PFS_BY_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P109PFS_BY_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P109PFS_BY_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P109PFS_BY_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P109PFS_BY_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P109PFS_BY_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P109PFS_BY_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_2 : P109PFS_BY_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for P109PFS_BY_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 7;
     end record;

   --  Port Output Data
   type P110PFS_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P110PFS_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P110PFS_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P110PFS_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P110PFS_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P110PFS_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P110PFS_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P110PFS_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P110PFS_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P110PFS_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P110PFS_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P110PFS_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P110PFS_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P110PFS_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Rising
   type P110PFS_EOR_Field is
     (--  No effected
     Val_0,
      --  Detect rising edge
      Val_1)
   with Size => 1;
   for P110PFS_EOR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Failing
   type P110PFS_EOF_Field is
     (--  No effected
     Val_0,
      --  Detect failing edge
      Val_1)
   with Size => 1;
   for P110PFS_EOF_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P110PFS_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P110PFS_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P110PFS_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P110PFS_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Mode Control
   type P110PFS_PMR_Field is
     (--  Uses the pin as a general I/O pin.
     Val_0,
      --  Uses the pin as an I/O port for peripheral functions.
      Val_1)
   with Size => 1;
   for P110PFS_PMR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P110PFS_Reserved_Field_2 is R7FA4M1AB.UInt7;
   subtype P110PFS_PSEL_Field is R7FA4M1AB.UInt5;

   --  P110 Pin Function Control Register
   type P110PFS_Register is record
      --  Port Output Data
      PODR       : P110PFS_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P110PFS_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P110PFS_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P110PFS_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P110PFS_PCR_Field := R7FA4M1AB.PFS.Val_1;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P110PFS_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P110PFS_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P110PFS_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P110PFS_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_3 : P110PFS_Reserved_Field := 16#0#;
      --  Event on Rising
      EOR        : P110PFS_EOR_Field := R7FA4M1AB.PFS.Val_0;
      --  Event on Failing
      EOF        : P110PFS_EOF_Field := R7FA4M1AB.PFS.Val_0;
      --  IRQ input enable
      ISEL       : P110PFS_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P110PFS_ASEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Mode Control
      PMR        : P110PFS_PMR_Field := R7FA4M1AB.PFS.Val_1;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved_4 : P110PFS_Reserved_Field_2 := 16#0#;
      --  Port Function Select These bits select the peripheral function. For
      --  individual pin functions, see the setting table.
      PSEL       : P110PFS_PSEL_Field := 16#0#;
      --  These bits are read as 000. The write value should be 000.
      Reserved_5 : P110PFS_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => System.Low_Order_First;

   for P110PFS_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 11;
       EOR at 0 range 12 .. 12;
       EOF at 0 range 13 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
       PMR at 0 range 16 .. 16;
       Reserved_4 at 0 range 17 .. 23;
       PSEL at 0 range 24 .. 28;
       Reserved_5 at 0 range 29 .. 31;
     end record;

   --  Port Output Data
   type P110PFS_HA_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P110PFS_HA_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P110PFS_HA_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P110PFS_HA_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P110PFS_HA_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P110PFS_HA_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P110PFS_HA_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P110PFS_HA_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P110PFS_HA_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P110PFS_HA_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P110PFS_HA_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P110PFS_HA_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P110PFS_HA_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P110PFS_HA_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Rising
   type P110PFS_HA_EOR_Field is
     (--  No effected
     Val_0,
      --  Detect rising edge
      Val_1)
   with Size => 1;
   for P110PFS_HA_EOR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Failing
   type P110PFS_HA_EOF_Field is
     (--  No effected
     Val_0,
      --  Detect failing edge
      Val_1)
   with Size => 1;
   for P110PFS_HA_EOF_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P110PFS_HA_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P110PFS_HA_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P110PFS_HA_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P110PFS_HA_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  P110 Pin Function Control Register
   type P110PFS_HA_Register is record
      --  Port Output Data
      PODR       : P110PFS_HA_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P110PFS_HA_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P110PFS_HA_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P110PFS_HA_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P110PFS_HA_PCR_Field := R7FA4M1AB.PFS.Val_1;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P110PFS_HA_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P110PFS_HA_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P110PFS_HA_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P110PFS_HA_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_3 : P110PFS_HA_Reserved_Field := 16#0#;
      --  Event on Rising
      EOR        : P110PFS_HA_EOR_Field := R7FA4M1AB.PFS.Val_0;
      --  Event on Failing
      EOF        : P110PFS_HA_EOF_Field := R7FA4M1AB.PFS.Val_0;
      --  IRQ input enable
      ISEL       : P110PFS_HA_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P110PFS_HA_ASEL_Field := R7FA4M1AB.PFS.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for P110PFS_HA_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 11;
       EOR at 0 range 12 .. 12;
       EOF at 0 range 13 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
     end record;

   --  Port Output Data
   type P110PFS_BY_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P110PFS_BY_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P110PFS_BY_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P110PFS_BY_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P110PFS_BY_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P110PFS_BY_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P110PFS_BY_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P110PFS_BY_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P110PFS_BY_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P110PFS_BY_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P110PFS_BY_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   --  P110 Pin Function Control Register
   type P110PFS_BY_Register is record
      --  Port Output Data
      PODR       : P110PFS_BY_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P110PFS_BY_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P110PFS_BY_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P110PFS_BY_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P110PFS_BY_PCR_Field := R7FA4M1AB.PFS.Val_1;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P110PFS_BY_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P110PFS_BY_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_2 : P110PFS_BY_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for P110PFS_BY_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 7;
     end record;

   --  Port Output Data
   type P1PFS_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P1PFS_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P1PFS_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P1PFS_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P1PFS_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P1PFS_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P1PFS_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P1PFS_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P1PFS_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P1PFS_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P1PFS_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P1PFS_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P1PFS_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P1PFS_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Rising
   type P1PFS_EOR_Field is
     (--  Do not care
     Val_0,
      --  Detect rising edge
      Val_1)
   with Size => 1;
   for P1PFS_EOR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Falling
   type P1PFS_EOF_Field is
     (--  Do not care
     Val_0,
      --  Detect falling edge
      Val_1)
   with Size => 1;
   for P1PFS_EOF_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P1PFS_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P1PFS_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P1PFS_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P1PFS_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Mode Control
   type P1PFS_PMR_Field is
     (--  Uses the pin as a general I/O pin.
     Val_0,
      --  Uses the pin as an I/O port for peripheral functions.
      Val_1)
   with Size => 1;
   for P1PFS_PMR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P1PFS_Reserved_Field_2 is R7FA4M1AB.UInt7;
   subtype P1PFS_PSEL_Field is R7FA4M1AB.UInt5;

   --  P1%s Pin Function Control Register
   type P1PFS_Register is record
      --  Port Output Data
      PODR       : P1PFS_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P1PFS_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P1PFS_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P1PFS_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P1PFS_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P1PFS_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P1PFS_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P1PFS_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P1PFS_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : P1PFS_Reserved_Field := 16#0#;
      --  Event on Rising
      EOR        : P1PFS_EOR_Field := R7FA4M1AB.PFS.Val_0;
      --  Event on Falling
      EOF        : P1PFS_EOF_Field := R7FA4M1AB.PFS.Val_0;
      --  IRQ input enable
      ISEL       : P1PFS_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P1PFS_ASEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Mode Control
      PMR        : P1PFS_PMR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved_4 : P1PFS_Reserved_Field_2 := 16#0#;
      --  Port Function Select These bits select the peripheral function. For
      --  individual pin functions, see the MPC table
      PSEL       : P1PFS_PSEL_Field := 16#0#;
      --  These bits are read as 000. The write value should be 000.
      Reserved_5 : P1PFS_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => System.Low_Order_First;

   for P1PFS_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 11;
       EOR at 0 range 12 .. 12;
       EOF at 0 range 13 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
       PMR at 0 range 16 .. 16;
       Reserved_4 at 0 range 17 .. 23;
       PSEL at 0 range 24 .. 28;
       Reserved_5 at 0 range 29 .. 31;
     end record;

   --  P1%s Pin Function Control Register
   type P1PFS_Registers is array (0 .. 4) of P1PFS_Register;

   --  Port Output Data
   type P1PFS_HA0_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P1PFS_HA0_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P1PFS_HA0_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P1PFS_HA0_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P1PFS_HA0_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P1PFS_HA0_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P1PFS_HA_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P1PFS_HA0_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P1PFS_HA0_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P1PFS_HA0_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P1PFS_HA0_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P1PFS_HA_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P1PFS_HA0_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P1PFS_HA0_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Rising
   type P1PFS_HA0_EOR_Field is
     (--  Do not care
     Val_0,
      --  Detect rising edge
      Val_1)
   with Size => 1;
   for P1PFS_HA0_EOR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Falling
   type P1PFS_HA0_EOF_Field is
     (--  Do not care
     Val_0,
      --  Detect falling edge
      Val_1)
   with Size => 1;
   for P1PFS_HA0_EOF_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P1PFS_HA0_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P1PFS_HA0_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P1PFS_HA0_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P1PFS_HA0_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  P1%s Pin Function Control Register
   type P1PFS_HA_Register is record
      --  Port Output Data
      PODR       : P1PFS_HA0_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P1PFS_HA0_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P1PFS_HA0_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P1PFS_HA_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P1PFS_HA0_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P1PFS_HA_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P1PFS_HA0_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P1PFS_HA_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P1PFS_HA0_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : P1PFS_HA_Reserved_Field := 16#0#;
      --  Event on Rising
      EOR        : P1PFS_HA0_EOR_Field := R7FA4M1AB.PFS.Val_0;
      --  Event on Falling
      EOF        : P1PFS_HA0_EOF_Field := R7FA4M1AB.PFS.Val_0;
      --  IRQ input enable
      ISEL       : P1PFS_HA0_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P1PFS_HA0_ASEL_Field := R7FA4M1AB.PFS.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for P1PFS_HA_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 11;
       EOR at 0 range 12 .. 12;
       EOF at 0 range 13 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
     end record;

   --  Port Output Data
   type P1PFS_BY0_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P1PFS_BY0_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P1PFS_BY0_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P1PFS_BY0_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P1PFS_BY0_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P1PFS_BY0_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P1PFS_BY_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P1PFS_BY0_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P1PFS_BY0_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P1PFS_BY0_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P1PFS_BY0_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   --  P1%s Pin Function Control Register
   type P1PFS_BY_Register is record
      --  Port Output Data
      PODR       : P1PFS_BY0_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P1PFS_BY0_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P1PFS_BY0_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P1PFS_BY_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P1PFS_BY0_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P1PFS_BY_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P1PFS_BY0_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P1PFS_BY_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for P1PFS_BY_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 7;
     end record;

   --  Port Output Data
   type P200PFS_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P200PFS_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P200PFS_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P200PFS_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P200PFS_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P200PFS_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P200PFS_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P200PFS_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P200PFS_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P200PFS_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P200PFS_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P200PFS_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P200PFS_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P200PFS_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Rising
   type P200PFS_EOR_Field is
     (--  Do not care
     Val_0,
      --  Detect rising edge
      Val_1)
   with Size => 1;
   for P200PFS_EOR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Falling
   type P200PFS_EOF_Field is
     (--  Do not care
     Val_0,
      --  Detect falling edge
      Val_1)
   with Size => 1;
   for P200PFS_EOF_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P200PFS_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P200PFS_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P200PFS_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P200PFS_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Mode Control
   type P200PFS_PMR_Field is
     (--  Uses the pin as a general I/O pin.
     Val_0,
      --  Uses the pin as an I/O port for peripheral functions.
      Val_1)
   with Size => 1;
   for P200PFS_PMR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P200PFS_Reserved_Field_2 is R7FA4M1AB.UInt7;
   subtype P200PFS_PSEL_Field is R7FA4M1AB.UInt5;

   --  P200 Pin Function Control Register
   type P200PFS_Register is record
      --  Port Output Data
      PODR       : P200PFS_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P200PFS_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P200PFS_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P200PFS_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P200PFS_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P200PFS_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P200PFS_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P200PFS_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P200PFS_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : P200PFS_Reserved_Field := 16#0#;
      --  Event on Rising
      EOR        : P200PFS_EOR_Field := R7FA4M1AB.PFS.Val_0;
      --  Event on Falling
      EOF        : P200PFS_EOF_Field := R7FA4M1AB.PFS.Val_0;
      --  IRQ input enable
      ISEL       : P200PFS_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P200PFS_ASEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Mode Control
      PMR        : P200PFS_PMR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved_4 : P200PFS_Reserved_Field_2 := 16#0#;
      --  Port Function Select These bits select the peripheral function. For
      --  individual pin functions, see the MPC table
      PSEL       : P200PFS_PSEL_Field := 16#0#;
      --  These bits are read as 000. The write value should be 000.
      Reserved_5 : P200PFS_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => System.Low_Order_First;

   for P200PFS_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 11;
       EOR at 0 range 12 .. 12;
       EOF at 0 range 13 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
       PMR at 0 range 16 .. 16;
       Reserved_4 at 0 range 17 .. 23;
       PSEL at 0 range 24 .. 28;
       Reserved_5 at 0 range 29 .. 31;
     end record;

   --  Port Output Data
   type P200PFS_HA_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P200PFS_HA_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P200PFS_HA_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P200PFS_HA_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P200PFS_HA_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P200PFS_HA_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P200PFS_HA_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P200PFS_HA_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P200PFS_HA_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P200PFS_HA_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P200PFS_HA_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P200PFS_HA_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P200PFS_HA_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P200PFS_HA_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Rising
   type P200PFS_HA_EOR_Field is
     (--  Do not care
     Val_0,
      --  Detect rising edge
      Val_1)
   with Size => 1;
   for P200PFS_HA_EOR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Falling
   type P200PFS_HA_EOF_Field is
     (--  Do not care
     Val_0,
      --  Detect falling edge
      Val_1)
   with Size => 1;
   for P200PFS_HA_EOF_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P200PFS_HA_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P200PFS_HA_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P200PFS_HA_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P200PFS_HA_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  P200 Pin Function Control Register
   type P200PFS_HA_Register is record
      --  Port Output Data
      PODR       : P200PFS_HA_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P200PFS_HA_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P200PFS_HA_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P200PFS_HA_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P200PFS_HA_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P200PFS_HA_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P200PFS_HA_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P200PFS_HA_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P200PFS_HA_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : P200PFS_HA_Reserved_Field := 16#0#;
      --  Event on Rising
      EOR        : P200PFS_HA_EOR_Field := R7FA4M1AB.PFS.Val_0;
      --  Event on Falling
      EOF        : P200PFS_HA_EOF_Field := R7FA4M1AB.PFS.Val_0;
      --  IRQ input enable
      ISEL       : P200PFS_HA_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P200PFS_HA_ASEL_Field := R7FA4M1AB.PFS.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for P200PFS_HA_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 11;
       EOR at 0 range 12 .. 12;
       EOF at 0 range 13 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
     end record;

   --  Port Output Data
   type P200PFS_BY_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P200PFS_BY_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P200PFS_BY_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P200PFS_BY_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P200PFS_BY_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P200PFS_BY_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P200PFS_BY_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P200PFS_BY_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P200PFS_BY_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P200PFS_BY_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P200PFS_BY_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   --  P200 Pin Function Control Register
   type P200PFS_BY_Register is record
      --  Port Output Data
      PODR       : P200PFS_BY_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P200PFS_BY_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P200PFS_BY_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P200PFS_BY_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P200PFS_BY_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P200PFS_BY_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P200PFS_BY_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P200PFS_BY_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for P200PFS_BY_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 7;
     end record;

   --  Port Output Data
   type P201PFS_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P201PFS_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P201PFS_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P201PFS_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P201PFS_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P201PFS_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P201PFS_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P201PFS_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P201PFS_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P201PFS_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P201PFS_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P201PFS_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Drive Strength Control Register
   type P201PFS_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive
      Val_1)
   with Size => 1;
   for P201PFS_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Rising
   type P201PFS_EOR_Field is
     (--  Do not care
     Val_0,
      --  Detect rising edge
      Val_1)
   with Size => 1;
   for P201PFS_EOR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Falling
   type P201PFS_EOF_Field is
     (--  Do not care
     Val_0,
      --  Detect falling edge
      Val_1)
   with Size => 1;
   for P201PFS_EOF_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P201PFS_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P201PFS_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P201PFS_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P201PFS_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Mode Control
   type P201PFS_PMR_Field is
     (--  Uses the pin as a general I/O pin.
     Val_0,
      --  Uses the pin as an I/O port for peripheral functions.
      Val_1)
   with Size => 1;
   for P201PFS_PMR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P201PFS_Reserved_Field_2 is R7FA4M1AB.UInt7;
   subtype P201PFS_PSEL_Field is R7FA4M1AB.UInt5;

   --  P201 Pin Function Control Register
   type P201PFS_Register is record
      --  Port Output Data
      PODR       : P201PFS_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P201PFS_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P201PFS_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P201PFS_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P201PFS_PCR_Field := R7FA4M1AB.PFS.Val_1;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P201PFS_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P201PFS_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P201PFS_Reserved_Field_1 := 16#0#;
      --  Drive Strength Control Register
      DSCR       : P201PFS_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_3 : P201PFS_Reserved_Field := 16#0#;
      --  Event on Rising
      EOR        : P201PFS_EOR_Field := R7FA4M1AB.PFS.Val_0;
      --  Event on Falling
      EOF        : P201PFS_EOF_Field := R7FA4M1AB.PFS.Val_0;
      --  IRQ input enable
      ISEL       : P201PFS_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P201PFS_ASEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Mode Control
      PMR        : P201PFS_PMR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved_4 : P201PFS_Reserved_Field_2 := 16#0#;
      --  Port Function Select These bits select the peripheral function. For
      --  individual pin functions, see the setting table.
      PSEL       : P201PFS_PSEL_Field := 16#0#;
      --  These bits are read as 000. The write value should be 000.
      Reserved_5 : P201PFS_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => System.Low_Order_First;

   for P201PFS_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 11;
       EOR at 0 range 12 .. 12;
       EOF at 0 range 13 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
       PMR at 0 range 16 .. 16;
       Reserved_4 at 0 range 17 .. 23;
       PSEL at 0 range 24 .. 28;
       Reserved_5 at 0 range 29 .. 31;
     end record;

   --  Port Output Data
   type P201PFS_HA_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P201PFS_HA_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P201PFS_HA_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P201PFS_HA_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P201PFS_HA_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P201PFS_HA_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P201PFS_HA_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P201PFS_HA_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P201PFS_HA_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P201PFS_HA_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P201PFS_HA_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P201PFS_HA_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Drive Strength Control Register
   type P201PFS_HA_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive
      Val_1)
   with Size => 1;
   for P201PFS_HA_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Rising
   type P201PFS_HA_EOR_Field is
     (--  Do not care
     Val_0,
      --  Detect rising edge
      Val_1)
   with Size => 1;
   for P201PFS_HA_EOR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Falling
   type P201PFS_HA_EOF_Field is
     (--  Do not care
     Val_0,
      --  Detect falling edge
      Val_1)
   with Size => 1;
   for P201PFS_HA_EOF_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P201PFS_HA_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P201PFS_HA_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P201PFS_HA_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P201PFS_HA_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  P201 Pin Function Control Register
   type P201PFS_HA_Register is record
      --  Port Output Data
      PODR       : P201PFS_HA_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P201PFS_HA_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P201PFS_HA_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P201PFS_HA_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P201PFS_HA_PCR_Field := R7FA4M1AB.PFS.Val_1;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P201PFS_HA_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P201PFS_HA_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P201PFS_HA_Reserved_Field_1 := 16#0#;
      --  Drive Strength Control Register
      DSCR       : P201PFS_HA_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_3 : P201PFS_HA_Reserved_Field := 16#0#;
      --  Event on Rising
      EOR        : P201PFS_HA_EOR_Field := R7FA4M1AB.PFS.Val_0;
      --  Event on Falling
      EOF        : P201PFS_HA_EOF_Field := R7FA4M1AB.PFS.Val_0;
      --  IRQ input enable
      ISEL       : P201PFS_HA_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P201PFS_HA_ASEL_Field := R7FA4M1AB.PFS.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for P201PFS_HA_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 11;
       EOR at 0 range 12 .. 12;
       EOF at 0 range 13 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
     end record;

   --  Port Output Data
   type P201PFS_BY_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P201PFS_BY_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P201PFS_BY_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P201PFS_BY_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P201PFS_BY_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P201PFS_BY_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P201PFS_BY_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P201PFS_BY_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P201PFS_BY_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P201PFS_BY_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P201PFS_BY_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   --  P201 Pin Function Control Register
   type P201PFS_BY_Register is record
      --  Port Output Data
      PODR       : P201PFS_BY_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P201PFS_BY_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P201PFS_BY_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P201PFS_BY_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P201PFS_BY_PCR_Field := R7FA4M1AB.PFS.Val_1;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P201PFS_BY_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P201PFS_BY_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_2 : P201PFS_BY_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for P201PFS_BY_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 7;
     end record;

   --  Port Output Data
   type P20PFS_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P20PFS_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P20PFS_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P20PFS_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P20PFS_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P20PFS_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P20PFS_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P20PFS_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P20PFS_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P20PFS_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P20PFS_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P20PFS_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P20PFS_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P20PFS_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Rising
   type P20PFS_EOR_Field is
     (--  Do not care
     Val_0,
      --  Detect rising edge
      Val_1)
   with Size => 1;
   for P20PFS_EOR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Falling
   type P20PFS_EOF_Field is
     (--  Do not care
     Val_0,
      --  Detect falling edge
      Val_1)
   with Size => 1;
   for P20PFS_EOF_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P20PFS_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P20PFS_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P20PFS_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P20PFS_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Mode Control
   type P20PFS_PMR_Field is
     (--  Uses the pin as a general I/O pin.
     Val_0,
      --  Uses the pin as an I/O port for peripheral functions.
      Val_1)
   with Size => 1;
   for P20PFS_PMR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P20PFS_Reserved_Field_2 is R7FA4M1AB.UInt7;
   subtype P20PFS_PSEL_Field is R7FA4M1AB.UInt5;

   --  P20%s Pin Function Control Register
   type P20PFS_Register is record
      --  Port Output Data
      PODR       : P20PFS_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P20PFS_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P20PFS_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P20PFS_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P20PFS_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P20PFS_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P20PFS_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P20PFS_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P20PFS_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : P20PFS_Reserved_Field := 16#0#;
      --  Event on Rising
      EOR        : P20PFS_EOR_Field := R7FA4M1AB.PFS.Val_0;
      --  Event on Falling
      EOF        : P20PFS_EOF_Field := R7FA4M1AB.PFS.Val_0;
      --  IRQ input enable
      ISEL       : P20PFS_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P20PFS_ASEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Mode Control
      PMR        : P20PFS_PMR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved_4 : P20PFS_Reserved_Field_2 := 16#0#;
      --  Port Function Select These bits select the peripheral function. For
      --  individual pin functions, see the MPC table
      PSEL       : P20PFS_PSEL_Field := 16#0#;
      --  These bits are read as 000. The write value should be 000.
      Reserved_5 : P20PFS_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => System.Low_Order_First;

   for P20PFS_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 11;
       EOR at 0 range 12 .. 12;
       EOF at 0 range 13 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
       PMR at 0 range 16 .. 16;
       Reserved_4 at 0 range 17 .. 23;
       PSEL at 0 range 24 .. 28;
       Reserved_5 at 0 range 29 .. 31;
     end record;

   --  P20%s Pin Function Control Register
   type P20PFS_Registers is array (0 .. 4) of P20PFS_Register;

   --  Port Output Data
   type P20PFS_HA0_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P20PFS_HA0_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P20PFS_HA0_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P20PFS_HA0_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P20PFS_HA0_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P20PFS_HA0_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P20PFS_HA_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P20PFS_HA0_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P20PFS_HA0_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P20PFS_HA0_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P20PFS_HA0_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P20PFS_HA_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P20PFS_HA0_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P20PFS_HA0_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Rising
   type P20PFS_HA0_EOR_Field is
     (--  Do not care
     Val_0,
      --  Detect rising edge
      Val_1)
   with Size => 1;
   for P20PFS_HA0_EOR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Falling
   type P20PFS_HA0_EOF_Field is
     (--  Do not care
     Val_0,
      --  Detect falling edge
      Val_1)
   with Size => 1;
   for P20PFS_HA0_EOF_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P20PFS_HA0_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P20PFS_HA0_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P20PFS_HA0_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P20PFS_HA0_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  P20%s Pin Function Control Register
   type P20PFS_HA_Register is record
      --  Port Output Data
      PODR       : P20PFS_HA0_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P20PFS_HA0_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P20PFS_HA0_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P20PFS_HA_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P20PFS_HA0_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P20PFS_HA_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P20PFS_HA0_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P20PFS_HA_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P20PFS_HA0_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : P20PFS_HA_Reserved_Field := 16#0#;
      --  Event on Rising
      EOR        : P20PFS_HA0_EOR_Field := R7FA4M1AB.PFS.Val_0;
      --  Event on Falling
      EOF        : P20PFS_HA0_EOF_Field := R7FA4M1AB.PFS.Val_0;
      --  IRQ input enable
      ISEL       : P20PFS_HA0_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P20PFS_HA0_ASEL_Field := R7FA4M1AB.PFS.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for P20PFS_HA_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 11;
       EOR at 0 range 12 .. 12;
       EOF at 0 range 13 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
     end record;

   --  Port Output Data
   type P20PFS_BY0_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P20PFS_BY0_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P20PFS_BY0_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P20PFS_BY0_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P20PFS_BY0_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P20PFS_BY0_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P20PFS_BY_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P20PFS_BY0_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P20PFS_BY0_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P20PFS_BY0_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P20PFS_BY0_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   --  P20%s Pin Function Control Register
   type P20PFS_BY_Register is record
      --  Port Output Data
      PODR       : P20PFS_BY0_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P20PFS_BY0_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P20PFS_BY0_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P20PFS_BY_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P20PFS_BY0_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P20PFS_BY_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P20PFS_BY0_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P20PFS_BY_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for P20PFS_BY_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 7;
     end record;

   --  Port Output Data
   type P2PFS_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P2PFS_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P2PFS_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P2PFS_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P2PFS_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P2PFS_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P2PFS_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P2PFS_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P2PFS_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P2PFS_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P2PFS_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P2PFS_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P2PFS_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P2PFS_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Rising
   type P2PFS_EOR_Field is
     (--  Do not care
     Val_0,
      --  Detect rising edge
      Val_1)
   with Size => 1;
   for P2PFS_EOR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Falling
   type P2PFS_EOF_Field is
     (--  Do not care
     Val_0,
      --  Detect falling edge
      Val_1)
   with Size => 1;
   for P2PFS_EOF_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P2PFS_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P2PFS_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P2PFS_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P2PFS_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Mode Control
   type P2PFS_PMR_Field is
     (--  Uses the pin as a general I/O pin.
     Val_0,
      --  Uses the pin as an I/O port for peripheral functions.
      Val_1)
   with Size => 1;
   for P2PFS_PMR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P2PFS_Reserved_Field_2 is R7FA4M1AB.UInt7;
   subtype P2PFS_PSEL_Field is R7FA4M1AB.UInt5;

   --  P2%s Pin Function Control Register
   type P2PFS_Register is record
      --  Port Output Data
      PODR       : P2PFS_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P2PFS_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P2PFS_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P2PFS_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P2PFS_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P2PFS_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P2PFS_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P2PFS_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P2PFS_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : P2PFS_Reserved_Field := 16#0#;
      --  Event on Rising
      EOR        : P2PFS_EOR_Field := R7FA4M1AB.PFS.Val_0;
      --  Event on Falling
      EOF        : P2PFS_EOF_Field := R7FA4M1AB.PFS.Val_0;
      --  IRQ input enable
      ISEL       : P2PFS_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P2PFS_ASEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Mode Control
      PMR        : P2PFS_PMR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved_4 : P2PFS_Reserved_Field_2 := 16#0#;
      --  Port Function Select These bits select the peripheral function. For
      --  individual pin functions, see the MPC table
      PSEL       : P2PFS_PSEL_Field := 16#0#;
      --  These bits are read as 000. The write value should be 000.
      Reserved_5 : P2PFS_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => System.Low_Order_First;

   for P2PFS_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 11;
       EOR at 0 range 12 .. 12;
       EOF at 0 range 13 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
       PMR at 0 range 16 .. 16;
       Reserved_4 at 0 range 17 .. 23;
       PSEL at 0 range 24 .. 28;
       Reserved_5 at 0 range 29 .. 31;
     end record;

   --  P2%s Pin Function Control Register
   type P2PFS_Registers is array (0 .. 3) of P2PFS_Register;

   --  Port Output Data
   type P2PFS_HA0_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P2PFS_HA0_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P2PFS_HA0_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P2PFS_HA0_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P2PFS_HA0_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P2PFS_HA0_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P2PFS_HA_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P2PFS_HA0_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P2PFS_HA0_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P2PFS_HA0_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P2PFS_HA0_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P2PFS_HA_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P2PFS_HA0_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P2PFS_HA0_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Rising
   type P2PFS_HA0_EOR_Field is
     (--  Do not care
     Val_0,
      --  Detect rising edge
      Val_1)
   with Size => 1;
   for P2PFS_HA0_EOR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Falling
   type P2PFS_HA0_EOF_Field is
     (--  Do not care
     Val_0,
      --  Detect falling edge
      Val_1)
   with Size => 1;
   for P2PFS_HA0_EOF_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P2PFS_HA0_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P2PFS_HA0_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P2PFS_HA0_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P2PFS_HA0_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  P2%s Pin Function Control Register
   type P2PFS_HA_Register is record
      --  Port Output Data
      PODR       : P2PFS_HA0_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P2PFS_HA0_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P2PFS_HA0_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P2PFS_HA_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P2PFS_HA0_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P2PFS_HA_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P2PFS_HA0_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P2PFS_HA_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P2PFS_HA0_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : P2PFS_HA_Reserved_Field := 16#0#;
      --  Event on Rising
      EOR        : P2PFS_HA0_EOR_Field := R7FA4M1AB.PFS.Val_0;
      --  Event on Falling
      EOF        : P2PFS_HA0_EOF_Field := R7FA4M1AB.PFS.Val_0;
      --  IRQ input enable
      ISEL       : P2PFS_HA0_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P2PFS_HA0_ASEL_Field := R7FA4M1AB.PFS.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for P2PFS_HA_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 11;
       EOR at 0 range 12 .. 12;
       EOF at 0 range 13 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
     end record;

   --  Port Output Data
   type P2PFS_BY0_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P2PFS_BY0_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P2PFS_BY0_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P2PFS_BY0_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P2PFS_BY0_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P2PFS_BY0_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P2PFS_BY_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P2PFS_BY0_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P2PFS_BY0_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P2PFS_BY0_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P2PFS_BY0_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   --  P2%s Pin Function Control Register
   type P2PFS_BY_Register is record
      --  Port Output Data
      PODR       : P2PFS_BY0_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P2PFS_BY0_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P2PFS_BY0_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P2PFS_BY_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P2PFS_BY0_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P2PFS_BY_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P2PFS_BY0_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P2PFS_BY_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for P2PFS_BY_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 7;
     end record;

   --  Port Output Data
   type P300PFS_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P300PFS_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P300PFS_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P300PFS_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P300PFS_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P300PFS_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P300PFS_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P300PFS_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P300PFS_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P300PFS_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P300PFS_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P300PFS_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P300PFS_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P300PFS_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Rising
   type P300PFS_EOR_Field is
     (--  No effected
     Val_0,
      --  Detect rising edge
      Val_1)
   with Size => 1;
   for P300PFS_EOR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Failing
   type P300PFS_EOF_Field is
     (--  No effected
     Val_0,
      --  Detect failing edge
      Val_1)
   with Size => 1;
   for P300PFS_EOF_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P300PFS_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P300PFS_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P300PFS_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P300PFS_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Mode Control
   type P300PFS_PMR_Field is
     (--  Uses the pin as a general I/O pin.
     Val_0,
      --  Uses the pin as an I/O port for peripheral functions.
      Val_1)
   with Size => 1;
   for P300PFS_PMR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P300PFS_Reserved_Field_2 is R7FA4M1AB.UInt7;
   subtype P300PFS_PSEL_Field is R7FA4M1AB.UInt5;

   --  P300 Pin Function Control Register
   type P300PFS_Register is record
      --  Port Output Data
      PODR       : P300PFS_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P300PFS_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P300PFS_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P300PFS_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P300PFS_PCR_Field := R7FA4M1AB.PFS.Val_1;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P300PFS_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P300PFS_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P300PFS_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P300PFS_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_3 : P300PFS_Reserved_Field := 16#0#;
      --  Event on Rising
      EOR        : P300PFS_EOR_Field := R7FA4M1AB.PFS.Val_0;
      --  Event on Failing
      EOF        : P300PFS_EOF_Field := R7FA4M1AB.PFS.Val_0;
      --  IRQ input enable
      ISEL       : P300PFS_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P300PFS_ASEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Mode Control
      PMR        : P300PFS_PMR_Field := R7FA4M1AB.PFS.Val_1;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved_4 : P300PFS_Reserved_Field_2 := 16#0#;
      --  Port Function Select These bits select the peripheral function. For
      --  individual pin functions, see the setting table.
      PSEL       : P300PFS_PSEL_Field := 16#0#;
      --  These bits are read as 000. The write value should be 000.
      Reserved_5 : P300PFS_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => System.Low_Order_First;

   for P300PFS_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 11;
       EOR at 0 range 12 .. 12;
       EOF at 0 range 13 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
       PMR at 0 range 16 .. 16;
       Reserved_4 at 0 range 17 .. 23;
       PSEL at 0 range 24 .. 28;
       Reserved_5 at 0 range 29 .. 31;
     end record;

   --  Port Output Data
   type P300PFS_HA_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P300PFS_HA_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P300PFS_HA_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P300PFS_HA_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P300PFS_HA_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P300PFS_HA_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P300PFS_HA_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P300PFS_HA_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P300PFS_HA_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P300PFS_HA_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P300PFS_HA_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P300PFS_HA_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P300PFS_HA_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P300PFS_HA_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Rising
   type P300PFS_HA_EOR_Field is
     (--  No effected
     Val_0,
      --  Detect rising edge
      Val_1)
   with Size => 1;
   for P300PFS_HA_EOR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Failing
   type P300PFS_HA_EOF_Field is
     (--  No effected
     Val_0,
      --  Detect failing edge
      Val_1)
   with Size => 1;
   for P300PFS_HA_EOF_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P300PFS_HA_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P300PFS_HA_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P300PFS_HA_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P300PFS_HA_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  P300 Pin Function Control Register
   type P300PFS_HA_Register is record
      --  Port Output Data
      PODR       : P300PFS_HA_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P300PFS_HA_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P300PFS_HA_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P300PFS_HA_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P300PFS_HA_PCR_Field := R7FA4M1AB.PFS.Val_1;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P300PFS_HA_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P300PFS_HA_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P300PFS_HA_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P300PFS_HA_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_3 : P300PFS_HA_Reserved_Field := 16#0#;
      --  Event on Rising
      EOR        : P300PFS_HA_EOR_Field := R7FA4M1AB.PFS.Val_0;
      --  Event on Failing
      EOF        : P300PFS_HA_EOF_Field := R7FA4M1AB.PFS.Val_0;
      --  IRQ input enable
      ISEL       : P300PFS_HA_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P300PFS_HA_ASEL_Field := R7FA4M1AB.PFS.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for P300PFS_HA_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 11;
       EOR at 0 range 12 .. 12;
       EOF at 0 range 13 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
     end record;

   --  Port Output Data
   type P300PFS_BY_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P300PFS_BY_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P300PFS_BY_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P300PFS_BY_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P300PFS_BY_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P300PFS_BY_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P300PFS_BY_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P300PFS_BY_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P300PFS_BY_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P300PFS_BY_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P300PFS_BY_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   --  P300 Pin Function Control Register
   type P300PFS_BY_Register is record
      --  Port Output Data
      PODR       : P300PFS_BY_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P300PFS_BY_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P300PFS_BY_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P300PFS_BY_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P300PFS_BY_PCR_Field := R7FA4M1AB.PFS.Val_1;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P300PFS_BY_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P300PFS_BY_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_2 : P300PFS_BY_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for P300PFS_BY_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 7;
     end record;

   --  Port Output Data
   type P30PFS_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P30PFS_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P30PFS_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P30PFS_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P30PFS_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P30PFS_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P30PFS_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P30PFS_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P30PFS_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P30PFS_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P30PFS_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P30PFS_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P30PFS_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P30PFS_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Rising
   type P30PFS_EOR_Field is
     (--  Do not care
     Val_0,
      --  Detect rising edge
      Val_1)
   with Size => 1;
   for P30PFS_EOR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Falling
   type P30PFS_EOF_Field is
     (--  Do not care
     Val_0,
      --  Detect falling edge
      Val_1)
   with Size => 1;
   for P30PFS_EOF_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P30PFS_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P30PFS_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P30PFS_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P30PFS_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Mode Control
   type P30PFS_PMR_Field is
     (--  Uses the pin as a general I/O pin.
     Val_0,
      --  Uses the pin as an I/O port for peripheral functions.
      Val_1)
   with Size => 1;
   for P30PFS_PMR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P30PFS_Reserved_Field_2 is R7FA4M1AB.UInt7;
   subtype P30PFS_PSEL_Field is R7FA4M1AB.UInt5;

   --  P30%s Pin Function Control Register
   type P30PFS_Register is record
      --  Port Output Data
      PODR       : P30PFS_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P30PFS_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P30PFS_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P30PFS_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P30PFS_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P30PFS_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P30PFS_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P30PFS_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P30PFS_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : P30PFS_Reserved_Field := 16#0#;
      --  Event on Rising
      EOR        : P30PFS_EOR_Field := R7FA4M1AB.PFS.Val_0;
      --  Event on Falling
      EOF        : P30PFS_EOF_Field := R7FA4M1AB.PFS.Val_0;
      --  IRQ input enable
      ISEL       : P30PFS_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P30PFS_ASEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Mode Control
      PMR        : P30PFS_PMR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved_4 : P30PFS_Reserved_Field_2 := 16#0#;
      --  Port Function Select These bits select the peripheral function. For
      --  individual pin functions, see the MPC table
      PSEL       : P30PFS_PSEL_Field := 16#0#;
      --  These bits are read as 000. The write value should be 000.
      Reserved_5 : P30PFS_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => System.Low_Order_First;

   for P30PFS_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 11;
       EOR at 0 range 12 .. 12;
       EOF at 0 range 13 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
       PMR at 0 range 16 .. 16;
       Reserved_4 at 0 range 17 .. 23;
       PSEL at 0 range 24 .. 28;
       Reserved_5 at 0 range 29 .. 31;
     end record;

   --  P30%s Pin Function Control Register
   type P30PFS_Registers is array (0 .. 6) of P30PFS_Register;

   --  Port Output Data
   type P30PFS_HA0_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P30PFS_HA0_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P30PFS_HA0_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P30PFS_HA0_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P30PFS_HA0_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P30PFS_HA0_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P30PFS_HA_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P30PFS_HA0_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P30PFS_HA0_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P30PFS_HA0_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P30PFS_HA0_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P30PFS_HA_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P30PFS_HA0_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P30PFS_HA0_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Rising
   type P30PFS_HA0_EOR_Field is
     (--  Do not care
     Val_0,
      --  Detect rising edge
      Val_1)
   with Size => 1;
   for P30PFS_HA0_EOR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Falling
   type P30PFS_HA0_EOF_Field is
     (--  Do not care
     Val_0,
      --  Detect falling edge
      Val_1)
   with Size => 1;
   for P30PFS_HA0_EOF_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P30PFS_HA0_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P30PFS_HA0_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P30PFS_HA0_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P30PFS_HA0_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  P30%s Pin Function Control Register
   type P30PFS_HA_Register is record
      --  Port Output Data
      PODR       : P30PFS_HA0_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P30PFS_HA0_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P30PFS_HA0_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P30PFS_HA_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P30PFS_HA0_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P30PFS_HA_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P30PFS_HA0_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P30PFS_HA_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P30PFS_HA0_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : P30PFS_HA_Reserved_Field := 16#0#;
      --  Event on Rising
      EOR        : P30PFS_HA0_EOR_Field := R7FA4M1AB.PFS.Val_0;
      --  Event on Falling
      EOF        : P30PFS_HA0_EOF_Field := R7FA4M1AB.PFS.Val_0;
      --  IRQ input enable
      ISEL       : P30PFS_HA0_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P30PFS_HA0_ASEL_Field := R7FA4M1AB.PFS.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for P30PFS_HA_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 11;
       EOR at 0 range 12 .. 12;
       EOF at 0 range 13 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
     end record;

   --  Port Output Data
   type P30PFS_BY0_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P30PFS_BY0_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P30PFS_BY0_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P30PFS_BY0_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P30PFS_BY0_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P30PFS_BY0_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P30PFS_BY_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P30PFS_BY0_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P30PFS_BY0_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P30PFS_BY0_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P30PFS_BY0_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   --  P30%s Pin Function Control Register
   type P30PFS_BY_Register is record
      --  Port Output Data
      PODR       : P30PFS_BY0_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P30PFS_BY0_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P30PFS_BY0_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P30PFS_BY_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P30PFS_BY0_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P30PFS_BY_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P30PFS_BY0_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P30PFS_BY_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for P30PFS_BY_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 7;
     end record;

   --  Port Output Data
   type P40PFS_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P40PFS_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P40PFS_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P40PFS_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P40PFS_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P40PFS_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P40PFS_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P40PFS_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P40PFS_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P40PFS_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P40PFS_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P40PFS_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P40PFS_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P40PFS_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Rising
   type P40PFS_EOR_Field is
     (--  Do not care
     Val_0,
      --  Detect rising edge
      Val_1)
   with Size => 1;
   for P40PFS_EOR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Falling
   type P40PFS_EOF_Field is
     (--  Do not care
     Val_0,
      --  Detect falling edge
      Val_1)
   with Size => 1;
   for P40PFS_EOF_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P40PFS_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P40PFS_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P40PFS_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P40PFS_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Mode Control
   type P40PFS_PMR_Field is
     (--  Uses the pin as a general I/O pin.
     Val_0,
      --  Uses the pin as an I/O port for peripheral functions.
      Val_1)
   with Size => 1;
   for P40PFS_PMR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P40PFS_Reserved_Field_2 is R7FA4M1AB.UInt7;
   subtype P40PFS_PSEL_Field is R7FA4M1AB.UInt5;

   --  P40%s Pin Function Control Register
   type P40PFS_Register is record
      --  Port Output Data
      PODR       : P40PFS_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P40PFS_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P40PFS_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P40PFS_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P40PFS_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P40PFS_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P40PFS_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P40PFS_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P40PFS_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : P40PFS_Reserved_Field := 16#0#;
      --  Event on Rising
      EOR        : P40PFS_EOR_Field := R7FA4M1AB.PFS.Val_0;
      --  Event on Falling
      EOF        : P40PFS_EOF_Field := R7FA4M1AB.PFS.Val_0;
      --  IRQ input enable
      ISEL       : P40PFS_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P40PFS_ASEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Mode Control
      PMR        : P40PFS_PMR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved_4 : P40PFS_Reserved_Field_2 := 16#0#;
      --  Port Function Select These bits select the peripheral function. For
      --  individual pin functions, see the MPC table
      PSEL       : P40PFS_PSEL_Field := 16#0#;
      --  These bits are read as 000. The write value should be 000.
      Reserved_5 : P40PFS_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => System.Low_Order_First;

   for P40PFS_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 11;
       EOR at 0 range 12 .. 12;
       EOF at 0 range 13 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
       PMR at 0 range 16 .. 16;
       Reserved_4 at 0 range 17 .. 23;
       PSEL at 0 range 24 .. 28;
       Reserved_5 at 0 range 29 .. 31;
     end record;

   --  P40%s Pin Function Control Register
   type P40PFS_Registers is array (0 .. 7) of P40PFS_Register;

   --  Port Output Data
   type P40PFS_HA0_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P40PFS_HA0_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P40PFS_HA0_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P40PFS_HA0_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P40PFS_HA0_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P40PFS_HA0_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P40PFS_HA_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P40PFS_HA0_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P40PFS_HA0_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P40PFS_HA0_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P40PFS_HA0_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P40PFS_HA_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P40PFS_HA0_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P40PFS_HA0_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Rising
   type P40PFS_HA0_EOR_Field is
     (--  Do not care
     Val_0,
      --  Detect rising edge
      Val_1)
   with Size => 1;
   for P40PFS_HA0_EOR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Falling
   type P40PFS_HA0_EOF_Field is
     (--  Do not care
     Val_0,
      --  Detect falling edge
      Val_1)
   with Size => 1;
   for P40PFS_HA0_EOF_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P40PFS_HA0_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P40PFS_HA0_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P40PFS_HA0_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P40PFS_HA0_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  P40%s Pin Function Control Register
   type P40PFS_HA_Register is record
      --  Port Output Data
      PODR       : P40PFS_HA0_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P40PFS_HA0_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P40PFS_HA0_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P40PFS_HA_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P40PFS_HA0_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P40PFS_HA_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P40PFS_HA0_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P40PFS_HA_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P40PFS_HA0_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : P40PFS_HA_Reserved_Field := 16#0#;
      --  Event on Rising
      EOR        : P40PFS_HA0_EOR_Field := R7FA4M1AB.PFS.Val_0;
      --  Event on Falling
      EOF        : P40PFS_HA0_EOF_Field := R7FA4M1AB.PFS.Val_0;
      --  IRQ input enable
      ISEL       : P40PFS_HA0_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P40PFS_HA0_ASEL_Field := R7FA4M1AB.PFS.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for P40PFS_HA_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 11;
       EOR at 0 range 12 .. 12;
       EOF at 0 range 13 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
     end record;

   --  Port Output Data
   type P40PFS_BY0_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P40PFS_BY0_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P40PFS_BY0_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P40PFS_BY0_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P40PFS_BY0_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P40PFS_BY0_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P40PFS_BY_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P40PFS_BY0_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P40PFS_BY0_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P40PFS_BY0_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P40PFS_BY0_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   --  P40%s Pin Function Control Register
   type P40PFS_BY_Register is record
      --  Port Output Data
      PODR       : P40PFS_BY0_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P40PFS_BY0_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P40PFS_BY0_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P40PFS_BY_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P40PFS_BY0_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P40PFS_BY_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P40PFS_BY0_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P40PFS_BY_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for P40PFS_BY_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 7;
     end record;

   --  Port Output Data
   type P408PFS_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P408PFS_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P408PFS_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P408PFS_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P408PFS_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P408PFS_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P408PFS_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P408PFS_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P408PFS_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P408PFS_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P408PFS_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P408PFS_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Drive Strength Control Register
   type P408PFS_DSCR_Field is
     (--  Low drive(DSCR1 = 0)/Middle drive for llC Fast-mode(DSCR1 = 1)
     Val_0,
      --  Middle drive(DSCR1 = 0)/Setting prohibited(DSCR1 = 1)
      Val_1)
   with Size => 1;
   for P408PFS_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  Drive Strength Control Register
   type P408PFS_DSCR1_Field is
     (--  Low drive(DSCR = 0)/Middle drive(DSCR = 1)
     Val_0,
      --  Middle drive for IIC Fast-mode(DSCR = 0)/Setting prohibited(DSCR = 1)
      Val_1)
   with Size => 1;
   for P408PFS_DSCR1_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Rising
   type P408PFS_EOR_Field is
     (--  Do not care
     Val_0,
      --  Detect rising edge
      Val_1)
   with Size => 1;
   for P408PFS_EOR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Falling
   type P408PFS_EOF_Field is
     (--  Do not care
     Val_0,
      --  Detect falling edge
      Val_1)
   with Size => 1;
   for P408PFS_EOF_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P408PFS_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P408PFS_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P408PFS_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P408PFS_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Mode Control
   type P408PFS_PMR_Field is
     (--  Uses the pin as a general I/O pin.
     Val_0,
      --  Uses the pin as an I/O port for peripheral functions.
      Val_1)
   with Size => 1;
   for P408PFS_PMR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P408PFS_Reserved_Field_2 is R7FA4M1AB.UInt7;
   subtype P408PFS_PSEL_Field is R7FA4M1AB.UInt5;

   --  P408 Pin Function Control Register
   type P408PFS_Register is record
      --  Port Output Data
      PODR       : P408PFS_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P408PFS_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P408PFS_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P408PFS_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P408PFS_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P408PFS_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P408PFS_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P408PFS_Reserved_Field_1 := 16#0#;
      --  Drive Strength Control Register
      DSCR       : P408PFS_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  Drive Strength Control Register
      DSCR1      : P408PFS_DSCR1_Field := R7FA4M1AB.PFS.Val_0;
      --  Event on Rising
      EOR        : P408PFS_EOR_Field := R7FA4M1AB.PFS.Val_0;
      --  Event on Falling
      EOF        : P408PFS_EOF_Field := R7FA4M1AB.PFS.Val_0;
      --  IRQ input enable
      ISEL       : P408PFS_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P408PFS_ASEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Mode Control
      PMR        : P408PFS_PMR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved_3 : P408PFS_Reserved_Field_2 := 16#0#;
      --  Port Function Select These bits select the peripheral function. For
      --  individual pin functions, see the setting table.
      PSEL       : P408PFS_PSEL_Field := 16#0#;
      --  These bits are read as 000. The write value should be 000.
      Reserved_4 : P408PFS_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => System.Low_Order_First;

   for P408PFS_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       DSCR1 at 0 range 11 .. 11;
       EOR at 0 range 12 .. 12;
       EOF at 0 range 13 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
       PMR at 0 range 16 .. 16;
       Reserved_3 at 0 range 17 .. 23;
       PSEL at 0 range 24 .. 28;
       Reserved_4 at 0 range 29 .. 31;
     end record;

   --  Port Output Data
   type P408PFS_HA_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P408PFS_HA_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P408PFS_HA_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P408PFS_HA_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P408PFS_HA_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P408PFS_HA_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P408PFS_HA_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P408PFS_HA_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P408PFS_HA_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P408PFS_HA_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P408PFS_HA_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P408PFS_HA_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Drive Strength Control Register
   type P408PFS_HA_DSCR_Field is
     (--  Low drive(DSCR1 = 0)/Middle drive for llC Fast-mode(DSCR1 = 1)
     Val_0,
      --  Middle drive(DSCR1 = 0)/Setting prohibited(DSCR1 = 1)
      Val_1)
   with Size => 1;
   for P408PFS_HA_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  Drive Strength Control Register
   type P408PFS_HA_DSCR1_Field is
     (--  Low drive(DSCR = 0)/Middle drive(DSCR = 1)
     Val_0,
      --  Middle drive for IIC Fast-mode(DSCR = 0)/Setting prohibited(DSCR = 1)
      Val_1)
   with Size => 1;
   for P408PFS_HA_DSCR1_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Rising
   type P408PFS_HA_EOR_Field is
     (--  Do not care
     Val_0,
      --  Detect rising edge
      Val_1)
   with Size => 1;
   for P408PFS_HA_EOR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Falling
   type P408PFS_HA_EOF_Field is
     (--  Do not care
     Val_0,
      --  Detect falling edge
      Val_1)
   with Size => 1;
   for P408PFS_HA_EOF_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P408PFS_HA_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P408PFS_HA_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P408PFS_HA_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P408PFS_HA_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  P408 Pin Function Control Register
   type P408PFS_HA_Register is record
      --  Port Output Data
      PODR       : P408PFS_HA_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P408PFS_HA_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P408PFS_HA_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P408PFS_HA_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P408PFS_HA_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P408PFS_HA_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P408PFS_HA_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P408PFS_HA_Reserved_Field_1 := 16#0#;
      --  Drive Strength Control Register
      DSCR       : P408PFS_HA_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  Drive Strength Control Register
      DSCR1      : P408PFS_HA_DSCR1_Field := R7FA4M1AB.PFS.Val_0;
      --  Event on Rising
      EOR        : P408PFS_HA_EOR_Field := R7FA4M1AB.PFS.Val_0;
      --  Event on Falling
      EOF        : P408PFS_HA_EOF_Field := R7FA4M1AB.PFS.Val_0;
      --  IRQ input enable
      ISEL       : P408PFS_HA_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P408PFS_HA_ASEL_Field := R7FA4M1AB.PFS.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for P408PFS_HA_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       DSCR1 at 0 range 11 .. 11;
       EOR at 0 range 12 .. 12;
       EOF at 0 range 13 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
     end record;

   --  Port Output Data
   type P408PFS_BY_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P408PFS_BY_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P408PFS_BY_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P408PFS_BY_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P408PFS_BY_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P408PFS_BY_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P408PFS_BY_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P408PFS_BY_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P408PFS_BY_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P408PFS_BY_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P408PFS_BY_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   --  P408 Pin Function Control Register
   type P408PFS_BY_Register is record
      --  Port Output Data
      PODR       : P408PFS_BY_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P408PFS_BY_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P408PFS_BY_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P408PFS_BY_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P408PFS_BY_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P408PFS_BY_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P408PFS_BY_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_2 : P408PFS_BY_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for P408PFS_BY_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 7;
     end record;

   --  Port Output Data
   type P409PFS_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P409PFS_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P409PFS_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P409PFS_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P409PFS_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P409PFS_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P409PFS_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P409PFS_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P409PFS_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P409PFS_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P409PFS_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P409PFS_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P409PFS_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P409PFS_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Rising
   type P409PFS_EOR_Field is
     (--  Do not care
     Val_0,
      --  Detect rising edge
      Val_1)
   with Size => 1;
   for P409PFS_EOR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Falling
   type P409PFS_EOF_Field is
     (--  Do not care
     Val_0,
      --  Detect falling edge
      Val_1)
   with Size => 1;
   for P409PFS_EOF_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P409PFS_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P409PFS_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P409PFS_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P409PFS_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Mode Control
   type P409PFS_PMR_Field is
     (--  Uses the pin as a general I/O pin.
     Val_0,
      --  Uses the pin as an I/O port for peripheral functions.
      Val_1)
   with Size => 1;
   for P409PFS_PMR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P409PFS_Reserved_Field_2 is R7FA4M1AB.UInt7;
   subtype P409PFS_PSEL_Field is R7FA4M1AB.UInt5;

   --  P409 Pin Function Control Register
   type P409PFS_Register is record
      --  Port Output Data
      PODR       : P409PFS_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P409PFS_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P409PFS_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P409PFS_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P409PFS_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P409PFS_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P409PFS_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P409PFS_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P409PFS_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : P409PFS_Reserved_Field := 16#0#;
      --  Event on Rising
      EOR        : P409PFS_EOR_Field := R7FA4M1AB.PFS.Val_0;
      --  Event on Falling
      EOF        : P409PFS_EOF_Field := R7FA4M1AB.PFS.Val_0;
      --  IRQ input enable
      ISEL       : P409PFS_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P409PFS_ASEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Mode Control
      PMR        : P409PFS_PMR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved_4 : P409PFS_Reserved_Field_2 := 16#0#;
      --  Port Function Select These bits select the peripheral function. For
      --  individual pin functions, see the MPC table
      PSEL       : P409PFS_PSEL_Field := 16#0#;
      --  These bits are read as 000. The write value should be 000.
      Reserved_5 : P409PFS_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => System.Low_Order_First;

   for P409PFS_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 11;
       EOR at 0 range 12 .. 12;
       EOF at 0 range 13 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
       PMR at 0 range 16 .. 16;
       Reserved_4 at 0 range 17 .. 23;
       PSEL at 0 range 24 .. 28;
       Reserved_5 at 0 range 29 .. 31;
     end record;

   --  Port Output Data
   type P409PFS_HA_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P409PFS_HA_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P409PFS_HA_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P409PFS_HA_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P409PFS_HA_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P409PFS_HA_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P409PFS_HA_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P409PFS_HA_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P409PFS_HA_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P409PFS_HA_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P409PFS_HA_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P409PFS_HA_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P409PFS_HA_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P409PFS_HA_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Rising
   type P409PFS_HA_EOR_Field is
     (--  Do not care
     Val_0,
      --  Detect rising edge
      Val_1)
   with Size => 1;
   for P409PFS_HA_EOR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Falling
   type P409PFS_HA_EOF_Field is
     (--  Do not care
     Val_0,
      --  Detect falling edge
      Val_1)
   with Size => 1;
   for P409PFS_HA_EOF_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P409PFS_HA_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P409PFS_HA_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P409PFS_HA_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P409PFS_HA_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  P409 Pin Function Control Register
   type P409PFS_HA_Register is record
      --  Port Output Data
      PODR       : P409PFS_HA_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P409PFS_HA_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P409PFS_HA_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P409PFS_HA_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P409PFS_HA_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P409PFS_HA_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P409PFS_HA_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P409PFS_HA_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P409PFS_HA_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : P409PFS_HA_Reserved_Field := 16#0#;
      --  Event on Rising
      EOR        : P409PFS_HA_EOR_Field := R7FA4M1AB.PFS.Val_0;
      --  Event on Falling
      EOF        : P409PFS_HA_EOF_Field := R7FA4M1AB.PFS.Val_0;
      --  IRQ input enable
      ISEL       : P409PFS_HA_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P409PFS_HA_ASEL_Field := R7FA4M1AB.PFS.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for P409PFS_HA_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 11;
       EOR at 0 range 12 .. 12;
       EOF at 0 range 13 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
     end record;

   --  Port Output Data
   type P409PFS_BY_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P409PFS_BY_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P409PFS_BY_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P409PFS_BY_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P409PFS_BY_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P409PFS_BY_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P409PFS_BY_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P409PFS_BY_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P409PFS_BY_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P409PFS_BY_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P409PFS_BY_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   --  P409 Pin Function Control Register
   type P409PFS_BY_Register is record
      --  Port Output Data
      PODR       : P409PFS_BY_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P409PFS_BY_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P409PFS_BY_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P409PFS_BY_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P409PFS_BY_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P409PFS_BY_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P409PFS_BY_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P409PFS_BY_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for P409PFS_BY_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 7;
     end record;

   --  Port Output Data
   type P4PFS_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P4PFS_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P4PFS_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P4PFS_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P4PFS_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P4PFS_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P4PFS_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P4PFS_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P4PFS_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P4PFS_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P4PFS_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P4PFS_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P4PFS_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P4PFS_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Rising
   type P4PFS_EOR_Field is
     (--  Do not care
     Val_0,
      --  Detect rising edge
      Val_1)
   with Size => 1;
   for P4PFS_EOR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Falling
   type P4PFS_EOF_Field is
     (--  Do not care
     Val_0,
      --  Detect falling edge
      Val_1)
   with Size => 1;
   for P4PFS_EOF_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P4PFS_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P4PFS_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P4PFS_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P4PFS_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Mode Control
   type P4PFS_PMR_Field is
     (--  Uses the pin as a general I/O pin.
     Val_0,
      --  Uses the pin as an I/O port for peripheral functions.
      Val_1)
   with Size => 1;
   for P4PFS_PMR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P4PFS_Reserved_Field_2 is R7FA4M1AB.UInt7;
   subtype P4PFS_PSEL_Field is R7FA4M1AB.UInt5;

   --  P4%s Pin Function Control Register
   type P4PFS_Register is record
      --  Port Output Data
      PODR       : P4PFS_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P4PFS_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P4PFS_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P4PFS_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P4PFS_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P4PFS_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P4PFS_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P4PFS_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P4PFS_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : P4PFS_Reserved_Field := 16#0#;
      --  Event on Rising
      EOR        : P4PFS_EOR_Field := R7FA4M1AB.PFS.Val_0;
      --  Event on Falling
      EOF        : P4PFS_EOF_Field := R7FA4M1AB.PFS.Val_0;
      --  IRQ input enable
      ISEL       : P4PFS_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P4PFS_ASEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Mode Control
      PMR        : P4PFS_PMR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved_4 : P4PFS_Reserved_Field_2 := 16#0#;
      --  Port Function Select These bits select the peripheral function. For
      --  individual pin functions, see the MPC table
      PSEL       : P4PFS_PSEL_Field := 16#0#;
      --  These bits are read as 000. The write value should be 000.
      Reserved_5 : P4PFS_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => System.Low_Order_First;

   for P4PFS_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 11;
       EOR at 0 range 12 .. 12;
       EOF at 0 range 13 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
       PMR at 0 range 16 .. 16;
       Reserved_4 at 0 range 17 .. 23;
       PSEL at 0 range 24 .. 28;
       Reserved_5 at 0 range 29 .. 31;
     end record;

   --  P4%s Pin Function Control Register
   type P4PFS_Registers is array (0 .. 5) of P4PFS_Register;

   --  Port Output Data
   type P4PFS_HA0_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P4PFS_HA0_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P4PFS_HA0_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P4PFS_HA0_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P4PFS_HA0_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P4PFS_HA0_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P4PFS_HA_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P4PFS_HA0_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P4PFS_HA0_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P4PFS_HA0_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P4PFS_HA0_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P4PFS_HA_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P4PFS_HA0_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P4PFS_HA0_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Rising
   type P4PFS_HA0_EOR_Field is
     (--  Do not care
     Val_0,
      --  Detect rising edge
      Val_1)
   with Size => 1;
   for P4PFS_HA0_EOR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Falling
   type P4PFS_HA0_EOF_Field is
     (--  Do not care
     Val_0,
      --  Detect falling edge
      Val_1)
   with Size => 1;
   for P4PFS_HA0_EOF_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P4PFS_HA0_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P4PFS_HA0_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P4PFS_HA0_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P4PFS_HA0_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  P4%s Pin Function Control Register
   type P4PFS_HA_Register is record
      --  Port Output Data
      PODR       : P4PFS_HA0_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P4PFS_HA0_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P4PFS_HA0_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P4PFS_HA_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P4PFS_HA0_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P4PFS_HA_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P4PFS_HA0_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P4PFS_HA_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P4PFS_HA0_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : P4PFS_HA_Reserved_Field := 16#0#;
      --  Event on Rising
      EOR        : P4PFS_HA0_EOR_Field := R7FA4M1AB.PFS.Val_0;
      --  Event on Falling
      EOF        : P4PFS_HA0_EOF_Field := R7FA4M1AB.PFS.Val_0;
      --  IRQ input enable
      ISEL       : P4PFS_HA0_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P4PFS_HA0_ASEL_Field := R7FA4M1AB.PFS.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for P4PFS_HA_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 11;
       EOR at 0 range 12 .. 12;
       EOF at 0 range 13 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
     end record;

   --  Port Output Data
   type P4PFS_BY0_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P4PFS_BY0_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P4PFS_BY0_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P4PFS_BY0_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P4PFS_BY0_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P4PFS_BY0_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P4PFS_BY_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P4PFS_BY0_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P4PFS_BY0_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P4PFS_BY0_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P4PFS_BY0_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   --  P4%s Pin Function Control Register
   type P4PFS_BY_Register is record
      --  Port Output Data
      PODR       : P4PFS_BY0_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P4PFS_BY0_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P4PFS_BY0_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P4PFS_BY_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P4PFS_BY0_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P4PFS_BY_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P4PFS_BY0_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P4PFS_BY_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for P4PFS_BY_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 7;
     end record;

   --  Port Output Data
   type P50PFS_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P50PFS_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P50PFS_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P50PFS_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P50PFS_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P50PFS_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P50PFS_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P50PFS_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P50PFS_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P50PFS_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P50PFS_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P50PFS_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P50PFS_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P50PFS_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P50PFS_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P50PFS_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P50PFS_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P50PFS_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Mode Control
   type P50PFS_PMR_Field is
     (--  Uses the pin as a general I/O pin.
     Val_0,
      --  Uses the pin as an I/O port for peripheral functions.
      Val_1)
   with Size => 1;
   for P50PFS_PMR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P50PFS_Reserved_Field_2 is R7FA4M1AB.UInt7;
   subtype P50PFS_PSEL_Field is R7FA4M1AB.UInt5;

   --  P50%s Pin Function Control Register
   type P50PFS_Register is record
      --  Port Output Data
      PODR       : P50PFS_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P50PFS_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P50PFS_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P50PFS_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P50PFS_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P50PFS_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P50PFS_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P50PFS_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P50PFS_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : P50PFS_Reserved_Field_1 := 16#0#;
      --  IRQ input enable
      ISEL       : P50PFS_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P50PFS_ASEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Mode Control
      PMR        : P50PFS_PMR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved_4 : P50PFS_Reserved_Field_2 := 16#0#;
      --  Port Function Select These bits select the peripheral function. For
      --  individual pin functions, see the MPC table
      PSEL       : P50PFS_PSEL_Field := 16#0#;
      --  These bits are read as 000. The write value should be 000.
      Reserved_5 : P50PFS_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => System.Low_Order_First;

   for P50PFS_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
       PMR at 0 range 16 .. 16;
       Reserved_4 at 0 range 17 .. 23;
       PSEL at 0 range 24 .. 28;
       Reserved_5 at 0 range 29 .. 31;
     end record;

   --  P50%s Pin Function Control Register
   type P50PFS_Registers is array (0 .. 5) of P50PFS_Register;

   --  Port Output Data
   type P50PFS_HA0_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P50PFS_HA0_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P50PFS_HA0_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P50PFS_HA0_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P50PFS_HA0_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P50PFS_HA0_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P50PFS_HA_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P50PFS_HA0_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P50PFS_HA0_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P50PFS_HA0_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P50PFS_HA0_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P50PFS_HA_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P50PFS_HA0_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P50PFS_HA0_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P50PFS_HA0_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P50PFS_HA0_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P50PFS_HA0_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P50PFS_HA0_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  P50%s Pin Function Control Register
   type P50PFS_HA_Register is record
      --  Port Output Data
      PODR       : P50PFS_HA0_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P50PFS_HA0_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P50PFS_HA0_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P50PFS_HA_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P50PFS_HA0_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P50PFS_HA_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P50PFS_HA0_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P50PFS_HA_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P50PFS_HA0_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : P50PFS_HA_Reserved_Field_1 := 16#0#;
      --  IRQ input enable
      ISEL       : P50PFS_HA0_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P50PFS_HA0_ASEL_Field := R7FA4M1AB.PFS.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for P50PFS_HA_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
     end record;

   --  Port Output Data
   type P50PFS_BY0_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P50PFS_BY0_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P50PFS_BY0_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P50PFS_BY0_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P50PFS_BY0_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P50PFS_BY0_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P50PFS_BY_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P50PFS_BY0_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P50PFS_BY0_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P50PFS_BY0_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P50PFS_BY0_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   --  P50%s Pin Function Control Register
   type P50PFS_BY_Register is record
      --  Port Output Data
      PODR       : P50PFS_BY0_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P50PFS_BY0_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P50PFS_BY0_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P50PFS_BY_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P50PFS_BY0_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P50PFS_BY_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P50PFS_BY0_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_2 : P50PFS_BY_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for P50PFS_BY_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 7;
     end record;

   --  Port Output Data
   type P60PFS_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P60PFS_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P60PFS_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P60PFS_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P60PFS_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P60PFS_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P60PFS_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P60PFS_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P60PFS_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P60PFS_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P60PFS_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P60PFS_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P60PFS_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P60PFS_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P60PFS_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P60PFS_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P60PFS_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P60PFS_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Mode Control
   type P60PFS_PMR_Field is
     (--  Uses the pin as a general I/O pin.
     Val_0,
      --  Uses the pin as an I/O port for peripheral functions.
      Val_1)
   with Size => 1;
   for P60PFS_PMR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P60PFS_Reserved_Field_2 is R7FA4M1AB.UInt7;
   subtype P60PFS_PSEL_Field is R7FA4M1AB.UInt5;

   --  P60%s Pin Function Control Register
   type P60PFS_Register is record
      --  Port Output Data
      PODR       : P60PFS_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P60PFS_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P60PFS_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P60PFS_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P60PFS_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P60PFS_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P60PFS_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P60PFS_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P60PFS_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : P60PFS_Reserved_Field_1 := 16#0#;
      --  IRQ input enable
      ISEL       : P60PFS_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P60PFS_ASEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Mode Control
      PMR        : P60PFS_PMR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved_4 : P60PFS_Reserved_Field_2 := 16#0#;
      --  Port Function Select These bits select the peripheral function. For
      --  individual pin functions, see the MPC table
      PSEL       : P60PFS_PSEL_Field := 16#0#;
      --  These bits are read as 000. The write value should be 000.
      Reserved_5 : P60PFS_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => System.Low_Order_First;

   for P60PFS_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
       PMR at 0 range 16 .. 16;
       Reserved_4 at 0 range 17 .. 23;
       PSEL at 0 range 24 .. 28;
       Reserved_5 at 0 range 29 .. 31;
     end record;

   --  P60%s Pin Function Control Register
   type P60PFS_Registers is array (0 .. 3) of P60PFS_Register;

   --  Port Output Data
   type P60PFS_HA0_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P60PFS_HA0_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P60PFS_HA0_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P60PFS_HA0_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P60PFS_HA0_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P60PFS_HA0_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P60PFS_HA_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P60PFS_HA0_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P60PFS_HA0_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P60PFS_HA0_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P60PFS_HA0_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P60PFS_HA_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P60PFS_HA0_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P60PFS_HA0_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P60PFS_HA0_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P60PFS_HA0_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P60PFS_HA0_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P60PFS_HA0_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  P60%s Pin Function Control Register
   type P60PFS_HA_Register is record
      --  Port Output Data
      PODR       : P60PFS_HA0_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P60PFS_HA0_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P60PFS_HA0_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P60PFS_HA_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P60PFS_HA0_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P60PFS_HA_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P60PFS_HA0_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P60PFS_HA_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P60PFS_HA0_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : P60PFS_HA_Reserved_Field_1 := 16#0#;
      --  IRQ input enable
      ISEL       : P60PFS_HA0_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P60PFS_HA0_ASEL_Field := R7FA4M1AB.PFS.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for P60PFS_HA_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
     end record;

   --  Port Output Data
   type P60PFS_BY0_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P60PFS_BY0_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P60PFS_BY0_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P60PFS_BY0_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P60PFS_BY0_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P60PFS_BY0_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P60PFS_BY_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P60PFS_BY0_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P60PFS_BY0_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P60PFS_BY0_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P60PFS_BY0_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   --  P60%s Pin Function Control Register
   type P60PFS_BY_Register is record
      --  Port Output Data
      PODR       : P60PFS_BY0_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P60PFS_BY0_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P60PFS_BY0_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P60PFS_BY_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P60PFS_BY0_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P60PFS_BY_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P60PFS_BY0_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_2 : P60PFS_BY_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for P60PFS_BY_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 7;
     end record;

   --  P60%s Pin Function Control Register
   type P60PFS_Registers_1 is array (0 .. 1) of P60PFS_Register;

   --  Port Output Data
   type P610PFS_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P610PFS_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P610PFS_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P610PFS_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P610PFS_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P610PFS_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P610PFS_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P610PFS_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P610PFS_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P610PFS_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P610PFS_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P610PFS_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P610PFS_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P610PFS_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P610PFS_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P610PFS_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P610PFS_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P610PFS_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Mode Control
   type P610PFS_PMR_Field is
     (--  Uses the pin as a general I/O pin.
     Val_0,
      --  Uses the pin as an I/O port for peripheral functions.
      Val_1)
   with Size => 1;
   for P610PFS_PMR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P610PFS_Reserved_Field_2 is R7FA4M1AB.UInt7;
   subtype P610PFS_PSEL_Field is R7FA4M1AB.UInt5;

   --  P610 Pin Function Control Register
   type P610PFS_Register is record
      --  Port Output Data
      PODR       : P610PFS_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P610PFS_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P610PFS_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P610PFS_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P610PFS_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P610PFS_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P610PFS_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P610PFS_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P610PFS_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : P610PFS_Reserved_Field_1 := 16#0#;
      --  IRQ input enable
      ISEL       : P610PFS_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P610PFS_ASEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Mode Control
      PMR        : P610PFS_PMR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved_4 : P610PFS_Reserved_Field_2 := 16#0#;
      --  Port Function Select These bits select the peripheral function. For
      --  individual pin functions, see the MPC table
      PSEL       : P610PFS_PSEL_Field := 16#0#;
      --  These bits are read as 000. The write value should be 000.
      Reserved_5 : P610PFS_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => System.Low_Order_First;

   for P610PFS_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
       PMR at 0 range 16 .. 16;
       Reserved_4 at 0 range 17 .. 23;
       PSEL at 0 range 24 .. 28;
       Reserved_5 at 0 range 29 .. 31;
     end record;

   --  Port Output Data
   type P610PFS_HA_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P610PFS_HA_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P610PFS_HA_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P610PFS_HA_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P610PFS_HA_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P610PFS_HA_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P610PFS_HA_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P610PFS_HA_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P610PFS_HA_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P610PFS_HA_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P610PFS_HA_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P610PFS_HA_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P610PFS_HA_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P610PFS_HA_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P610PFS_HA_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P610PFS_HA_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P610PFS_HA_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P610PFS_HA_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  P610 Pin Function Control Register
   type P610PFS_HA_Register is record
      --  Port Output Data
      PODR       : P610PFS_HA_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P610PFS_HA_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P610PFS_HA_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P610PFS_HA_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P610PFS_HA_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P610PFS_HA_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P610PFS_HA_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P610PFS_HA_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P610PFS_HA_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : P610PFS_HA_Reserved_Field_1 := 16#0#;
      --  IRQ input enable
      ISEL       : P610PFS_HA_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P610PFS_HA_ASEL_Field := R7FA4M1AB.PFS.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for P610PFS_HA_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
     end record;

   --  Port Output Data
   type P610PFS_BY_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P610PFS_BY_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P610PFS_BY_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P610PFS_BY_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P610PFS_BY_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P610PFS_BY_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P610PFS_BY_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P610PFS_BY_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P610PFS_BY_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P610PFS_BY_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P610PFS_BY_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   --  P610 Pin Function Control Register
   type P610PFS_BY_Register is record
      --  Port Output Data
      PODR       : P610PFS_BY_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P610PFS_BY_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P610PFS_BY_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P610PFS_BY_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P610PFS_BY_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P610PFS_BY_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P610PFS_BY_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_2 : P610PFS_BY_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for P610PFS_BY_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 7;
     end record;

   --  Port Output Data
   type P708PFS_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P708PFS_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P708PFS_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P708PFS_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P708PFS_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P708PFS_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P708PFS_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P708PFS_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P708PFS_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P708PFS_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P708PFS_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P708PFS_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P708PFS_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P708PFS_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P708PFS_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P708PFS_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P708PFS_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P708PFS_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Mode Control
   type P708PFS_PMR_Field is
     (--  Uses the pin as a general I/O pin.
     Val_0,
      --  Uses the pin as an I/O port for peripheral functions.
      Val_1)
   with Size => 1;
   for P708PFS_PMR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P708PFS_Reserved_Field_2 is R7FA4M1AB.UInt7;
   subtype P708PFS_PSEL_Field is R7FA4M1AB.UInt5;

   --  P708 Pin Function Control Register
   type P708PFS_Register is record
      --  Port Output Data
      PODR       : P708PFS_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P708PFS_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P708PFS_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P708PFS_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P708PFS_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P708PFS_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P708PFS_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P708PFS_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P708PFS_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : P708PFS_Reserved_Field_1 := 16#0#;
      --  IRQ input enable
      ISEL       : P708PFS_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P708PFS_ASEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Mode Control
      PMR        : P708PFS_PMR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved_4 : P708PFS_Reserved_Field_2 := 16#0#;
      --  Port Function Select These bits select the peripheral function. For
      --  individual pin functions, see the MPC table
      PSEL       : P708PFS_PSEL_Field := 16#0#;
      --  These bits are read as 000. The write value should be 000.
      Reserved_5 : P708PFS_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => System.Low_Order_First;

   for P708PFS_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
       PMR at 0 range 16 .. 16;
       Reserved_4 at 0 range 17 .. 23;
       PSEL at 0 range 24 .. 28;
       Reserved_5 at 0 range 29 .. 31;
     end record;

   --  Port Output Data
   type P708PFS_HA_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P708PFS_HA_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P708PFS_HA_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P708PFS_HA_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P708PFS_HA_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P708PFS_HA_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P708PFS_HA_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P708PFS_HA_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P708PFS_HA_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P708PFS_HA_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P708PFS_HA_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P708PFS_HA_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P708PFS_HA_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P708PFS_HA_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P708PFS_HA_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P708PFS_HA_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P708PFS_HA_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P708PFS_HA_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  P708 Pin Function Control Register
   type P708PFS_HA_Register is record
      --  Port Output Data
      PODR       : P708PFS_HA_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P708PFS_HA_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P708PFS_HA_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P708PFS_HA_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P708PFS_HA_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P708PFS_HA_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P708PFS_HA_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P708PFS_HA_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P708PFS_HA_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : P708PFS_HA_Reserved_Field_1 := 16#0#;
      --  IRQ input enable
      ISEL       : P708PFS_HA_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P708PFS_HA_ASEL_Field := R7FA4M1AB.PFS.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for P708PFS_HA_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
     end record;

   --  Port Output Data
   type P708PFS_BY_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P708PFS_BY_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P708PFS_BY_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P708PFS_BY_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P708PFS_BY_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P708PFS_BY_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P708PFS_BY_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P708PFS_BY_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P708PFS_BY_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P708PFS_BY_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P708PFS_BY_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   --  P708 Pin Function Control Register
   type P708PFS_BY_Register is record
      --  Port Output Data
      PODR       : P708PFS_BY_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P708PFS_BY_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P708PFS_BY_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P708PFS_BY_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P708PFS_BY_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P708PFS_BY_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P708PFS_BY_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_2 : P708PFS_BY_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for P708PFS_BY_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 7;
     end record;

   --  Port Output Data
   type P80PFS_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P80PFS_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P80PFS_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P80PFS_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P80PFS_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P80PFS_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P80PFS_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P80PFS_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P80PFS_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P80PFS_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P80PFS_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P80PFS_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P80PFS_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P80PFS_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P80PFS_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P80PFS_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P80PFS_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P80PFS_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Mode Control
   type P80PFS_PMR_Field is
     (--  Uses the pin as a general I/O pin.
     Val_0,
      --  Uses the pin as an I/O port for peripheral functions.
      Val_1)
   with Size => 1;
   for P80PFS_PMR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P80PFS_Reserved_Field_2 is R7FA4M1AB.UInt7;
   subtype P80PFS_PSEL_Field is R7FA4M1AB.UInt5;

   --  P80%s Pin Function Control Register
   type P80PFS_Register is record
      --  Port Output Data
      PODR       : P80PFS_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P80PFS_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P80PFS_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P80PFS_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P80PFS_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P80PFS_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P80PFS_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P80PFS_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P80PFS_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : P80PFS_Reserved_Field_1 := 16#0#;
      --  IRQ input enable
      ISEL       : P80PFS_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P80PFS_ASEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Mode Control
      PMR        : P80PFS_PMR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved_4 : P80PFS_Reserved_Field_2 := 16#0#;
      --  Port Function Select These bits select the peripheral function. For
      --  individual pin functions, see the MPC table
      PSEL       : P80PFS_PSEL_Field := 16#0#;
      --  These bits are read as 000. The write value should be 000.
      Reserved_5 : P80PFS_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => System.Low_Order_First;

   for P80PFS_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
       PMR at 0 range 16 .. 16;
       Reserved_4 at 0 range 17 .. 23;
       PSEL at 0 range 24 .. 28;
       Reserved_5 at 0 range 29 .. 31;
     end record;

   --  P80%s Pin Function Control Register
   type P80PFS_Registers is array (0 .. 1) of P80PFS_Register;

   --  Port Output Data
   type P80PFS_HA0_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P80PFS_HA0_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P80PFS_HA0_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P80PFS_HA0_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P80PFS_HA0_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P80PFS_HA0_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P80PFS_HA_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P80PFS_HA0_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P80PFS_HA0_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P80PFS_HA0_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P80PFS_HA0_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P80PFS_HA_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P80PFS_HA0_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P80PFS_HA0_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P80PFS_HA0_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P80PFS_HA0_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P80PFS_HA0_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P80PFS_HA0_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  P80%s Pin Function Control Register
   type P80PFS_HA_Register is record
      --  Port Output Data
      PODR       : P80PFS_HA0_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P80PFS_HA0_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P80PFS_HA0_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P80PFS_HA_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P80PFS_HA0_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P80PFS_HA_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P80PFS_HA0_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P80PFS_HA_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P80PFS_HA0_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : P80PFS_HA_Reserved_Field_1 := 16#0#;
      --  IRQ input enable
      ISEL       : P80PFS_HA0_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P80PFS_HA0_ASEL_Field := R7FA4M1AB.PFS.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for P80PFS_HA_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
     end record;

   --  Port Output Data
   type P80PFS_BY0_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P80PFS_BY0_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P80PFS_BY0_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P80PFS_BY0_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P80PFS_BY0_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P80PFS_BY0_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P80PFS_BY_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P80PFS_BY0_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P80PFS_BY0_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P80PFS_BY0_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P80PFS_BY0_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   --  P80%s Pin Function Control Register
   type P80PFS_BY_Register is record
      --  Port Output Data
      PODR       : P80PFS_BY0_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P80PFS_BY0_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P80PFS_BY0_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P80PFS_BY_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P80PFS_BY0_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P80PFS_BY_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P80PFS_BY0_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_2 : P80PFS_BY_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for P80PFS_BY_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 7;
     end record;

   --  Port Output Data
   type P9PFS_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P9PFS_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P9PFS_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P9PFS_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P9PFS_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P9PFS_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P9PFS_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P9PFS_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P9PFS_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P9PFS_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P9PFS_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P9PFS_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P9PFS_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P9PFS_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Rising
   type P9PFS_EOR_Field is
     (--  No effected
     Val_0,
      --  Detect rising edge
      Val_1)
   with Size => 1;
   for P9PFS_EOR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Failing
   type P9PFS_EOF_Field is
     (--  No effected
     Val_0,
      --  Detect failing edge
      Val_1)
   with Size => 1;
   for P9PFS_EOF_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P9PFS_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P9PFS_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P9PFS_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P9PFS_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Mode Control
   type P9PFS_PMR_Field is
     (--  Uses the pin as a general I/O pin.
     Val_0,
      --  Uses the pin as an I/O port for peripheral functions.
      Val_1)
   with Size => 1;
   for P9PFS_PMR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P9PFS_Reserved_Field_2 is R7FA4M1AB.UInt7;
   subtype P9PFS_PSEL_Field is R7FA4M1AB.UInt5;

   --  P9%s Pin Function Control Register
   type P9PFS_Register is record
      --  Port Output Data
      PODR       : P9PFS_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P9PFS_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P9PFS_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P9PFS_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P9PFS_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P9PFS_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P9PFS_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P9PFS_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P9PFS_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_3 : P9PFS_Reserved_Field := 16#0#;
      --  Event on Rising
      EOR        : P9PFS_EOR_Field := R7FA4M1AB.PFS.Val_0;
      --  Event on Failing
      EOF        : P9PFS_EOF_Field := R7FA4M1AB.PFS.Val_0;
      --  IRQ input enable
      ISEL       : P9PFS_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P9PFS_ASEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Mode Control
      PMR        : P9PFS_PMR_Field := R7FA4M1AB.PFS.Val_1;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved_4 : P9PFS_Reserved_Field_2 := 16#0#;
      --  Port Function Select These bits select the peripheral function. For
      --  individual pin functions, see the setting table.
      PSEL       : P9PFS_PSEL_Field := 16#0#;
      --  These bits are read as 000. The write value should be 000.
      Reserved_5 : P9PFS_Reserved_Field_1 := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 32,
     Bit_Order   => System.Low_Order_First;

   for P9PFS_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 11;
       EOR at 0 range 12 .. 12;
       EOF at 0 range 13 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
       PMR at 0 range 16 .. 16;
       Reserved_4 at 0 range 17 .. 23;
       PSEL at 0 range 24 .. 28;
       Reserved_5 at 0 range 29 .. 31;
     end record;

   --  P9%s Pin Function Control Register
   type P9PFS_Registers is array (0 .. 1) of P9PFS_Register;

   --  Port Output Data
   type P9PFS_HA0_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P9PFS_HA0_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P9PFS_HA0_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P9PFS_HA0_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P9PFS_HA0_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P9PFS_HA0_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P9PFS_HA_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P9PFS_HA0_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P9PFS_HA0_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P9PFS_HA0_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P9PFS_HA0_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P9PFS_HA_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Port Drive Capability
   type P9PFS_HA0_DSCR_Field is
     (--  Low drive
     Val_0,
      --  Middle drive.
      Val_1)
   with Size => 1;
   for P9PFS_HA0_DSCR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Rising
   type P9PFS_HA0_EOR_Field is
     (--  No effected
     Val_0,
      --  Detect rising edge
      Val_1)
   with Size => 1;
   for P9PFS_HA0_EOR_Field use (Val_0 => 0, Val_1 => 1);

   --  Event on Failing
   type P9PFS_HA0_EOF_Field is
     (--  No effected
     Val_0,
      --  Detect failing edge
      Val_1)
   with Size => 1;
   for P9PFS_HA0_EOF_Field use (Val_0 => 0, Val_1 => 1);

   --  IRQ input enable
   type P9PFS_HA0_ISEL_Field is
     (--  Not used as IRQn input pin
     Val_0,
      --  Used as IRQn input pin
      Val_1)
   with Size => 1;
   for P9PFS_HA0_ISEL_Field use (Val_0 => 0, Val_1 => 1);

   --  Analog Input enable
   type P9PFS_HA0_ASEL_Field is
     (--  Used other than as analog pin
     Val_0,
      --  Used as analog pin
      Val_1)
   with Size => 1;
   for P9PFS_HA0_ASEL_Field use (Val_0 => 0, Val_1 => 1);

   --  P9%s Pin Function Control Register
   type P9PFS_HA_Register is record
      --  Port Output Data
      PODR       : P9PFS_HA0_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P9PFS_HA0_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P9PFS_HA0_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P9PFS_HA_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P9PFS_HA0_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P9PFS_HA_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P9PFS_HA0_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : P9PFS_HA_Reserved_Field_1 := 16#0#;
      --  Port Drive Capability
      DSCR       : P9PFS_HA0_DSCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_3 : P9PFS_HA_Reserved_Field := 16#0#;
      --  Event on Rising
      EOR        : P9PFS_HA0_EOR_Field := R7FA4M1AB.PFS.Val_0;
      --  Event on Failing
      EOF        : P9PFS_HA0_EOF_Field := R7FA4M1AB.PFS.Val_0;
      --  IRQ input enable
      ISEL       : P9PFS_HA0_ISEL_Field := R7FA4M1AB.PFS.Val_0;
      --  Analog Input enable
      ASEL       : P9PFS_HA0_ASEL_Field := R7FA4M1AB.PFS.Val_0;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 16,
     Bit_Order   => System.Low_Order_First;

   for P9PFS_HA_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 9;
       DSCR at 0 range 10 .. 10;
       Reserved_3 at 0 range 11 .. 11;
       EOR at 0 range 12 .. 12;
       EOF at 0 range 13 .. 13;
       ISEL at 0 range 14 .. 14;
       ASEL at 0 range 15 .. 15;
     end record;

   --  Port Output Data
   type P9PFS_BY0_PODR_Field is
     (--  Low output
     Val_0,
      --  High output
      Val_1)
   with Size => 1;
   for P9PFS_BY0_PODR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Input Data
   type P9PFS_BY0_PIDR_Field is
     (--  Low input
     Val_0,
      --  High input
      Val_1)
   with Size => 1;
   for P9PFS_BY0_PIDR_Field use (Val_0 => 0, Val_1 => 1);

   --  Port Direction
   type P9PFS_BY0_PDR_Field is
     (--  Input (Functions as an input pin.)
     Val_0,
      --  Output (Functions as an output pin.)
      Val_1)
   with Size => 1;
   for P9PFS_BY0_PDR_Field use (Val_0 => 0, Val_1 => 1);

   subtype P9PFS_BY_Reserved_Field is R7FA4M1AB.Bit;

   --  Pull-up Control
   type P9PFS_BY0_PCR_Field is
     (--  Disables an input pull-up.
     Val_0,
      --  Enables an input pull-up.
      Val_1)
   with Size => 1;
   for P9PFS_BY0_PCR_Field use (Val_0 => 0, Val_1 => 1);

   --  N-Channel Open Drain Control
   type P9PFS_BY0_NCODR_Field is
     (--  CMOS output
     Val_0,
      --  NMOS open-drain output
      Val_1)
   with Size => 1;
   for P9PFS_BY0_NCODR_Field use (Val_0 => 0, Val_1 => 1);

   --  P9%s Pin Function Control Register
   type P9PFS_BY_Register is record
      --  Port Output Data
      PODR       : P9PFS_BY0_PODR_Field := R7FA4M1AB.PFS.Val_0;
      --  Read-only. Port Input Data
      PIDR       : P9PFS_BY0_PIDR_Field := R7FA4M1AB.PFS.Val_0;
      --  Port Direction
      PDR        : P9PFS_BY0_PDR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : P9PFS_BY_Reserved_Field := 16#0#;
      --  Pull-up Control
      PCR        : P9PFS_BY0_PCR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : P9PFS_BY_Reserved_Field := 16#0#;
      --  N-Channel Open Drain Control
      NCODR      : P9PFS_BY0_NCODR_Field := R7FA4M1AB.PFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_2 : P9PFS_BY_Reserved_Field := 16#0#;
   end record
   with
     Volatile_Full_Access,
     Object_Size => 8,
     Bit_Order   => System.Low_Order_First;

   for P9PFS_BY_Register use
     record
       PODR at 0 range 0 .. 0;
       PIDR at 0 range 1 .. 1;
       PDR at 0 range 2 .. 2;
       Reserved at 0 range 3 .. 3;
       PCR at 0 range 4 .. 4;
       Reserved_1 at 0 range 5 .. 5;
       NCODR at 0 range 6 .. 6;
       Reserved_2 at 0 range 7 .. 7;
     end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Pmn Pin Function Control Register
   type PFS_Disc is
     (View_P000PFS,
      View_P000PFS_HA,
      View_P000PFS_BY,
      View_P00PFS,
      View_P00PFS_HA0,
      View_P00PFS_BY0,
      View_P00PFS_HA1,
      View_P00PFS_BY1,
      View_P00PFS_HA2,
      View_P00PFS_BY2,
      View_P00PFS_HA3,
      View_P00PFS_BY3,
      View_P00PFS_HA4,
      View_P00PFS_BY4,
      View_P00PFS_HA5,
      View_P00PFS_BY5,
      View_P00PFS_HA6,
      View_P00PFS_BY6,
      View_P00PFS_HA7,
      View_P00PFS_BY7,
      View_P0PFS,
      View_P0PFS_HA0,
      View_P0PFS_BY0,
      View_P0PFS_HA1,
      View_P0PFS_BY1,
      View_P0PFS_HA2,
      View_P0PFS_BY2,
      View_P0PFS_HA3,
      View_P0PFS_BY3,
      View_P0PFS_HA4,
      View_P0PFS_BY4,
      View_P0PFS_HA5,
      View_P0PFS_BY5,
      View_P100PFS,
      View_P100PFS_HA,
      View_P100PFS_BY,
      View_P10PFS,
      View_P10PFS_HA0,
      View_P10PFS_BY0,
      View_P10PFS_HA1,
      View_P10PFS_BY1,
      View_P10PFS_HA2,
      View_P10PFS_BY2,
      View_P10PFS_HA3,
      View_P10PFS_BY3,
      View_P10PFS_HA4,
      View_P10PFS_BY4,
      View_P10PFS_HA5,
      View_P10PFS_BY5,
      View_P10PFS_HA6,
      View_P10PFS_BY6,
      View_P108PFS,
      View_P108PFS_HA,
      View_P108PFS_BY,
      View_P109PFS,
      View_P109PFS_HA,
      View_P109PFS_BY,
      View_P110PFS,
      View_P110PFS_HA,
      View_P110PFS_BY,
      View_P1PFS,
      View_P1PFS_HA0,
      View_P1PFS_BY0,
      View_P1PFS_HA1,
      View_P1PFS_BY1,
      View_P1PFS_HA2,
      View_P1PFS_BY2,
      View_P1PFS_HA3,
      View_P1PFS_BY3,
      View_P1PFS_HA4,
      View_P1PFS_BY4,
      View_P200PFS,
      View_P200PFS_HA,
      View_P200PFS_BY,
      View_P201PFS,
      View_P201PFS_HA,
      View_P201PFS_BY,
      View_P20PFS,
      View_P20PFS_HA0,
      View_P20PFS_BY0,
      View_P20PFS_HA1,
      View_P20PFS_BY1,
      View_P20PFS_HA2,
      View_P20PFS_BY2,
      View_P20PFS_HA3,
      View_P20PFS_BY3,
      View_P20PFS_HA4,
      View_P20PFS_BY4,
      View_P2PFS,
      View_P2PFS_HA0,
      View_P2PFS_BY0,
      View_P2PFS_HA1,
      View_P2PFS_BY1,
      View_P2PFS_HA2,
      View_P2PFS_BY2,
      View_P2PFS_HA3,
      View_P2PFS_BY3,
      View_P300PFS,
      View_P300PFS_HA,
      View_P300PFS_BY,
      View_P30PFS,
      View_P30PFS_HA0,
      View_P30PFS_BY0,
      View_P30PFS_HA1,
      View_P30PFS_BY1,
      View_P30PFS_HA2,
      View_P30PFS_BY2,
      View_P30PFS_HA3,
      View_P30PFS_BY3,
      View_P30PFS_HA4,
      View_P30PFS_BY4,
      View_P30PFS_HA5,
      View_P30PFS_BY5,
      View_P30PFS_HA6,
      View_P30PFS_BY6,
      View_P40PFS,
      View_P40PFS_HA0,
      View_P40PFS_BY0,
      View_P40PFS_HA1,
      View_P40PFS_BY1,
      View_P40PFS_HA2,
      View_P40PFS_BY2,
      View_P40PFS_HA3,
      View_P40PFS_BY3,
      View_P40PFS_HA4,
      View_P40PFS_BY4,
      View_P40PFS_HA5,
      View_P40PFS_BY5,
      View_P40PFS_HA6,
      View_P40PFS_BY6,
      View_P40PFS_HA7,
      View_P40PFS_BY7,
      View_P408PFS,
      View_P408PFS_HA,
      View_P408PFS_BY,
      View_P409PFS,
      View_P409PFS_HA,
      View_P409PFS_BY,
      View_P4PFS,
      View_P4PFS_HA0,
      View_P4PFS_BY0,
      View_P4PFS_HA1,
      View_P4PFS_BY1,
      View_P4PFS_HA2,
      View_P4PFS_BY2,
      View_P4PFS_HA3,
      View_P4PFS_BY3,
      View_P4PFS_HA4,
      View_P4PFS_BY4,
      View_P4PFS_HA5,
      View_P4PFS_BY5,
      View_P50PFS,
      View_P50PFS_HA0,
      View_P50PFS_BY0,
      View_P50PFS_HA1,
      View_P50PFS_BY1,
      View_P50PFS_HA2,
      View_P50PFS_BY2,
      View_P50PFS_HA3,
      View_P50PFS_BY3,
      View_P50PFS_HA4,
      View_P50PFS_BY4,
      View_P50PFS_HA5,
      View_P50PFS_BY5,
      View_P60PFS,
      View_P60PFS_HA0,
      View_P60PFS_BY0,
      View_P60PFS_HA1,
      View_P60PFS_BY1,
      View_P60PFS_HA2,
      View_P60PFS_BY2,
      View_P60PFS_HA3,
      View_P60PFS_BY3,
      View_P60PFS_1,
      View_P60PFS_HA0_1,
      View_P60PFS_BY0_1,
      View_P60PFS_HA1_1,
      View_P60PFS_BY1_1,
      View_P610PFS,
      View_P610PFS_HA,
      View_P610PFS_BY,
      View_P708PFS,
      View_P708PFS_HA,
      View_P708PFS_BY,
      View_P80PFS,
      View_P80PFS_HA0,
      View_P80PFS_BY0,
      View_P80PFS_HA1,
      View_P80PFS_BY1,
      View_P9PFS,
      View_P9PFS_HA0,
      View_P9PFS_BY0,
      View_P9PFS_HA1,
      View_P9PFS_BY1);

   type PFS_Peripheral (Discriminent : PFS_Disc := View_P000PFS) is record
      case Discriminent is
         when View_P000PFS =>
            --  P00%s Pin Function Control Register
            P000PFS : aliased P000PFS_Register;

         when View_P000PFS_HA =>
            --  P00%s Pin Function Control Register
            P000PFS_HA : aliased P000PFS_HA_Register;

         when View_P000PFS_BY =>
            --  P00%s Pin Function Control Register
            P000PFS_BY : aliased P000PFS_BY_Register;

         when View_P00PFS =>
            --  P00%s Pin Function Control Register
            P00PFS : aliased P00PFS_Registers;

         when View_P00PFS_HA0 =>
            --  P00%s Pin Function Control Register
            P00PFS_HA0 : aliased P00PFS_HA_Register;

         when View_P00PFS_BY0 =>
            --  P00%s Pin Function Control Register
            P00PFS_BY0 : aliased P00PFS_BY_Register;

         when View_P00PFS_HA1 =>
            --  P00%s Pin Function Control Register
            P00PFS_HA1 : aliased P00PFS_HA_Register;

         when View_P00PFS_BY1 =>
            --  P00%s Pin Function Control Register
            P00PFS_BY1 : aliased P00PFS_BY_Register;

         when View_P00PFS_HA2 =>
            --  P00%s Pin Function Control Register
            P00PFS_HA2 : aliased P00PFS_HA_Register;

         when View_P00PFS_BY2 =>
            --  P00%s Pin Function Control Register
            P00PFS_BY2 : aliased P00PFS_BY_Register;

         when View_P00PFS_HA3 =>
            --  P00%s Pin Function Control Register
            P00PFS_HA3 : aliased P00PFS_HA_Register;

         when View_P00PFS_BY3 =>
            --  P00%s Pin Function Control Register
            P00PFS_BY3 : aliased P00PFS_BY_Register;

         when View_P00PFS_HA4 =>
            --  P00%s Pin Function Control Register
            P00PFS_HA4 : aliased P00PFS_HA_Register;

         when View_P00PFS_BY4 =>
            --  P00%s Pin Function Control Register
            P00PFS_BY4 : aliased P00PFS_BY_Register;

         when View_P00PFS_HA5 =>
            --  P00%s Pin Function Control Register
            P00PFS_HA5 : aliased P00PFS_HA_Register;

         when View_P00PFS_BY5 =>
            --  P00%s Pin Function Control Register
            P00PFS_BY5 : aliased P00PFS_BY_Register;

         when View_P00PFS_HA6 =>
            --  P00%s Pin Function Control Register
            P00PFS_HA6 : aliased P00PFS_HA_Register;

         when View_P00PFS_BY6 =>
            --  P00%s Pin Function Control Register
            P00PFS_BY6 : aliased P00PFS_BY_Register;

         when View_P00PFS_HA7 =>
            --  P00%s Pin Function Control Register
            P00PFS_HA7 : aliased P00PFS_HA_Register;

         when View_P00PFS_BY7 =>
            --  P00%s Pin Function Control Register
            P00PFS_BY7 : aliased P00PFS_BY_Register;

         when View_P0PFS =>
            --  P0%s Pin Function Control Register
            P0PFS : aliased P0PFS_Registers;

         when View_P0PFS_HA0 =>
            --  P0%s Pin Function Control Register
            P0PFS_HA0 : aliased P0PFS_HA_Register;

         when View_P0PFS_BY0 =>
            --  P0%s Pin Function Control Register
            P0PFS_BY0 : aliased P0PFS_BY_Register;

         when View_P0PFS_HA1 =>
            --  P0%s Pin Function Control Register
            P0PFS_HA1 : aliased P0PFS_HA_Register;

         when View_P0PFS_BY1 =>
            --  P0%s Pin Function Control Register
            P0PFS_BY1 : aliased P0PFS_BY_Register;

         when View_P0PFS_HA2 =>
            --  P0%s Pin Function Control Register
            P0PFS_HA2 : aliased P0PFS_HA_Register;

         when View_P0PFS_BY2 =>
            --  P0%s Pin Function Control Register
            P0PFS_BY2 : aliased P0PFS_BY_Register;

         when View_P0PFS_HA3 =>
            --  P0%s Pin Function Control Register
            P0PFS_HA3 : aliased P0PFS_HA_Register;

         when View_P0PFS_BY3 =>
            --  P0%s Pin Function Control Register
            P0PFS_BY3 : aliased P0PFS_BY_Register;

         when View_P0PFS_HA4 =>
            --  P0%s Pin Function Control Register
            P0PFS_HA4 : aliased P0PFS_HA_Register;

         when View_P0PFS_BY4 =>
            --  P0%s Pin Function Control Register
            P0PFS_BY4 : aliased P0PFS_BY_Register;

         when View_P0PFS_HA5 =>
            --  P0%s Pin Function Control Register
            P0PFS_HA5 : aliased P0PFS_HA_Register;

         when View_P0PFS_BY5 =>
            --  P0%s Pin Function Control Register
            P0PFS_BY5 : aliased P0PFS_BY_Register;

         when View_P100PFS =>
            --  P100 Pin Function Control Register
            P100PFS : aliased P100PFS_Register;

         when View_P100PFS_HA =>
            --  P100 Pin Function Control Register
            P100PFS_HA : aliased P100PFS_HA_Register;

         when View_P100PFS_BY =>
            --  P100 Pin Function Control Register
            P100PFS_BY : aliased P100PFS_BY_Register;

         when View_P10PFS =>
            --  P10%s Pin Function Control Register
            P10PFS : aliased P10PFS_Registers;

         when View_P10PFS_HA0 =>
            --  P10%s Pin Function Control Register
            P10PFS_HA0 : aliased P10PFS_HA_Register;

         when View_P10PFS_BY0 =>
            --  P10%s Pin Function Control Register
            P10PFS_BY0 : aliased P10PFS_BY_Register;

         when View_P10PFS_HA1 =>
            --  P10%s Pin Function Control Register
            P10PFS_HA1 : aliased P10PFS_HA_Register;

         when View_P10PFS_BY1 =>
            --  P10%s Pin Function Control Register
            P10PFS_BY1 : aliased P10PFS_BY_Register;

         when View_P10PFS_HA2 =>
            --  P10%s Pin Function Control Register
            P10PFS_HA2 : aliased P10PFS_HA_Register;

         when View_P10PFS_BY2 =>
            --  P10%s Pin Function Control Register
            P10PFS_BY2 : aliased P10PFS_BY_Register;

         when View_P10PFS_HA3 =>
            --  P10%s Pin Function Control Register
            P10PFS_HA3 : aliased P10PFS_HA_Register;

         when View_P10PFS_BY3 =>
            --  P10%s Pin Function Control Register
            P10PFS_BY3 : aliased P10PFS_BY_Register;

         when View_P10PFS_HA4 =>
            --  P10%s Pin Function Control Register
            P10PFS_HA4 : aliased P10PFS_HA_Register;

         when View_P10PFS_BY4 =>
            --  P10%s Pin Function Control Register
            P10PFS_BY4 : aliased P10PFS_BY_Register;

         when View_P10PFS_HA5 =>
            --  P10%s Pin Function Control Register
            P10PFS_HA5 : aliased P10PFS_HA_Register;

         when View_P10PFS_BY5 =>
            --  P10%s Pin Function Control Register
            P10PFS_BY5 : aliased P10PFS_BY_Register;

         when View_P10PFS_HA6 =>
            --  P10%s Pin Function Control Register
            P10PFS_HA6 : aliased P10PFS_HA_Register;

         when View_P10PFS_BY6 =>
            --  P10%s Pin Function Control Register
            P10PFS_BY6 : aliased P10PFS_BY_Register;

         when View_P108PFS =>
            --  P108 Pin Function Control Register
            P108PFS : aliased P108PFS_Register;

         when View_P108PFS_HA =>
            --  P108 Pin Function Control Register
            P108PFS_HA : aliased P108PFS_HA_Register;

         when View_P108PFS_BY =>
            --  P108 Pin Function Control Register
            P108PFS_BY : aliased P108PFS_BY_Register;

         when View_P109PFS =>
            --  P109 Pin Function Control Register
            P109PFS : aliased P109PFS_Register;

         when View_P109PFS_HA =>
            --  P109 Pin Function Control Register
            P109PFS_HA : aliased P109PFS_HA_Register;

         when View_P109PFS_BY =>
            --  P109 Pin Function Control Register
            P109PFS_BY : aliased P109PFS_BY_Register;

         when View_P110PFS =>
            --  P110 Pin Function Control Register
            P110PFS : aliased P110PFS_Register;

         when View_P110PFS_HA =>
            --  P110 Pin Function Control Register
            P110PFS_HA : aliased P110PFS_HA_Register;

         when View_P110PFS_BY =>
            --  P110 Pin Function Control Register
            P110PFS_BY : aliased P110PFS_BY_Register;

         when View_P1PFS =>
            --  P1%s Pin Function Control Register
            P1PFS : aliased P1PFS_Registers;

         when View_P1PFS_HA0 =>
            --  P1%s Pin Function Control Register
            P1PFS_HA0 : aliased P1PFS_HA_Register;

         when View_P1PFS_BY0 =>
            --  P1%s Pin Function Control Register
            P1PFS_BY0 : aliased P1PFS_BY_Register;

         when View_P1PFS_HA1 =>
            --  P1%s Pin Function Control Register
            P1PFS_HA1 : aliased P1PFS_HA_Register;

         when View_P1PFS_BY1 =>
            --  P1%s Pin Function Control Register
            P1PFS_BY1 : aliased P1PFS_BY_Register;

         when View_P1PFS_HA2 =>
            --  P1%s Pin Function Control Register
            P1PFS_HA2 : aliased P1PFS_HA_Register;

         when View_P1PFS_BY2 =>
            --  P1%s Pin Function Control Register
            P1PFS_BY2 : aliased P1PFS_BY_Register;

         when View_P1PFS_HA3 =>
            --  P1%s Pin Function Control Register
            P1PFS_HA3 : aliased P1PFS_HA_Register;

         when View_P1PFS_BY3 =>
            --  P1%s Pin Function Control Register
            P1PFS_BY3 : aliased P1PFS_BY_Register;

         when View_P1PFS_HA4 =>
            --  P1%s Pin Function Control Register
            P1PFS_HA4 : aliased P1PFS_HA_Register;

         when View_P1PFS_BY4 =>
            --  P1%s Pin Function Control Register
            P1PFS_BY4 : aliased P1PFS_BY_Register;

         when View_P200PFS =>
            --  P200 Pin Function Control Register
            P200PFS : aliased P200PFS_Register;

         when View_P200PFS_HA =>
            --  P200 Pin Function Control Register
            P200PFS_HA : aliased P200PFS_HA_Register;

         when View_P200PFS_BY =>
            --  P200 Pin Function Control Register
            P200PFS_BY : aliased P200PFS_BY_Register;

         when View_P201PFS =>
            --  P201 Pin Function Control Register
            P201PFS : aliased P201PFS_Register;

         when View_P201PFS_HA =>
            --  P201 Pin Function Control Register
            P201PFS_HA : aliased P201PFS_HA_Register;

         when View_P201PFS_BY =>
            --  P201 Pin Function Control Register
            P201PFS_BY : aliased P201PFS_BY_Register;

         when View_P20PFS =>
            --  P20%s Pin Function Control Register
            P20PFS : aliased P20PFS_Registers;

         when View_P20PFS_HA0 =>
            --  P20%s Pin Function Control Register
            P20PFS_HA0 : aliased P20PFS_HA_Register;

         when View_P20PFS_BY0 =>
            --  P20%s Pin Function Control Register
            P20PFS_BY0 : aliased P20PFS_BY_Register;

         when View_P20PFS_HA1 =>
            --  P20%s Pin Function Control Register
            P20PFS_HA1 : aliased P20PFS_HA_Register;

         when View_P20PFS_BY1 =>
            --  P20%s Pin Function Control Register
            P20PFS_BY1 : aliased P20PFS_BY_Register;

         when View_P20PFS_HA2 =>
            --  P20%s Pin Function Control Register
            P20PFS_HA2 : aliased P20PFS_HA_Register;

         when View_P20PFS_BY2 =>
            --  P20%s Pin Function Control Register
            P20PFS_BY2 : aliased P20PFS_BY_Register;

         when View_P20PFS_HA3 =>
            --  P20%s Pin Function Control Register
            P20PFS_HA3 : aliased P20PFS_HA_Register;

         when View_P20PFS_BY3 =>
            --  P20%s Pin Function Control Register
            P20PFS_BY3 : aliased P20PFS_BY_Register;

         when View_P20PFS_HA4 =>
            --  P20%s Pin Function Control Register
            P20PFS_HA4 : aliased P20PFS_HA_Register;

         when View_P20PFS_BY4 =>
            --  P20%s Pin Function Control Register
            P20PFS_BY4 : aliased P20PFS_BY_Register;

         when View_P2PFS =>
            --  P2%s Pin Function Control Register
            P2PFS : aliased P2PFS_Registers;

         when View_P2PFS_HA0 =>
            --  P2%s Pin Function Control Register
            P2PFS_HA0 : aliased P2PFS_HA_Register;

         when View_P2PFS_BY0 =>
            --  P2%s Pin Function Control Register
            P2PFS_BY0 : aliased P2PFS_BY_Register;

         when View_P2PFS_HA1 =>
            --  P2%s Pin Function Control Register
            P2PFS_HA1 : aliased P2PFS_HA_Register;

         when View_P2PFS_BY1 =>
            --  P2%s Pin Function Control Register
            P2PFS_BY1 : aliased P2PFS_BY_Register;

         when View_P2PFS_HA2 =>
            --  P2%s Pin Function Control Register
            P2PFS_HA2 : aliased P2PFS_HA_Register;

         when View_P2PFS_BY2 =>
            --  P2%s Pin Function Control Register
            P2PFS_BY2 : aliased P2PFS_BY_Register;

         when View_P2PFS_HA3 =>
            --  P2%s Pin Function Control Register
            P2PFS_HA3 : aliased P2PFS_HA_Register;

         when View_P2PFS_BY3 =>
            --  P2%s Pin Function Control Register
            P2PFS_BY3 : aliased P2PFS_BY_Register;

         when View_P300PFS =>
            --  P300 Pin Function Control Register
            P300PFS : aliased P300PFS_Register;

         when View_P300PFS_HA =>
            --  P300 Pin Function Control Register
            P300PFS_HA : aliased P300PFS_HA_Register;

         when View_P300PFS_BY =>
            --  P300 Pin Function Control Register
            P300PFS_BY : aliased P300PFS_BY_Register;

         when View_P30PFS =>
            --  P30%s Pin Function Control Register
            P30PFS : aliased P30PFS_Registers;

         when View_P30PFS_HA0 =>
            --  P30%s Pin Function Control Register
            P30PFS_HA0 : aliased P30PFS_HA_Register;

         when View_P30PFS_BY0 =>
            --  P30%s Pin Function Control Register
            P30PFS_BY0 : aliased P30PFS_BY_Register;

         when View_P30PFS_HA1 =>
            --  P30%s Pin Function Control Register
            P30PFS_HA1 : aliased P30PFS_HA_Register;

         when View_P30PFS_BY1 =>
            --  P30%s Pin Function Control Register
            P30PFS_BY1 : aliased P30PFS_BY_Register;

         when View_P30PFS_HA2 =>
            --  P30%s Pin Function Control Register
            P30PFS_HA2 : aliased P30PFS_HA_Register;

         when View_P30PFS_BY2 =>
            --  P30%s Pin Function Control Register
            P30PFS_BY2 : aliased P30PFS_BY_Register;

         when View_P30PFS_HA3 =>
            --  P30%s Pin Function Control Register
            P30PFS_HA3 : aliased P30PFS_HA_Register;

         when View_P30PFS_BY3 =>
            --  P30%s Pin Function Control Register
            P30PFS_BY3 : aliased P30PFS_BY_Register;

         when View_P30PFS_HA4 =>
            --  P30%s Pin Function Control Register
            P30PFS_HA4 : aliased P30PFS_HA_Register;

         when View_P30PFS_BY4 =>
            --  P30%s Pin Function Control Register
            P30PFS_BY4 : aliased P30PFS_BY_Register;

         when View_P30PFS_HA5 =>
            --  P30%s Pin Function Control Register
            P30PFS_HA5 : aliased P30PFS_HA_Register;

         when View_P30PFS_BY5 =>
            --  P30%s Pin Function Control Register
            P30PFS_BY5 : aliased P30PFS_BY_Register;

         when View_P30PFS_HA6 =>
            --  P30%s Pin Function Control Register
            P30PFS_HA6 : aliased P30PFS_HA_Register;

         when View_P30PFS_BY6 =>
            --  P30%s Pin Function Control Register
            P30PFS_BY6 : aliased P30PFS_BY_Register;

         when View_P40PFS =>
            --  P40%s Pin Function Control Register
            P40PFS : aliased P40PFS_Registers;

         when View_P40PFS_HA0 =>
            --  P40%s Pin Function Control Register
            P40PFS_HA0 : aliased P40PFS_HA_Register;

         when View_P40PFS_BY0 =>
            --  P40%s Pin Function Control Register
            P40PFS_BY0 : aliased P40PFS_BY_Register;

         when View_P40PFS_HA1 =>
            --  P40%s Pin Function Control Register
            P40PFS_HA1 : aliased P40PFS_HA_Register;

         when View_P40PFS_BY1 =>
            --  P40%s Pin Function Control Register
            P40PFS_BY1 : aliased P40PFS_BY_Register;

         when View_P40PFS_HA2 =>
            --  P40%s Pin Function Control Register
            P40PFS_HA2 : aliased P40PFS_HA_Register;

         when View_P40PFS_BY2 =>
            --  P40%s Pin Function Control Register
            P40PFS_BY2 : aliased P40PFS_BY_Register;

         when View_P40PFS_HA3 =>
            --  P40%s Pin Function Control Register
            P40PFS_HA3 : aliased P40PFS_HA_Register;

         when View_P40PFS_BY3 =>
            --  P40%s Pin Function Control Register
            P40PFS_BY3 : aliased P40PFS_BY_Register;

         when View_P40PFS_HA4 =>
            --  P40%s Pin Function Control Register
            P40PFS_HA4 : aliased P40PFS_HA_Register;

         when View_P40PFS_BY4 =>
            --  P40%s Pin Function Control Register
            P40PFS_BY4 : aliased P40PFS_BY_Register;

         when View_P40PFS_HA5 =>
            --  P40%s Pin Function Control Register
            P40PFS_HA5 : aliased P40PFS_HA_Register;

         when View_P40PFS_BY5 =>
            --  P40%s Pin Function Control Register
            P40PFS_BY5 : aliased P40PFS_BY_Register;

         when View_P40PFS_HA6 =>
            --  P40%s Pin Function Control Register
            P40PFS_HA6 : aliased P40PFS_HA_Register;

         when View_P40PFS_BY6 =>
            --  P40%s Pin Function Control Register
            P40PFS_BY6 : aliased P40PFS_BY_Register;

         when View_P40PFS_HA7 =>
            --  P40%s Pin Function Control Register
            P40PFS_HA7 : aliased P40PFS_HA_Register;

         when View_P40PFS_BY7 =>
            --  P40%s Pin Function Control Register
            P40PFS_BY7 : aliased P40PFS_BY_Register;

         when View_P408PFS =>
            --  P408 Pin Function Control Register
            P408PFS : aliased P408PFS_Register;

         when View_P408PFS_HA =>
            --  P408 Pin Function Control Register
            P408PFS_HA : aliased P408PFS_HA_Register;

         when View_P408PFS_BY =>
            --  P408 Pin Function Control Register
            P408PFS_BY : aliased P408PFS_BY_Register;

         when View_P409PFS =>
            --  P409 Pin Function Control Register
            P409PFS : aliased P409PFS_Register;

         when View_P409PFS_HA =>
            --  P409 Pin Function Control Register
            P409PFS_HA : aliased P409PFS_HA_Register;

         when View_P409PFS_BY =>
            --  P409 Pin Function Control Register
            P409PFS_BY : aliased P409PFS_BY_Register;

         when View_P4PFS =>
            --  P4%s Pin Function Control Register
            P4PFS : aliased P4PFS_Registers;

         when View_P4PFS_HA0 =>
            --  P4%s Pin Function Control Register
            P4PFS_HA0 : aliased P4PFS_HA_Register;

         when View_P4PFS_BY0 =>
            --  P4%s Pin Function Control Register
            P4PFS_BY0 : aliased P4PFS_BY_Register;

         when View_P4PFS_HA1 =>
            --  P4%s Pin Function Control Register
            P4PFS_HA1 : aliased P4PFS_HA_Register;

         when View_P4PFS_BY1 =>
            --  P4%s Pin Function Control Register
            P4PFS_BY1 : aliased P4PFS_BY_Register;

         when View_P4PFS_HA2 =>
            --  P4%s Pin Function Control Register
            P4PFS_HA2 : aliased P4PFS_HA_Register;

         when View_P4PFS_BY2 =>
            --  P4%s Pin Function Control Register
            P4PFS_BY2 : aliased P4PFS_BY_Register;

         when View_P4PFS_HA3 =>
            --  P4%s Pin Function Control Register
            P4PFS_HA3 : aliased P4PFS_HA_Register;

         when View_P4PFS_BY3 =>
            --  P4%s Pin Function Control Register
            P4PFS_BY3 : aliased P4PFS_BY_Register;

         when View_P4PFS_HA4 =>
            --  P4%s Pin Function Control Register
            P4PFS_HA4 : aliased P4PFS_HA_Register;

         when View_P4PFS_BY4 =>
            --  P4%s Pin Function Control Register
            P4PFS_BY4 : aliased P4PFS_BY_Register;

         when View_P4PFS_HA5 =>
            --  P4%s Pin Function Control Register
            P4PFS_HA5 : aliased P4PFS_HA_Register;

         when View_P4PFS_BY5 =>
            --  P4%s Pin Function Control Register
            P4PFS_BY5 : aliased P4PFS_BY_Register;

         when View_P50PFS =>
            --  P50%s Pin Function Control Register
            P50PFS : aliased P50PFS_Registers;

         when View_P50PFS_HA0 =>
            --  P50%s Pin Function Control Register
            P50PFS_HA0 : aliased P50PFS_HA_Register;

         when View_P50PFS_BY0 =>
            --  P50%s Pin Function Control Register
            P50PFS_BY0 : aliased P50PFS_BY_Register;

         when View_P50PFS_HA1 =>
            --  P50%s Pin Function Control Register
            P50PFS_HA1 : aliased P50PFS_HA_Register;

         when View_P50PFS_BY1 =>
            --  P50%s Pin Function Control Register
            P50PFS_BY1 : aliased P50PFS_BY_Register;

         when View_P50PFS_HA2 =>
            --  P50%s Pin Function Control Register
            P50PFS_HA2 : aliased P50PFS_HA_Register;

         when View_P50PFS_BY2 =>
            --  P50%s Pin Function Control Register
            P50PFS_BY2 : aliased P50PFS_BY_Register;

         when View_P50PFS_HA3 =>
            --  P50%s Pin Function Control Register
            P50PFS_HA3 : aliased P50PFS_HA_Register;

         when View_P50PFS_BY3 =>
            --  P50%s Pin Function Control Register
            P50PFS_BY3 : aliased P50PFS_BY_Register;

         when View_P50PFS_HA4 =>
            --  P50%s Pin Function Control Register
            P50PFS_HA4 : aliased P50PFS_HA_Register;

         when View_P50PFS_BY4 =>
            --  P50%s Pin Function Control Register
            P50PFS_BY4 : aliased P50PFS_BY_Register;

         when View_P50PFS_HA5 =>
            --  P50%s Pin Function Control Register
            P50PFS_HA5 : aliased P50PFS_HA_Register;

         when View_P50PFS_BY5 =>
            --  P50%s Pin Function Control Register
            P50PFS_BY5 : aliased P50PFS_BY_Register;

         when View_P60PFS =>
            --  P60%s Pin Function Control Register
            P60PFS : aliased P60PFS_Registers;

         when View_P60PFS_HA0 =>
            --  P60%s Pin Function Control Register
            P60PFS_HA0 : aliased P60PFS_HA_Register;

         when View_P60PFS_BY0 =>
            --  P60%s Pin Function Control Register
            P60PFS_BY0 : aliased P60PFS_BY_Register;

         when View_P60PFS_HA1 =>
            --  P60%s Pin Function Control Register
            P60PFS_HA1 : aliased P60PFS_HA_Register;

         when View_P60PFS_BY1 =>
            --  P60%s Pin Function Control Register
            P60PFS_BY1 : aliased P60PFS_BY_Register;

         when View_P60PFS_HA2 =>
            --  P60%s Pin Function Control Register
            P60PFS_HA2 : aliased P60PFS_HA_Register;

         when View_P60PFS_BY2 =>
            --  P60%s Pin Function Control Register
            P60PFS_BY2 : aliased P60PFS_BY_Register;

         when View_P60PFS_HA3 =>
            --  P60%s Pin Function Control Register
            P60PFS_HA3 : aliased P60PFS_HA_Register;

         when View_P60PFS_BY3 =>
            --  P60%s Pin Function Control Register
            P60PFS_BY3 : aliased P60PFS_BY_Register;

         when View_P60PFS_1 =>
            --  P60%s Pin Function Control Register
            P60PFS_1 : aliased P60PFS_Registers_1;

         when View_P60PFS_HA0_1 =>
            --  P60%s Pin Function Control Register
            P60PFS_HA0_1 : aliased P60PFS_HA_Register;

         when View_P60PFS_BY0_1 =>
            --  P60%s Pin Function Control Register
            P60PFS_BY0_1 : aliased P60PFS_BY_Register;

         when View_P60PFS_HA1_1 =>
            --  P60%s Pin Function Control Register
            P60PFS_HA1_1 : aliased P60PFS_HA_Register;

         when View_P60PFS_BY1_1 =>
            --  P60%s Pin Function Control Register
            P60PFS_BY1_1 : aliased P60PFS_BY_Register;

         when View_P610PFS =>
            --  P610 Pin Function Control Register
            P610PFS : aliased P610PFS_Register;

         when View_P610PFS_HA =>
            --  P610 Pin Function Control Register
            P610PFS_HA : aliased P610PFS_HA_Register;

         when View_P610PFS_BY =>
            --  P610 Pin Function Control Register
            P610PFS_BY : aliased P610PFS_BY_Register;

         when View_P708PFS =>
            --  P708 Pin Function Control Register
            P708PFS : aliased P708PFS_Register;

         when View_P708PFS_HA =>
            --  P708 Pin Function Control Register
            P708PFS_HA : aliased P708PFS_HA_Register;

         when View_P708PFS_BY =>
            --  P708 Pin Function Control Register
            P708PFS_BY : aliased P708PFS_BY_Register;

         when View_P80PFS =>
            --  P80%s Pin Function Control Register
            P80PFS : aliased P80PFS_Registers;

         when View_P80PFS_HA0 =>
            --  P80%s Pin Function Control Register
            P80PFS_HA0 : aliased P80PFS_HA_Register;

         when View_P80PFS_BY0 =>
            --  P80%s Pin Function Control Register
            P80PFS_BY0 : aliased P80PFS_BY_Register;

         when View_P80PFS_HA1 =>
            --  P80%s Pin Function Control Register
            P80PFS_HA1 : aliased P80PFS_HA_Register;

         when View_P80PFS_BY1 =>
            --  P80%s Pin Function Control Register
            P80PFS_BY1 : aliased P80PFS_BY_Register;

         when View_P9PFS =>
            --  P9%s Pin Function Control Register
            P9PFS : aliased P9PFS_Registers;

         when View_P9PFS_HA0 =>
            --  P9%s Pin Function Control Register
            P9PFS_HA0 : aliased P9PFS_HA_Register;

         when View_P9PFS_BY0 =>
            --  P9%s Pin Function Control Register
            P9PFS_BY0 : aliased P9PFS_BY_Register;

         when View_P9PFS_HA1 =>
            --  P9%s Pin Function Control Register
            P9PFS_HA1 : aliased P9PFS_HA_Register;

         when View_P9PFS_BY1 =>
            --  P9%s Pin Function Control Register
            P9PFS_BY1 : aliased P9PFS_BY_Register;
      end case;
   end record
   with Unchecked_Union, Volatile;

   for PFS_Peripheral use
     record
       P000PFS at 16#0# range 0 .. 31;
       P000PFS_HA at 16#2# range 0 .. 15;
       P000PFS_BY at 16#3# range 0 .. 7;
       P00PFS at 16#4# range 0 .. 255;
       P00PFS_HA0 at 16#6# range 0 .. 15;
       P00PFS_BY0 at 16#7# range 0 .. 7;
       P00PFS_HA1 at 16#A# range 0 .. 15;
       P00PFS_BY1 at 16#B# range 0 .. 7;
       P00PFS_HA2 at 16#E# range 0 .. 15;
       P00PFS_BY2 at 16#F# range 0 .. 7;
       P00PFS_HA3 at 16#12# range 0 .. 15;
       P00PFS_BY3 at 16#13# range 0 .. 7;
       P00PFS_HA4 at 16#16# range 0 .. 15;
       P00PFS_BY4 at 16#17# range 0 .. 7;
       P00PFS_HA5 at 16#1A# range 0 .. 15;
       P00PFS_BY5 at 16#1B# range 0 .. 7;
       P00PFS_HA6 at 16#1E# range 0 .. 15;
       P00PFS_BY6 at 16#1F# range 0 .. 7;
       P00PFS_HA7 at 16#22# range 0 .. 15;
       P00PFS_BY7 at 16#23# range 0 .. 7;
       P0PFS at 16#28# range 0 .. 191;
       P0PFS_HA0 at 16#2A# range 0 .. 15;
       P0PFS_BY0 at 16#2B# range 0 .. 7;
       P0PFS_HA1 at 16#2E# range 0 .. 15;
       P0PFS_BY1 at 16#2F# range 0 .. 7;
       P0PFS_HA2 at 16#32# range 0 .. 15;
       P0PFS_BY2 at 16#33# range 0 .. 7;
       P0PFS_HA3 at 16#36# range 0 .. 15;
       P0PFS_BY3 at 16#37# range 0 .. 7;
       P0PFS_HA4 at 16#3A# range 0 .. 15;
       P0PFS_BY4 at 16#3B# range 0 .. 7;
       P0PFS_HA5 at 16#3E# range 0 .. 15;
       P0PFS_BY5 at 16#3F# range 0 .. 7;
       P100PFS at 16#40# range 0 .. 31;
       P100PFS_HA at 16#42# range 0 .. 15;
       P100PFS_BY at 16#43# range 0 .. 7;
       P10PFS at 16#44# range 0 .. 223;
       P10PFS_HA0 at 16#46# range 0 .. 15;
       P10PFS_BY0 at 16#47# range 0 .. 7;
       P10PFS_HA1 at 16#4A# range 0 .. 15;
       P10PFS_BY1 at 16#4B# range 0 .. 7;
       P10PFS_HA2 at 16#4E# range 0 .. 15;
       P10PFS_BY2 at 16#4F# range 0 .. 7;
       P10PFS_HA3 at 16#52# range 0 .. 15;
       P10PFS_BY3 at 16#53# range 0 .. 7;
       P10PFS_HA4 at 16#56# range 0 .. 15;
       P10PFS_BY4 at 16#57# range 0 .. 7;
       P10PFS_HA5 at 16#5A# range 0 .. 15;
       P10PFS_BY5 at 16#5B# range 0 .. 7;
       P10PFS_HA6 at 16#5E# range 0 .. 15;
       P10PFS_BY6 at 16#5F# range 0 .. 7;
       P108PFS at 16#60# range 0 .. 31;
       P108PFS_HA at 16#62# range 0 .. 15;
       P108PFS_BY at 16#63# range 0 .. 7;
       P109PFS at 16#64# range 0 .. 31;
       P109PFS_HA at 16#66# range 0 .. 15;
       P109PFS_BY at 16#67# range 0 .. 7;
       P110PFS at 16#68# range 0 .. 31;
       P110PFS_HA at 16#6A# range 0 .. 15;
       P110PFS_BY at 16#6B# range 0 .. 7;
       P1PFS at 16#6C# range 0 .. 159;
       P1PFS_HA0 at 16#6E# range 0 .. 15;
       P1PFS_BY0 at 16#6F# range 0 .. 7;
       P1PFS_HA1 at 16#72# range 0 .. 15;
       P1PFS_BY1 at 16#73# range 0 .. 7;
       P1PFS_HA2 at 16#76# range 0 .. 15;
       P1PFS_BY2 at 16#77# range 0 .. 7;
       P1PFS_HA3 at 16#7A# range 0 .. 15;
       P1PFS_BY3 at 16#7B# range 0 .. 7;
       P1PFS_HA4 at 16#7E# range 0 .. 15;
       P1PFS_BY4 at 16#7F# range 0 .. 7;
       P200PFS at 16#80# range 0 .. 31;
       P200PFS_HA at 16#82# range 0 .. 15;
       P200PFS_BY at 16#83# range 0 .. 7;
       P201PFS at 16#84# range 0 .. 31;
       P201PFS_HA at 16#86# range 0 .. 15;
       P201PFS_BY at 16#87# range 0 .. 7;
       P20PFS at 16#88# range 0 .. 159;
       P20PFS_HA0 at 16#8A# range 0 .. 15;
       P20PFS_BY0 at 16#8B# range 0 .. 7;
       P20PFS_HA1 at 16#8E# range 0 .. 15;
       P20PFS_BY1 at 16#8F# range 0 .. 7;
       P20PFS_HA2 at 16#92# range 0 .. 15;
       P20PFS_BY2 at 16#93# range 0 .. 7;
       P20PFS_HA3 at 16#96# range 0 .. 15;
       P20PFS_BY3 at 16#97# range 0 .. 7;
       P20PFS_HA4 at 16#9A# range 0 .. 15;
       P20PFS_BY4 at 16#9B# range 0 .. 7;
       P2PFS at 16#B0# range 0 .. 127;
       P2PFS_HA0 at 16#B2# range 0 .. 15;
       P2PFS_BY0 at 16#B3# range 0 .. 7;
       P2PFS_HA1 at 16#B6# range 0 .. 15;
       P2PFS_BY1 at 16#B7# range 0 .. 7;
       P2PFS_HA2 at 16#BA# range 0 .. 15;
       P2PFS_BY2 at 16#BB# range 0 .. 7;
       P2PFS_HA3 at 16#BE# range 0 .. 15;
       P2PFS_BY3 at 16#BF# range 0 .. 7;
       P300PFS at 16#C0# range 0 .. 31;
       P300PFS_HA at 16#C2# range 0 .. 15;
       P300PFS_BY at 16#C3# range 0 .. 7;
       P30PFS at 16#C4# range 0 .. 223;
       P30PFS_HA0 at 16#C6# range 0 .. 15;
       P30PFS_BY0 at 16#C7# range 0 .. 7;
       P30PFS_HA1 at 16#CA# range 0 .. 15;
       P30PFS_BY1 at 16#CB# range 0 .. 7;
       P30PFS_HA2 at 16#CE# range 0 .. 15;
       P30PFS_BY2 at 16#CF# range 0 .. 7;
       P30PFS_HA3 at 16#D2# range 0 .. 15;
       P30PFS_BY3 at 16#D3# range 0 .. 7;
       P30PFS_HA4 at 16#D6# range 0 .. 15;
       P30PFS_BY4 at 16#D7# range 0 .. 7;
       P30PFS_HA5 at 16#DA# range 0 .. 15;
       P30PFS_BY5 at 16#DB# range 0 .. 7;
       P30PFS_HA6 at 16#DE# range 0 .. 15;
       P30PFS_BY6 at 16#DF# range 0 .. 7;
       P40PFS at 16#100# range 0 .. 255;
       P40PFS_HA0 at 16#102# range 0 .. 15;
       P40PFS_BY0 at 16#103# range 0 .. 7;
       P40PFS_HA1 at 16#106# range 0 .. 15;
       P40PFS_BY1 at 16#107# range 0 .. 7;
       P40PFS_HA2 at 16#10A# range 0 .. 15;
       P40PFS_BY2 at 16#10B# range 0 .. 7;
       P40PFS_HA3 at 16#10E# range 0 .. 15;
       P40PFS_BY3 at 16#10F# range 0 .. 7;
       P40PFS_HA4 at 16#112# range 0 .. 15;
       P40PFS_BY4 at 16#113# range 0 .. 7;
       P40PFS_HA5 at 16#116# range 0 .. 15;
       P40PFS_BY5 at 16#117# range 0 .. 7;
       P40PFS_HA6 at 16#11A# range 0 .. 15;
       P40PFS_BY6 at 16#11B# range 0 .. 7;
       P40PFS_HA7 at 16#11E# range 0 .. 15;
       P40PFS_BY7 at 16#11F# range 0 .. 7;
       P408PFS at 16#120# range 0 .. 31;
       P408PFS_HA at 16#122# range 0 .. 15;
       P408PFS_BY at 16#123# range 0 .. 7;
       P409PFS at 16#124# range 0 .. 31;
       P409PFS_HA at 16#126# range 0 .. 15;
       P409PFS_BY at 16#127# range 0 .. 7;
       P4PFS at 16#128# range 0 .. 191;
       P4PFS_HA0 at 16#12A# range 0 .. 15;
       P4PFS_BY0 at 16#12B# range 0 .. 7;
       P4PFS_HA1 at 16#12E# range 0 .. 15;
       P4PFS_BY1 at 16#12F# range 0 .. 7;
       P4PFS_HA2 at 16#132# range 0 .. 15;
       P4PFS_BY2 at 16#133# range 0 .. 7;
       P4PFS_HA3 at 16#136# range 0 .. 15;
       P4PFS_BY3 at 16#137# range 0 .. 7;
       P4PFS_HA4 at 16#13A# range 0 .. 15;
       P4PFS_BY4 at 16#13B# range 0 .. 7;
       P4PFS_HA5 at 16#13E# range 0 .. 15;
       P4PFS_BY5 at 16#13F# range 0 .. 7;
       P50PFS at 16#140# range 0 .. 191;
       P50PFS_HA0 at 16#142# range 0 .. 15;
       P50PFS_BY0 at 16#143# range 0 .. 7;
       P50PFS_HA1 at 16#146# range 0 .. 15;
       P50PFS_BY1 at 16#147# range 0 .. 7;
       P50PFS_HA2 at 16#14A# range 0 .. 15;
       P50PFS_BY2 at 16#14B# range 0 .. 7;
       P50PFS_HA3 at 16#14E# range 0 .. 15;
       P50PFS_BY3 at 16#14F# range 0 .. 7;
       P50PFS_HA4 at 16#152# range 0 .. 15;
       P50PFS_BY4 at 16#153# range 0 .. 7;
       P50PFS_HA5 at 16#156# range 0 .. 15;
       P50PFS_BY5 at 16#157# range 0 .. 7;
       P60PFS at 16#180# range 0 .. 127;
       P60PFS_HA0 at 16#182# range 0 .. 15;
       P60PFS_BY0 at 16#183# range 0 .. 7;
       P60PFS_HA1 at 16#186# range 0 .. 15;
       P60PFS_BY1 at 16#187# range 0 .. 7;
       P60PFS_HA2 at 16#18A# range 0 .. 15;
       P60PFS_BY2 at 16#18B# range 0 .. 7;
       P60PFS_HA3 at 16#18E# range 0 .. 15;
       P60PFS_BY3 at 16#18F# range 0 .. 7;
       P60PFS_1 at 16#1A0# range 0 .. 63;
       P60PFS_HA0_1 at 16#1A2# range 0 .. 15;
       P60PFS_BY0_1 at 16#1A3# range 0 .. 7;
       P60PFS_HA1_1 at 16#1A6# range 0 .. 15;
       P60PFS_BY1_1 at 16#1A7# range 0 .. 7;
       P610PFS at 16#1A8# range 0 .. 31;
       P610PFS_HA at 16#1AA# range 0 .. 15;
       P610PFS_BY at 16#1AB# range 0 .. 7;
       P708PFS at 16#1E0# range 0 .. 31;
       P708PFS_HA at 16#1E2# range 0 .. 15;
       P708PFS_BY at 16#1E3# range 0 .. 7;
       P80PFS at 16#220# range 0 .. 63;
       P80PFS_HA0 at 16#222# range 0 .. 15;
       P80PFS_BY0 at 16#223# range 0 .. 7;
       P80PFS_HA1 at 16#226# range 0 .. 15;
       P80PFS_BY1 at 16#227# range 0 .. 7;
       P9PFS at 16#278# range 0 .. 63;
       P9PFS_HA0 at 16#27A# range 0 .. 15;
       P9PFS_BY0 at 16#27B# range 0 .. 7;
       P9PFS_HA1 at 16#27E# range 0 .. 15;
       P9PFS_BY1 at 16#27F# range 0 .. 7;
     end record;

   --  Pmn Pin Function Control Register
   PFS_Periph : aliased PFS_Peripheral
   with Import, Address => PFS_Base;

end R7FA4M1AB.PFS;
