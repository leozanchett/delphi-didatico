unit ClasseFornecedor;

interface

uses
  ClassePessoa;
Type
  TFornecedor = class(TPessoa)
    Fantasia: String;
    function Tipo: String; override;
end;

implementation

{ TFornecedor }

function TFornecedor.Tipo: String;
begin
  result := 'Tipo Fornecedor';
end;

end.
