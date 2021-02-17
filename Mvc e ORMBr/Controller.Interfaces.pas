unit Controller.Interfaces;

interface

uses
  Model.Interfaces, Controller.Observer.Interfaces;

type
  IControllerItem = interface;

  IControllerVenda = interface
    ['{94F97FC5-8D7C-46D8-A41A-FA82FCD7B2C7}']
    function Item: IControllerItem;
    function Model: IModelVenda;
    function ObserverItem: iSubjectItem;
  end;

  IControllerItem = interface
    ['{3D632E98-DA59-4EBB-A027-47D2D9680E19}']
    function Codigo(_Acodigo: Integer): IControllerItem;
    function Vender: IControllerItem;
    function &End: IControllerVenda;
  end;

implementation

end.
