--STATE PACKAGE
library ieee;
use ieee.std_logic_1164.all;

package state_pkg is
  -- Define um tipo enumerado para os estados da máquina (o mesmo da sua FSM)
  type state_type is (A, B, C, D, E, F, G, H, I, J, L, M, N);
end package state_pkg;