unit ClassRTTI;

interface

uses
  Data.Bind.Components;

type
  TRTTIExemplo = class
    private
      FLinkControlToField: TLinkControlToField;
    public
      procedure RTTIExemplo(const _ACLasse: TObject; var _APrinter: String);
      procedure RTTIExemploComUnit(const _ACLasse: TObject; var _APrinter: String);
  end;

implementation

uses
  System.Rtti, System.SysUtils, ClassCustomAtribute, ClassLinkControlToField,
  System.Classes, frmPrincipal, FMX.Forms;

{ TRTTIExemplo }

procedure TRTTIExemplo.RTTIExemplo(const _ACLasse: TObject; var _APrinter: String);
var
  AContext : TRTTIContext;
  ATypes: TRttiType;
  AFields : TRttiField;
begin
    AContext := TRttiContext.Create;
    try
      ATypes := AContext.GetType(_ACLasse.ClassType);
      try
        for AFields in ATypes.GetFields do
          if Assigned(AFields.FieldType) then
            _APrinter := _APrinter +'Field name: '+ AFields.Name+ ' Field type: '+ AFields.FieldType.ToString + sLineBreak
          else
            _APrinter := _APrinter +'Field name: '.ToUpper+ AFields.Name.ToUpper+ ' Field type: nill'.ToUpper + sLineBreak;
      except
        on e: Exception do
          exit;
      end;
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
