pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__test_runner.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__test_runner.adb");
pragma Suppress (Overflow_Check);

with System.Restrictions;
with Ada.Exceptions;

package body ada_main is

   E072 : Short_Integer; pragma Import (Ada, E072, "system__os_lib_E");
   E015 : Short_Integer; pragma Import (Ada, E015, "system__soft_links_E");
   E025 : Short_Integer; pragma Import (Ada, E025, "system__exception_table_E");
   E068 : Short_Integer; pragma Import (Ada, E068, "ada__io_exceptions_E");
   E052 : Short_Integer; pragma Import (Ada, E052, "ada__strings_E");
   E040 : Short_Integer; pragma Import (Ada, E040, "ada__containers_E");
   E027 : Short_Integer; pragma Import (Ada, E027, "system__exceptions_E");
   E017 : Short_Integer; pragma Import (Ada, E017, "system__soft_links__initialize_E");
   E078 : Short_Integer; pragma Import (Ada, E078, "interfaces__c_E");
   E054 : Short_Integer; pragma Import (Ada, E054, "ada__strings__maps_E");
   E058 : Short_Integer; pragma Import (Ada, E058, "ada__strings__maps__constants_E");
   E080 : Short_Integer; pragma Import (Ada, E080, "system__object_reader_E");
   E047 : Short_Integer; pragma Import (Ada, E047, "system__dwarf_lines_E");
   E039 : Short_Integer; pragma Import (Ada, E039, "system__traceback__symbolic_E");
   E104 : Short_Integer; pragma Import (Ada, E104, "ada__tags_E");
   E138 : Short_Integer; pragma Import (Ada, E138, "ada__streams_E");
   E213 : Short_Integer; pragma Import (Ada, E213, "interfaces__c__strings_E");
   E187 : Short_Integer; pragma Import (Ada, E187, "system__file_control_block_E");
   E140 : Short_Integer; pragma Import (Ada, E140, "system__finalization_root_E");
   E136 : Short_Integer; pragma Import (Ada, E136, "ada__finalization_E");
   E186 : Short_Integer; pragma Import (Ada, E186, "system__file_io_E");
   E142 : Short_Integer; pragma Import (Ada, E142, "system__storage_pools_E");
   E133 : Short_Integer; pragma Import (Ada, E133, "system__finalization_masters_E");
   E174 : Short_Integer; pragma Import (Ada, E174, "system__storage_pools__subpools_E");
   E166 : Short_Integer; pragma Import (Ada, E166, "ada__strings__unbounded_E");
   E223 : Short_Integer; pragma Import (Ada, E223, "system__task_info_E");
   E125 : Short_Integer; pragma Import (Ada, E125, "ada__calendar_E");
   E207 : Short_Integer; pragma Import (Ada, E207, "ada__real_time_E");
   E182 : Short_Integer; pragma Import (Ada, E182, "ada__text_io_E");
   E189 : Short_Integer; pragma Import (Ada, E189, "gnat__directory_operations_E");
   E269 : Short_Integer; pragma Import (Ada, E269, "system__assertions_E");
   E144 : Short_Integer; pragma Import (Ada, E144, "system__pool_global_E");
   E199 : Short_Integer; pragma Import (Ada, E199, "system__regexp_E");
   E164 : Short_Integer; pragma Import (Ada, E164, "gnat__command_line_E");
   E249 : Short_Integer; pragma Import (Ada, E249, "system__tasking__initialization_E");
   E237 : Short_Integer; pragma Import (Ada, E237, "system__tasking__protected_objects_E");
   E253 : Short_Integer; pragma Import (Ada, E253, "system__tasking__protected_objects__entries_E");
   E257 : Short_Integer; pragma Import (Ada, E257, "system__tasking__queuing_E");
   E261 : Short_Integer; pragma Import (Ada, E261, "system__tasking__stages_E");
   E099 : Short_Integer; pragma Import (Ada, E099, "aunit_E");
   E101 : Short_Integer; pragma Import (Ada, E101, "aunit__memory_E");
   E119 : Short_Integer; pragma Import (Ada, E119, "aunit__memory__utils_E");
   E116 : Short_Integer; pragma Import (Ada, E116, "ada_containers__aunit_lists_E");
   E131 : Short_Integer; pragma Import (Ada, E131, "aunit__tests_E");
   E123 : Short_Integer; pragma Import (Ada, E123, "aunit__time_measure_E");
   E121 : Short_Integer; pragma Import (Ada, E121, "aunit__test_results_E");
   E114 : Short_Integer; pragma Import (Ada, E114, "aunit__assertions_E");
   E110 : Short_Integer; pragma Import (Ada, E110, "aunit__test_filters_E");
   E112 : Short_Integer; pragma Import (Ada, E112, "aunit__simple_test_cases_E");
   E152 : Short_Integer; pragma Import (Ada, E152, "aunit__reporter_E");
   E154 : Short_Integer; pragma Import (Ada, E154, "aunit__reporter__gnattest_E");
   E265 : Short_Integer; pragma Import (Ada, E265, "aunit__test_fixtures_E");
   E273 : Short_Integer; pragma Import (Ada, E273, "aunit__test_caller_E");
   E162 : Short_Integer; pragma Import (Ada, E162, "aunit__test_suites_E");
   E160 : Short_Integer; pragma Import (Ada, E160, "aunit__run_E");
   E205 : Short_Integer; pragma Import (Ada, E205, "hofstadter_q_sequence_E");
   E263 : Short_Integer; pragma Import (Ada, E263, "hofstadter_q_sequence__test_data_E");
   E267 : Short_Integer; pragma Import (Ada, E267, "hofstadter_q_sequence__test_data__tests_E");
   E271 : Short_Integer; pragma Import (Ada, E271, "hofstadter_q_sequence__test_data__tests__suite_E");
   E203 : Short_Integer; pragma Import (Ada, E203, "gnattest_main_suite_E");

   Sec_Default_Sized_Stacks : array (1 .. 1) of aliased System.Secondary_Stack.SS_Stack (System.Parameters.Runtime_Default_Sec_Stack_Size);

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      declare
         procedure F1;
         pragma Import (Ada, F1, "hofstadter_q_sequence__test_data__tests__suite__finalize_body");
      begin
         E271 := E271 - 1;
         F1;
      end;
      E267 := E267 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "hofstadter_q_sequence__test_data__tests__finalize_spec");
      begin
         F2;
      end;
      E263 := E263 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "hofstadter_q_sequence__test_data__finalize_spec");
      begin
         F3;
      end;
      E162 := E162 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "aunit__test_suites__finalize_spec");
      begin
         F4;
      end;
      E265 := E265 - 1;
      declare
         procedure F5;
         pragma Import (Ada, F5, "aunit__test_fixtures__finalize_spec");
      begin
         F5;
      end;
      E154 := E154 - 1;
      declare
         procedure F6;
         pragma Import (Ada, F6, "aunit__reporter__gnattest__finalize_spec");
      begin
         F6;
      end;
      E110 := E110 - 1;
      E112 := E112 - 1;
      declare
         procedure F7;
         pragma Import (Ada, F7, "aunit__simple_test_cases__finalize_spec");
      begin
         F7;
      end;
      declare
         procedure F8;
         pragma Import (Ada, F8, "aunit__test_filters__finalize_spec");
      begin
         F8;
      end;
      E114 := E114 - 1;
      declare
         procedure F9;
         pragma Import (Ada, F9, "aunit__assertions__finalize_spec");
      begin
         F9;
      end;
      E121 := E121 - 1;
      declare
         procedure F10;
         pragma Import (Ada, F10, "aunit__test_results__finalize_spec");
      begin
         F10;
      end;
      declare
         procedure F11;
         pragma Import (Ada, F11, "aunit__tests__finalize_spec");
      begin
         E131 := E131 - 1;
         F11;
      end;
      E253 := E253 - 1;
      declare
         procedure F12;
         pragma Import (Ada, F12, "system__tasking__protected_objects__entries__finalize_spec");
      begin
         F12;
      end;
      E199 := E199 - 1;
      declare
         procedure F13;
         pragma Import (Ada, F13, "system__regexp__finalize_spec");
      begin
         F13;
      end;
      E144 := E144 - 1;
      declare
         procedure F14;
         pragma Import (Ada, F14, "system__pool_global__finalize_spec");
      begin
         F14;
      end;
      E182 := E182 - 1;
      declare
         procedure F15;
         pragma Import (Ada, F15, "ada__text_io__finalize_spec");
      begin
         F15;
      end;
      E166 := E166 - 1;
      declare
         procedure F16;
         pragma Import (Ada, F16, "ada__strings__unbounded__finalize_spec");
      begin
         F16;
      end;
      E174 := E174 - 1;
      declare
         procedure F17;
         pragma Import (Ada, F17, "system__storage_pools__subpools__finalize_spec");
      begin
         F17;
      end;
      E133 := E133 - 1;
      declare
         procedure F18;
         pragma Import (Ada, F18, "system__finalization_masters__finalize_spec");
      begin
         F18;
      end;
      declare
         procedure F19;
         pragma Import (Ada, F19, "system__file_io__finalize_body");
      begin
         E186 := E186 - 1;
         F19;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (C, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Exception_Tracebacks : Integer;
      pragma Import (C, Exception_Tracebacks, "__gl_exception_tracebacks");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Default_Secondary_Stack_Size : System.Parameters.Size_Type;
      pragma Import (C, Default_Secondary_Stack_Size, "__gnat_default_ss_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
      Binder_Sec_Stacks_Count : Natural;
      pragma Import (Ada, Binder_Sec_Stacks_Count, "__gnat_binder_ss_count");
      Default_Sized_SS_Pool : System.Address;
      pragma Import (Ada, Default_Sized_SS_Pool, "__gnat_default_ss_pool");

   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      System.Restrictions.Run_Time_Restrictions :=
        (Set =>
          (False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, True, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False),
         Value => (0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
         Violated =>
          (False, False, False, False, True, True, False, False, 
           True, False, False, True, True, True, True, False, 
           False, False, False, False, True, True, False, True, 
           True, False, True, True, True, True, False, True, 
           False, False, False, True, False, True, True, False, 
           True, False, True, True, False, False, False, True, 
           False, False, False, True, False, False, False, False, 
           False, True, False, True, False, True, True, True, 
           False, False, True, False, True, True, True, False, 
           True, True, False, True, True, True, True, False, 
           False, True, False, False, False, False, False, True, 
           True, False, True, False),
         Count => (0, 0, 0, 0, 0, 1, 1, 0, 1, 0),
         Unknown => (False, False, False, False, False, False, True, False, True, False));
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Exception_Tracebacks := 1;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      ada_main'Elab_Body;
      Default_Secondary_Stack_Size := System.Parameters.Runtime_Default_Sec_Stack_Size;
      Binder_Sec_Stacks_Count := 1;
      Default_Sized_SS_Pool := Sec_Default_Sized_Stacks'Address;

      Runtime_Initialize (1);

      Finalize_Library_Objects := finalize_library'access;

      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E025 := E025 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E068 := E068 + 1;
      Ada.Strings'Elab_Spec;
      E052 := E052 + 1;
      Ada.Containers'Elab_Spec;
      E040 := E040 + 1;
      System.Exceptions'Elab_Spec;
      E027 := E027 + 1;
      System.Soft_Links.Initialize'Elab_Body;
      E017 := E017 + 1;
      E015 := E015 + 1;
      Interfaces.C'Elab_Spec;
      System.Os_Lib'Elab_Body;
      E072 := E072 + 1;
      Ada.Strings.Maps'Elab_Spec;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E058 := E058 + 1;
      System.Object_Reader'Elab_Spec;
      System.Dwarf_Lines'Elab_Spec;
      E047 := E047 + 1;
      E078 := E078 + 1;
      E054 := E054 + 1;
      System.Traceback.Symbolic'Elab_Body;
      E039 := E039 + 1;
      E080 := E080 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Tags'Elab_Body;
      E104 := E104 + 1;
      Ada.Streams'Elab_Spec;
      E138 := E138 + 1;
      Interfaces.C.Strings'Elab_Spec;
      E213 := E213 + 1;
      System.File_Control_Block'Elab_Spec;
      E187 := E187 + 1;
      System.Finalization_Root'Elab_Spec;
      E140 := E140 + 1;
      Ada.Finalization'Elab_Spec;
      E136 := E136 + 1;
      System.File_Io'Elab_Body;
      E186 := E186 + 1;
      System.Storage_Pools'Elab_Spec;
      E142 := E142 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E133 := E133 + 1;
      System.Storage_Pools.Subpools'Elab_Spec;
      E174 := E174 + 1;
      Ada.Strings.Unbounded'Elab_Spec;
      E166 := E166 + 1;
      System.Task_Info'Elab_Spec;
      E223 := E223 + 1;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E125 := E125 + 1;
      Ada.Real_Time'Elab_Spec;
      Ada.Real_Time'Elab_Body;
      E207 := E207 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E182 := E182 + 1;
      Gnat.Directory_Operations'Elab_Spec;
      Gnat.Directory_Operations'Elab_Body;
      E189 := E189 + 1;
      System.Assertions'Elab_Spec;
      E269 := E269 + 1;
      System.Pool_Global'Elab_Spec;
      E144 := E144 + 1;
      System.Regexp'Elab_Spec;
      E199 := E199 + 1;
      Gnat.Command_Line'Elab_Spec;
      Gnat.Command_Line'Elab_Body;
      E164 := E164 + 1;
      System.Tasking.Initialization'Elab_Body;
      E249 := E249 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E237 := E237 + 1;
      System.Tasking.Protected_Objects.Entries'Elab_Spec;
      E253 := E253 + 1;
      System.Tasking.Queuing'Elab_Body;
      E257 := E257 + 1;
      System.Tasking.Stages'Elab_Body;
      E261 := E261 + 1;
      E101 := E101 + 1;
      E099 := E099 + 1;
      E119 := E119 + 1;
      E116 := E116 + 1;
      Aunit.Tests'Elab_Spec;
      E131 := E131 + 1;
      Aunit.Time_Measure'Elab_Spec;
      E123 := E123 + 1;
      Aunit.Test_Results'Elab_Spec;
      E121 := E121 + 1;
      Aunit.Assertions'Elab_Spec;
      Aunit.Assertions'Elab_Body;
      E114 := E114 + 1;
      Aunit.Test_Filters'Elab_Spec;
      Aunit.Simple_Test_Cases'Elab_Spec;
      E112 := E112 + 1;
      E110 := E110 + 1;
      Aunit.Reporter'Elab_Spec;
      E152 := E152 + 1;
      Aunit.Reporter.Gnattest'Elab_Spec;
      E154 := E154 + 1;
      Aunit.Test_Fixtures'Elab_Spec;
      E265 := E265 + 1;
      E273 := E273 + 1;
      Aunit.Test_Suites'Elab_Spec;
      E162 := E162 + 1;
      E160 := E160 + 1;
      Hofstadter_Q_Sequence'Elab_Body;
      E205 := E205 + 1;
      Hofstadter_Q_Sequence.Test_Data'Elab_Spec;
      Hofstadter_Q_Sequence.Test_Data'Elab_Body;
      E263 := E263 + 1;
      Hofstadter_Q_Sequence.Test_Data.Tests'Elab_Spec;
      Hofstadter_Q_Sequence.Test_Data.Tests'Elab_Body;
      E267 := E267 + 1;
      Hofstadter_Q_Sequence.Test_Data.Tests.Suite'Elab_Body;
      E271 := E271 + 1;
      Gnattest_Main_Suite'Elab_Body;
      E203 := E203 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_test_runner");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   C:\Users\User\Documents\Bauhaus\WS18\Security Engineering\Exercises\SecurityENgineering\hw7\obj\gnattest\harness\gnattest_generated.o
   --   C:\Users\User\Documents\Bauhaus\WS18\Security Engineering\Exercises\SecurityENgineering\hw7\obj\hofstadter_q_sequence.o
   --   C:\Users\User\Documents\Bauhaus\WS18\Security Engineering\Exercises\SecurityENgineering\hw7\obj\gnattest\harness\hofstadter_q_sequence-test_data.o
   --   C:\Users\User\Documents\Bauhaus\WS18\Security Engineering\Exercises\SecurityENgineering\hw7\obj\gnattest\harness\hofstadter_q_sequence-test_data-tests.o
   --   C:\Users\User\Documents\Bauhaus\WS18\Security Engineering\Exercises\SecurityENgineering\hw7\obj\gnattest\harness\hofstadter_q_sequence-test_data-tests-suite.o
   --   C:\Users\User\Documents\Bauhaus\WS18\Security Engineering\Exercises\SecurityENgineering\hw7\obj\gnattest\harness\gnattest_main_suite.o
   --   C:\Users\User\Documents\Bauhaus\WS18\Security Engineering\Exercises\SecurityENgineering\hw7\obj\gnattest\harness\test_runner.o
   --   -LC:\Users\User\Documents\Bauhaus\WS18\Security Engineering\Exercises\SecurityENgineering\hw7\obj\gnattest\harness\
   --   -LC:\Users\User\Documents\Bauhaus\WS18\Security Engineering\Exercises\SecurityENgineering\hw7\obj\gnattest\harness\
   --   -LC:\gnat\2018\lib\aunit\
   --   -LC:\Users\User\Documents\Bauhaus\WS18\Security Engineering\Exercises\SecurityENgineering\hw7\obj\
   --   -LC:/gnat/2018/lib/gcc/x86_64-pc-mingw32/7.3.1/adalib/
   --   -static
   --   -lgnarl
   --   -lgnat
   --   -Xlinker
   --   --stack=0x200000,0x1000
   --   -mthreads
   --   -Wl,--stack=0x2000000
--  END Object file/option list   

end ada_main;
