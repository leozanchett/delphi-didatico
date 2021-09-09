unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Redis.Client, Redis.netlib.INDY, Redis.Commons,
  System.Threading;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    FRedis: IRedisClient;
    FClose: Boolean;
    FTask : iTask;
    FUserName: String;
    procedure Mensagem(const _AValue: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
   FUserName := Edit1.Text;
   if not FUserName.IsEmpty then begin
      Edit1.Enabled := False;
      Button1.Enabled := False;
      Edit2.Enabled := True;
      Button2.Enabled := True;
      FClose := False;
      FRedis.PUBLISH(FUserName, ' entrou..');
      FTask  := TTask.Run(
        procedure 
        var
         ARedis: IRedisClient;
        begin
         ARedis := NewRedisClient;
         Aredis.SUBSCRIBE(
            ['chat'], 
            procedure(_ACanal, _AMensagem: String)
            begin         
               TThread.Synchronize(
                  nil,
                  procedure
                  begin
                     Self.Mensagem(_AMensagem);               
                  end
               );
            end,
            function: Boolean
            begin
               Result := Assigned(Self) and (not FClose);
            end
         );
        end
      );
   end else begin
      ShowMessage('Informe um nome de usuário !');
      Edit1.SetFocus;
   end;
      
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
   FRedis.PUBLISH('chat', Format('%s [%s]: %s',[TimeToStr(Now), FUserName, Edit2.Text]));
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
   FRedis := NewRedisClient;
   FUserName := EmptyStr;
   ReportMemoryLeaksOnShutdown := True;
end;

procedure TForm2.FormDestroy(Sender: TObject);
begin
   FClose := True;
end;

procedure TForm2.Mensagem(const _AValue: String);
begin
   Memo1.Lines.Add(_AValue);
end;

end.
