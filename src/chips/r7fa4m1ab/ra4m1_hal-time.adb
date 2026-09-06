--
--  Copyright (C) 2026 Marcus Gigandet
--
--  SPDX-License-Identifier: LGPL-3.0-or-later
--

with HAL.Time;

package body RA4M1_HAL.Time is

   overriding
   procedure Delay_Microseconds (This : in out Delays; Us : Integer)
   is
   begin
      null;
   end Delay_Microseconds;

   overriding
   procedure Delay_Milliseconds (This : in out Delays; Ms : Integer)
   is
   begin
      null;
   end Delay_Milliseconds;

   overriding
   procedure Delay_Seconds (This : in out Delays; S : Integer)
   is
   begin
      null;
   end Delay_Seconds;
end RA4M1_HAL.Time;
