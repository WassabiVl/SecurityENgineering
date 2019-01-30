with Ada.Unchecked_Deallocation;
with Ada.Containers.Vectors;
with Ada.Containers;
use Ada.Containers;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
package body Graph_Algorithms 
is
   
   G: Graph_Type;
   
   procedure Init_this(G1:Graph_Type) is
   begin
      G:=G1;
   end Init_this;
   
   procedure Find_Shortest_Path ( From: Vertex_Type;
                                  To: Vertex_Type;
                                  Path: out Vertex_Array_Access)
   is
      Vertices : aliased Vertex_Array := To_Vertex_Array(G); 
      Distances : array(Vertices'Range) of Integer; 
      Result_G : Graph_Type;
   begin
      for I in Distances'Range loop
         if Vertices(I) = From then
            Distances(I) := 0;
         else
            Distances(I) := Integer'Last;
         end if;
      end loop;

      while(To_Vertex_Array(Result_G)'Length < Vertices'Length) loop
         declare
            Cur_Vertex, Min_Vertex, Neighbour_Vertex : Vertex_Type;
            Cur_Dist, Min_Dist, Neighbour_Dist : Integer;
         begin
            Min_Dist := Integer'Last;
            for I in Vertices'Range loop
               Cur_Vertex := G.Vertices(I);
               Cur_Dist := Distances(I);
               if Cur_Dist <= Min_Dist and
                 not Result_G.Vertices.contains(Cur_Vertex) then
                  Min_Vertex := Cur_Vertex;
                  Min_Dist := Cur_Dist;
               end if;
            end loop;
            Result_G.Add_Vertex(Min_Vertex);

            for I in Vertices'Range loop
               Neighbour_Vertex := G.Vertices(I);
               if Has_Edge(G, Min_Vertex, Neighbour_Vertex) then
                  Neighbour_Dist := Distances(I);
                  declare
                     Weight : constant Integer :=
                       Get_Edge_Weight(G, Min_Vertex, Neighbour_Vertex);
                     New_Weight : constant Integer := Min_Dist + Weight;
                  begin
                     if(New_Weight < Neighbour_Dist) then
                        Distances(I) := New_Weight;
                     end if;
                  end;
               end if;
            end loop;
         end;
      end loop;
      Vertices := To_Vertex_Array(Result_G);
      Path := Vertices'Unchecked_Access;
   end Find_Shortest_Path;
   
   
   -----------------------------------------------------------------------------------
   -----------------Min Spanning Tree Algo -------------------------------------------
   -----------------------------------------------------------------------------------
 
   procedure Find_Min_Spanning_Tree ( Result : out Vertex_Array_Access )is
      G_Copy : Graph_Type := G; 
      Sorted_Edge_Vector : Edge_Vectors.Vector;
      Result2: aliased Vertex_Array := To_Vertex_Array(G);
      Graph_v : Graph_Vectors.Vector;
      Result1 : Graph_Type;
   begin
     
      Sorted_Edge_Vector := Sort_Edge_Vector(G => G);
      Graph_v := Get_Graph_Vectors(G);
      -- merge the subgraphes
      while not Sorted_Edge_Vector.Is_Empty loop
         declare
            -- get edge with lowest cost
            Index : constant Integer := First_Index(Sorted_Edge_Vector);
            Edge : constant Edge_Type := Sorted_Edge_Vector(Index);
            From_Graph : Graph_Type;
            From_Graph_Index : Integer;
            To_Graph : Graph_Type;
            To_Graph_Index : Integer;
         begin
            -- remove edge from sorted list
            Sorted_Edge_Vector.Delete(Index);
            -- get subgraphs each containing from or to
            for I in First_Index(Graph_v)..Last_Index(Graph_v) loop
               -- get the subgraph of the from node
               if Graph_Contains_Vertex(Graph_v(I), Edge.From) then
                  From_Graph := Graph_v(I);
                  From_Graph_Index := I;
               end if;
               -- get the subgraph of the to node
               if Graph_Contains_Vertex(Graph_v(I), Edge.To) then
                  To_Graph := Graph_v(I);
                  To_Graph_Index := I;
               end if;
            end loop;
            -- check if the graphes are equal
            if From_Graph_Index /= To_Graph_Index then
               -- merge graphes
               Merge_Graphs(From_Graph, To_Graph); -- merges to into from
               Graph_v.Delete(To_Graph_Index); -- remove from graphes set
               From_Graph.Add_Edge(From   => Edge.From,
                                   To     => Edge.To,
                                   Weight => Edge.Weight); -- add the actual edge to left set
            end if; -- otherwise do nothing
         end;
      end loop;
      Put_Line(Last_Index(Graph_v)'Image);
      Result1 := Graph_v(Last_Index(Graph_v));
      Result2 := (To_Vertex_Array(Result1));
      Result := Result2'Unchecked_Access;
            
   end Find_Min_Spanning_Tree;
  

   function Graph_Contains_Vertex(G: Graph_Type;
                                  V: Vertex_Type) return Boolean is
   begin
      for I in First_Index(G.Vertices)..Last_Index(G.Vertices) loop
         if G.Vertices(I) = V then
            return True;
         end if;
      end loop;
      return False;
   end Graph_Contains_Vertex;


   procedure Merge_Graphs(From_Graph : in out Graph_Type; To_Graph : in Graph_Type) is  
   begin
      -- Merge does not work like it is supposed to work :(
      for I in First_Index(To_Graph.Vertices)..Last_Index(To_Graph.Vertices) loop
         declare
            Vertex : Vertex_Type;
         begin
            Vertex := To_Graph.Vertices(I);
            Add_Vertex(From_Graph, Vertex);
         end;
      end loop;
   end Merge_Graphs;

    
   function Sort_Edge_Vector(G: Graph_Type) return Edge_Vectors.Vector is
      Sorted_Edge_Vector : Edge_Vectors.Vector;
      G_Copy : Graph_Type := G; 
      Temp_Edge : Edge_Type := G_Copy.Edges.Element(First_Index(G_Copy.Edges));
      Index : Integer := First_Index(G_Copy.Edges);
      Check_Weight : Integer := Integer'Last;
   begin
      while Integer(Edge_Vectors.Length(G_Copy.Edges)) > 0 loop
         Check_Weight := Integer'Last;
         for I in First_Index(G_Copy.Edges)..Last_Index(G_Copy.Edges) loop
            if G_Copy.Edges.Element(I).Weight < Check_Weight then
               Temp_Edge := G_Copy.Edges.Element(I);
               Check_Weight := Temp_Edge.Weight;
               Index := I;
            end if;
         end loop;
         G_Copy.Edges.Delete(Index);
         Append(Sorted_Edge_Vector,Temp_Edge);
      end loop;
      return Sorted_Edge_Vector;
   end Sort_Edge_Vector;
   
   function Get_Graph_Vectors(G2:Graph_Type) return Graph_Vectors.Vector
   is
      G1 : Graph_Vectors.Vector;
   begin
      for I in First_Index(G2.Vertices)..Last_Index(G2.Vertices) loop
         declare
            Sub_Graph : Graph_Type;
         begin
            Add_Vertex(Sub_Graph,G2.Vertices(I));
            Append(G1,Sub_Graph);
         end;
      end loop;
      return G1;
   end Get_Graph_Vectors;
   
   ----------------------------------------------------------------------------
   --------------test function-------------------------------------------------
   ----------------------------------------------------------------------------
   procedure Print_Edges(G: Graph_Type) is
      Edge : Edge_Type;
   begin
      for I in First_Index(G.Edges) .. Last_Index(G.Edges) loop
         Edge := G.Edges.Element(I);
         Put_Vertex(Edge.From);
         Put("->");
         Put_Vertex(Edge.To);
         Put("  ");
         Put(Edge.Weight);
         Put_Line("");
      end loop;
   end Print_Edges;

end Graph_Algorithms;
