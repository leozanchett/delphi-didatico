unit DUp20.Controller.Interfaces;

interface

uses
  DUp20.Model.Entidades.Interfaces;

type

  iController = interface
    ['{98311B51-7289-4FDB-8221-2AF54B789AF3}']
    function Entidades : iModelEntidadeFactory;
  end;
implementation

end.
