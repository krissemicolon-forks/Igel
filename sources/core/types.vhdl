library STD;
use STD.textio.all;

package types is
    -- define some debug modes
    procedure debugline( l: inout line );
    procedure debug( str: in string );
    procedure debug( ch: in character );
    procedure debug( i: in integer );

    -- define the identifiers
    type igel_type_tag ( igel_nil, igel_true, igel_false, igel_number,
                         igel_symbol, igel_string, igel_keyword,
                         igel_list, igel_vector, igel_hashmap,
                         igel_atom, igel_nativefunction, igel_function );
    
    -- simple one-time declarations
    type igel_val;
    type igel_seq;
    type igel_func;
    type env_record;
    
    -- define some pointers
    type igel_val_ptr is access igel_val;
    type igel_seq_ptr is access igel_seq;
    type igel_func_ptr is access igel_func;
    type env_ptr is access env_record

    -- define paramenters
    type igel_val is record
        val_type: igel_type_tag;
        number_val: integer;    -- For types: number
        string_val: line;       -- For types: symbol, string, keyword, nativefn
        seq_val: igel_seq_ptr;   -- For types: list, vector, hashmap, atom
        func_val: igel_func_ptr; -- For function
        meta_val: igel_val_ptr;
    end record igel_val;

    -- utils for the seq keyword
    type igel_seq is array ( natural range <> ) of igel_val_ptr;

    -- structure for functions
    type igel_function is record
        f_body: igel_val_ptr;
        f_args: igel_val_ptr;
        f_env: env_ptr;
        f_is_macro: boolean;
    end record igel_function;

    -- utils for declaring new env words
    type env_record is record
        outer: env_ptr;
        data: igel_val_ptr;
    end record env_record;

    -- define the reserved keywords
    procedure new_nil( obj: out igel_val_ptr );
    procedure new_true( obj: out igel_val_ptr );
    procedure new_false( obj: out igel_val_ptr );
    procedure new_boolean( b: in boolean; obj: out igel_val_ptr );
    procedure new_number( v: in integer; obj: out igel_val_ptr );
    procedure new_symbol( name: in string; obj: out igel_val_ptr );
    procedure new_symbol( name: inout line; obj: out igel_val_ptr );
    procedure new_string( name: in string; obj: out igel_val_ptr );
    procedure new_string( name: inout line; obj: out igel_val_ptr );
    procedure new_keyword( name: in string; obj: out igel_val_ptr );
    procedure new_keyword( name: inout line; obj: out igel_val_ptr );
    procedure new_nativefunction( name: in string; obj: out igel_val_ptr );
    procedure new_function( body_ast: inout igel_val_ptr; args: inout igel_val_ptr; env: inout env_ptr; obj: out mal_val_ptr );
    procedure new_seq_obj( seq_type: in igel_type_tag; seq: inout igel_seq_ptr; obj: out igel_val_ptr );
    procedure new_one_element_list( val: inout igel_val_ptr; obj: out igel_val_ptr );
    procedure new_empty_hashmap( obj: out igel_val_ptr );
    procedure new_atom( val: inout igel_val_ptr; obj: out igel_val_ptr );
    procedure hashmap_copy( hashmap: inout igel_val_ptr; obj: out igel_val_ptr );
    procedure hashmap_get( hashmap: inout igel_val_ptr; key: inout igel_val_ptr; val: out igel_val_ptr );
    procedure hashmap_contains( hashmap: inout igel_val_ptr; key: inout igel_val_ptr; ok: out boolean );
    procedure hashmap_put( hashmap: inout igel_val_ptr; key: inout igel_val_ptr; val: inout igel_val_ptr );
    procedure hashmap_delete( hashmap: inout igel_val_ptr; key: inout igel_val_ptr );
    procedure seq_drop_prefix( src: inout igel_val_ptr; prefix_length: in integer; result: out igel_val_ptr );
    function is_sequential_type( t: in igel_type_tag ) return boolean;
    procedure equal_q( a: inout igel_val_ptr; b: inout igel_val_ptr; result: out boolean );
end package types;

package body types is
end package body types;
