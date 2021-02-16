unit Model.Interfaces;

interface

type
  iModelItem = interface;

  iModelVenda = interface
    ['{F880236E-03C7-49C9-A4DF-BF5DD378DEE3}']
    function Item: iModelItem;
  end;

  iModelItem = interface
    ['{AC36108E-E4C7-44FD-AB3F-B5F78277247E}']
    function Codigo(_Acodigo: Integer): iModelItem;
    function Vender: iModelItem;
    function &End: iModelItem;
  end;

implementation

end.
