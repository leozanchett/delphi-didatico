unit model.pessoa.factory;

interface

uses
  model.interfaces;

type
  TModelPessoaFactory = class(TInterfacedObject, iPessoaFactory)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iPessoaFactory;
      function PessoaFisica: iPessoa;
      function PessoaJuridica: iPessoa;
  end;

implementation

uses
  model.pessoaFisica, model.pessoaJuridica;


{ TMinhaClasse }

constructor TModelPessoaFactory.Create;
begin

end;

destructor TModelPessoaFactory.Destroy;
begin

  inherited;
end;

class function TModelPessoaFactory.New: iPessoaFactory;
begin
   Result := self.Create;
end;

function TModelPessoaFactory.PessoaFisica: iPessoa;
begin
  Result := TPessoaFisica.New;
end;

function TModelPessoaFactory.PessoaJuridica: iPessoa;
begin
   Result := TPessoaJuridica.New;
end;

end.
