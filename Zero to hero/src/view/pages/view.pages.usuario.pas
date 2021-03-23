unit view.pages.usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.pages.form.template, Vcl.ExtCtrls,
  Vcl.StdCtrls, System.ImageList, Vcl.ImgList, Vcl.Buttons, Bind4D;

type
  [FormRest('/users','id','Cadastro de Usuários', 'asc')]
  TpgUsuario = class(TfrmTemplate)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  pgUsuario: TpgUsuario;

implementation

{$R *.dfm}

end.
