unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Controller.Interfaces,
  Controller.Observer.Interfaces;

type
  TForm2 = class(TForm, iObserverItem)
    Edit1: TEdit;
    gbEsquerdo: TGroupBox;
    GroupBox1: TGroupBox;
    ListBox1: TListBox;
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FVenda: iControllerVenda;
    procedure VenderItem;
    function UpdateItem(_ARecordItem: TRecordItem): iObserverItem;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  Controller.Venda;

{$R *.dfm}

procedure TForm2.Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = 49 then
    VenderItem;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := true;
  FVenda := TControllerVenda.new;
  FVenda.ObserverItem.Add(Self);
end;

function TForm2.UpdateItem(_ARecordItem: TRecordItem): iObserverItem;
begin
  ListBox1.Items.Add(_ARecordItem.Descricao);
end;

procedure TForm2.VenderItem;
begin
    FVenda.Item.Codigo(1).Vender;
end;

end.
