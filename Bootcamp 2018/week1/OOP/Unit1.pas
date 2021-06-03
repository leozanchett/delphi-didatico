unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    procedure SetMemo(const _AValue: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  DateUtils, ClassDates, ClassPerson;



{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  ADay: TDate;
begin
  Memo1.Clear;

  ADay := TDate.Create; // hoje
  //use
  ADay.Increase;
  if ADay.LeapYear then
    SetMemo('Leap Year: '+ADay.GetText)
  else
    SetMemo('Not a leap year: '+ADay.GetText);
  //free
  ADay.Free;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  ADay: TDate;
begin
  ADay := TDate.Create(1,1,2016);

  ADay.Increase;

  if ADay.LeapYear then
    SetMemo('Leap Year '+ ADay.GetText);

  ADay.Free;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  APerson : TPerson;
begin
   APerson := TPerson.Create('Leo');
   SetMemo(APerson.Info);
   APerson.Free;
end;

procedure TForm1.SetMemo(const _AValue: String);
begin
  Memo1.lines.Add(_AValue);
end;

end.
