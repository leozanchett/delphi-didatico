unit Calculadora.Helpers;

interface

uses
  Vcl.Controls;

type

  TCaptionHelper = record helper for TCaption
    public
      function AsCurrency: Currency;
  end;

  TStringHelper = record helper for String
    public
      function ToCurrency: Currency;
  end;

implementation

uses
  System.SysUtils;


{ TCaptionHelper }

function TCaptionHelper.AsCurrency: Currency;
begin
  Result := StrToCurr(Self);
end;

{ TStringHelper }

function TStringHelper.ToCurrency: Currency;
begin
  Result := StrToCurr(Self);
end;

end.
