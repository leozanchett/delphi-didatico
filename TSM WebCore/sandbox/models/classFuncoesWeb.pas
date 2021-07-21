unit classFuncoesWeb;

interface

uses
  Vcl.Forms;


type
  TFuncoesWeb = class
    class procedure AbrirNovaPagina(_AUnitNovaPag: TFormClass);
  end;

implementation

uses
  System.SysUtils;

{ TFuncoesWeb }

class procedure TFuncoesWeb.AbrirNovaPagina(_AUnitNovaPag: TFormClass);
var
 frm: TForm;

  procedure FormCreated(AForm: TObject);
  begin
  (AForm as TForm).Show;
  end;

begin
  if Uppercase(Application.ActiveForm.ClassName) <> Uppercase(_AUnitNovaPag.ClassName) then begin
    Application.CreateForm(_AUnitNovaPag, 'body', frm, @FormCreated);
  end;
end;

end.
