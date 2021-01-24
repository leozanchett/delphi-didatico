unit frmPrincipalAplicacaoREST;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, REST.Types,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, REST.Response.Adapter, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Rtti, FMX.Grid.Style,
  FMX.Controls.Presentation, FMX.ScrollBox, FMX.Grid, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.Grid, Data.Bind.DBScope, FMX.Edit, FMX.StdCtrls, Data.Bind.Controls,
  FMX.Layouts, Fmx.Bind.Navigator, System.Threading;

type
  TForm6 = class(TForm)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    FDMemTable1: TFDMemTable;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    StringGrid1: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    FDMemTable1cep: TWideStringField;
    FDMemTable1logradouro: TWideStringField;
    FDMemTable1complemento: TWideStringField;
    FDMemTable1bairro: TWideStringField;
    FDMemTable1localidade: TWideStringField;
    FDMemTable1uf: TWideStringField;
    FDMemTable1ibge: TWideStringField;
    FDMemTable1gia: TWideStringField;
    FDMemTable1ddd: TWideStringField;
    FDMemTable1siafi: TWideStringField;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    LinkControlToField7: TLinkControlToField;
    LinkControlToField8: TLinkControlToField;
    btnPesquisar: TButton;
    edtPesquisar: TEdit;
    AniIndicator1: TAniIndicator;
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.fmx}

procedure TForm6.btnPesquisarClick(Sender: TObject);
begin
  TThread.Synchronize(TThread.CurrentThread, procedure begin
    AniIndicator1.Visible := true;
    AniIndicator1.Enabled := true;
  end);

  TTask.Run(procedure begin
    Sleep(5000);
    TThread.Synchronize(TThread.CurrentThread, procedure begin
      if (edtPesquisar.Text <> EmptyStr) and (edtPesquisar.Text.Length = 8)  then
        RESTRequest1.Params.ParameterByName('cep').Value := edtPesquisar.Text;
      RESTRequest1.Execute;
      AniIndicator1.Visible := false;
      AniIndicator1.Enabled := false;
    end);
  end);

end;

end.
