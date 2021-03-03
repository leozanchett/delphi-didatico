unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Datasnap.DBClient, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    btnCriar: TButton;
    btnRelacionar: TButton;
    btnTotalizador: TButton;
    edtFiltrar: TEdit;
    btnFiltrar: TButton;
    btnLimparFiltro: TButton;
    edtLocalizar: TEdit;
    btnLocalizar: TButton;
    DBGrid1: TDBGrid;
    edtTotalizador: TLabeledEdit;
    DBNavigator1: TDBNavigator;
    procedure btnCriarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnRelacionarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnTotalizadorClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure btnLimparFiltroClick(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure DBGrid1EndDock(Sender, Target: TObject; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  AClient: TClientDataSet;
  ADSource: TDataSource;

implementation

{$R *.dfm}

procedure TForm1.btnCriarClick(Sender: TObject);
begin
  AClient.FieldDefs.Add('CODIGO', ftInteger);
  AClient.FieldDefs.Add('DESCRICAO', ftString, 60);
  AClient.FieldDefs.Add('VALOR', ftFloat);

  AClient.CreateDataSet; // CRIA A ESTRUTURA DOS FIELDS EM SI.

  Aclient.Append; // INSERE NO FIM
  AClient.FieldByName('CODIGO').AsInteger := 1;
  AClient.Fields[1].AsString := 'CAMISA';
  AClient.FieldByName('VALOR').AsFloat := 112.51;

  Aclient.Append; // INSERE NO FIM
  AClient.FieldByName('CODIGO').AsInteger := 2;
  AClient.Fields[1].AsString := 'BERMUDA';
  AClient.FieldByName('VALOR').AsFloat := 210.00;

  Aclient.Append; // INSERE NO FIM
  AClient.FieldByName('CODIGO').AsInteger := 3;
  AClient.Fields[1].AsString := 'SAIA';
  AClient.FieldByName('VALOR').AsFloat := 336.22;

  Aclient.Insert; // INSERE NA POSIÇÃO ATUAL DISPONÍVEL NO CLIENT
  AClient.FieldByName('CODIGO').AsInteger := 4;
  AClient.Fields[1].AsString := 'CUECA';
  AClient.FieldByName('VALOR').AsFloat := 22.34;

  Aclient.Insert; // INSERE NA POSIÇÃO ATUAL DISPONÍVEL NO CLIENT
  AClient.FieldByName('CODIGO').AsInteger := 5;
  AClient.Fields[1].AsString := 'CAMISA POLO';
  AClient.FieldByName('VALOR').AsFloat := 154.22;

  AClient.Post;
end;

procedure TForm1.btnFiltrarClick(Sender: TObject);
begin
  AClient.Filter := 'DESCRICAO like '+QuotedStr('%'+String(edtFiltrar.Text).ToUpper+'%');
  AClient.Filtered := True;
  if not AClient.IsEmpty then
    btnTotalizador.Click
  else
    edtTotalizador.Text := '0,00';
end;

procedure TForm1.btnLimparFiltroClick(Sender: TObject);
begin
  AClient.Filtered := False;
  edtFiltrar.Text := EmptyStr;
  btnTotalizador.Click;
end;

procedure TForm1.btnLocalizarClick(Sender: TObject);
begin
  if AClient.Locate('DESCRICAO', edtLocalizar.Text, [loCaseInsensitive]) then
    ShowMessage(Format('ACHOU %S', [AClient.FieldByName('DESCRICAO').AsString]))
  else
    ShowMessage(Format('NÃO ACHOU %S', [String(edtLocalizar.Text).ToUpper]));
end;

procedure TForm1.btnRelacionarClick(Sender: TObject);
begin
  DBGrid1.DataSource := ADSource;
  ADSource.DataSet := AClient;
  DBNavigator1.DataSource := ADSource;
end;

procedure TForm1.btnTotalizadorClick(Sender: TObject);
begin
  with AClient.Aggregates.Add do begin
    AggregateName := 'valorTotal';
    name := 'valorTotal';
    Expression := 'SUM(VALOR)';
    Active := true;
  end;
  edtTotalizador.Text := FloatToStr(AClient.Aggregates.Items[0].Value);
end;

procedure TForm1.DBGrid1EndDock(Sender, Target: TObject; X, Y: Integer);
begin
  btnTotalizador.Click;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
  AClient := TClientDataSet.Create(Self);
  ADSource := TDataSource.Create(self);
  btnCriar.Click;
  btnRelacionar.Click;
  btnTotalizador.Click;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  FreeAndNil(AClient);
  FreeAndNil(ADSource);
end;

end.
