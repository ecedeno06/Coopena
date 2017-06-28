inherited ds: Tds
  Top = -55
  Width = 1376
  Height = 784
  AutoScroll = True
  Caption = 'Datos'
  Position = poDesigned
  Visible = False
  OnCreate = FormCreate
  ExplicitLeft = -400
  ExplicitWidth = 1376
  ExplicitHeight = 784
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 727
    Width = 1360
    ExplicitTop = 727
    ExplicitWidth = 1360
  end
  object GroupBox11: TGroupBox
    Left = 9
    Top = 6
    Width = 147
    Height = 212
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'A'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 162
    Top = 6
    Width = 148
    Height = 212
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'B'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object GroupBox2: TGroupBox
    Left = 257
    Top = 8
    Width = 148
    Height = 212
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'C'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object GroupBox3: TGroupBox
    Left = 467
    Top = 8
    Width = 145
    Height = 212
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'D'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object GroupBox4: TGroupBox
    Left = 618
    Top = 8
    Width = 148
    Height = 441
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'E'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object GroupBox6: TGroupBox
    Left = 969
    Top = 8
    Width = 200
    Height = 212
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'G'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object GroupBox7: TGroupBox
    Left = 1169
    Top = 8
    Width = 200
    Height = 212
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'H'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object GroupBox5: TGroupBox
    Left = 768
    Top = 8
    Width = 200
    Height = 697
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'F'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object GroupBox8: TGroupBox
    Left = 0
    Top = 224
    Width = 201
    Height = 441
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'S'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object SocioFuentesIngresosFijos: TFDQuery
    Connection = DataModulo1.cnn2
    SQL.Strings = (
      'select * from socioFuentesIngresos'
      'Where '
      'guidSocio = :guid '
      'and '
      'idTipoflujo = '#39'F'#39)
    Left = 64
    Top = 244
    ParamData = <
      item
        Name = 'GUID'
        DataType = ftString
        ParamType = ptInput
        Value = '{D4907F71-FA12-41FC-A8C2-0D67AA723A9D}'
      end>
    object SocioFuentesIngresosFijosidsocio: TIntegerField
      FieldName = 'idsocio'
      Origin = 'idsocio'
    end
    object SocioFuentesIngresosFijosidsector: TIntegerField
      FieldName = 'idsector'
      Origin = 'idsector'
    end
    object SocioFuentesIngresosFijosguid: TStringField
      FieldName = 'guid'
      Origin = 'guid'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object SocioFuentesIngresosFijosguidSocio: TStringField
      FieldName = 'guidSocio'
      Origin = 'guidSocio'
      Size = 50
    end
    object SocioFuentesIngresosFijosidActividad: TIntegerField
      FieldName = 'idActividad'
      Origin = 'idActividad'
    end
    object SocioFuentesIngresosFijosidCargo: TIntegerField
      FieldName = 'idCargo'
      Origin = 'idCargo'
    end
    object SocioFuentesIngresosFijosguidFuente: TStringField
      FieldName = 'guidFuente'
      Origin = 'guidFuente'
      Size = 50
    end
    object SocioFuentesIngresosFijosguidSector: TStringField
      FieldName = 'guidSector'
      Origin = 'guidSector'
      Size = 50
    end
    object SocioFuentesIngresosFijosdesde: TDateField
      FieldName = 'desde'
      Origin = 'desde'
    end
    object SocioFuentesIngresosFijosactivo: TBooleanField
      FieldName = 'activo'
      Origin = 'activo'
    end
    object SocioFuentesIngresosFijoscargo: TStringField
      FieldName = 'cargo'
      Origin = 'cargo'
      Size = 50
    end
    object SocioFuentesIngresosFijosfrecuencia: TIntegerField
      FieldName = 'frecuencia'
      Origin = 'frecuencia'
    end
    object SocioFuentesIngresosFijosletraFrecuencia: TWideStringField
      FieldName = 'letraFrecuencia'
      Origin = 'letraFrecuencia'
      FixedChar = True
      Size = 1
    end
    object SocioFuentesIngresosFijosmonto: TCurrencyField
      FieldName = 'monto'
      Origin = 'monto'
    end
    object SocioFuentesIngresosFijosidFormaPago: TIntegerField
      FieldName = 'idFormaPago'
      Origin = 'idFormaPago'
    end
    object SocioFuentesIngresosFijosguidFormaPago: TStringField
      FieldName = 'guidFormaPago'
      Origin = 'guidFormaPago'
      Size = 50
    end
    object SocioFuentesIngresosFijosfuente: TIntegerField
      FieldName = 'fuente'
      Origin = 'fuente'
    end
    object SocioFuentesIngresosFijostipoFuente: TIntegerField
      FieldName = 'tipoFuente'
      Origin = 'tipoFuente'
    end
    object SocioFuentesIngresosFijosdescripcionTipoFuente: TStringField
      FieldName = 'descripcionTipoFuente'
      Origin = 'descripcionTipoFuente'
      Size = 50
    end
    object SocioFuentesIngresosFijosidtipoFuente: TIntegerField
      FieldName = 'idtipoFuente'
      Origin = 'idtipoFuente'
    end
    object SocioFuentesIngresosFijosidtipoIngreso: TIntegerField
      FieldName = 'idtipoIngreso'
      Origin = 'idtipoIngreso'
    end
    object SocioFuentesIngresosFijosidtipoFlujo: TStringField
      FieldName = 'idtipoFlujo'
      Origin = 'idtipoFlujo'
      Size = 1
    end
    object SocioFuentesIngresosFijosantiguedad: TIntegerField
      FieldName = 'antiguedad'
      Origin = 'antiguedad'
    end
    object SocioFuentesIngresosFijos_actividad: TStringField
      FieldKind = fkLookup
      FieldName = '_actividad'
      LookupDataSet = actividadEconomica
      LookupKeyFields = 'idActividad'
      LookupResultField = 'descripcion'
      KeyFields = 'idActividad'
      Size = 50
      Lookup = True
    end
    object SocioFuentesIngresosFijos_sector: TStringField
      FieldKind = fkLookup
      FieldName = '_sector'
      LookupDataSet = sectorEconomico
      LookupKeyFields = 'idSectorEco'
      LookupResultField = 'descripcion'
      KeyFields = 'idsector'
      Size = 30
      Lookup = True
    end
    object SocioFuentesIngresosFijos_cargo: TStringField
      FieldKind = fkLookup
      FieldName = '_cargo'
      LookupDataSet = cargos
      LookupKeyFields = 'idcargo'
      LookupResultField = 'nombre'
      KeyFields = 'idCargo'
      Size = 30
      Lookup = True
    end
    object SocioFuentesIngresosFijos_frecuencia: TStringField
      FieldKind = fkLookup
      FieldName = '_frecuencia'
      LookupDataSet = frecuenciaPagos
      LookupKeyFields = 'letra'
      LookupResultField = 'descripcion'
      KeyFields = 'letraFrecuencia'
      Lookup = True
    end
    object SocioFuentesIngresosFijos_formaPago: TStringField
      FieldKind = fkLookup
      FieldName = '_formaPago'
      LookupDataSet = formasPagos
      LookupKeyFields = 'idFormaPago'
      LookupResultField = 'descripcion'
      KeyFields = 'idFormaPago'
      Size = 30
      Lookup = True
    end
    object SocioFuentesIngresosFijos_proveedor: TStringField
      FieldKind = fkLookup
      FieldName = '_proveedor'
      LookupDataSet = DataModulo1.proveedores
      LookupKeyFields = 'guidSocio'
      LookupResultField = 'nombreCompleto'
      KeyFields = 'guidFuente'
      Size = 50
      Lookup = True
    end
    object SocioFuentesIngresosFijoshasta: TSQLTimeStampField
      FieldName = 'hasta'
      Origin = 'hasta'
    end
  end
  object dtsSocioFuentesIngresosFijos: TDataSource
    DataSet = SocioFuentesIngresosFijos
    Left = 96
    Top = 244
  end
  object frecuenciaPagos: TFDQuery
    Connection = DataModulo1.cnn2
    SQL.Strings = (
      'Select * from frecuenciaPagos'
      'Order by Descripcion')
    Left = 800
    Top = 196
    object frecuenciaPagosidFormaPago: TFDAutoIncField
      FieldName = 'idFormaPago'
      Origin = 'idFormaPago'
      ReadOnly = True
    end
    object frecuenciaPagosdescripcion: TStringField
      FieldName = 'descripcion'
      Origin = 'descripcion'
      Size = 50
    end
    object frecuenciaPagosletra: TWideStringField
      FieldName = 'letra'
      Origin = 'letra'
      FixedChar = True
      Size = 1
    end
    object frecuenciaPagosdias: TIntegerField
      FieldName = 'dias'
      Origin = 'dias'
    end
    object frecuenciaPagosguid: TStringField
      FieldName = 'guid'
      Origin = 'guid'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
  end
  object dtsFrecuenciaPagos: TDataSource
    DataSet = frecuenciaPagos
    Left = 800
    Top = 252
  end
  object formasPagos: TFDQuery
    Connection = DataModulo1.cnn2
    SQL.Strings = (
      'Select * from formasPagos'
      'Order by Descripcion')
    Left = 800
    Top = 76
    object formasPagosidFormaPago: TFDAutoIncField
      FieldName = 'idFormaPago'
      Origin = 'idFormaPago'
      ReadOnly = True
    end
    object formasPagosdescripcion: TStringField
      FieldName = 'descripcion'
      Origin = 'descripcion'
      Size = 50
    end
    object formasPagosletra: TWideStringField
      FieldName = 'letra'
      Origin = 'letra'
      FixedChar = True
      Size = 2
    end
    object formasPagosguid: TStringField
      FieldName = 'guid'
      Origin = 'guid'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
  end
  object dtsFormasPagos: TDataSource
    DataSet = formasPagos
    Left = 800
    Top = 125
  end
  object fuentesIngresos: TFDQuery
    Connection = DataModulo1.cnn2
    SQL.Strings = (
      'Select * from TipoIngreso'
      'Order by Descripcion')
    Left = 880
    Top = 28
    object fuentesIngresosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fuentesIngresosdescripcion: TStringField
      FieldName = 'descripcion'
      Origin = 'descripcion'
      Size = 50
    end
    object fuentesIngresosfecha_au: TSQLTimeStampField
      FieldName = 'fecha_au'
      Origin = 'fecha_au'
    end
    object fuentesIngresostipoFlujo: TStringField
      FieldName = 'tipoFlujo'
      Origin = 'tipoFlujo'
      Size = 1
    end
    object fuentesIngresosusuario_au: TStringField
      FieldName = 'usuario_au'
      Origin = 'usuario_au'
      Size = 10
    end
    object fuentesIngresosactivo: TBooleanField
      FieldName = 'activo'
      Origin = 'activo'
    end
    object fuentesIngresosguid: TStringField
      FieldName = 'guid'
      Origin = 'guid'
      Required = True
      Size = 50
    end
  end
  object dtsFuentesIngresos: TDataSource
    DataSet = fuentesIngresos
    Left = 888
    Top = 84
  end
  object actividadEconomica: TFDQuery
    Connection = DataModulo1.cnn2
    SQL.Strings = (
      'Select * from actividadEconomica'
      'Order by Descripcion')
    Left = 48
    Top = 36
    object actividadEconomicaidActividad: TFDAutoIncField
      FieldName = 'idActividad'
      Origin = 'idActividad'
      ReadOnly = True
    end
    object actividadEconomicadescripcion: TStringField
      FieldName = 'descripcion'
      Origin = 'descripcion'
      Size = 50
    end
    object actividadEconomicaguidSector: TStringField
      FieldName = 'guidSector'
      Origin = 'guidSector'
      Size = 50
    end
    object actividadEconomicaidSector: TIntegerField
      FieldName = 'idSector'
      Origin = 'idSector'
    end
    object actividadEconomicaguid: TStringField
      FieldName = 'guid'
      Origin = 'guid'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object actividadEconomicaesRiesgosa: TBooleanField
      FieldName = 'esRiesgosa'
      Origin = 'esRiesgosa'
    end
  end
  object dtsActividadEconomica: TDataSource
    DataSet = actividadEconomica
    Left = 96
    Top = 36
  end
  object SocioFuentesIngresosVariables: TFDQuery
    Connection = DataModulo1.cnn2
    SQL.Strings = (
      'select * from socioFuentesIngresos')
    Left = 64
    Top = 308
    object IntegerField1: TIntegerField
      FieldName = 'idsocio'
      Origin = 'idsocio'
    end
    object IntegerField2: TIntegerField
      FieldName = 'idsector'
      Origin = 'idsector'
    end
    object StringField1: TStringField
      FieldName = 'guid'
      Origin = 'guid'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object StringField2: TStringField
      FieldName = 'guidSocio'
      Origin = 'guidSocio'
      Size = 50
    end
    object IntegerField3: TIntegerField
      FieldName = 'idActividad'
      Origin = 'idActividad'
    end
    object IntegerField4: TIntegerField
      FieldName = 'idCargo'
      Origin = 'idCargo'
    end
    object StringField3: TStringField
      FieldName = 'guidFuente'
      Origin = 'guidFuente'
      Size = 50
    end
    object StringField4: TStringField
      FieldName = 'guidSector'
      Origin = 'guidSector'
      Size = 50
    end
    object DateField1: TDateField
      FieldName = 'desde'
      Origin = 'desde'
    end
    object BooleanField1: TBooleanField
      FieldName = 'activo'
      Origin = 'activo'
    end
    object StringField5: TStringField
      FieldName = 'cargo'
      Origin = 'cargo'
      Size = 50
    end
    object IntegerField5: TIntegerField
      FieldName = 'frecuencia'
      Origin = 'frecuencia'
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'monto'
      Origin = 'monto'
    end
    object IntegerField6: TIntegerField
      FieldName = 'idFormaPago'
      Origin = 'idFormaPago'
    end
    object StringField6: TStringField
      FieldName = 'guidFormaPago'
      Origin = 'guidFormaPago'
      Required = True
      Size = 50
    end
    object IntegerField7: TIntegerField
      FieldName = 'fuente'
      Origin = 'fuente'
      Required = True
    end
    object IntegerField8: TIntegerField
      FieldName = 'tipoFuente'
      Origin = 'tipoFuente'
    end
    object StringField7: TStringField
      FieldName = 'descripcionTipoFuente'
      Origin = 'descripcionTipoFuente'
      Size = 50
    end
    object IntegerField9: TIntegerField
      FieldName = 'idtipoFuente'
      Origin = 'idtipoFuente'
    end
    object IntegerField10: TIntegerField
      FieldName = 'idtipoIngreso'
      Origin = 'idtipoIngreso'
    end
    object StringField8: TStringField
      FieldName = 'idtipoFlujo'
      Origin = 'idtipoFlujo'
      Size = 1
    end
    object SocioFuentesIngresosVariablesletraFrecuencia: TWideStringField
      FieldName = 'letraFrecuencia'
      Origin = 'letraFrecuencia'
      FixedChar = True
      Size = 1
    end
  end
  object dtsSocioFuentesIngresosVariables: TDataSource
    DataSet = SocioFuentesIngresosVariables
    Left = 96
    Top = 308
  end
  object sectorEconomico: TFDQuery
    Connection = DataModulo1.cnn2
    SQL.Strings = (
      'select * from sectorEconomico')
    Left = 64
    Top = 364
    object sectorEconomicoidSectorEco: TFDAutoIncField
      FieldName = 'idSectorEco'
      Origin = 'idSectorEco'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sectorEconomicodescripcion: TStringField
      FieldName = 'descripcion'
      Origin = 'descripcion'
      Size = 50
    end
    object sectorEconomicoidtarifa: TBCDField
      FieldName = 'idtarifa'
      Origin = 'idtarifa'
      Precision = 18
      Size = 2
    end
    object sectorEconomicoguid: TStringField
      FieldName = 'guid'
      Origin = 'guid'
      Size = 50
    end
  end
  object dtsSectorEconomico: TDataSource
    DataSet = SocioFuentesIngresosFijos
    Left = 96
    Top = 364
  end
  object cargos: TFDQuery
    Connection = DataModulo1.cnn2
    SQL.Strings = (
      'select * from Cargo'
      'order by idcargo')
    Left = 344
    Top = 28
    object cargosidcargo: TIntegerField
      FieldName = 'idcargo'
      Origin = 'idcargo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cargosnombre: TWideStringField
      FieldName = 'nombre'
      Origin = 'nombre'
      Size = 50
    end
    object cargosfecha_aud: TSQLTimeStampField
      FieldName = 'fecha_aud'
      Origin = 'fecha_aud'
    end
    object cargosesRiesgo: TBooleanField
      FieldName = 'esRiesgo'
      Origin = 'esRiesgo'
    end
    object cargosusuario: TWideStringField
      FieldName = 'usuario'
      Origin = 'usuario'
      Size = 10
    end
    object cargosguid: TStringField
      FieldName = 'guid'
      Origin = 'guid'
      Size = 50
    end
  end
  object dtsCargos: TDataSource
    DataSet = cargos
    Left = 392
    Top = 28
  end
  object SocioTotalIngresosFijos: TFDQuery
    Connection = DataModulo1.cnn2
    SQL.Strings = (
      'select'
      ' F.Descripcion,'
      ' Total = sum(S.monto),'
      
        ' [Total Vigente] = sum (Case activo when 1 then monto else 0 end' +
        ') '
      
        'From frecuenciaPagos F left join socioFuentesIngresos S on S.let' +
        'raFrecuencia = F.letra'
      'where S.idtipoFlujo = '#39'F'#39'  and guidSocio = :guid'
      'group by F.descripcion ')
    Left = 64
    Top = 424
    ParamData = <
      item
        Name = 'GUID'
        DataType = ftString
        ParamType = ptInput
        Value = '{D4907F71-FA12-41FC-A8C2-0D67AA723A9D}'
      end>
    object SocioTotalIngresosFijosDescripcion: TStringField
      FieldName = 'Descripcion'
      Origin = 'Descripcion'
      Size = 50
    end
    object SocioTotalIngresosFijostotal: TCurrencyField
      FieldName = 'total'
      Origin = 'total'
      ReadOnly = True
    end
    object SocioTotalIngresosFijosTotalVigente: TCurrencyField
      FieldName = 'Total Vigente'
      Origin = '[Total Vigente]'
      ReadOnly = True
    end
  end
  object dtsSocioTotalIngresosFijos: TDataSource
    DataSet = SocioTotalIngresosFijos
    Left = 96
    Top = 425
  end
end
