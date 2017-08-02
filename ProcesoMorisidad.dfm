inherited frmProcesoMorisidad: TfrmProcesoMorisidad
  Caption = 'Proceso de Calculo de Morosidad'
  ClientHeight = 520
  ClientWidth = 786
  Position = poScreenCenter
  WindowState = wsMaximized
  OnShow = FormShow
  ExplicitWidth = 802
  ExplicitHeight = 558
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 501
    Width = 786
    ExplicitTop = 501
    ExplicitWidth = 786
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 786
    Height = 187
    Align = alTop
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 376
      Top = 23
      Width = 23
      Height = 22
      OnClick = SpeedButton1Click
    end
    object num_cuenta: TEdit
      Left = 337
      Top = 126
      Width = 153
      Height = 21
      TabOrder = 0
      Text = 'num_cuenta'
    end
    object dbg_lista_Morosos: TDBGrid
      Left = 1
      Top = 30
      Width = 784
      Height = 156
      Align = alClient
      DataSource = dtsCuentas
      DrawingStyle = gdsGradient
      GradientEndColor = clMoneyGreen
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = '_num_Cuenta'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Numero Prestamo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 123
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_NombreSocio'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Nombre Socio'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 147
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_SaldoReal'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Saldo Real'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_DeberSer'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Debe Ser'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 78
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = '_Vencimiento'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Vencimiento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 92
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = '_meses'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Meses Atraso'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 88
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = '_periodoGraciaMeses'
          ReadOnly = True
          Title.Caption = 'Periodo Gracia'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_cargo'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Cargo Mensual'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_mora'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Morosidad'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object ToolBar1: TToolBar
      Left = 1
      Top = 1
      Width = 784
      Height = 29
      Caption = 'ToolBar1'
      DrawingStyle = dsGradient
      GradientEndColor = clMoneyGreen
      Images = DataModulo1.ImageList2
      TabOrder = 2
      object mes: TDBLookupComboBox
        Left = 0
        Top = 0
        Width = 109
        Height = 21
        DataField = 'mes'
        DataSource = dtsmes1
        KeyField = 'mes'
        ListField = 'mesEsp'
        ListSource = dtsMeses
        TabOrder = 1
      end
      object ToolButton1: TToolButton
        Left = 109
        Top = 0
        Width = 8
        Caption = 'ToolButton1'
        Style = tbsSeparator
      end
      object anio: TSpinEdit
        Left = 117
        Top = 0
        Width = 60
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 0
        Value = 0
      end
      object ToolButton2: TToolButton
        Left = 177
        Top = 0
        Width = 8
        Caption = 'ToolButton2'
        ImageIndex = 0
        Style = tbsSeparator
      end
      object ToolButton3: TToolButton
        Left = 185
        Top = 0
        Caption = 'ToolButton3'
        ImageIndex = 36
        OnClick = ToolButton3Click
      end
      object ToolButton4: TToolButton
        Left = 208
        Top = 0
        Width = 153
        Caption = 'ToolButton4'
        ImageIndex = 46
        Style = tbsSeparator
      end
      object Panel3: TPanel
        Left = 361
        Top = 0
        Width = 108
        Height = 22
        BevelOuter = bvNone
        TabOrder = 2
        object NoProcesadas: TCheckBox
          Left = 11
          Top = 0
          Width = 103
          Height = 23
          Caption = 'No procesadas'
          TabOrder = 0
          OnClick = ToolButton3Click
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 187
    Width = 786
    Height = 314
    Align = alClient
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 2
    DesignSize = (
      786
      314)
    object corte: TDateTimePicker
      Left = 24
      Top = 40
      Width = 113
      Height = 21
      Date = 42815.686676689820000000
      Time = 42815.686676689820000000
      TabOrder = 0
    end
    object saldo: TMaskEdit
      Left = 200
      Top = 40
      Width = 137
      Height = 21
      TabOrder = 1
      Text = 'saldo'
    end
    object ToolBar2: TToolBar
      Left = 1
      Top = 1
      Width = 784
      Height = 29
      ButtonHeight = 29
      ButtonWidth = 28
      Caption = 'ToolBar1'
      DrawingStyle = dsGradient
      GradientEndColor = clMoneyGreen
      Images = DataModulo1.ImageList2
      TabOrder = 2
      object ToolButton6: TToolButton
        Left = 0
        Top = 0
        Caption = 'ToolButton3'
        ImageIndex = 45
      end
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 36
      Width = 785
      Height = 272
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Morosidad'
      TabOrder = 3
      object Button1: TButton
        Left = 34
        Top = 31
        Width = 75
        Height = 25
        Caption = 'Button1'
        TabOrder = 0
      end
    end
  end
  object dtsCorte: TDataSource
    Left = 336
    Top = 385
  end
  object dtsMeses: TDataSource
    DataSet = DataModulo1.meses
    Left = 536
    Top = 344
  end
  object mMes: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 448
    Top = 312
    object mMesmes: TIntegerField
      FieldName = 'mes'
    end
    object mMesmesEsp: TStringField
      FieldName = 'mesEsp'
      Size = 50
    end
  end
  object dtsmes1: TDataSource
    DataSet = mMes
    Left = 336
    Top = 304
  end
  object morosidadHist: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 328
    Top = 96
    object morosidadHistfecha_inicio: TDateTimeField
      FieldName = 'fecha_inicio'
    end
    object morosidadHistCantidad: TIntegerField
      FieldName = 'Cantidad'
      DisplayFormat = '#,###'
    end
    object morosidadHistMonto: TFloatField
      FieldName = 'Monto'
      DisplayFormat = '#,###.##'
    end
  end
  object dtsMorisidadHist: TDataSource
    DataSet = morosidadHist
    Left = 104
    Top = 128
  end
  object mCuentas: TFDMemTable
    OnCalcFields = mCuentasCalcFields
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 472
    Top = 96
    object mCuentas_num_Cuenta: TStringField
      FieldName = '_num_Cuenta'
    end
    object mCuentas_NombreSocio: TStringField
      FieldName = '_NombreSocio'
      Size = 50
    end
    object mCuentas_SaldoReal: TFloatField
      FieldName = '_SaldoReal'
      DisplayFormat = '#,###.##'
    end
    object mCuentas_DeberSer: TFloatField
      FieldName = '_DeberSer'
      DisplayFormat = '#,###.##'
    end
    object mCuentas_Vencimiento: TDateField
      FieldName = '_Vencimiento'
      DisplayFormat = 'dd MMM YYYY'
    end
    object mCuentas_meses: TIntegerField
      FieldName = '_meses'
    end
    object mCuentas_cargo: TFloatField
      FieldName = '_cargo'
      DisplayFormat = '#,###.##'
    end
    object mCuentas_periocidad: TStringField
      FieldName = '_periocidad'
      Size = 1
    end
    object mCuentas_periodoGraciaMeses: TIntegerField
      FieldName = '_periodoGraciaMeses'
    end
    object mCuentas_mora: TFloatField
      FieldName = '_mora'
      DisplayFormat = '#,###.##'
    end
    object mCuentas_sel: TBooleanField
      FieldName = '_sel'
    end
    object mCuentas_nombreCompleto: TStringField
      FieldKind = fkCalculated
      FieldName = '_nombreCompleto'
      Size = 100
      Calculated = True
    end
  end
  object dtsCuentas: TDataSource
    DataSet = mCuentas
    Left = 664
    Top = 280
  end
  object dts_saldoMora: TDataSource
    Left = 89
    Top = 327
  end
end
