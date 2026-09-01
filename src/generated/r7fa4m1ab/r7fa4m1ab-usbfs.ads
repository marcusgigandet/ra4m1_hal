pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB-ada.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  USB 2.0 FS Module
package R7FA4M1AB.USBFS is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  USB Operation Enable
   type SYSCFG_USBE_Field is
     (--  Disabled
      Val_0,
      --  Enabled.
      Val_1)
     with Size => 1;
   for SYSCFG_USBE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  D- Line Resistor Control
   type SYSCFG_DMRPU_Field is
     (--  Line pull-up disabled
      Val_0,
      --  Line pull-up enabled.
      Val_1)
     with Size => 1;
   for SYSCFG_DMRPU_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  D+ Line Resistor Control
   type SYSCFG_DPRPU_Field is
     (--  Line pull-down disabled
      Val_0,
      --  Line pull-down enabled.
      Val_1)
     with Size => 1;
   for SYSCFG_DPRPU_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  D+/D- Line Resistor Control
   type SYSCFG_DRPD_Field is
     (--  Line pull-down disabled
      Val_0,
      --  Line pull-down enabled.
      Val_1)
     with Size => 1;
   for SYSCFG_DRPD_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Controller Function Select
   type SYSCFG_DCFM_Field is
     (--  Device controller selected
      Val_0,
      --  Host controller selected.
      Val_1)
     with Size => 1;
   for SYSCFG_DCFM_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  CNEN Single End Receiver Enable
   type SYSCFG_CNEN_Field is
     (--  Single end receiver disabled
      Val_0,
      --  Single end receiver enabled
      Val_1)
     with Size => 1;
   for SYSCFG_CNEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  USB Clock Enable
   type SYSCFG_SCKE_Field is
     (--  Clock supply to the USBFS stopped
      Val_0,
      --  Clock supply to the USBFS enabled.
      Val_1)
     with Size => 1;
   for SYSCFG_SCKE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype SYSCFG_Reserved_Field is R7FA4M1AB.UInt5;

   --  System Configuration Control Register
   type SYSCFG_Register is record
      --  USB Operation Enable
      USBE         : SYSCFG_USBE_Field := R7FA4M1AB.USBFS.Val_0;
      --  unspecified
      Reserved_1_2 : R7FA4M1AB.UInt2 := 16#0#;
      --  D- Line Resistor Control
      DMRPU        : SYSCFG_DMRPU_Field := R7FA4M1AB.USBFS.Val_0;
      --  D+ Line Resistor Control
      DPRPU        : SYSCFG_DPRPU_Field := R7FA4M1AB.USBFS.Val_0;
      --  D+/D- Line Resistor Control
      DRPD         : SYSCFG_DRPD_Field := R7FA4M1AB.USBFS.Val_0;
      --  Controller Function Select
      DCFM         : SYSCFG_DCFM_Field := R7FA4M1AB.USBFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved     : Boolean := False;
      --  CNEN Single End Receiver Enable
      CNEN         : SYSCFG_CNEN_Field := R7FA4M1AB.USBFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1   : Boolean := False;
      --  USB Clock Enable
      SCKE         : SYSCFG_SCKE_Field := R7FA4M1AB.USBFS.Val_0;
      --  These bits are read as 00000. The write value should be 00000.
      Reserved_2   : SYSCFG_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_Register use record
      USBE         at 0 range 0 .. 0;
      Reserved_1_2 at 0 range 1 .. 2;
      DMRPU        at 0 range 3 .. 3;
      DPRPU        at 0 range 4 .. 4;
      DRPD         at 0 range 5 .. 5;
      DCFM         at 0 range 6 .. 6;
      Reserved     at 0 range 7 .. 7;
      CNEN         at 0 range 8 .. 8;
      Reserved_1   at 0 range 9 .. 9;
      SCKE         at 0 range 10 .. 10;
      Reserved_2   at 0 range 11 .. 15;
   end record;

   --  USB Data Line Status Monitor
   type SYSSTS0_LNST_Field is
     (--  SE0
      Val_00,
      --  K-State (FS) / J-State(LS)
      Val_01,
      --  J-State(FS) / K-State(LS)
      Val_10,
      --  SE1
      Val_11)
     with Size => 2;
   for SYSSTS0_LNST_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   --  External ID0 Input Pin Monitor
   type SYSSTS0_IDMON_Field is
     (--  USB0_ID pin is low
      Val_0,
      --  USB0_ID pin is high
      Val_1)
     with Size => 1;
   for SYSSTS0_IDMON_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype SYSSTS0_Reserved_Field is R7FA4M1AB.UInt3;

   --  USB Host Sequencer Status Monitor
   type SYSSTS0_HTACT_Field is
     (--  Host sequencer completely stopped
      Val_0,
      --  Host sequencer not completely stopped.
      Val_1)
     with Size => 1;
   for SYSSTS0_HTACT_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype SYSSTS0_Reserved_Field_1 is R7FA4M1AB.UInt7;
   subtype SYSSTS0_OVCMON_Field is R7FA4M1AB.UInt2;

   --  System Configuration Status Register 0
   type SYSSTS0_Register is record
      --  Read-only. USB Data Line Status Monitor
      LNST       : SYSSTS0_LNST_Field;
      --  Read-only. External ID0 Input Pin Monitor
      IDMON      : SYSSTS0_IDMON_Field;
      --  Read-only. These bits are read as 000.
      Reserved   : SYSSTS0_Reserved_Field;
      --  Read-only. USB Host Sequencer Status Monitor
      HTACT      : SYSSTS0_HTACT_Field;
      --  Read-only. These bits are read as 0000000.
      Reserved_1 : SYSSTS0_Reserved_Field_1;
      --  Read-only. External USB0_OVRCURA/ USB0_OVRCURB Input Pin Monitor The
      --  OCVMON[1] bit indicates the status of the USBHS_OVRCURA pin. The
      --  OCVMON[0] bit indicates the status of the USBHS_OVRCURB pin.
      OVCMON     : SYSSTS0_OVCMON_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for SYSSTS0_Register use record
      LNST       at 0 range 0 .. 1;
      IDMON      at 0 range 2 .. 2;
      Reserved   at 0 range 3 .. 5;
      HTACT      at 0 range 6 .. 6;
      Reserved_1 at 0 range 7 .. 13;
      OVCMON     at 0 range 14 .. 15;
   end record;

   --  USB Bus Reset Status
   type DVSTCTR0_RHST_Field is
     (--  Communication speed not determined
      Val_000,
      --  USB bus reset in progress(When the host controller function is selected)
      others_k,
      --  Low-speed connection(When the host controller is selected) /USB bus reset
--  in progress( When the function controller is selected)
      Val_001,
      --  Full-speed connection(When the host controller is selected) /USB bus reset
--  in progress or full-speed connection(When the function controller is
--  selected)
      Val_010,
      --  Setting prohibited
      Val_011)
     with Size => 3;
   for DVSTCTR0_RHST_Field use
     (Val_000 => 0,
      others_k => 0,
      Val_001 => 1,
      Val_010 => 2,
      Val_011 => 3);

   --  USB Bus Enable
   type DVSTCTR0_UACT_Field is
     (--  Downstream port is disabled (SOF transmission is disabled).
      Val_0,
      --  Downstream port is enabled (SOF transmission is enabled).
      Val_1)
     with Size => 1;
   for DVSTCTR0_UACT_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Resume Output
   type DVSTCTR0_RESUME_Field is
     (--  Resume signal is not output.
      Val_0,
      --  Resume signal is output.
      Val_1)
     with Size => 1;
   for DVSTCTR0_RESUME_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  USB Bus Reset Output
   type DVSTCTR0_USBRST_Field is
     (--  USB bus reset signal is not output.
      Val_0,
      --  USB bus reset signal is output.
      Val_1)
     with Size => 1;
   for DVSTCTR0_USBRST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Wakeup Detection Enable
   type DVSTCTR0_RWUPE_Field is
     (--  Downstream port wakeup is disabled.
      Val_0,
      --  Downstream port wakeup is enabled.
      Val_1)
     with Size => 1;
   for DVSTCTR0_RWUPE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Wakeup Output
   type DVSTCTR0_WKUP_Field is
     (--  Remote wakeup signal is not output.
      Val_0,
      --  Remote wakeup signal is output.
      Val_1)
     with Size => 1;
   for DVSTCTR0_WKUP_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  USB_VBUSEN Output Pin Control
   type DVSTCTR0_VBUSEN_Field is
     (--  External USB_VBUSEN pin outputs low
      Val_0,
      --  External USB_VBUSEN pin outputs high
      Val_1)
     with Size => 1;
   for DVSTCTR0_VBUSEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  USB_EXICEN Output Pin Control
   type DVSTCTR0_EXICEN_Field is
     (--  External USB_EXICEN pin outputs low
      Val_0,
      --  External USB_EXICEN pin outputs high
      Val_1)
     with Size => 1;
   for DVSTCTR0_EXICEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Host Negotiation Protocol (HNP) Control This bit is used when switching
   --  from device B to device A while in OTG mode. If the HNPBTOA bit is 1,
   --  the internal function control keeps the suspended state until the HNP
   --  processing ends even though SYSCFG.DPRPU = 0 or SYSCFG.DCFM = 1 is set.
   type DVSTCTR0_HNPBTOA_Field is
     (--  Normal Operation
      Val_0,
      --  Switching from device B to device A is enabled
      Val_1)
     with Size => 1;
   for DVSTCTR0_HNPBTOA_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype DVSTCTR0_Reserved_Field is R7FA4M1AB.UInt4;

   --  Device State Control Register 0
   type DVSTCTR0_Register is record
      --  Read-only. USB Bus Reset Status
      RHST       : DVSTCTR0_RHST_Field := R7FA4M1AB.USBFS.Val_000;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : Boolean := False;
      --  USB Bus Enable
      UACT       : DVSTCTR0_UACT_Field := R7FA4M1AB.USBFS.Val_0;
      --  Resume Output
      RESUME     : DVSTCTR0_RESUME_Field := R7FA4M1AB.USBFS.Val_0;
      --  USB Bus Reset Output
      USBRST     : DVSTCTR0_USBRST_Field := R7FA4M1AB.USBFS.Val_0;
      --  Wakeup Detection Enable
      RWUPE      : DVSTCTR0_RWUPE_Field := R7FA4M1AB.USBFS.Val_0;
      --  Wakeup Output
      WKUP       : DVSTCTR0_WKUP_Field := R7FA4M1AB.USBFS.Val_0;
      --  USB_VBUSEN Output Pin Control
      VBUSEN     : DVSTCTR0_VBUSEN_Field := R7FA4M1AB.USBFS.Val_0;
      --  USB_EXICEN Output Pin Control
      EXICEN     : DVSTCTR0_EXICEN_Field := R7FA4M1AB.USBFS.Val_0;
      --  Host Negotiation Protocol (HNP) Control This bit is used when
      --  switching from device B to device A while in OTG mode. If the HNPBTOA
      --  bit is 1, the internal function control keeps the suspended state
      --  until the HNP processing ends even though SYSCFG.DPRPU = 0 or
      --  SYSCFG.DCFM = 1 is set.
      HNPBTOA    : DVSTCTR0_HNPBTOA_Field := R7FA4M1AB.USBFS.Val_0;
      --  These bits are read as 0000. The write value should be 0000.
      Reserved_1 : DVSTCTR0_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for DVSTCTR0_Register use record
      RHST       at 0 range 0 .. 2;
      Reserved   at 0 range 3 .. 3;
      UACT       at 0 range 4 .. 4;
      RESUME     at 0 range 5 .. 5;
      USBRST     at 0 range 6 .. 6;
      RWUPE      at 0 range 7 .. 7;
      WKUP       at 0 range 8 .. 8;
      VBUSEN     at 0 range 9 .. 9;
      EXICEN     at 0 range 10 .. 10;
      HNPBTOA    at 0 range 11 .. 11;
      Reserved_1 at 0 range 12 .. 15;
   end record;

   --  CFIFO Port Access Pipe Specification
   type CFIFOSEL_CURPIPE_Field is
     (--  DCP (Default control pipe)
      Val_0000,
      --  Setting prohibited
      others_k,
      --  Pipe 1
      Val_0001,
      --  Pipe 2
      Val_0010,
      --  Pipe 3
      Val_0011,
      --  Pipe 4
      Val_0100,
      --  Pipe 5
      Val_0101,
      --  Pipe 6
      Val_0110,
      --  Pipe 7
      Val_0111,
      --  Pipe 8
      Val_1000,
      --  Pipe 9
      Val_1001)
     with Size => 4;
   for CFIFOSEL_CURPIPE_Field use
     (Val_0000 => 0,
      others_k => 0,
      Val_0001 => 1,
      Val_0010 => 2,
      Val_0011 => 3,
      Val_0100 => 4,
      Val_0101 => 5,
      Val_0110 => 6,
      Val_0111 => 7,
      Val_1000 => 8,
      Val_1001 => 9);

   --  CFIFO Port Access Direction When DCP is Selected
   type CFIFOSEL_ISEL_Field is
     (--  Reading from the buffer memory is selected
      Val_0,
      --  Writing to the buffer memory is selected
      Val_1)
     with Size => 1;
   for CFIFOSEL_ISEL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype CFIFOSEL_Reserved_Field is R7FA4M1AB.UInt2;

   --  CFIFO Port Endian Control
   type CFIFOSEL_BIGEND_Field is
     (--  Little endian
      Val_0,
      --  Big endian
      Val_1)
     with Size => 1;
   for CFIFOSEL_BIGEND_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  CFIFO Port Access Bit Width
   type CFIFOSEL_MBW_Field is
     (--  8-bit width
      Val_0,
      --  16-bit width
      Val_1)
     with Size => 1;
   for CFIFOSEL_MBW_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype CFIFOSEL_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Buffer Pointer Rewind
   type CFIFOSEL_REW_Field is
     (--  The buffer pointer is not rewound.
      Val_0,
      --  The buffer pointer is rewound.
      Val_1)
     with Size => 1;
   for CFIFOSEL_REW_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Read Count Mode
   type CFIFOSEL_RCNT_Field is
     (--  The DTLN[8:0] bits (CFIFOCRT.DTLN[8:0], D0FIFOCRT.DTLN[8:0],
--  D1FIFOCRT.DTLN[8:0]) are cleared when all of the receive data has been read
--  from the CFIFO.(In double buffer mode, the DTLN[8:0] bit value is cleared
--  when all the data has been read from only a single plane.)
      Val_0,
      --  The DTLN[8:0] bits are decremented each time the receive data is read from
--  the CFIFO.
      Val_1)
     with Size => 1;
   for CFIFOSEL_RCNT_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  CFIFO Port Select Register
   type CFIFOSEL_Register is record
      --  CFIFO Port Access Pipe Specification
      CURPIPE    : CFIFOSEL_CURPIPE_Field := R7FA4M1AB.USBFS.Val_0000;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : Boolean := False;
      --  CFIFO Port Access Direction When DCP is Selected
      ISEL       : CFIFOSEL_ISEL_Field := R7FA4M1AB.USBFS.Val_0;
      --  These bits are read as 00. The write value should be 00.
      Reserved_1 : CFIFOSEL_Reserved_Field := 16#0#;
      --  CFIFO Port Endian Control
      BIGEND     : CFIFOSEL_BIGEND_Field := R7FA4M1AB.USBFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_2 : Boolean := False;
      --  CFIFO Port Access Bit Width
      MBW        : CFIFOSEL_MBW_Field := R7FA4M1AB.USBFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_3 : CFIFOSEL_Reserved_Field_1 := 16#0#;
      --  Write-only. Buffer Pointer Rewind
      REW        : CFIFOSEL_REW_Field := R7FA4M1AB.USBFS.Val_0;
      --  Read Count Mode
      RCNT       : CFIFOSEL_RCNT_Field := R7FA4M1AB.USBFS.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for CFIFOSEL_Register use record
      CURPIPE    at 0 range 0 .. 3;
      Reserved   at 0 range 4 .. 4;
      ISEL       at 0 range 5 .. 5;
      Reserved_1 at 0 range 6 .. 7;
      BIGEND     at 0 range 8 .. 8;
      Reserved_2 at 0 range 9 .. 9;
      MBW        at 0 range 10 .. 10;
      Reserved_3 at 0 range 11 .. 13;
      REW        at 0 range 14 .. 14;
      RCNT       at 0 range 15 .. 15;
   end record;

   subtype CFIFOCTR_DTLN_Field is R7FA4M1AB.UInt9;
   subtype CFIFOCTR_Reserved_Field is R7FA4M1AB.UInt4;

   --  FIFO Port Ready
   type CFIFOCTR_FRDY_Field is
     (--  FIFO port access is disabled.
      Val_0,
      --  FIFO port access is enabled.
      Val_1)
     with Size => 1;
   for CFIFOCTR_FRDY_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  CPU Buffer Clear Note: Only 0 can be read.
   type CFIFOCTR_BCLR_Field is
     (--  Does not operate
      Val_0,
      --  FIFO buffer cleared on the CPU side.
      Val_1)
     with Size => 1;
   for CFIFOCTR_BCLR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Buffer Memory Valid Flag
   type CFIFOCTR_BVAL_Field is
     (--  Invalid
      Val_0,
      --  Writing ended
      Val_1)
     with Size => 1;
   for CFIFOCTR_BVAL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  CFIFO Port Control Register
   type CFIFOCTR_Register is record
      --  Read-only. Receive Data Length Indicates the length of the receive
      --  data.
      DTLN     : CFIFOCTR_DTLN_Field := 16#0#;
      --  These bits are read as 0000. The write value should be 0000.
      Reserved : CFIFOCTR_Reserved_Field := 16#0#;
      --  Read-only. FIFO Port Ready
      FRDY     : CFIFOCTR_FRDY_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write-only. CPU Buffer Clear Note: Only 0 can be read.
      BCLR     : CFIFOCTR_BCLR_Field := R7FA4M1AB.USBFS.Val_0;
      --  Buffer Memory Valid Flag
      BVAL     : CFIFOCTR_BVAL_Field := R7FA4M1AB.USBFS.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for CFIFOCTR_Register use record
      DTLN     at 0 range 0 .. 8;
      Reserved at 0 range 9 .. 12;
      FRDY     at 0 range 13 .. 13;
      BCLR     at 0 range 14 .. 14;
      BVAL     at 0 range 15 .. 15;
   end record;

   --  FIFO Port Access Pipe Specification
   type D0FIFOSEL_CURPIPE_Field is
     (--  DCP (Default control pipe)
      Val_0000,
      --  Setting prohibited
      others_k,
      --  Pipe 1
      Val_0001,
      --  Pipe 2
      Val_0010,
      --  Pipe 3
      Val_0011,
      --  Pipe 4
      Val_0100,
      --  Pipe 5
      Val_0101,
      --  Pipe 6
      Val_0110,
      --  Pipe 7
      Val_0111,
      --  Pipe 8
      Val_1000,
      --  Pipe 9
      Val_1001)
     with Size => 4;
   for D0FIFOSEL_CURPIPE_Field use
     (Val_0000 => 0,
      others_k => 0,
      Val_0001 => 1,
      Val_0010 => 2,
      Val_0011 => 3,
      Val_0100 => 4,
      Val_0101 => 5,
      Val_0110 => 6,
      Val_0111 => 7,
      Val_1000 => 8,
      Val_1001 => 9);

   subtype D0FIFOSEL_Reserved_Field is R7FA4M1AB.UInt4;

   --  FIFO Port Endian Control
   type D0FIFOSEL_BIGEND_Field is
     (--  Little endian
      Val_0,
      --  Big endian
      Val_1)
     with Size => 1;
   for D0FIFOSEL_BIGEND_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  FIFO Port Access Bit Width
   type D0FIFOSEL_MBW_Field is
     (--  8-bit width
      Val_0,
      --  16-bit width
      Val_1)
     with Size => 1;
   for D0FIFOSEL_MBW_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  DMA/DTC Transfer Request Enable
   type D0FIFOSEL_DREQE_Field is
     (--  DMA/DTC transfer request is disabled.
      Val_0,
      --  DMA/DTC transfer request is enabled.
      Val_1)
     with Size => 1;
   for D0FIFOSEL_DREQE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Auto Buffer Memory Clear Mode Accessed after Specified Pipe Data is Read
   type D0FIFOSEL_DCLRM_Field is
     (--  Auto buffer clear mode is disabled.
      Val_0,
      --  Auto buffer clear mode is enabled.
      Val_1)
     with Size => 1;
   for D0FIFOSEL_DCLRM_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Buffer Pointer Rewind Note: Only 0 can be read.
   type D0FIFOSEL_REW_Field is
     (--  The buffer pointer is not rewound.
      Val_0,
      --  The buffer pointer is rewound.
      Val_1)
     with Size => 1;
   for D0FIFOSEL_REW_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Read Count Mode
   type D0FIFOSEL_RCNT_Field is
     (--  The DTLN[8:0] bits (CFIFOCRT.DTLN[8:0], D0FIFOCRT.DTLN[8:0],
--  D1FIFOCRT.DTLN[8:0]) are cleared when all of the receive data has been read
--  from the DnFIFO.(In double buffer mode, the DTLN bit Value is cleared when
--  all the data has been read from only a single plane.)
      Val_0,
      --  The DTLN[8:0] bits are decremented each time the receive data is read from
--  the DnFIFO. (n = 0, 1)
      Val_1)
     with Size => 1;
   for D0FIFOSEL_RCNT_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  D0FIFO Port Select Register
   type D0FIFOSEL_Register is record
      --  FIFO Port Access Pipe Specification
      CURPIPE    : D0FIFOSEL_CURPIPE_Field := R7FA4M1AB.USBFS.Val_0000;
      --  These bits are read as 0000. The write value should be 0000.
      Reserved   : D0FIFOSEL_Reserved_Field := 16#0#;
      --  FIFO Port Endian Control
      BIGEND     : D0FIFOSEL_BIGEND_Field := R7FA4M1AB.USBFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : Boolean := False;
      --  FIFO Port Access Bit Width
      MBW        : D0FIFOSEL_MBW_Field := R7FA4M1AB.USBFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_2 : Boolean := False;
      --  DMA/DTC Transfer Request Enable
      DREQE      : D0FIFOSEL_DREQE_Field := R7FA4M1AB.USBFS.Val_0;
      --  Auto Buffer Memory Clear Mode Accessed after Specified Pipe Data is
      --  Read
      DCLRM      : D0FIFOSEL_DCLRM_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write-only. Buffer Pointer Rewind Note: Only 0 can be read.
      REW        : D0FIFOSEL_REW_Field := R7FA4M1AB.USBFS.Val_0;
      --  Read Count Mode
      RCNT       : D0FIFOSEL_RCNT_Field := R7FA4M1AB.USBFS.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for D0FIFOSEL_Register use record
      CURPIPE    at 0 range 0 .. 3;
      Reserved   at 0 range 4 .. 7;
      BIGEND     at 0 range 8 .. 8;
      Reserved_1 at 0 range 9 .. 9;
      MBW        at 0 range 10 .. 10;
      Reserved_2 at 0 range 11 .. 11;
      DREQE      at 0 range 12 .. 12;
      DCLRM      at 0 range 13 .. 13;
      REW        at 0 range 14 .. 14;
      RCNT       at 0 range 15 .. 15;
   end record;

   subtype D0FIFOCTR_DTLN_Field is R7FA4M1AB.UInt9;
   subtype D0FIFOCTR_Reserved_Field is R7FA4M1AB.UInt4;

   --  FIFO Port Ready
   type D0FIFOCTR_FRDY_Field is
     (--  FIFO port access is disabled.
      Val_0,
      --  FIFO port access is enabled.
      Val_1)
     with Size => 1;
   for D0FIFOCTR_FRDY_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  CPU Buffer Clear Note: Only 0 can be read.
   type D0FIFOCTR_BCLR_Field is
     (--  Does not operate
      Val_0,
      --  FIFO buffer cleared on the CPU side.
      Val_1)
     with Size => 1;
   for D0FIFOCTR_BCLR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Buffer Memory Valid Flag
   type D0FIFOCTR_BVAL_Field is
     (--  Invalid
      Val_0,
      --  Writing ended
      Val_1)
     with Size => 1;
   for D0FIFOCTR_BVAL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  D0FIFO Port Control Register
   type D0FIFOCTR_Register is record
      --  Read-only. Receive Data Length Indicates the length of the receive
      --  data.
      DTLN     : D0FIFOCTR_DTLN_Field := 16#0#;
      --  These bits are read as 0000. The write value should be 0000.
      Reserved : D0FIFOCTR_Reserved_Field := 16#0#;
      --  Read-only. FIFO Port Ready
      FRDY     : D0FIFOCTR_FRDY_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write-only. CPU Buffer Clear Note: Only 0 can be read.
      BCLR     : D0FIFOCTR_BCLR_Field := R7FA4M1AB.USBFS.Val_0;
      --  Buffer Memory Valid Flag
      BVAL     : D0FIFOCTR_BVAL_Field := R7FA4M1AB.USBFS.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for D0FIFOCTR_Register use record
      DTLN     at 0 range 0 .. 8;
      Reserved at 0 range 9 .. 12;
      FRDY     at 0 range 13 .. 13;
      BCLR     at 0 range 14 .. 14;
      BVAL     at 0 range 15 .. 15;
   end record;

   --  FIFO Port Access Pipe Specification
   type D1FIFOSEL_CURPIPE_Field is
     (--  DCP (Default control pipe)
      Val_0000,
      --  Setting prohibited
      others_k,
      --  Pipe 1
      Val_0001,
      --  Pipe 2
      Val_0010,
      --  Pipe 3
      Val_0011,
      --  Pipe 4
      Val_0100,
      --  Pipe 5
      Val_0101,
      --  Pipe 6
      Val_0110,
      --  Pipe 7
      Val_0111,
      --  Pipe 8
      Val_1000,
      --  Pipe 9
      Val_1001)
     with Size => 4;
   for D1FIFOSEL_CURPIPE_Field use
     (Val_0000 => 0,
      others_k => 0,
      Val_0001 => 1,
      Val_0010 => 2,
      Val_0011 => 3,
      Val_0100 => 4,
      Val_0101 => 5,
      Val_0110 => 6,
      Val_0111 => 7,
      Val_1000 => 8,
      Val_1001 => 9);

   subtype D1FIFOSEL_Reserved_Field is R7FA4M1AB.UInt4;

   --  FIFO Port Endian Control
   type D1FIFOSEL_BIGEND_Field is
     (--  Little endian
      Val_0,
      --  Big endian
      Val_1)
     with Size => 1;
   for D1FIFOSEL_BIGEND_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  FIFO Port Access Bit Width
   type D1FIFOSEL_MBW_Field is
     (--  8-bit width
      Val_0,
      --  16-bit width
      Val_1)
     with Size => 1;
   for D1FIFOSEL_MBW_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  DMA/DTC Transfer Request Enable
   type D1FIFOSEL_DREQE_Field is
     (--  DMA/DTC transfer request is disabled.
      Val_0,
      --  DMA/DTC transfer request is enabled.
      Val_1)
     with Size => 1;
   for D1FIFOSEL_DREQE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Auto Buffer Memory Clear Mode Accessed after Specified Pipe Data is Read
   type D1FIFOSEL_DCLRM_Field is
     (--  Auto buffer clear mode is disabled.
      Val_0,
      --  Auto buffer clear mode is enabled.
      Val_1)
     with Size => 1;
   for D1FIFOSEL_DCLRM_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Buffer Pointer Rewind
   type D1FIFOSEL_REW_Field is
     (--  The buffer pointer is not rewound.
      Val_0,
      --  The buffer pointer is rewound.
      Val_1)
     with Size => 1;
   for D1FIFOSEL_REW_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Read Count Mode
   type D1FIFOSEL_RCNT_Field is
     (--  The DTLN[8:0] bits (CFIFOCRT.DTLN[8:0], D0FIFOCRT.DTLN[8:0],
--  D1FIFOCRT.DTLN[8:0]) are cleared when all of the receive data has been read
--  from the DnFIFO.(In double buffer mode, the DTLN bit Value is cleared when
--  all the data has been read from only a single plane.)
      Val_0,
      --  The DTLN[8:0] bits are decremented each time the receive data is read from
--  the DnFIFO. (n = 0, 1)
      Val_1)
     with Size => 1;
   for D1FIFOSEL_RCNT_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  D1FIFO Port Select Register
   type D1FIFOSEL_Register is record
      --  FIFO Port Access Pipe Specification
      CURPIPE    : D1FIFOSEL_CURPIPE_Field := R7FA4M1AB.USBFS.Val_0000;
      --  These bits are read as 0000. The write value should be 0000.
      Reserved   : D1FIFOSEL_Reserved_Field := 16#0#;
      --  FIFO Port Endian Control
      BIGEND     : D1FIFOSEL_BIGEND_Field := R7FA4M1AB.USBFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : Boolean := False;
      --  FIFO Port Access Bit Width
      MBW        : D1FIFOSEL_MBW_Field := R7FA4M1AB.USBFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_2 : Boolean := False;
      --  DMA/DTC Transfer Request Enable
      DREQE      : D1FIFOSEL_DREQE_Field := R7FA4M1AB.USBFS.Val_0;
      --  Auto Buffer Memory Clear Mode Accessed after Specified Pipe Data is
      --  Read
      DCLRM      : D1FIFOSEL_DCLRM_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write-only. Buffer Pointer Rewind
      REW        : D1FIFOSEL_REW_Field := R7FA4M1AB.USBFS.Val_0;
      --  Read Count Mode
      RCNT       : D1FIFOSEL_RCNT_Field := R7FA4M1AB.USBFS.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for D1FIFOSEL_Register use record
      CURPIPE    at 0 range 0 .. 3;
      Reserved   at 0 range 4 .. 7;
      BIGEND     at 0 range 8 .. 8;
      Reserved_1 at 0 range 9 .. 9;
      MBW        at 0 range 10 .. 10;
      Reserved_2 at 0 range 11 .. 11;
      DREQE      at 0 range 12 .. 12;
      DCLRM      at 0 range 13 .. 13;
      REW        at 0 range 14 .. 14;
      RCNT       at 0 range 15 .. 15;
   end record;

   subtype D1FIFOCTR_DTLN_Field is R7FA4M1AB.UInt9;
   subtype D1FIFOCTR_Reserved_Field is R7FA4M1AB.UInt4;

   --  FIFO Port Ready
   type D1FIFOCTR_FRDY_Field is
     (--  FIFO port access is disabled.
      Val_0,
      --  FIFO port access is enabled.
      Val_1)
     with Size => 1;
   for D1FIFOCTR_FRDY_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  CPU Buffer Clear Note: Only 0 can be read.
   type D1FIFOCTR_BCLR_Field is
     (--  Does not operate
      Val_0,
      --  FIFO buffer cleared on the CPU side.
      Val_1)
     with Size => 1;
   for D1FIFOCTR_BCLR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Buffer Memory Valid Flag
   type D1FIFOCTR_BVAL_Field is
     (--  Invalid
      Val_0,
      --  Writing ended
      Val_1)
     with Size => 1;
   for D1FIFOCTR_BVAL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  D1FIFO Port Control Register
   type D1FIFOCTR_Register is record
      --  Read-only. Receive Data Length Indicates the length of the receive
      --  data.
      DTLN     : D1FIFOCTR_DTLN_Field := 16#0#;
      --  These bits are read as 0000. The write value should be 0000.
      Reserved : D1FIFOCTR_Reserved_Field := 16#0#;
      --  Read-only. FIFO Port Ready
      FRDY     : D1FIFOCTR_FRDY_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write-only. CPU Buffer Clear Note: Only 0 can be read.
      BCLR     : D1FIFOCTR_BCLR_Field := R7FA4M1AB.USBFS.Val_0;
      --  Buffer Memory Valid Flag
      BVAL     : D1FIFOCTR_BVAL_Field := R7FA4M1AB.USBFS.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for D1FIFOCTR_Register use record
      DTLN     at 0 range 0 .. 8;
      Reserved at 0 range 9 .. 12;
      FRDY     at 0 range 13 .. 13;
      BCLR     at 0 range 14 .. 14;
      BVAL     at 0 range 15 .. 15;
   end record;

   subtype INTENB0_Reserved_Field is R7FA4M1AB.Byte;

   --  Buffer Ready Interrupt Enable
   type INTENB0_BRDYE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for INTENB0_BRDYE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Buffer Not Ready Response Interrupt Enable
   type INTENB0_NRDYE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for INTENB0_NRDYE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Buffer Empty Interrupt Enable
   type INTENB0_BEMPE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for INTENB0_BEMPE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Control Transfer Stage Transition Interrupt Enable
   type INTENB0_CTRE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for INTENB0_CTRE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Device State Transition Interrupt Enable
   type INTENB0_DVSE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for INTENB0_DVSE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Frame Number Update Interrupt Enable
   type INTENB0_SOFE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for INTENB0_SOFE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Resume Interrupt Enable
   type INTENB0_RSME_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for INTENB0_RSME_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  VBUS Interrupt Enable
   type INTENB0_VBSE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for INTENB0_VBSE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Interrupt Enable Register 0
   type INTENB0_Register is record
      --  These bits are read as 00000000. The write value should be 00000000.
      Reserved : INTENB0_Reserved_Field := 16#0#;
      --  Buffer Ready Interrupt Enable
      BRDYE    : INTENB0_BRDYE_Field := R7FA4M1AB.USBFS.Val_0;
      --  Buffer Not Ready Response Interrupt Enable
      NRDYE    : INTENB0_NRDYE_Field := R7FA4M1AB.USBFS.Val_0;
      --  Buffer Empty Interrupt Enable
      BEMPE    : INTENB0_BEMPE_Field := R7FA4M1AB.USBFS.Val_0;
      --  Control Transfer Stage Transition Interrupt Enable
      CTRE     : INTENB0_CTRE_Field := R7FA4M1AB.USBFS.Val_0;
      --  Device State Transition Interrupt Enable
      DVSE     : INTENB0_DVSE_Field := R7FA4M1AB.USBFS.Val_0;
      --  Frame Number Update Interrupt Enable
      SOFE     : INTENB0_SOFE_Field := R7FA4M1AB.USBFS.Val_0;
      --  Resume Interrupt Enable
      RSME     : INTENB0_RSME_Field := R7FA4M1AB.USBFS.Val_0;
      --  VBUS Interrupt Enable
      VBSE     : INTENB0_VBSE_Field := R7FA4M1AB.USBFS.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for INTENB0_Register use record
      Reserved at 0 range 0 .. 7;
      BRDYE    at 0 range 8 .. 8;
      NRDYE    at 0 range 9 .. 9;
      BEMPE    at 0 range 10 .. 10;
      CTRE     at 0 range 11 .. 11;
      DVSE     at 0 range 12 .. 12;
      SOFE     at 0 range 13 .. 13;
      RSME     at 0 range 14 .. 14;
      VBSE     at 0 range 15 .. 15;
   end record;

   --  PDDETINT0 Detection Interrupt Enable
   type INTENB1_PDDETINTE0_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for INTENB1_PDDETINTE0_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype INTENB1_Reserved_Field is R7FA4M1AB.UInt3;

   --  Setup Transaction Normal Response Interrupt Enable
   type INTENB1_SACKE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for INTENB1_SACKE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Setup Transaction Error Interrupt Enable
   type INTENB1_SIGNE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for INTENB1_SIGNE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  EOF Error Detection Interrupt Enable
   type INTENB1_EOFERRE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for INTENB1_EOFERRE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype INTENB1_Reserved_Field_1 is R7FA4M1AB.UInt4;

   --  Connection Detection Interrupt Enable
   type INTENB1_ATTCHE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for INTENB1_ATTCHE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Disconnection Detection Interrupt Enable
   type INTENB1_DTCHE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for INTENB1_DTCHE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  USB Bus Change Interrupt Enable
   type INTENB1_BCHGE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for INTENB1_BCHGE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Overcurrent Input Change Interrupt Enable
   type INTENB1_OVRCRE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for INTENB1_OVRCRE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Interrupt Enable Register 1
   type INTENB1_Register is record
      --  PDDETINT0 Detection Interrupt Enable
      PDDETINTE0 : INTENB1_PDDETINTE0_Field := R7FA4M1AB.USBFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved   : INTENB1_Reserved_Field := 16#0#;
      --  Setup Transaction Normal Response Interrupt Enable
      SACKE      : INTENB1_SACKE_Field := R7FA4M1AB.USBFS.Val_0;
      --  Setup Transaction Error Interrupt Enable
      SIGNE      : INTENB1_SIGNE_Field := R7FA4M1AB.USBFS.Val_0;
      --  EOF Error Detection Interrupt Enable
      EOFERRE    : INTENB1_EOFERRE_Field := R7FA4M1AB.USBFS.Val_0;
      --  These bits are read as 0000. The write value should be 0000.
      Reserved_1 : INTENB1_Reserved_Field_1 := 16#0#;
      --  Connection Detection Interrupt Enable
      ATTCHE     : INTENB1_ATTCHE_Field := R7FA4M1AB.USBFS.Val_0;
      --  Disconnection Detection Interrupt Enable
      DTCHE      : INTENB1_DTCHE_Field := R7FA4M1AB.USBFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_2 : Boolean := False;
      --  USB Bus Change Interrupt Enable
      BCHGE      : INTENB1_BCHGE_Field := R7FA4M1AB.USBFS.Val_0;
      --  Overcurrent Input Change Interrupt Enable
      OVRCRE     : INTENB1_OVRCRE_Field := R7FA4M1AB.USBFS.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for INTENB1_Register use record
      PDDETINTE0 at 0 range 0 .. 0;
      Reserved   at 0 range 1 .. 3;
      SACKE      at 0 range 4 .. 4;
      SIGNE      at 0 range 5 .. 5;
      EOFERRE    at 0 range 6 .. 6;
      Reserved_1 at 0 range 7 .. 10;
      ATTCHE     at 0 range 11 .. 11;
      DTCHE      at 0 range 12 .. 12;
      Reserved_2 at 0 range 13 .. 13;
      BCHGE      at 0 range 14 .. 14;
      OVRCRE     at 0 range 15 .. 15;
   end record;

   --  BRDY Interrupt Enable for PIPE0
   type BRDYENB_PIPE0BRDYE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for BRDYENB_PIPE0BRDYE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BRDY Interrupt Enable for PIPE1
   type BRDYENB_PIPE1BRDYE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for BRDYENB_PIPE1BRDYE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BRDY Interrupt Enable for PIPE2
   type BRDYENB_PIPE2BRDYE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for BRDYENB_PIPE2BRDYE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BRDY Interrupt Enable for PIPE3
   type BRDYENB_PIPE3BRDYE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for BRDYENB_PIPE3BRDYE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BRDY Interrupt Enable for PIPE4
   type BRDYENB_PIPE4BRDYE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for BRDYENB_PIPE4BRDYE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BRDY Interrupt Enable for PIPE5
   type BRDYENB_PIPE5BRDYE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for BRDYENB_PIPE5BRDYE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BRDY Interrupt Enable for PIPE6
   type BRDYENB_PIPE6BRDYE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for BRDYENB_PIPE6BRDYE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BRDY Interrupt Enable for PIPE7
   type BRDYENB_PIPE7BRDYE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for BRDYENB_PIPE7BRDYE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BRDY Interrupt Enable for PIPE8
   type BRDYENB_PIPE8BRDYE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for BRDYENB_PIPE8BRDYE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BRDY Interrupt Enable for PIPE9
   type BRDYENB_PIPE9BRDYE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for BRDYENB_PIPE9BRDYE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype BRDYENB_Reserved_Field is R7FA4M1AB.UInt6;

   --  BRDY Interrupt Enable Register
   type BRDYENB_Register is record
      --  BRDY Interrupt Enable for PIPE0
      PIPE0BRDYE : BRDYENB_PIPE0BRDYE_Field := R7FA4M1AB.USBFS.Val_0;
      --  BRDY Interrupt Enable for PIPE1
      PIPE1BRDYE : BRDYENB_PIPE1BRDYE_Field := R7FA4M1AB.USBFS.Val_0;
      --  BRDY Interrupt Enable for PIPE2
      PIPE2BRDYE : BRDYENB_PIPE2BRDYE_Field := R7FA4M1AB.USBFS.Val_0;
      --  BRDY Interrupt Enable for PIPE3
      PIPE3BRDYE : BRDYENB_PIPE3BRDYE_Field := R7FA4M1AB.USBFS.Val_0;
      --  BRDY Interrupt Enable for PIPE4
      PIPE4BRDYE : BRDYENB_PIPE4BRDYE_Field := R7FA4M1AB.USBFS.Val_0;
      --  BRDY Interrupt Enable for PIPE5
      PIPE5BRDYE : BRDYENB_PIPE5BRDYE_Field := R7FA4M1AB.USBFS.Val_0;
      --  BRDY Interrupt Enable for PIPE6
      PIPE6BRDYE : BRDYENB_PIPE6BRDYE_Field := R7FA4M1AB.USBFS.Val_0;
      --  BRDY Interrupt Enable for PIPE7
      PIPE7BRDYE : BRDYENB_PIPE7BRDYE_Field := R7FA4M1AB.USBFS.Val_0;
      --  BRDY Interrupt Enable for PIPE8
      PIPE8BRDYE : BRDYENB_PIPE8BRDYE_Field := R7FA4M1AB.USBFS.Val_0;
      --  BRDY Interrupt Enable for PIPE9
      PIPE9BRDYE : BRDYENB_PIPE9BRDYE_Field := R7FA4M1AB.USBFS.Val_0;
      --  These bits are read as 000000. The write value should be 000000.
      Reserved   : BRDYENB_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for BRDYENB_Register use record
      PIPE0BRDYE at 0 range 0 .. 0;
      PIPE1BRDYE at 0 range 1 .. 1;
      PIPE2BRDYE at 0 range 2 .. 2;
      PIPE3BRDYE at 0 range 3 .. 3;
      PIPE4BRDYE at 0 range 4 .. 4;
      PIPE5BRDYE at 0 range 5 .. 5;
      PIPE6BRDYE at 0 range 6 .. 6;
      PIPE7BRDYE at 0 range 7 .. 7;
      PIPE8BRDYE at 0 range 8 .. 8;
      PIPE9BRDYE at 0 range 9 .. 9;
      Reserved   at 0 range 10 .. 15;
   end record;

   --  NRDY Interrupt Enable for PIPE0
   type NRDYENB_PIPE0NRDYE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for NRDYENB_PIPE0NRDYE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  NRDY Interrupt Enable for PIPE1
   type NRDYENB_PIPE1NRDYE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for NRDYENB_PIPE1NRDYE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  NRDY Interrupt Enable for PIPE2
   type NRDYENB_PIPE2NRDYE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for NRDYENB_PIPE2NRDYE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  NRDY Interrupt Enable for PIPE3
   type NRDYENB_PIPE3NRDYE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for NRDYENB_PIPE3NRDYE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  NRDY Interrupt Enable for PIPE4
   type NRDYENB_PIPE4NRDYE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for NRDYENB_PIPE4NRDYE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  NRDY Interrupt Enable for PIPE5
   type NRDYENB_PIPE5NRDYE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for NRDYENB_PIPE5NRDYE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  NRDY Interrupt Enable for PIPE6
   type NRDYENB_PIPE6NRDYE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for NRDYENB_PIPE6NRDYE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  NRDY Interrupt Enable for PIPE7
   type NRDYENB_PIPE7NRDYE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for NRDYENB_PIPE7NRDYE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  NRDY Interrupt Enable for PIPE8
   type NRDYENB_PIPE8NRDYE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for NRDYENB_PIPE8NRDYE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  NRDY Interrupt Enable for PIPE9
   type NRDYENB_PIPE9NRDYE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for NRDYENB_PIPE9NRDYE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype NRDYENB_Reserved_Field is R7FA4M1AB.UInt6;

   --  NRDY Interrupt Enable Register
   type NRDYENB_Register is record
      --  NRDY Interrupt Enable for PIPE0
      PIPE0NRDYE : NRDYENB_PIPE0NRDYE_Field := R7FA4M1AB.USBFS.Val_0;
      --  NRDY Interrupt Enable for PIPE1
      PIPE1NRDYE : NRDYENB_PIPE1NRDYE_Field := R7FA4M1AB.USBFS.Val_0;
      --  NRDY Interrupt Enable for PIPE2
      PIPE2NRDYE : NRDYENB_PIPE2NRDYE_Field := R7FA4M1AB.USBFS.Val_0;
      --  NRDY Interrupt Enable for PIPE3
      PIPE3NRDYE : NRDYENB_PIPE3NRDYE_Field := R7FA4M1AB.USBFS.Val_0;
      --  NRDY Interrupt Enable for PIPE4
      PIPE4NRDYE : NRDYENB_PIPE4NRDYE_Field := R7FA4M1AB.USBFS.Val_0;
      --  NRDY Interrupt Enable for PIPE5
      PIPE5NRDYE : NRDYENB_PIPE5NRDYE_Field := R7FA4M1AB.USBFS.Val_0;
      --  NRDY Interrupt Enable for PIPE6
      PIPE6NRDYE : NRDYENB_PIPE6NRDYE_Field := R7FA4M1AB.USBFS.Val_0;
      --  NRDY Interrupt Enable for PIPE7
      PIPE7NRDYE : NRDYENB_PIPE7NRDYE_Field := R7FA4M1AB.USBFS.Val_0;
      --  NRDY Interrupt Enable for PIPE8
      PIPE8NRDYE : NRDYENB_PIPE8NRDYE_Field := R7FA4M1AB.USBFS.Val_0;
      --  NRDY Interrupt Enable for PIPE9
      PIPE9NRDYE : NRDYENB_PIPE9NRDYE_Field := R7FA4M1AB.USBFS.Val_0;
      --  These bits are read as 000000. The write value should be 000000.
      Reserved   : NRDYENB_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for NRDYENB_Register use record
      PIPE0NRDYE at 0 range 0 .. 0;
      PIPE1NRDYE at 0 range 1 .. 1;
      PIPE2NRDYE at 0 range 2 .. 2;
      PIPE3NRDYE at 0 range 3 .. 3;
      PIPE4NRDYE at 0 range 4 .. 4;
      PIPE5NRDYE at 0 range 5 .. 5;
      PIPE6NRDYE at 0 range 6 .. 6;
      PIPE7NRDYE at 0 range 7 .. 7;
      PIPE8NRDYE at 0 range 8 .. 8;
      PIPE9NRDYE at 0 range 9 .. 9;
      Reserved   at 0 range 10 .. 15;
   end record;

   --  BEMP Interrupt Enable for PIPE0
   type BEMPENB_PIPE0BEMPE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for BEMPENB_PIPE0BEMPE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BEMP Interrupt Enable for PIPE1
   type BEMPENB_PIPE1BEMPE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for BEMPENB_PIPE1BEMPE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BEMP Interrupt Enable for PIPE2
   type BEMPENB_PIPE2BEMPE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for BEMPENB_PIPE2BEMPE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BEMP Interrupt Enable for PIPE3
   type BEMPENB_PIPE3BEMPE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for BEMPENB_PIPE3BEMPE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BEMP Interrupt Enable for PIPE4
   type BEMPENB_PIPE4BEMPE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for BEMPENB_PIPE4BEMPE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BEMP Interrupt Enable for PIPE5
   type BEMPENB_PIPE5BEMPE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for BEMPENB_PIPE5BEMPE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BEMP Interrupt Enable for PIPE6
   type BEMPENB_PIPE6BEMPE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for BEMPENB_PIPE6BEMPE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BEMP Interrupt Enable for PIPE7
   type BEMPENB_PIPE7BEMPE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for BEMPENB_PIPE7BEMPE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BEMP Interrupt Enable for PIPE8
   type BEMPENB_PIPE8BEMPE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for BEMPENB_PIPE8BEMPE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BEMP Interrupt Enable for PIPE9
   type BEMPENB_PIPE9BEMPE_Field is
     (--  Interrupt output disabled
      Val_0,
      --  Interrupt output enabled
      Val_1)
     with Size => 1;
   for BEMPENB_PIPE9BEMPE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype BEMPENB_Reserved_Field is R7FA4M1AB.UInt6;

   --  BEMP Interrupt Enable Register
   type BEMPENB_Register is record
      --  BEMP Interrupt Enable for PIPE0
      PIPE0BEMPE : BEMPENB_PIPE0BEMPE_Field := R7FA4M1AB.USBFS.Val_0;
      --  BEMP Interrupt Enable for PIPE1
      PIPE1BEMPE : BEMPENB_PIPE1BEMPE_Field := R7FA4M1AB.USBFS.Val_0;
      --  BEMP Interrupt Enable for PIPE2
      PIPE2BEMPE : BEMPENB_PIPE2BEMPE_Field := R7FA4M1AB.USBFS.Val_0;
      --  BEMP Interrupt Enable for PIPE3
      PIPE3BEMPE : BEMPENB_PIPE3BEMPE_Field := R7FA4M1AB.USBFS.Val_0;
      --  BEMP Interrupt Enable for PIPE4
      PIPE4BEMPE : BEMPENB_PIPE4BEMPE_Field := R7FA4M1AB.USBFS.Val_0;
      --  BEMP Interrupt Enable for PIPE5
      PIPE5BEMPE : BEMPENB_PIPE5BEMPE_Field := R7FA4M1AB.USBFS.Val_0;
      --  BEMP Interrupt Enable for PIPE6
      PIPE6BEMPE : BEMPENB_PIPE6BEMPE_Field := R7FA4M1AB.USBFS.Val_0;
      --  BEMP Interrupt Enable for PIPE7
      PIPE7BEMPE : BEMPENB_PIPE7BEMPE_Field := R7FA4M1AB.USBFS.Val_0;
      --  BEMP Interrupt Enable for PIPE8
      PIPE8BEMPE : BEMPENB_PIPE8BEMPE_Field := R7FA4M1AB.USBFS.Val_0;
      --  BEMP Interrupt Enable for PIPE9
      PIPE9BEMPE : BEMPENB_PIPE9BEMPE_Field := R7FA4M1AB.USBFS.Val_0;
      --  These bits are read as 000000. The write value should be 000000.
      Reserved   : BEMPENB_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for BEMPENB_Register use record
      PIPE0BEMPE at 0 range 0 .. 0;
      PIPE1BEMPE at 0 range 1 .. 1;
      PIPE2BEMPE at 0 range 2 .. 2;
      PIPE3BEMPE at 0 range 3 .. 3;
      PIPE4BEMPE at 0 range 4 .. 4;
      PIPE5BEMPE at 0 range 5 .. 5;
      PIPE6BEMPE at 0 range 6 .. 6;
      PIPE7BEMPE at 0 range 7 .. 7;
      PIPE8BEMPE at 0 range 8 .. 8;
      PIPE9BEMPE at 0 range 9 .. 9;
      Reserved   at 0 range 10 .. 15;
   end record;

   subtype SOFCFG_Reserved_Field is R7FA4M1AB.UInt4;

   --  Edge Interrupt Output Status Monitor
   type SOFCFG_EDGESTS_Field is
     (--  before stopping the clock supply to the USB module
      Val_0,
      --  the edge interrupt output signal is in the middle of the edge processing
      Val_1)
     with Size => 1;
   for SOFCFG_EDGESTS_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BRDY Interrupt Status Clear Timing
   type SOFCFG_BRDYM_Field is
     (--  BRDY flag cleared by software
      Val_0,
      --  BRDY flag cleared by the USBFS through a data read from the FIFO buffer or
--  data write to the FIFO buffer.
      Val_1)
     with Size => 1;
   for SOFCFG_BRDYM_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Transaction-Enabled Time Select
   type SOFCFG_TRNENSEL_Field is
     (--  Not low-speed communication
      Val_0,
      --  Low-speed communication.
      Val_1)
     with Size => 1;
   for SOFCFG_TRNENSEL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype SOFCFG_Reserved_Field_1 is R7FA4M1AB.UInt7;

   --  SOF Output Configuration Register
   type SOFCFG_Register is record
      --  These bits are read as 0000. The write value should be 0000.
      Reserved   : SOFCFG_Reserved_Field := 16#0#;
      --  Read-only. Edge Interrupt Output Status Monitor
      EDGESTS    : SOFCFG_EDGESTS_Field := R7FA4M1AB.USBFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : Boolean := False;
      --  BRDY Interrupt Status Clear Timing
      BRDYM      : SOFCFG_BRDYM_Field := R7FA4M1AB.USBFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_2 : Boolean := False;
      --  Transaction-Enabled Time Select
      TRNENSEL   : SOFCFG_TRNENSEL_Field := R7FA4M1AB.USBFS.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved_3 : SOFCFG_Reserved_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for SOFCFG_Register use record
      Reserved   at 0 range 0 .. 3;
      EDGESTS    at 0 range 4 .. 4;
      Reserved_1 at 0 range 5 .. 5;
      BRDYM      at 0 range 6 .. 6;
      Reserved_2 at 0 range 7 .. 7;
      TRNENSEL   at 0 range 8 .. 8;
      Reserved_3 at 0 range 9 .. 15;
   end record;

   --  Control Transfer Stage
   type INTSTS0_CTSQ_Field is
     (--  Idle or setup stage
      Val_000,
      --  Setting prohibited
      others_k,
      --  Control read data stage
      Val_001,
      --  Control read status stage
      Val_010,
      --  Control write data stage
      Val_011,
      --  Control write status stage
      Val_100,
      --  Control write (no data) status stage
      Val_101,
      --  Control transfer sequence error
      Val_110)
     with Size => 3;
   for INTSTS0_CTSQ_Field use
     (Val_000 => 0,
      others_k => 0,
      Val_001 => 1,
      Val_010 => 2,
      Val_011 => 3,
      Val_100 => 4,
      Val_101 => 5,
      Val_110 => 6);

   --  USB Request Reception
   type INTSTS0_VALID_Field is
     (--  Setup packet is not received
      Val_0,
      --  Setup packet is received
      Val_1)
     with Size => 1;
   for INTSTS0_VALID_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Device State
   type INTSTS0_DVSQ_Field is
     (--  Powered state
      Val_000,
      --  Suspended state
      others_k,
      --  Default state
      Val_001,
      --  Address state
      Val_010,
      --  Configured state
      Val_011)
     with Size => 3;
   for INTSTS0_DVSQ_Field use
     (Val_000 => 0,
      others_k => 0,
      Val_001 => 1,
      Val_010 => 2,
      Val_011 => 3);

   --  VBUS Input Status
   type INTSTS0_VBSTS_Field is
     (--  USB_VBUS pin is low.
      Val_0,
      --  USB_VBUS pin is high.
      Val_1)
     with Size => 1;
   for INTSTS0_VBSTS_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Buffer Ready Interrupt Status
   type INTSTS0_BRDY_Field is
     (--  BRDY interrupts are not generated.
      Val_0,
      --  BRDY interrupts are generated.
      Val_1)
     with Size => 1;
   for INTSTS0_BRDY_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Buffer Not Ready Interrupt Status
   type INTSTS0_NRDY_Field is
     (--  NRDY interrupts are not generated.
      Val_0,
      --  NRDY interrupts are generated.
      Val_1)
     with Size => 1;
   for INTSTS0_NRDY_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Buffer Empty Interrupt Status
   type INTSTS0_BEMP_Field is
     (--  BEMP interrupts are not generated.
      Val_0,
      --  BEMP interrupts are generated.
      Val_1)
     with Size => 1;
   for INTSTS0_BEMP_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Control Transfer Stage Transition Interrupt Status
   type INTSTS0_CTRT_Field is
     (--  Control transfer stage transition interrupts are not generated.
      Val_0,
      --  Control transfer stage transition interrupts are generated.
      Val_1)
     with Size => 1;
   for INTSTS0_CTRT_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Device State Transition Interrupt Status
   type INTSTS0_DVST_Field is
     (--  Device state transition interrupts are not generated.
      Val_0,
      --  Device state transition interrupts are generated.
      Val_1)
     with Size => 1;
   for INTSTS0_DVST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Frame Number Refresh Interrupt Status
   type INTSTS0_SOFR_Field is
     (--  SOF interrupts are not generated.
      Val_0,
      --  SOF interrupts are generated.
      Val_1)
     with Size => 1;
   for INTSTS0_SOFR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Resume Interrupt Status
   type INTSTS0_RESM_Field is
     (--  Resume interrupts are not generated.
      Val_0,
      --  Resume interrupts are generated.
      Val_1)
     with Size => 1;
   for INTSTS0_RESM_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  VBUS Interrupt Status
   type INTSTS0_VBINT_Field is
     (--  VBUS interrupts are not generated.
      Val_0,
      --  VBUS interrupts are generated.
      Val_1)
     with Size => 1;
   for INTSTS0_VBINT_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Interrupt Status Register 0
   type INTSTS0_Register is record
      --  Read-only. Control Transfer Stage
      CTSQ  : INTSTS0_CTSQ_Field := R7FA4M1AB.USBFS.Val_000;
      --  USB Request Reception
      VALID : INTSTS0_VALID_Field := R7FA4M1AB.USBFS.Val_0;
      --  Read-only. Device State
      DVSQ  : INTSTS0_DVSQ_Field := R7FA4M1AB.USBFS.Val_000;
      --  Read-only. VBUS Input Status
      VBSTS : INTSTS0_VBSTS_Field := R7FA4M1AB.USBFS.Val_0;
      --  Read-only. Buffer Ready Interrupt Status
      BRDY  : INTSTS0_BRDY_Field := R7FA4M1AB.USBFS.Val_0;
      --  Read-only. Buffer Not Ready Interrupt Status
      NRDY  : INTSTS0_NRDY_Field := R7FA4M1AB.USBFS.Val_0;
      --  Read-only. Buffer Empty Interrupt Status
      BEMP  : INTSTS0_BEMP_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Control Transfer Stage Transition Interrupt Status
      CTRT  : INTSTS0_CTRT_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Device State Transition Interrupt Status
      DVST  : INTSTS0_DVST_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Frame Number Refresh Interrupt Status
      SOFR  : INTSTS0_SOFR_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Resume Interrupt Status
      RESM  : INTSTS0_RESM_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. VBUS Interrupt Status
      VBINT : INTSTS0_VBINT_Field := R7FA4M1AB.USBFS.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for INTSTS0_Register use record
      CTSQ  at 0 range 0 .. 2;
      VALID at 0 range 3 .. 3;
      DVSQ  at 0 range 4 .. 6;
      VBSTS at 0 range 7 .. 7;
      BRDY  at 0 range 8 .. 8;
      NRDY  at 0 range 9 .. 9;
      BEMP  at 0 range 10 .. 10;
      CTRT  at 0 range 11 .. 11;
      DVST  at 0 range 12 .. 12;
      SOFR  at 0 range 13 .. 13;
      RESM  at 0 range 14 .. 14;
      VBINT at 0 range 15 .. 15;
   end record;

   --  PDDET0 Detection Interrupt Status
   type INTSTS1_PDDETINT0_Field is
     (--  PDDET0 detection interrupts are not generated.
      Val_0,
      --  PDDET0 detection interrupts are generated.
      Val_1)
     with Size => 1;
   for INTSTS1_PDDETINT0_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype INTSTS1_Reserved_Field is R7FA4M1AB.UInt3;

   --  Setup Transaction Normal Response Interrupt Status
   type INTSTS1_SACK_Field is
     (--  SACK interrupts are not generated.
      Val_0,
      --  SACK interrupts are generated.
      Val_1)
     with Size => 1;
   for INTSTS1_SACK_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Setup Transaction Error Interrupt Status
   type INTSTS1_SIGN_Field is
     (--  SIGN interrupts are not generated.
      Val_0,
      --  SIGN interrupts are generated.
      Val_1)
     with Size => 1;
   for INTSTS1_SIGN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  EOF Error Detection Interrupt Status
   type INTSTS1_EOFERR_Field is
     (--  EOFERR interrupts are not generated.
      Val_0,
      --  EOFERR interrupts are generated.
      Val_1)
     with Size => 1;
   for INTSTS1_EOFERR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype INTSTS1_Reserved_Field_1 is R7FA4M1AB.UInt4;

   --  ATTCH Interrupt Status
   type INTSTS1_ATTCH_Field is
     (--  ATTCH interrupts are not generated.
      Val_0,
      --  ATTCH interrupts are generated.
      Val_1)
     with Size => 1;
   for INTSTS1_ATTCH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  USB Disconnection Detection Interrupt Status
   type INTSTS1_DTCH_Field is
     (--  DTCH interrupts are not generated.
      Val_0,
      --  DTCH interrupts are generated.
      Val_1)
     with Size => 1;
   for INTSTS1_DTCH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  USB Bus Change Interrupt Status
   type INTSTS1_BCHG_Field is
     (--  BCHG interrupts are not generated.
      Val_0,
      --  BCHG interrupts are generated.
      Val_1)
     with Size => 1;
   for INTSTS1_BCHG_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Overcurrent Input Change Interrupt Status
   type INTSTS1_OVRCR_Field is
     (--  OVRCR interrupts are not generated.
      Val_0,
      --  OVRCR interrupts are generated.
      Val_1)
     with Size => 1;
   for INTSTS1_OVRCR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Interrupt Status Register 1
   type INTSTS1_Register is record
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. PDDET0 Detection Interrupt Status
      PDDETINT0  : INTSTS1_PDDETINT0_Field := R7FA4M1AB.USBFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved   : INTSTS1_Reserved_Field := 16#0#;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Setup Transaction Normal Response Interrupt Status
      SACK       : INTSTS1_SACK_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Setup Transaction Error Interrupt Status
      SIGN       : INTSTS1_SIGN_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. EOF Error Detection Interrupt Status
      EOFERR     : INTSTS1_EOFERR_Field := R7FA4M1AB.USBFS.Val_0;
      --  These bits are read as 0000. The write value should be 0000.
      Reserved_1 : INTSTS1_Reserved_Field_1 := 16#0#;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. ATTCH Interrupt Status
      ATTCH      : INTSTS1_ATTCH_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. USB Disconnection Detection Interrupt Status
      DTCH       : INTSTS1_DTCH_Field := R7FA4M1AB.USBFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_2 : Boolean := False;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. USB Bus Change Interrupt Status
      BCHG       : INTSTS1_BCHG_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Overcurrent Input Change Interrupt Status
      OVRCR      : INTSTS1_OVRCR_Field := R7FA4M1AB.USBFS.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for INTSTS1_Register use record
      PDDETINT0  at 0 range 0 .. 0;
      Reserved   at 0 range 1 .. 3;
      SACK       at 0 range 4 .. 4;
      SIGN       at 0 range 5 .. 5;
      EOFERR     at 0 range 6 .. 6;
      Reserved_1 at 0 range 7 .. 10;
      ATTCH      at 0 range 11 .. 11;
      DTCH       at 0 range 12 .. 12;
      Reserved_2 at 0 range 13 .. 13;
      BCHG       at 0 range 14 .. 14;
      OVRCR      at 0 range 15 .. 15;
   end record;

   --  BRDY Interrupt Status for PIPE0
   type BRDYSTS_PIPE0BRDY_Field is
     (--  Interrupts are not generated.
      Val_0,
      --  Interrupts are generated.
      Val_1)
     with Size => 1;
   for BRDYSTS_PIPE0BRDY_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BRDY Interrupt Status for PIPE1
   type BRDYSTS_PIPE1BRDY_Field is
     (--  Interrupts are not generated.
      Val_0,
      --  Interrupts are generated.
      Val_1)
     with Size => 1;
   for BRDYSTS_PIPE1BRDY_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BRDY Interrupt Status for PIPE2
   type BRDYSTS_PIPE2BRDY_Field is
     (--  Interrupts are not generated.
      Val_0,
      --  Interrupts are generated.
      Val_1)
     with Size => 1;
   for BRDYSTS_PIPE2BRDY_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BRDY Interrupt Status for PIPE3
   type BRDYSTS_PIPE3BRDY_Field is
     (--  Interrupts are not generated.
      Val_0,
      --  Interrupts are generated.
      Val_1)
     with Size => 1;
   for BRDYSTS_PIPE3BRDY_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BRDY Interrupt Status for PIPE4
   type BRDYSTS_PIPE4BRDY_Field is
     (--  Interrupts are not generated.
      Val_0,
      --  Interrupts are generated.
      Val_1)
     with Size => 1;
   for BRDYSTS_PIPE4BRDY_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BRDY Interrupt Status for PIPE5
   type BRDYSTS_PIPE5BRDY_Field is
     (--  Interrupts are not generated.
      Val_0,
      --  Interrupts are generated.
      Val_1)
     with Size => 1;
   for BRDYSTS_PIPE5BRDY_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BRDY Interrupt Status for PIPE6
   type BRDYSTS_PIPE6BRDY_Field is
     (--  Interrupts are not generated.
      Val_0,
      --  Interrupts are generated.
      Val_1)
     with Size => 1;
   for BRDYSTS_PIPE6BRDY_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BRDY Interrupt Status for PIPE7
   type BRDYSTS_PIPE7BRDY_Field is
     (--  Interrupts are not generated.
      Val_0,
      --  Interrupts are generated.
      Val_1)
     with Size => 1;
   for BRDYSTS_PIPE7BRDY_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BRDY Interrupt Status for PIPE8
   type BRDYSTS_PIPE8BRDY_Field is
     (--  Interrupts are not generated.
      Val_0,
      --  Interrupts are generated.
      Val_1)
     with Size => 1;
   for BRDYSTS_PIPE8BRDY_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BRDY Interrupt Status for PIPE9
   type BRDYSTS_PIPE9BRDY_Field is
     (--  Interrupts are not generated.
      Val_0,
      --  Interrupts are generated.
      Val_1)
     with Size => 1;
   for BRDYSTS_PIPE9BRDY_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype BRDYSTS_Reserved_Field is R7FA4M1AB.UInt6;

   --  BRDY Interrupt Status Register
   type BRDYSTS_Register is record
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. BRDY Interrupt Status for PIPE0
      PIPE0BRDY : BRDYSTS_PIPE0BRDY_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. BRDY Interrupt Status for PIPE1
      PIPE1BRDY : BRDYSTS_PIPE1BRDY_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. BRDY Interrupt Status for PIPE2
      PIPE2BRDY : BRDYSTS_PIPE2BRDY_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. BRDY Interrupt Status for PIPE3
      PIPE3BRDY : BRDYSTS_PIPE3BRDY_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. BRDY Interrupt Status for PIPE4
      PIPE4BRDY : BRDYSTS_PIPE4BRDY_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. BRDY Interrupt Status for PIPE5
      PIPE5BRDY : BRDYSTS_PIPE5BRDY_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. BRDY Interrupt Status for PIPE6
      PIPE6BRDY : BRDYSTS_PIPE6BRDY_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. BRDY Interrupt Status for PIPE7
      PIPE7BRDY : BRDYSTS_PIPE7BRDY_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. BRDY Interrupt Status for PIPE8
      PIPE8BRDY : BRDYSTS_PIPE8BRDY_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. BRDY Interrupt Status for PIPE9
      PIPE9BRDY : BRDYSTS_PIPE9BRDY_Field := R7FA4M1AB.USBFS.Val_0;
      --  These bits are read as 000000. The write value should be 000000.
      Reserved  : BRDYSTS_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for BRDYSTS_Register use record
      PIPE0BRDY at 0 range 0 .. 0;
      PIPE1BRDY at 0 range 1 .. 1;
      PIPE2BRDY at 0 range 2 .. 2;
      PIPE3BRDY at 0 range 3 .. 3;
      PIPE4BRDY at 0 range 4 .. 4;
      PIPE5BRDY at 0 range 5 .. 5;
      PIPE6BRDY at 0 range 6 .. 6;
      PIPE7BRDY at 0 range 7 .. 7;
      PIPE8BRDY at 0 range 8 .. 8;
      PIPE9BRDY at 0 range 9 .. 9;
      Reserved  at 0 range 10 .. 15;
   end record;

   --  NRDY Interrupt Status for PIPE0
   type NRDYSTS_PIPE0NRDY_Field is
     (--  Interrupts are not generated.
      Val_0,
      --  Interrupts are generated.
      Val_1)
     with Size => 1;
   for NRDYSTS_PIPE0NRDY_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  NRDY Interrupt Status for PIPE1
   type NRDYSTS_PIPE1NRDY_Field is
     (--  Interrupts are not generated.
      Val_0,
      --  Interrupts are generated.
      Val_1)
     with Size => 1;
   for NRDYSTS_PIPE1NRDY_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  NRDY Interrupt Status for PIPE2
   type NRDYSTS_PIPE2NRDY_Field is
     (--  Interrupts are not generated.
      Val_0,
      --  Interrupts are generated.
      Val_1)
     with Size => 1;
   for NRDYSTS_PIPE2NRDY_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  NRDY Interrupt Status for PIPE3
   type NRDYSTS_PIPE3NRDY_Field is
     (--  Interrupts are not generated.
      Val_0,
      --  Interrupts are generated.
      Val_1)
     with Size => 1;
   for NRDYSTS_PIPE3NRDY_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  NRDY Interrupt Status for PIPE4
   type NRDYSTS_PIPE4NRDY_Field is
     (--  Interrupts are not generated.
      Val_0,
      --  Interrupts are generated.
      Val_1)
     with Size => 1;
   for NRDYSTS_PIPE4NRDY_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  NRDY Interrupt Status for PIPE5
   type NRDYSTS_PIPE5NRDY_Field is
     (--  Interrupts are not generated.
      Val_0,
      --  Interrupts are generated.
      Val_1)
     with Size => 1;
   for NRDYSTS_PIPE5NRDY_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  NRDY Interrupt Status for PIPE6
   type NRDYSTS_PIPE6NRDY_Field is
     (--  Interrupts are not generated.
      Val_0,
      --  Interrupts are generated.
      Val_1)
     with Size => 1;
   for NRDYSTS_PIPE6NRDY_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  NRDY Interrupt Status for PIPE7
   type NRDYSTS_PIPE7NRDY_Field is
     (--  Interrupts are not generated.
      Val_0,
      --  Interrupts are generated.
      Val_1)
     with Size => 1;
   for NRDYSTS_PIPE7NRDY_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  NRDY Interrupt Status for PIPE8
   type NRDYSTS_PIPE8NRDY_Field is
     (--  Interrupts are not generated.
      Val_0,
      --  Interrupts are generated.
      Val_1)
     with Size => 1;
   for NRDYSTS_PIPE8NRDY_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  NRDY Interrupt Status for PIPE9
   type NRDYSTS_PIPE9NRDY_Field is
     (--  Interrupts are not generated.
      Val_0,
      --  Interrupts are generated.
      Val_1)
     with Size => 1;
   for NRDYSTS_PIPE9NRDY_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype NRDYSTS_Reserved_Field is R7FA4M1AB.UInt6;

   --  NRDY Interrupt Status Register
   type NRDYSTS_Register is record
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. NRDY Interrupt Status for PIPE0
      PIPE0NRDY : NRDYSTS_PIPE0NRDY_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. NRDY Interrupt Status for PIPE1
      PIPE1NRDY : NRDYSTS_PIPE1NRDY_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. NRDY Interrupt Status for PIPE2
      PIPE2NRDY : NRDYSTS_PIPE2NRDY_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. NRDY Interrupt Status for PIPE3
      PIPE3NRDY : NRDYSTS_PIPE3NRDY_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. NRDY Interrupt Status for PIPE4
      PIPE4NRDY : NRDYSTS_PIPE4NRDY_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. NRDY Interrupt Status for PIPE5
      PIPE5NRDY : NRDYSTS_PIPE5NRDY_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. NRDY Interrupt Status for PIPE6
      PIPE6NRDY : NRDYSTS_PIPE6NRDY_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. NRDY Interrupt Status for PIPE7
      PIPE7NRDY : NRDYSTS_PIPE7NRDY_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. NRDY Interrupt Status for PIPE8
      PIPE8NRDY : NRDYSTS_PIPE8NRDY_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. NRDY Interrupt Status for PIPE9
      PIPE9NRDY : NRDYSTS_PIPE9NRDY_Field := R7FA4M1AB.USBFS.Val_0;
      --  These bits are read as 000000. The write value should be 000000.
      Reserved  : NRDYSTS_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for NRDYSTS_Register use record
      PIPE0NRDY at 0 range 0 .. 0;
      PIPE1NRDY at 0 range 1 .. 1;
      PIPE2NRDY at 0 range 2 .. 2;
      PIPE3NRDY at 0 range 3 .. 3;
      PIPE4NRDY at 0 range 4 .. 4;
      PIPE5NRDY at 0 range 5 .. 5;
      PIPE6NRDY at 0 range 6 .. 6;
      PIPE7NRDY at 0 range 7 .. 7;
      PIPE8NRDY at 0 range 8 .. 8;
      PIPE9NRDY at 0 range 9 .. 9;
      Reserved  at 0 range 10 .. 15;
   end record;

   --  BEMP Interrupt Status for PIPE0
   type BEMPSTS_PIPE0BEMP_Field is
     (--  Interrupts are not generated.
      Val_0,
      --  Interrupts are generated.
      Val_1)
     with Size => 1;
   for BEMPSTS_PIPE0BEMP_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BEMP Interrupt Status for PIPE1
   type BEMPSTS_PIPE1BEMP_Field is
     (--  Interrupts are not generated.
      Val_0,
      --  Interrupts are generated.
      Val_1)
     with Size => 1;
   for BEMPSTS_PIPE1BEMP_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BEMP Interrupt Status for PIPE2
   type BEMPSTS_PIPE2BEMP_Field is
     (--  Interrupts are not generated.
      Val_0,
      --  Interrupts are generated.
      Val_1)
     with Size => 1;
   for BEMPSTS_PIPE2BEMP_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BEMP Interrupt Status for PIPE3
   type BEMPSTS_PIPE3BEMP_Field is
     (--  Interrupts are not generated.
      Val_0,
      --  Interrupts are generated.
      Val_1)
     with Size => 1;
   for BEMPSTS_PIPE3BEMP_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BEMP Interrupt Status for PIPE4
   type BEMPSTS_PIPE4BEMP_Field is
     (--  Interrupts are not generated.
      Val_0,
      --  Interrupts are generated.
      Val_1)
     with Size => 1;
   for BEMPSTS_PIPE4BEMP_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BEMP Interrupt Status for PIPE5
   type BEMPSTS_PIPE5BEMP_Field is
     (--  Interrupts are not generated.
      Val_0,
      --  Interrupts are generated.
      Val_1)
     with Size => 1;
   for BEMPSTS_PIPE5BEMP_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BEMP Interrupt Status for PIPE6
   type BEMPSTS_PIPE6BEMP_Field is
     (--  Interrupts are not generated.
      Val_0,
      --  Interrupts are generated.
      Val_1)
     with Size => 1;
   for BEMPSTS_PIPE6BEMP_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BEMP Interrupt Status for PIPE7
   type BEMPSTS_PIPE7BEMP_Field is
     (--  Interrupts are not generated.
      Val_0,
      --  Interrupts are generated.
      Val_1)
     with Size => 1;
   for BEMPSTS_PIPE7BEMP_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BEMP Interrupt Status for PIPE8
   type BEMPSTS_PIPE8BEMP_Field is
     (--  Interrupts are not generated.
      Val_0,
      --  Interrupts are generated.
      Val_1)
     with Size => 1;
   for BEMPSTS_PIPE8BEMP_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BEMP Interrupt Status for PIPE9
   type BEMPSTS_PIPE9BEMP_Field is
     (--  Interrupts are not generated.
      Val_0,
      --  Interrupts are generated.
      Val_1)
     with Size => 1;
   for BEMPSTS_PIPE9BEMP_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype BEMPSTS_Reserved_Field is R7FA4M1AB.UInt6;

   --  BEMP Interrupt Status Register
   type BEMPSTS_Register is record
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. BEMP Interrupt Status for PIPE0
      PIPE0BEMP : BEMPSTS_PIPE0BEMP_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. BEMP Interrupt Status for PIPE1
      PIPE1BEMP : BEMPSTS_PIPE1BEMP_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. BEMP Interrupt Status for PIPE2
      PIPE2BEMP : BEMPSTS_PIPE2BEMP_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. BEMP Interrupt Status for PIPE3
      PIPE3BEMP : BEMPSTS_PIPE3BEMP_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. BEMP Interrupt Status for PIPE4
      PIPE4BEMP : BEMPSTS_PIPE4BEMP_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. BEMP Interrupt Status for PIPE5
      PIPE5BEMP : BEMPSTS_PIPE5BEMP_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. BEMP Interrupt Status for PIPE6
      PIPE6BEMP : BEMPSTS_PIPE6BEMP_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. BEMP Interrupt Status for PIPE7
      PIPE7BEMP : BEMPSTS_PIPE7BEMP_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. BEMP Interrupt Status for PIPE8
      PIPE8BEMP : BEMPSTS_PIPE8BEMP_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. BEMP Interrupt Status for PIPE9
      PIPE9BEMP : BEMPSTS_PIPE9BEMP_Field := R7FA4M1AB.USBFS.Val_0;
      --  These bits are read as 000000. The write value should be 000000.
      Reserved  : BEMPSTS_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for BEMPSTS_Register use record
      PIPE0BEMP at 0 range 0 .. 0;
      PIPE1BEMP at 0 range 1 .. 1;
      PIPE2BEMP at 0 range 2 .. 2;
      PIPE3BEMP at 0 range 3 .. 3;
      PIPE4BEMP at 0 range 4 .. 4;
      PIPE5BEMP at 0 range 5 .. 5;
      PIPE6BEMP at 0 range 6 .. 6;
      PIPE7BEMP at 0 range 7 .. 7;
      PIPE8BEMP at 0 range 8 .. 8;
      PIPE9BEMP at 0 range 9 .. 9;
      Reserved  at 0 range 10 .. 15;
   end record;

   subtype FRMNUM_FRNM_Field is R7FA4M1AB.UInt11;
   subtype FRMNUM_Reserved_Field is R7FA4M1AB.UInt3;

   --  Receive Data Error
   type FRMNUM_CRCE_Field is
     (--  No error
      Val_0,
      --  An error occurred
      Val_1)
     with Size => 1;
   for FRMNUM_CRCE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Overrun/Underrun Detection Status
   type FRMNUM_OVRN_Field is
     (--  No error
      Val_0,
      --  An error occurred
      Val_1)
     with Size => 1;
   for FRMNUM_OVRN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Frame Number Register
   type FRMNUM_Register is record
      --  Read-only. Frame Number Latest frame number
      FRNM     : FRMNUM_FRNM_Field := 16#0#;
      --  These bits are read as 000. The write value should be 000.
      Reserved : FRMNUM_Reserved_Field := 16#0#;
      --  Receive Data Error
      CRCE     : FRMNUM_CRCE_Field := R7FA4M1AB.USBFS.Val_0;
      --  Overrun/Underrun Detection Status
      OVRN     : FRMNUM_OVRN_Field := R7FA4M1AB.USBFS.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for FRMNUM_Register use record
      FRNM     at 0 range 0 .. 10;
      Reserved at 0 range 11 .. 13;
      CRCE     at 0 range 14 .. 14;
      OVRN     at 0 range 15 .. 15;
   end record;

   subtype USBREQ_BMREQUESTTYPE_Field is R7FA4M1AB.Byte;
   subtype USBREQ_BREQUEST_Field is R7FA4M1AB.Byte;

   --  USB Request Type Register
   type USBREQ_Register is record
      --  Request Type These bits store the USB request bmRequestType value.
      BMREQUESTTYPE : USBREQ_BMREQUESTTYPE_Field := 16#0#;
      --  Request These bits store the USB request bRequest value.
      BREQUEST      : USBREQ_BREQUEST_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for USBREQ_Register use record
      BMREQUESTTYPE at 0 range 0 .. 7;
      BREQUEST      at 0 range 8 .. 15;
   end record;

   subtype DCPCFG_Reserved_Field is R7FA4M1AB.UInt4;

   --  Transfer Direction
   type DCPCFG_DIR_Field is
     (--  Data receiving direction
      Val_0,
      --  Data transmitting direction
      Val_1)
     with Size => 1;
   for DCPCFG_DIR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype DCPCFG_Reserved_Field_1 is R7FA4M1AB.UInt2;

   --  Pipe Disabled at End of Transfer
   type DCPCFG_SHTNAK_Field is
     (--  Pipe continued at the end of transfer
      Val_0,
      --  Pipe disabled at the end of transfer
      Val_1)
     with Size => 1;
   for DCPCFG_SHTNAK_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype DCPCFG_Reserved_Field_2 is R7FA4M1AB.Byte;

   --  DCP Configuration Register
   type DCPCFG_Register is record
      --  These bits are read as 0000. The write value should be 0000.
      Reserved   : DCPCFG_Reserved_Field := 16#0#;
      --  Transfer Direction
      DIR        : DCPCFG_DIR_Field := R7FA4M1AB.USBFS.Val_0;
      --  These bits are read as 00. The write value should be 00.
      Reserved_1 : DCPCFG_Reserved_Field_1 := 16#0#;
      --  Pipe Disabled at End of Transfer
      SHTNAK     : DCPCFG_SHTNAK_Field := R7FA4M1AB.USBFS.Val_0;
      --  These bits are read as 00000000. The write value should be 00000000.
      Reserved_2 : DCPCFG_Reserved_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for DCPCFG_Register use record
      Reserved   at 0 range 0 .. 3;
      DIR        at 0 range 4 .. 4;
      Reserved_1 at 0 range 5 .. 6;
      SHTNAK     at 0 range 7 .. 7;
      Reserved_2 at 0 range 8 .. 15;
   end record;

   --  Maximum Packet Size These bits set the maximum amount of data (maximum
   --  packet size) in payloads for the DCP.
   type DCPMAXP_MXPS_Field is
     (--  Setting prohibited
      others_k,
      --  8 bytes
      Val_0x08,
      --  16 bytes
      Val_0x10,
      --  24 bytes
      Val_0x18,
      --  32 bytes
      Val_0x20,
      --  40 bytes
      Val_0x28,
      --  48 bytes
      Val_0x30,
      --  56 bytes
      Val_0x38,
      --  64 bytes
      Val_0x40,
      --  72 bytes
      Val_0x48,
      --  80 bytes
      Val_0x50,
      --  88 bytes
      Val_0x58,
      --  96 bytes
      Val_0x60,
      --  104 bytes
      Val_0x68,
      --  112 bytes
      Val_0x70,
      --  120 bytes
      Val_0x78)
     with Size => 7;
   for DCPMAXP_MXPS_Field use
     (others_k => 0,
      Val_0x08 => 8,
      Val_0x10 => 16,
      Val_0x18 => 24,
      Val_0x20 => 32,
      Val_0x28 => 40,
      Val_0x30 => 48,
      Val_0x38 => 56,
      Val_0x40 => 64,
      Val_0x48 => 72,
      Val_0x50 => 80,
      Val_0x58 => 88,
      Val_0x60 => 96,
      Val_0x68 => 104,
      Val_0x70 => 112,
      Val_0x78 => 120);

   subtype DCPMAXP_Reserved_Field is R7FA4M1AB.UInt5;

   --  Device Select
   type DCPMAXP_DEVSEL_Field is
     (--  Address 0000
      Val_0000,
      --  Settings prohibited.
      others_k,
      --  Address 0001
      Val_0001,
      --  Address 0010
      Val_0010,
      --  Address 0011
      Val_0011,
      --  Address 0100
      Val_0100,
      --  Address 0101
      Val_0101)
     with Size => 4;
   for DCPMAXP_DEVSEL_Field use
     (Val_0000 => 0,
      others_k => 0,
      Val_0001 => 1,
      Val_0010 => 2,
      Val_0011 => 3,
      Val_0100 => 4,
      Val_0101 => 5);

   --  DCP Maximum Packet Size Register
   type DCPMAXP_Register is record
      --  Maximum Packet Size These bits set the maximum amount of data
      --  (maximum packet size) in payloads for the DCP.
      MXPS     : DCPMAXP_MXPS_Field := R7FA4M1AB.USBFS.Val_0x40;
      --  These bits are read as 00000. The write value should be 00000.
      Reserved : DCPMAXP_Reserved_Field := 16#0#;
      --  Device Select
      DEVSEL   : DCPMAXP_DEVSEL_Field := R7FA4M1AB.USBFS.Val_0000;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for DCPMAXP_Register use record
      MXPS     at 0 range 0 .. 6;
      Reserved at 0 range 7 .. 11;
      DEVSEL   at 0 range 12 .. 15;
   end record;

   --  Response PID
   type DCPCTR_PID_Field is
     (--  NAK response
      Val_00,
      --  BUF response (depending on the buffer state)
      Val_01,
      --  STALL response
      Val_10,
      --  STALL response
      Val_11)
     with Size => 2;
   for DCPCTR_PID_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   --  Control Transfer End Enable
   type DCPCTR_CCPL_Field is
     (--  Invalid
      Val_0,
      --  Completion of control transfer is enabled.
      Val_1)
     with Size => 1;
   for DCPCTR_CCPL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype DCPCTR_Reserved_Field is R7FA4M1AB.UInt2;

   --  Pipe Busy
   type DCPCTR_PBUSY_Field is
     (--  DCP is not used for the transaction.
      Val_0,
      --  DCP is used for the transaction.
      Val_1)
     with Size => 1;
   for DCPCTR_PBUSY_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Sequence Toggle Bit Monitor
   type DCPCTR_SQMON_Field is
     (--  DATA0
      Val_0,
      --  DATA1
      Val_1)
     with Size => 1;
   for DCPCTR_SQMON_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Sequence Toggle Bit Set
   type DCPCTR_SQSET_Field is
     (--  Invalid
      Val_0,
      --  Specifies DATA1.
      Val_1)
     with Size => 1;
   for DCPCTR_SQSET_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Sequence Toggle Bit Clear
   type DCPCTR_SQCLR_Field is
     (--  Invalid
      Val_0,
      --  Specifies DATA0.
      Val_1)
     with Size => 1;
   for DCPCTR_SQCLR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  SUREQ Bit Clear
   type DCPCTR_SUREQCLR_Field is
     (--  Invalid
      Val_0,
      --  Clears the SUREQ bit to 0.
      Val_1)
     with Size => 1;
   for DCPCTR_SUREQCLR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Setup Token Transmission
   type DCPCTR_SUREQ_Field is
     (--  Invalid
      Val_0,
      --  Transmits the setup packet.
      Val_1)
     with Size => 1;
   for DCPCTR_SUREQ_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Buffer Status
   type DCPCTR_BSTS_Field is
     (--  Buffer access is disabled.
      Val_0,
      --  Buffer access is enabled.
      Val_1)
     with Size => 1;
   for DCPCTR_BSTS_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  DCP Control Register
   type DCPCTR_Register is record
      --  Response PID
      PID        : DCPCTR_PID_Field := R7FA4M1AB.USBFS.Val_00;
      --  Control Transfer End Enable
      CCPL       : DCPCTR_CCPL_Field := R7FA4M1AB.USBFS.Val_0;
      --  These bits are read as 00. The write value should be 00.
      Reserved   : DCPCTR_Reserved_Field := 16#0#;
      --  Read-only. Pipe Busy
      PBUSY      : DCPCTR_PBUSY_Field := R7FA4M1AB.USBFS.Val_0;
      --  Read-only. Sequence Toggle Bit Monitor
      SQMON      : DCPCTR_SQMON_Field := R7FA4M1AB.USBFS.Val_1;
      --  Write-only. Sequence Toggle Bit Set
      SQSET      : DCPCTR_SQSET_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write-only. Sequence Toggle Bit Clear
      SQCLR      : DCPCTR_SQCLR_Field := R7FA4M1AB.USBFS.Val_0;
      --  These bits are read as 00. The write value should be 00.
      Reserved_1 : DCPCTR_Reserved_Field := 16#0#;
      --  SUREQ Bit Clear
      SUREQCLR   : DCPCTR_SUREQCLR_Field := R7FA4M1AB.USBFS.Val_0;
      --  These bits are read as 00. The write value should be 00.
      Reserved_2 : DCPCTR_Reserved_Field := 16#0#;
      --  Setup Token Transmission
      SUREQ      : DCPCTR_SUREQ_Field := R7FA4M1AB.USBFS.Val_0;
      --  Read-only. Buffer Status
      BSTS       : DCPCTR_BSTS_Field := R7FA4M1AB.USBFS.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for DCPCTR_Register use record
      PID        at 0 range 0 .. 1;
      CCPL       at 0 range 2 .. 2;
      Reserved   at 0 range 3 .. 4;
      PBUSY      at 0 range 5 .. 5;
      SQMON      at 0 range 6 .. 6;
      SQSET      at 0 range 7 .. 7;
      SQCLR      at 0 range 8 .. 8;
      Reserved_1 at 0 range 9 .. 10;
      SUREQCLR   at 0 range 11 .. 11;
      Reserved_2 at 0 range 12 .. 13;
      SUREQ      at 0 range 14 .. 14;
      BSTS       at 0 range 15 .. 15;
   end record;

   --  Pipe Window Select
   type PIPESEL_PIPESEL_Field is
     (--  No pipe selected
      Val_0000,
      --  Settings prohibited.
      others_k,
      --  PIPE1
      Val_0001,
      --  PIPE2
      Val_0010,
      --  PIPE3
      Val_0011,
      --  PIPE4
      Val_0100,
      --  PIPE5
      Val_0101,
      --  PIPE6
      Val_0110,
      --  PIPE7
      Val_0111,
      --  PIPE8
      Val_1000,
      --  PIPE9
      Val_1001)
     with Size => 4;
   for PIPESEL_PIPESEL_Field use
     (Val_0000 => 0,
      others_k => 0,
      Val_0001 => 1,
      Val_0010 => 2,
      Val_0011 => 3,
      Val_0100 => 4,
      Val_0101 => 5,
      Val_0110 => 6,
      Val_0111 => 7,
      Val_1000 => 8,
      Val_1001 => 9);

   subtype PIPESEL_Reserved_Field is R7FA4M1AB.UInt12;

   --  Pipe Window Select Register
   type PIPESEL_Register is record
      --  Pipe Window Select
      PIPESEL  : PIPESEL_PIPESEL_Field := R7FA4M1AB.USBFS.Val_0000;
      --  These bits are read as 000000000000. The write value should be
      --  000000000000.
      Reserved : PIPESEL_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for PIPESEL_Register use record
      PIPESEL  at 0 range 0 .. 3;
      Reserved at 0 range 4 .. 15;
   end record;

   subtype PIPECFG_EPNUM_Field is R7FA4M1AB.UInt4;

   --  Transfer Direction
   type PIPECFG_DIR_Field is
     (--  Receiving direction
      Val_0,
      --  Transmitting direction
      Val_1)
     with Size => 1;
   for PIPECFG_DIR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  PIPECFG_Reserved array
   type PIPECFG_Reserved_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PIPECFG_Reserved
   type PIPECFG_Reserved_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  Reserved as a value
            Val : R7FA4M1AB.UInt2;
         when True =>
            --  Reserved as an array
            Arr : PIPECFG_Reserved_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PIPECFG_Reserved_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Pipe Disabled at End of Transfer
   type PIPECFG_SHTNAK_Field is
     (--  Continue pipe operation after transfer ends
      Val_0,
      --  Disable pipe operation after transfer ends.
      Val_1)
     with Size => 1;
   for PIPECFG_SHTNAK_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Double Buffer Mode
   type PIPECFG_DBLB_Field is
     (--  Single buffer
      Val_0,
      --  Double buffer
      Val_1)
     with Size => 1;
   for PIPECFG_DBLB_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BRDY Interrupt Operation Specification
   type PIPECFG_BFRE_Field is
     (--  BRDY interrupt upon transmitting or receiving data
      Val_0,
      --  BRDY interrupt upon completion of reading data
      Val_1)
     with Size => 1;
   for PIPECFG_BFRE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype PIPECFG_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Transfer Type
   type PIPECFG_TYPE_Field is
     (--  Pipe not used
      Val_00,
      --  Bulk transfer(PIPE1 and PIPE5) /Setting prohibited(PIPE6 to PIPE9)
      Val_01,
      --  Setting prohibited(PIPE1 and PIPE5) /Interrupt transfer(PIPE6 to PIPE9)
      Val_10,
      --  Isochronous transfer(PIPE1 and PIPE2) /Setting prohibited(PIPE3 to PIPE9)
      Val_11)
     with Size => 2;
   for PIPECFG_TYPE_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   --  Pipe Configuration Register
   type PIPECFG_Register is record
      --  Endpoint Number These bits specify the endpoint number for the
      --  selected pipe. Setting 0000b means unused pipe.
      EPNUM      : PIPECFG_EPNUM_Field := 16#0#;
      --  Transfer Direction
      DIR        : PIPECFG_DIR_Field := R7FA4M1AB.USBFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : PIPECFG_Reserved_Field :=
                    (As_Array => False, Val => 16#0#);
      --  Pipe Disabled at End of Transfer
      SHTNAK     : PIPECFG_SHTNAK_Field := R7FA4M1AB.USBFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : Boolean := False;
      --  Double Buffer Mode
      DBLB       : PIPECFG_DBLB_Field := R7FA4M1AB.USBFS.Val_0;
      --  BRDY Interrupt Operation Specification
      BFRE       : PIPECFG_BFRE_Field := R7FA4M1AB.USBFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_2 : PIPECFG_Reserved_Field_1 := 16#0#;
      --  Transfer Type
      TYPE_k     : PIPECFG_TYPE_Field := R7FA4M1AB.USBFS.Val_00;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for PIPECFG_Register use record
      EPNUM      at 0 range 0 .. 3;
      DIR        at 0 range 4 .. 4;
      Reserved   at 0 range 5 .. 6;
      SHTNAK     at 0 range 7 .. 7;
      Reserved_1 at 0 range 8 .. 8;
      DBLB       at 0 range 9 .. 9;
      BFRE       at 0 range 10 .. 10;
      Reserved_2 at 0 range 11 .. 13;
      TYPE_k     at 0 range 14 .. 15;
   end record;

   subtype PIPEMAXP_MXPS_Field is R7FA4M1AB.UInt9;
   subtype PIPEMAXP_Reserved_Field is R7FA4M1AB.UInt3;

   --  Device Select
   type PIPEMAXP_DEVSEL_Field is
     (--  Address 0000
      Val_0000,
      --  Settings prohibited.
      others_k,
      --  Address 0001
      Val_0001,
      --  Address 0010
      Val_0010,
      --  Address 0011
      Val_0011,
      --  Address 0100
      Val_0100,
      --  Address 0101
      Val_0101)
     with Size => 4;
   for PIPEMAXP_DEVSEL_Field use
     (Val_0000 => 0,
      others_k => 0,
      Val_0001 => 1,
      Val_0010 => 2,
      Val_0011 => 3,
      Val_0100 => 4,
      Val_0101 => 5);

   --  Pipe Maximum Packet Size Register
   type PIPEMAXP_Register is record
      --  Maximum Packet Size PIPE1 and PIPE2: 1 byte (001h) to 256 bytes
      --  (100h) PIPE3 to PIPE5: 8 bytes (008h), 16 bytes (010h), 32 bytes
      --  (020h), 64 bytes (040h) (Bits [8:7] and [2:0] are not provided.)
      --  PIPE6 to PIPE9: 1 byte (001h) to 64 bytes (040h) (Bits [8:7] are not
      --  provided.)
      MXPS     : PIPEMAXP_MXPS_Field := 16#0#;
      --  These bits are read as 000. The write value should be 000.
      Reserved : PIPEMAXP_Reserved_Field := 16#0#;
      --  Device Select
      DEVSEL   : PIPEMAXP_DEVSEL_Field := R7FA4M1AB.USBFS.Val_0000;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for PIPEMAXP_Register use record
      MXPS     at 0 range 0 .. 8;
      Reserved at 0 range 9 .. 11;
      DEVSEL   at 0 range 12 .. 15;
   end record;

   subtype PIPEPERI_IITV_Field is R7FA4M1AB.UInt3;
   subtype PIPEPERI_Reserved_Field is R7FA4M1AB.UInt9;

   --  Isochronous IN Buffer Flush
   type PIPEPERI_IFIS_Field is
     (--  The buffer is not flushed.
      Val_0,
      --  The buffer is flushed.
      Val_1)
     with Size => 1;
   for PIPEPERI_IFIS_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype PIPEPERI_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Pipe Cycle Control Register
   type PIPEPERI_Register is record
      --  Interval Error Detection Interval Specifies the interval error
      --  detection timing for the selected pipe in terms of frames, which is
      --  expressed as nth power of 2.
      IITV       : PIPEPERI_IITV_Field := 16#0#;
      --  These bits are read as 000000000. The write value should be
      --  000000000.
      Reserved   : PIPEPERI_Reserved_Field := 16#0#;
      --  Isochronous IN Buffer Flush
      IFIS       : PIPEPERI_IFIS_Field := R7FA4M1AB.USBFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_1 : PIPEPERI_Reserved_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for PIPEPERI_Register use record
      IITV       at 0 range 0 .. 2;
      Reserved   at 0 range 3 .. 11;
      IFIS       at 0 range 12 .. 12;
      Reserved_1 at 0 range 13 .. 15;
   end record;

   --  Response PID
   type PIPECTR_PID_Field is
     (--  NAK response
      Val_00,
      --  BUF response (depending on the buffer state)
      Val_01,
      --  STALL response
      Val_10,
      --  STALL response
      Val_11)
     with Size => 2;
   for PIPECTR_PID_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   subtype PIPECTR_Reserved_Field is R7FA4M1AB.UInt3;

   --  Pipe Busy
   type PIPECTR_PBUSY_Field is
     (--  Pipe n not in use for the transaction
      Val_0,
      --  Pipe n in use for the transaction.
      Val_1)
     with Size => 1;
   for PIPECTR_PBUSY_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Sequence Toggle Bit Confirmation
   type PIPECTR_SQMON_Field is
     (--  DATA0
      Val_0,
      --  DATA1
      Val_1)
     with Size => 1;
   for PIPECTR_SQMON_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Sequence Toggle Bit Set
   type PIPECTR_SQSET_Field is
     (--  Write disabled
      Val_0,
      --  Specifies DATA1.
      Val_1)
     with Size => 1;
   for PIPECTR_SQSET_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Sequence Toggle Bit Clear
   type PIPECTR_SQCLR_Field is
     (--  Write disabled
      Val_0,
      --  Specifies DATA0.
      Val_1)
     with Size => 1;
   for PIPECTR_SQCLR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Auto Buffer Clear Mode
   type PIPECTR_ACLRM_Field is
     (--  Disabled
      Val_0,
      --  Enabled (all buffers are initialized)
      Val_1)
     with Size => 1;
   for PIPECTR_ACLRM_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Auto Response Mode
   type PIPECTR_ATREPM_Field is
     (--  Auto response disabled.
      Val_0,
      --  Auto response enabled.
      Val_1)
     with Size => 1;
   for PIPECTR_ATREPM_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Transmit Buffer Monitor
   type PIPECTR_INBUFM_Field is
     (--  No data to be transmitted is in the FIFO buffer
      Val_0,
      --  Data to be transmitted is in the FIFO buffer
      Val_1)
     with Size => 1;
   for PIPECTR_INBUFM_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Buffer Status
   type PIPECTR_BSTS_Field is
     (--  Buffer access by the CPU is disabled.
      Val_0,
      --  Buffer access by the CPU is enabled.
      Val_1)
     with Size => 1;
   for PIPECTR_BSTS_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Pipe %s Control Register
   type PIPECTR_Register is record
      --  Response PID
      PID        : PIPECTR_PID_Field := R7FA4M1AB.USBFS.Val_00;
      --  These bits are read as 000. The write value should be 000.
      Reserved   : PIPECTR_Reserved_Field := 16#0#;
      --  Read-only. Pipe Busy
      PBUSY      : PIPECTR_PBUSY_Field := R7FA4M1AB.USBFS.Val_0;
      --  Read-only. Sequence Toggle Bit Confirmation
      SQMON      : PIPECTR_SQMON_Field := R7FA4M1AB.USBFS.Val_0;
      --  Sequence Toggle Bit Set
      SQSET      : PIPECTR_SQSET_Field := R7FA4M1AB.USBFS.Val_0;
      --  Sequence Toggle Bit Clear
      SQCLR      : PIPECTR_SQCLR_Field := R7FA4M1AB.USBFS.Val_0;
      --  Auto Buffer Clear Mode
      ACLRM      : PIPECTR_ACLRM_Field := R7FA4M1AB.USBFS.Val_0;
      --  Auto Response Mode
      ATREPM     : PIPECTR_ATREPM_Field := R7FA4M1AB.USBFS.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved_1 : PIPECTR_Reserved_Field := 16#0#;
      --  Read-only. Transmit Buffer Monitor
      INBUFM     : PIPECTR_INBUFM_Field := R7FA4M1AB.USBFS.Val_0;
      --  Read-only. Buffer Status
      BSTS       : PIPECTR_BSTS_Field := R7FA4M1AB.USBFS.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for PIPECTR_Register use record
      PID        at 0 range 0 .. 1;
      Reserved   at 0 range 2 .. 4;
      PBUSY      at 0 range 5 .. 5;
      SQMON      at 0 range 6 .. 6;
      SQSET      at 0 range 7 .. 7;
      SQCLR      at 0 range 8 .. 8;
      ACLRM      at 0 range 9 .. 9;
      ATREPM     at 0 range 10 .. 10;
      Reserved_1 at 0 range 11 .. 13;
      INBUFM     at 0 range 14 .. 14;
      BSTS       at 0 range 15 .. 15;
   end record;

   --  Pipe %s Control Register
   type PIPECTR_Registers is array (0 .. 4) of PIPECTR_Register;

   subtype PIPECTR_Reserved_Field_1 is R7FA4M1AB.UInt5;

   --  Pipe %s Control Register
   type PIPECTR_Register_1 is record
      --  Response PID
      PID        : PIPECTR_PID_Field := R7FA4M1AB.USBFS.Val_00;
      --  These bits are read as 000. The write value should be 000.
      Reserved   : PIPECTR_Reserved_Field := 16#0#;
      --  Read-only. Pipe Busy
      PBUSY      : PIPECTR_PBUSY_Field := R7FA4M1AB.USBFS.Val_0;
      --  Read-only. Sequence Toggle Bit Confirmation
      SQMON      : PIPECTR_SQMON_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write-only. Sequence Toggle Bit Set
      SQSET      : PIPECTR_SQSET_Field := R7FA4M1AB.USBFS.Val_0;
      --  Write-only. Sequence Toggle Bit Clear
      SQCLR      : PIPECTR_SQCLR_Field := R7FA4M1AB.USBFS.Val_0;
      --  Auto Buffer Clear Mode
      ACLRM      : PIPECTR_ACLRM_Field := R7FA4M1AB.USBFS.Val_0;
      --  These bits are read as 00000. The write value should be 00000.
      Reserved_1 : PIPECTR_Reserved_Field_1 := 16#0#;
      --  Read-only. Buffer Status
      BSTS       : PIPECTR_BSTS_Field := R7FA4M1AB.USBFS.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for PIPECTR_Register_1 use record
      PID        at 0 range 0 .. 1;
      Reserved   at 0 range 2 .. 4;
      PBUSY      at 0 range 5 .. 5;
      SQMON      at 0 range 6 .. 6;
      SQSET      at 0 range 7 .. 7;
      SQCLR      at 0 range 8 .. 8;
      ACLRM      at 0 range 9 .. 9;
      Reserved_1 at 0 range 10 .. 14;
      BSTS       at 0 range 15 .. 15;
   end record;

   --  Pipe %s Control Register
   type PIPECTR_Registers_1 is array (0 .. 3) of PIPECTR_Register_1;

   subtype PIPETRE_Reserved_Field is R7FA4M1AB.Byte;

   --  Transaction Counter Clear
   type PIPETRE0_TRCLR_Field is
     (--  Invalid
      Val_0,
      --  The current counter value is cleared.
      Val_1)
     with Size => 1;
   for PIPETRE0_TRCLR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Transaction Counter Enable
   type PIPETRE0_TRENB_Field is
     (--  Transaction counter is disabled.
      Val_0,
      --  Transaction counter is enabled.
      Val_1)
     with Size => 1;
   for PIPETRE0_TRENB_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype PIPETRE_Reserved_Field_1 is R7FA4M1AB.UInt6;

   --  Pipe %s Transaction Counter Enable Register
   type PIPETRE_Register is record
      --  These bits are read as 00000000. The write value should be 00000000.
      Reserved   : PIPETRE_Reserved_Field := 16#0#;
      --  Transaction Counter Clear
      TRCLR      : PIPETRE0_TRCLR_Field := R7FA4M1AB.USBFS.Val_0;
      --  Transaction Counter Enable
      TRENB      : PIPETRE0_TRENB_Field := R7FA4M1AB.USBFS.Val_0;
      --  These bits are read as 000000. The write value should be 000000.
      Reserved_1 : PIPETRE_Reserved_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for PIPETRE_Register use record
      Reserved   at 0 range 0 .. 7;
      TRCLR      at 0 range 8 .. 8;
      TRENB      at 0 range 9 .. 9;
      Reserved_1 at 0 range 10 .. 15;
   end record;

   --  D- Pin Pull-Down Control
   type USBBCCTRL0_RPDME0_Field is
     (--  Pull-down off
      Val_0,
      --  Pull-down on
      Val_1)
     with Size => 1;
   for USBBCCTRL0_RPDME0_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  D+ Pin IDPSRC Output Control
   type USBBCCTRL0_IDPSRCE0_Field is
     (--  Stop
      Val_0,
      --  10uA output
      Val_1)
     with Size => 1;
   for USBBCCTRL0_IDPSRCE0_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  D- Pin 0.6 V Input Detection (Comparator and Sink) Control
   type USBBCCTRL0_IDMSINKE0_Field is
     (--  Detection off
      Val_0,
      --  Detection on ( Comparator and sink current on )
      Val_1)
     with Size => 1;
   for USBBCCTRL0_IDMSINKE0_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  D+ Pin VDPSRC (0.6 V) Output Control
   type USBBCCTRL0_VDPSRCE0_Field is
     (--  Stop
      Val_0,
      --  0.6V output
      Val_1)
     with Size => 1;
   for USBBCCTRL0_VDPSRCE0_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  D+ Pin 0.6 V Input Detection (Comparator and Sink) Control
   type USBBCCTRL0_IDPSINKE0_Field is
     (--  Detection off
      Val_0,
      --  Detection on ( Comparator and sink current on )
      Val_1)
     with Size => 1;
   for USBBCCTRL0_IDPSINKE0_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  D- Pin VDMSRC (0.6 V) Output Control
   type USBBCCTRL0_VDMSRCE0_Field is
     (--  Stop
      Val_0,
      --  0.6V output
      Val_1)
     with Size => 1;
   for USBBCCTRL0_VDMSRCE0_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  BC (Battery Charger) Function Ch0 General Enable Control
   type USBBCCTRL0_BATCHGE0_Field is
     (--  Disabled
      Val_0,
      --  Enabled
      Val_1)
     with Size => 1;
   for USBBCCTRL0_BATCHGE0_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  D- Pin 0.6 V Input Detection Status
   type USBBCCTRL0_CHGDETSTS0_Field is
     (--  Not detected
      Val_0,
      --  Detected
      Val_1)
     with Size => 1;
   for USBBCCTRL0_CHGDETSTS0_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  D+ Pin 0.6 V Input Detection Status
   type USBBCCTRL0_PDDETSTS0_Field is
     (--  Not detected
      Val_0,
      --  Detected
      Val_1)
     with Size => 1;
   for USBBCCTRL0_PDDETSTS0_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype USBBCCTRL0_Reserved_Field is R7FA4M1AB.UInt6;

   --  BC Control Register 0
   type USBBCCTRL0_Register is record
      --  D- Pin Pull-Down Control
      RPDME0     : USBBCCTRL0_RPDME0_Field := R7FA4M1AB.USBFS.Val_0;
      --  D+ Pin IDPSRC Output Control
      IDPSRCE0   : USBBCCTRL0_IDPSRCE0_Field := R7FA4M1AB.USBFS.Val_0;
      --  D- Pin 0.6 V Input Detection (Comparator and Sink) Control
      IDMSINKE0  : USBBCCTRL0_IDMSINKE0_Field := R7FA4M1AB.USBFS.Val_0;
      --  D+ Pin VDPSRC (0.6 V) Output Control
      VDPSRCE0   : USBBCCTRL0_VDPSRCE0_Field := R7FA4M1AB.USBFS.Val_0;
      --  D+ Pin 0.6 V Input Detection (Comparator and Sink) Control
      IDPSINKE0  : USBBCCTRL0_IDPSINKE0_Field := R7FA4M1AB.USBFS.Val_0;
      --  D- Pin VDMSRC (0.6 V) Output Control
      VDMSRCE0   : USBBCCTRL0_VDMSRCE0_Field := R7FA4M1AB.USBFS.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : Boolean := False;
      --  BC (Battery Charger) Function Ch0 General Enable Control
      BATCHGE0   : USBBCCTRL0_BATCHGE0_Field := R7FA4M1AB.USBFS.Val_0;
      --  Read-only. D- Pin 0.6 V Input Detection Status
      CHGDETSTS0 : USBBCCTRL0_CHGDETSTS0_Field := R7FA4M1AB.USBFS.Val_0;
      --  Read-only. D+ Pin 0.6 V Input Detection Status
      PDDETSTS0  : USBBCCTRL0_PDDETSTS0_Field := R7FA4M1AB.USBFS.Val_0;
      --  These bits are read as 000000. The write value should be 000000.
      Reserved_1 : USBBCCTRL0_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for USBBCCTRL0_Register use record
      RPDME0     at 0 range 0 .. 0;
      IDPSRCE0   at 0 range 1 .. 1;
      IDMSINKE0  at 0 range 2 .. 2;
      VDPSRCE0   at 0 range 3 .. 3;
      IDPSINKE0  at 0 range 4 .. 4;
      VDMSRCE0   at 0 range 5 .. 5;
      Reserved   at 0 range 6 .. 6;
      BATCHGE0   at 0 range 7 .. 7;
      CHGDETSTS0 at 0 range 8 .. 8;
      PDDETSTS0  at 0 range 9 .. 9;
      Reserved_1 at 0 range 10 .. 15;
   end record;

   --  USB Reference Power Supply Circuit On/Off Control
   type USBMC_VDDUSBE_Field is
     (--  USB reference power supply circuit off
      Val_0,
      --  USB reference power supply circuit on
      Val_1)
     with Size => 1;
   for USBMC_VDDUSBE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype USBMC_Reserved_Field is R7FA4M1AB.UInt5;

   --  USB Regulator On/Off Control
   type USBMC_VDCEN_Field is
     (--  USB regulator off
      Val_0,
      --  USB regulator on
      Val_1)
     with Size => 1;
   for USBMC_VDCEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype USBMC_Reserved_Field_1 is R7FA4M1AB.Byte;

   --  USB Module Control Register
   type USBMC_Register is record
      --  USB Reference Power Supply Circuit On/Off Control
      VDDUSBE    : USBMC_VDDUSBE_Field := R7FA4M1AB.USBFS.Val_0;
      --  This bit is read as 1. The write value should be 1.
      Reserved   : Boolean := True;
      --  These bits are read as 00000. The write value should be 00000.
      Reserved_1 : USBMC_Reserved_Field := 16#0#;
      --  USB Regulator On/Off Control
      VDCEN      : USBMC_VDCEN_Field := R7FA4M1AB.USBFS.Val_0;
      --  These bits are read as 00000000. The write value should be 00000000.
      Reserved_2 : USBMC_Reserved_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for USBMC_Register use record
      VDDUSBE    at 0 range 0 .. 0;
      Reserved   at 0 range 1 .. 1;
      Reserved_1 at 0 range 2 .. 6;
      VDCEN      at 0 range 7 .. 7;
      Reserved_2 at 0 range 8 .. 15;
   end record;

   subtype DEVADD_Reserved_Field is R7FA4M1AB.UInt6;

   --  Transfer Speed of Communication Target Device
   type DEVADD_USBSPD_Field is
     (--  DEVADDn is not used
      Val_00,
      --  Low speed
      Val_01,
      --  Full speed
      Val_10,
      --  Setting prohibited
      Val_11)
     with Size => 2;
   for DEVADD_USBSPD_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   subtype DEVADD_Reserved_Field_1 is R7FA4M1AB.Byte;

   --  Device Address %s Configuration Register
   type DEVADD_Register is record
      --  These bits are read as 000000. The write value should be 000000.
      Reserved   : DEVADD_Reserved_Field := 16#0#;
      --  Transfer Speed of Communication Target Device
      USBSPD     : DEVADD_USBSPD_Field := R7FA4M1AB.USBFS.Val_00;
      --  These bits are read as 00000000. The write value should be 00000000.
      Reserved_1 : DEVADD_Reserved_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for DEVADD_Register use record
      Reserved   at 0 range 0 .. 5;
      USBSPD     at 0 range 6 .. 7;
      Reserved_1 at 0 range 8 .. 15;
   end record;

   --  Device Address %s Configuration Register
   type DEVADD_Registers is array (0 .. 5) of DEVADD_Register;

   -----------------
   -- Peripherals --
   -----------------

   --  USB 2.0 FS Module
   type USBFS_Peripheral is record
      --  System Configuration Control Register
      SYSCFG     : aliased SYSCFG_Register;
      --  System Configuration Status Register 0
      SYSSTS0    : aliased SYSSTS0_Register;
      --  Device State Control Register 0
      DVSTCTR0   : aliased DVSTCTR0_Register;
      --  CFIFO Port Register
      CFIFO      : aliased R7FA4M1AB.UInt16;
      --  D0FIFO Port Register
      D0FIFO     : aliased R7FA4M1AB.UInt16;
      --  D1FIFO Port Register
      D1FIFO     : aliased R7FA4M1AB.UInt16;
      --  CFIFO Port Select Register
      CFIFOSEL   : aliased CFIFOSEL_Register;
      --  CFIFO Port Control Register
      CFIFOCTR   : aliased CFIFOCTR_Register;
      --  D0FIFO Port Select Register
      D0FIFOSEL  : aliased D0FIFOSEL_Register;
      --  D0FIFO Port Control Register
      D0FIFOCTR  : aliased D0FIFOCTR_Register;
      --  D1FIFO Port Select Register
      D1FIFOSEL  : aliased D1FIFOSEL_Register;
      --  D1FIFO Port Control Register
      D1FIFOCTR  : aliased D1FIFOCTR_Register;
      --  Interrupt Enable Register 0
      INTENB0    : aliased INTENB0_Register;
      --  Interrupt Enable Register 1
      INTENB1    : aliased INTENB1_Register;
      --  BRDY Interrupt Enable Register
      BRDYENB    : aliased BRDYENB_Register;
      --  NRDY Interrupt Enable Register
      NRDYENB    : aliased NRDYENB_Register;
      --  BEMP Interrupt Enable Register
      BEMPENB    : aliased BEMPENB_Register;
      --  SOF Output Configuration Register
      SOFCFG     : aliased SOFCFG_Register;
      --  Interrupt Status Register 0
      INTSTS0    : aliased INTSTS0_Register;
      --  Interrupt Status Register 1
      INTSTS1    : aliased INTSTS1_Register;
      --  BRDY Interrupt Status Register
      BRDYSTS    : aliased BRDYSTS_Register;
      --  NRDY Interrupt Status Register
      NRDYSTS    : aliased NRDYSTS_Register;
      --  BEMP Interrupt Status Register
      BEMPSTS    : aliased BEMPSTS_Register;
      --  Frame Number Register
      FRMNUM     : aliased FRMNUM_Register;
      --  USB Request Type Register
      USBREQ     : aliased USBREQ_Register;
      --  USB Request Value Register
      USBVAL     : aliased R7FA4M1AB.UInt16;
      --  USB Request Index Register
      USBINDX    : aliased R7FA4M1AB.UInt16;
      --  USB Request Length Register
      USBLENG    : aliased R7FA4M1AB.UInt16;
      --  DCP Configuration Register
      DCPCFG     : aliased DCPCFG_Register;
      --  DCP Maximum Packet Size Register
      DCPMAXP    : aliased DCPMAXP_Register;
      --  DCP Control Register
      DCPCTR     : aliased DCPCTR_Register;
      --  Pipe Window Select Register
      PIPESEL    : aliased PIPESEL_Register;
      --  Pipe Configuration Register
      PIPECFG    : aliased PIPECFG_Register;
      --  Pipe Maximum Packet Size Register
      PIPEMAXP   : aliased PIPEMAXP_Register;
      --  Pipe Cycle Control Register
      PIPEPERI   : aliased PIPEPERI_Register;
      --  Pipe %s Control Register
      PIPECTR    : aliased PIPECTR_Registers;
      --  Pipe %s Control Register
      PIPECTR_1  : aliased PIPECTR_Registers_1;
      --  Pipe %s Transaction Counter Enable Register
      PIPETRE0   : aliased PIPETRE_Register;
      --  Pipe %s Transaction Counter Register
      PIPETRN0   : aliased R7FA4M1AB.UInt16;
      --  Pipe %s Transaction Counter Enable Register
      PIPETRE1   : aliased PIPETRE_Register;
      --  Pipe %s Transaction Counter Register
      PIPETRN1   : aliased R7FA4M1AB.UInt16;
      --  Pipe %s Transaction Counter Enable Register
      PIPETRE2   : aliased PIPETRE_Register;
      --  Pipe %s Transaction Counter Register
      PIPETRN2   : aliased R7FA4M1AB.UInt16;
      --  Pipe %s Transaction Counter Enable Register
      PIPETRE3   : aliased PIPETRE_Register;
      --  Pipe %s Transaction Counter Register
      PIPETRN3   : aliased R7FA4M1AB.UInt16;
      --  Pipe %s Transaction Counter Enable Register
      PIPETRE4   : aliased PIPETRE_Register;
      --  Pipe %s Transaction Counter Register
      PIPETRN4   : aliased R7FA4M1AB.UInt16;
      --  BC Control Register 0
      USBBCCTRL0 : aliased USBBCCTRL0_Register;
      --  USB Module Control Register
      USBMC      : aliased USBMC_Register;
      --  Device Address %s Configuration Register
      DEVADD     : aliased DEVADD_Registers;
   end record
     with Volatile;

   for USBFS_Peripheral use record
      SYSCFG     at 16#0# range 0 .. 15;
      SYSSTS0    at 16#4# range 0 .. 15;
      DVSTCTR0   at 16#8# range 0 .. 15;
      CFIFO      at 16#14# range 0 .. 15;
      D0FIFO     at 16#18# range 0 .. 15;
      D1FIFO     at 16#1C# range 0 .. 15;
      CFIFOSEL   at 16#20# range 0 .. 15;
      CFIFOCTR   at 16#22# range 0 .. 15;
      D0FIFOSEL  at 16#28# range 0 .. 15;
      D0FIFOCTR  at 16#2A# range 0 .. 15;
      D1FIFOSEL  at 16#2C# range 0 .. 15;
      D1FIFOCTR  at 16#2E# range 0 .. 15;
      INTENB0    at 16#30# range 0 .. 15;
      INTENB1    at 16#32# range 0 .. 15;
      BRDYENB    at 16#36# range 0 .. 15;
      NRDYENB    at 16#38# range 0 .. 15;
      BEMPENB    at 16#3A# range 0 .. 15;
      SOFCFG     at 16#3C# range 0 .. 15;
      INTSTS0    at 16#40# range 0 .. 15;
      INTSTS1    at 16#42# range 0 .. 15;
      BRDYSTS    at 16#46# range 0 .. 15;
      NRDYSTS    at 16#48# range 0 .. 15;
      BEMPSTS    at 16#4A# range 0 .. 15;
      FRMNUM     at 16#4C# range 0 .. 15;
      USBREQ     at 16#54# range 0 .. 15;
      USBVAL     at 16#56# range 0 .. 15;
      USBINDX    at 16#58# range 0 .. 15;
      USBLENG    at 16#5A# range 0 .. 15;
      DCPCFG     at 16#5C# range 0 .. 15;
      DCPMAXP    at 16#5E# range 0 .. 15;
      DCPCTR     at 16#60# range 0 .. 15;
      PIPESEL    at 16#64# range 0 .. 15;
      PIPECFG    at 16#68# range 0 .. 15;
      PIPEMAXP   at 16#6C# range 0 .. 15;
      PIPEPERI   at 16#6E# range 0 .. 15;
      PIPECTR    at 16#70# range 0 .. 79;
      PIPECTR_1  at 16#7A# range 0 .. 63;
      PIPETRE0   at 16#90# range 0 .. 15;
      PIPETRN0   at 16#92# range 0 .. 15;
      PIPETRE1   at 16#94# range 0 .. 15;
      PIPETRN1   at 16#96# range 0 .. 15;
      PIPETRE2   at 16#98# range 0 .. 15;
      PIPETRN2   at 16#9A# range 0 .. 15;
      PIPETRE3   at 16#9C# range 0 .. 15;
      PIPETRN3   at 16#9E# range 0 .. 15;
      PIPETRE4   at 16#A0# range 0 .. 15;
      PIPETRN4   at 16#A2# range 0 .. 15;
      USBBCCTRL0 at 16#B0# range 0 .. 15;
      USBMC      at 16#CC# range 0 .. 15;
      DEVADD     at 16#D0# range 0 .. 95;
   end record;

   --  USB 2.0 FS Module
   USBFS_Periph : aliased USBFS_Peripheral
     with Import, Address => USBFS_Base;

end R7FA4M1AB.USBFS;
