pragma Style_Checks (Off);

--  This spec has been automatically generated from R7FA4M1AB-ada.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  General PWM Timer 4 (16-bit)
package R7FA4M1AB.GPT164 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Register Write Disable
   type GTWP_WP_Field is
     (--  Write to the register is enabled
      Val_0,
      --  Write to the register is disabled
      Val_1)
     with Size => 1;
   for GTWP_WP_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype GTWP_Reserved_Field is R7FA4M1AB.UInt7;

   --  GTWP Key Code
   type GTWP_PRKEY_Field is
     (--  The WP bits write is not permitted.
      others_k,
      --  Written to these bits, the WP bits write is permitted.
      Val_0xA5)
     with Size => 8;
   for GTWP_PRKEY_Field use
     (others_k => 0,
      Val_0xA5 => 165);

   subtype GTWP_Reserved_Field_1 is R7FA4M1AB.UInt16;

   --  General PWM Timer Write-Protection Register
   type GTWP_Register is record
      --  Register Write Disable
      WP         : GTWP_WP_Field := R7FA4M1AB.GPT164.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved   : GTWP_Reserved_Field := 16#0#;
      --  Write-only. GTWP Key Code
      PRKEY      : GTWP_PRKEY_Field := R7FA4M1AB.GPT164.others_k;
      --  These bits are read as 0000000000000000. The write value should be
      --  0000000000000000.
      Reserved_1 : GTWP_Reserved_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTWP_Register use record
      WP         at 0 range 0 .. 0;
      Reserved   at 0 range 1 .. 7;
      PRKEY      at 0 range 8 .. 15;
      Reserved_1 at 0 range 16 .. 31;
   end record;

   --  Channel 0 GTCNT Count Start Read data shows each channel's counter
   --  status (GTCR.CST bit). 0 means counter stop. 1 means counter running.
   type GTSTR_CSTRT0_Field is
     (--  No effect (write) / counter stop (read)
      Val_0,
      --  GPT320.GTCNT counter starts (write) / Counter running (read)
      Val_1)
     with Size => 1;
   for GTSTR_CSTRT0_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Channel 1 GTCNT Count Start Read data shows each channel's counter
   --  status (GTCR.CST bit). 0 means counter stop. 1 means counter running.
   type GTSTR_CSTRT1_Field is
     (--  No effect (write) / counter stop (read)
      Val_0,
      --  GPT321.GTCNT counter starts (write) / Counter running (read)
      Val_1)
     with Size => 1;
   for GTSTR_CSTRT1_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Channel 2 GTCNT Count Start Read data shows each channel's counter
   --  status (GTCR.CST bit). 0 means counter stop. 1 means counter running.
   type GTSTR_CSTRT2_Field is
     (--  No effect (write) / counter stop (read)
      Val_0,
      --  GPT322.GTCNT counter starts (write) / Counter running (read)
      Val_1)
     with Size => 1;
   for GTSTR_CSTRT2_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Channel 3 GTCNT Count Start Read data shows each channel's counter
   --  status (GTCR.CST bit). 0 means counter stop. 1 means counter running.
   type GTSTR_CSTRT3_Field is
     (--  No effect (write) / counter stop (read)
      Val_0,
      --  GPT323.GTCNT counter starts (write) / Counter running (read)
      Val_1)
     with Size => 1;
   for GTSTR_CSTRT3_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Channel 4 GTCNT Count Start Read data shows each channel's counter
   --  status (GTCR.CST bit). 0 means counter stop. 1 means counter running.
   type GTSTR_CSTRT4_Field is
     (--  No effect (write) / counter stop (read)
      Val_0,
      --  GPT164.GTCNT counter starts (write) / Counter running (read)
      Val_1)
     with Size => 1;
   for GTSTR_CSTRT4_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Channel 5 GTCNT Count Start Read data shows each channel's counter
   --  status (GTCR.CST bit). 0 means counter stop. 1 means counter running.
   type GTSTR_CSTRT5_Field is
     (--  No effect (write) / counter stop (read)
      Val_0,
      --  GPT165.GTCNT counter starts (write) / Counter running (read)
      Val_1)
     with Size => 1;
   for GTSTR_CSTRT5_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Channel 6 GTCNT Count Start Read data shows each channel's counter
   --  status (GTCR.CST bit). 0 means counter stop. 1 means counter running.
   type GTSTR_CSTRT6_Field is
     (--  No effect (write) / counter stop (read)
      Val_0,
      --  GPT166.GTCNT counter starts (write) / Counter running (read)
      Val_1)
     with Size => 1;
   for GTSTR_CSTRT6_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Channel 7 GTCNT Count Start Read data shows each channel's counter
   --  status (GTCR.CST bit). 0 means counter stop. 1 means counter running.
   type GTSTR_CSTRT7_Field is
     (--  No effect (write) / counter stop (read)
      Val_0,
      --  GPT167.GTCNT counter starts (write) / Counter running (read)
      Val_1)
     with Size => 1;
   for GTSTR_CSTRT7_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype GTSTR_Reserved_Field is R7FA4M1AB.UInt24;

   --  General PWM Timer Software Start Register
   type GTSTR_Register is record
      --  Channel 0 GTCNT Count Start Read data shows each channel's counter
      --  status (GTCR.CST bit). 0 means counter stop. 1 means counter running.
      CSTRT0   : GTSTR_CSTRT0_Field := R7FA4M1AB.GPT164.Val_0;
      --  Channel 1 GTCNT Count Start Read data shows each channel's counter
      --  status (GTCR.CST bit). 0 means counter stop. 1 means counter running.
      CSTRT1   : GTSTR_CSTRT1_Field := R7FA4M1AB.GPT164.Val_0;
      --  Channel 2 GTCNT Count Start Read data shows each channel's counter
      --  status (GTCR.CST bit). 0 means counter stop. 1 means counter running.
      CSTRT2   : GTSTR_CSTRT2_Field := R7FA4M1AB.GPT164.Val_0;
      --  Channel 3 GTCNT Count Start Read data shows each channel's counter
      --  status (GTCR.CST bit). 0 means counter stop. 1 means counter running.
      CSTRT3   : GTSTR_CSTRT3_Field := R7FA4M1AB.GPT164.Val_0;
      --  Channel 4 GTCNT Count Start Read data shows each channel's counter
      --  status (GTCR.CST bit). 0 means counter stop. 1 means counter running.
      CSTRT4   : GTSTR_CSTRT4_Field := R7FA4M1AB.GPT164.Val_0;
      --  Channel 5 GTCNT Count Start Read data shows each channel's counter
      --  status (GTCR.CST bit). 0 means counter stop. 1 means counter running.
      CSTRT5   : GTSTR_CSTRT5_Field := R7FA4M1AB.GPT164.Val_0;
      --  Channel 6 GTCNT Count Start Read data shows each channel's counter
      --  status (GTCR.CST bit). 0 means counter stop. 1 means counter running.
      CSTRT6   : GTSTR_CSTRT6_Field := R7FA4M1AB.GPT164.Val_0;
      --  Channel 7 GTCNT Count Start Read data shows each channel's counter
      --  status (GTCR.CST bit). 0 means counter stop. 1 means counter running.
      CSTRT7   : GTSTR_CSTRT7_Field := R7FA4M1AB.GPT164.Val_0;
      --  These bits are read as 000000000000000000000000. The write value
      --  should be 000000000000000000000000.
      Reserved : GTSTR_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTSTR_Register use record
      CSTRT0   at 0 range 0 .. 0;
      CSTRT1   at 0 range 1 .. 1;
      CSTRT2   at 0 range 2 .. 2;
      CSTRT3   at 0 range 3 .. 3;
      CSTRT4   at 0 range 4 .. 4;
      CSTRT5   at 0 range 5 .. 5;
      CSTRT6   at 0 range 6 .. 6;
      CSTRT7   at 0 range 7 .. 7;
      Reserved at 0 range 8 .. 31;
   end record;

   --  Channel 0 GTCNT Count Stop Read data shows each channel's counter status
   --  (GTCR.CST bit). 0 means counter runnning. 1 means counter stop.
   type GTSTP_CSTOP0_Field is
     (--  No effect (write) / counter running (read)
      Val_0,
      --  GPT320.GTCNT counter stops (write) / Counter stop (read)
      Val_1)
     with Size => 1;
   for GTSTP_CSTOP0_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Channel 1 GTCNT Count Stop Read data shows each channel's counter status
   --  (GTCR.CST bit). 0 means counter runnning. 1 means counter stop.
   type GTSTP_CSTOP1_Field is
     (--  No effect (write) / counter running (read)
      Val_0,
      --  GPT321.GTCNT counter stops (write) / Counter stop (read)
      Val_1)
     with Size => 1;
   for GTSTP_CSTOP1_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Channel 2 GTCNT Count Stop Read data shows each channel's counter status
   --  (GTCR.CST bit). 0 means counter runnning. 1 means counter stop.
   type GTSTP_CSTOP2_Field is
     (--  No effect (write) / counter running (read)
      Val_0,
      --  GPT322.GTCNT counter stops (write) / Counter stop (read)
      Val_1)
     with Size => 1;
   for GTSTP_CSTOP2_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Channel 3 GTCNT Count Stop Read data shows each channel's counter status
   --  (GTCR.CST bit). 0 means counter runnning. 1 means counter stop.
   type GTSTP_CSTOP3_Field is
     (--  No effect (write) / counter running (read)
      Val_0,
      --  GPT323.GTCNT counter stops (write) / Counter stop (read)
      Val_1)
     with Size => 1;
   for GTSTP_CSTOP3_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Channel 4 GTCNT Count Stop Read data shows each channel's counter status
   --  (GTCR.CST bit). 0 means counter runnning. 1 means counter stop.
   type GTSTP_CSTOP4_Field is
     (--  No effect (write) / counter running (read)
      Val_0,
      --  GPT164.GTCNT counter stops (write) / Counter stop (read)
      Val_1)
     with Size => 1;
   for GTSTP_CSTOP4_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Channel 5 GTCNT Count Stop Read data shows each channel's counter status
   --  (GTCR.CST bit). 0 means counter runnning. 1 means counter stop.
   type GTSTP_CSTOP5_Field is
     (--  No effect (write) / counter running (read)
      Val_0,
      --  GPT165.GTCNT counter stops (write) / Counter stop (read)
      Val_1)
     with Size => 1;
   for GTSTP_CSTOP5_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Channel 6 GTCNT Count Stop Read data shows each channel's counter status
   --  (GTCR.CST bit). 0 means counter runnning. 1 means counter stop.
   type GTSTP_CSTOP6_Field is
     (--  No effect (write) / counter running (read)
      Val_0,
      --  GPT166.GTCNT counter stops (write) / Counter stop (read)
      Val_1)
     with Size => 1;
   for GTSTP_CSTOP6_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Channel 7 GTCNT Count Stop Read data shows each channel's counter status
   --  (GTCR.CST bit). 0 means counter runnning. 1 means counter stop.
   type GTSTP_CSTOP7_Field is
     (--  No effect (write) / counter running (read)
      Val_0,
      --  GPT167.GTCNT counter stops (write) / Counter stop (read)
      Val_1)
     with Size => 1;
   for GTSTP_CSTOP7_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype GTSTP_Reserved_Field is R7FA4M1AB.UInt24;

   --  General PWM Timer Software Stop Register
   type GTSTP_Register is record
      --  Channel 0 GTCNT Count Stop Read data shows each channel's counter
      --  status (GTCR.CST bit). 0 means counter runnning. 1 means counter
      --  stop.
      CSTOP0   : GTSTP_CSTOP0_Field := R7FA4M1AB.GPT164.Val_1;
      --  Channel 1 GTCNT Count Stop Read data shows each channel's counter
      --  status (GTCR.CST bit). 0 means counter runnning. 1 means counter
      --  stop.
      CSTOP1   : GTSTP_CSTOP1_Field := R7FA4M1AB.GPT164.Val_1;
      --  Channel 2 GTCNT Count Stop Read data shows each channel's counter
      --  status (GTCR.CST bit). 0 means counter runnning. 1 means counter
      --  stop.
      CSTOP2   : GTSTP_CSTOP2_Field := R7FA4M1AB.GPT164.Val_1;
      --  Channel 3 GTCNT Count Stop Read data shows each channel's counter
      --  status (GTCR.CST bit). 0 means counter runnning. 1 means counter
      --  stop.
      CSTOP3   : GTSTP_CSTOP3_Field := R7FA4M1AB.GPT164.Val_1;
      --  Channel 4 GTCNT Count Stop Read data shows each channel's counter
      --  status (GTCR.CST bit). 0 means counter runnning. 1 means counter
      --  stop.
      CSTOP4   : GTSTP_CSTOP4_Field := R7FA4M1AB.GPT164.Val_1;
      --  Channel 5 GTCNT Count Stop Read data shows each channel's counter
      --  status (GTCR.CST bit). 0 means counter runnning. 1 means counter
      --  stop.
      CSTOP5   : GTSTP_CSTOP5_Field := R7FA4M1AB.GPT164.Val_1;
      --  Channel 6 GTCNT Count Stop Read data shows each channel's counter
      --  status (GTCR.CST bit). 0 means counter runnning. 1 means counter
      --  stop.
      CSTOP6   : GTSTP_CSTOP6_Field := R7FA4M1AB.GPT164.Val_1;
      --  Channel 7 GTCNT Count Stop Read data shows each channel's counter
      --  status (GTCR.CST bit). 0 means counter runnning. 1 means counter
      --  stop.
      CSTOP7   : GTSTP_CSTOP7_Field := R7FA4M1AB.GPT164.Val_1;
      --  These bits are read as 111111111111111111111111. The write value
      --  should be 111111111111111111111111.
      Reserved : GTSTP_Reserved_Field := 16#FFFFFF#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTSTP_Register use record
      CSTOP0   at 0 range 0 .. 0;
      CSTOP1   at 0 range 1 .. 1;
      CSTOP2   at 0 range 2 .. 2;
      CSTOP3   at 0 range 3 .. 3;
      CSTOP4   at 0 range 4 .. 4;
      CSTOP5   at 0 range 5 .. 5;
      CSTOP6   at 0 range 6 .. 6;
      CSTOP7   at 0 range 7 .. 7;
      Reserved at 0 range 8 .. 31;
   end record;

   --  Channel 0 GTCNT Count Clear
   type GTCLR_CCLR0_Field is
     (--  No effect
      Val_0,
      --  GPT320.GTCNT counter clears
      Val_1)
     with Size => 1;
   for GTCLR_CCLR0_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Channel 1 GTCNT Count Clear
   type GTCLR_CCLR1_Field is
     (--  No effect
      Val_0,
      --  GPT321.GTCNT counter clears
      Val_1)
     with Size => 1;
   for GTCLR_CCLR1_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Channel 2 GTCNT Count Clear
   type GTCLR_CCLR2_Field is
     (--  No effect
      Val_0,
      --  GPT322.GTCNT counter clears
      Val_1)
     with Size => 1;
   for GTCLR_CCLR2_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Channel 3 GTCNT Count Clear
   type GTCLR_CCLR3_Field is
     (--  No effect
      Val_0,
      --  GPT323.GTCNT counter clears
      Val_1)
     with Size => 1;
   for GTCLR_CCLR3_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Channel 4 GTCNT Count Clear
   type GTCLR_CCLR4_Field is
     (--  No effect
      Val_0,
      --  GPT164.GTCNT counter clears
      Val_1)
     with Size => 1;
   for GTCLR_CCLR4_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Channel 5 GTCNT Count Clear
   type GTCLR_CCLR5_Field is
     (--  No effect
      Val_0,
      --  GPT165.GTCNT counter clears
      Val_1)
     with Size => 1;
   for GTCLR_CCLR5_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Channel 6 GTCNT Count Clear
   type GTCLR_CCLR6_Field is
     (--  No effect
      Val_0,
      --  GPT166.GTCNT counter clears
      Val_1)
     with Size => 1;
   for GTCLR_CCLR6_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Channel 7 GTCNT Count Clear
   type GTCLR_CCLR7_Field is
     (--  No effect
      Val_0,
      --  GPT167.GTCNT counter clears
      Val_1)
     with Size => 1;
   for GTCLR_CCLR7_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype GTCLR_Reserved_Field is R7FA4M1AB.UInt24;

   --  General PWM Timer Software Clear Register
   type GTCLR_Register is record
      --  Write-only. Channel 0 GTCNT Count Clear
      CCLR0    : GTCLR_CCLR0_Field := R7FA4M1AB.GPT164.Val_0;
      --  Write-only. Channel 1 GTCNT Count Clear
      CCLR1    : GTCLR_CCLR1_Field := R7FA4M1AB.GPT164.Val_0;
      --  Write-only. Channel 2 GTCNT Count Clear
      CCLR2    : GTCLR_CCLR2_Field := R7FA4M1AB.GPT164.Val_0;
      --  Write-only. Channel 3 GTCNT Count Clear
      CCLR3    : GTCLR_CCLR3_Field := R7FA4M1AB.GPT164.Val_0;
      --  Write-only. Channel 4 GTCNT Count Clear
      CCLR4    : GTCLR_CCLR4_Field := R7FA4M1AB.GPT164.Val_0;
      --  Write-only. Channel 5 GTCNT Count Clear
      CCLR5    : GTCLR_CCLR5_Field := R7FA4M1AB.GPT164.Val_0;
      --  Write-only. Channel 6 GTCNT Count Clear
      CCLR6    : GTCLR_CCLR6_Field := R7FA4M1AB.GPT164.Val_0;
      --  Write-only. Channel 7 GTCNT Count Clear
      CCLR7    : GTCLR_CCLR7_Field := R7FA4M1AB.GPT164.Val_0;
      --  Write-only. The write value should be 000000000000000000000000.
      Reserved : GTCLR_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTCLR_Register use record
      CCLR0    at 0 range 0 .. 0;
      CCLR1    at 0 range 1 .. 1;
      CCLR2    at 0 range 2 .. 2;
      CCLR3    at 0 range 3 .. 3;
      CCLR4    at 0 range 4 .. 4;
      CCLR5    at 0 range 5 .. 5;
      CCLR6    at 0 range 6 .. 6;
      CCLR7    at 0 range 7 .. 7;
      Reserved at 0 range 8 .. 31;
   end record;

   --  GTETRGA Pin Rising Input Source Counter Start Enable
   type GTSSR_SSGTRGAR_Field is
     (--  Counter start is disable at the rising edge of GTETRGA input
      Val_0,
      --  Counter start is enable at the rising edge of GTETRGA input
      Val_1)
     with Size => 1;
   for GTSSR_SSGTRGAR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTETRGA Pin Falling Input Source Counter Start Enable
   type GTSSR_SSGTRGAF_Field is
     (--  Counter start is disable at the falling edge of GTETRGA input
      Val_0,
      --  Counter start is enable at the falling edge of GTETRGA input
      Val_1)
     with Size => 1;
   for GTSSR_SSGTRGAF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTETRGB Pin Rising Input Source Counter Start Enable
   type GTSSR_SSGTRGBR_Field is
     (--  Counter start is disable at the rising edge of GTETRGB input
      Val_0,
      --  Counter start is enable at the rising edge of GTETRGB input
      Val_1)
     with Size => 1;
   for GTSSR_SSGTRGBR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTETRGB Pin Falling Input Source Counter Start Enable
   type GTSSR_SSGTRGBF_Field is
     (--  Counter start is disable at the falling edge of GTETRGB input
      Val_0,
      --  Counter start is enable at the falling edge of GTETRGB input
      Val_1)
     with Size => 1;
   for GTSSR_SSGTRGBF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype GTSSR_Reserved_Field is R7FA4M1AB.UInt4;

   --  GTIOCA Pin Rising Input during GTIOCB Value Low Source Counter Start
   --  Enable
   type GTSSR_SSCARBL_Field is
     (--  Counter start is disable at the rising edge of GTIOCA input when GTIOCB
--  input is 0
      Val_0,
      --  Counter start is enable at the rising edge of GTIOCA input when GTIOCB
--  input is 0
      Val_1)
     with Size => 1;
   for GTSSR_SSCARBL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCA Pin Rising Input during GTIOCB Value High Source Counter Start
   --  Enable
   type GTSSR_SSCARBH_Field is
     (--  Counter start is disable at the rising edge of GTIOCA input when GTIOCB
--  input is 1
      Val_0,
      --  Counter start is enable at the rising edge of GTIOCA input when GTIOCB
--  input is 1
      Val_1)
     with Size => 1;
   for GTSSR_SSCARBH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCA Pin Falling Input during GTIOCB Value Low Source Counter Start
   --  Enable
   type GTSSR_SSCAFBL_Field is
     (--  Counter start is disable at the falling edge of GTIOCA input when GTIOCB
--  input is 0
      Val_0,
      --  Counter start is enable at the falling edge of GTIOCA input when GTIOCB
--  input is 0
      Val_1)
     with Size => 1;
   for GTSSR_SSCAFBL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCA Pin Falling Input during GTIOCB Value High Source Counter Start
   --  Enable
   type GTSSR_SSCAFBH_Field is
     (--  Counter start is disable at the falling edge of GTIOCA input when GTIOCB
--  input is 1
      Val_0,
      --  Counter start is enable at the falling edge of GTIOCA input when GTIOCB
--  input is 1
      Val_1)
     with Size => 1;
   for GTSSR_SSCAFBH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCB Pin Rising Input during GTIOCA Value Low Source Counter Start
   --  Enable
   type GTSSR_SSCBRAL_Field is
     (--  Counter start is disable at the rising edge of GTIOCB input when GTIOCA
--  input is 0
      Val_0,
      --  Counter start is enable at the rising edge of GTIOCB input when GTIOCA
--  input is 0
      Val_1)
     with Size => 1;
   for GTSSR_SSCBRAL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCB Pin Rising Input during GTIOCA Value High Source Counter Start
   --  Enable
   type GTSSR_SSCBRAH_Field is
     (--  Counter start is disable at the rising edge of GTIOCB input when GTIOCA
--  input is 1
      Val_0,
      --  Counter start is enable at the rising edge of GTIOCB input when GTIOCA
--  input is 1
      Val_1)
     with Size => 1;
   for GTSSR_SSCBRAH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCB Pin Falling Input during GTIOCA Value Low Source Counter Start
   --  Enable
   type GTSSR_SSCBFAL_Field is
     (--  Counter start is disable at the falling edge of GTIOCB input when GTIOCA
--  input is 0
      Val_0,
      --  Counter start is enable at the falling edge of GTIOCB input when GTIOCA
--  input is 0
      Val_1)
     with Size => 1;
   for GTSSR_SSCBFAL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCB Pin Falling Input during GTIOCA Value High Source Counter Start
   --  Enable
   type GTSSR_SSCBFAH_Field is
     (--  Counter start is disable at the falling edge of GTIOCB input when GTIOCA
--  input is 1
      Val_0,
      --  Counter start is enable at the falling edge of GTIOCB input when GTIOCA
--  input is 1
      Val_1)
     with Size => 1;
   for GTSSR_SSCBFAH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTA Event Source Counter Start Enable
   type GTSSR_SSELCA_Field is
     (--  Counter start is disable at the ELC_GPTA input
      Val_0,
      --  Counter start is enable at the ELC_GPTA input
      Val_1)
     with Size => 1;
   for GTSSR_SSELCA_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTB Event Source Counter Start Enable
   type GTSSR_SSELCB_Field is
     (--  Counter start is disable at the ELC_GPTB input
      Val_0,
      --  Counter start is enable at the ELC_GPTB input
      Val_1)
     with Size => 1;
   for GTSSR_SSELCB_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTC Event Source Counter Start Enable
   type GTSSR_SSELCC_Field is
     (--  Counter start is disable at the ELC_GPTC input
      Val_0,
      --  Counter start is enable at the ELC_GPTC input
      Val_1)
     with Size => 1;
   for GTSSR_SSELCC_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTD Event Source Counter Start Enable
   type GTSSR_SSELCD_Field is
     (--  Counter start is disable at the ELC_GPTD input
      Val_0,
      --  Counter start is enable at the ELC_GPTD input
      Val_1)
     with Size => 1;
   for GTSSR_SSELCD_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTE Event Source Counter Start Enable
   type GTSSR_SSELCE_Field is
     (--  Counter start is disable at the ELC_GPTE input
      Val_0,
      --  Counter start is enable at the ELC_GPTE input
      Val_1)
     with Size => 1;
   for GTSSR_SSELCE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTF Event Source Counter Start Enable
   type GTSSR_SSELCF_Field is
     (--  Counter start is disable at the ELC_GPTF input
      Val_0,
      --  Counter start is enable at the ELC_GPTF input
      Val_1)
     with Size => 1;
   for GTSSR_SSELCF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTG Event Source Counter Start Enable
   type GTSSR_SSELCG_Field is
     (--  Counter start is disable at the ELC_GPTG input
      Val_0,
      --  Counter start is enable at the ELC_GPTG input
      Val_1)
     with Size => 1;
   for GTSSR_SSELCG_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTH Event Source Counter Start Enable
   type GTSSR_SSELCH_Field is
     (--  Counter start is disable at the ELC_GPTH input
      Val_0,
      --  Counter start is enable at the ELC_GPTH input
      Val_1)
     with Size => 1;
   for GTSSR_SSELCH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype GTSSR_Reserved_Field_1 is R7FA4M1AB.UInt7;

   --  Software Source Counter Start Enable
   type GTSSR_CSTRT_Field is
     (--  Counter start is disable by the GTSTR register
      Val_0,
      --  Counter start is enable by the GTSTR register
      Val_1)
     with Size => 1;
   for GTSSR_CSTRT_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  General PWM Timer Start Source Select Register
   type GTSSR_Register is record
      --  GTETRGA Pin Rising Input Source Counter Start Enable
      SSGTRGAR   : GTSSR_SSGTRGAR_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTETRGA Pin Falling Input Source Counter Start Enable
      SSGTRGAF   : GTSSR_SSGTRGAF_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTETRGB Pin Rising Input Source Counter Start Enable
      SSGTRGBR   : GTSSR_SSGTRGBR_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTETRGB Pin Falling Input Source Counter Start Enable
      SSGTRGBF   : GTSSR_SSGTRGBF_Field := R7FA4M1AB.GPT164.Val_0;
      --  These bits are read as 0000. The write value should be 0000.
      Reserved   : GTSSR_Reserved_Field := 16#0#;
      --  GTIOCA Pin Rising Input during GTIOCB Value Low Source Counter Start
      --  Enable
      SSCARBL    : GTSSR_SSCARBL_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCA Pin Rising Input during GTIOCB Value High Source Counter Start
      --  Enable
      SSCARBH    : GTSSR_SSCARBH_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCA Pin Falling Input during GTIOCB Value Low Source Counter Start
      --  Enable
      SSCAFBL    : GTSSR_SSCAFBL_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCA Pin Falling Input during GTIOCB Value High Source Counter
      --  Start Enable
      SSCAFBH    : GTSSR_SSCAFBH_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCB Pin Rising Input during GTIOCA Value Low Source Counter Start
      --  Enable
      SSCBRAL    : GTSSR_SSCBRAL_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCB Pin Rising Input during GTIOCA Value High Source Counter Start
      --  Enable
      SSCBRAH    : GTSSR_SSCBRAH_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCB Pin Falling Input during GTIOCA Value Low Source Counter Start
      --  Enable
      SSCBFAL    : GTSSR_SSCBFAL_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCB Pin Falling Input during GTIOCA Value High Source Counter
      --  Start Enable
      SSCBFAH    : GTSSR_SSCBFAH_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTA Event Source Counter Start Enable
      SSELCA     : GTSSR_SSELCA_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTB Event Source Counter Start Enable
      SSELCB     : GTSSR_SSELCB_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTC Event Source Counter Start Enable
      SSELCC     : GTSSR_SSELCC_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTD Event Source Counter Start Enable
      SSELCD     : GTSSR_SSELCD_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTE Event Source Counter Start Enable
      SSELCE     : GTSSR_SSELCE_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTF Event Source Counter Start Enable
      SSELCF     : GTSSR_SSELCF_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTG Event Source Counter Start Enable
      SSELCG     : GTSSR_SSELCG_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTH Event Source Counter Start Enable
      SSELCH     : GTSSR_SSELCH_Field := R7FA4M1AB.GPT164.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved_1 : GTSSR_Reserved_Field_1 := 16#0#;
      --  Software Source Counter Start Enable
      CSTRT      : GTSSR_CSTRT_Field := R7FA4M1AB.GPT164.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTSSR_Register use record
      SSGTRGAR   at 0 range 0 .. 0;
      SSGTRGAF   at 0 range 1 .. 1;
      SSGTRGBR   at 0 range 2 .. 2;
      SSGTRGBF   at 0 range 3 .. 3;
      Reserved   at 0 range 4 .. 7;
      SSCARBL    at 0 range 8 .. 8;
      SSCARBH    at 0 range 9 .. 9;
      SSCAFBL    at 0 range 10 .. 10;
      SSCAFBH    at 0 range 11 .. 11;
      SSCBRAL    at 0 range 12 .. 12;
      SSCBRAH    at 0 range 13 .. 13;
      SSCBFAL    at 0 range 14 .. 14;
      SSCBFAH    at 0 range 15 .. 15;
      SSELCA     at 0 range 16 .. 16;
      SSELCB     at 0 range 17 .. 17;
      SSELCC     at 0 range 18 .. 18;
      SSELCD     at 0 range 19 .. 19;
      SSELCE     at 0 range 20 .. 20;
      SSELCF     at 0 range 21 .. 21;
      SSELCG     at 0 range 22 .. 22;
      SSELCH     at 0 range 23 .. 23;
      Reserved_1 at 0 range 24 .. 30;
      CSTRT      at 0 range 31 .. 31;
   end record;

   --  GTETRGA Pin Rising Input Source Counter Stop Enable
   type GTPSR_PSGTRGAR_Field is
     (--  Counter stop is disable at the rising edge of GTETRGA input
      Val_0,
      --  Counter stop is enable at the rising edge of GTETRGA input
      Val_1)
     with Size => 1;
   for GTPSR_PSGTRGAR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTETRGA Pin Falling Input Source Counter Stop Enable
   type GTPSR_PSGTRGAF_Field is
     (--  Counter stop is disable at the falling edge of GTETRGA input
      Val_0,
      --  Counter stop is enable at the falling edge of GTETRGA input
      Val_1)
     with Size => 1;
   for GTPSR_PSGTRGAF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTETRGB Pin Rising Input Source Counter Stop Enable
   type GTPSR_PSGTRGBR_Field is
     (--  Counter stop is disable at the rising edge of GTETRGB input
      Val_0,
      --  Counter stop is enable at the rising edge of GTETRGB input
      Val_1)
     with Size => 1;
   for GTPSR_PSGTRGBR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTETRGB Pin Falling Input Source Counter Stop Enable
   type GTPSR_PSGTRGBF_Field is
     (--  Counter stop is disable at the falling edge of GTETRGB input
      Val_0,
      --  Counter stop is enable at the falling edge of GTETRGB input
      Val_1)
     with Size => 1;
   for GTPSR_PSGTRGBF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype GTPSR_Reserved_Field is R7FA4M1AB.UInt4;

   --  GTIOCA Pin Rising Input during GTIOCB Value Low Source Counter Stop
   --  Enable
   type GTPSR_PSCARBL_Field is
     (--  Counter stop is disable at the rising edge of GTIOCA input when GTIOCB
--  input is 0
      Val_0,
      --  Counter stop is enable at the rising edge of GTIOCA input when GTIOCB input
--  is 0
      Val_1)
     with Size => 1;
   for GTPSR_PSCARBL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCA Pin Rising Input during GTIOCB Value High Source Counter Stop
   --  Enable
   type GTPSR_PSCARBH_Field is
     (--  Counter stop is disable at the rising edge of GTIOCA input when GTIOCB
--  input is 1
      Val_0,
      --  Counter stop is enable at the rising edge of GTIOCA input when GTIOCB input
--  is 1
      Val_1)
     with Size => 1;
   for GTPSR_PSCARBH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCA Pin Falling Input during GTIOCB Value Low Source Counter Stop
   --  Enable
   type GTPSR_PSCAFBL_Field is
     (--  Counter stop is disable at the falling edge of GTIOCA input when GTIOCB
--  input is 0
      Val_0,
      --  Counter stop is enable at the falling edge of GTIOCA input when GTIOCB
--  input is 0
      Val_1)
     with Size => 1;
   for GTPSR_PSCAFBL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCA Pin Falling Input during GTIOCB Value High Source Counter Stop
   --  Enable
   type GTPSR_PSCAFBH_Field is
     (--  Counter stop is disable at the falling edge of GTIOCA input when GTIOCB
--  input is 1
      Val_0,
      --  Counter stop is enable at the falling edge of GTIOCA input when GTIOCB
--  input is 1
      Val_1)
     with Size => 1;
   for GTPSR_PSCAFBH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCB Pin Rising Input during GTIOCA Value Low Source Counter Stop
   --  Enable
   type GTPSR_PSCBRAL_Field is
     (--  Counter stop is disable at the rising edge of GTIOCB input when GTIOCA
--  input is 0
      Val_0,
      --  Counter stop is enable at the rising edge of GTIOCB input when GTIOCA input
--  is 0
      Val_1)
     with Size => 1;
   for GTPSR_PSCBRAL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCB Pin Rising Input during GTIOCA Value High Source Counter Stop
   --  Enable
   type GTPSR_PSCBRAH_Field is
     (--  Counter stop is disable at the rising edge of GTIOCB input when GTIOCA
--  input is 1
      Val_0,
      --  Counter stop is enable at the rising edge of GTIOCB input when GTIOCA input
--  is 1
      Val_1)
     with Size => 1;
   for GTPSR_PSCBRAH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCB Pin Falling Input during GTIOCA Value Low Source Counter Stop
   --  Enable
   type GTPSR_PSCBFAL_Field is
     (--  Counter stop is disable at the falling edge of GTIOCB input when GTIOCA
--  input is 0
      Val_0,
      --  Counter stop is enable at the falling edge of GTIOCB input when GTIOCA
--  input is 0
      Val_1)
     with Size => 1;
   for GTPSR_PSCBFAL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCB Pin Falling Input during GTIOCA Value High Source Counter Stop
   --  Enable
   type GTPSR_PSCBFAH_Field is
     (--  Counter stop is disable at the falling edge of GTIOCB input when GTIOCA
--  input is 1
      Val_0,
      --  Counter stop is enable at the falling edge of GTIOCB input when GTIOCA
--  input is 1
      Val_1)
     with Size => 1;
   for GTPSR_PSCBFAH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTA Event Source Counter Stop Enable
   type GTPSR_PSELCA_Field is
     (--  Counter stop is disable at the ELC_GPTA input
      Val_0,
      --  Counter stop is enable at the ELC_GPTA input
      Val_1)
     with Size => 1;
   for GTPSR_PSELCA_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTB Event Source Counter Stop Enable
   type GTPSR_PSELCB_Field is
     (--  Counter stop is disable at the ELC_GPTB input
      Val_0,
      --  Counter stop is enable at the ELC_GPTB input
      Val_1)
     with Size => 1;
   for GTPSR_PSELCB_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTC Event Source Counter Stop Enable
   type GTPSR_PSELCC_Field is
     (--  Counter stop is disable at the ELC_GPTC input
      Val_0,
      --  Counter stop is enable at the ELC_GPTC input
      Val_1)
     with Size => 1;
   for GTPSR_PSELCC_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTD Event Source Counter Stop Enable
   type GTPSR_PSELCD_Field is
     (--  Counter stop is disable at the ELC_GPTD input
      Val_0,
      --  Counter stop is enable at the ELC_GPTD input
      Val_1)
     with Size => 1;
   for GTPSR_PSELCD_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTE Event Source Counter Stop Enable
   type GTPSR_PSELCE_Field is
     (--  Counter stop is disable at the ELC_GPTE input
      Val_0,
      --  Counter stop is enable at the ELC_GPTE input
      Val_1)
     with Size => 1;
   for GTPSR_PSELCE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTF Event Source Counter Stop Enable
   type GTPSR_PSELCF_Field is
     (--  Counter stop is disable at the ELC_GPTF input
      Val_0,
      --  Counter stop is enable at the ELC_GPTF input
      Val_1)
     with Size => 1;
   for GTPSR_PSELCF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTG Event Source Counter Stop Enable
   type GTPSR_PSELCG_Field is
     (--  Counter stop is disable at the ELC_GPTG input
      Val_0,
      --  Counter stop is enable at the ELC_GPTG input
      Val_1)
     with Size => 1;
   for GTPSR_PSELCG_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTH Event Source Counter Stop Enable
   type GTPSR_PSELCH_Field is
     (--  Counter stop is disable at the ELC_GPTH input
      Val_0,
      --  Counter stop is enable at the ELC_GPTH input
      Val_1)
     with Size => 1;
   for GTPSR_PSELCH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype GTPSR_Reserved_Field_1 is R7FA4M1AB.UInt7;

   --  Software Source Counter Stop Enable
   type GTPSR_CSTOP_Field is
     (--  Counter stop is disable by the GTSTP register
      Val_0,
      --  Counter stop is enable by the GTSTP register
      Val_1)
     with Size => 1;
   for GTPSR_CSTOP_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  General PWM Timer Stop Source Select Register
   type GTPSR_Register is record
      --  GTETRGA Pin Rising Input Source Counter Stop Enable
      PSGTRGAR   : GTPSR_PSGTRGAR_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTETRGA Pin Falling Input Source Counter Stop Enable
      PSGTRGAF   : GTPSR_PSGTRGAF_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTETRGB Pin Rising Input Source Counter Stop Enable
      PSGTRGBR   : GTPSR_PSGTRGBR_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTETRGB Pin Falling Input Source Counter Stop Enable
      PSGTRGBF   : GTPSR_PSGTRGBF_Field := R7FA4M1AB.GPT164.Val_0;
      --  These bits are read as 0000. The write value should be 0000.
      Reserved   : GTPSR_Reserved_Field := 16#0#;
      --  GTIOCA Pin Rising Input during GTIOCB Value Low Source Counter Stop
      --  Enable
      PSCARBL    : GTPSR_PSCARBL_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCA Pin Rising Input during GTIOCB Value High Source Counter Stop
      --  Enable
      PSCARBH    : GTPSR_PSCARBH_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCA Pin Falling Input during GTIOCB Value Low Source Counter Stop
      --  Enable
      PSCAFBL    : GTPSR_PSCAFBL_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCA Pin Falling Input during GTIOCB Value High Source Counter Stop
      --  Enable
      PSCAFBH    : GTPSR_PSCAFBH_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCB Pin Rising Input during GTIOCA Value Low Source Counter Stop
      --  Enable
      PSCBRAL    : GTPSR_PSCBRAL_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCB Pin Rising Input during GTIOCA Value High Source Counter Stop
      --  Enable
      PSCBRAH    : GTPSR_PSCBRAH_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCB Pin Falling Input during GTIOCA Value Low Source Counter Stop
      --  Enable
      PSCBFAL    : GTPSR_PSCBFAL_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCB Pin Falling Input during GTIOCA Value High Source Counter Stop
      --  Enable
      PSCBFAH    : GTPSR_PSCBFAH_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTA Event Source Counter Stop Enable
      PSELCA     : GTPSR_PSELCA_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTB Event Source Counter Stop Enable
      PSELCB     : GTPSR_PSELCB_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTC Event Source Counter Stop Enable
      PSELCC     : GTPSR_PSELCC_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTD Event Source Counter Stop Enable
      PSELCD     : GTPSR_PSELCD_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTE Event Source Counter Stop Enable
      PSELCE     : GTPSR_PSELCE_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTF Event Source Counter Stop Enable
      PSELCF     : GTPSR_PSELCF_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTG Event Source Counter Stop Enable
      PSELCG     : GTPSR_PSELCG_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTH Event Source Counter Stop Enable
      PSELCH     : GTPSR_PSELCH_Field := R7FA4M1AB.GPT164.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved_1 : GTPSR_Reserved_Field_1 := 16#0#;
      --  Software Source Counter Stop Enable
      CSTOP      : GTPSR_CSTOP_Field := R7FA4M1AB.GPT164.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTPSR_Register use record
      PSGTRGAR   at 0 range 0 .. 0;
      PSGTRGAF   at 0 range 1 .. 1;
      PSGTRGBR   at 0 range 2 .. 2;
      PSGTRGBF   at 0 range 3 .. 3;
      Reserved   at 0 range 4 .. 7;
      PSCARBL    at 0 range 8 .. 8;
      PSCARBH    at 0 range 9 .. 9;
      PSCAFBL    at 0 range 10 .. 10;
      PSCAFBH    at 0 range 11 .. 11;
      PSCBRAL    at 0 range 12 .. 12;
      PSCBRAH    at 0 range 13 .. 13;
      PSCBFAL    at 0 range 14 .. 14;
      PSCBFAH    at 0 range 15 .. 15;
      PSELCA     at 0 range 16 .. 16;
      PSELCB     at 0 range 17 .. 17;
      PSELCC     at 0 range 18 .. 18;
      PSELCD     at 0 range 19 .. 19;
      PSELCE     at 0 range 20 .. 20;
      PSELCF     at 0 range 21 .. 21;
      PSELCG     at 0 range 22 .. 22;
      PSELCH     at 0 range 23 .. 23;
      Reserved_1 at 0 range 24 .. 30;
      CSTOP      at 0 range 31 .. 31;
   end record;

   --  GTETRGA Pin Rising Input Source Counter Clear Enable
   type GTCSR_CSGTRGAR_Field is
     (--  Counter clear is disable at the rising edge of GTETRGA input
      Val_0,
      --  Counter clear is enable at the rising edge of GTETRGA input
      Val_1)
     with Size => 1;
   for GTCSR_CSGTRGAR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTETRGA Pin Falling Input Source Counter Clear Enable
   type GTCSR_CSGTRGAF_Field is
     (--  Counter clear is disable at the falling edge of GTETRGA input
      Val_0,
      --  Counter clear is enable at the falling edge of GTETRGA input
      Val_1)
     with Size => 1;
   for GTCSR_CSGTRGAF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTETRGB Pin Rising Input Source Counter Clear Enable
   type GTCSR_CSGTRGBR_Field is
     (--  Counter clear is disable at the rising edge of GTETRGB input
      Val_0,
      --  Counter clear is enable at the rising edge of GTETRGB input
      Val_1)
     with Size => 1;
   for GTCSR_CSGTRGBR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTETRGB Pin Falling Input Source Counter Clear Enable
   type GTCSR_CSGTRGBF_Field is
     (--  Counter clear is disable at the falling edge of GTETRGB input
      Val_0,
      --  Counter clear is enable at the falling edge of GTETRGB input
      Val_1)
     with Size => 1;
   for GTCSR_CSGTRGBF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype GTCSR_Reserved_Field is R7FA4M1AB.UInt4;

   --  GTIOCA Pin Rising Input during GTIOCB Value Low Source Counter Clear
   --  Enable
   type GTCSR_CSCARBL_Field is
     (--  Counter clear is disable at the rising edge of GTIOCA input when GTIOCB
--  input is 0
      Val_0,
      --  Counter clear is enable at the rising edge of GTIOCA input when GTIOCB
--  input is 0
      Val_1)
     with Size => 1;
   for GTCSR_CSCARBL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCA Pin Rising Input during GTIOCB Value High Source Counter Clear
   --  Enable
   type GTCSR_CSCARBH_Field is
     (--  Counter clear is disable at the rising edge of GTIOCA input when GTIOCB
--  input is 1
      Val_0,
      --  Counter clear is enable at the rising edge of GTIOCA input when GTIOCB
--  input is 1
      Val_1)
     with Size => 1;
   for GTCSR_CSCARBH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCA Pin Falling Input during GTIOCB Value Low Source Counter Clear
   --  Enable
   type GTCSR_CSCAFBL_Field is
     (--  Counter clear is disable at the falling edge of GTIOCA input when GTIOCB
--  input is 0
      Val_0,
      --  Counter clear is enable at the falling edge of GTIOCA input when GTIOCB
--  input is 0
      Val_1)
     with Size => 1;
   for GTCSR_CSCAFBL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCA Pin Falling Input during GTIOCB Value High Source Counter Clear
   --  Enable
   type GTCSR_CSCAFBH_Field is
     (--  Counter clear is disable at the falling edge of GTIOCA input when GTIOCB
--  input is 1
      Val_0,
      --  Counter clear is enable at the falling edge of GTIOCA input when GTIOCB
--  input is 1
      Val_1)
     with Size => 1;
   for GTCSR_CSCAFBH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCB Pin Rising Input during GTIOCA Value Low Source Counter Clear
   --  Enable
   type GTCSR_CSCBRAL_Field is
     (--  Counter clear is disable at the rising edge of GTIOCB input when GTIOCA
--  input is 0
      Val_0,
      --  Counter clear is enable at the rising edge of GTIOCB input when GTIOCA
--  input is 0
      Val_1)
     with Size => 1;
   for GTCSR_CSCBRAL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCB Pin Rising Input during GTIOCA Value High Source Counter Clear
   --  Enable
   type GTCSR_CSCBRAH_Field is
     (--  Counter clear is disable at the rising edge of GTIOCB input when GTIOCA
--  input is 1
      Val_0,
      --  Counter clear is enable at the rising edge of GTIOCB input when GTIOCA
--  input is 1
      Val_1)
     with Size => 1;
   for GTCSR_CSCBRAH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCB Pin Falling Input during GTIOCA Value Low Source Counter Clear
   --  Enable
   type GTCSR_CSCBFAL_Field is
     (--  Counter clear is disable at the falling edge of GTIOCB input when GTIOCA
--  input is 0
      Val_0,
      --  Counter clear is enable at the falling edge of GTIOCB input when GTIOCA
--  input is 0
      Val_1)
     with Size => 1;
   for GTCSR_CSCBFAL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCB Pin Falling Input during GTIOCA Value High Source Counter Clear
   --  Enable
   type GTCSR_CSCBFAH_Field is
     (--  Counter clear is disable at the falling edge of GTIOCB input when GTIOCA
--  input is 1
      Val_0,
      --  Counter clear is enable at the falling edge of GTIOCB input when GTIOCA
--  input is 1
      Val_1)
     with Size => 1;
   for GTCSR_CSCBFAH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTA Event Source Counter Clear Enable
   type GTCSR_CSELCA_Field is
     (--  Counter clear is disable at the ELC_GPTA input
      Val_0,
      --  Counter clear is enable at the ELC_GPTA input
      Val_1)
     with Size => 1;
   for GTCSR_CSELCA_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTB Event Source Counter Clear Enable
   type GTCSR_CSELCB_Field is
     (--  Counter clear is disable at the ELC_GPTB input
      Val_0,
      --  Counter clear is enable at the ELC_GPTB input
      Val_1)
     with Size => 1;
   for GTCSR_CSELCB_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTC Event Source Counter Clear Enable
   type GTCSR_CSELCC_Field is
     (--  Counter clear is disable at the ELC_GPTC input
      Val_0,
      --  Counter clear is enable at the ELC_GPTC input
      Val_1)
     with Size => 1;
   for GTCSR_CSELCC_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTD Event Source Counter Clear Enable
   type GTCSR_CSELCD_Field is
     (--  Counter clear is disable at the ELC_GPTD input
      Val_0,
      --  Counter clear is enable at the ELC_GPTD input
      Val_1)
     with Size => 1;
   for GTCSR_CSELCD_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTE Event Source Counter Clear Enable
   type GTCSR_CSELCE_Field is
     (--  Counter clear is disable at the ELC_GPTE input
      Val_0,
      --  Counter clear is enable at the ELC_GPTE input
      Val_1)
     with Size => 1;
   for GTCSR_CSELCE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTF Event Source Counter Clear Enable
   type GTCSR_CSELCF_Field is
     (--  Counter clear is disable at the ELC_GPTF input
      Val_0,
      --  Counter clear is enable at the ELC_GPTF input
      Val_1)
     with Size => 1;
   for GTCSR_CSELCF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTG Event Source Counter Clear Enable
   type GTCSR_CSELCG_Field is
     (--  Counter clear is disable at the ELC_GPTG input
      Val_0,
      --  Counter clear is enable at the ELC_GPTG input
      Val_1)
     with Size => 1;
   for GTCSR_CSELCG_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTH Event Source Counter Clear Enable
   type GTCSR_CSELCH_Field is
     (--  Counter clear is disable at the ELC_GPTH input
      Val_0,
      --  Counter clear is enable at the ELC_GPTH input
      Val_1)
     with Size => 1;
   for GTCSR_CSELCH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype GTCSR_Reserved_Field_1 is R7FA4M1AB.UInt7;

   --  Software Source Counter Clear Enable
   type GTCSR_CCLR_Field is
     (--  Counter clear is disable by the GTCLR register
      Val_0,
      --  Counter clear is enable by the GTCLR register
      Val_1)
     with Size => 1;
   for GTCSR_CCLR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  General PWM Timer Clear Source Select Register
   type GTCSR_Register is record
      --  GTETRGA Pin Rising Input Source Counter Clear Enable
      CSGTRGAR   : GTCSR_CSGTRGAR_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTETRGA Pin Falling Input Source Counter Clear Enable
      CSGTRGAF   : GTCSR_CSGTRGAF_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTETRGB Pin Rising Input Source Counter Clear Enable
      CSGTRGBR   : GTCSR_CSGTRGBR_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTETRGB Pin Falling Input Source Counter Clear Enable
      CSGTRGBF   : GTCSR_CSGTRGBF_Field := R7FA4M1AB.GPT164.Val_0;
      --  These bits are read as 0000. The write value should be 0000.
      Reserved   : GTCSR_Reserved_Field := 16#0#;
      --  GTIOCA Pin Rising Input during GTIOCB Value Low Source Counter Clear
      --  Enable
      CSCARBL    : GTCSR_CSCARBL_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCA Pin Rising Input during GTIOCB Value High Source Counter Clear
      --  Enable
      CSCARBH    : GTCSR_CSCARBH_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCA Pin Falling Input during GTIOCB Value Low Source Counter Clear
      --  Enable
      CSCAFBL    : GTCSR_CSCAFBL_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCA Pin Falling Input during GTIOCB Value High Source Counter
      --  Clear Enable
      CSCAFBH    : GTCSR_CSCAFBH_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCB Pin Rising Input during GTIOCA Value Low Source Counter Clear
      --  Enable
      CSCBRAL    : GTCSR_CSCBRAL_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCB Pin Rising Input during GTIOCA Value High Source Counter Clear
      --  Enable
      CSCBRAH    : GTCSR_CSCBRAH_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCB Pin Falling Input during GTIOCA Value Low Source Counter Clear
      --  Enable
      CSCBFAL    : GTCSR_CSCBFAL_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCB Pin Falling Input during GTIOCA Value High Source Counter
      --  Clear Enable
      CSCBFAH    : GTCSR_CSCBFAH_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTA Event Source Counter Clear Enable
      CSELCA     : GTCSR_CSELCA_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTB Event Source Counter Clear Enable
      CSELCB     : GTCSR_CSELCB_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTC Event Source Counter Clear Enable
      CSELCC     : GTCSR_CSELCC_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTD Event Source Counter Clear Enable
      CSELCD     : GTCSR_CSELCD_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTE Event Source Counter Clear Enable
      CSELCE     : GTCSR_CSELCE_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTF Event Source Counter Clear Enable
      CSELCF     : GTCSR_CSELCF_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTG Event Source Counter Clear Enable
      CSELCG     : GTCSR_CSELCG_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTH Event Source Counter Clear Enable
      CSELCH     : GTCSR_CSELCH_Field := R7FA4M1AB.GPT164.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved_1 : GTCSR_Reserved_Field_1 := 16#0#;
      --  Software Source Counter Clear Enable
      CCLR       : GTCSR_CCLR_Field := R7FA4M1AB.GPT164.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTCSR_Register use record
      CSGTRGAR   at 0 range 0 .. 0;
      CSGTRGAF   at 0 range 1 .. 1;
      CSGTRGBR   at 0 range 2 .. 2;
      CSGTRGBF   at 0 range 3 .. 3;
      Reserved   at 0 range 4 .. 7;
      CSCARBL    at 0 range 8 .. 8;
      CSCARBH    at 0 range 9 .. 9;
      CSCAFBL    at 0 range 10 .. 10;
      CSCAFBH    at 0 range 11 .. 11;
      CSCBRAL    at 0 range 12 .. 12;
      CSCBRAH    at 0 range 13 .. 13;
      CSCBFAL    at 0 range 14 .. 14;
      CSCBFAH    at 0 range 15 .. 15;
      CSELCA     at 0 range 16 .. 16;
      CSELCB     at 0 range 17 .. 17;
      CSELCC     at 0 range 18 .. 18;
      CSELCD     at 0 range 19 .. 19;
      CSELCE     at 0 range 20 .. 20;
      CSELCF     at 0 range 21 .. 21;
      CSELCG     at 0 range 22 .. 22;
      CSELCH     at 0 range 23 .. 23;
      Reserved_1 at 0 range 24 .. 30;
      CCLR       at 0 range 31 .. 31;
   end record;

   --  GTETRGA Pin Rising Input Source Counter Count Up Enable
   type GTUPSR_USGTRGAR_Field is
     (--  Counter count up is disable at the rising edge of GTETRGA input
      Val_0,
      --  Counter count up is enable at the rising edge of GTETRGA input
      Val_1)
     with Size => 1;
   for GTUPSR_USGTRGAR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTETRGA Pin Falling Input Source Counter Count Up Enable
   type GTUPSR_USGTRGAF_Field is
     (--  Counter count up is disable at the falling edge of GTETRGA input
      Val_0,
      --  Counter count up is enable at the falling edge of GTETRGA input
      Val_1)
     with Size => 1;
   for GTUPSR_USGTRGAF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTETRGB Pin Rising Input Source Counter Count Up Enable
   type GTUPSR_USGTRGBR_Field is
     (--  Counter count up is disable at the rising edge of GTETRGB input
      Val_0,
      --  Counter count up is enable at the rising edge of GTETRGB input
      Val_1)
     with Size => 1;
   for GTUPSR_USGTRGBR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTETRGB Pin Falling Input Source Counter Count Up Enable
   type GTUPSR_USGTRGBF_Field is
     (--  Counter count up is disable at the falling edge of GTETRGB input
      Val_0,
      --  Counter count up is enable at the falling edge of GTETRGB input
      Val_1)
     with Size => 1;
   for GTUPSR_USGTRGBF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCA Pin Rising Input during GTIOCB Value Low Source Counter Count Up
   --  Enable
   type GTUPSR_USCARBL_Field is
     (--  Counter count up is disable at the rising edge of GTIOCA input when GTIOCB
--  input is 0
      Val_0,
      --  Counter count up is enable at the rising edge of GTIOCA input when GTIOCB
--  input is 0
      Val_1)
     with Size => 1;
   for GTUPSR_USCARBL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCA Pin Rising Input during GTIOCB Value High Source Counter Count Up
   --  Enable
   type GTUPSR_USCARBH_Field is
     (--  Counter count up is disable at the rising edge of GTIOCA input when GTIOCB
--  input is 1
      Val_0,
      --  Counter count up is enable at the rising edge of GTIOCA input when GTIOCB
--  input is 1
      Val_1)
     with Size => 1;
   for GTUPSR_USCARBH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCA Pin Falling Input during GTIOCB Value Low Source Counter Count Up
   --  Enable
   type GTUPSR_USCAFBL_Field is
     (--  Counter count up is disable at the falling edge of GTIOCA input when GTIOCB
--  input is 0
      Val_0,
      --  Counter count up is enable at the falling edge of GTIOCA input when GTIOCB
--  input is 0
      Val_1)
     with Size => 1;
   for GTUPSR_USCAFBL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCA Pin Falling Input during GTIOCB Value High Source Counter Count
   --  Up Enable
   type GTUPSR_USCAFBH_Field is
     (--  Counter count up is disable at the falling edge of GTIOCA input when GTIOCB
--  input is 1
      Val_0,
      --  Counter count up is enable at the falling edge of GTIOCA input when GTIOCB
--  input is 1
      Val_1)
     with Size => 1;
   for GTUPSR_USCAFBH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCB Pin Rising Input during GTIOCA Value Low Source Counter Count Up
   --  Enable
   type GTUPSR_USCBRAL_Field is
     (--  Counter count up is disable at the rising edge of GTIOCB input when GTIOCA
--  input is 0
      Val_0,
      --  Counter count up is enable at the rising edge of GTIOCB input when GTIOCA
--  input is 0
      Val_1)
     with Size => 1;
   for GTUPSR_USCBRAL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCB Pin Rising Input during GTIOCA Value High Source Counter Count Up
   --  Enable
   type GTUPSR_USCBRAH_Field is
     (--  Counter count up is disable at the rising edge of GTIOCB input when GTIOCA
--  input is 1
      Val_0,
      --  Counter count up is enable at the rising edge of GTIOCB input when GTIOCA
--  input is 1
      Val_1)
     with Size => 1;
   for GTUPSR_USCBRAH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCB Pin Falling Input during GTIOCA Value Low Source Counter Count Up
   --  Enable
   type GTUPSR_USCBFAL_Field is
     (--  Counter count up is disable at the falling edge of GTIOCB input when GTIOCA
--  input is 0
      Val_0,
      --  Counter count up is enable at the falling edge of GTIOCB input when GTIOCA
--  input is 0
      Val_1)
     with Size => 1;
   for GTUPSR_USCBFAL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCB Pin Falling Input during GTIOCA Value High Source Counter Count
   --  Up Enable
   type GTUPSR_USCBFAH_Field is
     (--  Counter count up is disable at the falling edge of GTIOCB input when GTIOCA
--  input is 1
      Val_0,
      --  Counter count up is enable at the falling edge of GTIOCB input when GTIOCA
--  input is 1
      Val_1)
     with Size => 1;
   for GTUPSR_USCBFAH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTA Event Source Counter Count Up Enable
   type GTUPSR_USELCA_Field is
     (--  Counter count up is disable at the ELC_GPTA input
      Val_0,
      --  Counter count up is enable at the ELC_GPTA input
      Val_1)
     with Size => 1;
   for GTUPSR_USELCA_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTB Event Source Counter Count Up Enable
   type GTUPSR_USELCB_Field is
     (--  Counter count up is disable at the ELC_GPTB input
      Val_0,
      --  Counter count up is enable at the ELC_GPTB input
      Val_1)
     with Size => 1;
   for GTUPSR_USELCB_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTC Event Source Counter Count Up Enable
   type GTUPSR_USELCC_Field is
     (--  Counter count up is disable at the ELC_GPTC input
      Val_0,
      --  Counter count up is enable at the ELC_GPTC input
      Val_1)
     with Size => 1;
   for GTUPSR_USELCC_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTD Event Source Counter Count Up Enable
   type GTUPSR_USELCD_Field is
     (--  Counter count up is disable at the ELC_GPTD input
      Val_0,
      --  Counter count up is enable at the ELC_GPTD input
      Val_1)
     with Size => 1;
   for GTUPSR_USELCD_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTE Event Source Counter Count Up Enable
   type GTUPSR_USELCE_Field is
     (--  Counter count up is disable at the ELC_GPTE input
      Val_0,
      --  Counter count up is enable at the ELC_GPTE input
      Val_1)
     with Size => 1;
   for GTUPSR_USELCE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTF Event Source Counter Count Up Enable
   type GTUPSR_USELCF_Field is
     (--  Counter count up is disable at the ELC_GPTF input
      Val_0,
      --  Counter count up is enable at the ELC_GPTF input
      Val_1)
     with Size => 1;
   for GTUPSR_USELCF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTG Event Source Counter Count Up Enable
   type GTUPSR_USELCG_Field is
     (--  Counter count up is disable at the ELC_GPTG input
      Val_0,
      --  Counter count up is enable at the ELC_GPTG input
      Val_1)
     with Size => 1;
   for GTUPSR_USELCG_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTH Event Source Counter Count Up Enable
   type GTUPSR_USELCH_Field is
     (--  Counter count up is disable at the ELC_GPTH input
      Val_0,
      --  Counter count up is enable at the ELC_GPTH input
      Val_1)
     with Size => 1;
   for GTUPSR_USELCH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  General PWM Timer Up Count Source Select Register
   type GTUPSR_Register is record
      --  GTETRGA Pin Rising Input Source Counter Count Up Enable
      USGTRGAR       : GTUPSR_USGTRGAR_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTETRGA Pin Falling Input Source Counter Count Up Enable
      USGTRGAF       : GTUPSR_USGTRGAF_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTETRGB Pin Rising Input Source Counter Count Up Enable
      USGTRGBR       : GTUPSR_USGTRGBR_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTETRGB Pin Falling Input Source Counter Count Up Enable
      USGTRGBF       : GTUPSR_USGTRGBF_Field := R7FA4M1AB.GPT164.Val_0;
      --  unspecified
      Reserved_4_7   : R7FA4M1AB.UInt4 := 16#0#;
      --  GTIOCA Pin Rising Input during GTIOCB Value Low Source Counter Count
      --  Up Enable
      USCARBL        : GTUPSR_USCARBL_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCA Pin Rising Input during GTIOCB Value High Source Counter Count
      --  Up Enable
      USCARBH        : GTUPSR_USCARBH_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCA Pin Falling Input during GTIOCB Value Low Source Counter Count
      --  Up Enable
      USCAFBL        : GTUPSR_USCAFBL_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCA Pin Falling Input during GTIOCB Value High Source Counter
      --  Count Up Enable
      USCAFBH        : GTUPSR_USCAFBH_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCB Pin Rising Input during GTIOCA Value Low Source Counter Count
      --  Up Enable
      USCBRAL        : GTUPSR_USCBRAL_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCB Pin Rising Input during GTIOCA Value High Source Counter Count
      --  Up Enable
      USCBRAH        : GTUPSR_USCBRAH_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCB Pin Falling Input during GTIOCA Value Low Source Counter Count
      --  Up Enable
      USCBFAL        : GTUPSR_USCBFAL_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCB Pin Falling Input during GTIOCA Value High Source Counter
      --  Count Up Enable
      USCBFAH        : GTUPSR_USCBFAH_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTA Event Source Counter Count Up Enable
      USELCA         : GTUPSR_USELCA_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTB Event Source Counter Count Up Enable
      USELCB         : GTUPSR_USELCB_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTC Event Source Counter Count Up Enable
      USELCC         : GTUPSR_USELCC_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTD Event Source Counter Count Up Enable
      USELCD         : GTUPSR_USELCD_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTE Event Source Counter Count Up Enable
      USELCE         : GTUPSR_USELCE_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTF Event Source Counter Count Up Enable
      USELCF         : GTUPSR_USELCF_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTG Event Source Counter Count Up Enable
      USELCG         : GTUPSR_USELCG_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTH Event Source Counter Count Up Enable
      USELCH         : GTUPSR_USELCH_Field := R7FA4M1AB.GPT164.Val_0;
      --  unspecified
      Reserved_24_31 : R7FA4M1AB.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTUPSR_Register use record
      USGTRGAR       at 0 range 0 .. 0;
      USGTRGAF       at 0 range 1 .. 1;
      USGTRGBR       at 0 range 2 .. 2;
      USGTRGBF       at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      USCARBL        at 0 range 8 .. 8;
      USCARBH        at 0 range 9 .. 9;
      USCAFBL        at 0 range 10 .. 10;
      USCAFBH        at 0 range 11 .. 11;
      USCBRAL        at 0 range 12 .. 12;
      USCBRAH        at 0 range 13 .. 13;
      USCBFAL        at 0 range 14 .. 14;
      USCBFAH        at 0 range 15 .. 15;
      USELCA         at 0 range 16 .. 16;
      USELCB         at 0 range 17 .. 17;
      USELCC         at 0 range 18 .. 18;
      USELCD         at 0 range 19 .. 19;
      USELCE         at 0 range 20 .. 20;
      USELCF         at 0 range 21 .. 21;
      USELCG         at 0 range 22 .. 22;
      USELCH         at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  GTETRGA Pin Rising Input Source Counter Count Down Enable
   type GTDNSR_DSGTRGAR_Field is
     (--  Counter count down is disable at the rising edge of GTETRGA input
      Val_0,
      --  Counter count down is enable at the rising edge of GTETRGA input
      Val_1)
     with Size => 1;
   for GTDNSR_DSGTRGAR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTETRGA Pin Falling Input Source Counter Count Down Enable
   type GTDNSR_DSGTRGAF_Field is
     (--  Counter count down is disable at the falling edge of GTETRGA input
      Val_0,
      --  Counter count down is enable at the falling edge of GTETRGA input
      Val_1)
     with Size => 1;
   for GTDNSR_DSGTRGAF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTETRGB Pin Rising Input Source Counter Count Down Enable
   type GTDNSR_DSGTRGBR_Field is
     (--  Counter count down is disable at the rising edge of GTETRGB input
      Val_0,
      --  Counter count down is enable at the rising edge of GTETRGB input
      Val_1)
     with Size => 1;
   for GTDNSR_DSGTRGBR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTETRGB Pin Falling Input Source Counter Count Down Enable
   type GTDNSR_DSGTRGBF_Field is
     (--  Counter count down is disable at the falling edge of GTETRGB input
      Val_0,
      --  Counter count down is enable at the falling edge of GTETRGB input
      Val_1)
     with Size => 1;
   for GTDNSR_DSGTRGBF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCA Pin Rising Input during GTIOCB Value Low Source Counter Count
   --  Down Enable
   type GTDNSR_DSCARBL_Field is
     (--  Counter count down is disable at the rising edge of GTIOCA input when
--  GTIOCB input is 0
      Val_0,
      --  Counter count down is enable at the rising edge of GTIOCA input when GTIOCB
--  input is 0
      Val_1)
     with Size => 1;
   for GTDNSR_DSCARBL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCA Pin Rising Input during GTIOCB Value High Source Counter Count
   --  Down Enable
   type GTDNSR_DSCARBH_Field is
     (--  Counter count down is disable at the rising edge of GTIOCA input when
--  GTIOCB input is 1
      Val_0,
      --  Counter count down is enable at the rising edge of GTIOCA input when GTIOCB
--  input is 1
      Val_1)
     with Size => 1;
   for GTDNSR_DSCARBH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCA Pin Falling Input during GTIOCB Value Low Source Counter Count
   --  Down Enable
   type GTDNSR_DSCAFBL_Field is
     (--  Counter count down is disable at the falling edge of GTIOCA input when
--  GTIOCB input is 0
      Val_0,
      --  Counter count down is enable at the falling edge of GTIOCA input when
--  GTIOCB input is 0
      Val_1)
     with Size => 1;
   for GTDNSR_DSCAFBL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCA Pin Falling Input during GTIOCB Value High Source Counter Count
   --  Down Enable
   type GTDNSR_DSCAFBH_Field is
     (--  Counter count down is disable at the falling edge of GTIOCA input when
--  GTIOCB input is 1
      Val_0,
      --  Counter count down is enable at the falling edge of GTIOCA input when
--  GTIOCB input is 1
      Val_1)
     with Size => 1;
   for GTDNSR_DSCAFBH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCB Pin Rising Input during GTIOCA Value Low Source Counter Count
   --  Down Enable
   type GTDNSR_DSCBRAL_Field is
     (--  Counter count down is disable at the rising edge of GTIOCB input when
--  GTIOCA input is 0
      Val_0,
      --  Counter count down is enable at the rising edge of GTIOCB input when GTIOCA
--  input is 0
      Val_1)
     with Size => 1;
   for GTDNSR_DSCBRAL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCB Pin Rising Input during GTIOCA Value High Source Counter Count
   --  Down Enable
   type GTDNSR_DSCBRAH_Field is
     (--  Counter count down is disable at the rising edge of GTIOCB input when
--  GTIOCA input is 1
      Val_0,
      --  Counter count down is enable at the rising edge of GTIOCB input when GTIOCA
--  input is 1
      Val_1)
     with Size => 1;
   for GTDNSR_DSCBRAH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCB Pin Falling Input during GTIOCA Value Low Source Counter Count
   --  Down Enable
   type GTDNSR_DSCBFAL_Field is
     (--  Counter count down is disable at the falling edge of GTIOCB input when
--  GTIOCA input is 0
      Val_0,
      --  Counter count down is enable at the falling edge of GTIOCB input when
--  GTIOCA input is 0
      Val_1)
     with Size => 1;
   for GTDNSR_DSCBFAL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCB Pin Falling Input during GTIOCA Value High Source Counter Count
   --  Down Enable
   type GTDNSR_DSCBFAH_Field is
     (--  Counter count down is disable at the falling edge of GTIOCB input when
--  GTIOCA input is 1
      Val_0,
      --  Counter count down is enable at the falling edge of GTIOCB input when
--  GTIOCA input is 1
      Val_1)
     with Size => 1;
   for GTDNSR_DSCBFAH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTA Event Source Counter Count Down Enable
   type GTDNSR_DSELCA_Field is
     (--  Counter count down is disable at the ELC_GPTA input
      Val_0,
      --  Counter count down is enable at the ELC_GPTA input
      Val_1)
     with Size => 1;
   for GTDNSR_DSELCA_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTB Event Source Counter Count Down Enable
   type GTDNSR_DSELCB_Field is
     (--  Counter count down is disable at the ELC_GPTB input
      Val_0,
      --  Counter count down is enable at the ELC_GPTB input
      Val_1)
     with Size => 1;
   for GTDNSR_DSELCB_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTC Event Source Counter Count Down Enable
   type GTDNSR_DSELCC_Field is
     (--  Counter count down is disable at the ELC_GPTC input
      Val_0,
      --  Counter count down is enable at the ELC_GPTC input
      Val_1)
     with Size => 1;
   for GTDNSR_DSELCC_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTD Event Source Counter Count Down Enable
   type GTDNSR_DSELCD_Field is
     (--  Counter count down is disable at the ELC_GPTD input
      Val_0,
      --  Counter count down is enable at the ELC_GPTD input
      Val_1)
     with Size => 1;
   for GTDNSR_DSELCD_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTE Event Source Counter Count Down Enable
   type GTDNSR_DSELCE_Field is
     (--  Counter count down is disable at the ELC_GPTE input
      Val_0,
      --  Counter count down is enable at the ELC_GPTE input
      Val_1)
     with Size => 1;
   for GTDNSR_DSELCE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTF Event Source Counter Count Down Enable
   type GTDNSR_DSELCF_Field is
     (--  Counter count down is disable at the ELC_GPTF input
      Val_0,
      --  Counter count down is enable at the ELC_GPTF input
      Val_1)
     with Size => 1;
   for GTDNSR_DSELCF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTG Event Source Counter Count Down Enable
   type GTDNSR_DSELCG_Field is
     (--  Counter count down is disable at the ELC_GPTG input
      Val_0,
      --  Counter count down is enable at the ELC_GPTG input
      Val_1)
     with Size => 1;
   for GTDNSR_DSELCG_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTH Event Source Counter Count Down Enable
   type GTDNSR_DSELCH_Field is
     (--  Counter count down is disable at the ELC_GPTH input
      Val_0,
      --  Counter count down is enable at the ELC_GPTH input
      Val_1)
     with Size => 1;
   for GTDNSR_DSELCH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  General PWM Timer Down Count Source Select Register
   type GTDNSR_Register is record
      --  GTETRGA Pin Rising Input Source Counter Count Down Enable
      DSGTRGAR       : GTDNSR_DSGTRGAR_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTETRGA Pin Falling Input Source Counter Count Down Enable
      DSGTRGAF       : GTDNSR_DSGTRGAF_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTETRGB Pin Rising Input Source Counter Count Down Enable
      DSGTRGBR       : GTDNSR_DSGTRGBR_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTETRGB Pin Falling Input Source Counter Count Down Enable
      DSGTRGBF       : GTDNSR_DSGTRGBF_Field := R7FA4M1AB.GPT164.Val_0;
      --  unspecified
      Reserved_4_7   : R7FA4M1AB.UInt4 := 16#0#;
      --  GTIOCA Pin Rising Input during GTIOCB Value Low Source Counter Count
      --  Down Enable
      DSCARBL        : GTDNSR_DSCARBL_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCA Pin Rising Input during GTIOCB Value High Source Counter Count
      --  Down Enable
      DSCARBH        : GTDNSR_DSCARBH_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCA Pin Falling Input during GTIOCB Value Low Source Counter Count
      --  Down Enable
      DSCAFBL        : GTDNSR_DSCAFBL_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCA Pin Falling Input during GTIOCB Value High Source Counter
      --  Count Down Enable
      DSCAFBH        : GTDNSR_DSCAFBH_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCB Pin Rising Input during GTIOCA Value Low Source Counter Count
      --  Down Enable
      DSCBRAL        : GTDNSR_DSCBRAL_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCB Pin Rising Input during GTIOCA Value High Source Counter Count
      --  Down Enable
      DSCBRAH        : GTDNSR_DSCBRAH_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCB Pin Falling Input during GTIOCA Value Low Source Counter Count
      --  Down Enable
      DSCBFAL        : GTDNSR_DSCBFAL_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCB Pin Falling Input during GTIOCA Value High Source Counter
      --  Count Down Enable
      DSCBFAH        : GTDNSR_DSCBFAH_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTA Event Source Counter Count Down Enable
      DSELCA         : GTDNSR_DSELCA_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTB Event Source Counter Count Down Enable
      DSELCB         : GTDNSR_DSELCB_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTC Event Source Counter Count Down Enable
      DSELCC         : GTDNSR_DSELCC_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTD Event Source Counter Count Down Enable
      DSELCD         : GTDNSR_DSELCD_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTE Event Source Counter Count Down Enable
      DSELCE         : GTDNSR_DSELCE_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTF Event Source Counter Count Down Enable
      DSELCF         : GTDNSR_DSELCF_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTG Event Source Counter Count Down Enable
      DSELCG         : GTDNSR_DSELCG_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTH Event Source Counter Count Down Enable
      DSELCH         : GTDNSR_DSELCH_Field := R7FA4M1AB.GPT164.Val_0;
      --  unspecified
      Reserved_24_31 : R7FA4M1AB.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTDNSR_Register use record
      DSGTRGAR       at 0 range 0 .. 0;
      DSGTRGAF       at 0 range 1 .. 1;
      DSGTRGBR       at 0 range 2 .. 2;
      DSGTRGBF       at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      DSCARBL        at 0 range 8 .. 8;
      DSCARBH        at 0 range 9 .. 9;
      DSCAFBL        at 0 range 10 .. 10;
      DSCAFBH        at 0 range 11 .. 11;
      DSCBRAL        at 0 range 12 .. 12;
      DSCBRAH        at 0 range 13 .. 13;
      DSCBFAL        at 0 range 14 .. 14;
      DSCBFAH        at 0 range 15 .. 15;
      DSELCA         at 0 range 16 .. 16;
      DSELCB         at 0 range 17 .. 17;
      DSELCC         at 0 range 18 .. 18;
      DSELCD         at 0 range 19 .. 19;
      DSELCE         at 0 range 20 .. 20;
      DSELCF         at 0 range 21 .. 21;
      DSELCG         at 0 range 22 .. 22;
      DSELCH         at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  GTETRGA Pin Rising Input Source GTCCRA Input Capture Enable
   type GTICASR_ASGTRGAR_Field is
     (--  GTCCRA input capture is disable at the rising edge of GTETRGA input
      Val_0,
      --  GTCCRA input capture is enable at the rising edge of GTETRGA input
      Val_1)
     with Size => 1;
   for GTICASR_ASGTRGAR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTETRGA Pin Falling Input Source GTCCRA Input Capture Enable
   type GTICASR_ASGTRGAF_Field is
     (--  GTCCRA input capture is disable at the falling edge of GTETRGA input
      Val_0,
      --  GTCCRA input capture is enable at the falling edge of GTETRGA input
      Val_1)
     with Size => 1;
   for GTICASR_ASGTRGAF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTETRGB Pin Rising Input Source GTCCRA Input Capture Enable
   type GTICASR_ASGTRGBR_Field is
     (--  GTCCRA input capture is disable at the rising edge of GTETRGB input
      Val_0,
      --  GTCCRA input capture is enable at the rising edge of GTETRGB input
      Val_1)
     with Size => 1;
   for GTICASR_ASGTRGBR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTETRGB Pin Falling Input Source GTCCRA Input Capture Enable
   type GTICASR_ASGTRGBF_Field is
     (--  GTCCRA input capture is disable at the falling edge of GTETRGB input
      Val_0,
      --  GTCCRA input capture is enable at the falling edge of GTETRGB input
      Val_1)
     with Size => 1;
   for GTICASR_ASGTRGBF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCA Pin Rising Input during GTIOCB Value Low Source GTCCRA Input
   --  Capture Enable
   type GTICASR_ASCARBL_Field is
     (--  GTCCRA input capture is disable at the rising edge of GTIOCA input when
--  GTIOCB input is 0
      Val_0,
      --  GTCCRA input capture is enable at the rising edge of GTIOCA input when
--  GTIOCB input is 0
      Val_1)
     with Size => 1;
   for GTICASR_ASCARBL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCA Pin Rising Input during GTIOCB Value High Source GTCCRA Input
   --  Capture Enable
   type GTICASR_ASCARBH_Field is
     (--  GTCCRA input capture is disable at the rising edge of GTIOCA input when
--  GTIOCB input is 1
      Val_0,
      --  GTCCRA input capture is enable at the rising edge of GTIOCA input when
--  GTIOCB input is 1
      Val_1)
     with Size => 1;
   for GTICASR_ASCARBH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCA Pin Falling Input during GTIOCB Value Low Source GTCCRA Input
   --  Capture Enable
   type GTICASR_ASCAFBL_Field is
     (--  GTCCRA input capture is disable at the falling edge of GTIOCA input when
--  GTIOCB input is 0
      Val_0,
      --  GTCCRA input capture is enable at the falling edge of GTIOCA input when
--  GTIOCB input is 0
      Val_1)
     with Size => 1;
   for GTICASR_ASCAFBL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCA Pin Falling Input during GTIOCB Value High Source GTCCRA Input
   --  Capture Enable
   type GTICASR_ASCAFBH_Field is
     (--  GTCCRA input capture is disable at the falling edge of GTIOCA input when
--  GTIOCB input is 1
      Val_0,
      --  GTCCRA input capture is enable at the falling edge of GTIOCA input when
--  GTIOCB input is 1
      Val_1)
     with Size => 1;
   for GTICASR_ASCAFBH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCB Pin Rising Input during GTIOCA Value Low Source GTCCRA Input
   --  Capture Enable
   type GTICASR_ASCBRAL_Field is
     (--  GTCCRA input capture is disable at the rising edge of GTIOCB input when
--  GTIOCA input is 0
      Val_0,
      --  GTCCRA input capture is enable at the rising edge of GTIOCB input when
--  GTIOCA input is 0
      Val_1)
     with Size => 1;
   for GTICASR_ASCBRAL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCB Pin Rising Input during GTIOCA Value High Source GTCCRA Input
   --  Capture Enable
   type GTICASR_ASCBRAH_Field is
     (--  GTCCRA input capture is disable at the rising edge of GTIOCB input when
--  GTIOCA input is 1
      Val_0,
      --  GTCCRA input capture is enable at the rising edge of GTIOCB input when
--  GTIOCA input is 1
      Val_1)
     with Size => 1;
   for GTICASR_ASCBRAH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCB Pin Falling Input during GTIOCA Value Low Source GTCCRA Input
   --  Capture Enable
   type GTICASR_ASCBFAL_Field is
     (--  GTCCRA input capture is disable at the falling edge of GTIOCB input when
--  GTIOCA input is 0
      Val_0,
      --  GTCCRA input capture is enable at the falling edge of GTIOCB input when
--  GTIOCA input is 0
      Val_1)
     with Size => 1;
   for GTICASR_ASCBFAL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCB Pin Falling Input during GTIOCA Value High Source GTCCRA Input
   --  Capture Enable
   type GTICASR_ASCBFAH_Field is
     (--  GTCCRA input capture is disable at the falling edge of GTIOCB input when
--  GTIOCA input is 1
      Val_0,
      --  GTCCRA input capture is enable at the falling edge of GTIOCB input when
--  GTIOCA input is 1
      Val_1)
     with Size => 1;
   for GTICASR_ASCBFAH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTA Event Source GTCCRA Input Capture Enable
   type GTICASR_ASELCA_Field is
     (--  GTCCRA input capture is disable at the ELC_GPTA input
      Val_0,
      --  GTCCRA input capture is enable at the ELC_GPTA input
      Val_1)
     with Size => 1;
   for GTICASR_ASELCA_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTB Event Source GTCCRA Input Capture Enable
   type GTICASR_ASELCB_Field is
     (--  GTCCRA input capture is disable at the ELC_GPTB input
      Val_0,
      --  GTCCRA input capture is enable at the ELC_GPTB input
      Val_1)
     with Size => 1;
   for GTICASR_ASELCB_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTC Event Source GTCCRA Input Capture Enable
   type GTICASR_ASELCC_Field is
     (--  GTCCRA input capture is disable at the ELC_GPTC input
      Val_0,
      --  GTCCRA input capture is enable at the ELC_GPTC input
      Val_1)
     with Size => 1;
   for GTICASR_ASELCC_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTD Event Source GTCCRA Input Capture Enable
   type GTICASR_ASELCD_Field is
     (--  GTCCRA input capture is disable at the ELC_GPTD input
      Val_0,
      --  GTCCRA input capture is enable at the ELC_GPTD input
      Val_1)
     with Size => 1;
   for GTICASR_ASELCD_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTE Event Source GTCCRA Input Capture Enable
   type GTICASR_ASELCE_Field is
     (--  GTCCRA input capture is disable at the ELC_GPTE input
      Val_0,
      --  GTCCRA input capture is enable at the ELC_GPTE input
      Val_1)
     with Size => 1;
   for GTICASR_ASELCE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTF Event Source GTCCRA Input Capture Enable
   type GTICASR_ASELCF_Field is
     (--  GTCCRA input capture is disable at the ELC_GPTF input
      Val_0,
      --  GTCCRA input capture is enable at the ELC_GPTF input
      Val_1)
     with Size => 1;
   for GTICASR_ASELCF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTG Event Source GTCCRA Input Capture Enable
   type GTICASR_ASELCG_Field is
     (--  GTCCRA input capture is disable at the ELC_GPTG input
      Val_0,
      --  GTCCRA input capture is enable at the ELC_GPTG input
      Val_1)
     with Size => 1;
   for GTICASR_ASELCG_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTH Event Source GTCCRA Input Capture Enable
   type GTICASR_ASELCH_Field is
     (--  GTCCRA input capture is disable at the ELC_GPTH input
      Val_0,
      --  GTCCRA input capture is enable at the ELC_GPTH input
      Val_1)
     with Size => 1;
   for GTICASR_ASELCH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  General PWM Timer Input Capture Source Select Register A
   type GTICASR_Register is record
      --  GTETRGA Pin Rising Input Source GTCCRA Input Capture Enable
      ASGTRGAR       : GTICASR_ASGTRGAR_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTETRGA Pin Falling Input Source GTCCRA Input Capture Enable
      ASGTRGAF       : GTICASR_ASGTRGAF_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTETRGB Pin Rising Input Source GTCCRA Input Capture Enable
      ASGTRGBR       : GTICASR_ASGTRGBR_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTETRGB Pin Falling Input Source GTCCRA Input Capture Enable
      ASGTRGBF       : GTICASR_ASGTRGBF_Field := R7FA4M1AB.GPT164.Val_0;
      --  unspecified
      Reserved_4_7   : R7FA4M1AB.UInt4 := 16#0#;
      --  GTIOCA Pin Rising Input during GTIOCB Value Low Source GTCCRA Input
      --  Capture Enable
      ASCARBL        : GTICASR_ASCARBL_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCA Pin Rising Input during GTIOCB Value High Source GTCCRA Input
      --  Capture Enable
      ASCARBH        : GTICASR_ASCARBH_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCA Pin Falling Input during GTIOCB Value Low Source GTCCRA Input
      --  Capture Enable
      ASCAFBL        : GTICASR_ASCAFBL_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCA Pin Falling Input during GTIOCB Value High Source GTCCRA Input
      --  Capture Enable
      ASCAFBH        : GTICASR_ASCAFBH_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCB Pin Rising Input during GTIOCA Value Low Source GTCCRA Input
      --  Capture Enable
      ASCBRAL        : GTICASR_ASCBRAL_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCB Pin Rising Input during GTIOCA Value High Source GTCCRA Input
      --  Capture Enable
      ASCBRAH        : GTICASR_ASCBRAH_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCB Pin Falling Input during GTIOCA Value Low Source GTCCRA Input
      --  Capture Enable
      ASCBFAL        : GTICASR_ASCBFAL_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCB Pin Falling Input during GTIOCA Value High Source GTCCRA Input
      --  Capture Enable
      ASCBFAH        : GTICASR_ASCBFAH_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTA Event Source GTCCRA Input Capture Enable
      ASELCA         : GTICASR_ASELCA_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTB Event Source GTCCRA Input Capture Enable
      ASELCB         : GTICASR_ASELCB_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTC Event Source GTCCRA Input Capture Enable
      ASELCC         : GTICASR_ASELCC_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTD Event Source GTCCRA Input Capture Enable
      ASELCD         : GTICASR_ASELCD_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTE Event Source GTCCRA Input Capture Enable
      ASELCE         : GTICASR_ASELCE_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTF Event Source GTCCRA Input Capture Enable
      ASELCF         : GTICASR_ASELCF_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTG Event Source GTCCRA Input Capture Enable
      ASELCG         : GTICASR_ASELCG_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTH Event Source GTCCRA Input Capture Enable
      ASELCH         : GTICASR_ASELCH_Field := R7FA4M1AB.GPT164.Val_0;
      --  unspecified
      Reserved_24_31 : R7FA4M1AB.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTICASR_Register use record
      ASGTRGAR       at 0 range 0 .. 0;
      ASGTRGAF       at 0 range 1 .. 1;
      ASGTRGBR       at 0 range 2 .. 2;
      ASGTRGBF       at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      ASCARBL        at 0 range 8 .. 8;
      ASCARBH        at 0 range 9 .. 9;
      ASCAFBL        at 0 range 10 .. 10;
      ASCAFBH        at 0 range 11 .. 11;
      ASCBRAL        at 0 range 12 .. 12;
      ASCBRAH        at 0 range 13 .. 13;
      ASCBFAL        at 0 range 14 .. 14;
      ASCBFAH        at 0 range 15 .. 15;
      ASELCA         at 0 range 16 .. 16;
      ASELCB         at 0 range 17 .. 17;
      ASELCC         at 0 range 18 .. 18;
      ASELCD         at 0 range 19 .. 19;
      ASELCE         at 0 range 20 .. 20;
      ASELCF         at 0 range 21 .. 21;
      ASELCG         at 0 range 22 .. 22;
      ASELCH         at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  GTETRGA Pin Rising Input Source GTCCRB Input Capture Enable
   type GTICBSR_BSGTRGAR_Field is
     (--  GTCCRB input capture is disable at the rising edge of GTETRGA input
      Val_0,
      --  GTCCRB input capture is enable at the rising edge of GTETRGA input
      Val_1)
     with Size => 1;
   for GTICBSR_BSGTRGAR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTETRGA Pin Falling Input Source GTCCRB Input Capture Enable
   type GTICBSR_BSGTRGAF_Field is
     (--  GTCCRB input capture is disable at the falling edge of GTETRGA input
      Val_0,
      --  GTCCRB input capture is enable at the falling edge of GTETRGA input
      Val_1)
     with Size => 1;
   for GTICBSR_BSGTRGAF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTETRGB Pin Rising Input Source GTCCRB Input Capture Enable
   type GTICBSR_BSGTRGBR_Field is
     (--  GTCCRB input capture is disable at the rising edge of GTETRGB input
      Val_0,
      --  GTCCRB input capture is enable at the rising edge of GTETRGB input
      Val_1)
     with Size => 1;
   for GTICBSR_BSGTRGBR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTETRGB Pin Falling Input Source GTCCRB Input Capture Enable
   type GTICBSR_BSGTRGBF_Field is
     (--  GTCCRB input capture is disable at the falling edge of GTETRGB input
      Val_0,
      --  GTCCRB input capture is enable at the falling edge of GTETRGB input
      Val_1)
     with Size => 1;
   for GTICBSR_BSGTRGBF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCA Pin Rising Input during GTIOCB Value Low Source GTCCRB Input
   --  Capture Enable
   type GTICBSR_BSCARBL_Field is
     (--  GTCCRB input capture is disable at the rising edge of GTIOCA input when
--  GTIOCB input is 0
      Val_0,
      --  GTCCRB input capture is enable at the rising edge of GTIOCA input when
--  GTIOCB input is 0
      Val_1)
     with Size => 1;
   for GTICBSR_BSCARBL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCA Pin Rising Input during GTIOCB Value High Source GTCCRB Input
   --  Capture Enable
   type GTICBSR_BSCARBH_Field is
     (--  GTCCRB input capture is disable at the rising edge of GTIOCA input when
--  GTIOCB input is 1
      Val_0,
      --  GTCCRB input capture is enable at the rising edge of GTIOCA input when
--  GTIOCB input is 1
      Val_1)
     with Size => 1;
   for GTICBSR_BSCARBH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCA Pin Falling Input during GTIOCB Value Low Source GTCCRB Input
   --  Capture Enable
   type GTICBSR_BSCAFBL_Field is
     (--  GTCCRB input capture is disable at the falling edge of GTIOCA input when
--  GTIOCB input is 0
      Val_0,
      --  GTCCRB input capture is enable at the falling edge of GTIOCA input when
--  GTIOCB input is 0
      Val_1)
     with Size => 1;
   for GTICBSR_BSCAFBL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCA Pin Falling Input during GTIOCB Value High Source GTCCRB Input
   --  Capture Enable
   type GTICBSR_BSCAFBH_Field is
     (--  GTCCRB input capture is disable at the falling edge of GTIOCA input when
--  GTIOCB input is 1
      Val_0,
      --  GTCCRB input capture is enable at the falling edge of GTIOCA input when
--  GTIOCB input is 1
      Val_1)
     with Size => 1;
   for GTICBSR_BSCAFBH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCB Pin Rising Input during GTIOCA Value Low Source GTCCRB Input
   --  Capture Enable
   type GTICBSR_BSCBRAL_Field is
     (--  GTCCRB input capture is disable at the rising edge of GTIOCB input when
--  GTIOCA input is 0
      Val_0,
      --  GTCCRB input capture is enable at the rising edge of GTIOCB input when
--  GTIOCA input is 0
      Val_1)
     with Size => 1;
   for GTICBSR_BSCBRAL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCB Pin Rising Input during GTIOCA Value High Source GTCCRB Input
   --  Capture Enable
   type GTICBSR_BSCBRAH_Field is
     (--  GTCCRB input capture is disable at the rising edge of GTIOCB input when
--  GTIOCA input is 1
      Val_0,
      --  GTCCRB input capture is enable at the rising edge of GTIOCB input when
--  GTIOCA input is 1
      Val_1)
     with Size => 1;
   for GTICBSR_BSCBRAH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCB Pin Falling Input during GTIOCA Value Low Source GTCCRB Input
   --  Capture Enable
   type GTICBSR_BSCBFAL_Field is
     (--  GTCCRB input capture is disable at the falling edge of GTIOCB input when
--  GTIOCA input is 0
      Val_0,
      --  GTCCRB input capture is enable at the falling edge of GTIOCB input when
--  GTIOCA input is 0
      Val_1)
     with Size => 1;
   for GTICBSR_BSCBFAL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCB Pin Falling Input during GTIOCA Value High Source GTCCRB Input
   --  Capture Enable
   type GTICBSR_BSCBFAH_Field is
     (--  GTCCRB input capture is disable at the falling edge of GTIOCB input when
--  GTIOCA input is 1
      Val_0,
      --  GTCCRB input capture is enable at the falling edge of GTIOCB input when
--  GTIOCA input is 1
      Val_1)
     with Size => 1;
   for GTICBSR_BSCBFAH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTA Event Source GTCCRB Input Capture Enable
   type GTICBSR_BSELCA_Field is
     (--  GTCCRB input capture is disable at the ELC_GPTA input
      Val_0,
      --  GTCCRB input capture is enable at the ELC_GPTA input
      Val_1)
     with Size => 1;
   for GTICBSR_BSELCA_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTB Event Source GTCCRB Input Capture Enable
   type GTICBSR_BSELCB_Field is
     (--  GTCCRB input capture is disable at the ELC_GPTB input
      Val_0,
      --  GTCCRB input capture is enable at the ELC_GPTB input
      Val_1)
     with Size => 1;
   for GTICBSR_BSELCB_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTC Event Source GTCCRB Input Capture Enable
   type GTICBSR_BSELCC_Field is
     (--  GTCCRB input capture is disable at the ELC_GPTC input
      Val_0,
      --  GTCCRB input capture is enable at the ELC_GPTC input
      Val_1)
     with Size => 1;
   for GTICBSR_BSELCC_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTD Event Source GTCCRB Input Capture Enable
   type GTICBSR_BSELCD_Field is
     (--  GTCCRB input capture is disable at the ELC_GPTD input
      Val_0,
      --  GTCCRB input capture is enable at the ELC_GPTD input
      Val_1)
     with Size => 1;
   for GTICBSR_BSELCD_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTE Event Source GTCCRB Input Capture Enable
   type GTICBSR_BSELCE_Field is
     (--  GTCCRB input capture is disable at the ELC_GPTE input
      Val_0,
      --  GTCCRB input capture is enable at the ELC_GPTE input
      Val_1)
     with Size => 1;
   for GTICBSR_BSELCE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTF Event Source GTCCRB Input Capture Enable
   type GTICBSR_BSELCF_Field is
     (--  GTCCRB input capture is disable at the ELC_GPTF input
      Val_0,
      --  GTCCRB input capture is enable at the ELC_GPTF input
      Val_1)
     with Size => 1;
   for GTICBSR_BSELCF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTG Event Source GTCCRB Input Capture Enable
   type GTICBSR_BSELCG_Field is
     (--  GTCCRB input capture is disable at the ELC_GPTG input
      Val_0,
      --  GTCCRB input capture is enable at the ELC_GPTG input
      Val_1)
     with Size => 1;
   for GTICBSR_BSELCG_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  ELC_GPTH Event Source GTCCRB Input Capture Enable
   type GTICBSR_BSELCH_Field is
     (--  GTCCRB input capture is disable at the ELC_GPTH input
      Val_0,
      --  GTCCRB input capture is enable at the ELC_GPTH input
      Val_1)
     with Size => 1;
   for GTICBSR_BSELCH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  General PWM Timer Input Capture Source Select Register B
   type GTICBSR_Register is record
      --  GTETRGA Pin Rising Input Source GTCCRB Input Capture Enable
      BSGTRGAR       : GTICBSR_BSGTRGAR_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTETRGA Pin Falling Input Source GTCCRB Input Capture Enable
      BSGTRGAF       : GTICBSR_BSGTRGAF_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTETRGB Pin Rising Input Source GTCCRB Input Capture Enable
      BSGTRGBR       : GTICBSR_BSGTRGBR_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTETRGB Pin Falling Input Source GTCCRB Input Capture Enable
      BSGTRGBF       : GTICBSR_BSGTRGBF_Field := R7FA4M1AB.GPT164.Val_0;
      --  unspecified
      Reserved_4_7   : R7FA4M1AB.UInt4 := 16#0#;
      --  GTIOCA Pin Rising Input during GTIOCB Value Low Source GTCCRB Input
      --  Capture Enable
      BSCARBL        : GTICBSR_BSCARBL_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCA Pin Rising Input during GTIOCB Value High Source GTCCRB Input
      --  Capture Enable
      BSCARBH        : GTICBSR_BSCARBH_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCA Pin Falling Input during GTIOCB Value Low Source GTCCRB Input
      --  Capture Enable
      BSCAFBL        : GTICBSR_BSCAFBL_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCA Pin Falling Input during GTIOCB Value High Source GTCCRB Input
      --  Capture Enable
      BSCAFBH        : GTICBSR_BSCAFBH_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCB Pin Rising Input during GTIOCA Value Low Source GTCCRB Input
      --  Capture Enable
      BSCBRAL        : GTICBSR_BSCBRAL_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCB Pin Rising Input during GTIOCA Value High Source GTCCRB Input
      --  Capture Enable
      BSCBRAH        : GTICBSR_BSCBRAH_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCB Pin Falling Input during GTIOCA Value Low Source GTCCRB Input
      --  Capture Enable
      BSCBFAL        : GTICBSR_BSCBFAL_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCB Pin Falling Input during GTIOCA Value High Source GTCCRB Input
      --  Capture Enable
      BSCBFAH        : GTICBSR_BSCBFAH_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTA Event Source GTCCRB Input Capture Enable
      BSELCA         : GTICBSR_BSELCA_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTB Event Source GTCCRB Input Capture Enable
      BSELCB         : GTICBSR_BSELCB_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTC Event Source GTCCRB Input Capture Enable
      BSELCC         : GTICBSR_BSELCC_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTD Event Source GTCCRB Input Capture Enable
      BSELCD         : GTICBSR_BSELCD_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTE Event Source GTCCRB Input Capture Enable
      BSELCE         : GTICBSR_BSELCE_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTF Event Source GTCCRB Input Capture Enable
      BSELCF         : GTICBSR_BSELCF_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTG Event Source GTCCRB Input Capture Enable
      BSELCG         : GTICBSR_BSELCG_Field := R7FA4M1AB.GPT164.Val_0;
      --  ELC_GPTH Event Source GTCCRB Input Capture Enable
      BSELCH         : GTICBSR_BSELCH_Field := R7FA4M1AB.GPT164.Val_0;
      --  unspecified
      Reserved_24_31 : R7FA4M1AB.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTICBSR_Register use record
      BSGTRGAR       at 0 range 0 .. 0;
      BSGTRGAF       at 0 range 1 .. 1;
      BSGTRGBR       at 0 range 2 .. 2;
      BSGTRGBF       at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      BSCARBL        at 0 range 8 .. 8;
      BSCARBH        at 0 range 9 .. 9;
      BSCAFBL        at 0 range 10 .. 10;
      BSCAFBH        at 0 range 11 .. 11;
      BSCBRAL        at 0 range 12 .. 12;
      BSCBRAH        at 0 range 13 .. 13;
      BSCBFAL        at 0 range 14 .. 14;
      BSCBFAH        at 0 range 15 .. 15;
      BSELCA         at 0 range 16 .. 16;
      BSELCB         at 0 range 17 .. 17;
      BSELCC         at 0 range 18 .. 18;
      BSELCD         at 0 range 19 .. 19;
      BSELCE         at 0 range 20 .. 20;
      BSELCF         at 0 range 21 .. 21;
      BSELCG         at 0 range 22 .. 22;
      BSELCH         at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Count Start
   type GTCR_CST_Field is
     (--  Count operation is stopped
      Val_0,
      --  Count operation is performed
      Val_1)
     with Size => 1;
   for GTCR_CST_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype GTCR_Reserved_Field is R7FA4M1AB.UInt15;

   --  Mode Select
   type GTCR_MD_Field is
     (--  Saw-wave PWM mode (single buffer or double buffer possible)
      Val_000,
      --  Saw-wave one-shot pulse mode (fixed buffer operation)
      Val_001,
      --  Setting prohibited
      Val_010,
      --  Setting prohibited
      Val_011,
      --  Triangle-wave PWM mode 1 (16-bit transfer at crest) (single buffer or
--  double buffer possible)
      Val_100,
      --  Triangle-wave PWM mode 2 (16-bit transfer at crest and trough) (single
--  buffer or double buffer possible)
      Val_101,
      --  Triangle-wave PWM mode 3 (32-bit transfer at trough) fixed buffer
--  operation)
      Val_110,
      --  Setting prohibited
      Val_111)
     with Size => 3;
   for GTCR_MD_Field use
     (Val_000 => 0,
      Val_001 => 1,
      Val_010 => 2,
      Val_011 => 3,
      Val_100 => 4,
      Val_101 => 5,
      Val_110 => 6,
      Val_111 => 7);

   subtype GTCR_Reserved_Field_1 is R7FA4M1AB.UInt5;

   --  Timer Prescaler Select
   type GTCR_TPCS_Field is
     (--  PCLK/1
      Val_000,
      --  Setting prohibied
      others_k,
      --  PCLK/4
      Val_001,
      --  PCLK/16
      Val_010,
      --  PCLK/64
      Val_011,
      --  PCLK/256
      Val_100,
      --  PCLK/1024
      Val_101)
     with Size => 3;
   for GTCR_TPCS_Field use
     (Val_000 => 0,
      others_k => 0,
      Val_001 => 1,
      Val_010 => 2,
      Val_011 => 3,
      Val_100 => 4,
      Val_101 => 5);

   --  General PWM Timer Control Register
   type GTCR_Register is record
      --  Count Start
      CST            : GTCR_CST_Field := R7FA4M1AB.GPT164.Val_0;
      --  These bits are read as 000000000000000. The write value should be
      --  000000000000000.
      Reserved       : GTCR_Reserved_Field := 16#0#;
      --  Mode Select
      MD             : GTCR_MD_Field := R7FA4M1AB.GPT164.Val_000;
      --  These bits are read as 00000. The write value should be 00000.
      Reserved_1     : GTCR_Reserved_Field_1 := 16#0#;
      --  Timer Prescaler Select
      TPCS           : GTCR_TPCS_Field := R7FA4M1AB.GPT164.Val_000;
      --  unspecified
      Reserved_27_31 : R7FA4M1AB.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTCR_Register use record
      CST            at 0 range 0 .. 0;
      Reserved       at 0 range 1 .. 15;
      MD             at 0 range 16 .. 18;
      Reserved_1     at 0 range 19 .. 23;
      TPCS           at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  Count Direction Setting
   type GTUDDTYC_UD_Field is
     (--  GTCNT counts down.
      Val_0,
      --  GTCNT counts up.
      Val_1)
     with Size => 1;
   for GTUDDTYC_UD_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Forcible Count Direction Setting
   type GTUDDTYC_UDF_Field is
     (--  Not forcibly set
      Val_0,
      --  Forcibly set
      Val_1)
     with Size => 1;
   for GTUDDTYC_UDF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCA Output Duty Setting
   type GTUDDTYC_OADTY_Field is
     (--  GTIOCA pin duty is depend on compare match
      Val_00,
      --  GTIOCA pin duty is depend on compare match
      Val_01,
      --  GTIOCA pin duty 0 percent
      Val_10,
      --  GTIOCA pin duty 100 percent
      Val_11)
     with Size => 2;
   for GTUDDTYC_OADTY_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   --  Forcible GTIOCA Output Duty Setting
   type GTUDDTYC_OADTYF_Field is
     (--  Not forcibly set
      Val_0,
      --  Forcibly set
      Val_1)
     with Size => 1;
   for GTUDDTYC_OADTYF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCA Output Value Selecting after Releasing 0 percent/100 percent Duty
   --  Setting
   type GTUDDTYC_OADTYR_Field is
     (--  Apply output value set in 0 percent/100 percent duty to GTIOA[3:2] function
--  after releasing 0 percent/100 percent duty setting.
      Val_0,
      --  Apply masked compare match output value to GTIOA[3:2] function after
--  releasing 0 percent/100 percent duty setting.
      Val_1)
     with Size => 1;
   for GTUDDTYC_OADTYR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype GTUDDTYC_Reserved_Field is R7FA4M1AB.UInt4;

   --  GTIOCB Output Duty Setting
   type GTUDDTYC_OBDTY_Field is
     (--  GTIOCB pin duty is depend on compare match
      Val_00,
      --  GTIOCB pin duty is depend on compare match
      Val_01,
      --  GTIOCB pin duty 0 percent
      Val_10,
      --  GTIOCB pin duty 100 percent
      Val_11)
     with Size => 2;
   for GTUDDTYC_OBDTY_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   --  Forcible GTIOCB Output Duty Setting
   type GTUDDTYC_OBDTYF_Field is
     (--  Not forcibly set
      Val_0,
      --  Forcibly set
      Val_1)
     with Size => 1;
   for GTUDDTYC_OBDTYF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCB Output Value Selecting after Releasing 0 percent/100 percent Duty
   --  Setting
   type GTUDDTYC_OBDTYR_Field is
     (--  Apply output value set in 0 percent/100 percent duty to GTIOB[3:2] function
--  after releasing 0 percent/100 percent duty setting.
      Val_0,
      --  Apply masked compare match output value to GTIOB[3:2] function after
--  releasing 0 percent/100 percent duty setting.
      Val_1)
     with Size => 1;
   for GTUDDTYC_OBDTYR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  General PWM Timer Count Direction and Duty Setting Register
   type GTUDDTYC_Register is record
      --  Count Direction Setting
      UD             : GTUDDTYC_UD_Field := R7FA4M1AB.GPT164.Val_1;
      --  Forcible Count Direction Setting
      UDF            : GTUDDTYC_UDF_Field := R7FA4M1AB.GPT164.Val_0;
      --  unspecified
      Reserved_2_15  : R7FA4M1AB.UInt14 := 16#0#;
      --  GTIOCA Output Duty Setting
      OADTY          : GTUDDTYC_OADTY_Field := R7FA4M1AB.GPT164.Val_00;
      --  Forcible GTIOCA Output Duty Setting
      OADTYF         : GTUDDTYC_OADTYF_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCA Output Value Selecting after Releasing 0 percent/100 percent
      --  Duty Setting
      OADTYR         : GTUDDTYC_OADTYR_Field := R7FA4M1AB.GPT164.Val_0;
      --  These bits are read as 0000. The write value should be 0000.
      Reserved       : GTUDDTYC_Reserved_Field := 16#0#;
      --  GTIOCB Output Duty Setting
      OBDTY          : GTUDDTYC_OBDTY_Field := R7FA4M1AB.GPT164.Val_00;
      --  Forcible GTIOCB Output Duty Setting
      OBDTYF         : GTUDDTYC_OBDTYF_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCB Output Value Selecting after Releasing 0 percent/100 percent
      --  Duty Setting
      OBDTYR         : GTUDDTYC_OBDTYR_Field := R7FA4M1AB.GPT164.Val_0;
      --  unspecified
      Reserved_28_31 : R7FA4M1AB.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTUDDTYC_Register use record
      UD             at 0 range 0 .. 0;
      UDF            at 0 range 1 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      OADTY          at 0 range 16 .. 17;
      OADTYF         at 0 range 18 .. 18;
      OADTYR         at 0 range 19 .. 19;
      Reserved       at 0 range 20 .. 23;
      OBDTY          at 0 range 24 .. 25;
      OBDTYF         at 0 range 26 .. 26;
      OBDTYR         at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  GTIOCA Pin Function Select
   type GTIOR_GTIOA_Field is
     (--  Initial output is Low. Output retained at cycle end. Output retained at
--  GTCCRA compare match.
      Val_00000,
      --  Initial output is Low. Output retained at cycle end. Low output at GTCCRA
--  compare match.
      Val_00001,
      --  Initial output is Low. Output retained at cycle end. High output at GTCCRA
--  compare match.
      Val_00010,
      --  Initial output is Low. Output retained at cycle end. Output toggled at
--  GTCCRA compare match.
      Val_00011,
      --  Initial output is Low. Low output at cycle end. Output retained at GTCCRA
--  compare match.
      Val_00100,
      --  Initial output is Low. Low output at cycle end. Low output at GTCCRA
--  compare match.
      Val_00101,
      --  Initial output is Low. Low output at cycle end. High output at GTCCRA
--  compare match.
      Val_00110,
      --  Initial output is Low. Low output at cycle end. Output toggled at GTCCRA
--  compare match.
      Val_00111,
      --  Initial output is Low. High output at cycle end. Output retained at GTCCRA
--  compare match.
      Val_01000,
      --  Initial output is Low. High output at cycle end. Low output at GTCCRA
--  compare match.
      Val_01001,
      --  Initial output is Low. High output at cycle end. High output at GTCCRA
--  compare match.
      Val_01010,
      --  Initial output is Low. High output at cycle end. Output toggled at GTCCRA
--  compare match.
      Val_01011,
      --  Initial output is Low. Output toggled at cycle end. Output retained at
--  GTCCRA compare match.
      Val_01100,
      --  Initial output is Low. Output toggled at cycle end. Low output at GTCCRA
--  compare match.
      Val_01101,
      --  Initial output is Low. Output toggled at cycle end. High output at GTCCRA
--  compare match.
      Val_01110,
      --  Initial output is Low. Output toggled at cycle end. Output toggled at
--  GTCCRA compare match.
      Val_01111,
      --  Initial output is High. Output retained at cycle end. Output retained at
--  GTCCRA compare match.
      Val_10000,
      --  Initial output is High. Output retained at cycle end. Low output at GTCCRA
--  compare match.
      Val_10001,
      --  Initial output is High. Output retained at cycle end. High output at GTCCRA
--  compare match.
      Val_10010,
      --  Initial output is High. Output retained at cycle end. Output toggled at
--  GTCCRA compare match.
      Val_10011,
      --  Initial output is High. Low output at cycle end. Output retained at GTCCRA
--  compare match.
      Val_10100,
      --  Initial output is High. Low output at cycle end. Low output at GTCCRA
--  compare match.
      Val_10101,
      --  Initial output is High. Low output at cycle end. High output at GTCCRA
--  compare match.
      Val_10110,
      --  Initial output is High. Low output at cycle end. Output toggled at GTCCRA
--  compare match.
      Val_10111,
      --  Initial output is High. High output at cycle end. Output retained at GTCCRA
--  compare match.
      Val_11000,
      --  Initial output is High. High output at cycle end. Low output at GTCCRA
--  compare match.
      Val_11001,
      --  Initial output is High. High output at cycle end. High output at GTCCRA
--  compare match.
      Val_11010,
      --  Initial output is High. High output at cycle end. Output toggled at GTCCRA
--  compare match.
      Val_11011,
      --  Initial output is High. Output toggled at cycle end. Output retained at
--  GTCCRA compare match.
      Val_11100,
      --  Initial output is High. Output toggled at cycle end. Low output at GTCCRA
--  compare match.
      Val_11101,
      --  Initial output is High. Output toggled at cycle end. High output at GTCCRA
--  compare match.
      Val_11110,
      --  Initial output is High. Output toggled at cycle end. Output toggled at
--  GTCCRA compare match.
      Val_11111)
     with Size => 5;
   for GTIOR_GTIOA_Field use
     (Val_00000 => 0,
      Val_00001 => 1,
      Val_00010 => 2,
      Val_00011 => 3,
      Val_00100 => 4,
      Val_00101 => 5,
      Val_00110 => 6,
      Val_00111 => 7,
      Val_01000 => 8,
      Val_01001 => 9,
      Val_01010 => 10,
      Val_01011 => 11,
      Val_01100 => 12,
      Val_01101 => 13,
      Val_01110 => 14,
      Val_01111 => 15,
      Val_10000 => 16,
      Val_10001 => 17,
      Val_10010 => 18,
      Val_10011 => 19,
      Val_10100 => 20,
      Val_10101 => 21,
      Val_10110 => 22,
      Val_10111 => 23,
      Val_11000 => 24,
      Val_11001 => 25,
      Val_11010 => 26,
      Val_11011 => 27,
      Val_11100 => 28,
      Val_11101 => 29,
      Val_11110 => 30,
      Val_11111 => 31);

   --  GTIOCA Pin Output Value Setting at the Count Stop
   type GTIOR_OADFLT_Field is
     (--  The GTIOCA pin outputs low when counting is stopped.
      Val_0,
      --  The GTIOCA pin outputs high when counting is stopped.
      Val_1)
     with Size => 1;
   for GTIOR_OADFLT_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCA Pin Output Setting at the Start/Stop Count
   type GTIOR_OAHLD_Field is
     (--  The GTIOCA pin output level at start/stop of counting depends on the
--  register setting.
      Val_0,
      --  The GTIOCA pin output level is retained at start/stop of counting.
      Val_1)
     with Size => 1;
   for GTIOR_OAHLD_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCA Pin Output Enable
   type GTIOR_OAE_Field is
     (--  Output is disabled
      Val_0,
      --  Output is enabled
      Val_1)
     with Size => 1;
   for GTIOR_OAE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCA Pin Disable Value Setting
   type GTIOR_OADF_Field is
     (--  Output disable is prohibited.
      Val_00,
      --  GTIOCA pin is set to Hi-Z when output disable is performed.
      Val_01,
      --  GTIOCA pin is set to 0 when output disable is performed.
      Val_10,
      --  GTIOCA pin is set to 1 when output disable is performed.
      Val_11)
     with Size => 2;
   for GTIOR_OADF_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   subtype GTIOR_Reserved_Field is R7FA4M1AB.UInt2;

   --  Noise Filter A Enable
   type GTIOR_NFAEN_Field is
     (--  The noise filter for the GTIOCA pin is disabled.
      Val_0,
      --  The noise filter for the GTIOCA pin is enabled.
      Val_1)
     with Size => 1;
   for GTIOR_NFAEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Noise Filter A Sampling Clock Select
   type GTIOR_NFCSA_Field is
     (--  PCLK/1
      Val_00,
      --  PCLK/4
      Val_01,
      --  PCLK/16
      Val_10,
      --  PCLK/64
      Val_11)
     with Size => 2;
   for GTIOR_NFCSA_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   --  GTIOCB Pin Function Select
   type GTIOR_GTIOB_Field is
     (--  Initial output is Low. Output retained at cycle end. Output retained at
--  GTCCRB compare match.
      Val_00000,
      --  Initial output is Low. Output retained at cycle end. Low output at GTCCRB
--  compare match.
      Val_00001,
      --  Initial output is Low. Output retained at cycle end. High output at GTCCRB
--  compare match.
      Val_00010,
      --  Initial output is Low. Output retained at cycle end. Output toggled at
--  GTCCRB compare match.
      Val_00011,
      --  Initial output is Low. Low output at cycle end. Output retained at GTCCRB
--  compare match.
      Val_00100,
      --  Initial output is Low. Low output at cycle end. Low output at GTCCRB
--  compare match.
      Val_00101,
      --  Initial output is Low. Low output at cycle end. High output at GTCCRB
--  compare match.
      Val_00110,
      --  Initial output is Low. Low output at cycle end. Output toggled at GTCCRB
--  compare match.
      Val_00111,
      --  Initial output is Low. High output at cycle end. Output retained at GTCCRB
--  compare match.
      Val_01000,
      --  Initial output is Low. High output at cycle end. Low output at GTCCRB
--  compare match.
      Val_01001,
      --  Initial output is Low. High output at cycle end. High output at GTCCRB
--  compare match.
      Val_01010,
      --  Initial output is Low. High output at cycle end. Output toggled at GTCCRB
--  compare match.
      Val_01011,
      --  Initial output is Low. Output toggled at cycle end. Output retained at
--  GTCCRB compare match.
      Val_01100,
      --  Initial output is Low. Output toggled at cycle end. Low output at GTCCRB
--  compare match.
      Val_01101,
      --  Initial output is Low. Output toggled at cycle end. High output at GTCCRB
--  compare match.
      Val_01110,
      --  Initial output is Low. Output toggled at cycle end. Output toggled at
--  GTCCRB compare match.
      Val_01111,
      --  Initial output is High. Output retained at cycle end. Output retained at
--  GTCCRB compare match.
      Val_10000,
      --  Initial output is High. Output retained at cycle end. Low output at GTCCRB
--  compare match.
      Val_10001,
      --  Initial output is High. Output retained at cycle end. High output at GTCCRB
--  compare match.
      Val_10010,
      --  Initial output is High. Output retained at cycle end. Output toggled at
--  GTCCRB compare match.
      Val_10011,
      --  Initial output is High. Low output at cycle end. Output retained at GTCCRB
--  compare match.
      Val_10100,
      --  Initial output is High. Low output at cycle end. Low output at GTCCRB
--  compare match.
      Val_10101,
      --  Initial output is High. Low output at cycle end. High output at GTCCRB
--  compare match.
      Val_10110,
      --  Initial output is High. Low output at cycle end. Output toggled at GTCCRB
--  compare match.
      Val_10111,
      --  Initial output is High. High output at cycle end. Output retained at GTCCRB
--  compare match.
      Val_11000,
      --  Initial output is High. High output at cycle end. Low output at GTCCRB
--  compare match.
      Val_11001,
      --  Initial output is High. High output at cycle end. High output at GTCCRB
--  compare match.
      Val_11010,
      --  Initial output is High. High output at cycle end. Output toggled at GTCCRB
--  compare match.
      Val_11011,
      --  Initial output is High. Output toggled at cycle end. Output retained at
--  GTCCRB compare match.
      Val_11100,
      --  Initial output is High. Output toggled at cycle end. Low output at GTCCRB
--  compare match.
      Val_11101,
      --  Initial output is High. Output toggled at cycle end. High output at GTCCRB
--  compare match.
      Val_11110,
      --  Initial output is High. Output toggled at cycle end. Output toggled at
--  GTCCRB compare match.
      Val_11111)
     with Size => 5;
   for GTIOR_GTIOB_Field use
     (Val_00000 => 0,
      Val_00001 => 1,
      Val_00010 => 2,
      Val_00011 => 3,
      Val_00100 => 4,
      Val_00101 => 5,
      Val_00110 => 6,
      Val_00111 => 7,
      Val_01000 => 8,
      Val_01001 => 9,
      Val_01010 => 10,
      Val_01011 => 11,
      Val_01100 => 12,
      Val_01101 => 13,
      Val_01110 => 14,
      Val_01111 => 15,
      Val_10000 => 16,
      Val_10001 => 17,
      Val_10010 => 18,
      Val_10011 => 19,
      Val_10100 => 20,
      Val_10101 => 21,
      Val_10110 => 22,
      Val_10111 => 23,
      Val_11000 => 24,
      Val_11001 => 25,
      Val_11010 => 26,
      Val_11011 => 27,
      Val_11100 => 28,
      Val_11101 => 29,
      Val_11110 => 30,
      Val_11111 => 31);

   --  GTIOCB Pin Output Value Setting at the Count Stop
   type GTIOR_OBDFLT_Field is
     (--  The GTIOCB pin outputs low when counting is stopped.
      Val_0,
      --  The GTIOCB pin outputs high when counting is stopped.
      Val_1)
     with Size => 1;
   for GTIOR_OBDFLT_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCB Pin Output Setting at the Start/Stop Count
   type GTIOR_OBHLD_Field is
     (--  The GTIOCB pin output level at start/stop of counting depends on the
--  register setting.
      Val_0,
      --  The GTIOCB pin output level is retained at start/stop of counting.
      Val_1)
     with Size => 1;
   for GTIOR_OBHLD_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCB Pin Output Enable
   type GTIOR_OBE_Field is
     (--  Output is disabled
      Val_0,
      --  Output is enabled
      Val_1)
     with Size => 1;
   for GTIOR_OBE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  GTIOCB Pin Disable Value Setting
   type GTIOR_OBDF_Field is
     (--  Output disable is prohibited.
      Val_00,
      --  GTIOCB pin is set to Hi-Z when output disable is performed.
      Val_01,
      --  GTIOCB pin is set to 0 when output disable is performed.
      Val_10,
      --  GTIOCB pin is set to 1 when output disable is performed.
      Val_11)
     with Size => 2;
   for GTIOR_OBDF_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   --  Noise Filter B Enable
   type GTIOR_NFBEN_Field is
     (--  The noise filter for the GTIOCB pin is disabled.
      Val_0,
      --  The noise filter for the GTIOCB pin is enabled.
      Val_1)
     with Size => 1;
   for GTIOR_NFBEN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Noise Filter B Sampling Clock Select
   type GTIOR_NFCSB_Field is
     (--  PCLK/1
      Val_00,
      --  PCLK/4
      Val_01,
      --  PCLK/16
      Val_10,
      --  PCLK/64
      Val_11)
     with Size => 2;
   for GTIOR_NFCSB_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   --  General PWM Timer I/O Control Register
   type GTIOR_Register is record
      --  GTIOCA Pin Function Select
      GTIOA      : GTIOR_GTIOA_Field := R7FA4M1AB.GPT164.Val_00000;
      --  This bit is read as 0. The write value should be 0.
      Reserved   : Boolean := False;
      --  GTIOCA Pin Output Value Setting at the Count Stop
      OADFLT     : GTIOR_OADFLT_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCA Pin Output Setting at the Start/Stop Count
      OAHLD      : GTIOR_OAHLD_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCA Pin Output Enable
      OAE        : GTIOR_OAE_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCA Pin Disable Value Setting
      OADF       : GTIOR_OADF_Field := R7FA4M1AB.GPT164.Val_00;
      --  These bits are read as 00. The write value should be 00.
      Reserved_1 : GTIOR_Reserved_Field := 16#0#;
      --  Noise Filter A Enable
      NFAEN      : GTIOR_NFAEN_Field := R7FA4M1AB.GPT164.Val_0;
      --  Noise Filter A Sampling Clock Select
      NFCSA      : GTIOR_NFCSA_Field := R7FA4M1AB.GPT164.Val_00;
      --  GTIOCB Pin Function Select
      GTIOB      : GTIOR_GTIOB_Field := R7FA4M1AB.GPT164.Val_00000;
      --  This bit is read as 0. The write value should be 0.
      Reserved_2 : Boolean := False;
      --  GTIOCB Pin Output Value Setting at the Count Stop
      OBDFLT     : GTIOR_OBDFLT_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCB Pin Output Setting at the Start/Stop Count
      OBHLD      : GTIOR_OBHLD_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCB Pin Output Enable
      OBE        : GTIOR_OBE_Field := R7FA4M1AB.GPT164.Val_0;
      --  GTIOCB Pin Disable Value Setting
      OBDF       : GTIOR_OBDF_Field := R7FA4M1AB.GPT164.Val_00;
      --  These bits are read as 00. The write value should be 00.
      Reserved_3 : GTIOR_Reserved_Field := 16#0#;
      --  Noise Filter B Enable
      NFBEN      : GTIOR_NFBEN_Field := R7FA4M1AB.GPT164.Val_0;
      --  Noise Filter B Sampling Clock Select
      NFCSB      : GTIOR_NFCSB_Field := R7FA4M1AB.GPT164.Val_00;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTIOR_Register use record
      GTIOA      at 0 range 0 .. 4;
      Reserved   at 0 range 5 .. 5;
      OADFLT     at 0 range 6 .. 6;
      OAHLD      at 0 range 7 .. 7;
      OAE        at 0 range 8 .. 8;
      OADF       at 0 range 9 .. 10;
      Reserved_1 at 0 range 11 .. 12;
      NFAEN      at 0 range 13 .. 13;
      NFCSA      at 0 range 14 .. 15;
      GTIOB      at 0 range 16 .. 20;
      Reserved_2 at 0 range 21 .. 21;
      OBDFLT     at 0 range 22 .. 22;
      OBHLD      at 0 range 23 .. 23;
      OBE        at 0 range 24 .. 24;
      OBDF       at 0 range 25 .. 26;
      Reserved_3 at 0 range 27 .. 28;
      NFBEN      at 0 range 29 .. 29;
      NFCSB      at 0 range 30 .. 31;
   end record;

   subtype GTINTAD_Reserved_Field is R7FA4M1AB.UInt24;
   subtype GTINTAD_GRP_Field is R7FA4M1AB.UInt2;
   subtype GTINTAD_Reserved_Field_1 is R7FA4M1AB.UInt3;

   --  Same Time Output Level High Disable Request Enable
   type GTINTAD_GRPABH_Field is
     (--  Same time output level high disable request is disabled.
      Val_0,
      --  Same time output level high disable request is enabled.
      Val_1)
     with Size => 1;
   for GTINTAD_GRPABH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Same Time Output Level Low Disable Request Enable
   type GTINTAD_GRPABL_Field is
     (--  Same time output level low disable request is disabled.
      Val_0,
      --  Same time output level low disable request is enabled.
      Val_1)
     with Size => 1;
   for GTINTAD_GRPABL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  General PWM Timer Interrupt Output Setting Register
   type GTINTAD_Register is record
      --  These bits are read as 000000000000000000000000. The write value
      --  should be 000000000000000000000000.
      Reserved       : GTINTAD_Reserved_Field := 16#0#;
      --  Output Disable Source Select
      GRP            : GTINTAD_GRP_Field := 16#0#;
      --  These bits are read as 000. The write value should be 000.
      Reserved_1     : GTINTAD_Reserved_Field_1 := 16#0#;
      --  Same Time Output Level High Disable Request Enable
      GRPABH         : GTINTAD_GRPABH_Field := R7FA4M1AB.GPT164.Val_0;
      --  Same Time Output Level Low Disable Request Enable
      GRPABL         : GTINTAD_GRPABL_Field := R7FA4M1AB.GPT164.Val_0;
      --  unspecified
      Reserved_31_31 : R7FA4M1AB.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTINTAD_Register use record
      Reserved       at 0 range 0 .. 23;
      GRP            at 0 range 24 .. 25;
      Reserved_1     at 0 range 26 .. 28;
      GRPABH         at 0 range 29 .. 29;
      GRPABL         at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Input Capture/Compare Match Flag A
   type GTST_TCFA_Field is
     (--  No input capture/compare match of GTCCRA is generated.
      Val_0,
      --  An input capture/compare match of GTCCRA is generated.
      Val_1)
     with Size => 1;
   for GTST_TCFA_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Input Capture/Compare Match Flag B
   type GTST_TCFB_Field is
     (--  No input capture/compare match of GTCCRB is generated.
      Val_0,
      --  An input capture/compare match of GTCCRB is generated.
      Val_1)
     with Size => 1;
   for GTST_TCFB_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Input Compare Match Flag C
   type GTST_TCFC_Field is
     (--  No compare match of GTCCRC is generated.
      Val_0,
      --  A compare match of GTCCRC is generated.
      Val_1)
     with Size => 1;
   for GTST_TCFC_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Input Compare Match Flag D
   type GTST_TCFD_Field is
     (--  No compare match of GTCCRD is generated.
      Val_0,
      --  A compare match of GTCCRD is generated.
      Val_1)
     with Size => 1;
   for GTST_TCFD_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Input Compare Match Flag E
   type GTST_TCFE_Field is
     (--  No compare match of GTCCRE is generated.
      Val_0,
      --  A compare match of GTCCRE is generated.
      Val_1)
     with Size => 1;
   for GTST_TCFE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Input Compare Match Flag F
   type GTST_TCFF_Field is
     (--  No compare match of GTCCRF is generated.
      Val_0,
      --  A compare match of GTCCRF is generated.
      Val_1)
     with Size => 1;
   for GTST_TCFF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Overflow Flag
   type GTST_TCFPO_Field is
     (--  No overflow (crest) has occurred.
      Val_0,
      --  An overflow (crest) has occurred.
      Val_1)
     with Size => 1;
   for GTST_TCFPO_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Underflow Flag
   type GTST_TCFPU_Field is
     (--  No underflow (trough) has occurred.
      Val_0,
      --  An underflow (trough) has occurred.
      Val_1)
     with Size => 1;
   for GTST_TCFPU_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype GTST_Reserved_Field is R7FA4M1AB.UInt7;

   --  Count Direction Flag
   type GTST_TUCF_Field is
     (--  The GTCNT counter counts downward.
      Val_0,
      --  The GTCNT counter counts upward.
      Val_1)
     with Size => 1;
   for GTST_TUCF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype GTST_Reserved_Field_1 is R7FA4M1AB.Byte;

   --  Output Disable Flag
   type GTST_ODF_Field is
     (--  No output disable request is generated.
      Val_0,
      --  An output disable request is generated.
      Val_1)
     with Size => 1;
   for GTST_ODF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype GTST_Reserved_Field_2 is R7FA4M1AB.UInt4;

   --  Same Time Output Level High Disable Request Enable
   type GTST_OABHF_Field is
     (--  GTIOCA pin and GTIOCB pin don't output 1 at the same time.
      Val_0,
      --  GTIOCA pin and GTIOCB pin output 1 at the same time.
      Val_1)
     with Size => 1;
   for GTST_OABHF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Same Time Output Level Low Disable Request Enable
   type GTST_OABLF_Field is
     (--  GTIOCA pin and GTIOCB pin don't output 0 at the same time.
      Val_0,
      --  GTIOCA pin and GTIOCB pin output 0 at the same time.
      Val_1)
     with Size => 1;
   for GTST_OABLF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  General PWM Timer Status Register
   type GTST_Register is record
      --  Input Capture/Compare Match Flag A
      TCFA           : GTST_TCFA_Field := R7FA4M1AB.GPT164.Val_0;
      --  Input Capture/Compare Match Flag B
      TCFB           : GTST_TCFB_Field := R7FA4M1AB.GPT164.Val_0;
      --  Input Compare Match Flag C
      TCFC           : GTST_TCFC_Field := R7FA4M1AB.GPT164.Val_0;
      --  Input Compare Match Flag D
      TCFD           : GTST_TCFD_Field := R7FA4M1AB.GPT164.Val_0;
      --  Input Compare Match Flag E
      TCFE           : GTST_TCFE_Field := R7FA4M1AB.GPT164.Val_0;
      --  Input Compare Match Flag F
      TCFF           : GTST_TCFF_Field := R7FA4M1AB.GPT164.Val_0;
      --  Overflow Flag
      TCFPO          : GTST_TCFPO_Field := R7FA4M1AB.GPT164.Val_0;
      --  Underflow Flag
      TCFPU          : GTST_TCFPU_Field := R7FA4M1AB.GPT164.Val_0;
      --  These bits are read as 0000000. The write value should be 0000000.
      Reserved       : GTST_Reserved_Field := 16#0#;
      --  Read-only. Count Direction Flag
      TUCF           : GTST_TUCF_Field := R7FA4M1AB.GPT164.Val_1;
      --  These bits are read as 00000000. The write value should be 00000000.
      Reserved_1     : GTST_Reserved_Field_1 := 16#0#;
      --  Read-only. Output Disable Flag
      ODF            : GTST_ODF_Field := R7FA4M1AB.GPT164.Val_0;
      --  These bits are read as 0000. The write value should be 0000.
      Reserved_2     : GTST_Reserved_Field_2 := 16#0#;
      --  Read-only. Same Time Output Level High Disable Request Enable
      OABHF          : GTST_OABHF_Field := R7FA4M1AB.GPT164.Val_0;
      --  Read-only. Same Time Output Level Low Disable Request Enable
      OABLF          : GTST_OABLF_Field := R7FA4M1AB.GPT164.Val_0;
      --  unspecified
      Reserved_31_31 : R7FA4M1AB.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTST_Register use record
      TCFA           at 0 range 0 .. 0;
      TCFB           at 0 range 1 .. 1;
      TCFC           at 0 range 2 .. 2;
      TCFD           at 0 range 3 .. 3;
      TCFE           at 0 range 4 .. 4;
      TCFF           at 0 range 5 .. 5;
      TCFPO          at 0 range 6 .. 6;
      TCFPU          at 0 range 7 .. 7;
      Reserved       at 0 range 8 .. 14;
      TUCF           at 0 range 15 .. 15;
      Reserved_1     at 0 range 16 .. 23;
      ODF            at 0 range 24 .. 24;
      Reserved_2     at 0 range 25 .. 28;
      OABHF          at 0 range 29 .. 29;
      OABLF          at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype GTBER_BD_Field is R7FA4M1AB.UInt2;

   --  GTCCRA Buffer Operation
   type GTBER_CCRA_Field is
     (--  Buffer operation is not performed
      Val_00,
      --  Single buffer operation (GTCCRA <--> GTCCRC)
      Val_01,
      --  Double buffer operation (GTCCRA <--> GTCCRC <--> GTCCRD)
      Val_10,
      --  Double buffer operation (GTCCRA <--> GTCCRC <--> GTCCRD)
      Val_11)
     with Size => 2;
   for GTBER_CCRA_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   --  GTCCRB Buffer Operation
   type GTBER_CCRB_Field is
     (--  Buffer operation is not performed
      Val_00,
      --  Single buffer operation (GTCCRB <--> GTCCRE)
      Val_01,
      --  Double buffer operation (GTCCRB <--> GTCCRE <--> GTCCRF)
      Val_10,
      --  Double buffer operation (GTCCRB <--> GTCCRE <--> GTCCRF)
      Val_11)
     with Size => 2;
   for GTBER_CCRB_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   subtype GTBER_PR_Field is R7FA4M1AB.UInt2;

   --  GTCCRA and GTCCRB Forcible Buffer Operation This bit is read as 0.
   type GTBER_CCRSWT_Field is
     (--  no effect
      Val_0,
      --  Forcibly performs buffer transfer of GTCCRA and GTCCRB. This bit
--  automatically returns to 0 after the writing of 1.
      Val_1)
     with Size => 1;
   for GTBER_CCRSWT_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  General PWM Timer Buffer Enable Register
   type GTBER_Register is record
      --  BD[1]: GTPR Buffer Operation Disable BD[0]: GTCCR Buffer Operation
      --  Disable
      BD             : GTBER_BD_Field := 16#0#;
      --  unspecified
      Reserved_2_15  : R7FA4M1AB.UInt14 := 16#0#;
      --  GTCCRA Buffer Operation
      CCRA           : GTBER_CCRA_Field := R7FA4M1AB.GPT164.Val_00;
      --  GTCCRB Buffer Operation
      CCRB           : GTBER_CCRB_Field := R7FA4M1AB.GPT164.Val_00;
      --  GTPR Buffer Operation
      PR             : GTBER_PR_Field := 16#0#;
      --  Write-only. GTCCRA and GTCCRB Forcible Buffer Operation This bit is
      --  read as 0.
      CCRSWT         : GTBER_CCRSWT_Field := R7FA4M1AB.GPT164.Val_0;
      --  unspecified
      Reserved_23_31 : R7FA4M1AB.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTBER_Register use record
      BD             at 0 range 0 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      CCRA           at 0 range 16 .. 17;
      CCRB           at 0 range 18 .. 19;
      PR             at 0 range 20 .. 21;
      CCRSWT         at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  Negative-Phase Waveform Setting
   type GTDTCR_TDE_Field is
     (--  GTCCRB is set without using GTDVU and GTDVD.
      Val_0,
      --  GTDVU and GTDVD are used to set the compare match value for negative-phase
--  waveform with dead time automatically in GTCCRB.
      Val_1)
     with Size => 1;
   for GTDTCR_TDE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype GTDTCR_Reserved_Field is R7FA4M1AB.UInt3;

   --  GTDTCR_Reserved array
   type GTDTCR_Reserved_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for GTDTCR_Reserved
   type GTDTCR_Reserved_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  Reserved as a value
            Val : R7FA4M1AB.UInt2;
         when True =>
            --  Reserved as an array
            Arr : GTDTCR_Reserved_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for GTDTCR_Reserved_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype GTDTCR_Reserved_Field_2 is R7FA4M1AB.UInt2;
   subtype GTDTCR_Reserved_Field_3 is R7FA4M1AB.UInt23;

   --  General PWM Timer Dead Time Control Register
   type GTDTCR_Register is record
      --  Negative-Phase Waveform Setting
      TDE        : GTDTCR_TDE_Field := R7FA4M1AB.GPT164.Val_0;
      --  These bits are read as 000. The write value should be 000.
      Reserved   : GTDTCR_Reserved_Field := 16#0#;
      --  This bit is read as 0. The write value should be 0.
      Reserved_1 : GTDTCR_Reserved_Field_1 :=
                    (As_Array => False, Val => 16#0#);
      --  These bits are read as 00. The write value should be 00.
      Reserved_2 : GTDTCR_Reserved_Field_2 := 16#0#;
      --  This bit is read as 0. The write value should be 0.
      Reserved_3 : Boolean := False;
      --  These bits are read as 00000000000000000000000. The write value
      --  should be 00000000000000000000000.
      Reserved_4 : GTDTCR_Reserved_Field_3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTDTCR_Register use record
      TDE        at 0 range 0 .. 0;
      Reserved   at 0 range 1 .. 3;
      Reserved_1 at 0 range 4 .. 5;
      Reserved_2 at 0 range 6 .. 7;
      Reserved_3 at 0 range 8 .. 8;
      Reserved_4 at 0 range 9 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  General PWM Timer 4 (16-bit)
   type GPT164_Peripheral is record
      --  General PWM Timer Write-Protection Register
      GTWP     : aliased GTWP_Register;
      --  General PWM Timer Software Start Register
      GTSTR    : aliased GTSTR_Register;
      --  General PWM Timer Software Stop Register
      GTSTP    : aliased GTSTP_Register;
      --  General PWM Timer Software Clear Register
      GTCLR    : aliased GTCLR_Register;
      --  General PWM Timer Start Source Select Register
      GTSSR    : aliased GTSSR_Register;
      --  General PWM Timer Stop Source Select Register
      GTPSR    : aliased GTPSR_Register;
      --  General PWM Timer Clear Source Select Register
      GTCSR    : aliased GTCSR_Register;
      --  General PWM Timer Up Count Source Select Register
      GTUPSR   : aliased GTUPSR_Register;
      --  General PWM Timer Down Count Source Select Register
      GTDNSR   : aliased GTDNSR_Register;
      --  General PWM Timer Input Capture Source Select Register A
      GTICASR  : aliased GTICASR_Register;
      --  General PWM Timer Input Capture Source Select Register B
      GTICBSR  : aliased GTICBSR_Register;
      --  General PWM Timer Control Register
      GTCR     : aliased GTCR_Register;
      --  General PWM Timer Count Direction and Duty Setting Register
      GTUDDTYC : aliased GTUDDTYC_Register;
      --  General PWM Timer I/O Control Register
      GTIOR    : aliased GTIOR_Register;
      --  General PWM Timer Interrupt Output Setting Register
      GTINTAD  : aliased GTINTAD_Register;
      --  General PWM Timer Status Register
      GTST     : aliased GTST_Register;
      --  General PWM Timer Buffer Enable Register
      GTBER    : aliased GTBER_Register;
      --  General PWM Timer Counter
      GTCNT    : aliased R7FA4M1AB.UInt32;
      --  General PWM Timer Compare Capture Register A
      GTCCRA   : aliased R7FA4M1AB.UInt32;
      --  General PWM Timer Compare Capture Register B
      GTCCRB   : aliased R7FA4M1AB.UInt32;
      --  General PWM Timer Compare Capture Register C
      GTCCRC   : aliased R7FA4M1AB.UInt32;
      --  General PWM Timer Compare Capture Register E
      GTCCRE   : aliased R7FA4M1AB.UInt32;
      --  General PWM Timer Compare Capture Register D
      GTCCRD   : aliased R7FA4M1AB.UInt32;
      --  General PWM Timer Compare Capture Register F
      GTCCRF   : aliased R7FA4M1AB.UInt32;
      --  General PWM Timer Cycle Setting Register
      GTPR     : aliased R7FA4M1AB.UInt32;
      --  General PWM Timer Cycle Setting Buffer Register
      GTPBR    : aliased R7FA4M1AB.UInt32;
      --  General PWM Timer Dead Time Control Register
      GTDTCR   : aliased GTDTCR_Register;
      --  General PWM Timer Dead Time Value Register U
      GTDVU    : aliased R7FA4M1AB.UInt32;
   end record
     with Volatile;

   for GPT164_Peripheral use record
      GTWP     at 16#0# range 0 .. 31;
      GTSTR    at 16#4# range 0 .. 31;
      GTSTP    at 16#8# range 0 .. 31;
      GTCLR    at 16#C# range 0 .. 31;
      GTSSR    at 16#10# range 0 .. 31;
      GTPSR    at 16#14# range 0 .. 31;
      GTCSR    at 16#18# range 0 .. 31;
      GTUPSR   at 16#1C# range 0 .. 31;
      GTDNSR   at 16#20# range 0 .. 31;
      GTICASR  at 16#24# range 0 .. 31;
      GTICBSR  at 16#28# range 0 .. 31;
      GTCR     at 16#2C# range 0 .. 31;
      GTUDDTYC at 16#30# range 0 .. 31;
      GTIOR    at 16#34# range 0 .. 31;
      GTINTAD  at 16#38# range 0 .. 31;
      GTST     at 16#3C# range 0 .. 31;
      GTBER    at 16#40# range 0 .. 31;
      GTCNT    at 16#48# range 0 .. 31;
      GTCCRA   at 16#4C# range 0 .. 31;
      GTCCRB   at 16#50# range 0 .. 31;
      GTCCRC   at 16#54# range 0 .. 31;
      GTCCRE   at 16#58# range 0 .. 31;
      GTCCRD   at 16#5C# range 0 .. 31;
      GTCCRF   at 16#60# range 0 .. 31;
      GTPR     at 16#64# range 0 .. 31;
      GTPBR    at 16#68# range 0 .. 31;
      GTDTCR   at 16#88# range 0 .. 31;
      GTDVU    at 16#8C# range 0 .. 31;
   end record;

   --  General PWM Timer 4 (16-bit)
   GPT164_Periph : aliased GPT164_Peripheral
     with Import, Address => GPT164_Base;

end R7FA4M1AB.GPT164;
