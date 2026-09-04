-- 
-- Copyright (C) 2026 Marcus Gigandet
--
-- SPDX-License-Identifier: LGPL-3.0-or-later
-- 

with HAL.UART; use HAL.UART;

package RA4M1_HAL.UART is
   pragma Preelaborate;

   subtype UART_Baud_Rate is Positive;

   type UART_Stop_Bits is (Stop_Bits_1, Stop_Bits_2);

   type UART_Parity_Type is (Parity_None, Parity_Even, Parity_Odd);

   type UART_Configuration is record
      Baud         : UART_Baud_Rate := 115_200;
      Stop_Bits    : UART_Stop_Bits := Stop_Bits_1;
      Parity_Type  : UART_Parity_Type := Parity_None;
      Loopback     : Boolean := False;
      Enable_FIFOs : Boolean := True;
   end record;

   type UART_Port is new HAL.UART.UART_Port with record
      Num    : Positive := 1;
      Config : UART_Configuration;
   end record;

   Default_UART_Configuration : constant UART_Configuration := (others => <>);

   procedure Configure
     (This   : in out UART_Port;
      Config : UART_Configuration := Default_UART_Configuration);

   overriding
   function Data_Size (Port : UART_Port) return HAL.UART.UART_Data_Size;

   overriding
   procedure Transmit
     (This    : in out UART_Port;
      Data    : UART_Data_8b;
      Status  : out UART_Status;
      Timeout : Natural := 1000);

   overriding
   procedure Transmit
     (This    : in out UART_Port;
      Data    : UART_Data_9b;
      Status  : out UART_Status;
      Timeout : Natural := 1000);

   overriding
   procedure Receive
     (This    : in out UART_Port;
      Data    : out UART_Data_8b;
      Status  : out UART_Status;
      Timeout : Natural := 1000);

   overriding
   procedure Receive
     (This    : in out UART_Port;
      Data    : out UART_Data_9b;
      Status  : out UART_Status;
      Timeout : Natural := 1000);

end RA4M1_HAL.UART;
