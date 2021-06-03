unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ClassGenerica;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  System.Rtti;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  AButton: TKeyValue<TButton>;
begin
  AButton.Key := Tbutton(Sender).Name;
  AButton.Value := Sender as TButton;
end;

procedure TForm1.Button2Click(Sender: TObject);
type
  TKeyInteger = TKeyValue<Integer>;
var
  AKeyInt: TKeyInteger;
begin
  AKeyInt := TKeyInteger.Create;
  try
    AKeyInt.Key := 'Key';
    AKeyInt.Value := 100;
    AKeyInt.Value := Left;
    ShowMessage('[' + AKeyInt.Key + ',' + IntToStr(AKeyInt.Value)+']');
  finally
    AKeyInt.Free;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  context: TRttiContext;
  aType: TRttiType;
  aProperty: TRttiProperty;
  aValue: TValue;
  aField: TRttiField;
  btn: TButton absolute Sender;
begin
  aType := context.GetType(TButton);
  aProperty := aType.GetProperty('Caption');
  aValue := aProperty.GetValue(btn);
  ShowMessage(aValue.ToString);

  aField := aType.GetField('FDesignInfo');
  aValue := aField.GetValue(btn);
  ShowMessage(aValue.AsInteger.ToString);
end;

end.
