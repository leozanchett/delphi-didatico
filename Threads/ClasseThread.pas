unit ClasseThread;

interface

uses
  Classes, SysUtils;

type
  TprintThread = class(TThread)
  private
    Index: Integer;
  protected
    procedure Execute; override;
    procedure Print;
  public
    constructor Create(Value: Integer);
    // Novo construtor: passa parâmetro na criação
  end;

implementation

uses
  Graphics, Unit1;

// Implementa passagem de parâmetro para inicializar a thread
constructor TprintThread.Create(Value: Integer);
begin
  Index := Value;
  inherited Create(False); // Cria thread: suspenso = Falso
end;

Procedure TprintThread.Print;
var
  strIndex: string;
begin
  strIndex := IntToStr(Index);
  Form1.ListBox1.Items.Add(strIndex);
end;

Procedure TprintThread.Execute;
var
  i: Integer;
begin
  for i := 1 to 1000 do
    Synchronize(Print);
end;

end.
