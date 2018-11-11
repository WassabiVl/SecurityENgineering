-------------------------------------------------------------------------------

  -- Copyright (C) 1996 by Andre Spiegel.

  -- File:           translator.adb

  -- Description:    <to be supplied>

  -- Author:         Andre Spiegel
  -- Creation Date:  Wed Jul 14 08:49:49 1993

  -- RCS: $Id: translator.adb,v 1.3 1996/05/09 12:14:38 spiegel Exp $

  -- This file is part of `tg'.

  -- `tg' is free software; you can redistribute it and/or modify
  -- it under the terms of the GNU General Public License as published by
  -- the Free Software Foundation; either version 2, or (at your option)
  -- any later version.

  -- `tg' is distributed in the hope that it will be useful,
  -- but WITHOUT ANY WARRANTY; without even the implied warranty of
  -- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  -- GNU General Public License for more details.

  -- You should have received a copy of the GNU General Public License
  -- along with `tg'; see the file COPYING.  If not, write to
  -- the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
  -- Boston, MA 02111-1307, USA.

-------------------------------------------------------------------------------

with Text_IO;             use Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Strings.Unbounded;
with Test_Script_Scanner; use Test_Script_Scanner;
with Test_Script_Parser;  use Test_Script_Parser;
with Lists;

package body Translator is

  package ASU renames Ada.Strings.Unbounded;

  package Call_Lists is new Lists(ASU.Unbounded_String,ASU."=");
  subtype Call_List_Type is Call_Lists.LIST;

  function "&" (Left  : in ASU.Unbounded_String;
                Right : in String) return String is
  begin
     return ASU.To_String (Left) & Right;
  end "&";

  function "&" (Left  : in String;
                Right : in ASU.Unbounded_String) return String is
  begin
     return Left & ASU.To_String (Right);
  end "&";

  procedure Translate (Input_File   : in Text_IO.File_Type;  ------------------
                       Output_File  : in Text_IO.File_Type;
                       Error_Stream : in Text_IO.File_Type;
                       Unit_Name    : in String;
                       Fail_Output  : in Output_Mode;
                       Pass_Output  : in Output_Mode) is

    -- Variables
    ------------

    Indent : Natural := 0;  -- number of spaces to be inserted
                            -- before every LOC produced.

    Indent_Step     : constant Natural  := 2;
    Max_Path_Length : constant Positive := 256;

    General_Part     : General_Part_Type;

    Test_Case_Number : Positive := 1;

    -- RR Liste fuer Prozeduraufrufe im Rumpf
    Call_List : Call_List_Type := Call_Lists.Create;
    -- RR Zaehler fuer Code-Sections;
    CS_Count: Natural := 1;

    -- Local Procedures
    -------------------

    function Truncate(S: in String) return String is
    begin
      return S(2..S'Length);
    end Truncate;

    procedure Put_Indented (Line : in String) is  -----------------------------
    begin
      for I in 1 .. Indent loop
        Put (' ');
      end loop;
      Put_Line (Line);
    end Put_Indented;

    procedure Put_Indented (Code_List : Code_Lists.List) is
      use Code_Lists;
      I    : ListIter;
    begin
      I := MakeListIter (Code_List);
      while More (I) loop
        for J in 1 .. Indent loop Put (' '); end loop;
        Put_Line (ASU.To_String (CellValue (I)));
        Forward (I);
      end loop;
    end Put_Indented;

    procedure Put_Indent is
    begin
      for I in 1 .. Indent loop
        Put (' ');
      end loop;
    end Put_Indent;

    function Quoted (Data : in String) return String is  ----------------------
       -- return Data with quotes expanded to double quotes
    begin
       if Data'Length = 0 then
          return "";
       elsif Data (Data'First) = '"' then
          return """"""
                 & Quoted (Data (Data'First + 1 .. Data'Last));
       else
          return Data (Data'First)
                 & Quoted (Data (Data'First + 1 .. Data'Last));
       end if;
    end Quoted;

    function Quoted (Data : in ASU.Unbounded_String)
                     return ASU.Unbounded_String is
    begin
       return ASU.To_Unbounded_String (Quoted (ASU.To_String (Data)));
    end Quoted;

    procedure Put_Fail (Test_Case          : in Test_Case_Type;  --------------
                        Comment_Expression : in String := "") is
                          -- note that `Comment_Expression' is
                          -- _not_ the same as `Comment' in Put_Pass
    begin
      Put_Indented ("Test_Case_Passed := FALSE;");
      Put_Indented ("Fail_Result := TRUE;");
      case Fail_Output is
        when Off     =>
          null;
        when Numbers =>
          Put_Indent; Put ("WriteString (""("); Put (Test_Case_Number, 0);
          Put_Line (") FAIL."");");
        when Titles =>
          if not (    Pass_Output in Titles..Full
                  and Fail_Output in Titles..Full) then
            Put_Indent; Put ("WriteString (""("); Put (Test_Case_Number, 0);
            Put_Line (") " & Quoted (Test_Case.Title) & """); WriteLn;" );
          end if;
          Put_Indented ("WriteString (""      ...FAIL.""); WriteLn;");
        when Full =>
          if not (    Pass_Output in Titles..Full
                  and Fail_Output in Titles..Full) then
            Put_Indent; Put ("WriteString (""("); Put (Test_Case_Number, 0);
            Put_Line (") " & Quoted (Test_Case.Title) & """); WriteLn;" );
          end if;
          Put_Indented ("WriteString (""      ...FAIL.""); WriteLn;");
          Put_Indented ("WriteString (""         ("
                                   & Comment_Expression & ")""); WriteLn;");
      end case;
      if General_Part.Fail_Handling = Stop then
        Put_Indented ("WriteString(""Testing aborted""); WriteLn; HALT;");
      end if;
    end Put_Fail;


    procedure Put_Pass (Test_Case : in Test_Case_Type;  -----------------------
                        Comment   : in String := "") is
    begin
      case Pass_Output is
        when Off     =>
          null;
        when Numbers =>
          Put_Indent; Put ("WriteString (""("); Put (Test_Case_Number, 0);
          Put_Line (") pass.""); WriteLn;");
        when Titles =>
          if not (    Pass_Output in Titles..Full
                  and Fail_Output in Titles..Full) then
            Put_Indent; Put ("WriteString (""("); Put (Test_Case_Number, 0);
            Put_Line (") " & Quoted (Test_Case.Title) & """); WriteLn;" );
          end if;
          Put_Indented ("WriteString (""      ...pass.""); WriteLn;");
        when Full =>
          if not (    Pass_Output in Titles..Full
                  and Fail_Output in Titles..Full) then
            Put_Indent; Put ("WriteString (""("); Put (Test_Case_Number, 0);
            Put_Line (") " & Quoted (Test_Case.Title) & """); WriteLn;" );
          end if;
          Put_Indented ("WriteString (""      ...pass.""); WriteLn;");
          Put_Indented ("WriteString (""         (" & Comment & ")""); WriteLn;");
      end case;
    end Put_Pass;

    function Path_Names (Names : Exception_Lists.List)  -----------------------
                                           return String is
      use Exception_Lists;
      use type ASU.Unbounded_String;
      I      : ListIter;
      Choice : ASU.Unbounded_String;
    begin
      I := MakeListIter (Names);
      Choice := ASU.Null_Unbounded_String;
      loop
        exit when not More (I);
        Choice := Choice & CellValue (I);
        Forward (I);
        if More (I) then Choice := Choice & "|"; end if;
      end loop;
      return ASU.To_String (Choice);
    end Path_Names;

    procedure Put_Part (Lines     : in Code_Lists.List;  ----------------------
                        Part_Name : in String) is
    begin
      Put_Indented ("(* part " & Part_Name & " *)");
      Indent := Indent + Indent_Step;
      Put_Indented (Lines);
      Indent := Indent - Indent_Step;
      New_Line;
    end Put_Part;


    procedure Put_Test_Part (Test_Case : Test_Case_Type) is -------------------
      use Pass_Clause_Lists, Exception_Lists;
      use type ASU.Unbounded_String;
      I             : Pass_Clause_Lists.ListIter;
      Handled, Rest : Exception_Lists.List;
      J             : Exception_Lists.ListIter;
    begin
      Put_Indented ("(* test part *)");
      Indent := Indent + Indent_Step;
      Put_Indented (Test_Case.Test_Part);
      Indent := Indent - Indent_Step;
    end Put_Test_Part;


    procedure Put_Predicate_Check (Test_Case : Test_Case_Type;  ---------------
                                   Path      : in ASU.Unbounded_String;
                                   Predicate : in Code_Lists.List) is
      use Code_Lists;
      I : ListIter;
      L : Natural;
    begin
      L := Length (Predicate);  -- number of lines
      if L = 1 then
        Put_Indented ("IF " & FirstValue (Predicate) & " THEN");
        Indent := Indent + Indent_Step;
      else
        Put_Indented ("IF " & FirstValue (Predicate));
        Indent := Indent + 3;
        I := MakeListIter (Predicate);
        Forward (I);
        for J in 2 .. L loop
          if J < L then
            Put_Indented (ASU.To_String (CellValue (I)));
          else
            Put_Indented (CellValue (I) & " THEN");
          end if;
          Forward (I);
        end loop;
        Indent := Indent - 3 + Indent_Step;
      end if;
      Put_Pass (Test_Case, "predicate is TRUE");
      Indent := Indent - Indent_Step;
      Put_Indented ("ELSE");
      Indent := Indent + Indent_Step;
      Put_Fail (Test_Case, "predicate is FALSE");
      Indent := Indent - Indent_Step;
      Put_Indented ("END;");
    end Put_Predicate_Check;


    procedure Put_Result_Part (Test_Case : Test_Case_Type) is -----------------
      use Code_Lists, Pass_Clause_Lists, Exception_Lists;
      I    : Pass_Clause_Lists.ListIter;
      J    : Code_Lists.List;
    begin
      Put_Indented ("(* result part *)");
      Indent := Indent + Indent_Step;
      Put_Indented ("Test_Case_Passed := TRUE;");
      I := MakeListIter (Test_Case.Pass_Part);
      loop
        Put_Predicate_Check (Test_Case,
                             CellValue(I).Path, CellValue(I).Predicate);
        Forward (I);
        exit when not More (I);
      end loop;

      Indent := Indent - Indent_Step;
    end Put_Result_Part;


    procedure Put_Header is  --------------------------------------------------
    begin
      Put_Line ("(* ----------------------------------------------------------------------------");
      New_Line;
      Put_Line ("  -- University of Stuttgart, Germany");
      Put_Line ("  -- Computer Science, Software Engineering Dept.");
      Put_Line ("  -----------------------------------------------");
      New_Line;
      Put_Line ("  -- Test Driver Source");
      New_Line;
      Put_Line ("  -- File:       " & Name (Output_File));
      Put_Line ("  -- Script:     " & Name (Input_File));
      New_Line;
      Put_Line ("  -- ******************************************************************");
      Put_Line ("  -- * This file was automatically generated by the `tg' program.     *");
      Put_Line ("  -- * Modifications should be made in the corresponding script file. *");
      Put_Line ("  -- ******************************************************************");
      New_Line;
      Put_Line ("---------------------------------------------------------------------------- *)");
      New_Line;
      Indent := 0;
    end Put_Header;

    procedure Put_Trailer is  -------------------------------------------------
      Current: ASU.Unbounded_String;
    begin
      New_Line;
      Put_Line ("BEGIN");
      Put_Indented ("Fail_Result := FALSE;");
      Put_Indented ("Unexpected_Error := FALSE;");
      Put_Indented ("Test_Case_Passed := FALSE;");
       -- RR Liste der aufzurufenden Prozeduren abarbeiten
      while not Call_Lists.IsEmpty(Call_List) loop
        Current := Call_Lists.FirstValue(Call_List);
        Put_Line("  " & Current & "();");
        Call_Lists.DeleteHead(Call_List);
      end loop;
      Call_Lists.Destroy(Call_List);
      Put_Line ("  WriteLn;");
      Put_Line ("  WriteString (""Total test result: "");");
      Put_Line ("  IF Fail_Result THEN");
      Put_Line ("    WriteString (""FAIL"");");
      Put_Line ("  ELSE");
      Put_Line ("    WriteString (""pass"");");
      Put_Line ("  END;");
      Put_Line ("  WriteString ("".""); WriteLn;");
      Put_Line ("  WriteLn;");
      New_Line;
      Put_Line ("END " & Unit_Name & ".");
    end Put_Trailer;

    procedure Translate_General_Part is  --------------------------------------
      use Code_Lists;
    begin
      Get_General_Part (General_Part);
      Indent := 0;
      Put_Line ("MODULE " & Unit_Name & ";");
      New_Line;
      Put_Indented ("FROM InOut IMPORT WriteLn, WriteString;");
      Put_Indented (General_Part.Context);
      New_Line;
      Indent := Indent_Step;
      Put_Indented ("  (* Global Data *)");
      Put_Indented ("  VAR");
      Put_Indented ("    Fail_Result           : BOOLEAN;");
      Put_Indented ("    Unexpected_Error      : BOOLEAN;");
      Put_Indented ("    (* Data of last Test Case *)");
      Put_Indented ("    Test_Case_Passed      : BOOLEAN;");
      Put_Indented ("  (* Access Routines *)");
      -- Put_Indented ("  PROCEDURE Passed(): BOOLEAN;");
      -- Put_Indented ("    BEGIN RETURN Test_Case_Passed; END Passed;");
      -- Put_Indented ("  PROCEDURE Failed(): BOOLEAN;");
      -- Put_Indented ("    BEGIN RETURN NOT Test_Case_Passed; END Failed;");
     New_Line;
      if not IsEmpty (General_Part.Define_Part) then
        Put_Indented ("(* Global definitions from script *)");
	Put_Indented ("VAR");
        Put_Indented (General_Part.Define_Part);
        New_Line;
      end if;
      New_Line;
    end Translate_General_Part;

    procedure Translate_Code is  ----------------------------------------------
      use Exception_Lists;
      Code   : Code_Lists.List;
      I      : Exception_Lists.ListIter;
      Proc_Name: ASU.Unbounded_String
        := ASU.To_Unbounded_String("Code_Section" & Truncate(Natural'Image(CS_Count)));
    begin
      Get_Code_Part (Code);
      New_Line;
      CS_Count := CS_Count + 1;
      Put_Indented ("PROCEDURE " & Proc_Name & ";");
      Put_Indented ("BEGIN");
      Indent := Indent + Indent_Step;
      Put_Indented (Code);
      Indent := Indent - Indent_Step;
      Put_Indented ("END " & Proc_Name & ";");
      Call_Lists.Attach(Call_List,Proc_Name);
    end Translate_Code;

    procedure Translate_Test_Case is  -----------------------------------------
      use Code_Lists;
      Test_Case : Test_Case_Type;
      Proc_Name: ASU.Unbounded_String;
    begin
      Get_Test_Case (Test_Case);
      Proc_Name := ASU.To_Unbounded_String("Test_Case"
                     & Truncate(Natural'Image(Test_Case_Number)));
      if Test_Case.Number /= 0 and then
         Test_Case.Number /= Test_Case_Number then
        Put_Line (Error_Stream, "tg: Warning: test case number `"
                  & Natural'Image (Test_Case.Number)
                  & "' in script file is inconsistent.");
        Put_Line (Error_Stream,
                  "             The correct number is"
                  & Natural'Image (Test_Case_Number)
                  & " (this will be used in the testdriver).");
        New_Line (Error_Stream);
      end if;

      New_Line;
      Put_Indent;
      Put ("(* Test Case ("); Put (Test_Case_Number, 0);
      Put_Line (")  " & Test_Case.Title & "*)");

      Put_Indented("PROCEDURE " & Proc_Name & "();");

      if not IsEmpty (Test_Case.Define_Part) then
        Put_Indented("VAR");
        Indent := Indent + Indent_Step;
        Put_Indented (Test_Case.Define_Part);
        Indent := Indent - Indent_Step;
      end if;

      Put_Indented ("BEGIN");
      Indent := Indent + Indent_Step;

      if     Pass_Output in Titles..Full
         and Fail_Output in Titles..Full then
        Put_Indent; Put ("WriteString (""("); Put (Test_Case_Number, 0);
        Put_Line (") " & Quoted (Test_Case.Title) & """); WriteLn;" );
      end if;

      if not IsEmpty (Test_Case.Prepare_Part) then
        Put_Part (Test_Case.Prepare_Part, "prepare part");
      end if;

      Put_Test_Part (Test_Case);
      Put_Result_Part (Test_Case);

      if not IsEmpty (Test_Case.Cleanup_Part) then
        Put_Part (Test_Case.Cleanup_Part, "cleanup part");
      end if;

      Indent := Indent - Indent_Step;
      Put_Indented ("END " & Proc_Name & ";");
      Call_Lists.Attach(Call_List,Proc_Name);
    end Translate_Test_Case;


  begin  -- Translate

    Set_Output (Output_File);
    Set_Input  (Input_File);

    Put_Header;

    Next_Token;
    Translate_General_Part;

    loop
      case Test_Script_Scanner.Current_Token is
        when End_Of_Input =>
          exit;
        when Key_Begin_Test_Case =>
          Translate_Test_Case;
          Test_Case_Number := Test_Case_Number + 1;
        when Key_Code =>
          Translate_Code;
        when Error =>
          raise Syntax_Error;
        when others =>
          raise Syntax_Error;
      end case;
    end loop;

    Put_Trailer;

    Set_Output (Standard_Output);
    Set_Input (Standard_Input);

  exception
    when Use_Error | Status_Error | Mode_Error =>
      raise File_Error;

    when Syntax_Error | Parse_Error =>
      Put_Line (Error_Stream, "tg: Syntax Error at line "
                              & Integer'Image (Test_Script_Scanner.Current_Line));
      raise Syntax_Error;

    when Semantic_Error =>
      Put_Line (Error_Stream, "tg: Semantic Error at line "
                              & Integer'Image (Test_Script_Scanner.Current_Line));
      raise;
  end Translate;


end Translator;






