unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ClasseThread, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    btnCriaThread1: TBitBtn;
    btnCriaThread2: TBitBtn;
    btnCriaThread3: TBitBtn;
    procedure btnCriaThread1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnCriaThread2Click(Sender: TObject);
  private
    PT: array [1 .. 3] of TPrintThread;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCriaThread1Click(Sender: TObject);
begin
  btnCriaThread1.Enabled := False; // Desabilita botão de criação
  PT[1] := TPrintThread.Create(1); // Cria thread
  btnCriaThread2.Click;
end;

procedure TForm1.btnCriaThread2Click(Sender: TObject);
begin
  btnCriaThread1.Enabled := False; // Desabilita botão de criação
  PT[2] := TPrintThread.Create(2); // Cria thread
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
var
  index: integer;
begin
  for index := 1 to 3 do
    if Assigned(PT[index]) then begin
      PT[index].WaitFor; // Espera threads terminarem
      PT[index].Free;
    end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
end;

end.
