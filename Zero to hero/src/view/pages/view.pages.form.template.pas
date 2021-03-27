unit view.pages.form.template;

interface

uses
  Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Router4D.Interfaces,
  Vcl.StdCtrls, Vcl.Buttons, System.ImageList, Vcl.ImgList, Bind4D, Data.DB,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Stan.StorageBin, view.styles.colors, RESTRequest4D;

type
  TfrmTemplate = class(TForm, iRouter4DComponent)
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H6, CINZA, FONT_NAME_DEFAULT)]
    pnlMain: TPanel;
    [ComponentBindStyle(COLOR_C1, FONT_H6, CINZA, FONT_NAME_DEFAULT)]
    pnlTop: TPanel;
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H6, CINZA, FONT_NAME_DEFAULT)]
    pnlFull: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    ImageList1: TImageList;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    btnAtualizar: TSpeedButton;
    btnNovo: TSpeedButton;
    Panel8: TPanel;
    lblPesquisar: TLabel;
    Edit1: TEdit;
    Panel9: TPanel;
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H6, CINZA, FONT_NAME_DEFAULT)]
    pnlFullBody: TPanel;
    Panel11: TPanel;
    DBGrid1: TDBGrid;
    FDMemTable1: TFDMemTable;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FTitle: String;
    FEndpoint: String;
    FPK: String;
    FSort: String;
    FOrder: String;
    procedure ApplyStyle;
    procedure GetEndPoint;
  public
    { Public declarations }
    function Render: TForm;
    procedure UnRender;
  end;

var
  frmTemplate: TfrmTemplate;

implementation

{$R *.dfm}

{ TForm1 }

procedure TfrmTemplate.ApplyStyle;
begin
  Label1.Caption := FTitle;
  FPK := 'guuid';
  FSort := 'asc';
end;

procedure TfrmTemplate.FormCreate(Sender: TObject);

begin
  TBind4D.New.Form(self).BindFormDefault(FTitle).BindFormRest(FEndpoint, FPK, FSort, FSort).SetStyleComponents;
  ApplyStyle;
end;

procedure TfrmTemplate.GetEndPoint;
begin
   TRequest.New.BaseURL('http://localhost:9000/users')
    .Accept('application/json')
    .DataSetAdapter(FDMemTable1)
    .Get;
end;

function TfrmTemplate.Render: TForm;
begin
  Result := Self;
end;

procedure TfrmTemplate.UnRender;
begin

end;

end.
