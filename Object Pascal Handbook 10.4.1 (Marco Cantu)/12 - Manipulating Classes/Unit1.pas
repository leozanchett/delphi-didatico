unit Unit1;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
   TForm1 = class(TForm)
    procedure FormShow(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

   TMyObject = class
   protected
      Value: Integer;
      Text: string;
   public
      procedure Increase;
      constructor Create;
      destructor Destroy; override;
      
   end;

   TMyObjectHelper = class helper for TMyObject
   public
      procedure Show;
   end;

var
   Form1: TForm1;

implementation

{$R *.dfm}
{ TMyClass }

constructor TMyObject.Create;
begin

end;

destructor TMyObject.Destroy;
begin

  inherited;
end;

procedure TMyObject.Increase;
begin

end;

{ TMyObjectHelper }

procedure TMyObjectHelper.Show;
begin
   ShowMessage(Text + ' ' + IntToStr(Value) + ' -- ' + ClassName + ' -- ' +  ToString);
end;

procedure TForm1.FormShow(Sender: TObject);
var
   ATeste: TMyObject;
begin
   ATeste := TMyObject.Create;
   ATeste.Show;
   ATeste.Free;
end;

end.
