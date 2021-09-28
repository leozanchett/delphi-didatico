program Records;

{$APPTYPE CONSOLE}
{$R *.res}

uses
   System.SysUtils, ClassShow;

type
   TMyDate = record
      Year: Integer;
      Month: Byte;
      Day: Byte;
   end;

type
   TMyRecord = record
   strict private
      Name: string;
      Value: Integer;
      SomeChar: Char;
   public
      procedure Print;
      procedure SetValue(NewString: string);
      procedure Init(NewValue: Integer);
   end;

var
   BirthDay: TMyDate;
   DateList: array of TMyDate;
   i: Integer;
   AMeuRecord: TMyRecord;
   
{ TMyRecord }

procedure TMyRecord.Init(NewValue: Integer);
begin
   Value := NewValue;
end;

procedure TMyRecord.Print;
begin
   TShow.Show('Value: ' + i.ToString +' Name: '+Name, True);
end;

procedure TMyRecord.SetValue(NewString: string);
begin
   Name := NewString;
end;

begin
   try
      SetLength(DateList, 5);
      for i := Low(DateList) to High(DateList) do
      begin
         DateList[i].Year := 2000 + Random(50);
         DateList[i].Month := 1 + Random(12);
      end;
      for i := Low(DateList) to High(DateList) do
      begin
         TShow.Show(concat('Contador: ', IntToStr(i), ' Ano: ', DateList[i].Year.ToString), true);
      end;
      TShow.Separador;
      AMeuRecord.Init(29);
      AMeuRecord.SetValue('Leo');
      AMeuRecord.Print;
   except
      on E: Exception do
         Writeln(E.ClassName, ': ', E.Message);
   end;

end.
