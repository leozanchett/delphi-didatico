unit frmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls;


type
  TProduto = record
    Valor: Integer;
    Nome: String;
    class operator Add(a, b: TProduto): TProduto;
    class operator Explicit(a: String): TProduto;
    class operator Implicit(a: Variant): TProduto;
    class operator Positive(a: TProduto): Integer;
    class operator Negative(a: TProduto): Integer;
    class operator Inc(a: TProduto) : Tproduto;
    class operator Equal(a: TProduto; b: Integer) : Boolean;
  end;

type
  Tview_formPrincipal = class(TForm)
    btnAdd: TButton;
    btnImplicit: TButton;
    btnPositiveNegative: TButton;
    btnInc: TButton;
    btnEqual: TButton;
    procedure btnAddClick(Sender: TObject);
    procedure btnImplicitClick(Sender: TObject);
    procedure btnPositiveNegativeClick(Sender: TObject);
    procedure btnIncClick(Sender: TObject);
    procedure btnEqualClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  view_formPrincipal: Tview_formPrincipal;

implementation

{$R *.fmx}

procedure Tview_formPrincipal.btnAddClick(Sender: TObject);
var
  a, b, c: TProduto;
begin
  a.Valor := 10;
  b.Valor := 20;
  c := a + b;

  ShowMessage(C.Valor.ToString);
end;

{ TProduto }

class operator TProduto.Add(a, b: TProduto): TProduto;
begin
  Result.Valor := a.Valor + b.Valor;
end;

procedure Tview_formPrincipal.btnEqualClick(Sender: TObject);
var
  AProd: TProduto;
begin
  Aprod := 15;
  ShowMessage(BoolToStr(AProd = 16));
end;

procedure Tview_formPrincipal.btnImplicitClick(Sender: TObject);
var
  a: TProduto;
begin
  a := '30';
  ShowMessage(a.Valor.ToString);
end;

procedure Tview_formPrincipal.btnIncClick(Sender: TObject);
var
  Aprod: TProduto;
begin
  AProd := 10;
  inc(AProd);
  ShowMessage(Aprod.Valor.ToString);
end;

procedure Tview_formPrincipal.btnPositiveNegativeClick(Sender: TObject);
var
  Aprod: TProduto;
begin
  Aprod := 10;
  //Aprod := -AProd;
  Aprod := (+Aprod) + (+AProd);
  ShowMessage(intToStr(Aprod.Valor));
end;

class operator TProduto.Equal(a: TProduto; b: Integer) : Boolean;
begin
  result := a.Valor = b;
end;

class operator TProduto.Explicit(a: String): TProduto;
begin
  Result.Valor := a.ToInteger;
end;

class operator TProduto.Implicit(a: Variant): TProduto;
begin
  Result.Valor := a;
end;

class operator TProduto.Inc(a: TProduto) : Tproduto;
begin
  Result.Valor := a.Valor + 10;
end;

class operator TProduto.Negative(a: TProduto): Integer;
begin
  Result:= a.Valor - 1;
end;

class operator TProduto.Positive(a: TProduto): Integer;
begin
  Result:= a.Valor + 1;
end;

end.
