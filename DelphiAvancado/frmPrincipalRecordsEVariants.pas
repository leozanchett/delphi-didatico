unit frmPrincipalRecordsEVariants;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls;

type 
  ILive = interface
    ['{53D6681F-1255-42B5-9A68-DA02624992DA}']
  end;
                                                                
type
  TForma = record
    Nome: String;
    case isQuadrado: boolean of
      True: (X1, Y1, X2, Y2: Integer);
      False: (X, Y: Integer);    
  end;

type
  TFuncionario = record
    Nome: String;
    case ContratoMensal: boolean of
      True: (SalarioMensal: Currency);
      False:(SalarioHora: Currency);
  end;

type
  TForm3 = class(TForm)
    btnTeste: TButton;
    procedure btnTesteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.fmx}

procedure TForm3.btnTesteClick(Sender: TObject);
var
  AForma : TForma;
begin
  AForma.Nome := 'teste';
  AForma.isQuadrado := false;
  AForma.X1 := 10;
  AForma.X2 := 20;
  AForma.Y1 := 40;
  AForma.Y2 := 10;  
end;

end.
