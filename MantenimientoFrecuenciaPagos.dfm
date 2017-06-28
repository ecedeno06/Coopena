inherited frmFrecuenciaPagos: TfrmFrecuenciaPagos
  BorderStyle = bsSingle
  Caption = 'Mentenimiento Frecuencia Pago '
  ClientHeight = 411
  ClientWidth = 431
  OnShow = FormShow
  ExplicitWidth = 437
  ExplicitHeight = 439
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 392
    Width = 431
    ExplicitTop = 250
    ExplicitWidth = 440
  end
  object ToolBar8: TToolBar
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 425
    Height = 35
    BorderWidth = 1
    ButtonHeight = 30
    ButtonWidth = 30
    Caption = 'ToolBar1'
    DrawingStyle = dsGradient
    GradientEndColor = clMoneyGreen
    Images = DataModulo1.ImageList2
    TabOrder = 1
    ExplicitWidth = 434
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
    Width = 418
    Height = 88
    Align = alCustom
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Informaci'#243'n'
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
      Left = 314
      Top = 24
      Width = 24
      Height = 13
      Caption = 'Dias:'
      FocusControl = edDias
    end
    object Label3: TLabel
      Left = 7
      Top = 52
      Width = 134
      Height = 13
      Caption = 'Periodo de Gracia en Mora? '
    end
    object Label4: TLabel
      Left = 183
      Top = 52
      Width = 82
      Height = 13
      Caption = 'Meses de Gracia:'
    end
    object Label5: TLabel
      Left = 232
      Top = 24
      Width = 22
      Height = 13
      Caption = 'letra'
      FocusControl = edLetra
    end
    object edDias: TDBEdit
      Left = 338
      Top = 22
      Width = 71
      Height = 21
      DataField = 'dias'
      DataSource = DataModulo1.dtsFrecuenciaPagos
      TabOrder = 1
    end
    object DBCheckBox1: TDBCheckBox
      Left = 147
      Top = 51
      Width = 22
      Height = 17
      DataField = 'periodoGracia'
      DataSource = DataModulo1.dtsFrecuenciaPagos
      TabOrder = 2
    end
    object DBEdit1: TDBEdit
      Left = 271
      Top = 49
      Width = 138
      Height = 21
      DataField = 'periodoGraciaMeses'
      DataSource = DataModulo1.dtsFrecuenciaPagos
      TabOrder = 3
    end
    object edLetra: TDBEdit
      Left = 260
      Top = 22
      Width = 29
      Height = 21
      DataField = 'letra'
      DataSource = DataModulo1.dtsFrecuenciaPagos
      TabOrder = 0
    end
    object edDescripcion: TDBEdit
      Left = 67
      Top = 22
      Width = 140
      Height = 21
      DataField = 'descripcion'
      DataSource = DataModulo1.dtsFrecuenciaPagos
      TabOrder = 4
    end
  end
  object dbgAsociaciones: TDBGrid
    Left = 5
    Top = 135
    Width = 418
    Height = 251
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataModulo1.dtsFrecuenciaPagos
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
