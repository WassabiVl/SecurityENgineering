package Dijkstra is

   
   -- Calculate the shortest path from a source node to all the other nodes of the graph   
   procedure Dijkstra (Input_Graph: Graphe; Source_Id : Integer; Previous_Nodes : in out Node_Id_Array; Distances : in out T_Cost_Array);

   -- Displays the shortest path between 2 nodes
   procedure AffichageDijkstra (Input_Graph: Graphe; Source : Node; Destination : Node; Input_Node_Array : P_Node_Array);

end Dijkstra;
