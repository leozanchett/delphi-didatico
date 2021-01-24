unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    btnInstanciarLapis: TButton;
    cmbClientePessoa: TComboBox;
    btnQuemSouEu: TButton;
    cmbAnimal: TComboBox;
    btnAnimal: TButton;
    procedure btnInstanciarLapisClick(Sender: TObject);
    procedure btnQuemSouEuClick(Sender: TObject);
    procedure btnAnimalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  ClasseGarrafa, ClassePessoa, ClasseCliente, ClasseFornecedor, ClasseAnimal;

{$R *.dfm}

procedure TForm2.btnAnimalClick(Sender: TObject);
var
  AAnimal: TAnimal;
begin
  case cmbAnimal.ItemIndex of
    0: AAnimal := TCachorro.Create;
    1: AAnimal := TGato.Create;
  end;
  try
    ShowMessage(AAnimal.Voz);
  finally
    FreeAndNil(AAnimal);
  end;
end;

procedure TForm2.btnInstanciarLapisClick(Sender: TObject);
var
  AMinhaGarrafa: TGarrafa;
begin
  AMinhaGarrafa := TGarrafa.create;
  try
    AMinhaGarrafa.Modelo := 'Vidro';
    ShowMessage(AMinhaGarrafa.Modelo);
  finally
    freeandnil(AMinhaGarrafa);
  end;
end;

procedure TForm2.btnQuemSouEuClick(Sender: TObject);
var
  Pessoa: TPessoa;
begin
    case cmbClientePessoa.ItemIndex of
      0: Pessoa := TCliente.Create;
      1: Pessoa := TFornecedor.Create;
    end;
    try
      ShowMessage(Pessoa.tipo);
    finally
      FreeAndNil(Pessoa);
    end;
end;

end.
