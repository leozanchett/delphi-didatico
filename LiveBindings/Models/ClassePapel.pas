unit ClassePapel;

interface

Type
  TPapel = class
  private
    FCortado: boolean;
    procedure SetCortado(const Value: boolean);
    public
      property cortado : boolean read FCortado write SetCortado;
  end;

implementation

{ TPapel }

procedure TPapel.SetCortado(const Value: boolean);
begin
  FCortado := Value;
end;

end.
