unit Controller.Item;

interface

uses
  Controller.Interfaces;
  type
    TControllerItem = class(TInterfacedObject, iControllerItem)
      private
         //[WEAK] - Dizendo ao compilador para não incrementar o contador de refêrencia
         // ou seja, a partir do momento que esse objeto entrar em uma lista, o compilador
         // vai apontar para primeira refência desse objeto novamente,
         // garantindo assim que não haja vazamento de memória
         // um exemplo clássico é uma lista de objetos.
        [weak]
        FParent: IControllerVenda;
        FCodigo: Integer;
      public
        constructor Create(_AParent: IControllerVenda);
        destructor Destroy; override;
        class function New(_AParent: IControllerVenda): iControllerItem;
        function Codigo(_Acodigo: Integer): IControllerItem;
        function Vender: IControllerItem;
        function &End: IControllerItem;
    end;

implementation

{ TControllerItem }

function TControllerItem.Codigo(_Acodigo: Integer): IControllerItem;
begin
   FCodigo := _Acodigo;
   Result := self;
end;

function TControllerItem.&End: IControllerItem;
begin
  Result := FParent;

end;

constructor TControllerItem.Create(_AParent: IControllerVenda);
begin
  //02 - Injeção de dependência.
  FParent := _AParent;
end;

destructor TControllerItem.Destroy;
begin

  inherited;
end;

class function TControllerItem.New(_AParent: IControllerVenda): iControllerItem;
begin
  //01 - Injeção de dependência.
  Result := Self.Create(_AParent);
end;

function TControllerItem.Vender: IControllerItem;
begin
   Result := Self;
end;

end.
