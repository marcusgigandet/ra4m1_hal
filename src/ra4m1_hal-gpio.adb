with R7FA4M1AB; use R7FA4M1AB;
with R7FA4M1AB.PORT0;
with R7FA4M1AB.PORT1;
with R7FA4M1AB.PORT2;
with R7FA4M1AB.PORT3;
with R7FA4M1AB.PORT4;
with R7FA4M1AB.PORT5;
with R7FA4M1AB.PORT6;
with R7FA4M1AB.PORT7;
with R7FA4M1AB.PORT8;
with R7FA4M1AB.PORT9;

package body RA4M1_HAL.GPIO is

   function Pin_Mask (Pin : Pin_Number) return UInt16
   is (2 ** Natural (Pin));

   procedure Digital_Write (Pin : GPIO_Pin; High : Boolean) is
      Mask  : constant UInt16 := Pin_Mask (Pin.Number);
      Value : constant R7FA4M1AB.PORT0.PCNTR3_Register :=
        (if High
         then (POSR => Mask, PORR => 0)
         else (POSR => 0, PORR => Mask));
   begin
      --  PCNTR3 atomically changes only the selected output bit.
      case Pin.Port is
         when 0 =>
            R7FA4M1AB.PORT0.PORT0_Periph.PCNTR3 := Value;

         when 1 =>
            R7FA4M1AB.PORT1.PORT1_Periph.PCNTR3 :=
              (POSR => Value.POSR, PORR => Value.PORR);

         when 2 =>
            R7FA4M1AB.PORT2.PORT2_Periph.PCNTR3 :=
              (POSR => Value.POSR, PORR => Value.PORR);

         when 3 =>
            R7FA4M1AB.PORT3.PORT3_Periph.PCNTR3 :=
              (POSR => Value.POSR, PORR => Value.PORR);

         when 4 =>
            R7FA4M1AB.PORT4.PORT4_Periph.PCNTR3 :=
              (POSR => Value.POSR, PORR => Value.PORR);

         when 5 =>
            R7FA4M1AB.PORT5.PORT5_Periph.PCNTR3 :=
              (POSR => Value.POSR, PORR => Value.PORR);

         when 6 =>
            R7FA4M1AB.PORT6.PORT6_Periph.PCNTR3 :=
              (POSR => Value.POSR, PORR => Value.PORR);

         when 7 =>
            R7FA4M1AB.PORT7.PORT7_Periph.PCNTR3 :=
              (POSR => Value.POSR, PORR => Value.PORR);

         when 8 =>
            R7FA4M1AB.PORT8.PORT8_Periph.PCNTR3 :=
              (POSR => Value.POSR, PORR => Value.PORR);

         when 9 =>
            R7FA4M1AB.PORT9.PORT9_Periph.PCNTR3 :=
              (POSR => Value.POSR, PORR => Value.PORR);
      end case;
   end Digital_Write;

   function Digital_Read (Pin : GPIO_Pin) return Boolean is
      Mask : constant UInt16 := Pin_Mask (Pin.Number);
   begin
      return
        (case Pin.Port is
           when 0 => (R7FA4M1AB.PORT0.PORT0_Periph.PCNTR2.PIDR and Mask) /= 0,
           when 1 => (R7FA4M1AB.PORT1.PORT1_Periph.PCNTR2.PIDR and Mask) /= 0,
           when 2 => (R7FA4M1AB.PORT2.PORT2_Periph.PCNTR2.PIDR and Mask) /= 0,
           when 3 => (R7FA4M1AB.PORT3.PORT3_Periph.PCNTR2.PIDR and Mask) /= 0,
           when 4 => (R7FA4M1AB.PORT4.PORT4_Periph.PCNTR2.PIDR and Mask) /= 0,
           when 5 => (R7FA4M1AB.PORT5.PORT5_Periph.PCNTR2.PIDR and Mask) /= 0,
           when 6 => (R7FA4M1AB.PORT6.PORT6_Periph.PCNTR2.PIDR and Mask) /= 0,
           when 7 => (R7FA4M1AB.PORT7.PORT7_Periph.PCNTR2.PIDR and Mask) /= 0,
           when 8 => (R7FA4M1AB.PORT8.PORT8_Periph.PCNTR2.PIDR and Mask) /= 0,
           when 9 => (R7FA4M1AB.PORT9.PORT9_Periph.PCNTR2.PIDR and Mask) /= 0);
   end Digital_Read;

end RA4M1_HAL.GPIO;
