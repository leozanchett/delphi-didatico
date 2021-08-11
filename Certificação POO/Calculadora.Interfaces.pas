unit Calculadora.Interfaces;

interface

type

  iOperacoes = interface
    ['{4ED7C062-1DC0-49D9-A5FB-E65631572410}']
    function Executar: String;
  end;

  iCalculadora = interface
    ['{B0F31CF0-A877-41EE-A3A6-4C0051009889}']
    function Add(const _AValue: String): iCalculadora; overload;
    function Add(const _AValue: Integer): iCalculadora; overload;
    function Add(const _AValue: Currency): iCalculadora; overload;
    function Soma: iOperacoes;
    function Subtrair: iOperacoes;
    function Dividir: iOperacoes;
    function Multiplicar: iOperacoes;
  end;

implementation

end.
