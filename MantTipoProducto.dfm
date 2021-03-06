inherited frmTipoProducto: TfrmTipoProducto
  Left = 49
  BorderStyle = bsSingle
  Caption = 'Mantenimiento a Tipo de Productos'
  ClientHeight = 722
  ClientWidth = 1066
  Position = poDesigned
  WindowState = wsMaximized
  OnShow = FormShow
  ExplicitWidth = 1072
  ExplicitHeight = 750
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 703
    Width = 1066
    Panels = <
      item
        Width = 50
      end>
    ExplicitTop = 703
    ExplicitWidth = 1066
  end
  object dbgProfesion: TDBGrid
    Left = 1
    Top = 8
    Width = 266
    Height = 706
    Anchors = [akLeft, akTop, akBottom]
    DataSource = dtsTipoProducto
    DrawingStyle = gdsGradient
    GradientEndColor = clMoneyGreen
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
    OnCellClick = dbgProfesionCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'subcuenta'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Title.Color = clGreen
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clGreen
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nombresubcuenta'
        Title.Alignment = taCenter
        Title.Caption = 'Listado de Productos'
        Title.Color = clGreen
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clGreen
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 240
        Visible = True
      end>
  end
  object PageControl1: TPageControl
    Left = 273
    Top = 8
    Width = 785
    Height = 694
    ActivePage = tsBanco
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Images = DataModulo1.ImageList2
    TabOrder = 2
    object tsBanco: TTabSheet
      Caption = 'Producto'
      ImageIndex = 23
      object ToolBar8: TToolBar
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 771
        Height = 35
        BorderWidth = 1
        ButtonHeight = 30
        ButtonWidth = 30
        Caption = 'ToolBar1'
        DrawingStyle = dsGradient
        GradientEndColor = clMoneyGreen
        Images = DataModulo1.ImageList2
        TabOrder = 0
        object btnNuevo1: TToolButton
          Left = 0
          Top = 0
          Hint = 'Nuevo registro'
          ImageIndex = 8
          ParentShowHint = False
          ShowHint = True
          OnClick = btnNuevo1Click
        end
        object ToolButton1: TToolButton
          Left = 30
          Top = 0
          Caption = 'ToolButton1'
          ImageIndex = 7
        end
        object btnSalvar1: TToolButton
          Left = 60
          Top = 0
          Caption = 'btnSalvar1'
          ImageIndex = 6
          OnClick = btnSalvar1Click
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 41
        Width = 777
        Height = 624
        Align = alClient
        TabOrder = 1
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 775
          Height = 424
          Align = alTop
          Caption = 'Panel3'
          TabOrder = 0
          object GroupBox1: TGroupBox
            Left = 1
            Top = 1
            Width = 773
            Height = 416
            Align = alTop
            Caption = 'Informaci'#243'n del Producto'
            Color = clWhite
            ParentBackground = False
            ParentColor = False
            TabOrder = 0
            ExplicitLeft = -5
            ExplicitTop = 2
            DesignSize = (
              773
              416)
            object Label1: TLabel
              Left = 4
              Top = 21
              Width = 15
              Height = 13
              Caption = 'ID:'
              FocusControl = edID
            end
            object Label2: TLabel
              Left = 177
              Top = 21
              Width = 41
              Height = 13
              Caption = 'Nombre:'
              FocusControl = edNombre
            end
            object Label3: TLabel
              Left = 3
              Top = 45
              Width = 61
              Height = 13
              Caption = 'Abreviatura:'
              FocusControl = edAbre
            end
            object Label4: TLabel
              Left = 159
              Top = 48
              Width = 59
              Height = 13
              Caption = 'Cuenta No.:'
              FocusControl = edCuenta
            end
            object Label5: TLabel
              Left = 3
              Top = 76
              Width = 62
              Height = 13
              Caption = 'Periodo Tasa'
              FocusControl = edPeriodoTasa
            end
            object TLabel
              Left = 162
              Top = 75
              Width = 56
              Height = 13
              Caption = 'Aportaci'#243'n:'
              FocusControl = edPeriodoTasa
            end
            object Label9: TLabel
              Left = 443
              Top = 101
              Width = 101
              Height = 13
              Caption = 'Tipo de movimientos:'
            end
            object edID: TDBEdit
              Left = 71
              Top = 18
              Width = 68
              Height = 21
              Color = clYellow
              DataField = 'subcuenta'
              DataSource = dtsTipoProducto
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
              Left = 224
              Top = 18
              Width = 484
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              DataField = 'nombresubcuenta'
              DataSource = dtsTipoProducto
              TabOrder = 1
              OnEnter = edNombreEnter
            end
            object edAbre: TDBEdit
              Left = 70
              Top = 45
              Width = 69
              Height = 21
              CharCase = ecUpperCase
              DataField = 'abreviatura'
              DataSource = dtsTipoProducto
              TabOrder = 2
              OnEnter = edAbreEnter
            end
            object edCuenta: TDBEdit
              Left = 224
              Top = 45
              Width = 482
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              DataField = 'cuenta'
              DataSource = dtsTipoProducto
              TabOrder = 3
              OnEnter = edCuentaEnter
            end
            object edPeriodoTasa: TDBEdit
              Left = 71
              Top = 72
              Width = 68
              Height = 21
              DataField = 'periodo_tasa'
              DataSource = dtsTipoProducto
              TabOrder = 4
              OnEnter = edPeriodoTasaEnter
            end
            object edAportacion: TDBEdit
              Left = 224
              Top = 72
              Width = 68
              Height = 21
              DataField = 'MontoAportacion'
              DataSource = dtsTipoProducto
              TabOrder = 5
              OnEnter = edAportacionEnter
            end
            object grpEsPrestamo: TGroupBox
              Left = 3
              Top = 139
              Width = 702
              Height = 109
              Align = alCustom
              Color = clWhite
              ParentBackground = False
              ParentColor = False
              TabOrder = 7
              DesignSize = (
                702
                109)
              object Label7: TLabel
                Left = 15
                Top = 12
                Width = 94
                Height = 13
                Caption = 'C'#225'lculo de Inter'#233's :'
              end
              object Label8: TLabel
                Left = 11
                Top = 72
                Width = 43
                Height = 13
                Caption = 'Requiere'
              end
              object Shape1: TShape
                Left = 60
                Top = 80
                Width = 603
                Height = 1
                Anchors = [akLeft, akTop, akRight]
                Pen.Color = cl3DLight
                ExplicitWidth = 513
              end
              object Label11: TLabel
                Left = 15
                Top = 44
                Width = 116
                Height = 13
                Caption = 'Calcula Cargo por Mora:'
              end
              object chbIntSobreSaldo: TDBCheckBox
                Left = 220
                Top = 10
                Width = 120
                Height = 17
                Caption = 'Sobre Saldo'
                Color = clWhite
                DataField = 'interesSobre'
                DataSource = dtsTipoProducto
                ParentColor = False
                TabOrder = 0
                ValueChecked = 'S'
                ValueUnchecked = ''
                OnClick = chbIntSobreSaldoClick
                OnEnter = chbIntSobreSaldoEnter
              end
              object chbIntSobrePrestamo: TDBCheckBox
                Left = 317
                Top = 10
                Width = 97
                Height = 17
                Caption = 'Sobre Prestamo'
                DataField = 'interesSobre'
                DataSource = dtsTipoProducto
                TabOrder = 1
                ValueChecked = 'P'
                ValueUnchecked = ''
                OnClick = chbIntSobrePrestamoClick
                OnEnter = chbIntSobrePrestamoEnter
              end
              object cbGarantia: TDBCheckBox
                Left = 60
                Top = 86
                Width = 131
                Height = 17
                Alignment = taLeftJustify
                BiDiMode = bdRightToLeft
                Caption = 'Garantia'
                Color = clWhite
                DataField = 'garantia'
                DataSource = dtsTipoProducto
                ParentBiDiMode = False
                ParentColor = False
                TabOrder = 2
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object cbFiador: TDBCheckBox
                Left = 155
                Top = 86
                Width = 97
                Height = 17
                Caption = 'Fiador'
                DataField = 'fiador'
                DataSource = dtsTipoProducto
                TabOrder = 3
              end
              object DBCheckBox1: TDBCheckBox
                Left = 250
                Top = 86
                Width = 65
                Height = 17
                Caption = 'Finalidad'
                DataField = 'finalidad'
                DataSource = dtsTipoProducto
                TabOrder = 4
              end
              object cbx_calcula_mora: TDBCheckBox
                Left = 223
                Top = 44
                Width = 15
                Height = 17
                Alignment = taLeftJustify
                BiDiMode = bdRightToLeft
                Color = clWhite
                Ctl3D = True
                DataField = 'calculaMora'
                DataSource = dtsTipoProducto
                ParentBiDiMode = False
                ParentColor = False
                ParentCtl3D = False
                TabOrder = 5
                OnClick = cbx_calcula_moraClick
              end
              object ed_mora: TDBEdit
                Left = 244
                Top = 41
                Width = 42
                Height = 21
                DataField = 'mora'
                DataSource = dtsTipoProducto
                TabOrder = 6
              end
              object DBCheckBox13: TDBCheckBox
                Left = 317
                Top = 44
                Width = 132
                Height = 17
                Caption = 'Gracia en Mora'
                DataField = 'graciaEnMora'
                DataSource = dtsTipoProducto
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold, fsItalic]
                ParentFont = False
                TabOrder = 7
              end
              object DBCheckBox15: TDBCheckBox
                Left = 115
                Top = 10
                Width = 21
                Height = 17
                DataField = 'calulaInteres'
                DataSource = dtsTipoProducto
                TabOrder = 8
                OnClick = DBCheckBox15Click
              end
            end
            object esPrestamo: TDBCheckBox
              Left = 3
              Top = 99
              Width = 86
              Height = 17
              Alignment = taLeftJustify
              BiDiMode = bdLeftToRight
              Caption = 'Es Pr'#233'stamo?'
              Color = clWhite
              Ctl3D = True
              DataField = 'prestamo_s_n'
              DataSource = dtsTipoProducto
              ParentBiDiMode = False
              ParentColor = False
              ParentCtl3D = False
              TabOrder = 6
              ValueChecked = 'S'
              ValueUnchecked = 'N'
              OnClick = esPrestamoClick
              OnEnter = esPrestamoEnter
            end
            object GroupBox6: TGroupBox
              Left = 2
              Top = 254
              Width = 769
              Height = 160
              Align = alBottom
              Caption = 'Producto Aplica Para:'
              TabOrder = 8
              object GroupBox3: TGroupBox
                Left = 12
                Top = 28
                Width = 232
                Height = 116
                Caption = 'Disponible:'
                TabOrder = 0
                object lvDisponible: TListView
                  Left = 2
                  Top = 15
                  Width = 228
                  Height = 99
                  Align = alClient
                  Checkboxes = True
                  Columns = <
                    item
                      Caption = 'Nombre'
                      Width = 150
                    end
                    item
                      Caption = 'ID'
                      Width = 30
                    end>
                  GridLines = True
                  TabOrder = 0
                  ViewStyle = vsReport
                  OnSelectItem = lvDisponibleSelectItem
                end
              end
              object Button2: TButton
                Left = 267
                Top = 66
                Width = 39
                Height = 25
                Caption = '>'
                TabOrder = 1
                OnClick = Button2Click
              end
              object Button3: TButton
                Left = 267
                Top = 97
                Width = 39
                Height = 25
                Caption = '<'
                TabOrder = 2
                OnClick = Button3Click
              end
              object GroupBox4: TGroupBox
                Left = 329
                Top = 28
                Width = 232
                Height = 116
                Caption = 'Asignados:'
                TabOrder = 3
                object lvAsignados: TListView
                  Left = 2
                  Top = 15
                  Width = 228
                  Height = 99
                  Align = alClient
                  Checkboxes = True
                  Columns = <
                    item
                      Caption = 'Nombre'
                      Width = 150
                    end
                    item
                      Caption = 'ID'
                      Width = 30
                    end>
                  GridLines = True
                  TabOrder = 0
                  ViewStyle = vsReport
                end
              end
            end
            object DBCheckBox6: TDBCheckBox
              Left = 553
              Top = 99
              Width = 97
              Height = 17
              Caption = 'Depositos'
              DataField = 'deposito'
              DataSource = dtsTipoProducto
              TabOrder = 9
              OnEnter = DBCheckBox6Enter
            end
            object DBCheckBox7: TDBCheckBox
              Left = 650
              Top = 99
              Width = 97
              Height = 17
              Caption = 'Retiros'
              DataField = 'retiro'
              DataSource = dtsTipoProducto
              TabOrder = 10
              OnEnter = DBCheckBox7Enter
            end
            object DBCheckBox14: TDBCheckBox
              Left = 162
              Top = 99
              Width = 97
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Es Ahorro?'
              DataField = 'esAhorro'
              DataSource = dtsTipoProducto
              TabOrder = 11
              OnClick = DBCheckBox14Click
            end
          end
        end
        object Panel2: TPanel
          Left = 1
          Top = 425
          Width = 775
          Height = 186
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 1
          object Image2: TImage
            Left = 11
            Top = 58
            Width = 49
            Height = 39
            Picture.Data = {
              07544269746D6170121E0000424D121E00000000000036000000280000003300
              0000310000000100180000000000DC1D0000C40E0000C40E0000000000000000
              0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
              FEFBFBFBF9F9F9FAFAFAF9F9F9FAFAFAFAFAFAFAFAFAFBFBFBFEFEFEFEFEFEFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFD
              F6F6F6D3D3D38282826A6A6A9C9C9CEDEDEDF8F8F8FCFCFCFEFEFEFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFAFAFAD3D3D347
              47470303030404041212126E6E6EEEEEEEFCFCFCFEFEFEFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEF3F3F3A5A5A50909090202
              020000000202022E2E2ECDCDCDFCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEEBEBEB848484020202010101000000
              000000222222B3B3B3FCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFEFEFEFEFEFEECECEC82828202020200000000000000000021
              2121B4B4B4FDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFECECEC818181010101000000000000000000212121B5B5
              B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFECECEC818181010101000000000000000000212121B5B5B5FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFECECEC818181010101000000000000000000212121B5B5B5FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECEC
              818181010101000000000000000000212121B5B5B5FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECEC81818101
              0101000000000000000000212121B5B5B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECEC8282820101010000
              00000000000000212121B5B5B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECEC828282010101000000000000
              000000212121B5B5B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFEFEFEFEFEFEECECEC82828201010101010100000000000021
              2121B4B4B4FEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFEFEFEFEFEFEEBEBEB848484010101020202000000030303232323B0B0
              B0FCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
              FDFDFEFEFEF6F6F6D1D1D1A7A7A7A7A7A7A8A8A8A7A7A7B1B1B1E2E2E2FCFCFC
              FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFEFEFEFEFEFEFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFCFCFCFBFB
              FBFCFCFCFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFEFEFEFEFEFEFEFEFEFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
              FCFCFCFDFDFDFCFCFCFEFEFEFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF8F8F8EAEAEACBCBCB
              C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9CACACACACACACACACACACACACACA
              CACACACACACACACACACACACACACACACACACACACACACACACACAC8C8C8C9C9C9D2
              D2D2F0F0F0FAFAFAFCFCFCFEFEFEFEFEFEFEFEFEFFFFFFCACAFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEE0E0E06161611D1D1D16161616
              1616161616161616161616161616171717171717171717171717171717171717
              1717171717171717171717171717171717171717171616161818182A2A2A7C7C
              7CF1F1F1FBFBFBFDFDFDFEFEFEFEFEFEFFFFFF1717FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFEFEFEFEFEFEFBFBFBBFBFBF0303030101010101010101010101
              0101010101010101010101010101010101010101010101010101010101010101
              01010101010101010101010101010101010101010101010202021414146E6E6E
              E9E9E9F9F9F9FCFCFCFEFEFEFFFFFF0101FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFEFEFEFEFEFEFBFBFBBEBEBE000000010101010101010101010101000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000010101010101010101030303131313727272EF
              EFEFFAFAFAFDFDFDFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
              FEFEFEFEFCFCFCC3C3C303030300000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000010101030303030303222222B4B4B4FBFB
              FBFEFEFEFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FCFCFCC3C3C30202020000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000020202010101202020A8A8A8F9F9F9FDFDFD
              FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCC3
              C3C3030303000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000101011111116A6A6AF1F1F1FCFCFCFEFEFEFFFFFF00
              00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDC9C9C90909
              0902020200000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000101010676767E4E4E4FBFBFBFDFDFDFEFEFEFFFFFF0000FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDDFDFDF5F5F5F080808
              0606060606060606060606060606060606060606060606060606060606060606
              0606060606060606060606060606060606060606060606060606060606060613
              1313696969F1F1F1FBFBFBFDFDFDFFFFFFFFFFFFFFFFFF0606FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF9F9F9EBEBEBC4C4C4BCBCBCBC
              BCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBC
              BCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCC5C5C5EEEE
              EEFAFAFAFCFCFCFEFEFEFEFEFEFEFEFEFFFFFFBCBCFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
              FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFDFDFDFCFCFCFCFCFCFCFCFCFCFCFCFDFDFDFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFDFDFDFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFD
              FDFBFBFBEEEEEEDADADAD8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8
              D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8
              D8D8D8D7D7D7D8D8D8E2E2E2F5F5F5FBFBFBFCFCFCFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFCFCFCFCFCFCD9D9D9
              3D3D3D0202020303030101010101010101010101010101010101010101010101
              0101010101010101010101010101010102020202020202020202020202020201
              0101010101121212787878F8F8F8FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF4F4F4BFBFBF3A3A3A02020201
              0101020202010101010101010101010101010101010101010101010101010101
              0101010101010101010101010101010101010101010101010101010000000000
              00030303353535F8F8F8FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDD4D4D44848480808080000000000000000
              0001010101010101010101010101010101010101010101010101010101010101
              0101010101010101010101010101010101010101010101000000000000010101
              313131F6F6F6FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFEDEDED8A8A8A171717141414000000010101000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000010101313131F5
              F5F5FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFE9E9E97676760606060D0D0D19191904040401010100000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000010101333333F5F5F5FEFE
              FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FAFAFAC4C4C42C2C2C0909091515151616160202020000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000020202383838F8F8F8FDFDFDFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF2
              F2F2BABABA393939040404101010161616000000010101010101000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000101010404043C3C3CF9F9F9FDFDFDFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFBFBFBFBFB
              FBD9D9D95959592222222D2D2D27272719191918181818181818181818181818
              1818181818181818181818181818181818181818181818181818181818181818
              1818181919191B1B1B373737979797FAFAFAFCFCFCFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFAFAFAFAFAFAF8F8F8
              E8E8E8D0D0D0D1D1D1D6D6D6D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0
              D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0CF
              CFCFD1D1D1DADADAF1F1F1FAFAFAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFD
              FDFDFDFDFDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
              FEFEFEFEFEFEFFFFFFFEFEFEFCFCFCFBFBFBFCFCFCFEFEFEFEFEFEFCFCFCFAFA
              FAFCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
              FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
              FEFEFFFFFFFDFDFDF3F3F3EDEDEDEDEDEDEFEFEFEEEEEEF0F0F0F8F8F8FCFCFC
              FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFEBEBEB818181020202000000000000010101222222B3B3B3FDFDFDFEFEFEFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA
              7F7F7F020202000000000000000000222222B4B4B4FDFDFDFEFEFEFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEB85858502
              0202000000000000010101222222B3B3B3FDFDFDFEFEFEFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF5F5F5ACACAC0B0B0B0101
              01010101030303323232D2D2D2FCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFCFCFCD9D9D9555555070707050505
              1919197D7D7DF4F4F4FCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFEFEFEFEFEFEFCFCFCF5F5F5DFDFDFA8A8A8969696B5B5B5EF
              EFEFFAFAFAFCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            Stretch = True
          end
          object ToolBar1: TToolBar
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 767
            Height = 37
            BorderWidth = 1
            ButtonHeight = 30
            ButtonWidth = 30
            Caption = 'ToolBar1'
            DrawingStyle = dsGradient
            GradientEndColor = clMoneyGreen
            Images = DataModulo1.ImageList2
            TabOrder = 0
            object btnNuevo2: TToolButton
              Left = 0
              Top = 0
              Hint = 'Nuevo registro'
              ImageIndex = 8
              ParentShowHint = False
              ShowHint = True
              OnClick = btnNuevo2Click
            end
            object btnBorrar2: TToolButton
              Left = 30
              Top = 0
              Caption = 'ToolButton1'
              ImageIndex = 7
              OnClick = btnBorrar2Click
            end
            object btnSalvar2: TToolButton
              Left = 60
              Top = 0
              ImageIndex = 6
              OnClick = btnSalvar2Click
            end
          end
          object GroupBox2: TGroupBox
            Left = 66
            Top = 55
            Width = 682
            Height = 74
            Align = alCustom
            Anchors = [akLeft, akTop, akRight]
            Caption = 'Contra Cuenta:'
            Color = clWhite
            ParentBackground = False
            ParentColor = False
            TabOrder = 1
            object Label10: TLabel
              Left = 11
              Top = 32
              Width = 59
              Height = 13
              Caption = 'Cuenta No.:'
            end
            object Label12: TLabel
              Left = 120
              Top = 256
              Width = 35
              Height = 13
              Caption = 'usuario'
              FocusControl = DBEdit9
            end
            object DBEdit8: TDBEdit
              Left = 120
              Top = 232
              Width = 446
              Height = 21
              DataField = 'fecha_aud'
              DataSource = dtsTipoProducto
              TabOrder = 0
            end
            object DBEdit9: TDBEdit
              Left = 120
              Top = 272
              Width = 134
              Height = 21
              DataField = 'usuario'
              DataSource = dtsTipoProducto
              TabOrder = 1
            end
            object edContra: TDBEdit
              Left = 76
              Top = 29
              Width = 389
              Height = 21
              DataField = 'cuenta_contra_parte'
              DataSource = dtscontra
              TabOrder = 2
            end
          end
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Movimientos'
      ImageIndex = 1
      object ToolBar2: TToolBar
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 771
        Height = 34
        BorderWidth = 1
        ButtonHeight = 30
        ButtonWidth = 30
        Caption = 'ToolBar1'
        DrawingStyle = dsGradient
        GradientEndColor = clMoneyGreen
        Images = DataModulo1.ImageList2
        TabOrder = 0
        object btnNuevaCuenta: TToolButton
          Left = 0
          Top = 0
          Hint = 'Nuevo registro'
          ImageIndex = 8
          ParentShowHint = False
          ShowHint = True
          OnClick = btnNuevaCuentaClick
        end
        object btnEditarTrx: TToolButton
          Left = 30
          Top = 0
          Caption = 'btnEditarTrx'
          ImageIndex = 41
          OnClick = btnEditarTrxClick
        end
        object ToolButton4: TToolButton
          Left = 60
          Top = 0
          Width = 37
          Caption = 'ToolButton4'
          ImageIndex = 7
          Style = tbsSeparator
        end
        object btnEliminarCuenta: TToolButton
          Left = 97
          Top = 0
          Caption = 'ToolButton1'
          ImageIndex = 7
          OnClick = btnEliminarCuentaClick
        end
        object ToolButton2: TToolButton
          Left = 127
          Top = 0
          Width = 37
          Caption = 'ToolButton2'
          ImageIndex = 7
          Style = tbsSeparator
        end
        object btnSalvarCuenta: TToolButton
          Left = 164
          Top = 0
          Caption = 'btnSalvar1'
          ImageIndex = 6
          OnClick = btnSalvarCuentaClick
        end
        object btnPrueba: TToolButton
          Left = 194
          Top = 0
          Caption = 'btnPrueba'
          ImageIndex = 4
        end
      end
      object grpTrx: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 43
        Width = 771
        Height = 132
        Align = alTop
        Caption = 'Movimiento Transaccion'
        Color = clWhite
        Enabled = False
        ParentBackground = False
        ParentColor = False
        TabOrder = 1
        DesignSize = (
          771
          132)
        object Label6: TLabel
          Left = 11
          Top = 22
          Width = 39
          Height = 13
          Caption = 'Cuenta:'
        end
        object lblDC: TLabel
          Left = 651
          Top = 22
          Width = 24
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'lblDC'
          ExplicitLeft = 498
        end
        object Label13: TLabel
          Left = 17
          Top = 73
          Width = 24
          Height = 13
          Caption = 'Tipo:'
        end
        object edCuentaTrx: TDBLookupComboBox
          Left = 56
          Top = 19
          Width = 576
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'cuenta'
          DataSource = dtsproductoTrx
          KeyField = 'cuenta'
          ListField = 'nombre'
          ListSource = dtsMaestroContableCombo
          TabOrder = 0
          OnClick = edCuentaTrxClick
        end
        object DBCheckBox2: TDBCheckBox
          Left = 20
          Top = 46
          Width = 136
          Height = 17
          Caption = 'Es Visible en Auxiliar?'
          DataField = 'verAuxiliar'
          DataSource = dtsproductoTrx
          TabOrder = 1
        end
        object DBCheckBox3: TDBCheckBox
          Left = 435
          Top = 46
          Width = 151
          Height = 17
          Caption = 'Genera Registro Contable ?'
          DataField = 'esCaja'
          DataSource = dtsproductoTrx
          TabOrder = 2
        end
        object DBCheckBox5: TDBCheckBox
          Left = 318
          Top = 46
          Width = 111
          Height = 17
          Caption = 'Cuenta Principal'
          DataField = 'principal'
          DataSource = dtsproductoTrx
          TabOrder = 3
        end
        object DBRadioGroup1: TDBRadioGroup
          AlignWithMargins = True
          Left = 5
          Top = 95
          Width = 761
          Height = 32
          Align = alBottom
          Caption = 'Tipo Trx'
          Columns = 3
          DataField = 'tipoTrx'
          DataSource = dtsproductoTrx
          Items.Strings = (
            'Depositos'
            'Retiros'
            'Pagos Prestamos')
          TabOrder = 4
          Values.Strings = (
            'D'
            'R'
            'P')
        end
        object DBCheckBox8: TDBCheckBox
          Left = 621
          Top = 72
          Width = 97
          Height = 17
          Caption = 'Interes?'
          DataField = 'esInteres'
          DataSource = dtsproductoTrx
          TabOrder = 5
          OnClick = DBCheckBox8Click
        end
        object DBCheckBox9: TDBCheckBox
          Left = 620
          Top = 49
          Width = 97
          Height = 17
          Caption = 'Mora?'
          DataField = 'esMora'
          DataSource = dtsproductoTrx
          TabOrder = 6
        end
        object DBCheckBox10: TDBCheckBox
          Left = 318
          Top = 72
          Width = 97
          Height = 17
          Caption = 'Es Capital?'
          DataField = 'esCapital'
          DataSource = dtsproductoTrx
          TabOrder = 7
        end
        object DBCheckBox11: TDBCheckBox
          Left = 219
          Top = 72
          Width = 97
          Height = 17
          Caption = 'Es Imputable?'
          DataField = 'esImputable'
          DataSource = dtsproductoTrx
          TabOrder = 8
        end
        object DBCheckBox4: TDBCheckBox
          Left = 188
          Top = 46
          Width = 113
          Height = 17
          Hint = 'Permite visualizar en Detalle de Cheques / Trasnferencias'
          Caption = 'Ver en Chq/Trans.'
          DataField = 'verChk_Tran'
          DataSource = dtsproductoTrx
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
        end
        object dbl_TipoCuenta: TDBLookupComboBox
          Left = 56
          Top = 69
          Width = 145
          Height = 21
          DataField = 'tipoCuenta'
          DataSource = dtsproductoTrx
          KeyField = 'id'
          ListField = 'nombre'
          ListSource = DataModulo1.dts_tipoCuenta
          TabOrder = 10
        end
        object DBCheckBox12: TDBCheckBox
          Left = 435
          Top = 72
          Width = 97
          Height = 17
          Caption = 'Es Pago Especial'
          DataField = 'esPagoEspecial'
          DataSource = dtsproductoTrx
          TabOrder = 11
        end
      end
      object dbgTrx: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 181
        Width = 771
        Height = 482
        Align = alTop
        DataSource = dtsproductoTrx
        DrawingStyle = gdsGradient
        GradientEndColor = clMoneyGreen
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = dbgTrxDrawColumnCell
        OnKeyPress = dbgTrxKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'orden'
            Title.Alignment = taCenter
            Title.Caption = 'Orden'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clGreen
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cuenta'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clGreen
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descripcion'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clGreen
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 198
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'campo'
            Title.Alignment = taCenter
            Title.Caption = 'Interes'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clGreen
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 95
            Visible = True
          end
          item
            Color = clSilver
            Expanded = False
            FieldName = 'DC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'D/C'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clGreen
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 36
            Visible = True
          end
          item
            Color = clSilver
            Expanded = False
            FieldName = 'signo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clGreen
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 37
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'cajaTrx'
            Title.Caption = 'Ver en Caja'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clGreen
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Color = clMoneyGreen
            Expanded = False
            FieldName = 'debito'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clGreen
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = False
          end
          item
            Color = clMoneyGreen
            Expanded = False
            FieldName = 'credito'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clGreen
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'principal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clGreen
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'EspecialContraCuenta'
            Title.Caption = 'Especial Contra Cuenta'
            Width = 133
            Visible = True
          end>
      end
    end
  end
  object dtsTipoProducto: TDataSource
    DataSet = DataModulo1.TipoProducto
    OnDataChange = dtsTipoProductoData
    Left = 56
    Top = 184
  end
  object dtscontra: TDataSource
    DataSet = DataModulo1.ContraCuenta
    Left = 56
    Top = 312
  end
  object dtsproductoTrx: TDataSource
    DataSet = DataModulo1.ProductoTrx3
    Left = 172
    Top = 313
  end
  object dtsMaestroContableCombo: TDataSource
    DataSet = DataModulo1.maestroContableCombo
    OnDataChange = dtsMaestroContableComboDataChange
    Left = 176
    Top = 184
  end
end
