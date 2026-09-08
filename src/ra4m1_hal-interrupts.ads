--
--  Copyright (C) 2026 Marcus Gigandet
--
--  SPDX-License-Identifier: LGPL-3.0-or-later
--

with Cortex_M.NVIC;
with System.Machine_Code;

package RA4M1_HAL.Interrupts is
   pragma Preelaborate;

   subtype Interrupt_ID is Cortex_M.NVIC.Interrupt_ID;
   subtype Interrupt_Priority is Cortex_M.NVIC.Interrupt_Priority;

   type Interrupt_Handler is access procedure;

   procedure Attach_Handler
     (Handler  : Interrupt_Handler;
      ID       : Interrupt_ID;
      Priority : Interrupt_Priority)
   with Inline;

   procedure Disable_Interrupts
   with Inline;

   procedure Enable_Interrupts
   with Inline;

   procedure _IRQ_Handler
   with Export, Convention => Asm;

end RA4M1_HAL.Interrupts;
