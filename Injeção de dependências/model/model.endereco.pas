unit model.endereco;

interface

uses
  model.interfaces;

type
  // restrinjo meu endereço para ser apenas do tipo interface
  // porque preciso tipificar para conseguir utilizar o WEAK
  TEndereco<T: iInterface> = class(TInterfacedObject, iEndereco<T>)
    private
      // refêrencia fraca, não agrega na contagem de injeção de dependência dessa classe para
      // posteriormente ser limpo da memória.
      [Weak]
      FParent: T;
      FRua: String;
    public
      function Rua(_ANomeRua: String): iEndereco<T>; overload;
      function Rua: String; overload;
      function &End: T; // ao terminar de usar essa classe, posso utilizar os métodos da classe pai (dá classe que está implementado o endereço)
      constructor Create(_AParent: T);
      destructor Destroy; override;
      class function New(_AParent: T): iEndereco<T>;
  end;

implementation

{ TEndereco<T> }

constructor TEndereco<T>.Create(_AParent: T);
begin
  FParent := _AParent;
end;

destructor TEndereco<T>.Destroy;
begin

  inherited;
end;

function TEndereco<T>.&End: T;
begin
   Result := FParent;
end;

class function TEndereco<T>.New(_AParent: T): iEndereco<T>;
begin
  Result := Self.Create(_AParent);
end;

function TEndereco<T>.Rua(_ANomeRua: String): iEndereco<T>;
begin
  Result := Self;
  FRua := _ANomeRua;
end;

function TEndereco<T>.Rua: String;
begin
  Result := FRua;
end;

end.
