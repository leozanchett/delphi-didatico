unit DUp20.Server.Model.Entidades.Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  WiRL.Data.FireDAC.DataModule,
  WiRL.Core.Attributes,
  WiRL.http.URL,
  WiRL.Core.Auth.Context;

type
  [Path('/produto')]
  TServerModelEntidadeProduto = class(TWiRLFDDataModuleResource)
    produto: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServerModelEntidadeProduto: TServerModelEntidadeProduto;

implementation

uses
  DUp20.Server.Model.Conexao,
  WiRL.Core.Registry;

{$R *.dfm}

initialization
  TWiRLResourceRegistry.Instance.RegisterResource<TServerModelEntidadeProduto>(
    function: TObject
    begin
      Result := TServerModelEntidadeProduto.Create(nil);
    end
  );


end.

