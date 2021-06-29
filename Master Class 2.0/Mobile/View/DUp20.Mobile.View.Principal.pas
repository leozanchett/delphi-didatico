unit DUp20.Mobile.View.Principal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, Data.DB,
  FMX.StdCtrls, FMX.Layouts, FMX.ListBox, FMX.Controls.Presentation,
  DUp20.Controller.Interfaces, Data.Bind.Controls, Fmx.Bind.Navigator,
  Data.Bind.Components, Data.Bind.DBScope, FMX.Edit, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt, Fmx.Bind.DBEngExt,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.Bind.ObjectScope,
  FMX.Grid.Style, Fmx.Bind.Grid, Data.Bind.Grid, FMX.ScrollBox, FMX.Grid;

type
  TForm6 = class(TForm)
    ToolBar1: TToolBar;
    ToolBar2: TToolBar;
    Button1: TButton;
    edtGuuid: TEdit;
    edtCodigo: TEdit;
    edtDescricao: TEdit;
    edtPreco: TEdit;
    edtNCM: TEdit;
    edtAliquota: TEdit;
    BindNavigator1: TBindNavigator;
    StringGrid1: TStringGrid;
    DataSource1: TDataSource;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    FController : iController;
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses
  DUp20.Controller;

{$R *.fmx}

procedure TForm6.Button1Click(Sender: TObject);
begin
  FController
  .Entidades
    .Produto
      .DataSet(DataSource1)
    .Open;
end;

procedure TForm6.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  edtGuuid.Text := DataSource1.DataSet.FieldByName('GUUID').AsString;
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
  FController := TController.New;
end;

end.
