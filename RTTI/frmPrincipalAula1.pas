unit frmPrincipalAula1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Pessoa;



type
  TForm2 = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Button1: TButton;
    Memo4: TMemo;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    FPessoa: TPessoa;
    function CalculaDiferenca(_AValor1, _AValor2: Single): Single;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  System.RTTI, System.Math;


{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
  ctx : TRTTIContext;
  typRtti : TRTTIType;
  methodRTTi: TRTTIMethod;
  fieldsRtti : TRTTiField;
  propertyRtti : TRttiProperty;
begin
  ctx := TRttiContext.Create;
  try
    typRtti := ctx.GetType(TForm2);
    for methodRTTi in typRtti.GetMethods do begin
      Memo1.Lines.Add(methodRTTi.Name);
    end;

    for fieldsRtti in typRtti.GetFields do begin
      Memo2.Lines.Add(fieldsRtti.Name);
    end;

    for propertyRtti in typRtti.GetProperties do begin
      Memo3.Lines.Add(propertyRtti.Name);
    end;
  finally
    FreeAndNil(ctx);
  end;
end;



procedure TForm2.Button2Click(Sender: TObject);
var 
  AcontextoRTTI : TRttiContext;
  ATypeRTTI: TRttiType;
  APropRtti : TRttiProperty;
begin
  AcontextoRTTI := TRttiContext.Create;
  try                     
    ATypeRTTI := AcontextoRTTI.GetType(FPessoa.ClassType);
    for APropRtti in ATypeRTTI.GetProperties do begin
      // ADataSet.FieldByName(APropRtti.Name).Value := APropRtti.GetValue(FPessoa)
      Memo4.Lines.Add(concat(APropRtti.Name,': ',APropRtti.GetValue(FPessoa).ToString));
    end;
  finally
    AcontextoRTTI.Free;
  end;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  FPessoa := TPessoa.Create;
end;

function TForm2.CalculaDiferenca(_AValor1, _AValor2: Single): Single;
begin
  result := Max(_AValor1, _AValor2) - Min(_AValor1, _AValor2);
end;

end.
