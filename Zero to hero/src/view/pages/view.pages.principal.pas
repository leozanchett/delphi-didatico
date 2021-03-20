unit view.pages.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Router4d.Interfaces;

type
  TpgPrincipal = class(TForm, iRouter4DComponent)
    Panel1: TPanel;
    Label1: TLabel;
  private
    { Private declarations }
  public
    function Render: TForm;
    procedure UnRender;
    { Public declarations }
  end;

var
  pgPrincipal: TpgPrincipal;

implementation

{$R *.dfm}

{ TpgPrincipal }

function TpgPrincipal.Render: TForm;
begin
  Result := self;
  Panel1.Color := $00322f2d;
end;

procedure TpgPrincipal.UnRender;
begin

end;

end.
