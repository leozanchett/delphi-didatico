object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'DelphiToHero'
  ClientHeight = 561
  ClientWidth = 737
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
    Width = 737
    Height = 561
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 698
    ExplicitHeight = 361
    object pnlMenu: TPanel
      Left = 0
      Top = 0
      Width = 89
      Height = 561
      Align = alLeft
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      ExplicitHeight = 361
      object spbUsuarios: TSpeedButton
        Left = 0
        Top = 121
        Width = 89
        Height = 64
        Align = alTop
        Caption = 'Usuarios'
        Flat = True
        OnClick = spbUsuariosClick
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
        OnClick = spbPrincipalClick
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
      Width = 648
      Height = 561
      Align = alClient
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 1
      ExplicitWidth = 609
      ExplicitHeight = 361
      DesignSize = (
        648
        561)
      object pnlTop: TPanel
        Left = 0
        Top = 0
        Width = 648
        Height = 57
        Align = alTop
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
        ExplicitWidth = 609
      end
      object pnlPrincipal: TPanel
        Left = 0
        Top = 57
        Width = 648
        Height = 504
        Align = alClient
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 1
        ExplicitWidth = 609
        ExplicitHeight = 304
      end
      object rgTema: TRadioGroup
        AlignWithMargins = True
        Left = 485
        Top = 505
        Width = 158
        Height = 51
        Anchors = [akRight, akBottom]
        BiDiMode = bdRightToLeftReadingOnly
        Caption = 'Tema'
        Columns = 2
        ItemIndex = 1
        Items.Strings = (
          'Claro'
          'Escuro')
        ParentBiDiMode = False
        ParentBackground = False
        TabOrder = 2
        OnClick = rgTemaClick
        ExplicitLeft = 446
        ExplicitTop = 305
      end
    end
  end
end
