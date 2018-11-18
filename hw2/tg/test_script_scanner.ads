-- A lexical scanner generated by aflex
--# line 1 "test_script_scanner.l"
-------------------------------------------------------------------------------
  -- Copyright (C) 1996 by Andre Spiegel.
  -- File:           test_script_scanner.l
  -- Description:    Test_Script_Scanner is the package which scans the 
  --                 script file.
  --                 The scanner is generated by aflex.
  -- Author:         Andre Spiegel
  -- Creation Date:  Wed Jul  7 14:15:53 1993
  -- RCS: $Id: test_script_scanner.l,v 1.2 1996/05/09 12:13:57 spiegel Exp $
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
-- Macro definitions would go here
-- Rules
--# line 40 "test_script_scanner.l"

package Test_Script_Scanner is  -----------------------------------------------

  type Token is (Key_Fail_Handling, Key_Error_Handling, 
                 Key_Stop,      Key_Continue,
		 Key_Context,   Key_Exceptions, Key_Code,
                 
                 Key_Begin_Test_Case,
                 Key_Define,    Key_Prepare,   Key_Test,
                 Key_Pass,      Key_Cleanup,
		 
		 Key_Normal_Path, Key_Exception,
                 Test_Case_Number, Test_Case_Title,
                 Indented_Text_Line, Ada_Exception, Colon, Semicolon,
  
                 End_Of_Input, Error);

  procedure Next_Token;

  function Current_Token return Token;

  function Current_Line return Positive;

  function Token_Text return String;

end Test_Script_Scanner;
