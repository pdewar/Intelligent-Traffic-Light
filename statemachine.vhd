library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity state_machine is
    Port ( clock, reset, sensor, sensort, long, short : in std_logic;
              HL1, HL0, FL1, FL0, TL0, TL1, clear : out std_logic );
end state_machine;

architecture Behavioral of state_machine is
 type state_type is ( hwygreen0, hwygreen1, hwyyellow0, hwyyellow1, hwyred0, hwyred1, 
farmgreen0, farmgreen1, farmyellow0, farmyellow1, farmred0, farmred1, turngreen0, turngreen1, turnred0, turnred1 );
 attribute enum_encoding: string; 
 attribute enum_encoding of state_type: type is "0000000000000001 0000000000000010 0000000000000100 0000000000001000 0000000000010000 0000000000100000 0000000001000000 0000000010000000 0000000100000000 0000001000000000 0000010000000000 0000100000000000 0001000000000000 0010000000000000 0100000000000000 1000000000000000";
signal CS, NS: state_type;

begin
   process (clock, reset) 
   begin
       if (reset='1') then 
	      CS <= hwygreen0; 
       elsif rising_edge(clock) then
	      CS <= NS; 
       end if;
   end process; 

   process (CS, reset, sensor, sensort, long, short)
   begin
      case CS is 
	when hwygreen0 =>
	    HL1 <= '0'; HL0 <= '0'; 
	    FL1 <= '0'; FL0 <= '1';
		 TL1 <= '0'; TL0 <= '1';
	    clear <= '1';
	    if (reset='0' and (sensor='1' or sensort='1') ) then 
	        NS <= hwygreen1; 
	    else
	        NS <= hwygreen0; 
         end if; 

	when hwygreen1 =>
	    HL1 <= '0'; HL0 <= '0'; 
	    FL1 <= '0'; FL0 <= '1';
		 TL1 <= '0'; TL0 <= '1';
	    clear <= '0';
	    if (reset='0' and (sensor='1' or sensort='1') and long='1' ) then 
	        NS <= hwyyellow0;
	    else
	        NS <= hwygreen1; 
         end if; 

	when hwyyellow0 =>
	    HL1 <= '0'; HL0 <= '0'; 
	    FL1 <= '0'; FL0 <= '1';
		 TL1 <= '0'; TL0 <= '1';
	    clear <= '1'; 
	    if (reset='0' and (sensor='1' or sensort='1')) then 
	        NS <= hwyyellow1;
	    else
	        NS <= hwygreen0;
         end if; 

	when hwyyellow1 =>
	    HL1 <= '1'; HL0 <= '0'; 
	    FL1 <= '0'; FL0 <= '1';
		 TL1 <= '0'; TL0 <= '1';
	    clear <= '0'; 
	    if (reset='0' and short='1') then 
	        NS <= hwyred0;
	    else
	        NS <= hwyyellow1;
         end if; 
			
	when hwyred0 =>
		 HL1 <= '1'; HL0 <= '0'; 
		 FL1 <= '0'; FL0 <= '1';
		 TL1 <= '0'; TL0 <= '1';
		 clear <= '1'; 
		 if (reset='0') then 
			NS <= hwyred1;
		 else
			NS <= hwygreen0;
		 end if; 
		 
	when hwyred1 =>
		HL1 <= '0'; HL0 <= '1'; 
		FL1 <= '0'; FL0 <= '1';
		TL1 <= '0'; TL0 <= '1';
		clear <= '0'; 
		if (reset='0' and short='1') then 
			NS <= farmgreen0;
		else
			NS <= hwyred1;
		end if;	

	when farmgreen0 =>
	    HL1 <= '0'; HL0 <= '1'; 
	    FL1 <= '0'; FL0 <= '1'; 
		 TL1 <= '0'; TL0 <= '1';
	    clear <= '1'; 
	    if (reset='0' and sensor='1') then 
	        NS <= farmgreen1;
		 elsif(reset='0' and sensort='1')then
			NS <= turngreen0;
	    else 
	        NS <= hwygreen0; 
         end if; 

	when farmgreen1 =>
	    HL1 <= '0'; HL0 <= '1'; 
	    FL1 <= '0'; FL0 <= '0'; 
		 TL1 <= '0'; TL0 <= '1';
	    clear <= '0'; 
	    if (reset='0' and ( sensor='0' or long='1' ) ) then 
	        NS <= farmyellow0; 
	    else 
	        NS <= farmgreen1; 
         end if; 

	when farmyellow0 =>
	    HL1 <= '0'; HL0 <= '1'; 
	    FL1 <= '0'; FL0 <= '0'; 
		 TL1 <= '0'; TL0 <= '1';
	    clear <= '1'; 
	    if (reset='0') then 
	        NS <= farmyellow1; 
	    else
	        NS <= hwygreen0; 
         end if; 

	when farmyellow1 =>
	    HL1 <= '0'; HL0 <= '1'; 
	    FL1 <= '1'; FL0 <= '0';
       TL1 <= '0'; TL0 <= '1';		 
	    clear <= '0'; 
	    if (reset='0' and short='1') then 
	        NS <= farmred0;  --to farmred0--
	    else
	        NS <= farmyellow1; 
         end if;
			
	when farmred0 =>
		HL1 <= '0'; HL0 <= '1'; 
		FL1 <= '1'; FL0 <= '0';
		TL1 <= '0'; TL0 <= '1';
		clear <= '1'; 
		if (reset='0') then 
			NS <= farmred1;
		else
			NS <= hwygreen0;
		end if;
		
	when farmred1 =>
		HL1 <= '0'; HL0 <= '1'; 
		FL1 <= '0'; FL0 <= '1';
		TL1 <= '0'; TL0 <= '1';
		clear <= '0'; 
		if (reset='0' and short='1') then 
			NS <= turngreen0;
		else
			NS <= farmred1;
		end if;

	when turngreen0 =>
		HL1 <= '0'; HL0 <= '1'; 
		FL1 <= '0'; FL0 <= '1';
		TL1 <= '0'; TL0 <= '0';
		clear <= '1'; 
		if (reset='0' and sensort='1') then 
			NS <= turngreen1;
		else
			NS <= hwygreen0;
		end if;
		
	when turngreen1 =>
		HL1 <= '0'; HL0 <= '1'; 
		FL1 <= '0'; FL0 <= '1';
		TL1 <= '0'; TL0 <= '0';
		clear <= '0'; 
		if (reset='0' and long='1') then 
			NS <= turnred0;
		else
			NS <= turngreen1;
		end if;
		
	when turnred0 =>
		HL1 <= '0'; HL0 <= '1'; 
		FL1 <= '0'; FL0 <= '1';
		TL1 <= '0'; TL0 <= '0';
		clear <= '1'; 
		if (reset='0') then 
			NS <= turnred1;
		else
			NS <= hwygreen0;
		end if;
		
	when turnred1 =>
		HL1 <= '0'; HL0 <= '1'; 
		FL1 <= '0'; FL0 <= '1';
		TL1 <= '0'; TL0 <= '1';
		clear <= '0'; 
		if (reset='0' and short='1') then 
			NS <= hwygreen0;
		else
			NS <= turnred1;
		end if;

	end case; 
    end process; 

end Behavioral; 
