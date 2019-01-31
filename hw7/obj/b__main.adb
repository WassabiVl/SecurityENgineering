pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__main.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__main.adb");
pragma Suppress (Overflow_Check);

with System.Restrictions;
with Ada.Exceptions;

package body ada_main is

   E074 : Short_Integer; pragma Import (Ada, E074, "system__os_lib_E");
   E015 : Short_Integer; pragma Import (Ada, E015, "system__soft_links_E");
   E027 : Short_Integer; pragma Import (Ada, E027, "system__exception_table_E");
   E070 : Short_Integer; pragma Import (Ada, E070, "ada__io_exceptions_E");
   E054 : Short_Integer; pragma Import (Ada, E054, "ada__strings_E");
   E042 : Short_Integer; pragma Import (Ada, E042, "ada__containers_E");
   E029 : Short_Integer; pragma Import (Ada, E029, "system__exceptions_E");
   E080 : Short_Integer; pragma Import (Ada, E080, "interfaces__c_E");
   E056 : Short_Integer; pragma Import (Ada, E056, "ada__strings__maps_E");
   E060 : Short_Integer; pragma Import (Ada, E060, "ada__strings__maps__constants_E");
   E023 : Short_Integer; pragma Import (Ada, E023, "system__soft_links__initialize_E");
   E082 : Short_Integer; pragma Import (Ada, E082, "system__object_reader_E");
   E049 : Short_Integer; pragma Import (Ada, E049, "system__dwarf_lines_E");
   E041 : Short_Integer; pragma Import (Ada, E041, "system__traceback__symbolic_E");
   E113 : Short_Integer; pragma Import (Ada, E113, "ada__tags_E");
   E111 : Short_Integer; pragma Import (Ada, E111, "ada__streams_E");
   E156 : Short_Integer; pragma Import (Ada, E156, "interfaces__c__strings_E");
   E130 : Short_Integer; pragma Import (Ada, E130, "system__file_control_block_E");
   E119 : Short_Integer; pragma Import (Ada, E119, "system__finalization_root_E");
   E109 : Short_Integer; pragma Import (Ada, E109, "ada__finalization_E");
   E129 : Short_Integer; pragma Import (Ada, E129, "system__file_io_E");
   E215 : Short_Integer; pragma Import (Ada, E215, "system__storage_pools_E");
   E211 : Short_Integer; pragma Import (Ada, E211, "system__finalization_masters_E");
   E209 : Short_Integer; pragma Import (Ada, E209, "system__storage_pools__subpools_E");
   E201 : Short_Integer; pragma Import (Ada, E201, "ada__strings__unbounded_E");
   E166 : Short_Integer; pragma Import (Ada, E166, "system__task_info_E");
   E008 : Short_Integer; pragma Import (Ada, E008, "ada__calendar_E");
   E006 : Short_Integer; pragma Import (Ada, E006, "ada__calendar__delays_E");
   E242 : Short_Integer; pragma Import (Ada, E242, "ada__calendar__time_zones_E");
   E150 : Short_Integer; pragma Import (Ada, E150, "ada__real_time_E");
   E125 : Short_Integer; pragma Import (Ada, E125, "ada__text_io_E");
   E221 : Short_Integer; pragma Import (Ada, E221, "gnat__directory_operations_E");
   E226 : Short_Integer; pragma Import (Ada, E226, "system__pool_global_E");
   E231 : Short_Integer; pragma Import (Ada, E231, "system__regexp_E");
   E199 : Short_Integer; pragma Import (Ada, E199, "gnat__command_line_E");
   E182 : Short_Integer; pragma Import (Ada, E182, "system__tasking__initialization_E");
   E192 : Short_Integer; pragma Import (Ada, E192, "system__tasking__protected_objects_E");
   E194 : Short_Integer; pragma Import (Ada, E194, "system__tasking__protected_objects__entries_E");
   E190 : Short_Integer; pragma Import (Ada, E190, "system__tasking__queuing_E");
   E262 : Short_Integer; pragma Import (Ada, E262, "system__tasking__stages_E");
   E264 : Short_Integer; pragma Import (Ada, E264, "system__tasking__async_delays_E");
   E250 : Short_Integer; pragma Import (Ada, E250, "armageddon_E");
   E234 : Short_Integer; pragma Import (Ada, E234, "graph_E");
   E236 : Short_Integer; pragma Import (Ada, E236, "graph_algorithms_E");
   E238 : Short_Integer; pragma Import (Ada, E238, "hofstadter_q_sequence_E");

   Sec_Default_Sized_Stacks : array (1 .. 1) of aliased System.Secondary_Stack.SS_Stack (System.Parameters.Runtime_Default_Sec_Stack_Size);

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E250 := E250 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "armageddon__finalize_spec");
      begin
         F1;
      end;
      E194 := E194 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "system__tasking__protected_objects__entries__finalize_spec");
      begin
         F2;
      end;
      E231 := E231 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "system__regexp__finalize_spec");
      begin
         F3;
      end;
      E226 := E226 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "system__pool_global__finalize_spec");
      begin
         F4;
      end;
      E125 := E125 - 1;
      declare
         procedure F5;
         pragma Import (Ada, F5, "ada__text_io__finalize_spec");
      begin
         F5;
      end;
      E201 := E201 - 1;
      declare
         procedure F6;
         pragma Import (Ada, F6, "ada__strings__unbounded__finalize_spec");
      begin
         F6;
      end;
      E209 := E209 - 1;
      declare
         procedure F7;
         pragma Import (Ada, F7, "system__storage_pools__subpools__finalize_spec");
      begin
         F7;
      end;
      E211 := E211 - 1;
      declare
         procedure F8;
         pragma Import (Ada, F8, "system__finalization_masters__finalize_spec");
      begin
         F8;
      end;
      declare
         procedure F9;
         pragma Import (Ada, F9, "system__file_io__finalize_body");
      begin
         E129 := E129 - 1;
         F9;
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
           True, False, True, True, False, True, False, True, 
           True, False, True, True, False, True, False, False, 
           True, True, False, True, False, True, True, True, 
           False, False, True, False, True, True, True, False, 
           True, True, False, True, True, True, True, False, 
           True, True, False, False, False, False, False, True, 
           True, True, True, False),
         Count => (0, 0, 0, 0, 0, 1, 3, 1, 1, 0),
         Unknown => (False, False, False, False, False, False, True, True, True, False));
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
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
      E027 := E027 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E070 := E070 + 1;
      Ada.Strings'Elab_Spec;
      E054 := E054 + 1;
      Ada.Containers'Elab_Spec;
      E042 := E042 + 1;
      System.Exceptions'Elab_Spec;
      E029 := E029 + 1;
      Interfaces.C'Elab_Spec;
      System.Os_Lib'Elab_Body;
      E074 := E074 + 1;
      Ada.Strings.Maps'Elab_Spec;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E060 := E060 + 1;
      System.Soft_Links.Initialize'Elab_Body;
      E023 := E023 + 1;
      E015 := E015 + 1;
      System.Object_Reader'Elab_Spec;
      System.Dwarf_Lines'Elab_Spec;
      E049 := E049 + 1;
      E080 := E080 + 1;
      E056 := E056 + 1;
      System.Traceback.Symbolic'Elab_Body;
      E041 := E041 + 1;
      E082 := E082 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Tags'Elab_Body;
      E113 := E113 + 1;
      Ada.Streams'Elab_Spec;
      E111 := E111 + 1;
      Interfaces.C.Strings'Elab_Spec;
      E156 := E156 + 1;
      System.File_Control_Block'Elab_Spec;
      E130 := E130 + 1;
      System.Finalization_Root'Elab_Spec;
      E119 := E119 + 1;
      Ada.Finalization'Elab_Spec;
      E109 := E109 + 1;
      System.File_Io'Elab_Body;
      E129 := E129 + 1;
      System.Storage_Pools'Elab_Spec;
      E215 := E215 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E211 := E211 + 1;
      System.Storage_Pools.Subpools'Elab_Spec;
      E209 := E209 + 1;
      Ada.Strings.Unbounded'Elab_Spec;
      E201 := E201 + 1;
      System.Task_Info'Elab_Spec;
      E166 := E166 + 1;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E008 := E008 + 1;
      Ada.Calendar.Delays'Elab_Body;
      E006 := E006 + 1;
      Ada.Calendar.Time_Zones'Elab_Spec;
      E242 := E242 + 1;
      Ada.Real_Time'Elab_Spec;
      Ada.Real_Time'Elab_Body;
      E150 := E150 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E125 := E125 + 1;
      Gnat.Directory_Operations'Elab_Spec;
      Gnat.Directory_Operations'Elab_Body;
      E221 := E221 + 1;
      System.Pool_Global'Elab_Spec;
      E226 := E226 + 1;
      System.Regexp'Elab_Spec;
      E231 := E231 + 1;
      Gnat.Command_Line'Elab_Spec;
      Gnat.Command_Line'Elab_Body;
      E199 := E199 + 1;
      System.Tasking.Initialization'Elab_Body;
      E182 := E182 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E192 := E192 + 1;
      System.Tasking.Protected_Objects.Entries'Elab_Spec;
      E194 := E194 + 1;
      System.Tasking.Queuing'Elab_Body;
      E190 := E190 + 1;
      System.Tasking.Stages'Elab_Body;
      E262 := E262 + 1;
      System.Tasking.Async_Delays'Elab_Body;
      E264 := E264 + 1;
      Armageddon'Elab_Spec;
      Armageddon'Elab_Body;
      E250 := E250 + 1;
      E234 := E234 + 1;
      E236 := E236 + 1;
      Hofstadter_Q_Sequence'Elab_Body;
      E238 := E238 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_main");

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
   --   C:\Users\User\Documents\Bauhaus\WS18\Security Engineering\Exercises\SecurityENgineering\hw7\obj\armageddon.o
   --   C:\Users\User\Documents\Bauhaus\WS18\Security Engineering\Exercises\SecurityENgineering\hw7\obj\graph.o
   --   C:\Users\User\Documents\Bauhaus\WS18\Security Engineering\Exercises\SecurityENgineering\hw7\obj\graph_algorithms.o
   --   C:\Users\User\Documents\Bauhaus\WS18\Security Engineering\Exercises\SecurityENgineering\hw7\obj\hofstadter_q_sequence.o
   --   C:\Users\User\Documents\Bauhaus\WS18\Security Engineering\Exercises\SecurityENgineering\hw7\obj\main.o
   --   -LC:\Users\User\Documents\Bauhaus\WS18\Security Engineering\Exercises\SecurityENgineering\hw7\obj\
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
