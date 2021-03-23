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
    procedure spbPrincipalClick(Sender: TObject);
    procedure spbUsuariosClick(Sender: TObject);
  private
    procedure MontarTema(_ATipoTema: TTema);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  Router4D, view.pages.principal;

{$R *.dfm}

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  MontarTema(tyEscuro);
  TRouter4D.Render<TpgPrincipal>.SetElement(pnlPrincipal, pnlMain);
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
   rgTema.Color := pnlPrincipal.Color;
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

procedure TfrmPrincipal.spbPrincipalClick(Sender: TObject);
begin
  TRouter4D.Link.&To('Principal');
end;

procedure TfrmPrincipal.spbUsuariosClick(Sender: TObject);
begin
  TRouter4D.Link.&To('Usuarios');
end;

end.
