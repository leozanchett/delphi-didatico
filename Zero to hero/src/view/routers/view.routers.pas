unit view.routers;

interface

type
  TRouters = class
    private
    public
      constructor Create;
      destructor Destroy; override;
  end;

var
  Router : TRouters;

implementation

uses
  Router4D, view.pages.principal, view.pages.usuario;

{ TRouters }

constructor TRouters.Create;
begin
   TRouter4D.Switch.Router('Principal', TpgPrincipal).Router('Usuarios', TpgUsuario);
end;

destructor TRouters.Destroy;
begin

  inherited;
end;


initialization
  Router := TRouters.Create;

finalization
  Router.Free;

end.
