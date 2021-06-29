unit DUp20.Controller;

interface

uses
  Dup20.Model.Entidades.Factory, DUp20.Controller.Interfaces,
  DUp20.Model.Entidades.Interfaces;

Type
  TController = class(TInterfacedObject, iController)
    private
      FModelEntidades : iModelEntidadeFactory;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iController;
      function Entidades : iModelEntidadeFactory;
  end;

implementation

uses
  System.SysUtils;

{ TController }

constructor TController.Create;
begin
  FModelEntidades := TModelEntidadesFactory.New;
end;

destructor TController.Destroy;
begin
  inherited;
end;

function TController.Entidades: iModelEntidadeFactory;
begin
  Result := FModelEntidades;
end;

class function TController.New: iController;
begin
  Result := Self.Create;
end;

end.
