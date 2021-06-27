unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    edtTotal: TEdit;
    BitBtn1: TBitBtn;
    lblTotal: TLabel;
    Panel1: TPanel;
    Memo1: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    RunningTotal: Integer;
    procedure Print(_AValue: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

const
  C_RUNNING_TOTAL = 'Running total %d ';

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  try
    // se não atender a condição, então apresenta a mensagem.
    Assert(Edit1.Text <> '', 'Deve ser informado um valor');
    edtTotal.Text := IntToStr(StrToInt(Edit1.Text) + StrToInt(Edit2.Text));
    RunningTotal := RunningTotal + StrToInt(edtTotal.Text);
    Print(Concat(edit1.Text,' + ', Edit2.Text, ' = ', edtTotal.Text));
    lblTotal.Caption := Format(C_RUNNING_TOTAL, [RunningTotal]);
    OutputDebugString(PChar('Meu total é: '+edtTotal.Text));
  except
    on e: exception do
      Print('Insira um numero válido');
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  RunningTotal := 0;
end;

procedure TForm1.Print(_AValue: String);
begin
  Memo1.Lines.Add(_AValue);
end;

end.
