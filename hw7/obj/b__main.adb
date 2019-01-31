pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__main.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__main.adb");
pragma Suppress (Overflow_Check);

with System.Restrictions;
with Ada.Exceptions;

package body ada_main is

   E072 : Short_Integer; pragma Import (Ada, E072, "system__os_lib_E");
   E013 : Short_Integer; pragma Import (Ada, E013, "system__soft_links_E");
   E025 : Short_Integer; pragma Import (Ada, E025, "system__exception_table_E");
   E068 : Short_Integer; pragma Import (Ada, E068, "ada__io_exceptions_E");
   E052 : Short_Integer; pragma Import (Ada, E052, "ada__strings_E");
   E040 : Short_Integer; pragma Import (Ada, E040, "ada__containers_E");
   E027 : Short_Integer; pragma Import (Ada, E027, "system__exceptions_E");
   E078 : Short_Integer; pragma Import (Ada, E078, "interfaces__c_E");
   E054 : Short_Integer; pragma Import (Ada, E054, "ada__strings__maps_E");
   E058 : Short_Integer; pragma Import (Ada, E058, "ada__strings__maps__constants_E");
   E021 : Short_Integer; pragma Import (Ada, E021, "system__soft_links__initialize_E");
   E080 : Short_Integer; pragma Import (Ada, E080, "system__object_reader_E");
   E047 : Short_Integer; pragma Import (Ada, E047, "system__dwarf_lines_E");
   E039 : Short_Integer; pragma Import (Ada, E039, "system__traceback__symbolic_E");
<<<<<<< HEAD
   E103 : Short_Integer; pragma Import (Ada, E103, "ada__tags_E");
   E101 : Short_Integer; pragma Import (Ada, E101, "ada__streams_E");
   E183 : Short_Integer; pragma Import (Ada, E183, "interfaces__c__strings_E");
   E115 : Short_Integer; pragma Import (Ada, E115, "system__file_control_block_E");
   E114 : Short_Integer; pragma Import (Ada, E114, "system__finalization_root_E");
   E112 : Short_Integer; pragma Import (Ada, E112, "ada__finalization_E");
   E111 : Short_Integer; pragma Import (Ada, E111, "system__file_io_E");
   E152 : Short_Integer; pragma Import (Ada, E152, "system__storage_pools_E");
   E148 : Short_Integer; pragma Import (Ada, E148, "system__finalization_masters_E");
   E146 : Short_Integer; pragma Import (Ada, E146, "system__storage_pools__subpools_E");
   E138 : Short_Integer; pragma Import (Ada, E138, "ada__strings__unbounded_E");
   E198 : Short_Integer; pragma Import (Ada, E198, "system__task_info_E");
   E177 : Short_Integer; pragma Import (Ada, E177, "ada__real_time_E");
   E099 : Short_Integer; pragma Import (Ada, E099, "ada__text_io_E");
   E160 : Short_Integer; pragma Import (Ada, E160, "gnat__directory_operations_E");
   E165 : Short_Integer; pragma Import (Ada, E165, "system__pool_global_E");
   E172 : Short_Integer; pragma Import (Ada, E172, "system__regexp_E");
   E136 : Short_Integer; pragma Import (Ada, E136, "gnat__command_line_E");
   E222 : Short_Integer; pragma Import (Ada, E222, "system__tasking__initialization_E");
   E212 : Short_Integer; pragma Import (Ada, E212, "system__tasking__protected_objects_E");
   E228 : Short_Integer; pragma Import (Ada, E228, "system__tasking__protected_objects__entries_E");
   E226 : Short_Integer; pragma Import (Ada, E226, "system__tasking__queuing_E");
   E242 : Short_Integer; pragma Import (Ada, E242, "system__tasking__stages_E");
   E210 : Short_Integer; pragma Import (Ada, E210, "armageddon_E");
   E175 : Short_Integer; pragma Import (Ada, E175, "hofstadter_q_sequence_E");
