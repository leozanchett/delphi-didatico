unit ccontroller.interfaces;

interface

uses
  model.interfaces;

  type
    TTypePessoa = (tpFisica, tpJuridica);


    iControllerPessoa = interface
      ['{05F18D4C-3F4A-45A4-9352-3F94052CC321}']
      function Pessoa(_ATipoPessoa: TTypePessoa): iPessoa;
    end;



implementation

end.
