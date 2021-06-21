unit ShapeComponents;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Ani;

type
  TForm1 = class(TForm)
    Rectangle1: TRectangle;
    Ellipse1: TEllipse;
    Arc1: TArc;
    Circle1: TCircle;
    FloatAnimation1: TFloatAnimation;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

end.
