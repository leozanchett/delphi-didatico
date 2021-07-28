unit Unit2;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.Controls, WEBLib.ExtCtrls, Vcl.StdCtrls,
  WEBLib.StdCtrls, WEBLib.REST;

type
  TForm2 = class(TWebForm)
    WebPanel1: TWebPanel;
    WebHttpRequest1: TWebHttpRequest;
    WebListBox1: TWebListBox;
    WebButton1: TWebButton;
    procedure WebButton1Click(Sender: TObject);
    procedure WebHttpRequest1Response(Sender: TObject; AResponse: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  WEBLib.JSON;

{$R *.dfm}

procedure TForm2.WebButton1Click(Sender: TObject);
begin
  WebHttpRequest1.URL := 'https://jsonplaceholder.typicode.com/albums';
  WebHttpRequest1.Execute;
end;

procedure TForm2.WebHttpRequest1Response(Sender: TObject; AResponse: string);
var
  AJS: TJSON;
  AJSONArray: TJSONArray;
  AJSONObj: TJSONObject;
  AJSONValue: TJSONValue;
  i: integer;
begin
  AJS := TJSON.Create;
  try
    AJSONArray := TJSONArray(AJS.Parse(AResponse));
    ShowMessage('Items na response: '+IntToStr(AJSONArray.Count));
    for I := 0 to Pred(AJSONArray.Count) do begin
      AJSONObj := AJSONArray.Items[i] as TJSONObject;
      WebListBox1.Items.Add(AJSONObj.GetJSONValue('title')+sLineBreak);
    end;
  finally
    AJS.Free;
  end;
end;

end.