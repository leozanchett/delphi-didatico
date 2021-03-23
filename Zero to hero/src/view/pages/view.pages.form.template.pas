unit view.pages.form.template;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Router4D.Interfaces,
  Vcl.StdCtrls, Vcl.Buttons, System.ImageList, Vcl.ImgList, Bind4D, Data.DB,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Stan.StorageBin;

type
  TfrmTemplate = class(TForm, iRouter4DComponent)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
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
    Panel10: TPanel;
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
    FOrder: String;
    procedure ApplyStyle;
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
  Panel1.Color := $00ffffff;
  Panel2.Color := $00fcfaf9;
  Panel3.Color := $00ffffff;
  Panel4.Color := Panel2.Color;
  Panel5.Color := $00ffffff;
  Panel6.Color := $00ffffff;
  Panel9.Color := $00a4584c;
  lblPesquisar.Color := Panel9.Color;
  Panel10.Color := Panel1.Color;
  panel11.Color := Panel10.Color;

  Label1.Font.Size := 14;
  Label1.Font.Name := 'Segoe UI';
end;

procedure TfrmTemplate.FormCreate(Sender: TObject);

begin
  TBind4D.New.Form(self).BindFormRest(FEndpoint, FPK, FTitle, FOrder);
  ApplyStyle;
end;

function TfrmTemplate.Render: TForm;
begin
  Result := Self;
end;

procedure TfrmTemplate.UnRender;
begin

end;

end.
