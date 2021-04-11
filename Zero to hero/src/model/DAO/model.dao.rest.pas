unit model.dao.rest;

interface

uses
  model.dao.interfaces, Data.DB, FireDAC.Comp.Client, Vcl.Forms;

const
  BASEURL = 'http://localhost:9000';
  ACCEPT = 'application/json';
type
  TDAOREST = class(TInterfacedObject, iDAOInterface)
    private
      FDMemTable: TFDMemTable;
      FForm: TForm;
      FEndpoint: String;
      FPK: String;
      FSort: String;
      FOrder: String;
      function PrepareGuuid(_AGuuid: String): String;
    public
      constructor Create(_AForm: TForm);
      destructor Destroy; override;
      class function New(_AForm: TForm): iDAOInterface;
      function Get: iDAOInterface;
      function Post: iDAOInterface;
      function Put: iDAOInterface;
      function Delete: iDAOInterface;
      function DataSource(_AValue:  TDataSource): iDAOInterface;
      function DataSet: TDataSet;
  end;

implementation

uses
  RESTRequest4D, Bind4D, System.SysUtils, System.JSON, Bind4D.Types;

{ TDAOREST }

constructor TDAOREST.Create(_AForm: TForm);
begin
  FDMemTable := TFDMemTable.Create(_AForm);
  FForm := _AForm;
  TBind4D.New.Form(FForm).BindFormRest(FEndpoint, FPK, FSort, FOrder);
end;

function TDAOREST.DataSet: TDataSet;
begin
  Result := FDMemTable;
end;

function TDAOREST.DataSource(_AValue: TDataSource): iDAOInterface;
begin
  Result := Self;
  _AValue.DataSet := FDMemTable;
end;

function TDAOREST.Delete: iDAOInterface;
begin
   TRequest.New.BaseURL(concat(BASEURL, FEndpoint, '/', PrepareGuuid(FDMemTable.FieldByName(FPK).AsString))).Accept(ACCEPT).Delete;
   Result := Self;
end;

destructor TDAOREST.Destroy;
begin
   FDMemTable.Free;
  inherited;
end;

function TDAOREST.Get: iDAOInterface;
begin
    TRequest.New.BaseURL(Concat(BASEURL, FEndpoint))
    .Accept('application/json')
    .DataSetAdapter(FDMemTable)
    .Get;
end;

class function TDAOREST.New(_AForm: TForm): iDAOInterface;
begin
  Result := Self.Create(_AForm);
end;

function TDAOREST.Post: iDAOInterface;
var
  AJson: TJSONObject;
begin
  Result := Self;
  // transforma o form em um json, utilizando o bind4D
  AJson := TBind4D.New.Form(FForm).FormToJson(fbPost);
  try
    TRequest.New.BaseURL(Concat(BASEURL, FEndpoint)).AcceptEncoding(ACCEPT).AddBody(AJson.ToJSON).Post;
  finally
    FreeAndNil(AJson);
  end;
end;

function TDAOREST.PrepareGuuid(_AGuuid: String): String;
begin
  Result := _AGuuid.Replace('{', EmptyStr, [rfReplaceAll]).Replace('}', EmptyStr, [rfReplaceAll]);
end;

function TDAOREST.Put: iDAOInterface;
begin

end;


end.
