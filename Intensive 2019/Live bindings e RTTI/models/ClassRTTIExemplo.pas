unit ClassRTTIExemplo;

interface

type
  TRTTIExemplo = class
    private
    public
      procedure RTTIExemplo(const _ACLasse: TObject; var _APrinter: String);
      procedure RTTIExemploComUnit(const _ACLasse: TObject; var _APrinter: String);
  end;

implementation

uses
  System.Rtti, System.SysUtils;

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

        for AProp in ATypes.GetProperties do
             _APrinter := _APrinter +'Property name: '+ AProp.Name+ ' Property type: '+ AProp.PropertyType.ToString + sLineBreak;
      except
        on e: Exception do
          exit;
      end;
    finally
      AContext.Free;
    end;
end;

end.
