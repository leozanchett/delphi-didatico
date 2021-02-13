unit eInterface.Controller.Interfaces;

interface

uses
  einterface.Model.Interfaces;

type
  TTypePessoa = (tpFisica, tpJuridica);

type
  iControllerPessoa = interface
     ['{56A26723-138B-4892-A457-DB3E1CF217D6}']
     function Pessoa(_AValue: TTypePessoa): IPessoa;
  end;
implementation

end.
