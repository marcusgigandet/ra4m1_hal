--
--  Copyright (C) 2026 Marcus Gigandet
--
--  SPDX-License-Identifier: LGPL-3.0-or-later
--

with HAL;
with System.Machine_Code;

package RA4M1_HAL.Interrupts is
   pragma Preelaborate;

   procedure Attach_Handler
     (Handler  : Interrupt_Handler;
      ID       : Interrupt_ID;
      Priority : Interrupt_Priority)
   with Inline
   is
   begin
      ID.Clear_Pending;
      ID.Set_Priority (Priority);
      ID.Enable_Interrupt;
   end Attach_Handler;

   procedure Disable_Interrupts with Inline is
   begin
      System.Machine_Code.Asm ("cpsid if", Volatile => True);
   end Disable_Interrupts;

   procedure Enable_Interrupts with Inline is
   begin
      System.Machine_Code.Asm ("cpsie if", Volatile => True);
   end Enable_Interrupts;

   procedure _IRQ_Handler is
   begin
      null;
   end _IRQ_Handler;

end RA4M1_HAL.Interrupts;
