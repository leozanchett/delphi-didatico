unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.Edit, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects;

type
  TForm2 = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    Button1: TButton;
    Edit1: TEdit;
    Rectangle1: TRectangle;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

procedure TForm2.Button1Click(Sender: TObject);
begin
  TabControl1.SetActiveTabWithTransition(TabItem2, TTabTransition.Slide);
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  TabControl1.SetActiveTabWithTransition(TabItem1, TTabTransition.Slide, TTabTransitionDirection.Reversed);
end;

end.
