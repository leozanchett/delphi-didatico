unit ClassDivisao;

interface

uses
  InterfaceCalculadora;
type
  TDivisao = class ( TInterfacedObject, ICalculadora )
  private
     function getResult : double;
     procedure setResult (_AValue: double);
  protected
      procedure calculate ( x, y : double );
      property Resultado: double read getResult write setResult;
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
   Result := Resultado;
end;

procedure TDivisao.setResult(_AValue: double);
begin
   Resultado := _AValue;
end;

end.
