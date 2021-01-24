unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipalVisivel = class(TForm)
    btnRewrite: TButton;
    btnAppend: TButton;
    btnRead: TButton;
    memoLog: TMemo;
    procedure btnRewriteClick(Sender: TObject);
    procedure btnAppendClick(Sender: TObject);
    procedure btnReadClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipalVisivel: TfrmPrincipalVisivel;

implementation

{$R *.dfm}

procedure TfrmPrincipalVisivel.btnAppendClick(Sender: TObject);
var
  AFile: TextFile;
begin
  AssignFile(AFile,' Texto.txt'); //ATRIBUI O ARQUIVO À VARIÁVEL
  Append(AFile); // ABRE O ARQUIVO E POSICIONA O CURSOS NA ÚLTIMA POSIÇÃO.
  Writeln(AFile,Format('Log gerado as %s',[TimeToStr(now)])); // ESCREVO
  CloseFile(AFile); //FECHO
end;

procedure TfrmPrincipalVisivel.btnReadClick(Sender: TObject);
var
  AFile: TextFile;
  ATexto: String;
begin
  AssignFile(AFile,' Texto.txt'); //ATRIBUI O ARQUIVO À VARIÁVEL
  Reset(AFile); // ABRE O ARQUIVO
  memoLog.Lines.Text := EmptyStr;
  while not EOF(AFile)do begin
     Readln(AFile, ATexto);
     memoLog.Lines.Add(ATexto);
  end;
  CloseFile(AFile); //FECHO

end;

procedure TfrmPrincipalVisivel.btnRewriteClick(Sender: TObject);
var
  AFile: TextFile;
begin
  AssignFile(AFile,' Texto.txt'); //ATRIBUI O ARQUIVO À VARIÁVEL
  Rewrite(AFile); // ABRE O ARQUIVO
  Writeln(AFile,Format('Minha primeira linha as %s',[TimeToStr(now)])); // ESCREVO
  CloseFile(AFile); //FECHO
end;

end.
