inherited frmMantCuentasChequera: TfrmMantCuentasChequera
  Caption = 'Mantenimiento Cuentas de Chequera'
  ClientWidth = 978
  OnShow = FormShow
  ExplicitWidth = 994
  ExplicitHeight = 500
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Width = 978
    ExplicitTop = 443
    ExplicitWidth = 978
  end
  object PageControl1: TPageControl
    Left = 392
    Top = 2
    Width = 582
    Height = 435
    ActivePage = tsBanco
    Anchors = [akLeft, akTop, akRight, akBottom]
    Images = DataModulo1.ImageList2
    TabOrder = 1
    object tsBanco: TTabSheet
      Caption = 'Tipo Cuenta Cheque'
      ImageIndex = 41
      object ToolBar8: TToolBar
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 568
        Height = 36
        BorderWidth = 1
        ButtonHeight = 30
        ButtonWidth = 30
        Caption = 'ToolBar1'
        DrawingStyle = dsGradient
        GradientEndColor = clMoneyGreen
        Images = DataModulo1.ImageList2
        TabOrder = 0
        object btnCargoNuevo1: TToolButton
          Left = 0
          Top = 0
          Hint = 'Nuevo registro'
          ImageIndex = 8
          ParentShowHint = False
          ShowHint = True
          OnClick = btnCargoNuevo1Click
        end
        object ToolButton1: TToolButton
          Left = 30
          Top = 0
          Caption = 'ToolButton1'
          ImageIndex = 7
        end
        object btnCargoSalvar1: TToolButton
          Left = 60
          Top = 0
          Caption = 'btnCargoSalvar1'
          ImageIndex = 6
          OnClick = btnCargoSalvar1Click
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 42
        Width = 574
        Height = 364
        Align = alClient
        TabOrder = 1
        object Image1: TImage
          Left = 1
          Top = 3
          Width = 48
          Height = 38
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000320000
            003208060000001E3F88B1000003684944415478DAED985B48145118C7BF33E3
            AE975DF3D62E66456B4989195A96A5154CDE8A4AF221A887022B127AB332892E
            425141DA15A287A2CB4B41D443D06D03D3E9A2792B2D2DD3B6BC65CA9AABABBB
            B69799394D1BD8864B36AE3493CD0F8603E7C077FEBF33E79B87413041406207
            9045641189E312D977E29299C37892D861C60281D0C0B1BC6D412E9103A7AF0E
            CED24D534747458A9D4B10EF0C2DF0A1F593E5C8CEECC06191F9B173D40BE3E7
            8A9D4D1035756FA0B6A14916910CB288D4F028A29D1CA29E1AAE153B9B203ABB
            8D60FCD2F75364FFC9CB5D419354E1416A95D8D90461B658C13C60ED3EBA7BEB
            149748C199ABCF972F9AB7242D7981D8D904515CFE129E56D7571CCECD4E9245
            A4C0FF25D26332C3A07568DC368DD086819FAFD2E39ACDEE80CFC6DE516B04AA
            0240131A244CE496FE09BC68783F6E22DB37AC8699D3A7785CFBD8D105176FDC
            1FB5464CD40CD89C95264CE45F4016911A72B37B83DCECBF4116911AB288D418
            2172E0D495670CCB2E153BD858F021C9B223BBB62C7389EC29BC104F22142C76
            A8B1C062DC5F949F5337B1FEFD4E04269E4815458563A5F23CC63803739CE0DF
            29AC9680A114F29739D28821A08419AFAC4E82249BF88FD2A1A58F1EDDF22852
            4A516A7F85A259151212A6898C54920A85A01D4C1D1DD0C718F1EC82D45FDE70
            6F6D1B7CB9F816A29292BCB6E00F18AC2613741B0C2C66D9DCE49292732344CA
            5352F6FAA9D505D114E58F90F0DBD6DDDC0C464B3B97787623E13EDF59DE081D
            A72B217EED5AAF45DC0FADB5BEDE91EFF4CF51C0C0359AA69961918AF4F4BB1A
            9D6E4D444CCC988AFF4D118E61E0B55E0F859C1F7462C28081DB514DDF2B7689
            54AD5C792150A3D9A44B48F097BA88DD6A85C6D25238C8069499115C6718E666
            EDD3073D3FAE566AEA2A02A17BFC5D2654A1A19215F9FE365A6A6A2C4366735B
            A25E1FEBBE36DC1095E9E9C7F986CA53AA54761FA55250A338BF7E553A029D88
            58AFB5BBCFB3ED161F7477C0873F1C9BD7121C871D160BC98F9D9CD399914CD3
            068F22DF29CBC888450C937685F35D47118E573AC0FD7FB2090E4333580D1962
            8B23EADCE749130EF66DE2E28876F6B1B7227C501B20D46067D9E215346DF3B0
            3E92C55466233FDC66013FF46E73AEBF9ABE5FE74D0D01A22349A432B3F8A188
            7FA2BC298E01E86AFACE0AD144FE456411A9218B488D6FF5284E510AF7B36A00
            00000049454E44AE426082}
          Stretch = True
        end
        object GroupBox1: TGroupBox
          Left = 48
          Top = 16
          Width = 519
          Height = 337
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Tipo de Cuenta Cheque:'
          TabOrder = 0
          DesignSize = (
            519
            337)
          object Label1: TLabel
            Left = 16
            Top = 40
            Width = 59
            Height = 13
            Caption = 'No. Cuenta:'
          end
          object Label2: TLabel
            Left = 232
            Top = 40
            Width = 58
            Height = 13
            Caption = 'Descripcion:'
            FocusControl = edNombre
          end
          object Label3: TLabel
            Left = 16
            Top = 69
            Width = 62
            Height = 13
            Caption = 'Tipo Cuenta:'
          end
          object Label4: TLabel
            Left = 231
            Top = 69
            Width = 33
            Height = 13
            Caption = 'Banco:'
          end
          object Label5: TLabel
            Left = 16
            Top = 99
            Width = 62
            Height = 13
            Caption = 'Tipo Cuenta:'
          end
          object SpeedButton1: TSpeedButton
            Left = 486
            Top = 96
            Width = 23
            Height = 21
            Anchors = [akTop, akRight]
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              20000000000000040000C40E0000C40E00000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000080FF00000000000000000000000000000000000000000000
              000000000000000080FF00000000000000000000000000000000000000000000
              0000000080FF000080FF000080FF000000000000000000000000000000000000
              0000000080FF000080FF000080FF000000000000000000000000000000000000
              000000000000000080FF000080FF000080FF0000000000000000000000000000
              80FF000080FF000080FF00000000000000000000000000000000000000000000
              00000000000000000000000080FF000080FF000080FF00000000000080FF0000
              80FF000080FF0000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000080FF000080FF000080FF000080FF0000
              80FF000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000080FF000080FF000080FF0000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000080FF000080FF000080FF000080FF0000
              80FF000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000080FF000080FF000080FF00000000000080FF0000
              80FF000080FF0000000000000000000000000000000000000000000000000000
              000000000000000080FF000080FF000080FF0000000000000000000000000000
              80FF000080FF000080FF00000000000000000000000000000000000000000000
              0000000080FF000080FF000080FF000000000000000000000000000000000000
              0000000080FF000080FF000080FF000000000000000000000000000000000000
              000000000000000080FF00000000000000000000000000000000000000000000
              000000000000000080FF00000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            OnClick = SpeedButton1Click
          end
          object Label6: TLabel
            Left = 17
            Top = 136
            Width = 54
            Height = 13
            Caption = 'Secuencial:'
            FocusControl = DBEdit2
          end
          object Label7: TLabel
            Left = 232
            Top = 136
            Width = 59
            Height = 13
            Caption = 'Incremento:'
            FocusControl = DBEdit3
          end
          object edNombre: TDBEdit
            Left = 296
            Top = 37
            Width = 214
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            DataField = 'nombre'
            DataSource = dtsChequesCuenta
            TabOrder = 0
            ExplicitWidth = 227
          end
          object DBEdit1: TDBEdit
            Left = 81
            Top = 37
            Width = 121
            Height = 21
            DataField = 'no_cuenta'
            DataSource = dtsChequesCuenta
            TabOrder = 1
          end
          object edTipoCuenta: TDBLookupComboBox
            Left = 81
            Top = 66
            Width = 121
            Height = 21
            DataField = 'tipo'
            DataSource = dtsChequesCuenta
            KeyField = 'tipos'
            ListField = 'nombre'
            ListSource = dtsTipoCuenta
            TabOrder = 2
          end
          object edBanco: TDBLookupComboBox
            Left = 296
            Top = 66
            Width = 214
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            DataField = 'banco'
            DataSource = dtsChequesCuenta
            KeyField = 'banco'
            ListField = 'nombre'
            ListSource = dtsBancos
            TabOrder = 3
          end
          object edCuentaContable: TDBLookupComboBox
            Left = 81
            Top = 96
            Width = 397
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            DataField = 'cuenta'
            DataSource = dtsChequesCuenta
            KeyField = 'cuenta'
            ListField = 'CuentaNombre'
            ListSource = dtsCuentaContable
            TabOrder = 4
          end
          object DBEdit2: TDBEdit
            Left = 81
            Top = 133
            Width = 75
            Height = 21
            DataField = 'seq_chq'
            DataSource = dtsChequesCuenta
            Enabled = False
            TabOrder = 5
          end
          object DBEdit3: TDBEdit
            Left = 297
            Top = 133
            Width = 55
            Height = 21
            DataField = 'secuencia_auto'
            DataSource = dtsChequesCuenta
            Enabled = False
            TabOrder = 6
          end
        end
      end
    end
  end
  object dbgChequesCuenta: TDBGrid
    Left = 5
    Top = 2
    Width = 385
    Height = 435
    Anchors = [akLeft, akTop, akBottom]
    DataSource = dtsChequesCuenta
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'no_cuenta'
        Title.Caption = '# Cuenta'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nombre'
        Title.Caption = 'Nombre Cuenta'
        Visible = True
      end>
  end
  object dtsChequesCuenta: TDataSource
    DataSet = DataModulo1.chequesCuenta
    Left = 112
    Top = 208
  end
  object dtsTipoCuenta: TDataSource
    DataSet = DataModulo1.tipoCuentaCheque
    Left = 112
    Top = 280
  end
  object dtsBancos: TDataSource
    DataSet = DataModulo1.Bancos
    Left = 212
    Top = 280
  end
  object dtsCuentaContable: TDataSource
    DataSet = DataModulo1.CuentaContable
    Left = 292
    Top = 280
  end
end
