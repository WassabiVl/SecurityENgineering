package body parallel_sort
with SPARK_Mode
is
   function merge_this(Left, Right : Array_Type) return Array_Type is
      Result : Array_Type(Left'First..Right'Last);
      Left_Index : Natural := Left'First;
      Right_Index : Natural := Right'First;
      Result_Index : Natural := Result'First;
   begin
      while Left_Index <= Left'Last and Right_Index <= Right'Last loop
         if Left(Left_Index) < Right(Right_Index) then
            Result(Result_Index) := Left(Left_Index);
            Left_Index := Natural'Succ(Left_Index); -- increment Left_Index
         else
            Result(Result_Index) := Right(Right_Index);
            Right_Index := Natural'Succ(Right_Index); -- increment Right_Index
         end if;
         Result_Index := Natural'Succ(Result_Index); -- increment Result_Index
      end loop;
      if Left_Index <= Left'Last then
         Result(Result_Index..Result'Last) := Left(Left_Index..Left'Last);
      end if;
      if Right_Index <= Right'Last then
         Result(Result_Index..Result'Last) := Right(Right_Index..Right'Last);
      end if;
      return Result;
   end merge_this;
     
    procedure Parallel_Merge_Sort(Input: Array_Access_Type;
                                  Result: Array_Access_Type) is
      task type merge_sort_Task is entry 
           Sort_this(Item: Array_Type; result1: out Array_Type);
      end merge_sort_Task;
      
      task body merge_sort_Task is
         Middle : Natural;
      begin
         accept Sort_this(Item: Array_Type; result1: out Array_Type)
         do
            
            if Item'Length > 1 then
               Middle := Natural'Val((Item'Length / 2) + Natural'Pos(Item'First));
               declare 
                  result1 :Array_Type(Item'Range);
                  Left : Array_Type(Item'First..Natural'Pred(Middle));
                  Right : Array_Type(Middle..Item'Last); 
               begin
                  for I in Left'range loop 
                     Left(I) := Item(I); 
                  end loop; 
                  for I in Right'range loop 
                     Right(I) := Item(I); 
                  end loop; 
                  Sort_this(Left, Left);
                  Sort_this(Right, Right);
                  result1 := merge_this(Left, Right);
               end;
            else
               result1:= Item;
            end if;
         end Sort_this;
      end merge_sort_Task;
      oddOne,evenOne: merge_sort_Task;
   begin
      oddOne.Sort_this(Input(Input'First..Input'Last/2), Result(Input'First..Input'Last/2));
      evenOne.Sort_this(Input(Input'Last/2..Input'Last), Result(Input'First..Input'Last/2));
     end Parallel_Merge_Sort;

   
            
   
end parallel_sort;
