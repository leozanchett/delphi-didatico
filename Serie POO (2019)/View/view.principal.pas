unit view.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, model.interfaces;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Memo1: TMemo;
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ExibeResultado(_AValue: String);
  private
    FPessoa: iPessoa;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
 ccontroller.pessoa, ccontroller.interfaces;


{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
type
  TTypeComboPessoa = (f, j);
begin
  case TTypeComboPessoa(ComboBox1.ItemIndex) of
    f: FPessoa := TControllerPessoa.New.Pessoa(tpFisica);
    j: FPessoa := TControllerPessoa.New.Pessoa(tpJuridica);
  end;
  FPessoa.Nome(Edit1.Text).Sobrenome(Edit2.Text).Display(ExibeResultado).NomeCompleto;
end;

procedure TForm1.ExibeResultado(_AValue: String);
begin
  Memo1.Lines.Add(_AValue);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
end;

end.
