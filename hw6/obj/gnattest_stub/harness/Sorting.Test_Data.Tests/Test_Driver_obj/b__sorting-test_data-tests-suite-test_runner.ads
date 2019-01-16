pragma Warnings (Off);
pragma Ada_95;
with System;
with System.Parameters;
with System.Secondary_Stack;
package ada_main is

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: Community 2018 (20180523-73)" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_sorting__test_data__tests__suite__test_runner" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#169228a1#;
   pragma Export (C, u00001, "sorting__test_data__tests__suite__test_runnerB");
   u00002 : constant Version_32 := 16#050ff2f0#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#35869f17#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#0d091e1a#;
   pragma Export (C, u00004, "aunitB");
   u00005 : constant Version_32 := 16#76cdf7c6#;
   pragma Export (C, u00005, "aunitS");
   u00006 : constant Version_32 := 16#76789da1#;
   pragma Export (C, u00006, "adaS");
   u00007 : constant Version_32 := 16#b6c145a2#;
   pragma Export (C, u00007, "aunit__memoryB");
   u00008 : constant Version_32 := 16#e45c27b8#;
   pragma Export (C, u00008, "aunit__memoryS");
   u00009 : constant Version_32 := 16#32a08138#;
   pragma Export (C, u00009, "systemS");
   u00010 : constant Version_32 := 16#ced09590#;
   pragma Export (C, u00010, "system__storage_elementsB");
   u00011 : constant Version_32 := 16#1f63cb3c#;
   pragma Export (C, u00011, "system__storage_elementsS");
   u00012 : constant Version_32 := 16#e99cd447#;
   pragma Export (C, u00012, "aunit__optionsS");
   u00013 : constant Version_32 := 16#d398a95f#;
   pragma Export (C, u00013, "ada__tagsB");
   u00014 : constant Version_32 := 16#12a0afb8#;
   pragma Export (C, u00014, "ada__tagsS");
   u00015 : constant Version_32 := 16#b11c5006#;
   pragma Export (C, u00015, "ada__exceptionsB");
   u00016 : constant Version_32 := 16#2ccb9557#;
   pragma Export (C, u00016, "ada__exceptionsS");
   u00017 : constant Version_32 := 16#5726abed#;
   pragma Export (C, u00017, "ada__exceptions__last_chance_handlerB");
   u00018 : constant Version_32 := 16#41e5552e#;
   pragma Export (C, u00018, "ada__exceptions__last_chance_handlerS");
   u00019 : constant Version_32 := 16#ae860117#;
   pragma Export (C, u00019, "system__soft_linksB");
   u00020 : constant Version_32 := 16#77a38a8e#;
   pragma Export (C, u00020, "system__soft_linksS");
   u00021 : constant Version_32 := 16#87be2c0f#;
   pragma Export (C, u00021, "system__secondary_stackB");
   u00022 : constant Version_32 := 16#77347921#;
   pragma Export (C, u00022, "system__secondary_stackS");
   u00023 : constant Version_32 := 16#86dbf443#;
   pragma Export (C, u00023, "system__parametersB");
   u00024 : constant Version_32 := 16#7a4cd513#;
   pragma Export (C, u00024, "system__parametersS");
   u00025 : constant Version_32 := 16#75bf515c#;
   pragma Export (C, u00025, "system__soft_links__initializeB");
   u00026 : constant Version_32 := 16#5697fc2b#;
   pragma Export (C, u00026, "system__soft_links__initializeS");
   u00027 : constant Version_32 := 16#41837d1e#;
   pragma Export (C, u00027, "system__stack_checkingB");
   u00028 : constant Version_32 := 16#bc1fead0#;
   pragma Export (C, u00028, "system__stack_checkingS");
   u00029 : constant Version_32 := 16#34742901#;
   pragma Export (C, u00029, "system__exception_tableB");
   u00030 : constant Version_32 := 16#6f0ee87a#;
   pragma Export (C, u00030, "system__exception_tableS");
   u00031 : constant Version_32 := 16#ce4af020#;
   pragma Export (C, u00031, "system__exceptionsB");
   u00032 : constant Version_32 := 16#5ac3ecce#;
   pragma Export (C, u00032, "system__exceptionsS");
   u00033 : constant Version_32 := 16#80916427#;
   pragma Export (C, u00033, "system__exceptions__machineB");
   u00034 : constant Version_32 := 16#3bad9081#;
   pragma Export (C, u00034, "system__exceptions__machineS");
   u00035 : constant Version_32 := 16#aa0563fc#;
   pragma Export (C, u00035, "system__exceptions_debugB");
   u00036 : constant Version_32 := 16#4c2a78fc#;
   pragma Export (C, u00036, "system__exceptions_debugS");
   u00037 : constant Version_32 := 16#6c2f8802#;
   pragma Export (C, u00037, "system__img_intB");
   u00038 : constant Version_32 := 16#307b61fa#;
   pragma Export (C, u00038, "system__img_intS");
   u00039 : constant Version_32 := 16#39df8c17#;
   pragma Export (C, u00039, "system__tracebackB");
   u00040 : constant Version_32 := 16#6c825ffc#;
   pragma Export (C, u00040, "system__tracebackS");
   u00041 : constant Version_32 := 16#9ed49525#;
   pragma Export (C, u00041, "system__traceback_entriesB");
   u00042 : constant Version_32 := 16#32fb7748#;
   pragma Export (C, u00042, "system__traceback_entriesS");
   u00043 : constant Version_32 := 16#9ad5ad12#;
   pragma Export (C, u00043, "system__traceback__symbolicB");
   u00044 : constant Version_32 := 16#c84061d1#;
   pragma Export (C, u00044, "system__traceback__symbolicS");
   u00045 : constant Version_32 := 16#179d7d28#;
   pragma Export (C, u00045, "ada__containersS");
   u00046 : constant Version_32 := 16#701f9d88#;
   pragma Export (C, u00046, "ada__exceptions__tracebackB");
   u00047 : constant Version_32 := 16#20245e75#;
   pragma Export (C, u00047, "ada__exceptions__tracebackS");
   u00048 : constant Version_32 := 16#e865e681#;
   pragma Export (C, u00048, "system__bounded_stringsB");
   u00049 : constant Version_32 := 16#455da021#;
   pragma Export (C, u00049, "system__bounded_stringsS");
   u00050 : constant Version_32 := 16#74f70e62#;
   pragma Export (C, u00050, "system__crtlS");
   u00051 : constant Version_32 := 16#d5de7583#;
   pragma Export (C, u00051, "system__dwarf_linesB");
   u00052 : constant Version_32 := 16#f4013fc9#;
   pragma Export (C, u00052, "system__dwarf_linesS");
   u00053 : constant Version_32 := 16#5b4659fa#;
   pragma Export (C, u00053, "ada__charactersS");
   u00054 : constant Version_32 := 16#8f637df8#;
   pragma Export (C, u00054, "ada__characters__handlingB");
   u00055 : constant Version_32 := 16#3b3f6154#;
   pragma Export (C, u00055, "ada__characters__handlingS");
   u00056 : constant Version_32 := 16#4b7bb96a#;
   pragma Export (C, u00056, "ada__characters__latin_1S");
   u00057 : constant Version_32 := 16#e6d4fa36#;
   pragma Export (C, u00057, "ada__stringsS");
   u00058 : constant Version_32 := 16#96df1a3f#;
   pragma Export (C, u00058, "ada__strings__mapsB");
   u00059 : constant Version_32 := 16#1e526bec#;
   pragma Export (C, u00059, "ada__strings__mapsS");
   u00060 : constant Version_32 := 16#a21ad5cd#;
   pragma Export (C, u00060, "system__bit_opsB");
   u00061 : constant Version_32 := 16#0765e3a3#;
   pragma Export (C, u00061, "system__bit_opsS");
   u00062 : constant Version_32 := 16#0626fdbb#;
   pragma Export (C, u00062, "system__unsigned_typesS");
   u00063 : constant Version_32 := 16#92f05f13#;
   pragma Export (C, u00063, "ada__strings__maps__constantsS");
   u00064 : constant Version_32 := 16#5ab55268#;
   pragma Export (C, u00064, "interfacesS");
   u00065 : constant Version_32 := 16#a0d3d22b#;
   pragma Export (C, u00065, "system__address_imageB");
   u00066 : constant Version_32 := 16#934c1c02#;
   pragma Export (C, u00066, "system__address_imageS");
   u00067 : constant Version_32 := 16#ec78c2bf#;
   pragma Export (C, u00067, "system__img_unsB");
   u00068 : constant Version_32 := 16#99d2c14c#;
   pragma Export (C, u00068, "system__img_unsS");
   u00069 : constant Version_32 := 16#d7aac20c#;
   pragma Export (C, u00069, "system__ioB");
   u00070 : constant Version_32 := 16#ace27677#;
   pragma Export (C, u00070, "system__ioS");
   u00071 : constant Version_32 := 16#3080f2ca#;
   pragma Export (C, u00071, "system__mmapB");
   u00072 : constant Version_32 := 16#08d13e5f#;
   pragma Export (C, u00072, "system__mmapS");
   u00073 : constant Version_32 := 16#92d882c5#;
   pragma Export (C, u00073, "ada__io_exceptionsS");
   u00074 : constant Version_32 := 16#a82e20f9#;
   pragma Export (C, u00074, "system__mmap__os_interfaceB");
   u00075 : constant Version_32 := 16#8f4541b8#;
   pragma Export (C, u00075, "system__mmap__os_interfaceS");
   u00076 : constant Version_32 := 16#35737c3a#;
   pragma Export (C, u00076, "system__os_libB");
   u00077 : constant Version_32 := 16#d8e681fb#;
   pragma Export (C, u00077, "system__os_libS");
   u00078 : constant Version_32 := 16#ec4d5631#;
   pragma Export (C, u00078, "system__case_utilB");
   u00079 : constant Version_32 := 16#0d75376c#;
   pragma Export (C, u00079, "system__case_utilS");
   u00080 : constant Version_32 := 16#2a8e89ad#;
   pragma Export (C, u00080, "system__stringsB");
   u00081 : constant Version_32 := 16#52b6adad#;
   pragma Export (C, u00081, "system__stringsS");
   u00082 : constant Version_32 := 16#769e25e6#;
   pragma Export (C, u00082, "interfaces__cB");
   u00083 : constant Version_32 := 16#467817d8#;
   pragma Export (C, u00083, "interfaces__cS");
   u00084 : constant Version_32 := 16#40d3d043#;
   pragma Export (C, u00084, "system__object_readerB");
   u00085 : constant Version_32 := 16#ec38df4d#;
   pragma Export (C, u00085, "system__object_readerS");
   u00086 : constant Version_32 := 16#1a74a354#;
   pragma Export (C, u00086, "system__val_lliB");
   u00087 : constant Version_32 := 16#a8846798#;
   pragma Export (C, u00087, "system__val_lliS");
   u00088 : constant Version_32 := 16#afdbf393#;
   pragma Export (C, u00088, "system__val_lluB");
   u00089 : constant Version_32 := 16#7cd4aac9#;
   pragma Export (C, u00089, "system__val_lluS");
   u00090 : constant Version_32 := 16#269742a9#;
   pragma Export (C, u00090, "system__val_utilB");
   u00091 : constant Version_32 := 16#9e0037c6#;
   pragma Export (C, u00091, "system__val_utilS");
   u00092 : constant Version_32 := 16#d7bf3f29#;
   pragma Export (C, u00092, "system__exception_tracesB");
   u00093 : constant Version_32 := 16#167fa1a2#;
   pragma Export (C, u00093, "system__exception_tracesS");
   u00094 : constant Version_32 := 16#d178f226#;
   pragma Export (C, u00094, "system__win32S");
   u00095 : constant Version_32 := 16#8c33a517#;
   pragma Export (C, u00095, "system__wch_conB");
   u00096 : constant Version_32 := 16#29dda3ea#;
   pragma Export (C, u00096, "system__wch_conS");
   u00097 : constant Version_32 := 16#9721e840#;
   pragma Export (C, u00097, "system__wch_stwB");
   u00098 : constant Version_32 := 16#04cc8feb#;
   pragma Export (C, u00098, "system__wch_stwS");
   u00099 : constant Version_32 := 16#a831679c#;
   pragma Export (C, u00099, "system__wch_cnvB");
   u00100 : constant Version_32 := 16#266a1919#;
   pragma Export (C, u00100, "system__wch_cnvS");
   u00101 : constant Version_32 := 16#ece6fdb6#;
   pragma Export (C, u00101, "system__wch_jisB");
   u00102 : constant Version_32 := 16#a61a0038#;
   pragma Export (C, u00102, "system__wch_jisS");
   u00103 : constant Version_32 := 16#796f31f1#;
   pragma Export (C, u00103, "system__htableB");
   u00104 : constant Version_32 := 16#b66232d2#;
   pragma Export (C, u00104, "system__htableS");
   u00105 : constant Version_32 := 16#089f5cd0#;
   pragma Export (C, u00105, "system__string_hashB");
   u00106 : constant Version_32 := 16#143c59ac#;
   pragma Export (C, u00106, "system__string_hashS");
   u00107 : constant Version_32 := 16#e9d6512d#;
   pragma Export (C, u00107, "aunit__test_filtersB");
   u00108 : constant Version_32 := 16#9a67cba8#;
   pragma Export (C, u00108, "aunit__test_filtersS");
   u00109 : constant Version_32 := 16#6e9501f4#;
   pragma Export (C, u00109, "aunit__simple_test_casesB");
   u00110 : constant Version_32 := 16#f9679d50#;
   pragma Export (C, u00110, "aunit__simple_test_casesS");
   u00111 : constant Version_32 := 16#8872fb1a#;
   pragma Export (C, u00111, "aunit__assertionsB");
   u00112 : constant Version_32 := 16#3b7b7e5b#;
   pragma Export (C, u00112, "aunit__assertionsS");
   u00113 : constant Version_32 := 16#2731b3e7#;
   pragma Export (C, u00113, "ada_containers__aunit_listsB");
   u00114 : constant Version_32 := 16#c8d9569a#;
   pragma Export (C, u00114, "ada_containers__aunit_listsS");
   u00115 : constant Version_32 := 16#11329e00#;
   pragma Export (C, u00115, "ada_containersS");
   u00116 : constant Version_32 := 16#9b1c7ff2#;
   pragma Export (C, u00116, "aunit__memory__utilsB");
   u00117 : constant Version_32 := 16#fb2f6c57#;
   pragma Export (C, u00117, "aunit__memory__utilsS");
   u00118 : constant Version_32 := 16#01adf261#;
   pragma Export (C, u00118, "aunit__test_resultsB");
   u00119 : constant Version_32 := 16#1087836e#;
   pragma Export (C, u00119, "aunit__test_resultsS");
   u00120 : constant Version_32 := 16#9df5edcf#;
   pragma Export (C, u00120, "aunit__time_measureB");
   u00121 : constant Version_32 := 16#e95c19f5#;
   pragma Export (C, u00121, "aunit__time_measureS");
   u00122 : constant Version_32 := 16#b8719323#;
   pragma Export (C, u00122, "ada__calendarB");
   u00123 : constant Version_32 := 16#41508869#;
   pragma Export (C, u00123, "ada__calendarS");
   u00124 : constant Version_32 := 16#24ec69e6#;
   pragma Export (C, u00124, "system__os_primitivesB");
   u00125 : constant Version_32 := 16#355de4ce#;
   pragma Export (C, u00125, "system__os_primitivesS");
   u00126 : constant Version_32 := 16#05c60a38#;
   pragma Export (C, u00126, "system__task_lockB");
   u00127 : constant Version_32 := 16#532ab656#;
   pragma Export (C, u00127, "system__task_lockS");
   u00128 : constant Version_32 := 16#1a9147da#;
   pragma Export (C, u00128, "system__win32__extS");
   u00129 : constant Version_32 := 16#6b6cea8f#;
   pragma Export (C, u00129, "aunit__testsS");
   u00130 : constant Version_32 := 16#d96e3c40#;
   pragma Export (C, u00130, "system__finalization_mastersB");
   u00131 : constant Version_32 := 16#695cb8f2#;
   pragma Export (C, u00131, "system__finalization_mastersS");
   u00132 : constant Version_32 := 16#7268f812#;
   pragma Export (C, u00132, "system__img_boolB");
   u00133 : constant Version_32 := 16#c779f0d3#;
   pragma Export (C, u00133, "system__img_boolS");
   u00134 : constant Version_32 := 16#86c56e5a#;
   pragma Export (C, u00134, "ada__finalizationS");
   u00135 : constant Version_32 := 16#10558b11#;
   pragma Export (C, u00135, "ada__streamsB");
   u00136 : constant Version_32 := 16#67e31212#;
   pragma Export (C, u00136, "ada__streamsS");
   u00137 : constant Version_32 := 16#95817ed8#;
   pragma Export (C, u00137, "system__finalization_rootB");
   u00138 : constant Version_32 := 16#7d52f2a8#;
   pragma Export (C, u00138, "system__finalization_rootS");
   u00139 : constant Version_32 := 16#6d4d969a#;
   pragma Export (C, u00139, "system__storage_poolsB");
   u00140 : constant Version_32 := 16#114d1f95#;
   pragma Export (C, u00140, "system__storage_poolsS");
   u00141 : constant Version_32 := 16#5a895de2#;
   pragma Export (C, u00141, "system__pool_globalB");
   u00142 : constant Version_32 := 16#7141203e#;
   pragma Export (C, u00142, "system__pool_globalS");
   u00143 : constant Version_32 := 16#5dc07a5a#;
   pragma Export (C, u00143, "system__memoryB");
   u00144 : constant Version_32 := 16#6bdde70c#;
   pragma Export (C, u00144, "system__memoryS");
   u00145 : constant Version_32 := 16#fd2ad2f1#;
   pragma Export (C, u00145, "gnatS");
   u00146 : constant Version_32 := 16#d43725a0#;
   pragma Export (C, u00146, "gnat__source_infoS");
   u00147 : constant Version_32 := 16#acb182ec#;
   pragma Export (C, u00147, "gnat__tracebackB");
   u00148 : constant Version_32 := 16#1804e2ba#;
   pragma Export (C, u00148, "gnat__tracebackS");
   u00149 : constant Version_32 := 16#90e9f8be#;
   pragma Export (C, u00149, "gnat__traceback__symbolicS");
   u00150 : constant Version_32 := 16#17d955ab#;
   pragma Export (C, u00150, "aunit__reporterS");
   u00151 : constant Version_32 := 16#1c0d4e63#;
   pragma Export (C, u00151, "aunit__reporter__gnattestB");
   u00152 : constant Version_32 := 16#9cd34a09#;
   pragma Export (C, u00152, "aunit__reporter__gnattestS");
   u00153 : constant Version_32 := 16#b48102f5#;
   pragma Export (C, u00153, "gnat__ioB");
   u00154 : constant Version_32 := 16#6227e843#;
   pragma Export (C, u00154, "gnat__ioS");
   u00155 : constant Version_32 := 16#b602a99c#;
   pragma Export (C, u00155, "system__exn_intB");
   u00156 : constant Version_32 := 16#702c9d64#;
   pragma Export (C, u00156, "system__exn_intS");
   u00157 : constant Version_32 := 16#e11af2d7#;
   pragma Export (C, u00157, "aunit__runB");
   u00158 : constant Version_32 := 16#4b2a8016#;
   pragma Export (C, u00158, "aunit__runS");
   u00159 : constant Version_32 := 16#276e73f2#;
   pragma Export (C, u00159, "aunit__test_suitesB");
   u00160 : constant Version_32 := 16#f3c7e671#;
   pragma Export (C, u00160, "aunit__test_suitesS");
   u00161 : constant Version_32 := 16#9c506c0f#;
   pragma Export (C, u00161, "gnattest_generatedS");
   u00162 : constant Version_32 := 16#d08ce6d9#;
   pragma Export (C, u00162, "sorting__test_data__tests__suiteB");
   u00163 : constant Version_32 := 16#acae7d52#;
   pragma Export (C, u00163, "sorting__test_data__tests__suiteS");
   u00164 : constant Version_32 := 16#78683681#;
   pragma Export (C, u00164, "aunit__test_callerB");
   u00165 : constant Version_32 := 16#581d22b8#;
   pragma Export (C, u00165, "aunit__test_callerS");
   u00166 : constant Version_32 := 16#269b1972#;
   pragma Export (C, u00166, "aunit__test_fixturesB");
   u00167 : constant Version_32 := 16#3b99f1a5#;
   pragma Export (C, u00167, "aunit__test_fixturesS");
   u00168 : constant Version_32 := 16#23fde4de#;
   pragma Export (C, u00168, "sorting__test_data__testsB");
   u00169 : constant Version_32 := 16#894d275e#;
   pragma Export (C, u00169, "sorting__test_data__testsS");
   u00170 : constant Version_32 := 16#1a1c34b7#;
   pragma Export (C, u00170, "sorting__test_dataB");
   u00171 : constant Version_32 := 16#56e9428e#;
   pragma Export (C, u00171, "sorting__test_dataS");
   u00172 : constant Version_32 := 16#e4a07d1a#;
   pragma Export (C, u00172, "sortingB");
   u00173 : constant Version_32 := 16#ef1505ad#;
   pragma Export (C, u00173, "sortingS");
   u00174 : constant Version_32 := 16#52f1910f#;
   pragma Export (C, u00174, "system__assertionsB");
   u00175 : constant Version_32 := 16#ff2dadac#;
   pragma Export (C, u00175, "system__assertionsS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.characters%s
   --  ada.characters.latin_1%s
   --  gnat%s
   --  gnat.io%s
   --  gnat.io%b
   --  gnat.source_info%s
   --  interfaces%s
   --  system%s
   --  system.exn_int%s
   --  system.exn_int%b
   --  system.img_bool%s
   --  system.img_bool%b
   --  system.img_int%s
   --  system.img_int%b
   --  system.io%s
   --  system.io%b
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%s
   --  system.htable%b
   --  system.strings%s
   --  system.strings%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  system.unsigned_types%s
   --  system.img_uns%s
   --  system.img_uns%b
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%s
   --  system.wch_cnv%b
   --  system.traceback%s
   --  system.traceback%b
   --  system.case_util%s
   --  system.standard_library%s
   --  system.exception_traces%s
   --  ada.exceptions%s
   --  system.wch_stw%s
   --  system.val_util%s
   --  system.val_llu%s
   --  system.val_lli%s
   --  system.os_lib%s
   --  system.bit_ops%s
   --  ada.characters.handling%s
   --  ada.exceptions.traceback%s
   --  system.secondary_stack%s
   --  system.case_util%b
   --  system.address_image%s
   --  system.bounded_strings%s
   --  system.soft_links%s
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.io_exceptions%s
   --  ada.strings%s
   --  ada.containers%s
   --  system.exceptions%s
   --  system.exceptions%b
   --  ada.exceptions.last_chance_handler%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.exception_traces%b
   --  system.memory%s
   --  system.memory%b
   --  system.wch_stw%b
   --  system.val_util%b
   --  system.val_llu%b
   --  system.val_lli%b
   --  interfaces.c%s
   --  system.win32%s
   --  system.mmap%s
   --  system.mmap.os_interface%s
   --  system.mmap.os_interface%b
   --  system.mmap%b
   --  system.os_lib%b
   --  system.bit_ops%b
   --  ada.strings.maps%s
   --  ada.strings.maps.constants%s
   --  ada.characters.handling%b
   --  ada.exceptions.traceback%b
   --  system.exceptions.machine%s
   --  system.exceptions.machine%b
   --  system.secondary_stack%b
   --  system.address_image%b
   --  system.bounded_strings%b
   --  system.soft_links.initialize%s
   --  system.soft_links.initialize%b
   --  system.soft_links%b
   --  ada.exceptions.last_chance_handler%b
   --  system.standard_library%b
   --  system.object_reader%s
   --  system.dwarf_lines%s
   --  system.dwarf_lines%b
   --  interfaces.c%b
   --  ada.strings.maps%b
   --  system.traceback.symbolic%s
   --  system.traceback.symbolic%b
   --  ada.exceptions%b
   --  system.object_reader%b
   --  ada.tags%s
   --  ada.tags%b
   --  ada.streams%s
   --  ada.streams%b
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  ada.finalization%s
   --  system.storage_pools%s
   --  system.storage_pools%b
   --  system.finalization_masters%s
   --  system.finalization_masters%b
   --  system.task_lock%s
   --  system.task_lock%b
   --  system.win32.ext%s
   --  system.os_primitives%s
   --  system.os_primitives%b
   --  ada.calendar%s
   --  ada.calendar%b
   --  gnat.traceback%s
   --  gnat.traceback%b
   --  gnat.traceback.symbolic%s
   --  system.assertions%s
   --  system.assertions%b
   --  system.pool_global%s
   --  system.pool_global%b
   --  ada_containers%s
   --  aunit%s
   --  aunit.memory%s
   --  aunit.memory%b
   --  aunit%b
   --  aunit.memory.utils%s
   --  aunit.memory.utils%b
   --  ada_containers.aunit_lists%s
   --  ada_containers.aunit_lists%b
   --  aunit.tests%s
   --  aunit.time_measure%s
   --  aunit.time_measure%b
   --  aunit.test_results%s
   --  aunit.test_results%b
   --  aunit.assertions%s
   --  aunit.assertions%b
   --  aunit.test_filters%s
   --  aunit.options%s
   --  aunit.simple_test_cases%s
   --  aunit.simple_test_cases%b
   --  aunit.test_filters%b
   --  aunit.reporter%s
   --  aunit.reporter.gnattest%s
   --  aunit.reporter.gnattest%b
   --  aunit.test_fixtures%s
   --  aunit.test_fixtures%b
   --  aunit.test_caller%s
   --  aunit.test_caller%b
   --  aunit.test_suites%s
   --  aunit.test_suites%b
   --  aunit.run%s
   --  aunit.run%b
   --  gnattest_generated%s
   --  sorting%s
   --  sorting%b
   --  sorting.test_data%s
   --  sorting.test_data%b
   --  sorting.test_data.tests%s
   --  sorting.test_data.tests%b
   --  sorting.test_data.tests.suite%s
   --  sorting.test_data.tests.suite%b
   --  sorting.test_data.tests.suite.test_runner%b
   --  END ELABORATION ORDER

end ada_main;
