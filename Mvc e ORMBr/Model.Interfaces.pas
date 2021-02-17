unit Model.Interfaces;

interface

uses
  Controller.Observer.Interfaces;

type
  iModelItem = interface;

  iModelVenda = interface
    ['{F880236E-03C7-49C9-A4DF-BF5DD378DEE3}']
    function Item: iModelItem;
    function ObserverItem(_Aobserver: iSubjectItem): iModelVenda; overload;
    function ObserverItem: iSubjectItem; overload;
  end;

  iModelItem = interface
    ['{AC36108E-E4C7-44FD-AB3F-B5F78277247E}']
    function Codigo(_Acodigo: Integer): iModelItem;
    function Vender: iModelItem;
    function &End: iModelVenda;
  end;

implementation

end.
