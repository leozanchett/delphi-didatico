unit ClassPerson;

interface

uses
  ClassDates;

type
  TPerson = class
    private
      FName: String;
      FBirthday: TDate;
    public
      constructor Create(_AName: String);
      destructor Destroy; override;
      function Info: String;
  end;

implementation

{ TPerson }

constructor TPerson.Create(_AName: String);
begin
   FName := _AName;
   FBirthday := TDate.Create;
end;

destructor TPerson.Destroy;
begin
  FBirthday.free;
  inherited;
end;

function TPerson.Info: String;
begin
   Result := FName + ': '+ FBirthday.GetText;
end;

end.
