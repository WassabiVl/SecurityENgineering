-- http://docs.adacore.com/spark2014-docs/html/lrm/subprograms.html
package Thread is
   type State  is (None, Ready, Running, Stopped, Sleeping, Waiting);
    type Action is (Notify, Resume, Sleep, Start, Stop, Wait);

    S: State := None;

    procedure Initialize with Global => (Input => null, Output => S);
    -- Sets S to Ready.

    procedure Do_Action(A: Action) with Global => (Input => Action, Output=> State), Depends => (A =>+ S),
										Pre  => General_Precondition,
										Post => General_Postcondition,
										;
    -- Updates the state S according to the given input state S, and the 
    -- given action A. Sets S to None if the transition is not defined.
   

end Thread;