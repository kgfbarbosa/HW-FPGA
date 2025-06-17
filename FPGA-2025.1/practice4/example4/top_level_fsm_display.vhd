--TOP_LEVEL
library ieee;
use ieee.std_logic_1164.all;
use work.state_pkg.all; -- Adicione esta linha para usar o pacote

entity top_level_fsm_display is
  port (
    -- Entradas da FSM original
    clk      : in  std_logic;
    reset    : in  std_logic;
    data_in  : in  std_logic;
    -- Saída da FSM original
    fsm_data_out : out std_logic;
    -- Saída para o display de 7 segmentos
    seven_seg_out : out std_logic_vector(6 downto 0)
  );
end entity top_level_fsm_display;

architecture structural of top_level_fsm_display is

  -- Sinal para conectar a saída de estado da FSM com a entrada do decodificador
  signal current_state_signal : state_type;

  -- Declaração do componente mealy_fs
  component mealy_fs is
    port (
      clk        : in  std_logic;
      reset      : in  std_logic;
      data_in    : in  std_logic;
      data_out   : out std_logic;
      current_state_display : out state_type
    );
  end component mealy_fs;

  -- Declaração do componente state_to_7seg
  component state_to_7seg is
    port (
      current_fsm_state : in  state_type;
      seg_out           : out std_logic_vector(6 downto 0)
    );
  end component state_to_7seg;

begin

  -- Instanciação da máquina de estados Mealy
  u_mealy_fs : mealy_fs
    port map (
      clk        => clk,
      reset      => reset,
      data_in    => data_in,
      data_out   => fsm_data_out,
      current_state_display => current_state_signal -- Conecta à saída de estado
    );

  -- Instanciação do decodificador para o display de 7 segmentos
  u_state_to_7seg : state_to_7seg
    port map (
      current_fsm_state => current_state_signal, -- Recebe o estado atual da FSM
      seg_out           => seven_seg_out      -- Envia para a saída do display
    );

end architecture structural;