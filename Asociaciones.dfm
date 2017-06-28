inherited frmAsociaciones: TfrmAsociaciones
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'frmAsociaciones'
  ClientHeight = 276
  ClientWidth = 425
  OnShow = FormShow
  ExplicitWidth = 431
  ExplicitHeight = 304
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 256
    Width = 425
    Height = 20
    ExplicitTop = 256
    ExplicitWidth = 425
    ExplicitHeight = 20
  end
  object ToolBar8: TToolBar
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 419
    Height = 35
    BorderWidth = 1
    ButtonHeight = 30
    ButtonWidth = 30
    Caption = 'ToolBar1'
    DrawingStyle = dsGradient
    GradientEndColor = clMoneyGreen
    Images = DataModulo1.ImageList2
    TabOrder = 1
    object btnNuevo: TToolButton
      Left = 0
      Top = 0
      Hint = 'Nuevo registro'
      ImageIndex = 8
      ParentShowHint = False
      ShowHint = True
      OnClick = btnNuevoClick
    end
    object btnBorrar: TToolButton
      Left = 30
      Top = 0
      Caption = 'btnBorrar'
      ImageIndex = 7
    end
    object btnSalvar: TToolButton
      Left = 60
      Top = 0
      Caption = 'btnSalvar'
      ImageIndex = 6
      OnClick = btnSalvarClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 5
    Top = 41
    Width = 412
    Height = 56
    Align = alCustom
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Informaci'#243'n de Asociacion:'
    Color = clWhite
    ParentColor = False
    TabOrder = 2
    object Label1: TLabel
      Left = 7
      Top = 24
      Width = 54
      Height = 13
      Caption = 'Descripcion'
      FocusControl = edAsociacion
    end
    object edAsociacion: TDBEdit
      Left = 66
      Top = 21
      Width = 223
      Height = 21
      DataField = 'descripcion'
      DataSource = dtsAsociaciones
      TabOrder = 0
    end
    object DBCheckBox1: TDBCheckBox
      Left = 312
      Top = 24
      Width = 73
      Height = 17
      Caption = 'Riesgosa'
      DataField = 'esRiesgosa'
      DataSource = dtsAsociaciones
      TabOrder = 1
    end
  end
  object dbgAsociaciones: TDBGrid
    Left = 5
    Top = 103
    Width = 412
    Height = 151
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dtsAsociaciones
    DrawingStyle = gdsGradient
    GradientEndColor = clMoneyGreen
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'descripcion'
        Title.Caption = 'Descripcion'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clGreen
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 374
        Visible = True
      end>
  end
  object dtsAsociaciones: TDataSource
    DataSet = DataModulo1.Asociaciones
    Left = 200
    Top = 136
  end
end
