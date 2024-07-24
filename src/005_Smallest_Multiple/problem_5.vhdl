library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity problem_5 is
    port
    (
        nReset:           in  std_logic;
        clk:              in  std_logic;
        maxDivisor:       in  std_logic_vector (31 downto 0);
        done:             out std_logic;
        smallestDividend: out std_logic_vector (31 downto 0)
    );
end problem_5;

architecture Behavioural of problem_5 is

    -- Current dividend which is divided by the current divisor
    signal dividend, divisor: unsigned(31 downto 0) := to_unsigned(1, 32);
    signal dividend_n, divisor_n: unsigned(31 downto 0) := to_unsigned(1, 32);
    signal done_i, done_n: std_logic := '0';
    signal divisible: std_logic := '0';

begin

    process(clk, nReset, done_i, divisible)
    begin
        -- Defaults
        done_n <= done_i;
        divisor_n <= divisor;
        dividend_n <= dividend;
        if nReset = '0' then
            done_n <= '0';
            dividend_n <= to_unsigned(1, 32);
            divisor_n <= to_unsigned(1, 32);
        elsif rising_edge(clk) then
            done <= done_i;
            if done_i = '0' then
                if divisible = '1' then
                    if divisor = unsigned(maxDivisor) then
                        done_n <= '1';
                        smallestDividend <= std_logic_vector(dividend);
                    else
                        divisor_n <= divisor + 1;
                    end if;
                else
                    dividend_n <= dividend + 1;
                    divisor_n <= to_unsigned(1, 32);
                end if;
            end if;
        end if;
    end process;

    divisible <= '1' when dividend rem divisor = 0 else '0';
    dividend <= dividend_n;
    divisor <= divisor_n;
    done_i <= done_n;

end Behavioural;
