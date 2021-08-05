unit model.interfaces;

interface

type
  iCartao = interface;
  iCrediario = interface;

  iPagamento = interface
    ['{A0547596-A253-456E-BD46-68E6DBCEFA4D}']
    function Valor(const _AValue: Currency): iPagamento; overload;
    function Valor: Currency; overload;
    function Total: Currency;
    function Cartao: iCartao;
    function Crediario: iCrediario;
  end;

  iRegras = interface
    ['{A749422C-124C-4703-B9B8-01C8B1130C20}']
    function Total: Currency;
  end;

  iCartao = interface
    ['{EFFE554F-4EE3-4870-8D55-8DDE2586F229}']
    function &End: iPagamento;
  end;

  iCrediario = interface
    ['{B967CD72-3B0D-49DF-A7C2-3C18E6AACB4A}']
    function Juros(const _AValue: boolean): iCrediario; overload;
    function Juros: boolean; overload;
    function &End: iPagamento;
  end;

implementation

end.
