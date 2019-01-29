with Ada.Unchecked_Deallocation ;
with Graph;
package body Graph_Algorithms is
   parent_arr : Vertex_Array;
   rank: Vertex_Array;
   graph : Graph_Instance;
begin
   function find_it(ver: Vertex_Type) return Vertex_Type is
   begin
      if parent_arr(ver) /= ver then
         parent_arr(ver) = find_it(ver => arr(ver));
      end if;
      return parent_arr(ver);
   end find_it;
   procedure union_it(ver1 : Vertex_Type) is
      root1 : Vertex_Type := find_it(ver1);
      root2 : Vertex_Type := find_it(ver2);
      if root1 /= root2 then
         if rank(root1) > rank(root2) then
            parent_arr(root2) := root1;
         else
            parent_arr(root1) := root2;
         end if:
         if rank(root1) = rank(root2) then
            rank(root2) := rank(root2) + 1;
         end if;
      end if;
   end union_it;
   procedure initilaize_it(ver: Vertex_Type)is
   begin
      parent_arr(ver) := ver;
      rank(ver) := 0;
   end initilaize_it;
   procedure Find_Min_Spanning_Tree ( Result : out Vertex_Array_Access ) is
      
      

   

end Graph_Algorithms;
