unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  SmartPoint;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
  SL : TSmartPointer<TStringList>;
begin
  SL.Value.Add('Teste');
  ShowMessage('Total de Registro: ' + IntToStr(SL.Value.Count));
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
end;

end.
