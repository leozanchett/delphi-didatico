unit einterface.Model.Pessoa.Factory;

interface

uses
  einterface.Model.Interfaces;

type
  TModelPessoaFactory = class(TInterfacedObject, IPessoaFactory)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New: IPessoaFactory;
      function PessoaFisica: IPessoa;
      function PessoaJuridica: IPessoa;
  end;

implementation

uses
  einterface.Model.PessoaFisica, einterface.Model.PessoaJuridica;

{ TModelPessoaFactory }

constructor TModelPessoaFactory.Create;
begin

end;

destructor TModelPessoaFactory.Destroy;
begin

  inherited;
end;

class function TModelPessoaFactory.New: IPessoaFactory;
begin
  Result := Self.Create;
end;

function TModelPessoaFactory.PessoaFisica: IPessoa;
begin
  result := TModelPessoaFisica.New;
end;

function TModelPessoaFactory.PessoaJuridica: IPessoa;
begin
  result := TModelPessoaJuridica.New;
end;

end.
