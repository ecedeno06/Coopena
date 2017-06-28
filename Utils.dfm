object frmUtil: TfrmUtil
  Left = 0
  Top = 0
  Caption = 'frmUtil'
  ClientHeight = 471
  ClientWidth = 727
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 552
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 168
    Top = 232
    Width = 89
    Height = 33
    Caption = 'Tabla Morosidad'
    TabOrder = 1
  end
  object Button3: TButton
    Left = 168
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Trx_Detalle'
    TabOrder = 2
    OnClick = Button1Click
  end
  object btnMaes_aux: TButton
    Left = 168
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Maes_aux'
    TabOrder = 3
    OnClick = btnMaes_auxClick
  end
  object Button4: TButton
    Left = 168
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Trx_Enca'
    TabOrder = 4
  end
  object Button5: TButton
    Left = 168
    Top = 312
    Width = 89
    Height = 33
    Caption = 'Tabla Aprobaciones'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 168
    Top = 392
    Width = 89
    Height = 33
    Caption = 'Aprobacion / Usuario'
    TabOrder = 6
    OnClick = Button5Click
  end
  object Transacciones_Pacto: TFDQuery
    Connection = cnnPacto
    SQL.Strings = (
      'select * '
      'from transaccion_enc')
    Left = 640
    Top = 203
    object Transacciones_Pactotipo_documento: TWideStringField
      FieldName = 'tipo_documento'
      Origin = 'tipo_documento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object Transacciones_Pactodocumento: TIntegerField
      FieldName = 'documento'
      Origin = 'documento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Transacciones_Pactofecha_doc: TSQLTimeStampField
      FieldName = 'fecha_doc'
      Origin = 'fecha_doc'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Transacciones_Pactoestado: TSingleField
      FieldName = 'estado'
      Origin = 'estado'
    end
    object Transacciones_Pactoobservacion: TWideStringField
      FieldName = 'observacion'
      Origin = 'observacion'
      Size = 250
    end
    object Transacciones_Pactoanombrede: TIntegerField
      FieldName = 'anombrede'
      Origin = 'anombrede'
    end
    object Transacciones_Pactoimpreso: TSingleField
      FieldName = 'impreso'
      Origin = 'impreso'
    end
    object Transacciones_Pactoanulado: TSingleField
      FieldName = 'anulado'
      Origin = 'anulado'
    end
    object Transacciones_Pactocontabilidad: TSingleField
      FieldName = 'contabilidad'
      Origin = 'contabilidad'
    end
    object Transacciones_Pactoconciliado: TSingleField
      FieldName = 'conciliado'
      Origin = 'conciliado'
    end
    object Transacciones_Pactofecha_aud: TSQLTimeStampField
      FieldName = 'fecha_aud'
      Origin = 'fecha_aud'
    end
    object Transacciones_Pactousuario: TWideStringField
      FieldName = 'usuario'
      Origin = 'usuario'
      Size = 10
    end
    object Transacciones_Pactomonto_gral: TFloatField
      FieldName = 'monto_gral'
      Origin = 'monto_gral'
    end
    object Transacciones_Pactopagare: TWideStringField
      FieldName = 'pagare'
      Origin = 'pagare'
      Size = 25
    end
  end
  object cnnPacto: TFDConnection
    Params.Strings = (
      'Database=D:\Guarare\Syscoop2003\BD\pacto.mdb'
      'DriverID=MSAcc')
    Connected = True
    LoginPrompt = False
    Left = 96
    Top = 8
  end
  object cnnCoopena: TFDConnection
    Params.Strings = (
      'User_Name=sa'
      'Password=Frijol001.'
      'Server=(local)'
      'Database=Coopena'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 16
    Top = 8
  end
  object Transacciones_Coopena: TFDQuery
    Connection = cnnCoopena
    SQL.Strings = (
      'select * '
      'from transaccion_enc')
    Left = 496
    Top = 203
    object Transacciones_Coopenatipo_documento: TWideStringField
      FieldName = 'tipo_documento'
      Origin = 'tipo_documento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object Transacciones_Coopenadocumento: TIntegerField
      FieldName = 'documento'
      Origin = 'documento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Transacciones_Coopenafecha_doc: TSQLTimeStampField
      FieldName = 'fecha_doc'
      Origin = 'fecha_doc'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Transacciones_Coopenaestado: TSingleField
      FieldName = 'estado'
      Origin = 'estado'
    end
    object Transacciones_Coopenaobservacion: TWideStringField
      FieldName = 'observacion'
      Origin = 'observacion'
      Size = 250
    end
    object Transacciones_Coopenaanombrede: TIntegerField
      FieldName = 'anombrede'
      Origin = 'anombrede'
    end
    object Transacciones_Coopenaimpreso: TSingleField
      FieldName = 'impreso'
      Origin = 'impreso'
    end
    object Transacciones_Coopenaanulado: TSingleField
      FieldName = 'anulado'
      Origin = 'anulado'
    end
    object Transacciones_Coopenacontabilidad: TSingleField
      FieldName = 'contabilidad'
      Origin = 'contabilidad'
    end
    object Transacciones_Coopenaconciliado: TSingleField
      FieldName = 'conciliado'
      Origin = 'conciliado'
    end
    object Transacciones_Coopenafecha_aud: TSQLTimeStampField
      FieldName = 'fecha_aud'
      Origin = 'fecha_aud'
    end
    object Transacciones_Coopenausuario: TWideStringField
      FieldName = 'usuario'
      Origin = 'usuario'
      Size = 10
    end
    object Transacciones_Coopenamonto_gral: TFloatField
      FieldName = 'monto_gral'
      Origin = 'monto_gral'
    end
    object Transacciones_Coopenapagare: TWideStringField
      FieldName = 'pagare'
      Origin = 'pagare'
      Size = 25
    end
  end
  object Morosidad_hist_Coopena: TFDQuery
    Connection = cnnCoopena
    SQL.Strings = (
      'select * '
      'from Morosidad_hist')
    Left = 112
    Top = 235
    object Morosidad_hist_Coopenafecha_inicio: TSQLTimeStampField
      FieldName = 'fecha_inicio'
      Origin = 'fecha_inicio'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Morosidad_hist_Coopenanum_cuenta: TWideStringField
      FieldName = 'num_cuenta'
      Origin = 'num_cuenta'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 12
    end
    object Morosidad_hist_Coopenasaldo_ini: TFloatField
      FieldName = 'saldo_ini'
      Origin = 'saldo_ini'
    end
    object Morosidad_hist_Coopenasaldo_act: TFloatField
      FieldName = 'saldo_act'
      Origin = 'saldo_act'
    end
    object Morosidad_hist_Coopenadebe_ser: TFloatField
      FieldName = 'debe_ser'
      Origin = 'debe_ser'
    end
    object Morosidad_hist_Coopenaletra: TFloatField
      FieldName = 'letra'
      Origin = 'letra'
    end
    object Morosidad_hist_Coopenam1_3: TFloatField
      FieldName = 'm1_3'
      Origin = 'm1_3'
    end
    object Morosidad_hist_Coopenam4_6: TFloatField
      FieldName = 'm4_6'
      Origin = 'm4_6'
    end
    object Morosidad_hist_Coopenam7_9: TFloatField
      FieldName = 'm7_9'
      Origin = 'm7_9'
    end
    object Morosidad_hist_Coopenam10_12: TFloatField
      FieldName = 'm10_12'
      Origin = 'm10_12'
    end
    object Morosidad_hist_Coopenamas: TFloatField
      FieldName = 'mas'
      Origin = 'mas'
    end
    object Morosidad_hist_Coopenadepositos: TFloatField
      FieldName = 'depositos'
      Origin = 'depositos'
    end
    object Morosidad_hist_Coopenacargo: TFloatField
      FieldName = 'cargo'
      Origin = 'cargo'
    end
    object Morosidad_hist_Coopenaprocesada: TWideStringField
      FieldName = 'procesada'
      Origin = 'procesada'
      Size = 1
    end
    object Morosidad_hist_Coopenafecha_aud: TSQLTimeStampField
      FieldName = 'fecha_aud'
      Origin = 'fecha_aud'
    end
    object Morosidad_hist_Coopenausuario: TWideStringField
      FieldName = 'usuario'
      Origin = 'usuario'
      Size = 10
    end
  end
  object Morosidad_hist_Pacto: TFDQuery
    Connection = cnnPacto
    SQL.Strings = (
      'select * '
      'from Morosidad_hist')
    Left = 280
    Top = 235
    object Morosidad_hist_Pactofecha_inicio: TSQLTimeStampField
      FieldName = 'fecha_inicio'
      Origin = 'fecha_inicio'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Morosidad_hist_Pactonum_cuenta: TWideStringField
      FieldName = 'num_cuenta'
      Origin = 'num_cuenta'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 12
    end
    object Morosidad_hist_Pactosaldo_ini: TFloatField
      FieldName = 'saldo_ini'
      Origin = 'saldo_ini'
    end
    object Morosidad_hist_Pactosaldo_act: TFloatField
      FieldName = 'saldo_act'
      Origin = 'saldo_act'
    end
    object Morosidad_hist_Pactodebe_ser: TFloatField
      FieldName = 'debe_ser'
      Origin = 'debe_ser'
    end
    object Morosidad_hist_Pactoletra: TFloatField
      FieldName = 'letra'
      Origin = 'letra'
    end
    object Morosidad_hist_Pactom1_3: TFloatField
      FieldName = 'm1_3'
      Origin = 'm1_3'
    end
    object Morosidad_hist_Pactom4_6: TFloatField
      FieldName = 'm4_6'
      Origin = 'm4_6'
    end
    object Morosidad_hist_Pactom7_9: TFloatField
      FieldName = 'm7_9'
      Origin = 'm7_9'
    end
    object Morosidad_hist_Pactom10_12: TFloatField
      FieldName = 'm10_12'
      Origin = 'm10_12'
    end
    object Morosidad_hist_Pactomas: TFloatField
      FieldName = 'mas'
      Origin = 'mas'
    end
    object Morosidad_hist_Pactodepositos: TFloatField
      FieldName = 'depositos'
      Origin = 'depositos'
    end
    object Morosidad_hist_Pactocargo: TFloatField
      FieldName = 'cargo'
      Origin = 'cargo'
    end
    object Morosidad_hist_Pactoprocesada: TWideStringField
      FieldName = 'procesada'
      Origin = 'procesada'
      Size = 1
    end
    object Morosidad_hist_Pactofecha_aud: TSQLTimeStampField
      FieldName = 'fecha_aud'
      Origin = 'fecha_aud'
    end
    object Morosidad_hist_Pactousuario: TWideStringField
      FieldName = 'usuario'
      Origin = 'usuario'
      Size = 10
    end
  end
  object trx_Det_coopena: TFDQuery
    Connection = cnnCoopena
    SQL.Strings = (
      'select * '
      'from transaccion_det')
    Left = 112
    Top = 64
    object trx_Det_coopenatipo_documento: TWideStringField
      FieldName = 'tipo_documento'
      Origin = 'tipo_documento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object trx_Det_coopenadocumento: TIntegerField
      FieldName = 'documento'
      Origin = 'documento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object trx_Det_coopenafecha_doc: TSQLTimeStampField
      FieldName = 'fecha_doc'
      Origin = 'fecha_doc'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object trx_Det_coopenanum_cuenta: TWideStringField
      FieldName = 'num_cuenta'
      Origin = 'num_cuenta'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 12
    end
    object trx_Det_coopenacuenta: TWideStringField
      FieldName = 'cuenta'
      Origin = 'cuenta'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object trx_Det_coopenanaturaleza: TWideStringField
      FieldName = 'naturaleza'
      Origin = 'naturaleza'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 1
    end
    object trx_Det_coopenamonto: TFloatField
      FieldName = 'monto'
      Origin = 'monto'
    end
    object trx_Det_coopenafecha_aud: TSQLTimeStampField
      FieldName = 'fecha_aud'
      Origin = 'fecha_aud'
    end
    object trx_Det_coopenausuario: TWideStringField
      FieldName = 'usuario'
      Origin = 'usuario'
      Size = 10
    end
  end
  object trx_Det_Pacto: TFDQuery
    Connection = cnnPacto
    SQL.Strings = (
      'select * '
      'from transaccion_det'
      'where num_cuenta = '#39'2800018002'#39)
    Left = 264
    Top = 64
    object trx_Det_Pactotipo_documento: TWideStringField
      FieldName = 'tipo_documento'
      Origin = 'tipo_documento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object trx_Det_Pactodocumento: TIntegerField
      FieldName = 'documento'
      Origin = 'documento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object trx_Det_Pactofecha_doc: TSQLTimeStampField
      FieldName = 'fecha_doc'
      Origin = 'fecha_doc'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object trx_Det_Pactonum_cuenta: TWideStringField
      FieldName = 'num_cuenta'
      Origin = 'num_cuenta'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 12
    end
    object trx_Det_Pactocuenta: TWideStringField
      FieldName = 'cuenta'
      Origin = 'cuenta'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object trx_Det_Pactonaturaleza: TWideStringField
      FieldName = 'naturaleza'
      Origin = 'naturaleza'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 1
    end
    object trx_Det_Pactomonto: TFloatField
      FieldName = 'monto'
      Origin = 'monto'
    end
    object trx_Det_Pactofecha_aud: TSQLTimeStampField
      FieldName = 'fecha_aud'
      Origin = 'fecha_aud'
    end
    object trx_Det_Pactousuario: TWideStringField
      FieldName = 'usuario'
      Origin = 'usuario'
      Size = 10
    end
  end
  object maes_aux_coopena: TFDQuery
    Connection = cnnCoopena
    SQL.Strings = (
      'select * from maes_aux')
    Left = 112
    Top = 113
    object maes_aux_coopenanum_cuenta: TWideStringField
      FieldName = 'num_cuenta'
      Origin = 'num_cuenta'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 12
    end
    object maes_aux_coopenasocio: TIntegerField
      FieldName = 'socio'
      Origin = 'socio'
    end
    object maes_aux_coopenasubcuenta: TSmallintField
      FieldName = 'subcuenta'
      Origin = 'subcuenta'
    end
    object maes_aux_coopenamonto: TFloatField
      FieldName = 'monto'
      Origin = 'monto'
      Required = True
    end
    object maes_aux_coopenaplazo: TFloatField
      FieldName = 'plazo'
      Origin = 'plazo'
    end
    object maes_aux_coopenafinalidad: TSmallintField
      FieldName = 'finalidad'
      Origin = 'finalidad'
    end
    object maes_aux_coopenaestado: TWideStringField
      FieldName = 'estado'
      Origin = 'estado'
      Size = 1
    end
    object maes_aux_coopenaletra: TFloatField
      FieldName = 'letra'
      Origin = 'letra'
    end
    object maes_aux_coopenadesc_planilla: TFloatField
      FieldName = 'desc_planilla'
      Origin = 'desc_planilla'
    end
    object maes_aux_coopenatasa: TFloatField
      FieldName = 'tasa'
      Origin = 'tasa'
      Required = True
    end
    object maes_aux_coopenaperiodo_planilla: TWideStringField
      FieldName = 'periodo_planilla'
      Origin = 'periodo_planilla'
      Size = 1
    end
    object maes_aux_coopenainteres_pendiente: TFloatField
      FieldName = 'interes_pendiente'
      Origin = 'interes_pendiente'
    end
    object maes_aux_coopenafecha_inicio: TSQLTimeStampField
      FieldName = 'fecha_inicio'
      Origin = 'fecha_inicio'
    end
    object maes_aux_coopenaperiodo_tasa: TWideStringField
      FieldName = 'periodo_tasa'
      Origin = 'periodo_tasa'
      Size = 50
    end
    object maes_aux_coopenamonto_pignorado: TFloatField
      FieldName = 'monto_pignorado'
      Origin = 'monto_pignorado'
    end
    object maes_aux_coopenatipo_periodo_tasa: TSmallintField
      FieldName = 'tipo_periodo_tasa'
      Origin = 'tipo_periodo_tasa'
    end
    object maes_aux_coopenagarantias: TMemoField
      FieldName = 'garantias'
      Origin = 'garantias'
      BlobType = ftMemo
      Size = 2147483647
    end
    object maes_aux_coopenafecha_aud: TSQLTimeStampField
      FieldName = 'fecha_aud'
      Origin = 'fecha_aud'
    end
    object maes_aux_coopenausuario: TWideStringField
      FieldName = 'usuario'
      Origin = 'usuario'
      Size = 10
    end
  end
  object maes_aux_pacto: TFDQuery
    SQL.Strings = (
      'select * '
      'from maes_aux'
      'where socio = 180')
    Left = 264
    Top = 112
    object maes_aux_pactonum_cuenta: TWideStringField
      FieldName = 'num_cuenta'
      Origin = 'num_cuenta'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 12
    end
    object maes_aux_pactosocio: TIntegerField
      FieldName = 'socio'
      Origin = 'socio'
    end
    object maes_aux_pactosubcuenta: TSmallintField
      FieldName = 'subcuenta'
      Origin = 'subcuenta'
    end
    object maes_aux_pactomonto: TFloatField
      FieldName = 'monto'
      Origin = 'monto'
    end
    object maes_aux_pactoplazo: TFloatField
      FieldName = 'plazo'
      Origin = 'plazo'
    end
    object maes_aux_pactofinalidad: TSmallintField
      FieldName = 'finalidad'
      Origin = 'finalidad'
    end
    object maes_aux_pactoestado: TWideStringField
      FieldName = 'estado'
      Origin = 'estado'
      Size = 1
    end
    object maes_aux_pactoletra: TFloatField
      FieldName = 'letra'
      Origin = 'letra'
    end
    object maes_aux_pactodesc_planilla: TFloatField
      FieldName = 'desc_planilla'
      Origin = 'desc_planilla'
    end
    object maes_aux_pactotasa: TFloatField
      FieldName = 'tasa'
      Origin = 'tasa'
    end
    object maes_aux_pactoperiodo_planilla: TWideStringField
      FieldName = 'periodo_planilla'
      Origin = 'periodo_planilla'
      Size = 1
    end
    object maes_aux_pactointeres_pendiente: TFloatField
      FieldName = 'interes_pendiente'
      Origin = 'interes_pendiente'
    end
    object maes_aux_pactofecha_inicio: TSQLTimeStampField
      FieldName = 'fecha_inicio'
      Origin = 'fecha_inicio'
    end
    object maes_aux_pactoperiodo_tasa: TWideStringField
      FieldName = 'periodo_tasa'
      Origin = 'periodo_tasa'
      Size = 50
    end
    object maes_aux_pactomonto_pignorado: TFloatField
      FieldName = 'monto_pignorado'
      Origin = 'monto_pignorado'
    end
    object maes_aux_pactotipo_periodo_tasa: TSmallintField
      FieldName = 'tipo_periodo_tasa'
      Origin = 'tipo_periodo_tasa'
    end
    object maes_aux_pactogarantias: TWideStringField
      FieldName = 'garantias'
      Origin = 'garantias'
      Size = 200
    end
    object maes_aux_pactofecha_aud: TSQLTimeStampField
      FieldName = 'fecha_aud'
      Origin = 'fecha_aud'
    end
    object maes_aux_pactousuario: TWideStringField
      FieldName = 'usuario'
      Origin = 'usuario'
      Size = 10
    end
  end
  object trx_enc_coopena: TFDQuery
    Connection = cnnCoopena
    SQL.Strings = (
      'select * '
      'from transaccion_enc'
      '')
    Left = 112
    Top = 160
    object trx_enc_coopenatipo_documento: TWideStringField
      FieldName = 'tipo_documento'
      Origin = 'tipo_documento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object trx_enc_coopenadocumento: TIntegerField
      FieldName = 'documento'
      Origin = 'documento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object trx_enc_coopenafecha_doc: TSQLTimeStampField
      FieldName = 'fecha_doc'
      Origin = 'fecha_doc'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object trx_enc_coopenaestado: TSingleField
      FieldName = 'estado'
      Origin = 'estado'
    end
    object trx_enc_coopenaobservacion: TWideStringField
      FieldName = 'observacion'
      Origin = 'observacion'
      Size = 250
    end
    object trx_enc_coopenaanombrede: TIntegerField
      FieldName = 'anombrede'
      Origin = 'anombrede'
    end
    object trx_enc_coopenaimpreso: TSingleField
      FieldName = 'impreso'
      Origin = 'impreso'
    end
    object trx_enc_coopenaanulado: TSingleField
      FieldName = 'anulado'
      Origin = 'anulado'
    end
    object trx_enc_coopenacontabilidad: TSingleField
      FieldName = 'contabilidad'
      Origin = 'contabilidad'
    end
    object trx_enc_coopenaconciliado: TSingleField
      FieldName = 'conciliado'
      Origin = 'conciliado'
    end
    object trx_enc_coopenafecha_aud: TSQLTimeStampField
      FieldName = 'fecha_aud'
      Origin = 'fecha_aud'
    end
    object trx_enc_coopenausuario: TWideStringField
      FieldName = 'usuario'
      Origin = 'usuario'
      Size = 10
    end
    object trx_enc_coopenamonto_gral: TFloatField
      FieldName = 'monto_gral'
      Origin = 'monto_gral'
    end
    object trx_enc_coopenapagare: TWideStringField
      FieldName = 'pagare'
      Origin = 'pagare'
      Size = 25
    end
  end
  object trx_enc_pacto: TFDQuery
    Connection = cnnPacto
    SQL.Strings = (
      'select * '
      'from transaccion_enc')
    Left = 264
    Top = 160
    object trx_enc_pactotipo_documento: TWideStringField
      FieldName = 'tipo_documento'
      Origin = 'tipo_documento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 3
    end
    object trx_enc_pactodocumento: TIntegerField
      FieldName = 'documento'
      Origin = 'documento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object trx_enc_pactofecha_doc: TSQLTimeStampField
      FieldName = 'fecha_doc'
      Origin = 'fecha_doc'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object trx_enc_pactoestado: TSingleField
      FieldName = 'estado'
      Origin = 'estado'
    end
    object trx_enc_pactoobservacion: TWideStringField
      FieldName = 'observacion'
      Origin = 'observacion'
      Size = 250
    end
    object trx_enc_pactoanombrede: TIntegerField
      FieldName = 'anombrede'
      Origin = 'anombrede'
    end
    object trx_enc_pactoimpreso: TSingleField
      FieldName = 'impreso'
      Origin = 'impreso'
    end
    object trx_enc_pactoanulado: TSingleField
      FieldName = 'anulado'
      Origin = 'anulado'
    end
    object trx_enc_pactocontabilidad: TSingleField
      FieldName = 'contabilidad'
      Origin = 'contabilidad'
    end
    object trx_enc_pactoconciliado: TSingleField
      FieldName = 'conciliado'
      Origin = 'conciliado'
    end
    object trx_enc_pactofecha_aud: TSQLTimeStampField
      FieldName = 'fecha_aud'
      Origin = 'fecha_aud'
    end
    object trx_enc_pactousuario: TWideStringField
      FieldName = 'usuario'
      Origin = 'usuario'
      Size = 10
    end
    object trx_enc_pactomonto_gral: TFloatField
      FieldName = 'monto_gral'
      Origin = 'monto_gral'
    end
    object trx_enc_pactopagare: TWideStringField
      FieldName = 'pagare'
      Origin = 'pagare'
      Size = 25
    end
  end
  object Aprobaciones_Coopena: TFDQuery
    Connection = cnnCoopena
    SQL.Strings = (
      'select * '
      'from chq_nivel_aprobacion')
    Left = 104
    Top = 315
    object Aprobaciones_Coopenanivel: TSingleField
      FieldName = 'nivel'
      Origin = 'nivel'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Aprobaciones_Coopenanombre: TWideStringField
      FieldName = 'nombre'
      Origin = 'nombre'
    end
    object Aprobaciones_Coopenaorden: TSmallintField
      FieldName = 'orden'
      Origin = 'orden'
    end
    object Aprobaciones_Coopenaestado: TByteField
      FieldName = 'estado'
      Origin = 'estado'
    end
    object Aprobaciones_Coopenafecha_aud: TSQLTimeStampField
      FieldName = 'fecha_aud'
      Origin = 'fecha_aud'
    end
    object Aprobaciones_Coopenausuario: TWideStringField
      FieldName = 'usuario'
      Origin = 'usuario'
      Size = 10
    end
  end
  object Aprobaciones_Pacto: TFDQuery
    Connection = cnnPacto
    SQL.Strings = (
      'select * '
      'from chq_nivel_aprobacion')
    Left = 288
    Top = 315
    object Aprobaciones_Pactonivel: TSingleField
      FieldName = 'nivel'
      Origin = 'nivel'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Aprobaciones_Pactonombre: TWideStringField
      FieldName = 'nombre'
      Origin = 'nombre'
    end
    object Aprobaciones_Pactoorden: TSmallintField
      FieldName = 'orden'
      Origin = 'orden'
    end
    object Aprobaciones_Pactoestado: TByteField
      FieldName = 'estado'
      Origin = 'estado'
    end
    object Aprobaciones_Pactofecha_aud: TSQLTimeStampField
      FieldName = 'fecha_aud'
      Origin = 'fecha_aud'
    end
    object Aprobaciones_Pactousuario: TWideStringField
      FieldName = 'usuario'
      Origin = 'usuario'
      Size = 10
    end
  end
  object Aprobacion_Usuario_Coopena: TFDQuery
    Connection = cnnCoopena
    SQL.Strings = (
      'select * from chq_nivel_aprobacion_usuario')
    Left = 104
    Top = 395
    object Aprobacion_Usuario_Coopenanivel: TSingleField
      FieldName = 'nivel'
      Origin = 'nivel'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Aprobacion_Usuario_Coopenausuario: TWideStringField
      FieldName = 'usuario'
      Origin = 'usuario'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object Aprobacion_Usuario_Coopenamonto_no_usar: TFloatField
      FieldName = 'monto_no_usar'
      Origin = 'monto_no_usar'
    end
  end
  object Aprobacion_Usuario_Pacto: TFDQuery
    Connection = cnnPacto
    SQL.Strings = (
      'select * from chq_nivel_aprobacion_usuario')
    Left = 288
    Top = 395
    object Aprobacion_Usuario_Pactonivel: TSingleField
      FieldName = 'nivel'
      Origin = 'nivel'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Aprobacion_Usuario_Pactousuario: TWideStringField
      FieldName = 'usuario'
      Origin = 'usuario'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 10
    end
    object Aprobacion_Usuario_Pactomonto_no_usar: TFloatField
      FieldName = 'monto_no_usar'
      Origin = 'monto_no_usar'
    end
  end
end
