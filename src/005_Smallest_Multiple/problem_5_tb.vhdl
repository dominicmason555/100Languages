library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity problem_5_tb is
end problem_5_tb;

architecture tb of problem_5_tb is

    signal clk, nReset: std_logic := '0';
    signal maxDivisor, smallestDividend: std_logic_vector(31 downto 0);
    signal done: std_logic;

    constant Ts: time := 1 ns;

begin

    problem_5: entity work.problem_5
    port map
    (
        clk => clk,
        nReset => nReset,
        maxDivisor => maxDivisor,
        smallestDividend => smallestDividend,
        done => done
    );

    process
    begin
        clk <= '0';
        wait for Ts;
        clk <= '1';
        wait for Ts;
    end process;

    stimuli: process
    begin

        maxDivisor <= std_logic_vector(to_unsigned(10, 32));
        wait for 5 * Ts;
        report "Starting with maximum divisor of " & integer'image(to_integer(unsigned(maxDivisor)));
        nReset <= '1';

        wait until done = '1';
        report "Done, smallest dividend is " & integer'image(to_integer(unsigned(smallestDividend)));

        nReset <= '0';
        maxDivisor <= std_logic_vector(to_unsigned(20, 32));
        wait for 5 * Ts;
        report "Starting with maximum divisor of " & integer'image(to_integer(unsigned(maxDivisor)));
        nReset <= '1';

        wait until done = '1';
        report "Done, smallest dividend is " & integer'image(to_integer(unsigned(smallestDividend)));
        wait;

    end process;

end tb;
