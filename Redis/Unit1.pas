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
    Memo1: TMemo;
    Timer1: TTimer;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    FRedis: IRedisClient;
    FChaveUsr: String;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
   Memo1.Lines.Clear;
   FRedis.&SET(FChaveUsr, String(Edit1.Text));
   FRedis.EXPIRE(FChaveUsr, 5);
   Memo1.Lines.Add(edit1.Text + ' logado com sucesso');
   Timer1.Enabled := True;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   ShowMessage(FRedis.GET('nome'));
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   FRedis.EXPIRE(FChaveUsr, 3);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   FRedis := NewRedisClient;
   FChaveUsr := TGuid.NewGuid.ToString;
   ReportMemoryLeaksOnShutdown := True;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
   if not FRedis.EXISTS(FChaveUsr) then begin
      Memo1.Lines.Add(Edit1.Text + ' desconectou');   
      Timer1.Enabled := False;
   end else
      Memo1.Lines.Add(DateTimeToStr(Now));
   
end;

end.
