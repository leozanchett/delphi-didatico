unit Unit4;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Effects, FMX.Filter.Effects, FMX.Ani;

type
  TForm4 = class(TForm)
    Image1: TImage;
    MagnifyTransitionEffect1: TMagnifyTransitionEffect;
    FloatAnimation1: TFloatAnimation;
    RippleTransitionEffect1: TRippleTransitionEffect;
    Rectangle1: TRectangle;
    SwipeTransitionEffect1: TSwipeTransitionEffect;
    FloatAnimation2: TFloatAnimation;
    WaveTransitionEffect1: TWaveTransitionEffect;
    Image2: TImage;
    WaterTransitionEffect1: TWaterTransitionEffect;
    FloatAnimation3: TFloatAnimation;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.fmx}

end.
