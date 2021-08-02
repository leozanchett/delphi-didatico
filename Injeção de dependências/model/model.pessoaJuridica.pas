unit model.pessoaJuridica;

interface

uses
  model.interfaces;

type
  TPessoaJuridica = class(TInterfacedObject, iPessoaJuridica)
    private
      FCNPJ: String;
    public
      function CNPJ(_AValue: String): iPessoaJuridica; overload;
      function CNPJ: String; overload;
      constructor Create;
      destructor Destroy; override;
      class function New: iPessoaJuridica;
  end;

implementation

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

end;

destructor TPessoaJuridica.Destroy;
begin

  inherited;
end;

class function TPessoaJuridica.New: iPessoaJuridica;
begin
  Result := Self.Create;
end;

end.

