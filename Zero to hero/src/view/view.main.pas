unit view.main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  view.styles.colors, Vcl.Buttons;

type
  TfrmPrincipal = class(TForm)
    pnlMain: TPanel;
    pnlMenu: TPanel;
    pnlFull: TPanel;
    pnlTop: TPanel;
    pnlPrincipal: TPanel;
    pnlLogo: TPanel;
    rgTema: TRadioGroup;
    spbUsuarios: TSpeedButton;
    spbPrincipal: TSpeedButton;
    procedure rgTemaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure MontarTema(_ATipoTema: TTema);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation


{$R *.dfm}

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  MontarTema(tyClaro);
end;

procedure TfrmPrincipal.MontarTema(_ATipoTema: TTema);
var
  AEstilos : Estilos;
begin
   AEstilos := TStyles.Theme(_ATipoTema);
   pnlPrincipal.Color := AEstilos.COLOR_BACKGROUND;
   pnlTop.Color := AEstilos.COLOR_BACKGROUND_TOP;
   pnlLogo.Color := AEstilos.COLOR_BACKGROUND_DESTAK;
   pnlMenu.Color := AEstilos.COLOR_BACKGROUND_MENU;
   Font.Color := AEstilos.FONT_COLOR;
   Font.Size := FONT_H6;
end;

procedure TfrmPrincipal.rgTemaClick(Sender: TObject);
begin
  case rgTema.ItemIndex of
    0: MontarTema(tyClaro);
    1: MontarTema(tyEscuro);
  end;
end;

end.
