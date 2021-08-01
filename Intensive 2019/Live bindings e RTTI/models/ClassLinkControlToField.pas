unit ClassLinkControlToField;

interface

 type
    CustomLinkControlToField = class(TCustomAttribute)
      private
        FFieldName: String;
        FControlName: String;
        FDataSource: String;
      public
        property FieldName: String read FFieldName write FFieldName;
        property ControlName: String read FControlName write FControlName;
        property DataSource: String read FDataSource write FDataSource;
        constructor create(const _AFieldName, _AControlName, _ADataSource: String);
    end;

implementation

{ LinkControlToField }

constructor CustomLinkControlToField.create(const _AFieldName, _AControlName, _ADataSource: String);
begin
  FFieldName := _AFieldName;
  FControlName := _AControlName;
  FDataSource := _ADataSource;
end;

end.
