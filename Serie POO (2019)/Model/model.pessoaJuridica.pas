unit model.pessoaJuridica;

interface

uses
  model.interfaces;

type
  TPessoaJuridica = class(TInterfacedObject, iPessoa)
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

function TPessoaJuridica.Display(_AValue: TEventoDisplay): iPessoa;
begin
  Result := Self;
  FDisplay := _AValue;
end;

function TPessoaJuridica.Nome(_Avalue: String): iPessoa;
begin
  Result := Self;
  FNome := _Avalue;
end;

function TPessoaJuridica.Nome: String;
begin
  Result := FNome;
end;

function TPessoaJuridica.NomeCompleto: iPessoa;
begin
  Result := Self;
  FDisplay(FNome +' '+ FSobrenome + ' LTDA ME');
end;

function TPessoaJuridica.Sobrenome(_AValue: String): iPessoa;
begin
   Result := Self;
   FSobrenome := _AValue;
end;

end.
