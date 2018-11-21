context with coffee_machine; use coffee_machine
        with Text_IO; use Text_IO;

***** COFFEE_MACHINE insert one ten cents
define machine_state : State;
       action1 : Action := Ten_Cent;
       reaction : Reaction;
       Result : Reaction := Nothing;

prepare initialize(machine_state);
        X(machine_state, action1,reaction);

test X(machine_state, action1, reaction);

pass Result = reaction

***** COFFEE_MACHINE insert two ten cents
define machine_state : State;
       action2 : Action := Twenty_Cent;
       reaction : Reaction;
       Result : Reaction := Coffee;

prepare initialize(machine_state);
        X(machine_state, action2, reaction);

test X(machine_state, action2, reaction);

pass Result = reaction

***** COFFEE_MACHINE insert one twenty cents coin
define machine_state : State;
       action2 : Action := Twenty_Cent;
       reaction : Reaction;
       Result : Reaction := Coffee;

prepare initialize(machine_state);
        X(machine_state, action2, reaction);

test X(machine_state, action2, reaction);

pass Result : Reaction := Coffee
