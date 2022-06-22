----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:06:11 06/22/2022 
-- Design Name: 
-- Module Name:    Alu_text - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Alu_Test IS
END Alu_Test;
 
ARCHITECTURE behavior OF Alu_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT EjercicioAlu
    PORT(
         a : IN  std_logic_vector(7 downto 0);
         b : IN  std_logic_vector(7 downto 0);
         operacion : IN  std_logic_vector(3 downto 0);
         salida : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(7 downto 0) := (others => '0');
   signal b : std_logic_vector(7 downto 0) := (others => '0');
   signal operacion : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal salida : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: EjercicioAlu PORT MAP (
          a => a,
          b => b,
          operacion => operacion,
          salida => salida
        );

   -- Clock process definitions
  
   stim_proc: process
begin
-- hold reset state for 10 ns.
		a <= "00000010";
		b <= "00001000";
		operacion <= "0000";
		wait for 10 ns;
		operacion <= "0001";
		wait for 10 ns;
		operacion <= "0010";
		wait for 10 ns;
		operacion <= "0011";
		wait for 10 ns;
		operacion <= "0100";
		wait for 10 ns;
		operacion <= "0101";
		wait for 10 ns;
		operacion <= "0110";
		wait for 10 ns;
		operacion <= "0111";
		wait for 10 ns;
		operacion <= "1000";
		wait for 10 ns;
		operacion <= "1001";
		wait for 10 ns;
		operacion <= "1010";
		wait for 10 ns;
		operacion <= "1011";
		wait for 10 ns;
		operacion <= "1111";
		wait for 10 ns;
		-- insert stimulus here
		wait;
	end process;
END;

