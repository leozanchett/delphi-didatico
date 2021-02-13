unit einterface.Model.Interfaces;

interface

type
    TEvDisplay = Procedure(_AValue: String) of Object;

    IPessoa = interface
      ['{8EF1C572-0691-4FBC-B3C7-2AD65AAB7686}']
      function Nome(_AValue: String): IPessoa;
      function Sobrenome(_AValue: String): IPessoa;
      function NomeCompleto: IPessoa;
      function Display(_Avalue: TEvDisplay): Ipessoa;
    end;

    IPessoaFactory = interface
      ['{9CB1CCE4-F255-4BAF-8497-4F20EB7CC483}']
      function PessoaFisica: iPessoa;
      function PessoaJuridica: iPessoa;
    end;

implementation

end.
