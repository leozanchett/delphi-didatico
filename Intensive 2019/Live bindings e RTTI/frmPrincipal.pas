unit frmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo, FMX.StdCtrls, FMX.Edit,
  Data.Bind.Controls, FMX.Layouts, Fmx.Bind.Navigator, Data.Bind.Components,
  Data.Bind.ObjectScope, ClassCliente, System.Generics.Collections,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs,
  Fmx.Bind.Editors, ClassRTTI;

type
  CampoObrigatorio = class(TCustomAttribute)
    private
      FMensagemCampoVazio: String;
    public
      property MensagemCampoVazio: String read FMensagemCampoVazio write FMensagemCampoVazio;
      Constructor Create(_AMensagemCampoVazio: String);
  end;

  TForm1 = class(TForm)
    Memo1: TMemo;
    btnRTTI: TButton;
    edtCodigo: TEdit;
    edtNome: TEdit;
    edtEndereco: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BindNavigator1: TBindNavigator;
    abs: TAdapterBindSource;
    btnSalvar: TButton;
    [CampoObrigatorio('O campo edit obrigatório não pode ser vazio')]
    edtCampoObrigatorio: TEdit;
    [CampoObrigatorio('O campo endereço obrigatório não pode ser vazio')]
    edtEnderecoObrigatorio: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure absCreateAdapter(Sender: TObject;
      var ABindSourceAdapter: TBindSourceAdapter);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  ListaCliente : TList<TCliente>;
  FRttiExemplo: TRTTIExemplo;

implementation

{$R *.fmx}

procedure TForm1.absCreateAdapter(Sender: TObject; var ABindSourceAdapter: TBindSourceAdapter);
var
 ACliente : TCliente;
 AInfoFieldRTTI : String;
begin
  FRttiExemplo :=  TRTTIExemplo.Create;
  ListaCliente := TList<TCliente>.Create;
  ACliente := TCliente.Create;
  ACliente.Codigo := 1;
  ACliente.Nomes := 'Cliente 1';
  ACliente.Endereco := 'Endereço cliente 1';
  ListaCliente.Add(ACliente);

  ACliente := TCliente.Create;
  ACliente.Codigo := 2;
  ACliente.Nomes := 'Cliente 2';
  ACliente.Endereco := 'Endereço cliente 2';
  ListaCliente.Add(ACliente);

  ACliente := TCliente.Create;
  ACliente.Codigo := 3;
  ACliente.Nomes := 'Cliente 3';
  ACliente.Endereco := 'Endereço cliente 3';
  ListaCliente.Add(ACliente);

  ABindSourceAdapter := TListBindSourceAdapter<TCliente>.Create(nil, ListaCliente, false);
  ACliente := TCliente.Create;
  try
    FRttiExemplo.RTTIExemploComUnit(ACliente, AInfoFieldRTTI);
    Memo1.Lines.Text := AInfoFieldRTTI;
  finally
    ACliente.Free;
  end;
end;

procedure TForm1.btnSalvarClick(Sender: TObject);
var
  ARetornoValidacaoCampos: String;
begin
  ARetornoValidacaoCampos := FRttiExemplo.ValidarCamposObrigatorios(self);
  if not ARetornoValidacaoCampos.IsEmpty then
    ShowMessage(ARetornoValidacaoCampos);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
var
  ACliente: TCliente;
begin
  for ACliente in ListaCliente do
    ACliente.Free;
  ListaCliente.Free;
  FreeAndNil(FRttiExemplo);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
end;

{ CampoObrigatorio }

constructor CampoObrigatorio.Create(_AMensagemCampoVazio: String);
begin
   FMensagemCampoVazio := _AMensagemCampoVazio;
end;

end.
