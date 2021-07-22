unit Unit1;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs,  WEBLib.StdCtrls, classFuncoesWeb, Vcl.Controls,
  Vcl.StdCtrls, WEBLib.ExtCtrls, WEBLib.Actions, WEBLib.EditAutocomplete,
  Vcl.Menus, WEBLib.Menus, WEBLib.ComCtrls, WEBLib.Toast;

type
  TForm1 = class(TWebForm)
    WebElementActionList1: TWebElementActionList;
    novapag: TWebLabel;
    wlblAloMundo: TWebLabel;
    dropdownMenuButton1: TWebButton;
    action1: TWebLinkLabel;
    action2: TWebLinkLabel;
    WebEditAutoComplete1: TWebEditAutoComplete;
    WebButton1: TWebButton;
    WebSpinEdit1: TWebSpinEdit;
    WebColorPicker1: TWebColorPicker;
    wprogressbar: TWebProgressBar;
    WebButton2: TWebButton;
    WebMessageDlg1: TWebMessageDlg;
    WebBadge1: TWebBadge;
    WebToast1: TWebToast;
    procedure WebElementActionList1Execute(Sender: TObject;
      AAction: TElementAction; Element: TJSHTMLElementRecord;
      Event: TJSEventParameter);
    procedure WebFormShow(Sender: TObject);
    procedure novapagClick(Sender: TObject);
    procedure WebButton1Click(Sender: TObject);
    procedure WebColorPicker1Select(Sender: TObject);
    procedure WebButton2Click(Sender: TObject);
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



procedure TForm1.novapagClick(Sender: TObject);
begin
   Application.CreateForm(TForm2, Form2);
end;

procedure TForm1.WebButton1Click(Sender: TObject);
begin
  ShowMessage(IntToStr(WebEditAutoComplete1.ItemIndex));
end;

procedure TForm1.WebButton2Click(Sender: TObject);
var
  i: integer;
begin
  for I := 0 to wprogressbar.Max do
    wprogressbar.Position :=  i;
end;

procedure TForm1.WebColorPicker1Select(Sender: TObject);
begin
   WebButton1.Color :=  WebColorPicker1.Color;
end;

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
  el := document.getElementById('action1');
  //ShowMessage(el.innerHTML);
  novapag.Cursor := crHandPoint;
  el['class'] := el['class'] + ' active';
  WebMessageDlg1.ShowDialog('Do you like TMS WEB Core?',WEBLib.Dialogs.mtConfirmation, [mbYes]);
end;

end.
