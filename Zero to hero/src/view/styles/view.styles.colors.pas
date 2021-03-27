unit view.styles.colors;

interface

uses
  System.UITypes, Vcl.Graphics;

type

  TTema = (tyClaro, tyEscuro);

  Estilos = record
    COLOR_BACKGROUND: TColor;
    COLOR_BACKGROUND_TOP : TColor;
    COLOR_BACKGROUND_MENU : TColor;
    COLOR_BACKGROUND_DESTAK : TColor;
    FONT_COLOR : TColor;
    FONT_SIZE : Integer;
  end;

  TStyles = class
     class function Theme(_ATema: TTema): Estilos;
  end;



const
  COLOR_BACKGROUND = $00ffffff;
  COLOR_BACKGROUND_TOP = $00b48145;
  COLOR_BACKGROUND_MENU = $004a4136;
  COLOR_BACKGROUND_DESTAK = $0084c400;

  COLOR_C1 = $00fcfaf9;
  CINZA = clGrayText;

  FONT_H1 = 22;
  FONT_H2 = 20;
  FONT_H3 = 18;
  FONT_H4 = 16;
  FONT_H5 = 14;
  FONT_H6 = 12;
  FONT_COLOR = $00ffffff;
  FONT_NAME_DEFAULT = 'Segoe UI';

implementation



{ TStyles }

class function TStyles.Theme(_ATema: TTema): Estilos;
var
  AEstilos : Estilos;
begin
  case _ATema of
    tyClaro: begin
      AEstilos.COLOR_BACKGROUND := $00ffffff;
      AEstilos.COLOR_BACKGROUND_TOP := $00a4584c;
      AEstilos.COLOR_BACKGROUND_MENU := $00f8f2ed;
      AEstilos.COLOR_BACKGROUND_DESTAK := $0084c400;
      AEstilos.FONT_COLOR := $00322f2d;
    end;
    tyEscuro: begin
       AEstilos.COLOR_BACKGROUND := $00322f2d;
       AEstilos.COLOR_BACKGROUND_TOP := $00b48145;
       AEstilos.COLOR_BACKGROUND_MENU := $004a4136;
       AEstilos.FONT_COLOR := $00ffffff;
    end;
  end;
  Result := AEstilos;
end;

end.
