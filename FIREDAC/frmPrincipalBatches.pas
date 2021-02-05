unit frmPrincipalBatches;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.VCLUI.Wait;

type
  TForm5 = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    btnSelecNormal: TButton;
    Label1: TLabel;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    FDACConexao: TFDConnection;
    btnSelectBatch: TButton;
    FDMemTable1: TFDMemTable;
    FDMemTable2: TFDMemTable;
    procedure btnSelecNormalClick(Sender: TObject);
    procedure btnSelectBatchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.btnSelecNormalClick(Sender: TObject);
var
  ATempo: Cardinal;
begin
  FDACConexao.Close;
  ATempo := GetTickCount;
  FDQuery1.Open;
  DataSource1.DataSet := FDQuery1;
  DataSource2.DataSet := FDQuery1;
  Label1.Caption := IntToStr(GetTickCount - ATempo);
end;

procedure TForm5.btnSelectBatchClick(Sender: TObject);
var
  ATempo: Cardinal;
begin
  FDACConexao.Close;
  FDQuery1.Close;
  FDQuery1.FetchOptions.AutoClose := False;

  ATempo := GetTickCount;
  FDQuery1.Open;
  FDQuery1.FetchAll;
  Label1.Caption := IntToStr(GetTickCount - ATempo);

  FDMemTable1.Close;
  FDMemTable1.Data := FDQuery1.Data;
  FDQuery1.NextRecordSet;
  FDQuery1.Open;
  FDQuery1.FetchAll;
  FDMemTable2.Close;
  FDMemTable2.Data := FDQuery1.Data;

  Label1.Caption := IntToStr(GetTickCount - ATempo);

  DataSource1.DataSet := FDMemTable1;
  DataSource2.DataSet := FDMemTable2;
end;

end.
