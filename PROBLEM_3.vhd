library IEEE;
use ieee.std_logic_1164.all;

ENTITY PROBLEM_3 IS
PORT ( X1,X2,X3,X4 : IN STD_LOGIC;
            f      : OUT STD_LOGIC);
END PROBLEM_3;

ARCHITECTURE Behavior OF PROBLEM_3 IS
BEGIN 
	f<= (not x1 and x2) or (x3 and x4);
END Behavior;