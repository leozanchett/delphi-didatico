unit ClassDivisao;

interface

uses
  InterfaceCalculadora;
type
  TDivisao = class ( TInterfacedObject, ICalculadora )
  private
     FResultado: Double;
     function getResult : double;
     procedure setResult (_AValue: double);
     procedure calculate ( x, y : double );

  end;

implementation

uses
  System.SysUtils;

{ TDivisao }

procedure TDivisao.calculate(x, y: double);
begin
  if(y = 0)then begin
      setResult(0);
      raise exception.Create('Divisão por zero');
  end;
  setResult(x / y);
end;

function TDivisao.getResult: double;
begin
   Result := FResultado;
end;

procedure TDivisao.setResult(_AValue: double);
begin
   FResultado := _AValue;
end;

end.
