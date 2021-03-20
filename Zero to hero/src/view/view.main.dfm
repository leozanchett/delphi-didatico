object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'DelphiToHero'
  ClientHeight = 469
  ClientWidth = 698
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 698
    Height = 469
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object pnlMenu: TPanel
      Left = 0
      Top = 0
      Width = 89
      Height = 469
      Align = alLeft
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      object spbUsuarios: TSpeedButton
        Left = 0
        Top = 121
        Width = 89
        Height = 64
        Align = alTop
        Caption = 'Usuarios'
        Flat = True
        ExplicitTop = 57
      end
      object spbPrincipal: TSpeedButton
        Left = 0
        Top = 57
        Width = 89
        Height = 64
        Align = alTop
        Caption = 'Principal'
        Flat = True
        ExplicitTop = 65
      end
      object pnlLogo: TPanel
        Left = 0
        Top = 0
        Width = 89
        Height = 57
        Align = alTop
        ParentBackground = False
        TabOrder = 0
      end
    end
    object pnlFull: TPanel
      Left = 89
      Top = 0
      Width = 609
      Height = 469
      Align = alClient
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 1
      object pnlTop: TPanel
        Left = 0
        Top = 0
        Width = 609
        Height = 57
        Align = alTop
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
        object rgTema: TRadioGroup
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 603
          Height = 51
          Align = alClient
          BiDiMode = bdRightToLeftReadingOnly
          Caption = 'Tema'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Claro'
            'Escuro')
          ParentBiDiMode = False
          ParentBackground = False
          TabOrder = 0
          OnClick = rgTemaClick
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 609
          ExplicitHeight = 57
        end
      end
      object pnlPrincipal: TPanel
        Left = 0
        Top = 57
        Width = 609
        Height = 412
        Align = alClient
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 1
        ExplicitTop = 41
        ExplicitHeight = 428
      end
    end
  end
end
