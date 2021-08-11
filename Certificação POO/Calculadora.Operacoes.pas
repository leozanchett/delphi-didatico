unit Calculadora.Operacoes;

interface

uses
  Calculadora.Interfaces, System.Generics.Collections;

type
  TOperacoes = class(TInterfacedObject, iOperacoes)
    protected
      FLista : TList<Double>;
    public
      function Executar: String; virtual;
  end;

implementation

{ TOperacoes }


{ TOperacoes }

function TOperacoes.Executar: String;
begin
  FLista.Clear;
end;

end.
