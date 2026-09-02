package body RA4M1_HAL.UART is

   procedure Configure
     (This   : in out UART_Port;
      Config : UART_Configuration := Default_UART_Configuration)
   is
   begin
      null;
   end Configure;

   overriding
   function Data_Size
      (Port : UART_Port)
      return UART_Data_Size
   is (Data_Size_8b);

   overriding
   procedure Transmit
     (This    : in out UART_Port;
      Data    : UART_Data_8b;
      Status  : out UART_Status;
      Timeout : Natural := 1000)
   is
   begin
      null;
   end Transmit;

   overriding
   procedure Transmit
     (This    : in out UART_Port;
      Data    : UART_Data_9b;
      Status  : out UART_Status;
      Timeout : Natural := 1000)
   is
   begin
      null;
   end Transmit;

   overriding
   procedure Receive
     (This    : in out UART_Port;
      Data    : out UART_Data_8b;
      Status  : out UART_Status;
      Timeout : Natural := 1000)
   is
   begin
      null;
   end Receive;

   overriding
   procedure Receive
     (This    : in out UART_Port;
      Data    : out UART_Data_9b;
      Status  : out UART_Status;
      Timeout : Natural := 1000)
   is
   begin
      null;
   end Receive;

end RA4M1_HAL.UART;
