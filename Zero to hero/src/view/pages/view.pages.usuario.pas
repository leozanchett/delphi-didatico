unit view.pages.usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.pages.form.template, Vcl.ExtCtrls,
  Vcl.StdCtrls, System.ImageList, Vcl.ImgList, Vcl.Buttons, Bind4D, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.StorageBin, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids,
  Vcl.DBGrids;

type
  [FormRest('/users','guuid','name', 'asc')]
  [FormDefault('Cadastro de usuários')]
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
