unit controller_PapelTesoura;

interface

uses
  ClasseTesoura, ClassePapel, System.Bindings.Helper, System.Bindings.Expression;

Type
  TControllerTesouraPapel = class
    private
    FTesoura: TTesoura;
    FPapel: TPapel;
    FBindings: TBindingExpression;
    procedure SetPapel(const Value: TPapel);
    procedure SetTesoura(const Value: TTesoura);
    public
      constructor Create;
      destructor Destroy; override;
      property Tesoura : TTesoura read FTesoura write SetTesoura;
      property Papel: TPapel read FPapel write SetPapel;
  end;

implementation

{ TControllerTesouraPapel }

constructor TControllerTesouraPapel.Create;
begin
  FTesoura := TTesoura.Create;
  FPapel := TPapel.Create;
  FBindings := TBindings.CreateManagedBinding(
    {input}
    [TBindings.CreateAssociationScope([Associate(FTesoura, 'tesoura')])],
    'tesoura.cortar',
    {output}
    [TBindings.CreateAssociationScope([Associate(FPapel, 'papel')])],
    'papel.cortado',
    nil // Conversor caso necessário.
  );
end;

destructor TControllerTesouraPapel.Destroy;
begin
  FTesoura.Free;
  FPapel.Free;
  FBindings.Free;
  inherited;
end;

procedure TControllerTesouraPapel.SetPapel(const Value: TPapel);
begin
  FPapel := Value;
end;

procedure TControllerTesouraPapel.SetTesoura(const Value: TTesoura);
begin
  FTesoura := Value;
end;

end.
