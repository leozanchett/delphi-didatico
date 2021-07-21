unit Unit1;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs,  WEBLib.StdCtrls, classFuncoesWeb, Vcl.Controls,
  Vcl.StdCtrls;

type
  TForm1 = class(TWebForm)
    WebLabel1: TWebLabel;
    wlblAbrirForm2: TWebLabel;
    procedure wlblAbrirForm2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Unit2;

{$R *.dfm}



procedure TForm1.wlblAbrirForm2Click(Sender: TObject);
begin
  TFuncoesWeb.AbrirNovaPagina(TForm2);
end;

end.