inherited frmActividadEconimca: TfrmActividadEconimca
  AutoSize = True
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Mantenimiento Actividad Economica'
  ClientHeight = 340
  ClientWidth = 734
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnShow = FormShow
  ExplicitWidth = 740
  ExplicitHeight = 368
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 321
    Width = 734
    ExplicitTop = 321
    ExplicitWidth = 734
  end
  object ToolBar8: TToolBar
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 728
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
  object dbgTiposIngresos: TDBGrid
    Left = 3
    Top = 98
    Width = 723
    Height = 217
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = ds.dtsActividadEconomica
    DrawingStyle = gdsGradient
    GradientEndColor = clMoneyGreen
    TabOrder = 2
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
        Width = 605
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 5
    Top = 41
    Width = 721
    Height = 51
    Align = alCustom
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Informaci'#243'n de Actividad Econimica'
    Color = clWhite
    ParentColor = False
    TabOrder = 3
    object Label1: TLabel
      Left = 7
      Top = 24
      Width = 54
      Height = 13
      Caption = 'Descripcion'
    end
    object edDescripcion: TDBEdit
      Left = 67
      Top = 21
      Width = 510
      Height = 21
      DataField = 'descripcion'
      DataSource = ds.dtsActividadEconomica
      TabOrder = 0
    end
    object DBCheckBox1: TDBCheckBox
      Left = 600
      Top = 23
      Width = 97
      Height = 17
      Caption = 'Es Riesgosa?'
      DataField = 'esRiesgosa'
      DataSource = ds.dtsActividadEconomica
      TabOrder = 1
    end
  end
end
