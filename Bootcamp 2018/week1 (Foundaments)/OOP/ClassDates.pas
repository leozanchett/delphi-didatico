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
      function GetText: string; virtual;
      procedure Increase(_ANumberOfDays: Integer);
      procedure Decrease(_ANumberOfDays: Integer);
  end;

  TNewDate = class(TDate)
  public
    function GetText: string; override;
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

procedure TDate.Decrease(_ANumberOfDays: Integer);
begin
  FDate := FDate - _ANumberOfDays;
end;

function TDate.GetText: string;
begin

end;

procedure TDate.Increase(_ANumberOfDays: Integer);
begin
   FDate := FDate + _ANumberOfDays;
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

{ TNewDate }

function TNewDate.GetText: string;
begin
  Result := FormatDateTime('dddddd', FDate);
end;

end.
