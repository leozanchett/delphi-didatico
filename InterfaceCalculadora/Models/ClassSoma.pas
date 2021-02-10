unit ClassSoma;

interface

uses
  InterfaceCalculadora;
type
  TSoma = class(TInterfacedObject, ICalculadora )
  private
      procedure setResult(_AValue: double);
  protected
      function getResult : double;
      procedure calculate ( x, y : double );
      property Resultado: Double read getResult write setResult;
  end;
implementation

{ TSoma }

procedure TSoma.calculate(x, y: double);
begin
   setResult( x + y );
end;

function TSoma.getResult: double;
begin
  result := Resultado;
end;

procedure TSoma.setResult(_AValue: double);
begin
   Resultado := _AValue;
end;

end.
