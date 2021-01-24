unit controller_Fornecedor;

interface

uses
  FMX.Forms, model_PermissoesFornecedor, FMX.StdCtrls, System.Bindings.Helper, System.Bindings.Expression;

Type
  TControlerFornecedor = class
    private
      FForm : TForm;
      FPermissoes : TPermissoesFornecedor;
      FBInserir: TButton;
      FBAlterar: TButton;
      FBExcluir: TButton;
      FBConsultar: TButton;
      FBindings: TBindingExpression;
      procedure FormShow(Sender: TObject);
    public
      constructor Create;
      destructor Destroy; override;
  end;

implementation

uses
  view_Fornecedor;

{ TControlerFornecedor }

constructor TControlerFornecedor.Create;
begin
  Application.CreateForm(Tfrm_Fornecedor, FForm);
  try
    FForm.OnShow:= FormShow;
    FPermissoes := TPermissoesFornecedor.Create;
    FForm.ShowModal;
  finally
    FPermissoes.Free;
    FForm.FreeOnRelease;
    FBindings.Free;
  end;
end;

destructor TControlerFornecedor.Destroy;
begin

end;

procedure TControlerFornecedor.FormShow(Sender: TObject);
begin
  FBInserir:= TButton(FForm.FindComponent('btnincluir'));
  FBAlterar:= TButton(FForm.FindComponent('btnalterar'));
  FBExcluir:= TButton(FForm.FindComponent('btnexcluir'));
  FBConsultar:= TButton(FForm.FindComponent('btnconsultar'));

  TBindings.CreateManagedBinding(
    [ TBindings.CreateAssociationScope(
        [
          Associate(FPermissoes,'permissao')
        ]
      )
    ],'permissao.incluir',
    [
      tbindings.createassociationscope(
        [
          Associate(FBInserir, 'btnincluir')
        ]
      )
    ],'btnincluir.visible',
    nil, nil
  );
  TBindings.Notify(FBInserir, 'incluir');


  TBindings.CreateManagedBinding(
    [ TBindings.CreateAssociationScope(
        [
          Associate(FPermissoes,'permissao')
        ]
      )
    ],'permissao.alterar',
    [
      tbindings.createassociationscope(
        [
          Associate(FBAlterar, 'btnalterar')
        ]
      )
    ],'btnalterar.visible',
    nil, nil
  );
  TBindings.Notify(FBAlterar, 'alterar');


  TBindings.CreateManagedBinding(
    [ TBindings.CreateAssociationScope(
        [
          Associate(FPermissoes,'permissao')
        ]
      )
    ],'permissao.excluir',
    [
      tbindings.createassociationscope(
        [
          Associate(FBExcluir, 'btnexcluir')
        ]
      )
    ],'btnexcluir.visible',
    nil, nil
  );
  TBindings.Notify(FBExcluir, 'excluir');


  FBindings := TBindings.CreateManagedBinding(
    [ TBindings.CreateAssociationScope(
        [
          Associate(FPermissoes,'permissao')
        ]
      )
    ],'permissao.consultar',
    [
      tbindings.createassociationscope(
        [
          Associate(FBConsultar, 'btnconsultar')
        ]
      )
    ],'btnconsultar.visible',
    nil, nil
  );
  TBindings.Notify(FBConsultar, 'consultar');

end;

end.
