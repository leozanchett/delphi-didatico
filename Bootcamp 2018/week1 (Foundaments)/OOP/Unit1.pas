unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Actions,
  Vcl.ActnList, ClassDates, Vcl.ExtCtrls, Vcl.WinXPanels;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    Button3: TButton;
    lblDate: TLabel;
    Panel1: TPanel;
    StackPanel1: TStackPanel;
    btnAdd: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    FDay: TNewDate;
    procedure SetMemo(const _AValue: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  DateUtils, ClassPerson;



{$R *.dfm}

procedure TForm1.btnAddClick(Sender: TObject);
begin
  FDay.Increase(10);
  lblDate.Caption :=  FDay.GetText;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Memo1.Clear;
  //use
  FDay.Increase(10);
  if FDay.LeapYear then
    SetMemo('Leap Year: '+FDay.GetText)
  else
    SetMemo('Not a leap year: '+FDay.GetText);
  lblDate.Caption := Memo1.Lines.Text;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Memo1.Clear;
  FDay.Increase(10);
  if FDay.LeapYear then
    SetMemo('Leap Year '+ FDay.GetText)
  else
    SetMemo('Not a leap year' +FDay.GetText);
  lblDate.Caption := Memo1.Lines.Text;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  APerson : TPerson;
begin
   APerson := TPerson.Create('Leo');
   SetMemo(APerson.Info);
   APerson.Free;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  FDay.Decrease(10);
  lblDate.Caption := FDay.GetText;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FDay);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FDay := TNewDate.Create;
  lblDate.Caption := FDay.GetText;
end;

procedure TForm1.SetMemo(const _AValue: String);
begin
  Memo1.lines.Add(_AValue);
end;

end.
