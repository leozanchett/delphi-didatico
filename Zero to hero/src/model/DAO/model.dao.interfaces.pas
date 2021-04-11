unit model.dao.interfaces;

interface

uses
  Data.DB;

type
  iDAOInterface = interface
    ['{7704D8A3-A863-4D95-B7A2-1EB2D676F985}']
    function Get: iDAOInterface;
    function Post: iDAOInterface;
    function Put: iDAOInterface;
    function Delete: iDAOInterface;
    function DataSource(_AValue:  TDataSource): iDAOInterface;
    function DataSet: TDataSet;
  end;

implementation

end.
