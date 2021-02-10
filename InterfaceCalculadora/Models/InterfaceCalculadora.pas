unit InterfaceCalculadora;

interface

type
  ICalculadora = Interface
     function getResult : double;
     procedure setResult ( value : double );
     procedure calculate ( x, y : double );
     property result : double read getResult write setResult;
  end;

implementation

end.
