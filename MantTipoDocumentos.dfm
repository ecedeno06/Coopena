inherited frmTipoDocumentos: TfrmTipoDocumentos
  Caption = 'frmTipoDocumentos'
  OnShow = FormShow
  ExplicitLeft = 4
  ExplicitWidth = 800
  ExplicitHeight = 500
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 441
    Height = 21
    ExplicitTop = 442
    ExplicitWidth = 784
    ExplicitHeight = 21
  end
  object dbgParentezcos: TDBGrid
    Left = 1
    Top = 2
    Width = 262
    Height = 439
    Anchors = [akLeft, akTop, akBottom]
    DataSource = dtsTipoDoc
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
        FieldName = 'nombre'
        Title.Caption = 'Listado de Tipos de Documentos'
        Width = 240
        Visible = True
      end>
  end
  object PageControl1: TPageControl
    Left = 264
    Top = 2
    Width = 524
    Height = 439
    ActivePage = tsAreas
    Anchors = [akLeft, akTop, akRight, akBottom]
    Images = DataModulo1.ImageList2
    TabOrder = 2
    object tsAreas: TTabSheet
      Caption = 'Tipo de Documento'
      ImageIndex = 31
      ExplicitLeft = 5
      ExplicitTop = 30
      ExplicitHeight = 403
      object Image2: TImage
        Left = 1
        Top = 46
        Width = 48
        Height = 59
        Picture.Data = {
          07544269746D6170B6160000424DB61600000000000036000000280000002800
          000030000000010018000000000080160000C40E0000C40E0000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
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
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBC9C9C9C8C8C8C9C9C9C9C9C9C9C9
          C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9
          C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C8C8C8C8C8C8EEEEEEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF5B5B5B00000022222222222222222222222222222222222222
          2222222222222222222222222222222222222222222222222222222222222222
          2222222222222222222222222222220D0D0D161616EEEEEEFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEE00
          0000E1E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF161616C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA000000E6E6E6FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
          FBFB292929C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFEAEAEA000000E6E6E6FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB292929C0C0C0
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFEAEAEA000000E6E6E6FFFFFFFBFBFB999999818181B9B9B9FFFFFFC8
          C8C8818181818181818181818181818181818181818181818181EEEEEEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB292929C0C0C0FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA00
          0000E6E6E6FFFFFFACACAC000000787878000000F5F5F5C0C0C0787878787878
          787878787878787878787878787878707070EAEAEAFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFBFBFB292929C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA000000E6E6E6FFFFFF
          9F9F9F474747DFDFDF000000EAEAEAFBFBFBE6E6E6E6E6E6E6E6E6E6E6E6E6E6
          E6F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
          FBFB292929C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFEAEAEA000000E6E6E6FFFFFFDFDFDF0000000000
          004C4C4CFFFFFF909090000000000000000000000000000000474747FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB292929C0C0C0
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFEAEAEA000000E6E6E6FFFFFFFFFFFFFBFBFBF5F5F5FFFFFFFFFFFFFF
          FFFFF5F5F5F5F5F5F5F5F5F5F5F5F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB292929C0C0C0FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA00
          0000E6E6E6FFFFFFFFFFFFE6E6E6DFDFDFF5F5F5FFFFFFF5F5F5DFDFDFDFDFDF
          DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
          DFF5F5F5FFFFFFFBFBFB292929C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA000000E6E6E6FFFFFF
          C9C9C9000000000000191919FFFFFF9090900000000000000000000000000000
          00000000000000000000000000000000000000000000000000818181FFFFFFFB
          FBFB292929C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFEAEAEA000000E6E6E6FFFFFF9F9F9F525252EAEA
          EA000000E6E6E6FFFFFFF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
          F7F7F7F7F7F5F5F5F5F5F5F5F5F5F5F5F5FFFFFFFFFFFFFBFBFB292929C0C0C0
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFEAEAEA000000E6E6E6FFFFFFB9B9B9000000444444000000F7F7F7AC
          ACAC3D3D3D4747474747474747474747474747474747473D3D3DE6E6E6FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB292929C0C0C0FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA00
          0000E6E6E6FFFFFFFFFFFFC0C0C0ACACACD4D4D4FFFFFFDFDFDFACACACB2B2B2
          B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2F7F7F7FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFBFBFB292929C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA000000E6E6E6FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
          FBFB292929C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFEAEAEA000000E6E6E6FFFFFFEEEEEE5B5B5B4444
          448C8C8CFFFFFFA6A6A63D3D3D4444444444444444444444444444444444443D
          3D3DE1E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB292929C0C0C0
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFEAEAEA000000E6E6E6FFFFFFA6A6A6303030ACACAC000000EEEEEEE1
          E1E1B2B2B2B9B9B9B9B9B9B9B9B9B9B9B9B2B2B2B2B2B2B2B2B2F7F7F7FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB292929C0C0C0FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA00
          0000E6E6E6FFFFFFA6A6A6303030ACACAC000000EEEEEEE1E1E1B2B2B2B9B9B9
          B9B9B9B9B9B9B2B2B2C9C9C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFBFBFB292929C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA000000E6E6E6FFFFFF
          EEEEEE5B5B5B4444448C8C8CFFFFFFA6A6A63D3D3D4444444444444444443D3D
          3D787878FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
          FBFB292929C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFEAEAEA000000E6E6E6FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB292929C0C0C0
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFEAEAEA000000E6E6E6FFFFFFFFFFFFC0C0C0ACACACD4D4D4FFFFFFDF
          DFDFACACACB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
          B2B2B2B2B2B2ACACACD4D4D4FFFFFFFBFBFB292929C0C0C0FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA00
          0000E6E6E6FFFFFFB9B9B9000000444444000000F7F7F7ACACAC3D3D3D474747
          4747474747474747474747474747474747474444444444444444444444443D3D
          3D9F9F9FFFFFFFFBFBFB292929C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA000000E6E6E6FFFFFF
          9F9F9F525252EAEAEA000000E6E6E6FFFFFFF7F7F7F7F7F7F7F7F7F7F7F7F7F7
          F7F7F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
          FBFB292929C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFEAEAEA000000E6E6E6FFFFFFC9C9C90000000000
          00191919FFFFFF90909000000000000000000000000000000000000000000000
          0000DFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB292929C0C0C0
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFEAEAEA000000E6E6E6FFFFFFFFFFFFE6E6E6DFDFDFF5F5F5FFFFFFF5
          F5F5DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB292929C0C0C0FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA00
          0000E6E6E6FFFFFFFFFFFFFBFBFBF5F5F5FFFFFFFFFFFFFFFFFFF5F5F5F5F5F5
          F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF292929C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA000000E6E6E6FFFFFF
          DFDFDF0000000000004C4C4CFFFFFF9090900000000000000000000000000000
          00000000000000000000DFDFDFFFFFFFE1E1E1ACACACACACACACACACACACACAC
          ACAC0D0D0DC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFEAEAEA000000E6E6E6FFFFFF9F9F9F474747DFDF
          DF000000EAEAEAFBFBFBE6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E1E1E1DFDFDFDF
          DFDFFFFFFFD4D4D40000003D3D3D4444444444444C4C4C000000000000E1E1E1
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFEAEAEA000000E6E6E6FFFFFFACACAC000000787878000000F5F5F5C0
          C0C07878787878787878787878787878789F9F9FFFFFFFFFFFFFFFFFFF9F9F9F
          4C4C4CFFFFFFFFFFFFFFFFFFACACAC000000C8C8C8FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA00
          0000E6E6E6FFFFFFFBFBFB999999818181B9B9B9FFFFFFC8C8C8818181818181
          818181818181818181A6A6A6FFFFFFFFFFFFFFFFFF9F9F9F5B5B5BFFFFFFFFFF
          FFA6A6A6000000C9C9C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA000000E6E6E6FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F5B5B5BFFFFFF9F9F9F000000C9C9C9FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFEAEAEA000000E6E6E6FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF9F9F9F636363ACACAC000000C8C8C8FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFEEEEEE000000E1E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6A6A6
          000000000000C9C9C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B
          5B5B000000222222222222222222222222222222222222222222222222222222
          222222222222222222222222222222222222222222000000000000C9C9C9FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBC9C9C9C8C8C8
          C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9
          C9C9C9C9C9C9C9C9C9C9C9C9C9C8C8C8DFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFF
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
          FFFF}
        Stretch = True
      end
      object GroupBox4: TGroupBox
        Left = 49
        Top = 75
        Width = 440
        Height = 150
        Align = alCustom
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Informaci'#243'n del Tipo de Documento'
        Color = clWhite
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        DesignSize = (
          440
          150)
        object Label6: TLabel
          Left = 96
          Top = 32
          Width = 41
          Height = 13
          Caption = 'Nombre:'
        end
        object Label1: TLabel
          Left = 6
          Top = 32
          Width = 15
          Height = 13
          Caption = 'ID:'
          FocusControl = edID
        end
        object Label2: TLabel
          Left = 3
          Top = 72
          Width = 52
          Height = 13
          Caption = 'Secuencia:'
          FocusControl = edSecuencia
        end
        object Label3: TLabel
          Left = 215
          Top = 72
          Width = 85
          Height = 13
          Caption = 'Auto Incremento:'
          FocusControl = edIncremento
        end
        object edNombre: TDBEdit
          Left = 143
          Top = 29
          Width = 242
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'nombre'
          DataSource = dtsTipoDoc
          TabOrder = 0
        end
        object edID: TDBEdit
          Left = 27
          Top = 29
          Width = 63
          Height = 21
          CharCase = ecUpperCase
          DataField = 'tipo_doc'
          DataSource = dtsTipoDoc
          TabOrder = 1
        end
        object edSecuencia: TDBEdit
          Left = 56
          Top = 69
          Width = 89
          Height = 21
          DataField = 'secuencia'
          DataSource = dtsTipoDoc
          TabOrder = 2
        end
        object edIncremento: TDBEdit
          Left = 306
          Top = 69
          Width = 79
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'secuencia_auto'
          DataSource = dtsTipoDoc
          TabOrder = 3
        end
      end
      object ToolBar3: TToolBar
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 510
        Height = 35
        BorderWidth = 1
        ButtonHeight = 30
        ButtonWidth = 30
        Caption = 'ToolBar1'
        DrawingStyle = dsGradient
        GradientEndColor = clMoneyGreen
        Images = DataModulo1.ImageList2
        TabOrder = 1
        object btnAreaNuevo1: TToolButton
          Left = 0
          Top = 0
          Hint = 'Nuevo registro'
          ImageIndex = 8
          ParentShowHint = False
          ShowHint = True
          OnClick = btnAreaNuevo1Click
        end
        object ToolButton5: TToolButton
          Left = 30
          Top = 0
          Caption = 'ToolButton1'
          ImageIndex = 7
        end
        object btnAreaSalvar1: TToolButton
          Left = 60
          Top = 0
          Caption = 'btnSalvar1'
          ImageIndex = 6
          OnClick = btnAreaSalvar1Click
        end
      end
    end
  end
  object dtsTipoDoc: TDataSource
    DataSet = DataModulo1.TipoDocumentos
    Left = 144
    Top = 240
  end
end