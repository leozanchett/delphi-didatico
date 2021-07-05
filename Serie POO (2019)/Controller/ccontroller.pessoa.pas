unit ccontroller.pessoa;

interface

uses
  ccontroller.interfaces, model.interfaces;

type
  TControllerPessoa = class(TInterfacedObject, iControllerPessoa)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iControllerPessoa;
      function Pessoa(_ATipoPessoa: TTypePessoa): iPessoa;
  end;

implementation

uses
  model.pessoa.factory;



{ TControllerPessoa }

constructor TControllerPessoa.Create;
begin

end;

destructor TControllerPessoa.Destroy;
begin

  inherited;
end;

class function TControllerPessoa.New: iControllerPessoa;
begin
  Result := self.Create;
end;

function TControllerPessoa.Pessoa(_ATipoPessoa: TTypePessoa): iPessoa;
begin
  case _ATipoPessoa of
    tpFisica: Result := TModelPessoaFactory.New.PessoaFisica;
    tpJuridica: Result := TModelPessoaFactory.New.PessoaJuridica;
  end;
end;

end.
