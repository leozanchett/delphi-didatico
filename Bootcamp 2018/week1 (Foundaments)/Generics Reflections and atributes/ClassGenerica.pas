unit ClassGenerica;

interface

type
  TKeyValue<T> = class
    private
      FKey: String;
      FValue: T;
      procedure SetKey(const _AValue: String);
      procedure SetValue(const _AValue: T);
    public
      procedure DoSomething;
      property Key: String read FKey write SetKey;
      property Value: T read FValue write SetValue;
  end;

implementation

{ TKeyValue<T> }

procedure TKeyValue<T>.DoSomething;
begin
end;

procedure TKeyValue<T>.SetKey(const _AValue: String);
begin
  FKey := _AValue;
end;

procedure TKeyValue<T>.SetValue(const _AValue: T);
begin
  FValue := _AValue;
end;

end.
