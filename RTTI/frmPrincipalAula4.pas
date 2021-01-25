unit frmPrincipalAula4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, RttiUteis;

type
  TForm5 = class(TForm)
    FDQuery1: TFDQuery;
    FDConnection1: TFDConnection;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;

    // ID | LABEL DO DATASET

    [Bind('ID', 'Display Label ID')]
    edtID: TEdit;

    [Bind('NOME','Display Label Nome')]
    edtNome: TEdit;

    [Bind('TELEFONE', 'O Telefone')]
    edtEndereco: TEdit;

    Button1: TButton;
    FDQuery1id: TIntegerField;
    FDQuery1NOME: TWideStringField;
    FDQuery1TELEFONE: TWideStringField;
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation


{$R *.dfm}

procedure TForm5.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  TRttiUteis.DataSetToForm(FDQuery1, Self);
end;

end.
