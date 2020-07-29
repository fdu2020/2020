-- ==============================================================
-- File generated on Tue Jul 28 17:04:06 +0800 2020
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity pow_generic_doublcud_rom is 
    generic(
             DWIDTH     : integer := 109; 
             AWIDTH     : integer := 6; 
             MEM_SIZE    : integer := 64
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of pow_generic_doublcud_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 to 2=> "1111111101111100000111101111110100011001001011101110001101001111110011101110101001010001100111100010101010000", 
    3 to 4=> "0000011110011100110011011100001000001100110100010000010110000111110110101000100010001100100010001001011011001", 
    5 to 6=> "0001000000000001101101111011001010110111011010001110100111011000011100101110011111101101100100110010110110111", 
    7 to 9=> "0001100010101111011111010101101001110010011110000110101111111101111011000100100011110101100010101111011110101", 
    10 to 11=> "0010000110101011001111000000000101101000111101111101101100001100001101100000000011010101100101110001000001000", 
    12 to 14=> "0010101011111010100111111101001111000001101010100100011101000110110101000001000000101011100101110010111010010", 
    15 to 17=> "0011010010100011111110010111011000101110111000101010101000101110001001101011111101000000111010011011101010100", 
    18 to 21=> "0011111010101110010101111101011010000000100101011101011001001011000000010110110110001001011010100010111110010", 
    22 to 25=> "0100100100100001101001110100000111101100100111010010110100110000101111101001100000101011011110010010110100110", 
    26 to 29=> "0101010000000110110101110001100111111011101111100100001010001000000011111001110010110101010010101101111010111", 
    30 to 31=> "0101111101101000000001111110110001111001100000110101001100000111011010101110000100100110011010010011110010101", 
    32 to 33=> "1011001111011000100101000001000110010100101110100010000011011111000110111100010111100111100010100000101000011", 
    34 to 35=> "1011100111011110101011000100111001101010100101101010101101000001010110111100101011111011110110100000111011111", 
    36 to 38=> "1100000000001001111011100010001001011100101100101000111000110101001001000101110101111001001011110000000011100", 
    39 to 41=> "1100011001011100001011110110110111100011111110101001111111110111100000110011101000010011101110000010101100010", 
    42 to 43=> "1100110011010111011010011100001100110000100000010111101001100011010011001000100101100111001011001011100101011", 
    44 to 46=> "1101001101111101101111100001101111001010000001110011101110111110111001110010011000111101100011111110100000111", 
    47 to 49=> "1101101001010001011110010000110011011001010001001001110010110111110000110011000101101111100110100011110010010", 
    50 to 53=> "1110000101010101000101111000111011101110001110111111110101100101111001000110001001010001101111000010101111101", 
    54 to 56=> "1110100010001011010011000111001000110011110000111001011110110011111010100101000010010111101100010001000011010", 
    57 to 60=> "1110111111110111000001101001110100010000011111011001000000011111000100001000010110011000111001101011010011101", 
    61 to 63=> "1111011110011011011110000011100101111011001000100010001100111100100100001010101101001100101011000011101101100" );


begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity pow_generic_doublcud is
    generic (
        DataWidth : INTEGER := 109;
        AddressRange : INTEGER := 64;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of pow_generic_doublcud is
    component pow_generic_doublcud_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    pow_generic_doublcud_rom_U :  component pow_generic_doublcud_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


