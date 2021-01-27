unit frmPrincipalAula5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Pessoa;

type
  TForm2 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses RttiUteis;

procedure TForm2.FormCreate(Sender: TObject);
begin
  TRttiUteis.ClassToFormCreate<TPessoa>(Self);
end;

end.
