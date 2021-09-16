program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
   APalavraInformada: String;
   ALetra: Char;

function Teste(AValor: String; ALetra: Char): String;
var
   APosicao: Byte;
begin
   for var Ch: Char in Avalor do begin
      Result := ch;
      Writeln(Result);
      Inc(APosicao);
      if ch = ALetra then
         Exit(Format('achou o valor de %s na posição %d', [ALetra, APosicao]));   
   end;
   Exit(Format('Valor de %s não localizado...', [ALetra]));
end;

begin
   try
      Writeln('Informe uma palavra: ');
      Readln(APalavraInformada);
      Writeln('Informe uma letra para procurar');
      Readln(ALetra);
      Writeln(Teste(APalavraInformada, ALetra));
      WriteLn('Pressione Enter para sair');
      ReadLn;
   except
      on E: Exception do
         Writeln(E.ClassName, ': ', E.Message);
   end;

end.



