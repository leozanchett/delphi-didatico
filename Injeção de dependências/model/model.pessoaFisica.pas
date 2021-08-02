unit model.pessoaFisica;

interface

uses
  model.interfaces;

type
  TPessoaFisica = class(TInterfacedObject, iPessoaFisica)
    private
      FCPF: String;
    public
      function CPF(_AValue: String): iPessoaFisica; overload;
      function CPF: String; overload;
      constructor Create;
      destructor Destroy; override;
      class function New: iPessoaFisica;
  end;

implementation

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

end;

destructor TPessoaFisica.Destroy;
begin

  inherited;
end;

class function TPessoaFisica.New: iPessoaFisica;
begin
  Result := Self.Create;
end;

end.
