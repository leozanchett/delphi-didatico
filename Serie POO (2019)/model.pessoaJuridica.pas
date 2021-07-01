unit model.pessoaJuridica;

interface

uses
  model.interfaces;

type
  TPessoaJuridica = class(TInterfacedObject, iPessoa)
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

{ TPessoaJuridica }

constructor TPessoaJuridica.Create;
begin

end;

class function TPessoaJuridica.New: iPessoa;
begin
  Result := Self.Create;
end;

destructor TPessoaJuridica.Destroy;
begin

  inherited;
end;

function TPessoaJuridica.Nome(_Avalue: String): iPessoa;
begin
  Result := Self;
  FNome := _Avalue;
end;

function TPessoaJuridica.NomeCompleto: String;
begin
  Result := FNome +' '+ FSobrenome + ' LTDA ME';
end;

function TPessoaJuridica.Sobrenome(_AValue: String): iPessoa;
begin
   Result := Self;
   FSobrenome := _AValue;
end;

end.
