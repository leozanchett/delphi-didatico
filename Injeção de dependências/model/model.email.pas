unit model.email;

interface

uses
  model.interfaces;

type
  TEmail<T: iInterface> = class(TInterfacedObject, iEmail<T>)
    private
      FEmail: String;
      [WeakAttribute]
      FParent: T;
    public
      function Email(_AEmail: String): iEmail<T>; overload;
      function Email: String; overload;
      class function New(const _AParent: T): iEmail<T>;
      constructor Create(_AParent: T);
      destructor Destroy; override;
      function &End: T;
  end;

implementation

{ TEmail<T> }

function TEmail<T>.&End: T;
begin
   Result := FParent;
end;

constructor TEmail<T>.Create(_AParent: T);
begin
  FParent := _AParent;
end;

destructor TEmail<T>.Destroy;
begin

  inherited;
end;

function TEmail<T>.Email: String;
begin
   Result := FEmail;
end;

class function TEmail<T>.New(const _AParent: T): iEmail<T>;
begin
  Result := Self.Create(_AParent);
end;

function TEmail<T>.Email(_AEmail: String): iEmail<T>;
begin
  Result := Self;
  FEmail := _AEmail;
end;

end.
