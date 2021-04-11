unit view.pages.form.template;

interface

uses
  Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Router4D.Interfaces,
  Vcl.StdCtrls, Vcl.Buttons, System.ImageList, Vcl.ImgList, Bind4D, Data.DB,
  Vcl.Grids, Vcl.DBGrids, view.styles.colors, RESTRequest4D, Vcl.WinXPanels,
  model.dao.interfaces;

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
    DataSource1: TDataSource;
    pnlAcoes: TPanel;
    btnExcluir: TSpeedButton;
    btnFechar: TSpeedButton;
    btnSalvar: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
    FTitle: String;
    FEndpoint: String;
    FPK: String;
    FSort: String;
    FOrder: String;
    procedure ApplyStyle;
    procedure GetEndPoint;
    procedure FormatList;
  protected
     FDAO: iDAOInterface;
    procedure ToggleDBGrid;
  public
    { Public declarations }
    function Render: TForm;
    procedure UnRender;
  end;

var
  frmTemplate: TfrmTemplate;

implementation

{$R *.dfm}

uses model.dao.rest;

{ TForm1 }

procedure TfrmTemplate.ApplyStyle;
begin
  Label1.Caption := FTitle;
  FPK := 'guuid';
  FSort := 'asc';
end;

procedure TfrmTemplate.btnFecharClick(Sender: TObject);
begin
  ToggleDBGrid;
end;

procedure TfrmTemplate.btnNovoClick(Sender: TObject);
begin
  ToggleDBGrid;
  TBind4D.New.Form(Self).ClearFieldForm;
end;

procedure TfrmTemplate.DBGrid1DblClick(Sender: TObject);
begin
  TBind4D.New.Form(Self).BindDataSetToForm(FDAO.DataSet);
  ToggleDBGrid;
end;

procedure TfrmTemplate.FormCreate(Sender: TObject);

begin
  FDAO := TDAOREST.New(Self).DataSource(DataSource1);
  TBind4D.New.Form(self).BindFormDefault(FTitle).BindFormRest(FEndpoint, FPK, FSort, FSort).SetStyleComponents;
  ApplyStyle;
  GetEndPoint;
end;

procedure TfrmTemplate.FormResize(Sender: TObject);
begin
  GetEndPoint;
end;

procedure TfrmTemplate.GetEndPoint;
begin
  FDAO.Get;
  FormatList;
end;

function TfrmTemplate.Render: TForm;
begin
  Result := Self;
end;

procedure TfrmTemplate.UnRender;
begin

end;

procedure TfrmTemplate.ToggleDBGrid;
begin
  GetEndPoint;
  DBGrid1.Visible := not DBGrid1.Visible;
end;

procedure TfrmTemplate.FormatList;
begin
  TBind4D.New.Form(Self).BindFormatListDataSet(FDAO.DataSet, DBGrid1);
end;

end.
