unit frmPrincipalAbsolute;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.Edit, FMX.ScrollBox, FMX.Memo;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Memo1: TMemo;
    procedure Edit1Change(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
  private
    procedure UpperNormal(_ASender: TObject);
    procedure UpperAbsolute(_ASender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

procedure TForm2.Edit1Change(Sender: TObject);
begin
  //UpperNormal(Sender);
  UpperAbsolute(Sender);
end;

procedure TForm2.Memo1Change(Sender: TObject);
begin
  //UpperNormal(Sender);
  UpperAbsolute(Sender);
end;

procedure TForm2.UpperAbsolute(_ASender: TObject);
var
  Edit: TEdit absolute _ASender;
  Memo: TMemo absolute _ASender;
begin
  if _ASender is TEdit then
    Edit.Text := Edit.Text.ToUpper;
  if _ASender is TMemo then
    Memo.Text := Memo.Text.ToUpper;
end;

procedure TForm2.UpperNormal(_ASender: TObject);
begin
  if _ASender is TEdit then
    TEdit(_ASender).text := TEdit(_ASender).text.ToUpper;
  if _ASender is TMemo then
    TMemo(_ASender).Text := TMemo(_ASender).Text.ToUpper;
end;

end.
