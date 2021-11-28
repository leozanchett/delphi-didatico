unit Unit1;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
   TForm1 = class(TForm)
      Button1: TButton;
      procedure Button1Click(Sender: TObject);
      procedure FormCreate(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

   TConstrClass<T: class, constructor> = class
   strict private
      FVal: T;
   public
      constructor Create;
      function Get: T;
      destructor Destroy; override;
   end;

   TDog = class
   public
      constructor Create;
      procedure Latir;
      destructor Destroy; override;
   end;

var
   Form1: TForm1;

implementation

{$R *.dfm}
{ TConstrClass<T> }

constructor TConstrClass<T>.Create;
begin
   FVal := T.Create;
end;

destructor TConstrClass<T>.Destroy;
begin
   if Assigned(FVal) then
      FreeAndNil(FVal);
   inherited;
end;

function TConstrClass<T>.Get: T;
begin
   Result := FVal;
end;

{ TDog }

constructor TDog.Create;
begin

end;

destructor TDog.Destroy;
begin
   inherited;
end;

procedure TDog.Latir;
begin
   ShowMessage('AU');
end;

procedure TForm1.Button1Click(Sender: TObject);
var
   AConstrClass: TConstrClass<TDog>;
begin
   AConstrClass := TConstrClass<TDog>.Create;
   AConstrClass.Get.Latir;
   FreeAndNil(AConstrClass);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   ReportMemoryLeaksOnShutdown := True;
end;

end.
