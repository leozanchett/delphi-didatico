program Project1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
   System.SysUtils,
   ClassShow in '..\05 - Arrays and Records\ClassShow.pas';

type
   TPointerToInt = ^Integer;

var
   P: ^Integer;
   X: Integer;

begin
   ReportMemoryLeaksOnShutdown := True;
   try
      X := 10;
      P := @X;
      // change the value of X using the pointer
      P^ := 20;
      TShow.Show('X: ' + X.ToString);
      TShow.Show('P^: ' + P^.ToString);
      TShow.Show('X Address: ' + UIntPtr(X).ToHexString(8));
      TShow.Show('P Address: ' + UIntPtr(P).ToHexString(8), True);
      // initialization
      New(P);
      // operations
      P^ := 20;
      TShow.Show(P^.ToString, true);
      // termination
      Dispose(P);
   except
      on E: Exception do
         Writeln(E.ClassName, ': ', E.Message);
   end;

end.
