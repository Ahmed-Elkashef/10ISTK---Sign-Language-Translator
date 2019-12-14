-- I2C Communication Protocol with vhdl
------------------------------------------------------------------------------
--  Output     Output      Phase    Duty Cycle   Pk-to-Pk     Phase
--   Clock     Freq (MHz)  (degrees)    (%)     Jitter (ps)  Error (ps)
------------------------------------------------------------------------------
-- clk_out1____25.000______0.000______50.0______345.102____261.747
--
------------------------------------------------------------------------------
-- Input Clock   Freq (MHz)    Input Jitter (UI)
------------------------------------------------------------------------------
-- __primary_________125.000____________0.010


-- The following code must appear in the VHDL architecture header:
------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
component clk_wiz_0
port
 (-- Clock in ports
  -- Clock out ports
  clk_out1          : out    std_logic;
  -- Status and control signals
  reset             : in     std_logic;
  locked            : out    std_logic;
  clk_in1           : in     std_logic
 );
end component;

-- COMP_TAG_END ------ End COMPONENT Declaration ------------
-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.
------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : clk_wiz_0
   port map (
  -- Clock out ports
   clk_out1 => clk_out1,
  -- Status and control signals
   reset => reset,
   locked => locked,
   -- Clock in ports
   clk_in1 => clk_in1
 );
-- INST_TAG_END ------ End INSTANTIATION Template ------------
