unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet, Redis.Client, Redis.netlib.INDY, Redis.Commons,
  Vcl.StdCtrls, FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Phys.FB;

type
  TForm3 = class(TForm)
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Button1: TButton;
    Memo1: TMemo;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
   FRedis: IRedisClient;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses
  Redis.Values;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var
   FDStream: TStringStream;
   Key: String;
   KeyRedis: TRedisString;
begin
   FDStream := TStringStream.Create;
   Key := 'select * from employee';
   try
      KeyRedis := TREdisString.Create(FRedis.GET(Key));
      if KeyRedis.HasValue then begin
         FDStream.WriteString(KeyRedis);
         FDStream.Position := 0;
         FDQuery1.LoadFromStream(FDStream, sfJSON);
         Memo1.Lines.Add('Resultado do cache');
      end else begin
         FDQuery1.Open(Key);
         FDQuery1.SaveToStream(FDStream, sfJSON);
         FDStream.Position := 0;
         FRedis.&SET(Key, FDStream.DataString);
         FRedis.EXPIRE(Key, 10);
         Memo1.Lines.Add('Resultado do banco');
      end;
   finally
      FreeAndNil(KeyRedis);
      FreeAndNil(FDStream);
   end;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
   FRedis := NewRedisClient;
end;

end.
