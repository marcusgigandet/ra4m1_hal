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

   function Pin_Mask (Pin : GPIO_Pin) return UInt16
   is (2 ** Natural (Pin));

   overriding
   function Support (This : GPIO_Point; Capa : Capability) return Boolean is
      pragma Unreferenced (This);
   begin
      return Capa in Input | Output | Floating;
   end Support;

   overriding
   function Mode (This : GPIO_Point) return GPIO_Mode is
      Mask : constant UInt16 := Pin_Mask (This.Pin);
   begin
      return
        (case This.Port is
           when 0 =>
             (if (R7FA4M1AB.PORT0.PORT0_Periph.PCNTR1.PDR and Mask) /= 0
              then Output
              else Input),
           when 1 =>
             (if (R7FA4M1AB.PORT1.PORT1_Periph.PCNTR1.PDR and Mask) /= 0
              then Output
              else Input),
           when 2 =>
             (if (R7FA4M1AB.PORT2.PORT2_Periph.PCNTR1.PDR and Mask) /= 0
              then Output
              else Input),
           when 3 =>
             (if (R7FA4M1AB.PORT3.PORT3_Periph.PCNTR1.PDR and Mask) /= 0
              then Output
              else Input),
           when 4 =>
             (if (R7FA4M1AB.PORT4.PORT4_Periph.PCNTR1.PDR and Mask) /= 0
              then Output
              else Input),
           when 5 =>
             (if (R7FA4M1AB.PORT5.PORT5_Periph.PCNTR1.PDR and Mask) /= 0
              then Output
              else Input),
           when 6 =>
             (if (R7FA4M1AB.PORT6.PORT6_Periph.PCNTR1.PDR and Mask) /= 0
              then Output
              else Input),
           when 7 =>
             (if (R7FA4M1AB.PORT7.PORT7_Periph.PCNTR1.PDR and Mask) /= 0
              then Output
              else Input),
           when 8 =>
             (if (R7FA4M1AB.PORT8.PORT8_Periph.PCNTR1.PDR and Mask) /= 0
              then Output
              else Input),
           when 9 =>
             (if (R7FA4M1AB.PORT9.PORT9_Periph.PCNTR1.PDR and Mask) /= 0
              then Output
              else Input));
   end Mode;

   overriding
   procedure Set_Mode (This : in out GPIO_Point; Mode : GPIO_Config_Mode) is
      Mask : constant UInt16 := Pin_Mask (This.Pin);
   begin
      case This.Port is
         when 0 =>
            if Mode = Output then
               R7FA4M1AB.PORT0.PORT0_Periph.PCNTR1.PDR :=
                 R7FA4M1AB.PORT0.PORT0_Periph.PCNTR1.PDR or Mask;
            else
               R7FA4M1AB.PORT0.PORT0_Periph.PCNTR1.PDR :=
                 R7FA4M1AB.PORT0.PORT0_Periph.PCNTR1.PDR and not Mask;
            end if;

         when 1 =>
            if Mode = Output then
               R7FA4M1AB.PORT1.PORT1_Periph.PCNTR1.PDR :=
                 R7FA4M1AB.PORT1.PORT1_Periph.PCNTR1.PDR or Mask;
            else
               R7FA4M1AB.PORT1.PORT1_Periph.PCNTR1.PDR :=
                 R7FA4M1AB.PORT1.PORT1_Periph.PCNTR1.PDR and not Mask;
            end if;

         when 2 =>
            if Mode = Output then
               R7FA4M1AB.PORT2.PORT2_Periph.PCNTR1.PDR :=
                 R7FA4M1AB.PORT2.PORT2_Periph.PCNTR1.PDR or Mask;
            else
               R7FA4M1AB.PORT2.PORT2_Periph.PCNTR1.PDR :=
                 R7FA4M1AB.PORT2.PORT2_Periph.PCNTR1.PDR and not Mask;
            end if;

         when 3 =>
            if Mode = Output then
               R7FA4M1AB.PORT3.PORT3_Periph.PCNTR1.PDR :=
                 R7FA4M1AB.PORT3.PORT3_Periph.PCNTR1.PDR or Mask;
            else
               R7FA4M1AB.PORT3.PORT3_Periph.PCNTR1.PDR :=
                 R7FA4M1AB.PORT3.PORT3_Periph.PCNTR1.PDR and not Mask;
            end if;

         when 4 =>
            if Mode = Output then
               R7FA4M1AB.PORT4.PORT4_Periph.PCNTR1.PDR :=
                 R7FA4M1AB.PORT4.PORT4_Periph.PCNTR1.PDR or Mask;
            else
               R7FA4M1AB.PORT4.PORT4_Periph.PCNTR1.PDR :=
                 R7FA4M1AB.PORT4.PORT4_Periph.PCNTR1.PDR and not Mask;
            end if;

         when 5 =>
            if Mode = Output then
               R7FA4M1AB.PORT5.PORT5_Periph.PCNTR1.PDR :=
                 R7FA4M1AB.PORT5.PORT5_Periph.PCNTR1.PDR or Mask;
            else
               R7FA4M1AB.PORT5.PORT5_Periph.PCNTR1.PDR :=
                 R7FA4M1AB.PORT5.PORT5_Periph.PCNTR1.PDR and not Mask;
            end if;

         when 6 =>
            if Mode = Output then
               R7FA4M1AB.PORT6.PORT6_Periph.PCNTR1.PDR :=
                 R7FA4M1AB.PORT6.PORT6_Periph.PCNTR1.PDR or Mask;
            else
               R7FA4M1AB.PORT6.PORT6_Periph.PCNTR1.PDR :=
                 R7FA4M1AB.PORT6.PORT6_Periph.PCNTR1.PDR and not Mask;
            end if;

         when 7 =>
            if Mode = Output then
               R7FA4M1AB.PORT7.PORT7_Periph.PCNTR1.PDR :=
                 R7FA4M1AB.PORT7.PORT7_Periph.PCNTR1.PDR or Mask;
            else
               R7FA4M1AB.PORT7.PORT7_Periph.PCNTR1.PDR :=
                 R7FA4M1AB.PORT7.PORT7_Periph.PCNTR1.PDR and not Mask;
            end if;

         when 8 =>
            if Mode = Output then
               R7FA4M1AB.PORT8.PORT8_Periph.PCNTR1.PDR :=
                 R7FA4M1AB.PORT8.PORT8_Periph.PCNTR1.PDR or Mask;
            else
               R7FA4M1AB.PORT8.PORT8_Periph.PCNTR1.PDR :=
                 R7FA4M1AB.PORT8.PORT8_Periph.PCNTR1.PDR and not Mask;
            end if;

         when 9 =>
            if Mode = Output then
               R7FA4M1AB.PORT9.PORT9_Periph.PCNTR1.PDR :=
                 R7FA4M1AB.PORT9.PORT9_Periph.PCNTR1.PDR or Mask;
            else
               R7FA4M1AB.PORT9.PORT9_Periph.PCNTR1.PDR :=
                 R7FA4M1AB.PORT9.PORT9_Periph.PCNTR1.PDR and not Mask;
            end if;
      end case;
   end Set_Mode;

   procedure Configure (This : in out GPIO_Point; Mode : GPIO_Config_Mode) is
   begin
      Set_Mode (This, Mode);
   end Configure;

   overriding
   function Pull_Resistor (This : GPIO_Point) return GPIO_Pull_Resistor is
      pragma Unreferenced (This);
   begin
      return Floating;
   end Pull_Resistor;

   overriding
   procedure Set_Pull_Resistor
     (This : in out GPIO_Point; Pull : GPIO_Pull_Resistor)
   is
      pragma Unreferenced (This, Pull);
   begin
      null;
   end Set_Pull_Resistor;

   overriding
   function Set (This : GPIO_Point) return Boolean
   is (This.Read);

   overriding
   procedure Set (This : in out GPIO_Point) is
   begin
      This.Write (True);
   end Set;

   overriding
   procedure Clear (This : in out GPIO_Point) is
   begin
      This.Write (False);
   end Clear;

   overriding
   procedure Toggle (This : in out GPIO_Point) is
   begin
      This.Write (not This.Read);
   end Toggle;

   function Read (Point : GPIO_Point) return Boolean is
      Mask : constant UInt16 := Pin_Mask (Point.Pin);
   begin
      return
        (case Point.Port is
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
   end Read;

   procedure Write (Point : GPIO_Point; High : Boolean) is
      Mask  : constant UInt16 := Pin_Mask (Point.Pin);
      Value : constant R7FA4M1AB.PORT0.PCNTR3_Register :=
        (if High
         then (POSR => Mask, PORR => 0)
         else (POSR => 0, PORR => Mask));
   begin
      case Point.Port is
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
   end Write;

end RA4M1_HAL.GPIO;
