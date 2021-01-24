unit frmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Bindings.Expression, System.Bindings.Helper,
  FMX.Controls.Presentation, FMX.StdCtrls, ClassePapel, ClasseTesoura,
  FMX.ScrollBox, FMX.Memo, Data.Bind.EngExt, Fmx.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors,
  controller_PapelTesoura, FMX.Menus;

type
  TForm2 = class(TForm)
    btnCortar: TButton;
    btnVerifyPapel: TButton;
    MenuBar1: TMenuBar;
    MenuItem1: TMenuItem;
    procedure btnCortarClick(Sender: TObject);
    procedure btnVerifyPapelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
  private
    FController : TControllerTesouraPapel;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  view_Fornecedor, controller_Fornecedor;

{$R *.fmx}


procedure TForm2.btnCortarClick(Sender: TObject);
begin
  FController.Tesoura.Cortar := not FController.Tesoura.Cortar;
  TBindings.Notify(FController.Tesoura, 'cortar');
end;

procedure TForm2.btnVerifyPapelClick(Sender: TObject);
begin
   case FController.Papel.Cortado of
    true: ShowMessage('Papel Cortado');
    false: ShowMessage('Papel não cortado');
  end;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  FController := TControllerTesouraPapel.Create;

end;

procedure TForm2.MenuItem1Click(Sender: TObject);
var
  APermissaoFornecedor: TControlerFornecedor;
begin
  APermissaoFornecedor := TControlerFornecedor.Create;
  try

  finally
    FreeAndNil(APermissaoFornecedor);
  end;
end;

end.
