
-- VHDL Instantiation Created from source file state_machine.vhd -- 18:21:21 11/20/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT state_machine
	PORT(
		clock : IN std_logic;
		reset : IN std_logic;
		sensor : IN std_logic;
		long : IN std_logic;
		short : IN std_logic;          
		HL1 : OUT std_logic;
		HL0 : OUT std_logic;
		FL1 : OUT std_logic;
		FL0 : OUT std_logic;
		clear : OUT std_logic
		);
	END COMPONENT;

	Inst_state_machine: state_machine PORT MAP(
		clock => ,
		reset => ,
		sensor => ,
		long => ,
		short => ,
		HL1 => ,
		HL0 => ,
		FL1 => ,
		FL0 => ,
		clear => 
	);


