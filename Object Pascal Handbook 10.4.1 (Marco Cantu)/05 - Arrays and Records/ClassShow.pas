unit ClassShow;

interface

type

   TShow = class
      class procedure Show(const _AValor: String; _AQuebrarLinha: boolean = True);
      class procedure Separador;
      class procedure PulaLinha;
      class procedure Auwait;
   end;


implementation

{ TShow }

class procedure TShow.Auwait;
begin
   Writeln('Pressione Enter...');
   Readln;
end;

class procedure TShow.PulaLinha;
begin
   Writeln('');
end;

class procedure TShow.Separador;
begin
   WriteLn('----------------------------------------------------');
end;

class procedure TShow.Show(const _AValor: String; _AQuebrarLinha: boolean = True);
begin
   if _AQuebrarLinha then   
      Writeln(_AValor)
   else
      Write(_AValor + ' ');
end;

end.
