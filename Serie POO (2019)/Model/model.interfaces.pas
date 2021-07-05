unit model.interfaces;

interface
  type
    TEventoDisplay = procedure(Value: String) of Object;

  type
    iPessoa = interface
      ['{C6401846-BDAA-4107-9EEA-7495D87D4EFB}']
      // setter
      function Nome(_Avalue: String): iPessoa; overload;
      // get
      function Nome: String; overload;
      function Sobrenome(_AValue: String): iPessoa;
      function NomeCompleto: iPessoa;
      function Display(_AValue: TEventoDisplay): iPessoa;
    end;

    iPessoaFactory = interface
      ['{3D756F49-DDD7-469F-95C4-1AEED2613D36}']
      function PessoaFisica: iPessoa;
      function PessoaJuridica: iPessoa;
    end;


implementation

end.
