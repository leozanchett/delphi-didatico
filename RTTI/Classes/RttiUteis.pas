unit RttiUteis;

interface

uses
   System.Rtti, Vcl.Forms, Data.DB;
  
   
type
  NotNull = class(TCustomAttribute)
    private
      FMensagem: String;
    procedure SetMensagem(const Value: String);
     public
      constructor Create(_AMsg: String);
      property Mensagem: String read FMensagem write SetMensagem;
  end;

  MininoLength = class (TCustomAttribute)
    private
    FLength: Integer;
    FMensagem: String;
    procedure SetFMensagem(const Value: String);
    procedure SetLength(const Value: Integer);
    public
      constructor Create(_ALength: Integer; _Amensagem: String);
       property Length: Integer read FLength write SetLength;
       property Mensagem: String read FMensagem write SetFMensagem;
  end;

  TRttiUteis = class
    private
    public
      class procedure ExecutarMetodo<T: Class>(_AObj: T; _AMethodo, _AParametro: String);
      class function ListarMetodos<T: Class>(_AObj: T): String; static;
      class procedure ValidarCampos(_AObject: TObject);
      class procedure DataSetToForm(_ADataSet : TDataSet; _AForm: TForm);
  end;

implementation

uses
  System.SysUtils;
{ TRttiUteis }

class function TRttiUteis.ListarMetodos<T>(_AObj: T): String;
var
  AContextoRTTi : TRttiContext;
  ATipoRTTI : TRttiType;
  AMethodoRTTI: TRttiMethod;
begin
  AContextoRTTi :=  TRttiContext.Create;
  try
     ATipoRTTI := AContextoRTTi.GetType(_AObj.ClassType);
     for AMethodoRTTI in ATipoRTTI.GetMethods do begin
        if (not  AMethodoRTTI.IsClassMethod) and (not AMethodoRTTI.IsConstructor) then
          Result := Result + AMethodoRTTI.ToString +' | ';
     end;
  finally
    AContextoRTTi.Free;
  end;
end;

class procedure TRttiUteis.ValidarCampos(_AObject: TObject);
var
  AContexto : TRttiContext;
  ATipo : TRttiType;
  AProperties: TRttiProperty;
  ACustomAtributo : TCustomAttribute;
begin
  AContexto := TRttiContext.Create;
  try
    ATipo := AContexto.GetType(_AObject.ClassType);
    for AProperties in ATipo.GetProperties do 
      for ACustomAtributo in AProperties.GetAttributes do begin
        if ACustomAtributo is NotNull then begin
          case AProperties.GetValue(_AObject).TypeInfo.Kind of
             tkUString : begin
               if AProperties.GetValue(_AObject).AsString.Trim.IsEmpty then
                raise Exception.Create(NotNull(ACustomAtributo).Mensagem);
             end;
          end;
        end;
        if ACustomAtributo is MininoLength then begin
          if Length(AProperties.GetValue(_AObject).AsString) < MininoLength(ACustomAtributo).Length then
            raise Exception.Create(MininoLength(ACustomAtributo).Mensagem);
        end;

      end;
  finally
    AContexto.Free;
  end;
end;

class procedure TRttiUteis.DataSetToForm(_ADataSet: TDataSet; _AForm: TForm);
 var
  ACtxRTTi : TRttiContext;
  AproRTTi : TRttiProperty;

begin
  ACtxRTTi := TRttiContext.Create;
  try

  finally
    ACtxRTTi.Free;
  end;
end;

class procedure TRttiUteis.ExecutarMetodo<T>(_AObj: T; _AMethodo, _AParametro: String);
var
  AContextoRTTi : TRttiContext;
  ATipoRTTI : TRttiType;
  AMethodoRTTI: TRttiMethod;
  AParametros : Array of TValue;
begin
  AContextoRTTi := TRttiContext.Create;
  try
    ATipoRTTI := AContextoRTTi.GetType(_AObj.ClassType);
    AMethodoRTTI := ATipoRTTI.GetMethod(_AMethodo);
    SetLength(AParametros,1);
    AParametros[0] := _AParametro;
    AMethodoRTTI.Invoke(_AObj, AParametros);
  finally
    AContextoRTTi.Free;
  end;
end;

{ NotNull }

constructor NotNull.Create(_AMsg: String);
begin
   FMensagem := _AMsg;
end;

procedure NotNull.SetMensagem(const Value: String);
begin
  FMensagem := Value;
end;

{ MininoLength }

constructor MininoLength.Create(_ALength: Integer; _Amensagem: String);
begin
  FLength := _ALength;
  FMensagem := _Amensagem;
end;

procedure MininoLength.SetFMensagem(const Value: String);
begin
  FMensagem := Value;
end;

procedure MininoLength.SetLength(const Value: Integer);
begin
  FLength := Value;
end;

end.
