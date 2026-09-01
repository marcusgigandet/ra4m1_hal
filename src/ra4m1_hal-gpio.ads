package RA4M1_HAL.GPIO is
   pragma Preelaborate;

   type Port_Number is range 0 .. 9;
   type Pin_Number is range 0 .. 15;


   type GPIO_Pin is record
      Port     : Port_Number;
      Number   : Pin_Number;
   end record;

   procedure Digital_Write(Pin : GPIO_Pin; High : Boolean);
   function Digital_Read (Pin : GPIO_Pin) return Boolean;

end RA4M1_HAL.GPIO;
