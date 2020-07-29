-- ==============================================================
-- File generated on Tue Jul 28 17:04:07 +0800 2020
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity pow_generic_doublkbM_rom is 
    generic(
             DWIDTH     : integer := 58; 
             AWIDTH     : integer := 8; 
             MEM_SIZE    : integer := 256
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of pow_generic_doublkbM_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1000000000000000000000000000000000000000000000000000000000", 
    1 => "1000000010000000010000000001010101011010101010111011101111", 
    2 => "1000000100000001000000001010101100000000001000100010110110", 
    3 => "1000000110000010010000100100000110110001000000111011010100", 
    4 => "1000001000000100000001010101101010101110111100011100100010", 
    5 => "1000001010000110010010100111011110111101000100000011011011", 
    6 => "1000001100001001000100100001101100100000100001101110100010", 
    7 => "1000001110001100010111001100011110100001000001000010011101", 
    8 => "1000010000010000001010110000000010001001001111110110010011", 
    9 => "1000010010010100011111010100100110100111011111001000010010", 
    10 => "1000010100011001010101000010011101001110000011111010110000", 
    11 => "1000010110011110101100000001111001010011111000011001001110", 
    12 => "1000011000100100100100011011010000010100111101000101111000", 
    13 => "1000011010101010111110010110111001110010111010001111010010", 
    14 => "1000011100110001111001111101001111010101100001001110100010", 
    15 => "1000011110111001010111010110101100101011001110001101101101", 
    16 => "1000100001000001010110101011101111101001101001110110101111", 
    17 => "1000100011001001111000000100111000001110001011001010111000", 
    18 => "1000100101010010111011101010101000011110011001100010011011", 
    19 => "1000100111011100100001100101100100101000101110110101001001", 
    20 => "1000101001100110101001111110010011000100111001101011001000", 
    21 => "1000101011110001010100111101011100010100011111110110010100", 
    22 => "1000101101111100100010101011101011000011100000110100100101", 
    23 => "1000110000001000010011010001101100001000111000011010011111", 
    24 => "1000110010010100100110111000001110100111000001100110101101", 
    25 => "1000110100100001011101101000000011101100011001011110001100", 
    26 => "1000110110101110110111101001111110110100000010010001000110", 
    27 => "1000111000111100110101000110110101100110000110101000011011", 
    28 => "1000111011001011010110000111011111111000011100111100100111", 
    29 => "1000111101011010011010110100110111101111001010110100110100", 
    30 => "1000111111101010000011010111111001011101001000101111001101", 
    31 => "1001000001111010001111111001100011100100100101110010001100", 
    32 => "1001000100001011000000100010110110110111101011100110011111", 
    33 => "1001000110011100010101011100110110011001000010011010010010", 
    34 => "1001001000101110001110110000100111011100010101001101011110", 
    35 => "1001001011000000101100100111010001100110110110000110110000", 
    36 => "1001001101010011101111001001111110110000000010110010000101", 
    37 => "1001001111100111010110100001111011000010001001001000000101", 
    38 => "1001010001111011100010111000010100111010101011111110101110", 
    39 => "1001010100010000010100010110011101001011001000000011000111", 
    40 => "1001010110100101101011000101100110111001011000111100101010", 
    41 => "1001011000111011100111001111000111100000011110011001010111", 
    42 => "1001011011010010001000111100010110110001000001100011100111", 
    43 => "1001011101101001010000010110101110110001111010100001001001", 
    44 => "1001100000000000111101100111101100000000110101111011100000", 
    45 => "1001100010011001010000111000101101010010111010110001111000", 
    46 => "1001100100110010001010010011010011110101010000010100011111", 
    47 => "1001100111001011101010000001000011001101100100001001010101", 
    48 => "1001101001100101110000001011100001011010110000011010100101", 
    49 => "1001101100000000011100111100010110110101100010001110100011", 
    50 => "1001101110011011110000011101001110010001000000001001001001", 
    51 => "1001110000110111101010110111110100111011010000110111001100", 
    52 => "1001110011010100001100010101111010011110000010000011001011", 
    53 => "1001110101110001010101000001010000111111001111010100000000", 
    54 => "1001111000001111000101000011101101000001101001010101001111", 
    55 => "1001111010101101011100100111000101100101011101001001011001", 
    56 => "1001111101001100011011110101010100001000111011100101110101", 
    57 => "1001111111101100000010111000010100101001000000111000110001", 
    58 => "1010000010001100010001111010000101100001111100011001000001", 
    59 => "1010000100101101001001000100100111101111111000011111110011", 
    60 => "1010000111001110101000100001111110101111100010101100011101", 
    61 => "1010001001110000110000011100010000011110110011110010010011", 
    62 => "1010001100010011100000111101100101011101011000010000011011", 
    63 => "1010001110110110111010010000001000101101011000110011110001", 
    64 => "1010010001011010111100011110000111110100000011000011001100", 
    65 => "1010010011111111100111110001110010111010010010010101110101", 
    66 => "1010010110100100111100010101011100101101011000110011101000", 
    67 => "1010011001001010111010010011011010011111101000100000001110", 
    68 => "1010011011110001100001110110000100001000111100110000000010", 
    69 => "1010011110011000110011000111110100000111100011100111110011", 
    70 => "1010100001000000101110010011000111100000100111100110011110", 
    71 => "1010100011101001010011100010011110000000111001011001100001", 
    72 => "1010100110010010100011000000011001111101011001111011101101", 
    73 => "1010101000111100011100110111100000010100000100011110100000", 
    74 => "1010101011100111000001010010011000101100011000111101110110", 
    75 => "1010101110010010010000011011101101011000000110011110101100", 
    76 => "1010110000111110001010011110001011010011110101111000000100", 
    77 => "1010110011101010101111100100100010000111110100100110111100", 
    78 => "1010110110010111111111111001100100001000011111101100101010", 
    79 => "1010111001000101111011101000000110010111001110111000010001", 
    80 => "1010111011110100100010111011000000100010111111111010100111", 
    81 => "1010111110100011110101111101001101001001000010000101001110", 
    82 => "1011000001010011110100111001101001010101100001110100001110", 
    83 => "1011000100000100011111111011010101000100010100100011000010", 
    84 => "1011000110110101110111001101010011000001100100101100001001", 
    85 => "1011001001100111111010111010101000101010011101110011110111", 
    86 => "1011001100011010101011001110011110001101111000111110001011", 
    87 => "1011001111001110001000010011111110101101001001001111100111", 
    88 => "1011010010000010010010010110010111111100101000011001011001", 
    89 => "1011010100110111001001100000111010100100100011110000101111", 
    90 => "1011010111101100101101111110111010000001101001010001001111", 
    91 => "1011011010100010111111111011101100100101110100101010110110", 
    92 => "1011011101011001111111100010101011011000111100111010110110", 
    93 => "1011100000010001101100111111010010011001100001110000011011", 
    94 => "1011100011001010001000011101000000011101011001011100100101", 
    95 => "1011100110000011010010000111010111010010011110101101011011", 
    96 => "1011101000111101001010001001111011011111011110110101001100", 
    97 => "1011101011110111110000110000010100100100100111111100011111", 
    98 => "1011101110110011000110000110001100111100010111100000011101", 
    99 => "1011110001101111001010010111010001111100001000111100010111", 
    100 => "1011110100101011111101101111010011110101000100011110111100", 
    101 => "1011110111101001100000011010000101110100101110001011011111", 
    102 => "1011111010100111110010100011011110000101110101000110101101", 
    103 => "1011111101100110110100010111010101110001000010101111010111", 
    104 => "1100000000100110100110000001101000111101101010100010111001", 
    105 => "1100000011100111000111101110010110110010011001101101110001", 
    106 => "1100000110101000011001101001100001010110000111000111111110", 
    107 => "1100001001101010011011111111001101110000100011011101011110", 
    108 => "1100001100101101001110111011100100001011001001100010101000", 
    109 => "1100001111110000110010101010101111110001101110110100110100", 
    110 => "1100010010110101000111011000111110110011010100000111001101", 
    111 => "1100010101111010001101010010100010100010110110011011101010", 
    112 => "1100011001000000000100100011101111011000000000000111111011", 
    113 => "1100011100000110101101011000111100101111111010000111001010", 
    114 => "1100011111001110000111111110100101001101111101010111101101", 
    115 => "1100100010010110010100100001000110011100100100100101010100", 
    116 => "1100100101011111010011001101000001001101111101111111110110", 
    117 => "1100101000101001000100001110111001011100111101011110010111", 
    118 => "1100101011110011100111110011010110001101101110101110110011", 
    119 => "1100101110111110111110000111000001101110100111110010010011", 
    120 => "1100110010001011000111010110101001011000111011100110000010", 
    121 => "1100110101011000000011101110111101110001101100111000110110", 
    122 => "1100111000100101110011011100110010101010100001001101100011", 
    123 => "1100111011110100010110101100111111000010010100001010000010", 
    124 => "1100111111000011101101101100011101000110001010110011001010", 
    125 => "1101000010010011111000101000001010010010000111010101101001", 
    126 => "1101000101100100110111101101000111010001111100111011110101", 
    127 => "1101001000110110101011001000011000000010000011110000010101", 
    128 => "0100110110100010110010111111000110111110010110000010011111", 
    129 => "0100110111110000100101011001110000001001110000110111010111", 
    130 => "0100111000111110101011010011011011110001010010011000010011", 
    131 => "0100111010001101000100110001000010001100100010111011111001", 
    132 => "0100111011011011110001110111011101000001011010100100011001", 
    133 => "0100111100101010110010101011100111000100010100100110000001", 
    134 => "0100111101111010000111010010011100011000100011010010010101", 
    135 => "0100111111001001101111110000111010010000100011101000010110", 
    136 => "0101000000011001101100001011111111001110010001001001101110", 
    137 => "0101000001101001111100101000101011000011011001110100111100", 
    138 => "0101000010111010100001001011111110110001110010000100010100", 
    139 => "0101000100001011011001111010111100101011101000110010001010", 
    140 => "0101000101011100100110111010101000010011111011100001111101", 
    141 => "0101000110101110001000010000000110011110101010101110100000", 
    142 => "0101000111111111111110000000011101010001001101111101001001", 
    143 => "0101001001010010001000010000110100000010101000010110001010", 
    144 => "0101001010100100100111000110010011011011111101000010001101", 
    145 => "0101001011110111011010100110000101011000100011101100110100", 
    146 => "0101001101001010100010110101010101000110011101001100001101", 
    147 => "0101001110011101111111111001001111000110101000001110000100", 
    148 => "0101001111110001110001110111000001001101010110001001101100", 
    149 => "0101010001000101111000110011111010100010011111110111001101", 
    150 => "0101010010011010010100110101001011100001111010101100000100", 
    151 => "0101010011101111000110000000000101111011101101011100110101", 
    152 => "0101010101000100001100011001111100110100100101100100001001", 
    153 => "0101010110011001101000001000000100100110001100001111000000", 
    154 => "0101010111101111011001001111110010111111011011101110011100", 
    155 => "0101011001000101011111110110011111000100110100101110011000", 
    156 => "0101011010011011111100000001100001010000110011110001111110", 
    157 => "0101011011110010101101110110010011010100000110110101001101", 
    158 => "0101011101001001110101011010010000010110000010110100000000", 
    159 => "0101011110100001010010110010110100110100111001010110101001", 
    160 => "0101011111111001000110000101011110100110001110100011101010", 
    161 => "0101100001010001001111010111101100110111001110110111001101", 
    162 => "0101100010101001101110101111000000001101000100111111111000", 
    163 => "0101100100000010100100010000111010100101010000000001000001", 
    164 => "0101100101011011110000000010111111010101111001011010100110", 
    165 => "0101100110110101010010001010110011001110001011010110100011", 
    166 => "0101101000001111001010101101111100010110100110111011110011", 
    167 => "0101101001101001011001110010000010010001011010100110101100", 
    168 => "0101101011000011111111011100101101111010111000100111001110", 
    169 => "0101101100011110111011110011101001101001101101100100110001", 
    170 => "0101101101111010001110111100100001001111010111000111100001", 
    171 => "0101101111010101111000111101000001111000011010100111100100", 
    172 => "0101110000110001111001111010111010001100111100000001101010", 
    173 => "0101110010001110010001111011111010010000110100110001110011", 
    174 => "0101110011101011000001000101110011100100001010110011010111", 
    175 => "0101110101001000000111011110011001000011100111100111001111", 
    176 => "0101110110100101100101001011011111001000101111011111100001", 
    177 => "0101111000000011011010010010111011101010011000110001001000", 
    178 => "0101111001100001100110111010100101111101000011001011010010", 
    179 => "0101111011000000001011001000010110110011001111010100101111", 
    180 => "0101111100011111000111000010001000011101110110001110111111", 
    181 => "0101111101111110011010101101110110101100100000111111010001", 
    182 => "0101111111011110000110010001011110101110000000011101100100", 
    183 => "0110000000111110001001110010111111010000100101001001100100", 
    184 => "0110000010011110100101011000011000100010010111000101011110", 
    185 => "0110000011111111011001000111101100010001101101110111000000", 
    186 => "0110000101100000100101000110111101101101101000101110001010", 
    187 => "0110000111000010001001011100010001100110000110110010010100", 
    188 => "0110001000100100000110001101101110001100011111010101000011", 
    189 => "0110001010000110011011100001011011010011111010001011011001", 
    190 => "0110001011101001001001011101100010010001101000001100111001", 
    191 => "0110001101001100010000001000001101111101011011111001000011", 
    192 => "0110001110101111101111100111101010110010000010000010101110", 
    193 => "0110010000010011101000000010000110101101011010100001111000", 
    194 => "0110010001110111111001011101110001010001010001001011011000", 
    195 => "0110010011011100100100000000111011100011010110101111001011", 
    196 => "0110010101000001100111110001111000001101111001111100100111", 
    197 => "0110010110100111000100110110111011100000000000101101000111", 
    198 => "0110011000001100111011010110011011001110000001010101000011", 
    199 => "0110011001110011001011010110101110110001111011111011001000", 
    200 => "0110011011011001110100111110001111001011110011110101111010", 
    201 => "0110011101000000111000010011010111000010001001001111111001", 
    202 => "0110011110101000010101011100100010100010010010110001110111", 
    203 => "0110100000010000001100100000001111100000110111010011110001", 
    204 => "0110100001111000011101100100111101011010000111110100000000", 
    205 => "0110100011100001001000110001001101010010011001010101001100", 
    206 => "0110100101001010001110001011100001110110011111000010011000", 
    207 => "0110100110110011101101111010011111011100000100011001111101", 
    208 => "0110101000011101101000000100101100000010000111011110111100", 
    209 => "0110101010000111111100110000101111010001010011010000111001", 
    210 => "0110101011110010101100000101010010011100011010001010100011", 
    211 => "0110101101011101110110001001000000100000110000100110111011", 
    212 => "0110101111001001011011000010100110000110100111101101001010", 
    213 => "0110110000110101011010111000110001100001101000000011000011", 
    214 => "0110110010100001110101110010010010110001001100100110010011", 
    215 => "0110110100001110101011110101111011100000111101101100011011", 
    216 => "0110110101111011111101001010011111001001001100001001100010", 
    217 => "0110110111101001101001110110110010101111001100011101110110", 
    218 => "0110111001010111110010000001101101000101110010001010000000", 
    219 => "0110111011000110010101110010000110101101101011001010010000", 
    220 => "0110111100110101010101001110111001110101111011011000100000", 
    221 => "0110111110100100110000011111000010011100011000010101001111", 
    222 => "0111000000010100100111101001011110001110000100110111011100", 
    223 => "0111000010000100111010110101001100100111101101000011011000", 
    224 => "0111000011110101101010001001001110110110000010001000011000", 
    225 => "0111000101100110110101101100100111110110010110100101101001", 
    226 => "0111000111011000011101100110011100010110111010010110000111", 
    227 => "0111001001001010100001111101110010110111010111000011010101", 
    228 => "0111001010111101000010111001110011101001001100011111011001", 
    229 => "0111001100110000000000100001101000110000001101000110000111", 
    230 => "0111001110100011011010111100011110000010111010100101001101", 
    231 => "0111010000010111010010010001100001001011000010101011101110", 
    232 => "0111010010001011100110101000000001100101111100000000101011", 
    233 => "0111010100000000011000000111010000100101000011000000110100", 
    234 => "0111010101110101100110110110100001001110010111000011110011", 
    235 => "0111010111101011010010111101001000011100110111101000100000", 
    236 => "0111011001100001011100100010011101000001000001101000110001", 
    237 => "0111011011011000000011101101110111100001001100110100011000", 
    238 => "0111011101001111001000100110110010011010001001010011011111", 
    239 => "0111011111000110101011010100101001111111011101010000011100", 
    240 => "0111100000111110101011111110111100011100000010101000111100", 
    241 => "0111100010110111001010101101001001110010100101000110110100", 
    242 => "0111100100110000000111100110110011111110000000000000000101", 
    243 => "0111100110101001100010110011011110110001111100011110101111", 
    244 => "0111101000100011011100011010101111111011001111101111111011", 
    245 => "0111101010011101110100100100001111000000011001011010110000", 
    246 => "0111101100011000101011010111100101100010000001111110101111", 
    247 => "0111101110010100000000111100011110111011011001011001110001", 
    248 => "0111110000001111110101011010101000100010110101110101111001", 
    249 => "0111110010001100001000111001110001101010010010011110101001", 
    250 => "0111110100001000111011100001101011011111101110011110010001", 
    251 => "0111110110000110001101011010001001001101101100000010011101", 
    252 => "0111111000000011111110101010111111111011101111101001001001", 
    253 => "0111111010000010001111011100000110101110111111010100111000", 
    254 => "0111111100000000111111110101010110101010100010001001001111", 
    255 => "0111111110000000001111111110101010101111111111101110111100" );


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

entity pow_generic_doublkbM is
    generic (
        DataWidth : INTEGER := 58;
        AddressRange : INTEGER := 256;
        AddressWidth : INTEGER := 8);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of pow_generic_doublkbM is
    component pow_generic_doublkbM_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    pow_generic_doublkbM_rom_U :  component pow_generic_doublkbM_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


