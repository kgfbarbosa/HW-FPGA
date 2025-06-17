--MEALY_FS
library ieee;
use ieee.std_logic_1164.all;
use work.state_pkg.all; -- Adicione esta linha para usar o pacote

entity mealy_fs is
  port (
    clk        : in  std_logic;
    reset      : in  std_logic;
    data_in    : in  std_logic;
    data_out   : out std_logic;
    current_state_display : out state_type -- Nova porta para expor o estado atual
  );
end entity mealy_fs;

architecture rtl of mealy_fs is
  -- O sinal 'state' agora usará o 'state_type' do pacote
  signal state : state_type;

begin
  -- Processo para transição de estados (síncrono) - Seu código existente
  process (clk, reset)
  begin
    if reset = '1' then
      state <= A; -- Estado inicial ao resetar
    elsif (rising_edge(clk)) then
      case state is
        when A =>
          if data_in = '0' then state <= A; else state <= B; end if;
        when B =>
          if data_in = '0' then state <= A; else state <= C; end if;
        when C =>
          if data_in = '0' then state <= D; else state <= J; end if;
        when D =>
          if data_in = '0' then state <= E; else state <= I; end if;
        when E =>
          if data_in = '0' then state <= C; else state <= F; end if;
        when F =>
          if data_in = '0' then state <= F; else state <= E; end if;
        when G =>
          if data_in = '0' then state <= H; else state <= E; end if;
        when H =>
          if data_in = '0' then state <= G; else state <= I; end if;
        when I =>
          if data_in = '0' then state <= D; else state <= H; end if;
        when J =>
          if data_in = '0' then state <= L; else state <= H; end if;
        when L =>
          if data_in = '0' then state <= L; else state <= M; end if;
        when M =>
          if data_in = '0' then state <= N; else state <= M; end if;
        when N =>
          if data_in = '0' then state <= N; else state <= G; end if;
        -- when others => state <= A; -- Opcional
      end case;
    end if;
  end process;

  -- Atribui o estado interno à porta de saída para o display
  current_state_display <= state;

  -- Processo para lógica de saída (combinacional para Mealy) - Seu código existente
  process (state, data_in)
  begin
    case state is
      when A => if data_in = '0' then data_out <= '0'; else data_out <= '1'; end if;
      when B => if data_in = '0' then data_out <= '0'; else data_out <= '1'; end if;
      when C => if data_in = '0' then data_out <= '0'; else data_out <= '1'; end if;
      when D => if data_in = '0' then data_out <= '0'; else data_out <= '0'; end if;
      when E => if data_in = '0' then data_out <= '1'; else data_out <= '1'; end if;
      when F => if data_in = '0' then data_out <= '0'; else data_out <= '1'; end if;
      when G => if data_in = '0' then data_out <= '1'; else data_out <= '0'; end if;
      when H => if data_in = '0' then data_out <= '1'; else data_out <= '0'; end if;
      when I => if data_in = '0' then data_out <= '0'; else data_out <= '1'; end if;
      when J => if data_in = '0' then data_out <= '1'; else data_out <= '0'; end if;
      when L => if data_in = '0' then data_out <= '0'; else data_out <= '1'; end if;
      when M => if data_in = '0' then data_out <= '0'; else data_out <= '0'; end if;
      when N => if data_in = '0' then data_out <= '1'; else data_out <= '0'; end if;
      -- when others => data_out <= '0'; -- Opcional
    end case;
  end process;

end architecture rtl;