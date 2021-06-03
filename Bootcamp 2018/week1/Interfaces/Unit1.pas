unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.WinXPanels;

type
  TForm1 = class(TForm)
    StackPanel1: TStackPanel;
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    procedure Show(_AValue: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  ClassInterfaces;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  Walker: IWalker;
begin
  Walker := Trunner.Create;
  Walker.Run;
  Show(Walker.GetPos.ToString);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  Runner : TRunner;
begin
  Runner := TRunner.Create;
  try
    Runner.Run;
    Show(Runner.GetPos.ToString);
  finally
    Runner.Free;
  end;
end;

procedure Tform1.Show(_AValue: String);
begin
  Memo1.Lines.Add(_AValue);
end;


initialization
  ReportMemoryLeaksOnShutdown := True;

end.
