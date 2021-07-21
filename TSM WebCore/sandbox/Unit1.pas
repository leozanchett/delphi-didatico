unit Unit1;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs,  WEBLib.StdCtrls, classFuncoesWeb, Vcl.Controls,
  Vcl.StdCtrls, WEBLib.ExtCtrls, WEBLib.Actions;

type
  TForm1 = class(TWebForm)
    WebLabel1: TWebLabel;
    wlblAbrirForm2: TWebLabel;
    wlblAction1: TWebLabel;
    wlblAction2: TWebLabel;
    WebElementActionList1: TWebElementActionList;
    procedure wlblAbrirForm2Click(Sender: TObject);
    procedure WebElementActionList1Execute(Sender: TObject;
      AAction: TElementAction; Element: TJSHTMLElementRecord;
      Event: TJSEventParameter);
    procedure WebFormShow(Sender: TObject);
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



procedure TForm1.WebElementActionList1Execute(Sender: TObject;
  AAction: TElementAction; Element: TJSHTMLElementRecord;
  Event: TJSEventParameter);
begin
  case AAction.Index of
    0: ShowMessage(AAction.Name);
    1: ShowMessage(AAction.Name);
  end;
end;

procedure TForm1.WebFormShow(Sender: TObject);
var
 el: TJSElement;
begin
// set sidebar element active style
  el := document.getElementById('action1');
  ShowMessage(el.innerHTML);
  el['class'] := el['class'] + ' active';
end;

procedure TForm1.wlblAbrirForm2Click(Sender: TObject);
begin
  TFuncoesWeb.AbrirNovaPagina(TForm2);
end;

end.