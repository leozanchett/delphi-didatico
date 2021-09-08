unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Redis.Client, Redis.netlib.INDY, Redis.Commons,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    FRedis: IRedisClient;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
   FRedis.&SET('nome', String(Edit1.Text));
   FRedis.EXPIRE('nome', 10);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   ShowMessage(FRedis.GET('nome'));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   FRedis := NewRedisClient;
   ReportMemoryLeaksOnShutdown := True;
end;

end.
