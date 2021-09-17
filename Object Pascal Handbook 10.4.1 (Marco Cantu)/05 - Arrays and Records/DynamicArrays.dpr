program DynamicArrays;

{$APPTYPE CONSOLE}
{$R *.res}

uses
   System.SysUtils,
   ClassShow in 'ClassShow.pas';

type
   TIntegersArray = array of Integer;

function SumAll (const Args: array of const): Extended;
var
 I: Integer;
begin
   Result := 0;
   for I := Low(Args) to High (Args) do
   case Args [I].VType of
      vtInteger: Result := Result + Args [I].VInteger;
      vtBoolean: begin 
         if Args [I].VBoolean then
            Result := Result + 1;
      end;
      vtExtended: Result := Result + Args [I].VExtended^;
      vtWideChar: Result := Result + Ord (Args [I].VWideChar);
      vtCurrency: Result := Result + Args [I].VCurrency^;
   end; // case
end ;

var
   IntArray1: TIntegersArray;
   IntArray2: TIntegersArray;
   IntArray3: TIntegersArray;
   I, Y, Total: Integer;
   DI: array of Integer;
   X: Extended;
begin
   SetLength(IntArray1, 20);
   try
      for I := Low(IntArray1) to High(IntArray1) do
      begin
         IntArray1[I] := I;
         TShow.Show(IntToStr(IntArray1[I]), false);
      end;
      TShow.PulaLinha;
      TShow.Separador;
//      TShow.Auwait;
      Total := 0;
      for I := Low(IntArray1) to High(IntArray1) do
      begin
         Inc(Total, IntArray1[I]);
         TShow.Show(I.ToString + ': ' + IntArray1[I].ToString);
         TShow.Show('Valor total: ' + Total.ToString);
      end;
      TShow.Separador;
      TShow.Show('Average: ' + (Total / Length(IntArray1)).ToString);
      TShow.Separador;
//      TShow.Auwait;
      TShow.PulaLinha;
      // alias
      IntArray2 := IntArray1;
      // cópia separada
      IntArray3 := Copy(IntArray1, Low(IntArray1), Length(IntArray1));
      // o que for modificado no array2 também se aplica no array1 e vice-versa pois os mesmos compartilham o mesmo end. de memória.
      IntArray2[1] := 100;
      // o que for modificado no array 3 é único para o mesmo.
      IntArray3[2] := 99;
      TShow.Show(Format('[%d] %d -- %d -- %d', [1, IntArray1[1], IntArray2[1], IntArray3[1]]));
      TShow.Show(Format('[%d] %d -- %d -- %d', [2, IntArray1[2], IntArray2[2], IntArray3[2]]));
//      TShow.Auwait;
      IntArray1[3] := 66;
      TShow.PulaLinha;
      TShow.Show(Format('Array1 e 2 = %d | Array3 = %d', [IntArray2[3], IntArray3[3]])); 
//      TShow.Auwait; 
      TShow.Separador;
      DI := [1, 2, 3]; // initialization
      DI := DI + DI; // concatenation
      DI := DI + [4, 5]; // mixed concatenation  
      for I in DI do begin
         TShow.Show(I.ToString, false);
      end;          TShow.PulaLinha;      TShow.Auwait;        DI := [1, 2, 3, 4, 5, 6];      Insert ([8, 9], DI, 4); // no index 4 insere os valores [8,9] // [1,2,3,4,8,9,5,6]
      Delete (DI, 2, 1); // no index 2 deleta 1 registro [1,2,4,8,9,5,6]       TShow.PulaLinha;
      for I in DI do begin
         TShow.Show(I.ToString, false);
      end;        
      TShow.Auwait; 
      Y := 10;
      // array genérico.
      X := SumAll ([Y * Y, 'k', True, 10.34]); 
      TShow.Show(X.ToString); 
      TShow.Separador;
      TShow.Auwait;
   except
      on E: Exception do
         Writeln(E.ClassName, ': ', E.Message);
   end;

end.
