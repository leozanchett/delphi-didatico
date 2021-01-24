unit ClasseCliente;

interface

uses
  ClassePessoa;
Type
  TCliente = class(TPessoa)
    Nome: String;
    function Tipo: String; override;
  end;

implementation

{ TCliente }

function TCliente.Tipo: String;
begin
  result := 'Tipo cliente';
end;

end.
