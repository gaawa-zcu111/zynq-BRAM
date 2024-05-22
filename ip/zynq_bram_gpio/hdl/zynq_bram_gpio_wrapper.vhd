--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
--Date        : Wed May 22 15:04:56 2024
--Host        : LAPTOP-N26RM7D0 running 64-bit major release  (build 9200)
--Command     : generate_target zynq_bram_gpio_wrapper.bd
--Design      : zynq_bram_gpio_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zynq_bram_gpio_wrapper is
  port (
    dip_switches_8bits_tri_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    led_8bits_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    push_buttons_5bits_tri_i : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end zynq_bram_gpio_wrapper;

architecture STRUCTURE of zynq_bram_gpio_wrapper is
  component zynq_bram_gpio is
  port (
    dip_switches_8bits_tri_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    led_8bits_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    push_buttons_5bits_tri_i : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component zynq_bram_gpio;
begin
zynq_bram_gpio_i: component zynq_bram_gpio
     port map (
      dip_switches_8bits_tri_i(7 downto 0) => dip_switches_8bits_tri_i(7 downto 0),
      led_8bits_tri_o(7 downto 0) => led_8bits_tri_o(7 downto 0),
      push_buttons_5bits_tri_i(4 downto 0) => push_buttons_5bits_tri_i(4 downto 0)
    );
end STRUCTURE;
