unit view.pages.usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Router4d.Interfaces;

type
  TpgUsuario = class(TForm, iRouter4DComponent)
    Panel1: TPanel;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    function Render: TForm;
    procedure UnRender;
  end;

var
  pgUsuario: TpgUsuario;

implementation

{$R *.dfm}

{ TpgUsuario }

function TpgUsuario.Render: TForm;
begin
  Result := Self;
  Panel1.Color := $00322f2d;
end;

procedure TpgUsuario.UnRender;
begin

end;

end.
