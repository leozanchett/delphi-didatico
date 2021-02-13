unit einterface.Model.PessoaFisica;

interface

uses
  einterface.Model.Interfaces;

type
  TModelPessoaFisica = class(TInterfacedObject, IPessoa)
  private
    FNome: String;
    FSobrenome: String;
    FDisplay: TEvDisplay;
    function Nome(_AValue: string): IPessoa;
    function Sobrenome(_AValue: string): IPessoa;
    function NomeCompleto: IPessoa;
    function Display(_Avalue: TEvDisplay): IPessoa;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IPessoa;
  end;

implementation

{ TModelPessoa }

constructor TModelPessoaFisica.Create;
begin

end;

destructor TModelPessoaFisica.Destroy;
begin

  inherited;
end;

function TModelPessoaFisica.Display(_Avalue: TEvDisplay): IPessoa;
begin
  Result := self;
  FDisplay := _Avalue;
end;

class function TModelPessoaFisica.New: IPessoa;
begin
  Result := Self.Create;
end;

// O RETORNO IPessoa é para acessar os métodos da interface em cascata, utilizando pontos ex:
// TModel.Pessoa('Nome').Sobrenome('O sobrenome').NomeCompleto;
function TModelPessoaFisica.Nome(_AValue: string): IPessoa;
begin
  Result := Self;
  FNome := _AValue;
end;

function TModelPessoaFisica.Sobrenome(_AValue: string): IPessoa;
begin
  Result := Self;
  FSobrenome := _AValue;
end;

function TModelPessoaFisica.NomeCompleto: IPessoa;
begin
  FDisplay(concat(FNome,' ',FSobrenome));
  Result := self;
end;

end.
