library STD;
use STD.textio.all;
library WORK;
use WORK.types.all;

package environment is 
    procedure new_env( e: out env_ptr; an_outer: inout env_ptr );
    procedure new_env( e: out env_ptr; an_outer: inout env_ptr; binds: inout igel_val_ptr; exprs: inout igel_val_ptr );
    procedure env_set( e: inout env_ptr; key: inout igel_val_ptr; result: inout igel_val_ptr; err: inout igel_val_ptr );
end package environment;

package body environment is
    -- code to follow soon up;
end package body environment;
