unit model_PermissoesFornecedor;

interface

uses
    System.IniFiles, System.SysUtils, FMX.Forms;

const
  ARQUIVO = 'C:\Users\Easy\Documents\Clube de programadores Delphi\Live Bindings\Views\Permissoes\permissao.ini';
  DIRETORIO = 'C:\Users\Easy\Documents\Clube de programadores Delphi\Live Bindings\Views\Permissoes';

Type
  TPermissoesFornecedor = class
    private
      FExcluir: boolean;
      FConsultar: boolean;
      FIncluir: boolean;
      FAlterar: boolean;
      procedure SetAlterar(const Value: boolean);
      procedure SetConsultar(const Value: boolean);
      procedure SetExcluir(const Value: boolean);
      procedure SetIncluir(const Value: boolean);
      procedure ConfiguraCaminho;
    procedure SetarConfigsIniciais;
    public
      constructor Create;
      destructor Destroy; override;
      property Incluir: boolean read FIncluir write SetIncluir;
      property Alterar: boolean read FAlterar write SetAlterar;
      property Excluir: boolean read FExcluir write SetExcluir;
      property Consultar: boolean read FConsultar write SetConsultar;
  end;

implementation


{ TPermissoesFornecedor }

procedure TPermissoesFornecedor.ConfiguraCaminho;
begin
  if not DirectoryExists(DIRETORIO) then
    CreateDir(DIRETORIO);
  FileCreate(ARQUIVO);
end;

procedure TPermissoesFornecedor.SetarConfigsIniciais;
var
  AArquivoConfig: TIniFile;
begin
  AArquivoConfig := TIniFile.Create(ExtractFilePath(ARQUIVO));
  try
    AArquivoConfig.WriteBool('permissoes', 'incluir',false);
    AArquivoConfig.WriteBool('permissoes', 'alterar',false);
    AArquivoConfig.WriteBool('permissoes', 'excluir',false);
    AArquivoConfig.WriteBool('permissoes', 'consultar', false);
  finally
    AArquivoConfig.Free;
  end;
end;

constructor TPermissoesFornecedor.Create;
var
  AArquivoConfig: TIniFile;
begin
  if not FileExists(ARQUIVO) then
     ConfiguraCaminho;
     //SetarConfigsIniciais;
  AArquivoConfig := TIniFile.Create(ARQUIVO);
  try
    FIncluir := AArquivoConfig.ReadBool('permissoes', 'incluir',false);
    FAlterar := AArquivoConfig.ReadBool('permissoes', 'alterar',false);
    FExcluir := AArquivoConfig.ReadBool('permissoes', 'excluir',false);
    FConsultar := AArquivoConfig.ReadBool('permissoes', 'consultar', false);
  finally
    AArquivoConfig.Free;
  end;
end;

destructor TPermissoesFornecedor.Destroy;
begin

  inherited;
end;

procedure TPermissoesFornecedor.SetAlterar(const Value: boolean);
begin
  FAlterar := Value;
end;

procedure TPermissoesFornecedor.SetConsultar(const Value: boolean);
begin
  FConsultar := Value;
end;

procedure TPermissoesFornecedor.SetExcluir(const Value: boolean);
begin
  FExcluir := Value;
end;

procedure TPermissoesFornecedor.SetIncluir(const Value: boolean);
begin
  FIncluir := Value;
end;

end.
