with Hofstadter_Q_Sequence;
with Ada.Text_IO, Ada.Integer_Text_IO; use Ada.Text_IO, Ada.Integer_Text_IO;
with Armageddon;
--with GNAT.Command_Line; use GNAT.Command_Line;

with Ada.Command_Line; use Ada.Command_Line;
--  with Graph_Algorithms;
--  with Graph;
procedure Main is
--     procedure My_Put(Item : Character) is
--     begin
--        Put(Item);
--     end My_Put;
--     package My_Graph_Instance is new Graph(Vertex_Type    => Character,
--                                            "="            => "=");
--     package My_Graph_Alg is new Graph_Algorithms(Vertex_Type    => Character,
--                                                  "="            => "=",
--                                                  Put_Vertex     => My_Put,
--                                                  Graph_Instance =>My_Graph_Instance );
--
--     My_Graph : My_Graph_Instance.Graph_Type;
--     Result1: My_Graph_Alg.Vertex_Array_Access;
   Input_Number: Integer;
   Input_TimeOut: Integer;
begin
   Put_Line("Number? ");
   Get(Input_Number);
   Put_Line("Timeout? ");
   Get(Input_TimeOut);

   Hofstadter_Q_Sequence.Mute_Workers(Input_Number, Input_TimeOut);
   -- Main
--     My_Graph_Instance.Add_Vertex(My_Graph, 'a');
--     My_Graph_Instance.Add_Vertex(My_Graph, 'b');
--     My_Graph_Instance.Add_Vertex(My_Graph, 'c');
--
--     My_Graph_Instance.Add_Edge(My_Graph, 'a', 'b', 1);
--     My_Graph_Instance.Add_Edge(My_Graph, 'b', 'c', 2);
--     My_Graph_Instance.Add_Edge(My_Graph, 'a', 'c', 4);
--
--     My_Graph_Alg.Init_this(My_Graph);
--     Put_Line("");
--     Put_Line("Old Graph");
--     My_Graph_Alg.Print_this(vrr =>  My_Graph_Instance.To_Vertex_Array(My_Graph));
--     My_Graph_Alg.Find_Shortest_Path(From => 'a',
--                                     To   => 'c',
--                                     Path => Result1);
--     Put_Line("");
--     Put_Line("Shortest Route");
--     My_Graph_Alg.Init_this(My_Graph);
--     My_Graph_Alg.Print_this(vrr =>  Result1.all);
--     Put_Line("");
--
--     Put_Line("Spanning Tree");
--     My_Graph_Alg.Find_Min_Spanning_Tree(Result => Result1);
--     My_Graph_Alg.Print_this(vrr =>  Result1.all);



end Main;
