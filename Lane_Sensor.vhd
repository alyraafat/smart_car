library ieee;
use ieee.std_logic_1164.all;
ENTITY Project1 IS 
	PORT( I , B : IN STD_LOGIC;	
			A,L,E,R,T: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
			M0,M1,M2,M3 : OUT STD_LOGIC);
END Project1; 
ARCHITECTURE Lans_Sensor_Arch OF Project1 IS 
BEGIN 
PROCESS (I , B)
BEGIN
IF I = '1' THEN
	M0 <= '0';
	M1 <= '1';
	M2 <= '0';
	M3 <= '1';
ELSE
--STOP 
	M0 <= '1';
	M1 <= '1';
	M2 <= '1';
	M3 <= '1';
	--REVERSE
	--M0 <= '0';
	--M1 <= '1';
	--M2 <= '0';
	--M3 <= '1';
END IF;
If B = '1' THEN
	A <= "0001000";
	L <= "1000111";
	E <= "0000110";
	R <= "0101111";
	T <= "0001111";
ELSE
	A <= "1111111";
	L <= "1111111";
	E <= "1111111";
	R <= "1111111";
	T <= "1111111";
END IF ;	
END PROCESS ;
END Lans_Sensor_Arch;