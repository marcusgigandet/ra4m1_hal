--
--  Copyright (C) 2026 Marcus Gigandet
--
--  SPDX-License-Identifier: LGPL-3.0-or-later
--

with HAL;
with HAL.Time;

package RA4M1_HAL.Time is
   pragma Preelaborate;

   type Delays is new HAL.Time.Delays with null record;

   --  Perform a blocking delay for Us microseconds.
   --  @note Negative delay durations are invalid.
   --
   --  @param This The delay provider.
   --  @param Us The duration to delay for in microseconds.
   overriding
   procedure Delay_Microseconds (This : in out Delays; Us : Integer);

   --  Perform a blocking delay for Ms milliseconds.
   --  @note Negative delay durations are invalid.
   --
   --  @param This The delay provider.
   --  @param Ms The duration to delay for in milliseconds.
   overriding
   procedure Delay_Milliseconds (This : in out Delays; Ms : Integer);

   --  Performs a blocking delay for S seconds.
   --  @note Negative delay durations are invalid.
   --
   --  @param This The delay provider.
   --  @param S The duration to delay for in seconds.
   overriding
   procedure Delay_Seconds (This : in out Delays; S : Integer);

   --  The delay provider.
   Delayer : RA4M1_HAL.Time.Delays;

end RA4M1_HAL.Time;
