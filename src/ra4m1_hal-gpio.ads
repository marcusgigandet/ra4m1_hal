-- 
-- Copyright (C) 2026 Marcus Gigandet
--
-- SPDX-License-Identifier: LGPL-3.0-or-later
-- 

with HAL.GPIO; use HAL.GPIO;

package RA4M1_HAL.GPIO is
   pragma Preelaborate;

   type GPIO_Port is range 0 .. 9;
   type GPIO_Pin is range 0 .. 15;

   type GPIO_Point is new HAL.GPIO.GPIO_Point with record
      Port : GPIO_Port;
      Pin  : GPIO_Pin;
   end record;

   procedure Configure (This : in out GPIO_Point; Mode : GPIO_Config_Mode);

   overriding
   procedure Set_Mode (This : in out GPIO_Point; Mode : GPIO_Config_Mode);

   overriding
   function Support (This : GPIO_Point; Capa : Capability) return Boolean;

   overriding
   function Mode (This : GPIO_Point) return GPIO_Mode;

   overriding
   function Pull_Resistor (This : GPIO_Point) return GPIO_Pull_Resistor;

   overriding
   procedure Set_Pull_Resistor
     (This : in out GPIO_Point; Pull : GPIO_Pull_Resistor);

   overriding
   function Set (This : GPIO_Point) return Boolean;
   -- Reads This GPIO pin state.
   --
   -- @param This The GPIO pin to read.
   --
   --  Return True if This GPIO pin is currently high.

   overriding
   procedure Set (This : in out GPIO_Point);
   --  Drive This GPIO pin high.
   --
   --  @param This The GPIO pin to drive high.

   overriding
   procedure Clear (This : in out GPIO_Point);
   --  Drive This GPIO pin low.
   --
   --  @param This The GPIO pin to drive low.

   overriding
   procedure Toggle (This : in out GPIO_Point);
   --  Toggle the state of This GPIO pin.
   --
   --  If the pin is high, drive it low. If the pin is low, drive it high.
   --
   --  @param This The GPIO pin to toggle.

private

   procedure Write (Point : GPIO_Point; High : Boolean);
   function Read (Point : GPIO_Point) return Boolean;

end RA4M1_HAL.GPIO;
