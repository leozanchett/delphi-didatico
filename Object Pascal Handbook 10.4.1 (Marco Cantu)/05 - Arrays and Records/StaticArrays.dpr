program StaticArrays;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  ClassShow in 'ClassShow.pas';

type
   // Static Array
   TDayTemperatures = array [1 .. 24] of Integer;
   // Multi-Dimensional Static Arrays
   TAllMonthTemps = array [1 .. 24, 1 .. 31] of Integer;
   TAllYearTemps = array [1 .. 24, 1 .. 31, 1 .. 12] of Integer;
   TMonthTemps = array [1 .. 31] of TDayTemperatures;
   TYearTemps = array [1 .. 12] of TMonthTemps;

var
   I: Integer;
   Total: Integer;
   DayTemp1: TDayTemperatures;
   Month1: TMonthTemps;
   Year1: TYearTemps;

begin
   try
      Total := 0;
      for I := Low(DayTemp1) to High(DayTemp1) do
         Inc(Total, DayTemp1[I]);
      TShow.Show((Total / Length(DayTemp1)).ToString);
      Readln;
      Month1[30][14] := 44;
      Month1[30, 13] := 55; // day, hour
      Year1[8, 30, 13] := 33; // month, day, hour
      Writeln(Month1[30][14]);
      Writeln(Month1[30][13]);
      Writeln(Year1[8, 30, 13]);
      Readln;
   except
      on E: Exception do
         Writeln(E.ClassName, ': ', E.Message);
   end;

end.
