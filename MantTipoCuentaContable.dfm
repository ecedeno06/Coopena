inherited frmMantTipoCuentaContable: TfrmMantTipoCuentaContable
  Caption = 'frmMantTipoCuentaContable'
  ClientHeight = 322
  ClientWidth = 439
  OnShow = FormShow
  ExplicitWidth = 455
  ExplicitHeight = 360
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 303
    Width = 439
    Panels = <
      item
        Text = 'MantTipoCuentaContable.pas'
        Width = 50
      end>
    ExplicitTop = 303
    ExplicitWidth = 439
  end
  object ToolBar8: TToolBar
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 433
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
    object btnEliminar: TToolButton
      Left = 30
      Top = 0
      Caption = 'btnEliminar'
      ImageIndex = 7
      OnClick = btnEliminarClick
    end
    object btnSalvar: TToolButton
      Left = 60
      Top = 0
      Caption = 'btnSalvar'
      ImageIndex = 6
      OnClick = btnSalvarClick
    end
  end
  object dbgBancos: TDBGrid
    Left = 0
    Top = 41
    Width = 439
    Height = 262
    Align = alClient
    DataSource = dtsTipoCuentas
    DrawingStyle = gdsGradient
    GradientEndColor = clMoneyGreen
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'tipo_maescont'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clGreen
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 22
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nombre'
        Title.Alignment = taCenter
        Title.Caption = 'Descripcion'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clGreen
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 297
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tipo_db_cr'
        Title.Alignment = taCenter
        Title.Caption = 'DB/CR'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clGreen
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 79
        Visible = True
      end>
  end
  object dtsTipoCuentas: TDataSource
    DataSet = DataModulo1.tipoCuentasContables
    Left = 136
    Top = 144
  end
end
