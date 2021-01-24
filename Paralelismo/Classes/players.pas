unit players;

interface

uses
  System.Threading;

type
  TAcao = ( Atacar, Defender, Critico);

type
  TPlayer = class
    Nome: String;
    Hp: Single;
    Acao: IFuture<TAcao>;
    PontosAcao: Single;
    Speed: Integer;
    constructor create;
    destructor destroy; override;
  end;

implementation



{ TPlayer }

constructor TPlayer.create;
begin

end;

destructor TPlayer.destroy;
begin

  inherited;
end;

end.
