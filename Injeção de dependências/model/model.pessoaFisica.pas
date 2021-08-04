unit model.pessoaFisica;

interface

uses
  model.interfaces;

type
  TPessoaFisica = class(TInterfacedObject, iPessoaFisica)
    private
      FCPF: String;
      FEndereco: iEndereco<iPessoaFisica>;
      FEmail: iEmail<iPessoaFisica>;
    public
      function CPF(_AValue: String): iPessoaFisica; overload;
      function CPF: String; overload;
      constructor Create;
      destructor Destroy; override;
      class function New: iPessoaFisica;
      function interfaceEndereco: iEndereco<iPessoaFisica>;
      function interfaceEmail: iEmail<iPessoaFisica>;
  end;

implementation

uses
  model.endereco, model.email;

{ TPessoaFisica }

function TPessoaFisica.CPF(_AValue: String): iPessoaFisica;
begin
  Result := Self;
  FCPF := _AValue;
end;

function TPessoaFisica.CPF: String;
begin
  Result := FCPF;
end;

constructor TPessoaFisica.Create;
begin
    FEndereco := TEndereco<iPessoaFisica>.New(Self);
    FEmail := TEmail<iPessoaFisica>.New(Self);
end;

destructor TPessoaFisica.Destroy;
begin

  inherited;
end;

function TPessoaFisica.interfaceEmail: iEmail<iPessoaFisica>;
begin
  Result := FEmail;
end;

function TPessoaFisica.interfaceEndereco: iEndereco<iPessoaFisica>;
begin
    Result := FEndereco;
end;

class function TPessoaFisica.New: iPessoaFisica;
begin
  Result := Self.Create;
end;

end.
