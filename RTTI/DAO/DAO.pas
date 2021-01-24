unit DAO;

interface

type
  iDAO = interface
    ['{F7AE1E0E-7F43-4384-8444-4AF2EE8B76C7}']
    procedure Salvar;
  end;

  TDao<T: Class> = class(TInterfacedObject, iDAO)
    private
      FParent: T;
    public
      constructor Create(_AParent: T);
      destructor Destroy; override;
      class function New(_Aparent: T): iDAO;
      procedure Salvar;
  end;

implementation

uses
  RttiUteis;

{ TDao<T> }

constructor TDao<T>.Create(_AParent: T);
begin
   FParent := _AParent;
end;

destructor TDao<T>.Destroy;
begin

  inherited;
end;

class function TDao<T>.New(_Aparent: T): iDAO;
begin
  Result := Self.Create(_Aparent);
end;

procedure TDao<T>.Salvar;
begin
  TRttiUteis.ValidarCampos(FParent);
end;

end.
