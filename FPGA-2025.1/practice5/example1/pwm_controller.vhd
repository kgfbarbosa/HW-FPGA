library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pwm_controller is
    port (
        clk          : in  std_logic; -- Clock principal do sistema (50 MHz)
        clk_sawtooth : in  std_logic; -- Clock para o gerador de dente de serra (~2.63 MHz)
        reset_n      : in  std_logic;
        btn_inc      : in  std_logic; -- Botão para incrementar a razão cíclica
        btn_dec      : in  std_logic; -- Botão para decrementar a razão cíclica
        sawtooth_val : in  unsigned(7 downto 0); -- Valor atual do dente de serra
        pwm_out      : out std_logic; -- Saída do sinal PWM
        duty_cycle_out : out unsigned(7 downto 0) -- Saída para o valor do duty cycle (para o DA)
    );
end entity pwm_controller;

architecture behavioral of pwm_controller is

    signal s_duty_cycle       : unsigned(7 downto 0) := (others => '0'); -- Valor da razão cíclica (0 a 255)
    signal s_pwm_out_internal : std_logic := '0';

    -- Sinais para detecção de borda dos botões (para evitar múltiplos incrementos/decrementos)
    signal s_btn_inc_prev     : std_logic := '1';
    signal s_btn_dec_prev     : std_logic := '1';

begin

    -- Processo para a geração do sinal PWM
    process (sawtooth_val, s_duty_cycle)
    begin
        if sawtooth_val < s_duty_cycle then
            s_pwm_out_internal <= '1';
        else
            s_pwm_out_internal <= '0';
        end if;
    end process;

    -- Processo para controle dos botões e atualização da razão cíclica
    -- Este processo deve rodar com o clock principal de 50 MHz para uma detecção de botão responsiva
    process (clk, reset_n)
    begin
        if reset_n = '0' then
            --s_duty_cycle <= (others => '0'); -- Começa com 0% duty cycle
            s_duty_cycle <= "10000000"; -- Começa com 50% duty cycle
            s_btn_inc_prev <= '1';
            s_btn_dec_prev <= '1';
        elsif rising_edge(clk) then
            -- Detecção de borda de descida para o botão de incrementar
            if btn_inc = '0' and s_btn_inc_prev = '1' then
                if s_duty_cycle < 255 then -- Limita a 100%
                    s_duty_cycle <= s_duty_cycle + 1;
                end if;
            end if;
            s_btn_inc_prev <= btn_inc;

            -- Detecção de borda de descida para o botão de decrementar
            if btn_dec = '0' and s_btn_dec_prev = '1' then
                if s_duty_cycle > 0 then -- Limita a 0%
                    s_duty_cycle <= s_duty_cycle - 1;
                end if;
            end if;
            s_btn_dec_prev <= btn_dec;
        end if;
    end process;

    -- Atribuição das saídas
    pwm_out <= s_pwm_out_internal;
    duty_cycle_out <= s_duty_cycle; -- Saída para o seu conversor DA

end architecture behavioral;