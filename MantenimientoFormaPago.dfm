inherited frmFormaPago: TfrmFormaPago
  BorderStyle = bsSingle
  Caption = 'Mentenimiento Formas de Pago Ingresos'
  ClientHeight = 269
  ClientWidth = 440
  OnShow = FormShow
  ExplicitWidth = 446
  ExplicitHeight = 297
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 250
    Width = 440
    ExplicitTop = 443
    ExplicitWidth = 784
  end
  object ToolBar8: TToolBar
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 434
    Height = 35
    BorderWidth = 1
    ButtonHeight = 30
    ButtonWidth = 30
    Caption = 'ToolBar1'
    DrawingStyle = dsGradient
    GradientEndColor = clMoneyGreen
    Images = DataModulo1.ImageList2
    TabOrder = 1
    ExplicitWidth = 424
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
      OnClick = btnBorrarClick
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
    Width = 427
    Height = 56
    Align = alCustom
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Informaci'#243'n'
    Color = clWhite
    ParentColor = False
    TabOrder = 2
    ExplicitWidth = 361
    object Label1: TLabel
      Left = 7
      Top = 24
      Width = 54
      Height = 13
      Caption = 'Descripcion'
    end
    object Label2: TLabel
      Left = 314
      Top = 24
      Width = 24
      Height = 13
      Caption = 'Dias:'
      FocusControl = edDias
    end
    object edDescripcion: TDBEdit
      Left = 63
      Top = 22
      Width = 210
      Height = 21
      DataField = 'descripcion'
      DataSource = ds.dtsFormaPago
      TabOrder = 0
    end
    object edDias: TDBEdit
      Left = 338
      Top = 22
      Width = 71
      Height = 21
      DataField = 'dias'
      DataSource = ds.dtsFormaPago
      TabOrder = 1
    end
  end
  object dbgAsociaciones: TDBGrid
    Left = 5
    Top = 103
    Width = 427
    Height = 141
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = ds.dtsFormaPago
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
