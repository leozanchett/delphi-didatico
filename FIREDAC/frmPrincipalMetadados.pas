unit frmPrincipalMetadados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FiredacDAO, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids;

type
  TForm3 = class(TForm)
    ListBox1: TListBox;
    ListBox2: TListBox;
    btnGetTable: TButton;
    FDMetaInfoQuery1: TFDMetaInfoQuery;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DataSource1: TDataSource;
    btnGetMeta: TButton;
    FDMetaInfoQuery2: TFDMetaInfoQuery;
    DataSource2: TDataSource;
    procedure btnGetTableClick(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure btnGetMetaClick(Sender: TObject);
    procedure FDMetaInfoQuery1AfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.btnGetMetaClick(Sender: TObject);
begin
  FDMetaInfoQuery1.Connection := DAO.FDACConexao;
  FDMetaInfoQuery2.Connection := DAO.FDACConexao;
  FDMetaInfoQuery1.Open();
end;

procedure TForm3.btnGetTableClick(Sender: TObject);
begin
  DAO.FDACConexao.GetTableNames(
  '','','',ListBox1.Items
  );
end;

procedure TForm3.FDMetaInfoQuery1AfterOpen(DataSet: TDataSet);
begin
  FDMetaInfoQuery2.Close;
  FDMetaInfoQuery2.ObjectName := FDMetaInfoQuery1.FieldByName('TABLE_NAME').AsString;
  FDMetaInfoQuery2.Open();
end;

procedure TForm3.ListBox1Click(Sender: TObject);
begin
  if TListBox(Sender).ItemIndex >= 0 then
    DAO.FDACConexao.GetFieldNames('','',ListBox1.Items[ListBox1.ItemIndex],'',ListBox2.Items);
end;

end.
