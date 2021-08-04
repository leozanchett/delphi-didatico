unit model.pessoaJuridica;

interface

uses
  model.interfaces, model.endereco;

type
  TPessoaJuridica = class(TInterfacedObject, iPessoaJuridica)
    private
      FCNPJ: String;
      FEndereco: iEndereco<iPessoaJuridica>;
      FEmail: iEmail<iPessoaJuridica>;
    public
      function CNPJ(_AValue: String): iPessoaJuridica; overload;
      function CNPJ: String; overload;
      constructor Create;
      destructor Destroy; override;
      class function New: iPessoaJuridica;
      function interfaceEndereco: iEndereco<iPessoaJuridica>;
      function interfaceEmail: iEmail<iPessoaJuridica>;
  end;

implementation

uses
  model.email;

{ TPessoaFisica }

function TPessoaJuridica.CNPJ(_AValue: String): iPessoaJuridica;
begin
  Result := Self;
  FCNPJ := _AValue;
end;

function TPessoaJuridica.CNPJ: String;
begin
  Result := FCNPJ;
end;

constructor TPessoaJuridica.Create;
begin
  FEndereco := TEndereco<iPessoaJuridica>.Create(Self);
  FEmail := TEmail<iPessoaJuridica>.Create(Self);
end;

destructor TPessoaJuridica.Destroy;
begin

  inherited;
end;

function TPessoaJuridica.interfaceEmail: iEmail<iPessoaJuridica>;
begin
  Result := FEmail;
end;

function TPessoaJuridica.interfaceEndereco: iEndereco<iPessoaJuridica>;
begin
    Result := FEndereco;
end;

class function TPessoaJuridica.New: iPessoaJuridica;
begin
  Result := Self.Create;
end;

end.

