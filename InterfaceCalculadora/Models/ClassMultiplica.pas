unit ClassMultiplica;

interface

uses
  InterfaceCalculadora;

type
  TMultiplica = class(TInterfacedObject, iCalculadora)
  private
    FResultado: Double;
    procedure calculate(x: Double; y: Double);
    function getResult: Double;
    procedure setResult(_AValue: Double);
  end;

implementation

{ TMultiplica }

procedure TMultiplica.calculate(x, y: Double);
begin
  setResult(x*y);
end;

function TMultiplica.getResult: Double;
begin
  Result := FResultado;
end;

procedure TMultiplica.setResult(_AValue: Double);
begin
  FResultado := _AValue;
end;

end.
