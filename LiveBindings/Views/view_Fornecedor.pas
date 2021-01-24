unit view_Fornecedor;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  Tfrm_Fornecedor = class(TForm)
    btnincluir: TButton;
    btnconsultar: TButton;
    btnexcluir: TButton;
    btnalterar: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Fornecedor: Tfrm_Fornecedor;

implementation

uses
  model_PermissoesFornecedor, controller_Fornecedor;

{$R *.fmx}

end.
