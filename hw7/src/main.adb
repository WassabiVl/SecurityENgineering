-- André Karge 110033
-- K. Gerrit Lünsdorf 100141
with Graph_Algorithms;
with Graph;
with Ada.Text_IO; use Ada.Text_IO;
procedure Main is
   procedure My_Put(Item : Character) is
   begin
      Put(Item);
   end My_Put;
   package My_Graph_Instance is new Graph(Vertex_Type    => Character,
                                          "="            => "=");
   package My_Graph_Alg is new Graph_Algorithms(Vertex_Type    => Character,
                                                "="            => "=",
                                                Put_Vertex     => My_Put,
                                                Graph_Instance =>My_Graph_Instance );

   My_Graph : My_Graph_Instance.Graph_Type;
   Result_Graph : My_Graph_Instance.Graph_Type;
   Resut1: My_Graph_Alg.Vertex_Array_Access;
begin -- Main
   My_Graph_Instance.Add_Vertex(My_Graph, 'a');
   My_Graph_Instance.Add_Vertex(My_Graph, 'b');
   My_Graph_Instance.Add_Vertex(My_Graph, 'c');

   My_Graph_Instance.Add_Edge(My_Graph, 'a', 'b', 1);
   My_Graph_Instance.Add_Edge(My_Graph, 'b', 'c', 2);
   My_Graph_Instance.Add_Edge(My_Graph, 'a', 'c', 4);

   My_Graph_Alg.Init_this(My_Graph);
   My_Graph_Alg.Find_Min_Spanning_Tree(Result => Resut1);
   Put_Line("");
   Put_Line("Old Graph");
   My_Graph_Alg.Print_Edges(My_Graph);
   Put_Line("New Graph");
   --Put_Line(Resut1.all'Image);
end Main;
