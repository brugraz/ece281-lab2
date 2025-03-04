----------------------------------------------------------------------------------
-- Company: USAF Academy, ECE 281
-- Engineer: C3C Bruno Graziao
-- 
-- Create Date: 02/24/2025 10:41:21 AM
-- Design Name: 
-- Module Name: sevenseg_decoder - Behavioral
-- Project Name: Lab 2 - Seven segment display 
-- Target Devices: Basys3
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: IEEE.STD_LOGIC_1164.ALL
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenseg_decoder is
    Port ( i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
           o_seg_n : out STD_LOGIC_VECTOR (6 downto 0));
end sevenseg_decoder;

architecture Behavioral of sevenseg_decoder is

with i_sel select
o_D <=  "0000000" when "0000",
        "0010" when "01",
        "0100" when "10",
        "1000" when "11",
        "0000" when others;
begin


end Behavioral;
