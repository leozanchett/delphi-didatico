unit ClassDates;

interface

uses
  DateUtils;

type
  TDate = class
    private
      FDate : TDateTime;
    public
      constructor Create; overload;
      constructor Create(Month, Day, Year: Integer); overload;
      procedure SetValue(Month, Day, Year: Integer); overload;
      procedure SetValue(NewDate: TDateTime); overload;
      function LeapYear: Boolean;
      function GetText: string;
      procedure Increase;
  end;

implementation

uses
  System.SysUtils;

{ TDate }

constructor TDate.Create;
begin
   FDate := Today;
end;

constructor TDate.Create(Month, Day, Year: Integer);
begin
   FDate := EncodeDate(Year, Month, Day);
end;

function TDate.GetText: string;
begin
   Result := DateToStr(FDate);
end;

procedure TDate.Increase;
begin
   FDate := FDate + 1;
end;

function TDate.LeapYear: Boolean;
begin
   Result := IsLeapYear(YearOf(FDate));
end;

procedure TDate.SetValue(NewDate: TDateTime);
begin
   FDate := NewDate;
end;

procedure TDate.SetValue(Month, Day, Year: Integer);
begin
   FDate := EncodeDate(Year, Month, Year);
end;

end.
