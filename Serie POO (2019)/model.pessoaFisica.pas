unit model.pessoaFisica;

interface

uses
  model.interfaces;

type

  TPessoaFisica = class(TInterfacedObject, iPessoa)
    private
      FNome: String;
      FSobrenome: String;
      function Nome(_Avalue: String): iPessoa;
      function Sobrenome(_AValue: String): iPessoa;
      function NomeCompleto: String;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iPessoa;

  end;

implementation

{ TPessoa }

constructor TPessoaFisica.Create;
begin

end;

class function TPessoaFisica.New: iPessoa;
begin
  Result := Self.Create;
end;

destructor TPessoaFisica.Destroy;
begin

  inherited;
end;

function TPessoaFisica.Nome(_Avalue: String): iPessoa;
begin
  Result := Self;
  FNome := _Avalue;
end;

function TPessoaFisica.NomeCompleto: String;
begin
  Result := FNome +' '+ FSobrenome;
end;

function TPessoaFisica.Sobrenome(_AValue: String): iPessoa;
begin
   Result := Self;
   FSobrenome := _AValue;
end;

end.
