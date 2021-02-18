unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  Controller.Venda.Strategy;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  //ShowMessage(FormatCurr('R$ #,##,0.00', TModelVendaECF.New(TModelVendaSat.New(TModelVendaNFC.New(TModelVenda.New))).Subtotal));
  //ShowMessage(FormatCurr('R$ #,##,0.00',TmodelVendaFactory.New.VendaECF(TmodelVendaFactory.New.VendaSat(nil)).Subtotal));
  //ShowMessage(FormatCurr('R$ #,##,0.00',ECF.New(Sat.New(nil)).Subtotal));
    ShowMessage(FormatCurr('R$ #,##,0.00', Venda.New.Subtotal));
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := true;
end;

end.