=======
   E104 : Short_Integer; pragma Import (Ada, E104, "ada__tags_E");
   E102 : Short_Integer; pragma Import (Ada, E102, "ada__streams_E");
   E153 : Short_Integer; pragma Import (Ada, E153, "interfaces__c__strings_E");
   E121 : Short_Integer; pragma Import (Ada, E121, "system__file_control_block_E");
   E110 : Short_Integer; pragma Import (Ada, E110, "system__finalization_root_E");
   E100 : Short_Integer; pragma Import (Ada, E100, "ada__finalization_E");
   E120 : Short_Integer; pragma Import (Ada, E120, "system__file_io_E");
   E218 : Short_Integer; pragma Import (Ada, E218, "system__storage_pools_E");
   E214 : Short_Integer; pragma Import (Ada, E214, "system__finalization_masters_E");
   E224 : Short_Integer; pragma Import (Ada, E224, "system__storage_pools__subpools_E");
   E168 : Short_Integer; pragma Import (Ada, E168, "system__task_info_E");
   E147 : Short_Integer; pragma Import (Ada, E147, "ada__real_time_E");
   E116 : Short_Integer; pragma Import (Ada, E116, "ada__text_io_E");
   E220 : Short_Integer; pragma Import (Ada, E220, "system__pool_global_E");
   E192 : Short_Integer; pragma Import (Ada, E192, "system__tasking__initialization_E");
   E182 : Short_Integer; pragma Import (Ada, E182, "system__tasking__protected_objects_E");
   E198 : Short_Integer; pragma Import (Ada, E198, "system__tasking__protected_objects__entries_E");
   E196 : Short_Integer; pragma Import (Ada, E196, "system__tasking__queuing_E");
   E212 : Short_Integer; pragma Import (Ada, E212, "system__tasking__stages_E");
   E180 : Short_Integer; pragma Import (Ada, E180, "armageddon_E");
   E141 : Short_Integer; pragma Import (Ada, E141, "graph_E");
   E143 : Short_Integer; pragma Import (Ada, E143, "graph_algorithms_E");
   E145 : Short_Integer; pragma Import (Ada, E145, "hofstadter_q_sequence_E");
>>>>>>> 33f646882d32c711c69d6d41857a447673763995

   Sec_Default_Sized_Stacks : array (1 .. 1) of aliased System.Secondary_Stack.SS_Stack (System.Parameters.Runtime_Default_Sec_Stack_Size);

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
<<<<<<< HEAD
      E210 := E210 - 1;
=======
      E180 := E180 - 1;
>>>>>>> 33f646882d32c711c69d6d41857a447673763995
      declare
         procedure F1;
         pragma Import (Ada, F1, "armageddon__finalize_spec");
      begin
         F1;
      end;
<<<<<<< HEAD
      E228 := E228 - 1;
=======
      E198 := E198 - 1;
>>>>>>> 33f646882d32c711c69d6d41857a447673763995
      declare
         procedure F2;
         pragma Import (Ada, F2, "system__tasking__protected_objects__entries__finalize_spec");
      begin
         F2;
      end;
<<<<<<< HEAD
      E172 := E172 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "system__regexp__finalize_spec");
      begin
         F3;
      end;
      E165 := E165 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "system__pool_global__finalize_spec");
      begin
         F4;
      end;
      E099 := E099 - 1;
      declare
         procedure F5;
         pragma Import (Ada, F5, "ada__text_io__finalize_spec");
      begin
         F5;
      end;
      E138 := E138 - 1;
      declare
         procedure F6;
         pragma Import (Ada, F6, "ada__strings__unbounded__finalize_spec");
      begin
         F6;
      end;
      E146 := E146 - 1;
      declare
         procedure F7;
         pragma Import (Ada, F7, "system__storage_pools__subpools__finalize_spec");
      begin
         F7;
      end;
      E148 := E148 - 1;
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
         E111 := E111 - 1;
         F9;
      end;
=======
      E220 := E220 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "system__pool_global__finalize_spec");
      begin
         F3;
      end;
      E116 := E116 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "ada__text_io__finalize_spec");
      begin
         F4;
      end;
      E224 := E224 - 1;
      declare
         procedure F5;
         pragma Import (Ada, F5, "system__storage_pools__subpools__finalize_spec");
      begin
         F5;
      end;
      E214 := E214 - 1;
      declare
         procedure F6;
         pragma Import (Ada, F6, "system__finalization_masters__finalize_spec");
      begin
         F6;
      end;
      declare
         procedure F7;
         pragma Import (Ada, F7, "system__file_io__finalize_body");
      begin
         E120 := E120 - 1;
         F7;
      end;
>>>>>>> 33f646882d32c711c69d6d41857a447673763995
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
           False, False, False, False, True, True, True, False, 
           False, False, False, False, True, True, False, True, 
           True, False, True, True, True, True, False, True, 
           False, False, False, True, False, True, True, False, 
           True, False, True, True, False, False, False, True, 
<<<<<<< HEAD
           False, False, False, True, False, False, False, False, 
=======
           False, False, True, True, False, True, False, False, 
