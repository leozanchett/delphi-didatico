unit ClasseTesoura;

interface

Type
  TTesoura = class
    private
    FCortar: Boolean;
    procedure SetCortar(const Value: Boolean);
    public
      property cortar: Boolean read FCortar write SetCortar;
  end;

implementation

{ TTesoura }

procedure TTesoura.SetCortar(const Value: Boolean);
begin
  FCortar := Value;
end;

end.
