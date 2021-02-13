unit eInterface.Controller.Pessoa;

interface

uses
  eInterface.Controller.Interfaces, einterface.Model.Interfaces,
  einterface.Model.Pessoa.Factory;

type
  TControllerPessoa = class(TInterfacedObject, iControllerPessoa)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iControllerPessoa;
      function Pessoa(_AValue: TTypePessoa): IPessoa;
      class function ModelPessoa(_ATipoPessoa: TTypePessoa): IPessoa;
  end;

implementation

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
   Result := Self.Create;
end;

class function TControllerPessoa.ModelPessoa(_ATipoPessoa: TTypePessoa): IPessoa;
var
  APessoa: IPessoa;
begin
  APessoa := self.New.Pessoa(_ATipoPessoa);
end;

function TControllerPessoa.Pessoa(_AValue: TTypePessoa): IPessoa;
begin
  with TModelPessoaFactory.New do begin
    case _AValue of
      tpFisica: Result := PessoaFisica;
      tpJuridica: Result := PessoaJuridica;
    end;
  end;
end;

end.
