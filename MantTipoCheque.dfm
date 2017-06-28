inherited frmMantTipoCheque: TfrmMantTipoCheque
  Caption = 'Mantenimiento a tipos de Cheque'
  OnShow = FormShow
  ExplicitWidth = 800
  ExplicitHeight = 500
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    ExplicitTop = 443
    ExplicitWidth = 784
  end
  object dbgTipoCheque: TDBGrid
    Left = 1
    Top = 2
    Width = 262
    Height = 388
    DataSource = dtsTipoCuentaCheque
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'tipos'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nombre'
        Visible = True
      end>
  end
  object PageControl1: TPageControl
    Left = 265
    Top = 2
    Width = 515
    Height = 392
    ActivePage = tsBanco
    Anchors = [akLeft, akTop, akRight, akBottom]
    Images = DataModulo1.ImageList2
    TabOrder = 2
    object tsBanco: TTabSheet
      Caption = 'Tipo Cuenta Cheque'
      ImageIndex = 41
      object ToolBar8: TToolBar
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 501
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
        Width = 507
        Height = 321
        Align = alClient
        TabOrder = 1
        object Image1: TImage
          Left = 1
          Top = 3
          Width = 64
          Height = 58
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
          Left = 1
          Top = 67
          Width = 426
          Height = 102
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Tipo de Cuenta Cheque:'
          Color = clWhite
          ParentBackground = False
          ParentColor = False
          TabOrder = 0
          DesignSize = (
            426
            102)
          object Label1: TLabel
            Left = 16
            Top = 40
            Width = 24
            Height = 13
            Caption = 'Tipo:'
            FocusControl = edID
          end
          object Label2: TLabel
            Left = 140
            Top = 40
            Width = 58
            Height = 13
            Caption = 'Descripcion:'
            FocusControl = edNombre
          end
          object edID: TDBEdit
            Left = 68
            Top = 37
            Width = 45
            Height = 21
            Color = clYellow
            DataField = 'tipos'
            DataSource = dtsTipoCuentaCheque
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object edNombre: TDBEdit
            Left = 204
            Top = 37
            Width = 213
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            DataField = 'nombre'
            DataSource = dtsTipoCuentaCheque
            TabOrder = 1
          end
        end
      end
    end
  end
  object dtsTipoCuentaCheque: TDataSource
    DataSet = DataModulo1.tipoCuentaCheque
    Left = 112
    Top = 208
  end
end
