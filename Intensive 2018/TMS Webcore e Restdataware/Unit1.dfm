object Form2: TForm2
  Width = 640
  Height = 480
  object WebLabel1: TWebLabel
    Left = 80
    Top = 88
    Width = 56
    Height = 13
    Caption = 'Species No:'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object WebLabel2: TWebLabel
    Left = 80
    Top = 131
    Width = 49
    Height = 13
    Caption = 'Category:'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object WebLabel3: TWebLabel
    Left = 80
    Top = 171
    Width = 75
    Height = 13
    Caption = 'Common Name:'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object WebLabel4: TWebLabel
    Left = 80
    Top = 211
    Width = 70
    Height = 13
    Caption = 'Species Name:'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object WebLabel5: TWebLabel
    Left = 80
    Top = 252
    Width = 53
    Height = 13
    Caption = 'Length cm:'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object WebLabel6: TWebLabel
    Left = 80
    Top = 284
    Width = 48
    Height = 13
    Caption = 'Length in:'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object WebLabel7: TWebLabel
    Left = 81
    Top = 324
    Width = 32
    Height = 13
    Caption = 'Notes:'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object WebDBLabel1: TWebDBLabel
    Left = 160
    Top = 284
    Width = 425
    Height = 21
    Caption = 'WebDBLabel1'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    DataField = '_Length_In'
    DataSource = WebDataSource1
  end
  object WebDBEdit1: TWebDBEdit
    Left = 160
    Top = 88
    Width = 425
    Height = 22
    ChildOrder = 3
    HeightPercent = 100.000000000000000000
    Text = 'WebDBEdit1'
    WidthPercent = 100.000000000000000000
    DataField = '_Species_No'
    DataSource = WebDataSource1
  end
  object WebDBEdit2: TWebDBEdit
    Left = 160
    Top = 128
    Width = 425
    Height = 22
    ChildOrder = 3
    HeightPercent = 100.000000000000000000
    Text = 'WebDBEdit1'
    WidthPercent = 100.000000000000000000
    DataField = '_Category'
    DataSource = WebDataSource1
  end
  object WebDBEdit3: TWebDBEdit
    Left = 160
    Top = 168
    Width = 425
    Height = 22
    ChildOrder = 3
    HeightPercent = 100.000000000000000000
    Text = 'WebDBEdit1'
    WidthPercent = 100.000000000000000000
    DataField = '_Common_Name'
    DataSource = WebDataSource1
  end
  object WebDBEdit4: TWebDBEdit
    Left = 160
    Top = 208
    Width = 425
    Height = 22
    ChildOrder = 3
    HeightPercent = 100.000000000000000000
    Text = 'WebDBEdit1'
    WidthPercent = 100.000000000000000000
    DataField = '_Species_Name'
    DataSource = WebDataSource1
  end
  object WebDBMemo1: TWebDBMemo
    Left = 160
    Top = 321
    Width = 425
    Height = 120
    AutoSize = False
    HeightPercent = 100.000000000000000000
    Lines.Strings = (
      'WebDBMemo1')
    SelLength = 0
    SelStart = 0
    WidthPercent = 100.000000000000000000
    DataField = '_Notes'
    DataSource = WebDataSource1
  end
  object WebDBNavigator1: TWebDBNavigator
    Left = 160
    Top = 48
    Width = 353
    Height = 25
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    DataSource = WebDataSource1
    Hints.Strings = (
      'First'
      'Prior'
      'Next'
      'Last'
      'Edit'
      'Post'
      'Insert'
      'Delete'
      'Cancel')
  end
  object btnConectar: TWebButton
    Left = 37
    Top = 48
    Width = 96
    Height = 25
    Caption = 'Conectar'
    ChildOrder = 13
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = btnConectarClick
  end
  object WebDBSpinEdit1: TWebDBSpinEdit
    Left = 160
    Top = 256
    Width = 150
    Height = 22
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    AutoSize = False
    BorderStyle = bsSingle
    ChildOrder = 15
    Color = clWhite
    Increment = 1
    MaxValue = 100
    MinValue = 0
    Role = ''
    Value = 0
    DataField = '_Length__cm_'
    DataSource = WebDataSource1
  end
  object WebClientConnection1: TWebClientConnection
    Active = True
    URI = 'http://www.tmssoftware.biz/tmsweb/fishfacti.json'
    Left = 296
    Top = 240
  end
  object WebClientDataSet1: TWebClientDataSet
    Active = True
    Connection = WebClientConnection1
    Params = <>
    Left = 400
    Top = 240
  end
  object WebDataSource1: TWebDataSource
    DataSet = WebClientDataSet1
    Left = 536
    Top = 248
  end
end
