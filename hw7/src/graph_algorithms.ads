with Ada.Unchecked_Deallocation;
with Graph;
with Ada.Containers.Vectors;

generic
   type Vertex_Type is private;
   with function "="(Left: Vertex_Type; Right: Vertex_Type) return Boolean;
   with procedure Put_Vertex(V : Vertex_Type);
   with package Graph_Instance is new Graph(Vertex_Type, "=");
package Graph_Algorithms 
is
   use Graph_Instance;
   use Edge_Vectors;
   use Vertex_Vectors;
   type Vertex_Array_Access is access all Vertex_Array;

   package Graph_Vectors is new Ada.Containers.Vectors(
                                                       Element_Type => Graph_Type,
                                                       Index_Type   => Natural);
   use Graph_Vectors;

   procedure Free is new Ada.Unchecked_Deallocation (Vertex_Array , Vertex_Array_Access );
   
   ----initilization procedure----------------
   procedure Init_this(G1:Graph_Type);
   -- Implements Dijkstra 's shortest -path algorithm in the given graph with
   -- edge weights . If a path exists , Path contains of the ordered sequence
   -- of vertices from From to To , excluding From and To.
   -- If no such path exists , Path will be empty .
   procedure Find_Shortest_Path ( From: Vertex_Type ;
                                  To: Vertex_Type ;
                                  Path: out Vertex_Array_Access );

  
   
   -- Implements Kruskal 's minimal -spanning -tree algorithm in the given graph
   -- with edge weights . If the graph is connected , Result will hold the
   -- minimal spanning tree ; otherwise , Result will hold the minimal spanning
   -- forest .
   procedure Find_Min_Spanning_Tree ( Result : out Vertex_Array_Access );
   -- functions and procedures for heloing Find Kruskals minial spanning tree
   function Graph_Contains_Vertex(G: Graph_Type; V: Vertex_Type) return Boolean;
   procedure Merge_Graphs(From_Graph : in out Graph_Type; To_Graph : in Graph_Type);
   function Sort_Edge_Vector(G: Graph_Type) return Edge_Vectors.Vector;
   function Get_Graph_Vectors(G2:Graph_Type) return  Graph_Vectors.Vector;
   --Test Function-----
   procedure Print_Edges(G: Graph_Type);

 
   

end Graph_Algorithms;
