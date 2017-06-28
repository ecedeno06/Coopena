inherited frmTipoIngreso: TfrmTipoIngreso
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Mantenimiento Tipos Ingresos'
  ClientHeight = 303
  ClientWidth = 445
  OnShow = FormShow
  ExplicitWidth = 451
  ExplicitHeight = 331
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 284
    Width = 445
    ExplicitTop = 443
    ExplicitWidth = 784
  end
  object ToolBar8: TToolBar
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 439
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
    Width = 432
    Height = 51
    Align = alCustom
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Informaci'#243'n de Tipo de Ingreso'
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
    object edDescripcion: TDBEdit
      Left = 67
      Top = 22
      Width = 164
      Height = 21
      DataField = 'descripcion'
      DataSource = ds.dtsFuentesIngresos
      TabOrder = 0
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 242
      Top = 12
      Width = 183
      Height = 33
      Caption = 'Tipo Flujo'
      Columns = 2
      DataField = 'tipoFlujo'
      DataSource = ds.dtsFuentesIngresos
      Items.Strings = (
        'Fijo'
        'Variable')
      TabOrder = 1
      Values.Strings = (
        'F'
        'V')
    end
  end
  object dbgTiposIngresos: TDBGrid
    Left = 3
    Top = 98
    Width = 434
    Height = 180
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = ds.dtsFuentesIngresos
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
