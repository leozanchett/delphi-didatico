unit frmTToolbareMultView;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.MultiView;

type
  TForm6 = class(TForm)
    ToolBar1: TToolBar;
    TitleText: TText;
    Button1: TButton;
    Button2: TButton;
    MultiView1: TMultiView;
    Rectangle1: TRectangle;
    Circle1: TCircle;
    detailRectangle: TRectangle;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.fmx}

end.
