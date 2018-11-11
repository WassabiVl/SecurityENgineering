(* This is the experimental test script for testing tg *)

fail_handling continue

  (* Another comment *)

context PROCEDURE Subject(X: CARDINAL): CARDINAL;
        BEGIN RETURN X*X; END Subject;

define GlobVar: INTEGER;

code WriteString("Am Anfang"); WriteLn;
     GlobVar := 0;
***** (1) X = 1
define Result : CARDINAL;
prepare Result := 0;
test   Result := Subject(1);  (* erster Test *)
       GlobVar := 1;
pass   Result = 1

***** (2) X = 2
define Result : CARDINAL;
test   Result := Subject(2);
pass   (Result = 4) AND (GlobVar=1)

code 	WriteString("Hallo");
	WriteLn;	
        GlobVar := 2;

***** (3) X = 3
define Result : CARDINAL;    (* zweiter Test *)
prepare GlobVar := 3;        (* dritter Test *)
test   Result := Subject(3);
pass   (Result = 9) AND (GlobVar = 3)

code    WriteString("Am Ende");
        WriteLn;
        


