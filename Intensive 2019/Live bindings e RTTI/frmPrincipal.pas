unit frmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo, FMX.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    btnRTTI: TButton;
    procedure btnRTTIClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  ClassRTTIExemplo, ClassCliente;

{$R *.fmx}

procedure TForm1.btnRTTIClick(Sender: TObject);
var
  ARttiExemplo: TRTTIExemplo;
  AInfoFieldRTTI : String;
  ACliente : TCliente;
begin
  ARttiExemplo := TRTTIExemplo.Create;
  ACliente := TCliente.Create;
  try
    //ARttiExemplo.RTTIExemplo(self, AInfoFieldRTTI);
    ARttiExemplo.RTTIExemploComUnit(ACliente, AInfoFieldRTTI);
    Memo1.Lines.Text := AInfoFieldRTTI;
  finally
    ARttiExemplo.Free;
    ACliente.Free;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
end;

end.
