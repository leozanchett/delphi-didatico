unit view.pages.form.template;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Router4D.Interfaces,
  Vcl.StdCtrls, Vcl.Buttons, System.ImageList, Vcl.ImgList;

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
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
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
   Panel1.Color := $00ffffff;
   Panel2.Color := $00fcfaf9;
   Panel3.Color := $00ffffff;
   Panel4.Color := Panel2.Color;

   Label1.Font.Size := 14;
   Label1.Font.Name := 'Segoe UI';
end;

procedure TfrmTemplate.FormCreate(Sender: TObject);
begin
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
