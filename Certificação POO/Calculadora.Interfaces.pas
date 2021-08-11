unit Calculadora.Interfaces;

interface

type

  iOperacoes = interface
    ['{4ED7C062-1DC0-49D9-A5FB-E65631572410}']
    function Operacao(const _ANum1, _ANum2: Double): Double; overload;
    function Operacao(const _ANum1, _ANum2: String): String; overload;
  end;

  iCalculadora = interface
    ['{B0F31CF0-A877-41EE-A3A6-4C0051009889}']
    function Soma: iOperacoes;
    function Subtrair: iOperacoes;
    function Dividir: iOperacoes;
    function Multiplicar: iOperacoes;
  end;

implementation

end.
