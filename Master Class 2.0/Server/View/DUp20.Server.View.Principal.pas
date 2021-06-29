unit DUp20.Server.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  WiRL.Core.Engine,
  WiRL.http.Server,
  WiRL.http.Server.Indy,
  WiRL.Core.Application;

type
  TForm5 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FServer: TWiRLServer;
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses
  WiRL.Core.MessageBodyWriter,
  WiRL.Core.MessageBody.Default,
  WiRL.Data.MessageBody.Default,
  WiRL.Data.FireDAC.MessageBody.Default;

procedure TForm5.FormCreate(Sender: TObject);
begin
  FServer := TWiRLServer.Create(nil);

  FServer
    .SetPort(8080)
    .AddEngine<TWiRLEngine>('/rest')
    .SetEngineName('DUp20Server Wirl')
    .AddApplication('/app')
      .SetAppName('DUp20Server')
      .SetResources('DUp20.Server.Model.Entidades.Produtos.TServerModelEntidadeProduto');

  if not FServer.Active then
    FServer.Active := True;
end;

end.
