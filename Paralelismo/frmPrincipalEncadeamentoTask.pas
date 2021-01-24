unit frmPrincipalEncadeamentoTask;

interface

uses
  System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, System.Threading;

type
  TForm4 = class(TForm)
    btnTask1: TButton;
    btnTask2: TButton;
    btnGerenciasTasks: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure btnTask1Click(Sender: TObject);
    procedure btnTask2Click(Sender: TObject);
    procedure btnGerenciasTasksClick(Sender: TObject);
  private
    ALLTasks: array[0..1] of iTask;
    { Private declarations }
  public
    procedure RunTask(_ALabel: TLabel; _ATimer: Integer;  var _ATask: iTask);
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses
  System.SysUtils, System.TimeSpan;

{$R *.fmx}

{ TForm4 }

procedure TForm4.btnGerenciasTasksClick(Sender: TObject);
begin
  Label3.Text := '--';
  TTask.Run(
    procedure begin
      TTask.WaitForAll(ALLTasks);
      TThread.Synchronize( TThread.CurrentThread, procedure begin
         Label3.Text := concat(Label1.Text,' + ', Label2.Text);
      end);
    end
  );
end;

procedure TForm4.btnTask1Click(Sender: TObject);
begin
  RunTask(Label1, 5000, AllTasks[0]);
end;

procedure TForm4.btnTask2Click(Sender: TObject);
begin
  RunTask(Label2, 3000, ALLTasks[1]);
end;

procedure TForm4.RunTask(_ALabel: TLabel; _ATimer: Integer;  var _ATask: iTask);
begin
  _ALabel.Text := '--';
  _ATask := TTask.Create(
    procedure begin
      //ALocalTask.Wait(TTimespan.Parse('00:00:01'));
      Sleep(_ATimer);
      TThread.Synchronize(TThread.CurrentThread, procedure begin
         _ALabel.Text := random(10).toString;
      end);
    end
  );
end;

end.
