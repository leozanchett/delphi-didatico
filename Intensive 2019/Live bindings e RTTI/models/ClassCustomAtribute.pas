unit ClassCustomAtribute;

interface

  type
    AtributoTeste = class(TCustomAttribute)
      private
        FTextoTeste: String;
      public
        property TextoTeste: String read FTextoTeste write FTextoTeste;
        Constructor create(_ATexto: String);
    end;

implementation

{ TAtributoTeste }

Constructor AtributoTeste.create(_ATexto: String);
begin
  FTextoTeste := _ATexto;
end;

end.
