(* ----------------------------------------------------------------------------

  -- University of Stuttgart, Germany
  -- Computer Science, Software Engineering Dept.
  -----------------------------------------------

  -- Test Driver Source

  -- File:       c:\users\user\documents\bauhaus\ws18\security engineering\exercises\securityengineering\hw3\src\test_coffee_machine.mod
  -- Script:     c:\users\user\documents\bauhaus\ws18\security engineering\exercises\securityengineering\hw3\src\test_coffee_machine.ts

  -- ******************************************************************
  -- * This file was automatically generated by the `tg' program.     *
  -- * Modifications should be made in the corresponding script file. *
  -- ******************************************************************

---------------------------------------------------------------------------- *)

MODULE test_coffee_machine;

FROM InOut IMPORT WriteLn, WriteString;
with coffee_machine; use coffee_machine
with Text_IO; use Text_IO;

    (* Global Data *)
    VAR
      Fail_Result           : BOOLEAN;
      Unexpected_Error      : BOOLEAN;
      (* Data of last Test Case *)
      Test_Case_Passed      : BOOLEAN;
    (* Access Routines *)



  (* Test Case (1)   COFFEE_MACHINE insert one ten cents*)
  PROCEDURE Test_Case1();
  VAR
    machine_state : State;
    action1 : Action := Ten_Cent;
    reaction : Reaction;
    Result : Reaction := Nothing;
  BEGIN
    (* part prepare part *)
      initialize(machine_state);
      X(machine_state, action1,reaction);

    (* test part *)
      X(machine_state, action1, reaction);
    (* result part *)
      Test_Case_Passed := TRUE;
      IF Result = reaction THEN
        WriteString ("(1) pass."); WriteLn;
      ELSE
        Test_Case_Passed := FALSE;
        Fail_Result := TRUE;
        WriteString ("(1)  COFFEE_MACHINE insert one ten cents"); WriteLn;
        WriteString ("      ...FAIL."); WriteLn;
        WriteString ("         (predicate is FALSE)"); WriteLn;
      END;
  END Test_Case1;

  (* Test Case (2)   COFFEE_MACHINE insert two ten cents*)
  PROCEDURE Test_Case2();
  VAR
    machine_state : State;
    action2 : Action := Twenty_Cent;
    reaction : Reaction;
    Result : Reaction := Coffee;
  BEGIN
    (* part prepare part *)
      initialize(machine_state);
      X(machine_state, action2, reaction);

    (* test part *)
      X(machine_state, action2, reaction);
    (* result part *)
      Test_Case_Passed := TRUE;
      IF Result = reaction THEN
        WriteString ("(2) pass."); WriteLn;
      ELSE
        Test_Case_Passed := FALSE;
        Fail_Result := TRUE;
        WriteString ("(2)  COFFEE_MACHINE insert two ten cents"); WriteLn;
        WriteString ("      ...FAIL."); WriteLn;
        WriteString ("         (predicate is FALSE)"); WriteLn;
      END;
  END Test_Case2;

  (* Test Case (3)   COFFEE_MACHINE insert one twenty cents coin*)
  PROCEDURE Test_Case3();
  VAR
    machine_state : State;
    action2 : Action := Twenty_Cent;
    reaction : Reaction;
    Result : Reaction := Coffee;
  BEGIN
    (* part prepare part *)
      initialize(machine_state);
      X(machine_state, action2, reaction);

    (* test part *)
      X(machine_state, action2, reaction);
    (* result part *)
      Test_Case_Passed := TRUE;
      IF Result : Reaction := Coffee THEN
        WriteString ("(3) pass."); WriteLn;
      ELSE
        Test_Case_Passed := FALSE;
        Fail_Result := TRUE;
        WriteString ("(3)  COFFEE_MACHINE insert one twenty cents coin"); WriteLn;
        WriteString ("      ...FAIL."); WriteLn;
        WriteString ("         (predicate is FALSE)"); WriteLn;
      END;
  END Test_Case3;

BEGIN
  Fail_Result := FALSE;
  Unexpected_Error := FALSE;
  Test_Case_Passed := FALSE;
  Test_Case1();
  Test_Case2();
  Test_Case3();
  WriteLn;
  WriteString ("Total test result: ");
  IF Fail_Result THEN
    WriteString ("FAIL");
  ELSE
    WriteString ("pass");
  END;
  WriteString ("."); WriteLn;
  WriteLn;

END test_coffee_machine.
