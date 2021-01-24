unit frmParallelFor;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo, FMX.StdCtrls, System.Threading;

type
  TForm5 = class(TForm)
    Memo1: TMemo;
    btnForNormal: TButton;
    btnTparallel: TButton;
    procedure btnForNormalClick(Sender: TObject);
    procedure btnTparallelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.fmx}

procedure TForm5.btnForNormalClick(Sender: TObject);
var i: integer;
begin
  Memo1.Lines.Clear;
  for i := 0 to 9 do begin
    Sleep(1000);
    Memo1.Lines.Add(i.ToString);
  end;
end;

procedure TForm5.btnTparallelClick(Sender: TObject);
begin
  Memo1.Lines.Clear;
  TTask.Run(procedure begin
     TParallel.&For(0, 9, procedure(index:integer) begin
      Sleep(3000);
      TThread.Queue(TThread.CurrentThread, procedure begin
         Memo1.Lines.Add(index.ToString);
      end);
    end);
  end);
end;

end.
