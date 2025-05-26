LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 
USE IEEE.STD_LOGIC_ARITH.ALL; 
USE IEEE.STD_LOGIC_UNSIGNED.ALL; 
 
ENTITY teclado IS 
               PORT (     rst : IN STD_LOGIC;                            -- Sinal de Reset 
                                clock_tec : IN STD_LOGIC;   -- Sinal de Clock do Teclado 
                                dados_tec : IN STD_LOGIC;   -- Sinal de Dados do Teclado 
                                scan_code: OUT STD_LOGIC_VECTOR (7 DOWNTO 0));   -- Valor Lido (Tabela ScanCode) 
END teclado; 
 
ARCHITECTURE leitura OF teclado IS 
 
 
              SIGNAL contador : NATURAL RANGE 0 TO 32 := 0;       -- Nº de bits lidos na AÇÃO COMPLETA 
              SIGNAL byte : STD_LOGIC_VECTOR (7 DOWNTO 0);   -- ScanCode enviado pelo teclado 
 
BEGIN 
ler_scancodes: PROCESS (clock_tec, rst) -- Processo que lê scancode do teclado quando pressionado 
 
               BEGIN 
 
            IF (rst = '0') THEN -- Se o reset for pressionado, zerá tudo. 
                 contador <= 0; 
                 scan_code <= "00000000"; 
               ELSIF ((clock_tec'EVENT) AND (clock_tec = '0')) THEN    -- Os dados são lidos na borda de descida. 
              contador <= contador + 1;                  -- Incremento inicial do contador (START Bit) 
 
            
              -- Inicio da transferência, bit a bit, de dados do teclado: 
 
              CASE contador IS 
                WHEN 0 => null;    -- START Bit ('0'). 
 
               WHEN 1 TO 8 =>     -- Primeiros 8 bits da palavra de dados 
                                                   contador <= contador + 1;   -- Contador é incrementado em 1, e 
                                                    byte(contador - 1) <= dados_tec;  -- byte vai recebendo os dados do teclado 
 
   WHEN 9 => -- Bit de Paridade ('1'). 
                contador <= contador + 1; -- Contador é incrementado em 1, e 
                scan_code <= byte; -- scan_code recebe o byte completo (Dados). 
 
   WHEN 10 => 
               IF (dados_tec = '1') THEN    -- Se STOP Bit é igual a '1' 
         contador <= contador + 1;  -- Contador é incrementado em 1. 
               ELSE null;                     -- Caso contrário não é o bit de parada 
                END IF; 
 
   WHEN 11 =>                        -- Fim da transmissão da ação de PRESSIONAR TECLA 
               IF (dados_tec = '0') THEN                    -- Teclado deve gerar um pulso igual a '0'(ACK) 
                                        contador <= contador + 1;            -- Contador incrementa 1.    
                              ELSE null; 
               END IF; 
 
   WHEN 12 TO 20 =>                      -- Intervalo de pulsos para uma nova palavra. 
                                 contador <= contador + 1;    -- Apenas é incrementado o contador. 
 
   WHEN 21 => 
                IF (dados_tec = '1') THEN    -- Fim do intervalo de 10 bits. 
      contador <= contador +1; 
                ELSE null; 
               END IF; 
 
   WHEN 22 => 
             IF (dados_tec = '0') THEN     -- START Bit, da ação de SOLTAR TECLA 
     contador <= contador + 1; 
             ELSE null; 
             END IF; 
 
   WHEN 23 TO 31 =>                                        -- bits gerados na ação de SOLTAR TECLA (não interessa) 
     contador <= contador + 1; 
 
    WHEN 32 => 
            IF (dados_tec = '1') THEN -- STOP Bit, da ação de SOLTAR TECLA 
     contador <= 0; -- Reinicia o contador. 
            ELSE null; 
           END IF;’ 
               END CASE; 
 
              END IF; 
 
END PROCESS ler_scancodes; 
END leitura;
