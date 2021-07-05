unit model.pessoaFisica;

interface

uses
  model.interfaces;

type

  TPessoaFisica = class(TInterfacedObject, iPessoa)
    private
      FNome: String;
      FSobrenome: String;
      FDisplay: TEventoDisplay;
      function Nome(_Avalue: String): iPessoa; overload;
      function Nome: String; overload;
      function Sobrenome(_AValue: String): iPessoa;
      function NomeCompleto: iPessoa;
      function Display(_AValue: TEventoDisplay): iPessoa;
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

function TPessoaFisica.Display(_AValue: TEventoDisplay): iPessoa;
begin
  Result := Self;
  FDisplay := _AValue;
end;

function TPessoaFisica.Nome(_Avalue: String): iPessoa;
begin
  Result := Self;
  FNome := _Avalue;
end;

function TPessoaFisica.Nome: String;
begin
  Result := FNome;
end;

function TPessoaFisica.NomeCompleto: iPessoa;
begin
  Result := Self;
  FDisplay(FNome +' '+ FSobrenome);
end;

function TPessoaFisica.Sobrenome(_AValue: String): iPessoa;
begin
   Result := Self;
   FSobrenome := _AValue;
end;

end.
