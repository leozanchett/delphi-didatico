unit frmBasicLiveBinding;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.StorageBin,
  Data.Bind.Components, Data.Bind.DBScope, Data.Bind.EngExt, Fmx.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, FMX.Objects,
  Data.Bind.Controls, FMX.Layouts, Fmx.Bind.Navigator, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, FMX.DateTimeCtrls;

type
  TForm1 = class(TForm)
    FDMemTable1: TFDMemTable;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    Text1: TText;
    LinkPropertyToField1: TLinkPropertyToField;
    NavigatorBindSourceDB1: TBindNavigator;
    Text2: TText;
    LinkPropertyToFieldText: TLinkPropertyToField;
    EditSalary: TEdit;
    LabelSalary: TLabel;
    LinkControlToFieldSalary: TLinkControlToField;
    DateEditHireDate: TDateEdit;
    LabelHireDate: TLabel;
    LinkControlToFieldHireDate: TLinkControlToField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

end.
