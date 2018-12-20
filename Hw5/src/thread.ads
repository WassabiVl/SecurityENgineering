-- http://docs.adacore.com/spark2014-docs/html/lrm/subprograms.html
package Thread 
with SPARK_Mode
is
   
   type State  is (None, Ready, Running, Stopped, Sleeping, Waiting);
    type Action is (Notify, Resume, Sleep, Start, Stop, Wait);

   S: State := None;
   --with function image(Item : in State) return String;

    procedure Initialize with Global => (In_out => S), Post => S = Ready;
    -- Sets S to Ready.

   procedure Do_Action(A: Action) with Global => (In_out =>S);
   -- Updates the state S according to the given input state S, and the 
    -- given action A. Sets S to None if the transition is not defined.
   

end Thread;
