pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__coffee_machine-test_data-tests-suite-test_runner.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__coffee_machine-test_data-tests-suite-test_runner.adb");
pragma Suppress (Overflow_Check);
with Ada.Exceptions;

package body ada_main is

   E077 : Short_Integer; pragma Import (Ada, E077, "system__os_lib_E");
   E020 : Short_Integer; pragma Import (Ada, E020, "system__soft_links_E");
   E030 : Short_Integer; pragma Import (Ada, E030, "system__exception_table_E");
   E073 : Short_Integer; pragma Import (Ada, E073, "ada__io_exceptions_E");
   E057 : Short_Integer; pragma Import (Ada, E057, "ada__strings_E");
   E045 : Short_Integer; pragma Import (Ada, E045, "ada__containers_E");
   E032 : Short_Integer; pragma Import (Ada, E032, "system__exceptions_E");
   E083 : Short_Integer; pragma Import (Ada, E083, "interfaces__c_E");
   E059 : Short_Integer; pragma Import (Ada, E059, "ada__strings__maps_E");
   E063 : Short_Integer; pragma Import (Ada, E063, "ada__strings__maps__constants_E");
   E026 : Short_Integer; pragma Import (Ada, E026, "system__soft_links__initialize_E");
   E085 : Short_Integer; pragma Import (Ada, E085, "system__object_reader_E");
   E052 : Short_Integer; pragma Import (Ada, E052, "system__dwarf_lines_E");
   E044 : Short_Integer; pragma Import (Ada, E044, "system__traceback__symbolic_E");
   E014 : Short_Integer; pragma Import (Ada, E014, "ada__tags_E");
   E136 : Short_Integer; pragma Import (Ada, E136, "ada__streams_E");
   E138 : Short_Integer; pragma Import (Ada, E138, "system__finalization_root_E");
   E134 : Short_Integer; pragma Import (Ada, E134, "ada__finalization_E");
   E140 : Short_Integer; pragma Import (Ada, E140, "system__storage_pools_E");
   E131 : Short_Integer; pragma Import (Ada, E131, "system__finalization_masters_E");
   E123 : Short_Integer; pragma Import (Ada, E123, "ada__calendar_E");
   E174 : Short_Integer; pragma Import (Ada, E174, "system__assertions_E");
   E142 : Short_Integer; pragma Import (Ada, E142, "system__pool_global_E");
   E005 : Short_Integer; pragma Import (Ada, E005, "aunit_E");
   E008 : Short_Integer; pragma Import (Ada, E008, "aunit__memory_E");
   E117 : Short_Integer; pragma Import (Ada, E117, "aunit__memory__utils_E");
   E114 : Short_Integer; pragma Import (Ada, E114, "ada_containers__aunit_lists_E");
   E129 : Short_Integer; pragma Import (Ada, E129, "aunit__tests_E");
   E121 : Short_Integer; pragma Import (Ada, E121, "aunit__time_measure_E");
   E119 : Short_Integer; pragma Import (Ada, E119, "aunit__test_results_E");
   E112 : Short_Integer; pragma Import (Ada, E112, "aunit__assertions_E");
   E108 : Short_Integer; pragma Import (Ada, E108, "aunit__test_filters_E");
   E110 : Short_Integer; pragma Import (Ada, E110, "aunit__simple_test_cases_E");
   E150 : Short_Integer; pragma Import (Ada, E150, "aunit__reporter_E");
   E152 : Short_Integer; pragma Import (Ada, E152, "aunit__reporter__gnattest_E");
   E166 : Short_Integer; pragma Import (Ada, E166, "aunit__test_fixtures_E");
   E164 : Short_Integer; pragma Import (Ada, E164, "aunit__test_caller_E");
   E160 : Short_Integer; pragma Import (Ada, E160, "aunit__test_suites_E");
   E158 : Short_Integer; pragma Import (Ada, E158, "aunit__run_E");
   E172 : Short_Integer; pragma Import (Ada, E172, "coffee_machine_E");
   E170 : Short_Integer; pragma Import (Ada, E170, "coffee_machine__test_data_E");
   E168 : Short_Integer; pragma Import (Ada, E168, "coffee_machine__test_data__tests_E");
   E162 : Short_Integer; pragma Import (Ada, E162, "coffee_machine__test_data__tests__suite_E");

   Sec_Default_Sized_Stacks : array (1 .. 1) of aliased System.Secondary_Stack.SS_Stack (System.Parameters.Runtime_Default_Sec_Stack_Size);

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      declare
         procedure F1;
         pragma Import (Ada, F1, "coffee_machine__test_data__tests__suite__finalize_body");
      begin
         E162 := E162 - 1;
         F1;
      end;
      E168 := E168 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "coffee_machine__test_data__tests__finalize_spec");
      begin
         F2;
      end;
      E170 := E170 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "coffee_machine__test_data__finalize_spec");
      begin
         F3;
      end;
      E160 := E160 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "aunit__test_suites__finalize_spec");
      begin
         F4;
      end;
      E166 := E166 - 1;
      declare
         procedure F5;
         pragma Import (Ada, F5, "aunit__test_fixtures__finalize_spec");
      begin
         F5;
      end;
      E152 := E152 - 1;
      declare
         procedure F6;
         pragma Import (Ada, F6, "aunit__reporter__gnattest__finalize_spec");
      begin
         F6;
      end;
      E108 := E108 - 1;
      E110 := E110 - 1;
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
      E112 := E112 - 1;
      declare
         procedure F9;
         pragma Import (Ada, F9, "aunit__assertions__finalize_spec");
      begin
         F9;
      end;
      E119 := E119 - 1;
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
         E129 := E129 - 1;
         F11;
      end;
      E142 := E142 - 1;
      declare
         procedure F12;
         pragma Import (Ada, F12, "system__pool_global__finalize_spec");
      begin
         F12;
      end;
      E131 := E131 - 1;
      declare
         procedure F13;
         pragma Import (Ada, F13, "system__finalization_masters__finalize_spec");
      begin
         F13;
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
      E030 := E030 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E073 := E073 + 1;
      Ada.Strings'Elab_Spec;
      E057 := E057 + 1;
      Ada.Containers'Elab_Spec;
      E045 := E045 + 1;
      System.Exceptions'Elab_Spec;
      E032 := E032 + 1;
      Interfaces.C'Elab_Spec;
      System.Os_Lib'Elab_Body;
      E077 := E077 + 1;
      Ada.Strings.Maps'Elab_Spec;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E063 := E063 + 1;
      System.Soft_Links.Initialize'Elab_Body;
      E026 := E026 + 1;
      E020 := E020 + 1;
      System.Object_Reader'Elab_Spec;
      System.Dwarf_Lines'Elab_Spec;
      E052 := E052 + 1;
      E083 := E083 + 1;
      E059 := E059 + 1;
      System.Traceback.Symbolic'Elab_Body;
      E044 := E044 + 1;
      E085 := E085 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Tags'Elab_Body;
      E014 := E014 + 1;
      Ada.Streams'Elab_Spec;
      E136 := E136 + 1;
      System.Finalization_Root'Elab_Spec;
      E138 := E138 + 1;
      Ada.Finalization'Elab_Spec;
      E134 := E134 + 1;
      System.Storage_Pools'Elab_Spec;
      E140 := E140 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E131 := E131 + 1;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E123 := E123 + 1;
      System.Assertions'Elab_Spec;
      E174 := E174 + 1;
      System.Pool_Global'Elab_Spec;
      E142 := E142 + 1;
      E008 := E008 + 1;
      E005 := E005 + 1;
      E117 := E117 + 1;
      E114 := E114 + 1;
      Aunit.Tests'Elab_Spec;
      E129 := E129 + 1;
      Aunit.Time_Measure'Elab_Spec;
      E121 := E121 + 1;
      Aunit.Test_Results'Elab_Spec;
      E119 := E119 + 1;
      Aunit.Assertions'Elab_Spec;
      Aunit.Assertions'Elab_Body;
      E112 := E112 + 1;
      Aunit.Test_Filters'Elab_Spec;
      Aunit.Simple_Test_Cases'Elab_Spec;
      E110 := E110 + 1;
      E108 := E108 + 1;
      Aunit.Reporter'Elab_Spec;
      E150 := E150 + 1;
      Aunit.Reporter.Gnattest'Elab_Spec;
      E152 := E152 + 1;
      Aunit.Test_Fixtures'Elab_Spec;
      E166 := E166 + 1;
      E164 := E164 + 1;
      Aunit.Test_Suites'Elab_Spec;
      E160 := E160 + 1;
      E158 := E158 + 1;
      E172 := E172 + 1;
      Coffee_Machine.Test_Data'Elab_Spec;
      Coffee_Machine.Test_Data'Elab_Body;
      E170 := E170 + 1;
      Coffee_Machine.Test_Data.Tests'Elab_Spec;
      Coffee_Machine.Test_Data.Tests'Elab_Body;
      E168 := E168 + 1;
      Coffee_Machine.Test_Data.Tests.Suite'Elab_Body;
      E162 := E162 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_coffee_machine__test_data__tests__suite__test_runner");

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
   --   C:\Users\wassabi.vl\Desktop\uni\SecurityENgineering\hw4\obj\gnattest_stub\harness\Coffee_Machine.Test_Data.Tests\Stubs_obj\coffee_machine.o
   --   C:\Users\wassabi.vl\Desktop\uni\SecurityENgineering\hw4\obj\gnattest_stub\harness\Coffee_Machine.Test_Data.Tests\Test_Driver_obj\coffee_machine-test_data.o
   --   C:\Users\wassabi.vl\Desktop\uni\SecurityENgineering\hw4\obj\gnattest_stub\harness\Coffee_Machine.Test_Data.Tests\Test_Driver_obj\gnattest_generated.o
   --   C:\Users\wassabi.vl\Desktop\uni\SecurityENgineering\hw4\obj\gnattest_stub\harness\Coffee_Machine.Test_Data.Tests\Test_Driver_obj\coffee_machine-test_data-tests.o
   --   C:\Users\wassabi.vl\Desktop\uni\SecurityENgineering\hw4\obj\gnattest_stub\harness\Coffee_Machine.Test_Data.Tests\Test_Driver_obj\coffee_machine-test_data-tests-suite.o
   --   C:\Users\wassabi.vl\Desktop\uni\SecurityENgineering\hw4\obj\gnattest_stub\harness\Coffee_Machine.Test_Data.Tests\Test_Driver_obj\coffee_machine-test_data-tests-suite-test_runner.o
   --   -LC:\Users\wassabi.vl\Desktop\uni\SecurityENgineering\hw4\obj\gnattest_stub\harness\Coffee_Machine.Test_Data.Tests\Test_Driver_obj\
   --   -LC:\Users\wassabi.vl\Desktop\uni\SecurityENgineering\hw4\obj\gnattest_stub\harness\Coffee_Machine.Test_Data.Tests\Test_Driver_obj\
   --   -LC:\gnat\lib\aunit\
   --   -LC:\Users\wassabi.vl\Desktop\uni\SecurityENgineering\hw4\obj\gnattest_stub\harness\Coffee_Machine.Test_Data.Tests\Stubs_obj\
   --   -LC:\Users\wassabi.vl\Desktop\uni\SecurityENgineering\hw4\obj\
   --   -LC:/gnat/lib/gcc/x86_64-pc-mingw32/7.3.1/adalib/
   --   -static
   --   -lgnat
   --   -Wl,--stack=0x2000000
--  END Object file/option list   

end ada_main;
