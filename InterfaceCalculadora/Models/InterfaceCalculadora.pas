unit InterfaceCalculadora;

interface

type
  ICalculadora = Interface
     function getResult : double;
     procedure setResult( _AValue : double );
     procedure calculate( x, y : double );
     property Resultado : double read getResult write setResult;
  end;

implementation

end.
