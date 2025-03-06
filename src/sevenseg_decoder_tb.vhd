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
entity sevenseg_decoder_tb is
end sevenseg_decoder_tb;

architecture test_bench of sevenseg_decoder_tb is
component sevenseg_decoder is
  Port ( i_Hex   : in  STD_LOGIC_VECTOR (3 downto 0);
         o_seg_n : out STD_LOGIC_VECTOR (6 downto 0)
  );
end component;

  signal sw : STD_LOGIC_VECTOR(3 downto 0);
  signal Y  : STD_LOGIC_VECTOR(6 downto 0);

begin 
-- port maps
sevenseg_decoder_inst : sevenseg_decoder port map(
  i_Hex    => sw,
  o_seg_n  => Y
);

test_process : process
begin
-- test cases
  sw <= x"0"; wait for 10 ns;
    assert Y = "1000000" report "bad x0" severity failure;
  sw <= x"1"; wait for 10 ns;
    assert Y = "1111001" report "bad x1" severity failure;
  sw <= x"2"; wait for 10 ns;
    assert Y = "0100100" report "bad x2" severity failure;
  sw <= x"3"; wait for 10 ns;
    assert Y = "0110000" report "bad x3" severity failure;
  sw <= x"4"; wait for 10 ns;
    assert Y = "0011001" report "bad x4" severity failure;
  sw <= x"5"; wait for 10 ns;
    assert Y = "0010010" report "bad x5" severity failure;
  sw <= x"6"; wait for 10 ns;
    assert Y = "0000010" report "bad x6" severity failure;
  sw <= x"7"; wait for 10 ns;
    assert Y = "1111000" report "bad x7" severity failure;
  sw <= x"8"; wait for 10 ns;
    assert Y = "0000000" report "bad x8" severity failure;
  sw <= x"9"; wait for 10 ns;
    assert Y = "0011000" report "bad x9" severity failure;
  sw <= x"a"; wait for 10 ns;
    assert Y = "0001000" report "bad xA" severity failure;
  sw <= x"b"; wait for 10 ns;
    assert Y = "0000011" report "bad xB" severity failure;
  sw <= x"c"; wait for 10 ns;
    assert Y = "0100111" report "bad xC" severity failure;
  sw <= x"d"; wait for 10 ns;
    assert Y = "0100001" report "bad xD" severity failure;
  sw <= x"e"; wait for 10 ns;
    assert Y = "0000110" report "bad xE" severity failure;
  sw <= x"f"; wait for 10 ns;
    assert Y = "0001110" report "bad xF" severity failure;

  wait;
  end process;

end test_bench;
