inherited frmFormasPagos: TfrmFormasPagos
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Mantenimiento a Formas de Pagos'
  ClientHeight = 283
  ClientWidth = 423
  OnShow = FormShow
  ExplicitWidth = 429
  ExplicitHeight = 311
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 264
    Width = 423
    ExplicitTop = 0
    ExplicitWidth = 794
  end
  object ToolBar8: TToolBar
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 417
    Height = 35
    BorderWidth = 1
    ButtonHeight = 30
    ButtonWidth = 30
    Caption = 'ToolBar1'
    DrawingStyle = dsGradient
    GradientEndColor = clMoneyGreen
    Images = DataModulo1.ImageList2
    TabOrder = 1
    ExplicitWidth = 419
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
    Width = 410
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
    end
    object Label2: TLabel
      Left = 320
      Top = 24
      Width = 31
      Height = 13
      Caption = 'Siglas:'
      FocusControl = edsiglas
    end
    object edDescripcion: TDBEdit
      Left = 67
      Top = 21
      Width = 230
      Height = 21
      DataField = 'descripcion'
      DataSource = ds.dtsFormasPagos
      TabOrder = 0
    end
    object edsiglas: TDBEdit
      Left = 364
      Top = 21
      Width = 30
      Height = 21
      DataField = 'letra'
      DataSource = ds.dtsFormasPagos
      TabOrder = 1
    end
  end
  object dbgAsociaciones: TDBGrid
    Left = 3
    Top = 103
    Width = 412
    Height = 154
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = ds.dtsFormasPagos
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
end
