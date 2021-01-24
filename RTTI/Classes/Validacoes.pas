unit Validacoes;

interface

uses
  System.Classes, System.Generics.Collections, System.SysUtils;

type
  TValidacoes = class
    private
      FList : TList<String>;
      FResult: TProc<String>;
    public
      constructor Create;
      destructor Destroy; override;
      function AddValidacao(_AValor: String): TValidacoes;
      function ResultDisplay(_AValor : TProc<String>): TValidacoes;
      procedure Validar(_AValor: String);
      procedure CFOP(_AValor: String);
      procedure ALIQICMS(_AValor: String);
      procedure NCM(_AValor: String);
  end;

implementation

uses
  RttiUteis;

{ TValidacoes }

function TValidacoes.AddValidacao(_AValor: String): TValidacoes;
begin
   Result := self;
   FList.Add(_AValor);
end;

procedure TValidacoes.ALIQICMS(_AValor: String);
begin
  if _AValor.IsEmpty then
    FResult('ERRO ICSM VAZIO');
  FResult('OK - ICSM - '+_AValor);
end;

procedure TValidacoes.CFOP(_AValor: String);
begin
   if _AValor.IsEmpty then
    FResult('ERRO CFOP VAZIO');
  FResult('OK - CFOP - '+_AValor);
end;

constructor TValidacoes.Create;
begin
  FList := TList<String>.create;
end;

destructor TValidacoes.Destroy;
begin
   FList.Free;
  inherited;
end;

procedure TValidacoes.NCM(_AValor: String);
begin
    if _AValor.IsEmpty then
    FResult('ERRO NCM VAZIO');
  FResult('OK - NCM - '+_AValor);
end;

function TValidacoes.ResultDisplay(_AValor: TProc<String>): TValidacoes;
begin
  Result := self;
  FResult := _AValor;
end;

procedure TValidacoes.Validar(_AValor: String);
var I: Integer;
begin
   for I := 0 to pred(FList.Count) do
    TRTTiUteis.ExecutarMetodo<TValidacoes>(self, FList[i], _AValor);
end;

end.
