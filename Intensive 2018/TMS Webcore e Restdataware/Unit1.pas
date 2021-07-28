unit Unit1;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.StdCtrls, WEBLib.StdCtrls, Vcl.Controls,
  WEBLib.DBCtrls, Data.DB, WEBLib.CDS, WEBLib.DB;

type
  TForm2 = class(TWebForm)
    WebDBEdit1: TWebDBEdit;
    WebDBEdit2: TWebDBEdit;
    WebDBEdit3: TWebDBEdit;
    WebDBEdit4: TWebDBEdit;
    WebLabel1: TWebLabel;
    WebLabel2: TWebLabel;
    WebLabel3: TWebLabel;
    WebLabel4: TWebLabel;
    WebLabel5: TWebLabel;
    WebLabel6: TWebLabel;
    WebLabel7: TWebLabel;
    WebDBMemo1: TWebDBMemo;
    WebDBNavigator1: TWebDBNavigator;
    btnConectar: TWebButton;
    WebClientConnection1: TWebClientConnection;
    WebClientDataSet1: TWebClientDataSet;
    WebDataSource1: TWebDataSource;
    WebDBLabel1: TWebDBLabel;
    WebDBSpinEdit1: TWebDBSpinEdit;
    procedure btnConectarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnConectarClick(Sender: TObject);
begin
  WebClientConnection1.URI := 'http://www.tmssoftware.biz/tmsweb/fishfacti.json';
  WebClientConnection1.DataNode := 'ROW';
  with WebClientDataSet1.FieldDefs do begin
    Clear;
    Add('_Species_No', ftString, 5);
    Add('_Category', ftString, 50);
    Add('_Common_Name', ftString, 50);
    Add('_Species_Name', ftString, 30);
    Add('_Length__cm_', ftInteger);
    Add('_Length_In', ftString);
    Add('_Notes', ftString, 500);
  end;
  try
    WebClientConnection1.Active := true;
  except
    on e: Exception do
      ShowMessage(e.ToString);
  end;
end;

end.
