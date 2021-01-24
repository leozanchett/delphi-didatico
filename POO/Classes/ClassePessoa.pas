unit ClassePessoa;

interface

uses
  System.Classes;
  Type
    TPessoa = class
      protected
        Endereco: String;
      public
        constructor Create; virtual;
        function Tipo: String; virtual; abstract; // permite ser sobrecarregada. sobreescrita.
    end;

  Type
    TMyComp = class(TComponent)
      constructor Create(Aowner: TComponent);override;
    end;

implementation

uses
  System.SysUtils;


{ TPessoa }

constructor TPessoa.Create;
begin
  {TODO -cConstrutor: Implementar construtor}
end;

{ TMyComp }

constructor TMyComp.Create(Aowner: TComponent);
begin
  inherited Create(AOwner);
end;

end.
