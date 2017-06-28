inherited frmAsociaciones: TfrmAsociaciones
  Caption = 'frmAsociaciones'
  ClientHeight = 336
  ClientWidth = 483
  ExplicitWidth = 499
  ExplicitHeight = 374
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 317
    Width = 483
    ExplicitTop = 443
    ExplicitWidth = 784
  end
  object ToolBar8: TToolBar
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 477
    Height = 29
    BorderWidth = 1
    ButtonHeight = 30
    ButtonWidth = 30
    Caption = 'ToolBar1'
    DrawingStyle = dsGradient
    GradientEndColor = clMoneyGreen
    Images = DataModulo1.ImageList2
    TabOrder = 1
    ExplicitWidth = 509
    object btnCargoNuevo1: TToolButton
      Left = 0
      Top = 0
      Hint = 'Nuevo registro'
      ImageIndex = 8
      ParentShowHint = False
      ShowHint = True
    end
    object ToolButton1: TToolButton
      Left = 30
      Top = 0
      Caption = 'ToolButton1'
      ImageIndex = 7
    end
    object btnCargoSalvar1: TToolButton
      Left = 60
      Top = 0
      Caption = 'btnCargoSalvar1'
      ImageIndex = 6
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 38
    Width = 467
    Height = 92
    Align = alCustom
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Asociacion:'
    Color = clWhite
    ParentColor = False
    TabOrder = 2
    object Label2: TLabel
      Left = 12
      Top = 40
      Width = 58
      Height = 13
      Caption = 'Descripcion:'
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 136
    Width = 467
    Height = 175
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dtsAsociaciones: TDataSource
    DataSet = DataModulo1.Asociaciones
    Left = 160
    Top = 216
  end
end
