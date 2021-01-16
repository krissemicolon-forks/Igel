library STD;
use STD.textio.all;

package pkg_readline is
    procedure igel_printline( li: string );
    procedure igel_readline( prompt: string: eof_detected: out boolean; l: inout line );
end package pkg_readline;

package body pkg_readline is 
    type charfile is file of character;
    file stdout_char: charfile open write_mode is "STD_OUTPUT";

    procedure igel_printstr( l: string ) is 
    begin
        for i in l'range loop
            write( stdout_char, l( i ) );
        end loop;
    end procedure igel_printstr;
    
    procedure igel_printline( l: string ) is
    begin
        igel_printstr( l );
        write( stdout_char, LF );
    end procedure igel_printline;

    procedure igel_readline( prompt: string; eof_detected: out boolean; l: inout line ) is 
    begin
        igel_printstr( prompt );
        if endfile( input ) then
            eof_detected := true;
        else
            readline( input, 1 );
            eof_detected := false;
        end if;
    end procedure igel_readline;
end package body pkg_readline; 
