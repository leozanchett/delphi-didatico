unit einterface.Model.PessoaJuridica;

interface

uses
  einterface.Model.Interfaces;

type
  TModelPessoaJuridica = class(TInterfacedObject, IPessoa)
  private
    FNome: String;
    FSobrenome: String;
    FDisplay: TEvDisplay;
    function Nome(_AValue: string): IPessoa;
    function Sobrenome(_AValue: string): IPessoa;
    function NomeCompleto: IPessoa;
    function Display(_Avalue: TEvDisplay): Ipessoa;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IPessoa;
  end;

implementation

{ TModelPessoaJuridica }

constructor TModelPessoaJuridica.Create;
begin

end;

destructor TModelPessoaJuridica.Destroy;
begin

  inherited;
end;

function TModelPessoaJuridica.Display(_Avalue: TEvDisplay): Ipessoa;
begin
  FDisplay := _Avalue;
  Result := Self;
end;

class function TModelPessoaJuridica.New: IPessoa;
begin
   Result := Self.Create;
end;

function TModelPessoaJuridica.Nome(_AValue: string): IPessoa;
begin
   FNome := _AValue;
   Result := Self;
end;

function TModelPessoaJuridica.NomeCompleto: IPessoa;
begin
  FDisplay(Concat(FNome,' ',FSobrenome, ' LTDA ME'));
  Result := self;
end;

function TModelPessoaJuridica.Sobrenome(_AValue: string): IPessoa;
begin
  FSobrenome := _AValue;
  Result := Self;
end;

end.
