pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB-ada.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  Realtime Clock
package R7FA4M1AB.RTC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  64-Hz Counter
   type R64CNT_Register is record
      --  Read-only. 64Hz
      F64HZ        : Boolean;
      --  Read-only. 32Hz
      F32HZ        : Boolean;
      --  Read-only. 16Hz
      F16HZ        : Boolean;
      --  Read-only. 8Hz
      F8HZ         : Boolean;
      --  Read-only. 4Hz
      F4HZ         : Boolean;
      --  Read-only. 2Hz
      F2HZ         : Boolean;
      --  Read-only. 1Hz
      F1HZ         : Boolean;
      --  unspecified
      Reserved_7_7 : R7FA4M1AB.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for R64CNT_Register use record
      F64HZ        at 0 range 0 .. 0;
      F32HZ        at 0 range 1 .. 1;
      F16HZ        at 0 range 2 .. 2;
      F8HZ         at 0 range 3 .. 3;
      F4HZ         at 0 range 4 .. 4;
      F2HZ         at 0 range 5 .. 5;
      F1HZ         at 0 range 6 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
   end record;

   subtype RSECCNT_SEC1_Field is R7FA4M1AB.UInt4;
   subtype RSECCNT_SEC10_Field is R7FA4M1AB.UInt3;

   --  Second Counter
   type RSECCNT_Register is record
      --  1-Second Count Counts from 0 to 9 every second. When a carry is
      --  generated, 1 is added to the tens place.
      SEC1         : RSECCNT_SEC1_Field := 16#0#;
      --  10-Second Count Counts from 0 to 5 for 60-second counting.
      SEC10        : RSECCNT_SEC10_Field := 16#0#;
      --  unspecified
      Reserved_7_7 : R7FA4M1AB.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for RSECCNT_Register use record
      SEC1         at 0 range 0 .. 3;
      SEC10        at 0 range 4 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
   end record;

   subtype RMINCNT_MIN1_Field is R7FA4M1AB.UInt4;
   subtype RMINCNT_MIN10_Field is R7FA4M1AB.UInt3;

   --  Minute Counter
   type RMINCNT_Register is record
      --  1-Minute Count Counts from 0 to 9 every minute. When a carry is
      --  generated, 1 is added to the tens place.
      MIN1         : RMINCNT_MIN1_Field := 16#0#;
      --  10-Minute Count Counts from 0 to 5 for 60-minute counting.
      MIN10        : RMINCNT_MIN10_Field := 16#0#;
      --  unspecified
      Reserved_7_7 : R7FA4M1AB.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for RMINCNT_Register use record
      MIN1         at 0 range 0 .. 3;
      MIN10        at 0 range 4 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
   end record;

   subtype RHRCNT_HR1_Field is R7FA4M1AB.UInt4;
   subtype RHRCNT_HR10_Field is R7FA4M1AB.UInt2;

   --  Time Counter Setting for a.m./p.m.
   type RHRCNT_PM_Field is
     (--  a.m.
      Val_0,
      --  p.m.
      Val_1)
     with Size => 1;
   for RHRCNT_PM_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Hour Counter
   type RHRCNT_Register is record
      --  1-Hour Count Counts from 0 to 9 once per hour. When a carry is
      --  generated, 1 is added to the tens place.
      HR1          : RHRCNT_HR1_Field := 16#0#;
      --  10-Hour Count Counts from 0 to 2 once per carry from the ones place.
      HR10         : RHRCNT_HR10_Field := 16#0#;
      --  Time Counter Setting for a.m./p.m.
      PM           : RHRCNT_PM_Field := R7FA4M1AB.RTC.Val_0;
      --  unspecified
      Reserved_7_7 : R7FA4M1AB.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for RHRCNT_Register use record
      HR1          at 0 range 0 .. 3;
      HR10         at 0 range 4 .. 5;
      PM           at 0 range 6 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
   end record;

   --  Day-of-Week Counting
   type RWKCNT_DAYW_Field is
     (--  Sunday
      Val_000,
      --  Monday
      Val_001,
      --  Tuesday
      Val_010,
      --  Wednesday
      Val_011,
      --  Thursday
      Val_100,
      --  Friday
      Val_101,
      --  Saturday
      Val_110,
      --  Setting Prohibited
      Val_111)
     with Size => 3;
   for RWKCNT_DAYW_Field use
     (Val_000 => 0,
      Val_001 => 1,
      Val_010 => 2,
      Val_011 => 3,
      Val_100 => 4,
      Val_101 => 5,
      Val_110 => 6,
      Val_111 => 7);

   --  Day-of-Week Counter
   type RWKCNT_Register is record
      --  Day-of-Week Counting
      DAYW         : RWKCNT_DAYW_Field := R7FA4M1AB.RTC.Val_000;
      --  unspecified
      Reserved_3_7 : R7FA4M1AB.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for RWKCNT_Register use record
      DAYW         at 0 range 0 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   subtype RDAYCNT_DATE1_Field is R7FA4M1AB.UInt4;
   subtype RDAYCNT_DATE10_Field is R7FA4M1AB.UInt2;

   --  Day Counter
   type RDAYCNT_Register is record
      --  1-Day Count Counts from 0 to 9 once per day. When a carry is
      --  generated, 1 is added to the tens place.
      DATE1        : RDAYCNT_DATE1_Field := 16#0#;
      --  10-Day Count Counts from 0 to 3 once per carry from the ones place.
      DATE10       : RDAYCNT_DATE10_Field := 16#0#;
      --  unspecified
      Reserved_6_7 : R7FA4M1AB.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for RDAYCNT_Register use record
      DATE1        at 0 range 0 .. 3;
      DATE10       at 0 range 4 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   subtype RMONCNT_MON1_Field is R7FA4M1AB.UInt4;
   subtype RMONCNT_Reserved_Field is R7FA4M1AB.UInt3;

   --  Month Counter
   type RMONCNT_Register is record
      --  1-Month Count Counts from 0 to 9 once per month. When a carry is
      --  generated, 1 is added to the tens place.
      MON1     : RMONCNT_MON1_Field := 16#0#;
      --  10-Month Count Counts from 0 to 1 once per carry from the ones place.
      MON10    : Boolean := False;
      --  These bits are read as 000. The write value should be 000.
      Reserved : RMONCNT_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for RMONCNT_Register use record
      MON1     at 0 range 0 .. 3;
      MON10    at 0 range 4 .. 4;
      Reserved at 0 range 5 .. 7;
   end record;

   --  RYRCNT_YR array element
   subtype RYRCNT_YR_Element is R7FA4M1AB.UInt4;

   --  RYRCNT_YR array
   type RYRCNT_YR_Field_Array is array (1 .. 2) of RYRCNT_YR_Element
     with Component_Size => 4, Size => 8;

   --  Type definition for RYRCNT_YR
   type RYRCNT_YR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  YR as a value
            Val : R7FA4M1AB.Byte;
         when True =>
            --  YR as an array
            Arr : RYRCNT_YR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RYRCNT_YR_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype RYRCNT_Reserved_Field is R7FA4M1AB.Byte;

   --  Year Counter
   type RYRCNT_Register is record
      --  1-Year Count Counts from 0 to 9 once per year. When a carry is
      --  generated, 1 is added to the tens place.
      YR       : RYRCNT_YR_Field := (As_Array => False, Val => 16#0#);
      --  These bits are read as 00000000. The write value should be 00000000.
      Reserved : RYRCNT_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for RYRCNT_Register use record
      YR       at 0 range 0 .. 7;
      Reserved at 0 range 8 .. 15;
   end record;

   subtype RSECAR_SEC1_Field is R7FA4M1AB.UInt4;
   subtype RSECAR_SEC10_Field is R7FA4M1AB.UInt3;

   --  Compare enable
   type RSECAR_ENB_Field is
     (--  The register value is not compared with the RSECCNT counter value.
      Val_0,
      --  The register value is compared with the RSECCNT counter value.
      Val_1)
     with Size => 1;
   for RSECAR_ENB_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Second Alarm Register
   type RSECAR_Register is record
      --  1-Second Value for the ones place of seconds
      SEC1  : RSECAR_SEC1_Field := 16#0#;
      --  10-Seconds Value for the tens place of seconds
      SEC10 : RSECAR_SEC10_Field := 16#0#;
      --  Compare enable
      ENB   : RSECAR_ENB_Field := R7FA4M1AB.RTC.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for RSECAR_Register use record
      SEC1  at 0 range 0 .. 3;
      SEC10 at 0 range 4 .. 6;
      ENB   at 0 range 7 .. 7;
   end record;

   subtype RMINAR_MIN1_Field is R7FA4M1AB.UInt4;
   subtype RMINAR_MIN10_Field is R7FA4M1AB.UInt3;

   --  Compare enable
   type RMINAR_ENB_Field is
     (--  The register value is not compared with the RMINCNT counter value.
      Val_0,
      --  The register value is compared with the RMINCNT counter value.
      Val_1)
     with Size => 1;
   for RMINAR_ENB_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Minute Alarm Register
   type RMINAR_Register is record
      --  1-Minute Count Value for the ones place of minutes
      MIN1  : RMINAR_MIN1_Field := 16#0#;
      --  10-Minute Count Value for the tens place of minutes
      MIN10 : RMINAR_MIN10_Field := 16#0#;
      --  Compare enable
      ENB   : RMINAR_ENB_Field := R7FA4M1AB.RTC.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for RMINAR_Register use record
      MIN1  at 0 range 0 .. 3;
      MIN10 at 0 range 4 .. 6;
      ENB   at 0 range 7 .. 7;
   end record;

   subtype RHRAR_HR1_Field is R7FA4M1AB.UInt4;
   subtype RHRAR_HR10_Field is R7FA4M1AB.UInt2;

   --  Time Counter Setting for a.m./p.m.
   type RHRAR_PM_Field is
     (--  a.m.
      Val_0,
      --  p.m.
      Val_1)
     with Size => 1;
   for RHRAR_PM_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Compare enable
   type RHRAR_ENB_Field is
     (--  The register value is not compared with the RHRCNT counter value.
      Val_0,
      --  The register value is compared with the RHRCNT counter value.
      Val_1)
     with Size => 1;
   for RHRAR_ENB_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Hour Alarm Register
   type RHRAR_Register is record
      --  1-Hour Count Value for the ones place of hours
      HR1  : RHRAR_HR1_Field := 16#0#;
      --  10-Hour Count Value for the tens place of hours
      HR10 : RHRAR_HR10_Field := 16#0#;
      --  Time Counter Setting for a.m./p.m.
      PM   : RHRAR_PM_Field := R7FA4M1AB.RTC.Val_0;
      --  Compare enable
      ENB  : RHRAR_ENB_Field := R7FA4M1AB.RTC.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for RHRAR_Register use record
      HR1  at 0 range 0 .. 3;
      HR10 at 0 range 4 .. 5;
      PM   at 0 range 6 .. 6;
      ENB  at 0 range 7 .. 7;
   end record;

   --  Day-of-Week Counting
   type RWKAR_DAYW_Field is
     (--  Sunday
      Val_000,
      --  Monday
      Val_001,
      --  Tuesday
      Val_010,
      --  Wednesday
      Val_011,
      --  Thursday
      Val_100,
      --  Friday
      Val_101,
      --  Saturday
      Val_110,
      --  Setting Prohibited
      Val_111)
     with Size => 3;
   for RWKAR_DAYW_Field use
     (Val_000 => 0,
      Val_001 => 1,
      Val_010 => 2,
      Val_011 => 3,
      Val_100 => 4,
      Val_101 => 5,
      Val_110 => 6,
      Val_111 => 7);

   subtype RWKAR_Reserved_Field is R7FA4M1AB.UInt4;

   --  Compare enable
   type RWKAR_ENB_Field is
     (--  The register value is not compared with the RWKCNT counter value.
      Val_0,
      --  The register value is compared with the RWKCNT counter value.
      Val_1)
     with Size => 1;
   for RWKAR_ENB_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Day-of-Week Alarm Register
   type RWKAR_Register is record
      --  Day-of-Week Counting
      DAYW     : RWKAR_DAYW_Field := R7FA4M1AB.RTC.Val_000;
      --  These bits are read as 0000. The write value should be 0000.
      Reserved : RWKAR_Reserved_Field := 16#0#;
      --  Compare enable
      ENB      : RWKAR_ENB_Field := R7FA4M1AB.RTC.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for RWKAR_Register use record
      DAYW     at 0 range 0 .. 2;
      Reserved at 0 range 3 .. 6;
      ENB      at 0 range 7 .. 7;
   end record;

   subtype RDAYAR_DATE1_Field is R7FA4M1AB.UInt4;
   subtype RDAYAR_DATE10_Field is R7FA4M1AB.UInt2;

   --  Compare enable
   type RDAYAR_ENB_Field is
     (--  The register value is not compared with the RDAYCNT counter value.
      Val_0,
      --  The register value is compared with the RDAYCNT counter value.
      Val_1)
     with Size => 1;
   for RDAYAR_ENB_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Date Alarm Register
   type RDAYAR_Register is record
      --  1 Day Value for the ones place of days
      DATE1    : RDAYAR_DATE1_Field := 16#0#;
      --  10 Days Value for the tens place of days
      DATE10   : RDAYAR_DATE10_Field := 16#0#;
      --  This bit is read as 0. The write value should be 0.
      Reserved : Boolean := False;
      --  Compare enable
      ENB      : RDAYAR_ENB_Field := R7FA4M1AB.RTC.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for RDAYAR_Register use record
      DATE1    at 0 range 0 .. 3;
      DATE10   at 0 range 4 .. 5;
      Reserved at 0 range 6 .. 6;
      ENB      at 0 range 7 .. 7;
   end record;

   subtype RMONAR_MON1_Field is R7FA4M1AB.UInt4;
   subtype RMONAR_Reserved_Field is R7FA4M1AB.UInt2;

   --  Compare enable
   type RMONAR_ENB_Field is
     (--  The register value is not compared with the RMONCNT counter value.
      Val_0,
      --  The register value is compared with the RMONCNT counter value.
      Val_1)
     with Size => 1;
   for RMONAR_ENB_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Month Alarm Register
   type RMONAR_Register is record
      --  1 Month Value for the ones place of months
      MON1     : RMONAR_MON1_Field := 16#0#;
      --  10 Months Value for the tens place of months
      MON10    : Boolean := False;
      --  These bits are read as 00. The write value should be 00.
      Reserved : RMONAR_Reserved_Field := 16#0#;
      --  Compare enable
      ENB      : RMONAR_ENB_Field := R7FA4M1AB.RTC.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for RMONAR_Register use record
      MON1     at 0 range 0 .. 3;
      MON10    at 0 range 4 .. 4;
      Reserved at 0 range 5 .. 6;
      ENB      at 0 range 7 .. 7;
   end record;

   --  RYRAR_YR array element
   subtype RYRAR_YR_Element is R7FA4M1AB.UInt4;

   --  RYRAR_YR array
   type RYRAR_YR_Field_Array is array (1 .. 2) of RYRAR_YR_Element
     with Component_Size => 4, Size => 8;

   --  Type definition for RYRAR_YR
   type RYRAR_YR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  YR as a value
            Val : R7FA4M1AB.Byte;
         when True =>
            --  YR as an array
            Arr : RYRAR_YR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RYRAR_YR_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype RYRAR_Reserved_Field is R7FA4M1AB.Byte;

   --  Year Alarm Register
   type RYRAR_Register is record
      --  1 Year Value for the ones place of years
      YR       : RYRAR_YR_Field := (As_Array => False, Val => 16#0#);
      --  These bits are read as 00000000. The write value should be 00000000.
      Reserved : RYRAR_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for RYRAR_Register use record
      YR       at 0 range 0 .. 7;
      Reserved at 0 range 8 .. 15;
   end record;

   subtype RYRAREN_Reserved_Field is R7FA4M1AB.UInt7;

   --  Compare enable
   type RYRAREN_ENB_Field is
     (--  The register value is not compared with the RYRCNT counter value.
      Val_0,
      --  The register value is compared with the RYRCNT counter value.
      Val_1)
     with Size => 1;
   for RYRAREN_ENB_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Year Alarm Enable Register
   type RYRAREN_Register is record
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved : RYRAREN_Reserved_Field := 16#0#;
      --  Compare enable
      ENB      : RYRAREN_ENB_Field := R7FA4M1AB.RTC.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for RYRAREN_Register use record
      Reserved at 0 range 0 .. 6;
      ENB      at 0 range 7 .. 7;
   end record;

   --  Alarm Interrupt Enable
   type RCR1_AIE_Field is
     (--  An alarm interrupt request is disabled.
      Val_0,
      --  An alarm interrupt request is enabled.
      Val_1)
     with Size => 1;
   for RCR1_AIE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Carry Interrupt Enable
   type RCR1_CIE_Field is
     (--  A carry interrupt request is disabled.
      Val_0,
      --  A carry interrupt request is enabled.
      Val_1)
     with Size => 1;
   for RCR1_CIE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Periodic Interrupt Enable
   type RCR1_PIE_Field is
     (--  A periodic interrupt request is disabled.
      Val_0,
      --  A periodic interrupt request is enabled.
      Val_1)
     with Size => 1;
   for RCR1_PIE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  RTCOUT Output Select
   type RCR1_RTCOS_Field is
     (--  RTCOUT outputs 1 Hz.
      Val_0,
      --  RTCOUT outputs 64 Hz.
      Val_1)
     with Size => 1;
   for RCR1_RTCOS_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Periodic Interrupt Select
   type RCR1_PES_Field is
     (--  No periodic interrupts are generated.
      others_k,
      --  A periodic interrupt is generated every 1/256 second((RCR4.RCKSEL = 0)./A
--  periodic interrupt is generated every 1/128 second((RCR4.RCKSEL = 1).
      Val_0110,
      --  A periodic interrupt is generated every 1/128 second.
      Val_0111,
      --  A periodic interrupt is generated every 1/64 second.
      Val_1000,
      --  A periodic interrupt is generated every 1/32 second.
      Val_1001,
      --  A periodic interrupt is generated every 1/16 second.
      Val_1010,
      --  A periodic interrupt is generated every 1/8 second.
      Val_1011,
      --  A periodic interrupt is generated every 1/4 second.
      Val_1100,
      --  A periodic interrupt is generated every 1/2 second.
      Val_1101,
      --  A periodic interrupt is generated every 1 second.
      Val_1110,
      --  A periodic interrupt is generated every 2 seconds.
      Val_1111)
     with Size => 4;
   for RCR1_PES_Field use
     (others_k => 0,
      Val_0110 => 6,
      Val_0111 => 7,
      Val_1000 => 8,
      Val_1001 => 9,
      Val_1010 => 10,
      Val_1011 => 11,
      Val_1100 => 12,
      Val_1101 => 13,
      Val_1110 => 14,
      Val_1111 => 15);

   --  RTC Control Register 1
   type RCR1_Register is record
      --  Alarm Interrupt Enable
      AIE   : RCR1_AIE_Field := R7FA4M1AB.RTC.Val_0;
      --  Carry Interrupt Enable
      CIE   : RCR1_CIE_Field := R7FA4M1AB.RTC.Val_0;
      --  Periodic Interrupt Enable
      PIE   : RCR1_PIE_Field := R7FA4M1AB.RTC.Val_0;
      --  RTCOUT Output Select
      RTCOS : RCR1_RTCOS_Field := R7FA4M1AB.RTC.Val_0;
      --  Periodic Interrupt Select
      PES   : RCR1_PES_Field := R7FA4M1AB.RTC.others_k;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for RCR1_Register use record
      AIE   at 0 range 0 .. 0;
      CIE   at 0 range 1 .. 1;
      PIE   at 0 range 2 .. 2;
      RTCOS at 0 range 3 .. 3;
      PES   at 0 range 4 .. 7;
   end record;

   --  Start
   type RCR2_START_Field is
     (--  Prescaler and time counter are stopped.
      Val_0,
      --  Prescaler and time counter operate normally.
      Val_1)
     with Size => 1;
   for RCR2_START_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  RTC Software Reset
   type RCR2_RESET_Field is
     (--  Writing is invalid.(write) / In normal time operation, or an RTC software
--  reset has completed.(read)
      Val_0,
      --  The prescaler and the target registers for RTC software reset *1 are
--  initialized.(write) / During an RTC software reset.(read)
      Val_1)
     with Size => 1;
   for RCR2_RESET_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  30-Second Adjustment
   type RCR2_ADJ30_Field is
     (--  Writing is invalid.(write) / In normal time operation, or 30-second
--  adjustment has completed.(read)
      Val_0,
      --  30-second adjustment is executed.(write) / During 30-second
--  adjustment.(read)
      Val_1)
     with Size => 1;
   for RCR2_ADJ30_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  RTCOUT Output Enable
   type RCR2_RTCOE_Field is
     (--  RTCOUT output disabled.
      Val_0,
      --  RTCOUT output enabled.
      Val_1)
     with Size => 1;
   for RCR2_RTCOE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Automatic Adjustment Enable (When the LOCO clock is selected, the
   --  setting of this bit is disabled.)
   type RCR2_AADJE_Field is
     (--  Automatic adjustment is disabled.
      Val_0,
      --  Automatic adjustment is enabled.
      Val_1)
     with Size => 1;
   for RCR2_AADJE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Automatic Adjustment Period Select (When the LOCO clock is selected, the
   --  setting of this bit is disabled.)
   type RCR2_AADJP_Field is
     (--  The RADJ.ADJ[5:0] setting value is adjusted from the count value of the
--  prescaler every minute.
      Val_0,
      --  The RADJ.ADJ[5:0] setting value is adjusted from the count value of the
--  prescaler every 10 seconds.
      Val_1)
     with Size => 1;
   for RCR2_AADJP_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Hours Mode
   type RCR2_HR24_Field is
     (--  The RTC operates in 12-hour mode.
      Val_0,
      --  The RTC operates in 24-hour mode.
      Val_1)
     with Size => 1;
   for RCR2_HR24_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Count Mode Select
   type RCR2_CNTMD_Field is
     (--  The calendar count mode.
      Val_0,
      --  The binary count mode.
      Val_1)
     with Size => 1;
   for RCR2_CNTMD_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  RTC Control Register 2
   type RCR2_Register is record
      --  Start
      START : RCR2_START_Field := R7FA4M1AB.RTC.Val_0;
      --  RTC Software Reset
      RESET : RCR2_RESET_Field := R7FA4M1AB.RTC.Val_0;
      --  30-Second Adjustment
      ADJ30 : RCR2_ADJ30_Field := R7FA4M1AB.RTC.Val_0;
      --  RTCOUT Output Enable
      RTCOE : RCR2_RTCOE_Field := R7FA4M1AB.RTC.Val_0;
      --  Automatic Adjustment Enable (When the LOCO clock is selected, the
      --  setting of this bit is disabled.)
      AADJE : RCR2_AADJE_Field := R7FA4M1AB.RTC.Val_0;
      --  Automatic Adjustment Period Select (When the LOCO clock is selected,
      --  the setting of this bit is disabled.)
      AADJP : RCR2_AADJP_Field := R7FA4M1AB.RTC.Val_0;
      --  Hours Mode
      HR24  : RCR2_HR24_Field := R7FA4M1AB.RTC.Val_0;
      --  Count Mode Select
      CNTMD : RCR2_CNTMD_Field := R7FA4M1AB.RTC.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for RCR2_Register use record
      START at 0 range 0 .. 0;
      RESET at 0 range 1 .. 1;
      ADJ30 at 0 range 2 .. 2;
      RTCOE at 0 range 3 .. 3;
      AADJE at 0 range 4 .. 4;
      AADJP at 0 range 5 .. 5;
      HR24  at 0 range 6 .. 6;
      CNTMD at 0 range 7 .. 7;
   end record;

   --  Count Source Select
   type RCR4_RCKSEL_Field is
     (--  Sub-clock oscillator is selected.
      Val_0,
      --  LOCO clock oscillator is selected.
      Val_1)
     with Size => 1;
   for RCR4_RCKSEL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype RCR4_Reserved_Field is R7FA4M1AB.UInt7;

   --  RTC Control Register 4
   type RCR4_Register is record
      --  Count Source Select
      RCKSEL   : RCR4_RCKSEL_Field := R7FA4M1AB.RTC.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved : RCR4_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for RCR4_Register use record
      RCKSEL   at 0 range 0 .. 0;
      Reserved at 0 range 1 .. 7;
   end record;

   subtype RFRH_Reserved_Field is R7FA4M1AB.UInt15;

   --  Frequency Register H
   type RFRH_Register is record
      --  Frequency Comparison Value (b16) To generate the operating clock from
      --  the LOCOclock, this bit sets the comparison value of the 128-Hz clock
      --  cycle.
      RFC16    : Boolean := False;
      --  These bits are read as 000000000000000. The write value should be
      --  000000000000000.
      Reserved : RFRH_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for RFRH_Register use record
      RFC16    at 0 range 0 .. 0;
      Reserved at 0 range 1 .. 15;
   end record;

   subtype RADJ_ADJ_Field is R7FA4M1AB.UInt6;

   --  Plus-Minus
   type RADJ_PMADJ_Field is
     (--  Adjustment is not performed.
      Val_00,
      --  Adjustment is performed by the addition to the prescaler.
      Val_01,
      --  Adjustment is performed by the subtraction from the prescaler.
      Val_10,
      --  Setting prohibited
      Val_11)
     with Size => 2;
   for RADJ_PMADJ_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   --  Time Error Adjustment Register
   type RADJ_Register is record
      --  Adjustment Value These bits specify the adjustment value from the
      --  prescaler.
      ADJ   : RADJ_ADJ_Field := 16#0#;
      --  Plus-Minus
      PMADJ : RADJ_PMADJ_Field := R7FA4M1AB.RTC.Val_00;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for RADJ_Register use record
      ADJ   at 0 range 0 .. 5;
      PMADJ at 0 range 6 .. 7;
   end record;

   --  Time Capture Control
   type RTCCR0_TCCT_Field is
     (--  No event is detected.
      Val_00,
      --  Rising edge is detected.
      Val_01,
      --  Falling edge is detected.
      Val_10,
      --  Both edges are detected.
      Val_11)
     with Size => 2;
   for RTCCR0_TCCT_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   --  Time Capture Status
   type RTCCR0_TCST_Field is
     (--  No event is detected.
      Val_0,
      --  An event is detected.
      Val_1)
     with Size => 1;
   for RTCCR0_TCST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Time Capture Noise Filter Control
   type RTCCR0_TCNF_Field is
     (--  The noise filter is off.
      Val_00,
      --  Setting prohibited
      Val_01,
      --  The noise filter is on (count source).
      Val_10,
      --  The noise filter is on (count source by divided by 32).
      Val_11)
     with Size => 2;
   for RTCCR0_TCNF_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   --  RTCCR_Reserved array
   type RTCCR_Reserved_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for RTCCR_Reserved
   type RTCCR_Reserved_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  Reserved as a value
            Val : R7FA4M1AB.UInt2;
         when True =>
            --  Reserved as an array
            Arr : RTCCR_Reserved_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for RTCCR_Reserved_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Time Capture Control Register %s
   type RTCCR_Register is record
      --  Time Capture Control
      TCCT       : RTCCR0_TCCT_Field := R7FA4M1AB.RTC.Val_00;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. *** This field is modified following a read
      --  operation ***. Time Capture Status
      TCST       : RTCCR0_TCST_Field := R7FA4M1AB.RTC.Val_0;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : Boolean := False;
      --  Time Capture Noise Filter Control
      TCNF       : RTCCR0_TCNF_Field := R7FA4M1AB.RTC.Val_00;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : RTCCR_Reserved_Field := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for RTCCR_Register use record
      TCCT       at 0 range 0 .. 1;
      TCST       at 0 range 2 .. 2;
      Reserved   at 0 range 3 .. 3;
      TCNF       at 0 range 4 .. 5;
      Reserved_1 at 0 range 6 .. 7;
   end record;

   subtype RSECCP_SEC1_Field is R7FA4M1AB.UInt4;
   subtype RSECCP_SEC10_Field is R7FA4M1AB.UInt3;

   --  Second Capture Register %s
   type RSECCP_Register is record
      --  Read-only. 1-Second Capture Capture value for the ones place of
      --  seconds
      SEC1     : RSECCP_SEC1_Field;
      --  Read-only. 10-Second Capture Capture value for the tens place of
      --  seconds
      SEC10    : RSECCP_SEC10_Field;
      --  Read-only. This bit is read as 0.
      Reserved : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for RSECCP_Register use record
      SEC1     at 0 range 0 .. 3;
      SEC10    at 0 range 4 .. 6;
      Reserved at 0 range 7 .. 7;
   end record;

   subtype RMINCP_MIN1_Field is R7FA4M1AB.UInt4;
   subtype RMINCP_MIN10_Field is R7FA4M1AB.UInt3;

   --  Minute Capture Register %s
   type RMINCP_Register is record
      --  Read-only. 1-Minute Capture Capture value for the ones place of
      --  minutes
      MIN1     : RMINCP_MIN1_Field;
      --  Read-only. 10-Minute Capture Capture value for the tens place of
      --  minutes
      MIN10    : RMINCP_MIN10_Field;
      --  Read-only. This bit is read as 0.
      Reserved : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for RMINCP_Register use record
      MIN1     at 0 range 0 .. 3;
      MIN10    at 0 range 4 .. 6;
      Reserved at 0 range 7 .. 7;
   end record;

   subtype RHRCP_HR1_Field is R7FA4M1AB.UInt4;
   subtype RHRCP_HR10_Field is R7FA4M1AB.UInt2;

   --  A.m./p.m. select for time counter setting.
   type RHRCP0_PM_Field is
     (--  a.m.
      Val_0,
      --  p.m.
      Val_1)
     with Size => 1;
   for RHRCP0_PM_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Hour Capture Register %s
   type RHRCP_Register is record
      --  Read-only. 1-Minute Capture Capture value for the ones place of
      --  minutes
      HR1      : RHRCP_HR1_Field;
      --  Read-only. 10-Minute Capture Capture value for the tens place of
      --  minutes
      HR10     : RHRCP_HR10_Field;
      --  Read-only. A.m./p.m. select for time counter setting.
      PM       : RHRCP0_PM_Field;
      --  Read-only. This bit is read as 0.
      Reserved : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for RHRCP_Register use record
      HR1      at 0 range 0 .. 3;
      HR10     at 0 range 4 .. 5;
      PM       at 0 range 6 .. 6;
      Reserved at 0 range 7 .. 7;
   end record;

   subtype RDAYCP_DATE1_Field is R7FA4M1AB.UInt4;
   subtype RDAYCP_DATE10_Field is R7FA4M1AB.UInt2;
   subtype RDAYCP_Reserved_Field is R7FA4M1AB.UInt2;

   --  Date Capture Register %s
   type RDAYCP_Register is record
      --  Read-only. 1-Day Capture Capture value for the ones place of minutes
      DATE1    : RDAYCP_DATE1_Field;
      --  Read-only. 10-Day Capture Capture value for the tens place of minutes
      DATE10   : RDAYCP_DATE10_Field;
      --  Read-only. These bits are read as 00.
      Reserved : RDAYCP_Reserved_Field;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for RDAYCP_Register use record
      DATE1    at 0 range 0 .. 3;
      DATE10   at 0 range 4 .. 5;
      Reserved at 0 range 6 .. 7;
   end record;

   subtype RMONCP_MON1_Field is R7FA4M1AB.UInt4;

   --  Month Capture Register %s
   type RMONCP_Register is record
      --  Read-only. 1-Month Capture Capture value for the ones place of months
      MON1         : RMONCP_MON1_Field;
      --  Read-only. 10-Month Capture Capture value for the tens place of
      --  months
      MON10        : Boolean;
      --  unspecified
      Reserved_5_7 : R7FA4M1AB.UInt3;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for RMONCP_Register use record
      MON1         at 0 range 0 .. 3;
      MON10        at 0 range 4 .. 4;
      Reserved_5_7 at 0 range 5 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Realtime Clock
   type RTC_Peripheral is record
      --  64-Hz Counter
      R64CNT  : aliased R64CNT_Register;
      --  Second Counter
      RSECCNT : aliased RSECCNT_Register;
      --  Minute Counter
      RMINCNT : aliased RMINCNT_Register;
      --  Hour Counter
      RHRCNT  : aliased RHRCNT_Register;
      --  Day-of-Week Counter
      RWKCNT  : aliased RWKCNT_Register;
      --  Day Counter
      RDAYCNT : aliased RDAYCNT_Register;
      --  Month Counter
      RMONCNT : aliased RMONCNT_Register;
      --  Year Counter
      RYRCNT  : aliased RYRCNT_Register;
      --  Second Alarm Register
      RSECAR  : aliased RSECAR_Register;
      --  Minute Alarm Register
      RMINAR  : aliased RMINAR_Register;
      --  Hour Alarm Register
      RHRAR   : aliased RHRAR_Register;
      --  Day-of-Week Alarm Register
      RWKAR   : aliased RWKAR_Register;
      --  Date Alarm Register
      RDAYAR  : aliased RDAYAR_Register;
      --  Month Alarm Register
      RMONAR  : aliased RMONAR_Register;
      --  Year Alarm Register
      RYRAR   : aliased RYRAR_Register;
      --  Year Alarm Enable Register
      RYRAREN : aliased RYRAREN_Register;
      --  RTC Control Register 1
      RCR1    : aliased RCR1_Register;
      --  RTC Control Register 2
      RCR2    : aliased RCR2_Register;
      --  RTC Control Register 4
      RCR4    : aliased RCR4_Register;
      --  Frequency Register H
      RFRH    : aliased RFRH_Register;
      --  Frequency Register L
      RFRL    : aliased R7FA4M1AB.UInt16;
      --  Time Error Adjustment Register
      RADJ    : aliased RADJ_Register;
      --  Time Capture Control Register %s
      RTCCR0  : aliased RTCCR_Register;
      --  Time Capture Control Register %s
      RTCCR1  : aliased RTCCR_Register;
      --  Time Capture Control Register %s
      RTCCR2  : aliased RTCCR_Register;
      --  Second Capture Register %s
      RSECCP0 : aliased RSECCP_Register;
      --  Minute Capture Register %s
      RMINCP0 : aliased RMINCP_Register;
      --  Hour Capture Register %s
      RHRCP0  : aliased RHRCP_Register;
      --  Date Capture Register %s
      RDAYCP0 : aliased RDAYCP_Register;
      --  Month Capture Register %s
      RMONCP0 : aliased RMONCP_Register;
      --  Second Capture Register %s
      RSECCP1 : aliased RSECCP_Register;
      --  Minute Capture Register %s
      RMINCP1 : aliased RMINCP_Register;
      --  Hour Capture Register %s
      RHRCP1  : aliased RHRCP_Register;
      --  Date Capture Register %s
      RDAYCP1 : aliased RDAYCP_Register;
      --  Month Capture Register %s
      RMONCP1 : aliased RMONCP_Register;
      --  Second Capture Register %s
      RSECCP2 : aliased RSECCP_Register;
      --  Minute Capture Register %s
      RMINCP2 : aliased RMINCP_Register;
      --  Hour Capture Register %s
      RHRCP2  : aliased RHRCP_Register;
      --  Date Capture Register %s
      RDAYCP2 : aliased RDAYCP_Register;
      --  Month Capture Register %s
      RMONCP2 : aliased RMONCP_Register;
   end record
     with Volatile;

   for RTC_Peripheral use record
      R64CNT  at 16#0# range 0 .. 7;
      RSECCNT at 16#2# range 0 .. 7;
      RMINCNT at 16#4# range 0 .. 7;
      RHRCNT  at 16#6# range 0 .. 7;
      RWKCNT  at 16#8# range 0 .. 7;
      RDAYCNT at 16#A# range 0 .. 7;
      RMONCNT at 16#C# range 0 .. 7;
      RYRCNT  at 16#E# range 0 .. 15;
      RSECAR  at 16#10# range 0 .. 7;
      RMINAR  at 16#12# range 0 .. 7;
      RHRAR   at 16#14# range 0 .. 7;
      RWKAR   at 16#16# range 0 .. 7;
      RDAYAR  at 16#18# range 0 .. 7;
      RMONAR  at 16#1A# range 0 .. 7;
      RYRAR   at 16#1C# range 0 .. 15;
      RYRAREN at 16#1E# range 0 .. 7;
      RCR1    at 16#22# range 0 .. 7;
      RCR2    at 16#24# range 0 .. 7;
      RCR4    at 16#28# range 0 .. 7;
      RFRH    at 16#2A# range 0 .. 15;
      RFRL    at 16#2C# range 0 .. 15;
      RADJ    at 16#2E# range 0 .. 7;
      RTCCR0  at 16#40# range 0 .. 7;
      RTCCR1  at 16#42# range 0 .. 7;
      RTCCR2  at 16#44# range 0 .. 7;
      RSECCP0 at 16#52# range 0 .. 7;
      RMINCP0 at 16#54# range 0 .. 7;
      RHRCP0  at 16#56# range 0 .. 7;
      RDAYCP0 at 16#5A# range 0 .. 7;
      RMONCP0 at 16#5C# range 0 .. 7;
      RSECCP1 at 16#62# range 0 .. 7;
      RMINCP1 at 16#64# range 0 .. 7;
      RHRCP1  at 16#66# range 0 .. 7;
      RDAYCP1 at 16#6A# range 0 .. 7;
      RMONCP1 at 16#6C# range 0 .. 7;
      RSECCP2 at 16#72# range 0 .. 7;
      RMINCP2 at 16#74# range 0 .. 7;
      RHRCP2  at 16#76# range 0 .. 7;
      RDAYCP2 at 16#7A# range 0 .. 7;
      RMONCP2 at 16#7C# range 0 .. 7;
   end record;

   --  Realtime Clock
   RTC_Periph : aliased RTC_Peripheral
     with Import, Address => RTC_Base;

end R7FA4M1AB.RTC;
