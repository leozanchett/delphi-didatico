unit frmPrincipalTTaskeITask;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, System.Threading;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    btnMudaLabel: TButton;
    btnExecutaNormal: TButton;
    btnTask: TButton;
    btnITask: TButton;
    procedure btnMudaLabelClick(Sender: TObject);
    procedure btnExecutaNormalClick(Sender: TObject);
    procedure btnTaskClick(Sender: TObject);
    procedure btnITaskClick(Sender: TObject);
  private
    procedure Teste;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  System.TimeSpan;

{$R *.fmx}

{ TForm2 }

procedure TForm2.btnExecutaNormalClick(Sender: TObject);
begin
  Sleep(3000);
  Label1.Text := DateTimeToStr(now);
end;

procedure TForm2.btnITaskClick(Sender: TObject);
var
  AITask: ITask;
begin
  AITask := TTask.Create(
   procedure begin
      AITask.Wait(TTimeSpan.Parse('00:00:05'));
      TThread.Synchronize(TThread.CurrentThread, procedure begin
         Label1.Text := DateTimeToStr(now);
      end);
   end
  );
  AITask.Start;
end;

procedure TForm2.btnMudaLabelClick(Sender: TObject);
begin
  Teste;
end;

procedure TForm2.btnTaskClick(Sender: TObject);
begin
  TTask.Run(
    procedure begin
      Sleep(3000);
      Label1.Text := DateTimeToStr(Now);
      (*
         Thread.Synchronize(TThread.CurrentThread,
        procedure begin
           Label1.Text := DateTimeToStr(now);
        end
        );
       *)
    end
  );
end;

procedure TForm2.Teste;
begin
  Label1.Text := 'Teste';
end;

end.
