unit ClasseGarrafa;

interface

type
  TGarrafa = class
  public
    Cor: String;
    Modelo: String;
    Tampa: String;
    Teste: String;
    procedure AmazenarLiquido(Liquido: String);
  end;

implementation

{ TLapis }

procedure TGarrafa.AmazenarLiquido(Liquido: String);
begin
  Cor := Liquido;
end;

end.