>>>>>>> 33f646882d32c711c69d6d41857a447673763995
           False, True, False, True, False, True, True, True, 
           False, False, True, False, True, True, True, False, 
           True, True, False, True, True, True, True, False, 
           True, True, False, False, False, False, False, True, 
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
      Interfaces.C'Elab_Spec;
      System.Os_Lib'Elab_Body;
      E072 := E072 + 1;
      Ada.Strings.Maps'Elab_Spec;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E058 := E058 + 1;
      System.Soft_Links.Initialize'Elab_Body;
      E021 := E021 + 1;
      E013 := E013 + 1;
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
<<<<<<< HEAD
      E103 := E103 + 1;
      Ada.Streams'Elab_Spec;
      E101 := E101 + 1;
      Interfaces.C.Strings'Elab_Spec;
      E183 := E183 + 1;
      System.File_Control_Block'Elab_Spec;
      E115 := E115 + 1;
      System.Finalization_Root'Elab_Spec;
      E114 := E114 + 1;
      Ada.Finalization'Elab_Spec;
      E112 := E112 + 1;
      System.File_Io'Elab_Body;
      E111 := E111 + 1;
      System.Storage_Pools'Elab_Spec;
      E152 := E152 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E148 := E148 + 1;
      System.Storage_Pools.Subpools'Elab_Spec;
      E146 := E146 + 1;
      Ada.Strings.Unbounded'Elab_Spec;
      E138 := E138 + 1;
      System.Task_Info'Elab_Spec;
      E198 := E198 + 1;
      Ada.Real_Time'Elab_Spec;
      Ada.Real_Time'Elab_Body;
      E177 := E177 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E099 := E099 + 1;
      Gnat.Directory_Operations'Elab_Spec;
      Gnat.Directory_Operations'Elab_Body;
      E160 := E160 + 1;
      System.Pool_Global'Elab_Spec;
      E165 := E165 + 1;
      System.Regexp'Elab_Spec;
      E172 := E172 + 1;
      Gnat.Command_Line'Elab_Spec;
      Gnat.Command_Line'Elab_Body;
      E136 := E136 + 1;
      System.Tasking.Initialization'Elab_Body;
      E222 := E222 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E212 := E212 + 1;
      System.Tasking.Protected_Objects.Entries'Elab_Spec;
      E228 := E228 + 1;
      System.Tasking.Queuing'Elab_Body;
      E226 := E226 + 1;
      System.Tasking.Stages'Elab_Body;
      E242 := E242 + 1;
      Armageddon'Elab_Spec;
      Armageddon'Elab_Body;
      E210 := E210 + 1;
      Hofstadter_Q_Sequence'Elab_Body;
      E175 := E175 + 1;
=======
      E104 := E104 + 1;
      Ada.Streams'Elab_Spec;
      E102 := E102 + 1;
      Interfaces.C.Strings'Elab_Spec;
      E153 := E153 + 1;
      System.File_Control_Block'Elab_Spec;
      E121 := E121 + 1;
      System.Finalization_Root'Elab_Spec;
      E110 := E110 + 1;
      Ada.Finalization'Elab_Spec;
      E100 := E100 + 1;
      System.File_Io'Elab_Body;
      E120 := E120 + 1;
      System.Storage_Pools'Elab_Spec;
      E218 := E218 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E214 := E214 + 1;
      System.Storage_Pools.Subpools'Elab_Spec;
      E224 := E224 + 1;
      System.Task_Info'Elab_Spec;
      E168 := E168 + 1;
      Ada.Real_Time'Elab_Spec;
      Ada.Real_Time'Elab_Body;
      E147 := E147 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E116 := E116 + 1;
      System.Pool_Global'Elab_Spec;
      E220 := E220 + 1;
      System.Tasking.Initialization'Elab_Body;
      E192 := E192 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E182 := E182 + 1;
      System.Tasking.Protected_Objects.Entries'Elab_Spec;
      E198 := E198 + 1;
      System.Tasking.Queuing'Elab_Body;
      E196 := E196 + 1;
      System.Tasking.Stages'Elab_Body;
      E212 := E212 + 1;
      Armageddon'Elab_Spec;
      Armageddon'Elab_Body;
      E180 := E180 + 1;
      E141 := E141 + 1;
      E143 := E143 + 1;
      Hofstadter_Q_Sequence'Elab_Body;
      E145 := E145 + 1;
>>>>>>> 33f646882d32c711c69d6d41857a447673763995
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
   --   C:\Users\wassabi.vl\Desktop\uni\SecurityENgineering\hw7\obj\armageddon.o
   --   C:\Users\wassabi.vl\Desktop\uni\SecurityENgineering\hw7\obj\graph.o
   --   C:\Users\wassabi.vl\Desktop\uni\SecurityENgineering\hw7\obj\graph_algorithms.o
   --   C:\Users\wassabi.vl\Desktop\uni\SecurityENgineering\hw7\obj\hofstadter_q_sequence.o
   --   C:\Users\wassabi.vl\Desktop\uni\SecurityENgineering\hw7\obj\main.o
   --   -LC:\Users\wassabi.vl\Desktop\uni\SecurityENgineering\hw7\obj\
   --   -LC:\Users\wassabi.vl\Desktop\uni\SecurityENgineering\hw7\obj\
   --   -LC:/gnat/lib/gcc/x86_64-pc-mingw32/7.3.1/adalib/
   --   -static
   --   -lgnarl
   --   -lgnat
   --   -Xlinker
   --   --stack=0x200000,0x1000
   --   -mthreads
   --   -Wl,--stack=0x2000000
--  END Object file/option list   

end ada_main;
