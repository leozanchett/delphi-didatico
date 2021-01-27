unit RttiUteis;

interface

uses
   System.Rtti, Vcl.Forms, Data.DB, Vcl.DBGrids, System.Classes;
  
   
type
  TTypeComponent = (tcEdit, tcMemo);

  Form = class(TCustomAttribute)
    private
    FName: String;
    FWidth: Integer;
    FTypeComponent: TTypeComponent;
    procedure SetName(const Value: String);
    procedure SetTypeComponent(const Value: TTypeComponent);
    procedure SetWidth(const Value: Integer);
    public
      constructor Create(_ATypeComponent: TTypeComponent; _AName: String; _AWidth: Integer);
      property TypeComponent: TTypeComponent read FTypeComponent write SetTypeComponent;
      property Name: String read FName write SetName;
      property Width: Integer read FWidth write SetWidth;
  end;

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
      class procedure DataSetToForm(_ADataSet: TDataSet; _AForm: TForm);
      class procedure ClassToFormCreate<T: Class>(_AEmbeded: TForm);
      end;

   Bind = class(TCustomAttribute)
    private
      FNomeCampo: String;
      FDisplayLabel: String;
      procedure SetNomeCampo(const Value: String);
      procedure SetDisplayLabel(const Value: String);
    public
      constructor Create(const _ANomeCampo, _ADisplayLabel: String);
      property NomeCampo : String read FNomeCampo write SetNomeCampo;
      property DisplayLabel: String read FDisplayLabel write SetDisplayLabel;
  end;

implementation

uses
  System.SysUtils, Vcl.StdCtrls, System.TypInfo;
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

class procedure TRttiUteis.ClassToFormCreate<T>(_AEmbeded: TForm);
var
  ACtxRTTi : TRttiContext;
  ATipoRTTi : TRttiType;
  AproRTTi : TRttiProperty;
  ACustomAtr: TCustomAttribute;
  Ainfo : PTypeInfo;
  AEdit: TEdit;
  ACountTop, ACountLeft: Integer;
  ALabel: TLabel;
  AMemo: TMemo;
begin
  ACountTop := 10;
  ACountLeft := 10;
  ACtxRTTi := TRttiContext.Create;
  try
    Ainfo := System.TypeInfo(T);
    ATipoRTTi := ACtxRTTi.GetType(Ainfo);
    for AproRTTi in ATipoRTTi.GetProperties do
      for ACustomAtr in AproRTTi.GetAttributes do begin
        if ACustomAtr is Form then begin
          with Form(ACustomAtr) do begin
             if TypeComponent = tcEdit then begin
              ALabel := TLabel.Create(_AEmbeded);
              ALabel.Caption := Name;
              ALabel.Top := ACountTop;
              ALabel.Parent := _AEmbeded;
              ALabel.Left := ACountLeft;
              ALabel.Name := 'lbl_'+Name;
            
              AEdit := TEdit.Create(_AEmbeded);
              AEdit.Parent := _AEmbeded;
              AEdit.Name := 'edt_'+Name;
              AEdit.Width := Width;
              AEdit.Text := '';
              AEdit.Top := ACountTop + 15;
              AEdit.Left := ACountLeft;
              ACountTop := ACountTop + 50;
            end;
            if TypeComponent = tcMemo then begin
              AMemo := TMemo.Create(_AEmbeded);
              AMemo.Parent := _AEmbeded;
              AMemo.Name := 'mem_'+Name;
              AMemo.Lines.Text := Name;
              AMemo.Top := ACountTop + 30;
              AMemo.Left := ACountLeft;
              AMemo.Width := Width;
            end;

          end;
          
        end;
      end;
  finally
    ACtxRTTi.Free;
  end;
end;

class procedure TRttiUteis.DataSetToForm(_ADataSet: TDataSet; _AForm: TForm);
 var
  ACtxRTTi : TRttiContext;
  AproRTTi : TRttiProperty;
  ATipoRTTi : TRttiType;
  AField: TRttiField;
  ACustomAtr: TCustomAttribute;
  AComponent: TComponent;
begin
  ACtxRTTi := TRttiContext.Create;
  try
    ATipoRTTi := ACtxRTTi.GetType(_AForm.ClassType);
    for AField in AtipoRtti.GetFields do
      for ACustomAtr in AField.GetAttributes do begin
        if ACustomAtr is Bind then begin
          AComponent := _AForm.FindComponent(AField.Name);
          if AComponent is Tedit then
            TEdit(AComponent).Text := _ADataSet.FieldByName(Bind(ACustomAtr).NomeCampo).AsString;
            _ADataSet.FieldByName(Bind(ACustomAtr).NomeCampo).DisplayLabel := Bind(ACustomAtr).DisplayLabel;
            if Bind(ACustomAtr).NomeCampo = 'NOME' then begin
              if (TEdit(AComponent).Text = 'Leo') then
                TEdit(AComponent).Color := 120
              else
                TEdit(Acomponent).Color := 200;
            end;
        end;
      end;
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

{ Bind }

constructor Bind.Create(const _ANomeCampo, _ADisplayLabel: String);
begin
   FNomeCampo := _ANomeCampo;
   FDisplayLabel := _ADisplayLabel;
end;

procedure Bind.SetDisplayLabel(const Value: String);
begin
  FDisplayLabel := Value;
end;

procedure Bind.SetNomeCampo(const Value: String);
begin
  FNomeCampo := Value;
end;

{ Form }

constructor Form.Create(_ATypeComponent: TTypeComponent; _AName: String; _AWidth: Integer);
begin
  FName := _AName;
  FWidth := _AWidth;
  FTypeComponent := _ATypeComponent;
end;

procedure Form.SetName(const Value: String);
begin
  FName := Value;
end;

procedure Form.SetTypeComponent(const Value: TTypeComponent);
begin
  FTypeComponent := Value;
end;

procedure Form.SetWidth(const Value: Integer);
begin
  FWidth := Value;
end;

end.
