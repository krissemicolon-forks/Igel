entity repl is
end entity repl;

library STD;
use STD.textio.all;
library WORK;
use WORK.pkg_readline.all;

architecture test of repl is
    function igel_READ( str: in string ) return string is
    begin
        return str;
    end function igel_READ;
    
    function EVAL( ast: in string; env: in string ) return string is
    begin
        return ast;
    end function EVAL;

    function igel_PRINT( exp: in string ) return string is
    begin
        return exp;
    end function igel_PRINT;

    function REP( str: in string ) return string is
    begin
        return igel_PRINT( EVAL( igel_READ( str ), "" ) );
    end function REP;

    procedure repl is
        variable is_eof: boolean;
        variable input_line: line;
    begin
        while (true) loop
            igel_readline( "igel> ", is_eof, input_line );
            exit when is_eof;
            next when input_line'length = 0;
            igel_printline( REP( input_line.all ) );
        end;
        igel_printline("");
    end procedure repl;

begin
    repl;
end architecture test;
