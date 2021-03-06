generic
    type Item_Type is private;
    with function "="(Left: Item_Type; Right: Item_Type) return Boolean;
    with function "<"(Left: Item_Type; Right: Item_Type) return Boolean is <>;
package Parallel_Sort
with SPARK_Mode
   is
    type Array_Type is array(Natural range <>) of Item_Type;
    type Array_Access_Type is access all Array_Type;

    procedure Parallel_Merge_Sort(Input: Array_Access_Type;
                                  Result: Array_Access_Type);
   function merge_this(Left, Right : Array_Type) return Array_Type;

end Parallel_Sort;
