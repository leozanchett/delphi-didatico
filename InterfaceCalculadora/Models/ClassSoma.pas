unit ClassSoma;

interface

uses
  InterfaceCalculadora;
type
  TSoma = class(TInterfacedObject, ICalculadora )
  private
      FResult: Double;
      procedure setResult(_AValue: double);
  protected
      function getResult : double;
      procedure calculate( x, y : double );
  end;
implementation

{ TSoma }

procedure TSoma.calculate(x, y: double);
begin
   setResult( x + y );
end;

function TSoma.getResult: double;
begin
  result := FResult;
end;


procedure TSoma.setResult(_AValue: double);
begin
   FResult := _AValue;
end;

end.
