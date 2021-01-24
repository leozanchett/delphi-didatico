unit frmPrincipalFixandoThread;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo, FMX.StdCtrls;

type
  TProcesso = class(TThread)
    private
      FMemo: Tmemo;
      FAux: String;
    public
      constructor Create (_AMemo: TMemo); reintroduce;
      procedure Execute; override;
      procedure Sincronizar;
  end;

  TForm7 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    procedure TrataThread(_AObject: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.fmx}

{ TProcesso }

constructor TProcesso.Create(_AMemo: TMemo);
begin
 inherited Create(True);
 FreeOnTerminate := true; //quando terminar a thread vai limpa-lá
 FMemo := _AMemo;
end;

procedure TProcesso.Execute;
var i: integer;
begin
  inherited;
  for I := 0 to 1000 do begin
    FAux := I.ToString;
    Self.Queue(Self.CurrentThread, self.Sincronizar);
    Self.Sleep(1);
    if i > 100 then
      raise Exception.Create('A THREAD FAIOU');
  end;

end;

procedure Tform7.TrataThread(_AObject: TObject);
begin
  if _AObject is TThread then begin
    if Assigned(TThread(_AObject).FatalException) then
      Memo1.Lines.Add('Houve uma exceção na thread :' + Exception(TThread(_AObject).FatalException).Message);
  end;
end;

procedure TForm7.Button1Click(Sender: TObject);
var AProcesso : TProcesso;
begin
  AProcesso := TProcesso.Create(self.Memo1);
  AProcesso.OnTerminate := TrataThread;
  AProcesso.Start;
end;

procedure TProcesso.Sincronizar;
begin
  FMemo.Lines.Add(FAux);
end;

end.
