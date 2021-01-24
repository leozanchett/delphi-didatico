unit ClasseAnimal;

interface

Type
  TAnimal = class
    function Voz: String; virtual; abstract;
  end;

  TCachorro = class(TAnimal)
    function Voz: String; override;
  end;

  TGato = class(TAnimal)
    function Voz: String; override;
  end;

implementation

{ TCachorro }

function TCachorro.Voz: String;
begin
  Result := 'Au au';
end;

{ TGato }

function TGato.Voz: String;
begin
  Result := 'Miau';
end;

end.
