unit ClassRTTI;

interface

uses
  Data.Bind.Components;

type
  TRTTIExemplo = class
    private
      FLinkControlToField: TLinkControlToField;
    public
      function ValidarCamposObrigatorios(const _ACLasse: TObject): String;
      procedure RTTIExemploComUnit(const _ACLasse: TObject; var _APrinter: String);
  end;

implementation

uses
  System.Rtti, System.SysUtils, ClassCustomAtribute, ClassLinkControlToField,
  System.Classes, frmPrincipal, FMX.Forms, FMX.Edit, System.AnsiStrings;

{ TRTTIExemplo }

function TRTTIExemplo.ValidarCamposObrigatorios(const _ACLasse: TObject): String;
var
  AContext : TRTTIContext;
  ATypes: TRttiType;
  AFields : TRttiField;
  ACustomAtr : TCustomAttribute;
begin
    Result := '';
    AContext := TRttiContext.Create;
    try
      ATypes := AContext.GetType(_ACLasse.ClassType);
      for AFields in ATypes.GetFields do
        for ACustomAtr in AFields.GetAttributes do
          if ACustomAtr is CampoObrigatorio then
            Case IndexStr(AFields.FieldType.ToString, ['TEdit', 'TButton']) of
               0: begin
                 if TEdit(TForm(_ACLasse).FindComponent(AFields.Name)).Text.IsEmpty then begin
                    TEdit(TForm(_ACLasse).FindComponent(AFields.Name)).SetFocus;
                    Result := CampoObrigatorio(ACustomAtr).MensagemCampoVazio;
                    Exit;
                 end;

               end;
            End;
    finally
      AContext.Free;
    end;
end;

procedure TRTTIExemplo.RTTIExemploComUnit(const _ACLasse: TObject; var _APrinter: String);
var
  AContext : TRTTIContext;
  ATypes: TRttiType;
  AFields : TRttiField;
  AProp: TRttiProperty;
  ACustomAtr : TCustomAttribute;
begin
    AContext := TRttiContext.Create;
    try
      ATypes := AContext.GetType(_ACLasse.ClassType);
      try
        // fields
        for AFields in ATypes.GetFields do begin
          for ACustomAtr in AFields.GetAttributes do
            if ACustomAtr is CustomLinkControlToField then begin
              FLinkControlToField := TLinkControlToField.Create(nil);
              FLinkControlToField.FieldName := CustomLinkControlToField(ACustomAtr).FieldName;
              FLinkControlToField.Control := TComponent(Form1.FindComponent(CustomLinkControlToField(ACustomAtr).ControlName));
              FLinkControlToField.DataSource := TBaseLinkingBindSource(Form1.FindComponent(CustomLinkControlToField(ACustomAtr).DataSource));
            end;

          if Assigned(AFields.FieldType) then
            _APrinter := _APrinter +'Field name: '+ AFields.Name+ ' Field type: '+ AFields.FieldType.ToString + sLineBreak
          else
            _APrinter := _APrinter +'Field name: '.ToUpper+ AFields.Name.ToUpper+ ' Field type: nill'.ToUpper + sLineBreak;
        end;


        // propertyes
        for AProp in ATypes.GetProperties do begin
            for ACustomAtr in AProp.GetAttributes do
              if ACustomAtr is CustomLinkControlToField then begin
                FLinkControlToField := TLinkControlToField.Create(Application);
                FLinkControlToField.FieldName := CustomLinkControlToField(ACustomAtr).FieldName;
                FLinkControlToField.Control := TComponent(Form1.FindComponent(CustomLinkControlToField(ACustomAtr).ControlName));
                FLinkControlToField.DataSource := TBaseLinkingBindSource(Form1.FindComponent(CustomLinkControlToField(ACustomAtr).DataSource));
              end;
            _APrinter := _APrinter +'Property name: '+ AProp.Name+ ' Property type: '+ AProp.PropertyType.ToString + sLineBreak;
        end;


      except
        on e: Exception do
          exit;
      end;
    finally
      AContext.Free;
    end;
end;

end.
