library ieee;
use ieee.std_logic_1164.all;

entity oros_2 is
	port (in1,in2: in std_logic; out1: out std_logic);
end oros_2;

architecture model_conc of oros_2 is
begin 
	out1<=in1 and in2;
end model_conc;



library ieee;
use ieee.std_logic_1164.all;

entity oros_3 is
	port (in1,in2,in3: in std_logic; out1: out std_logic);
end oros_3;

architecture model_conc2 of oros_3 is
begin 
	out1<=in1 and in2 and in3;
end model_conc2;



library ieee;
use ieee.std_logic_1164.all;

entity SOP is
	port (in1,in2,in3,in4,in5: in std_logic; out1: out std_logic);
end SOP;

architecture model_conc3 of SOP is
begin 
	out1<=in1 or in2 or in3 or in4 or in5;
end model_conc3;



library ieee;
use ieee.std_logic_1164.all;

entity PROBLEM_1 is 
	port (X1,X2,X3,X4,X5: in std_logic;
	                 f                 : out std_logic);
end PROBLEM_1;


architecture structural of PROBLEM_1 is
	component oros_2
		port (in1,in2: in std_logic; out1:out std_logic);
	end component;
	
	component oros_3
		port (in1,in2,in3: in std_logic; out1: out std_logic);
	end component;
	
	component SOP
		port (in1,in2,in3,in4,in5: in std_logic; out1:out std_logic);
	end component;
	
	signal oros1,oros2,oros3,oros4,oros5: std_logic;
	
	begin
		I0:oros_2 port map (not x3,not x5,oros1);
		I1:oros_2 port map (not x4,not x5,oros2);
		I2:oros_3 port map (not x1,x2,not x5,oros3);
		I3:oros_3 port map (not x1,not x2,not x4,oros4);
		I4:oros_3 port map (x2,x4,x5,oros5);
		I5:SOP    port map (oros1,oros2,oros3,oros4,oros5,f);
	end structural;	