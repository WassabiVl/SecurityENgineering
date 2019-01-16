package body Parallel_Algorithm is

   procedure Parallel_Sum(Input: Array_Access_Type; Result: out Item_Type)
   is 
      task type calcTask is entry
           Start(someArray:Array_Access_Type; oNum, cNum: Natural; total: out Item_Type);
      end calcTask;
      task body calcTask is
         num: Array_Access_Type;
          Diff , Cnt : Natural;
         total1 : Item_Type;
      begin
         accept Start(someArray:Array_Access_Type; oNum, cNum: Natural; total: out Item_Type) 
         do
            num := someArray;
            Diff := oNum;
            cnt := cNum;
            total1 := num(cNum);
            for I in oNum..cNum -1 loop
               total1 := num(I) + total1;
            end loop ;
            total := total1;
         end Start;
         
         
      end calcTask; 
      oddOne,evenOne: calcTask; 
   begin 
      oddOne.Start(Input, 1, Input'Length/2, Result);
      evenOne.Start(Input, Input'Length/2, Input'Length, Result);
   end Parallel_Sum;
   

end Parallel_Algorithm;
