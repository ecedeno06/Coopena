inherited frmCaja: TfrmCaja
  Left = 389
  Top = 165
  Align = alCustom
  Anchors = [akLeft, akTop, akRight, akBottom]
  Caption = 'Caja'
  ClientHeight = 519
  ClientWidth = 848
  Color = clMoneyGreen
  KeyPreview = True
  Position = poDesigned
  WindowState = wsMaximized
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  ExplicitWidth = 864
  ExplicitHeight = 557
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 500
    Width = 848
    ExplicitTop = 500
    ExplicitWidth = 848
  end
  object Panel6: TPanel
    Left = 0
    Top = 0
    Width = 848
    Height = 500
    Align = alClient
    Caption = 'Panel6'
    TabOrder = 1
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 224
      Height = 498
      Align = alLeft
      Caption = 'Panel4'
      TabOrder = 0
      object cpPrincipal: TCategoryPanelGroup
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 216
        Height = 490
        VertScrollBar.Tracking = True
        Align = alClient
        ChevronHotColor = clMoneyGreen
        Color = clMoneyGreen
        GradientBaseColor = clMoneyGreen
        GradientColor = clWindow
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        Images = DataModulo1.ImageList2
        TabOrder = 0
        object cpImagenes: TCategoryPanel
          AlignWithMargins = True
          Top = 341
          Height = 160
          Caption = '&Imagenes'
          TabOrder = 0
          object Label6: TLabel
            Left = 104
            Top = 72
            Width = 34
            Height = 13
            Caption = 'imagen'
            FocusControl = DBImage1
          end
          object ToolBar2: TToolBar
            Left = 0
            Top = 0
            Width = 189
            Height = 35
            ButtonHeight = 33
            ButtonWidth = 35
            Caption = 'ToolBar1'
            DrawingStyle = dsGradient
            GradientEndColor = clMoneyGreen
            Images = DataModulo1.ImageList2
            TabOrder = 0
            object ToolButton1: TToolButton
              Left = 0
              Top = 0
              Hint = '35'
              Caption = 'ToolButton1'
              ImageIndex = 11
              OnClick = ToolButton1Click
            end
            object ToolButton2: TToolButton
              Left = 35
              Top = 0
              Hint = '35'
              Caption = 'ToolButton2'
              ImageIndex = 12
              OnClick = ToolButton2Click
            end
            object ToolButton4: TToolButton
              Left = 70
              Top = 0
              Width = 33
              Caption = 'ToolButton4'
              ImageIndex = 28
              Style = tbsSeparator
            end
            object ToolButton3: TToolButton
              Left = 103
              Top = 0
              Hint = '35'
              Caption = 'ToolButton3'
              ImageIndex = 33
              OnClick = ToolButton3Click
            end
          end
          object DBImage1: TDBImage
            Left = 0
            Top = 35
            Width = 189
            Height = 99
            Align = alClient
            DataField = 'imagen'
            DataSource = dts_CajaImagen
            Stretch = True
            TabOrder = 1
          end
        end
        object pnRecientes: TCategoryPanel
          AlignWithMargins = True
          Top = 185
          Height = 150
          Caption = 'Recientes'
          TabOrder = 1
          object tvHist: TTreeView
            Left = 0
            Top = 33
            Width = 189
            Height = 91
            Align = alClient
            DragCursor = crMultiDrag
            DragMode = dmAutomatic
            Indent = 19
            SortType = stData
            TabOrder = 0
            OnDragOver = tvHistDragOver
          end
          object Panel7: TPanel
            Left = 0
            Top = 0
            Width = 189
            Height = 33
            Align = alTop
            Color = clMoneyGreen
            ParentBackground = False
            TabOrder = 1
            object Label1: TLabel
              Left = 16
              Top = 8
              Width = 78
              Height = 13
              Caption = 'Dias de Historia:'
            end
            object spDias: TSpinEdit
              Left = 103
              Top = 5
              Width = 82
              Height = 22
              MaxValue = 0
              MinValue = 0
              TabOrder = 0
              Value = 15
              OnChange = spDiasChange
            end
          end
        end
        object cpCuentas: TCategoryPanel
          AlignWithMargins = True
          Top = 3
          Height = 176
          Caption = '&Cuentas'
          TabOrder = 2
          object tvHB: TTreeView
            Left = 0
            Top = 0
            Width = 189
            Height = 150
            Align = alClient
            DragCursor = crMultiDrag
            DragMode = dmAutomatic
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Indent = 19
            ParentFont = False
            TabOrder = 0
            OnClick = tvHBClick
          end
        end
      end
    end
    object Panel5: TPanel
      Left = 225
      Top = 1
      Width = 622
      Height = 498
      Align = alClient
      Caption = 'Panel5'
      TabOrder = 1
      object Panel1: TPanel
        Left = 1
        Top = 1
        Width = 620
        Height = 90
        Align = alTop
        BevelEdges = []
        BorderStyle = bsSingle
        Color = clMoneyGreen
        ParentBackground = False
        TabOrder = 0
        object GroupBox1: TGroupBox
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 608
          Height = 78
          Align = alClient
          Caption = 'Buscar Por:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          DesignSize = (
            608
            78)
          object btnBuscar: TSpeedButton
            Left = 532
            Top = 16
            Width = 70
            Height = 59
            Anchors = [akTop, akRight]
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              20000000000000040000C40E0000C40E00000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000FF0000
              00FF000000FF000000FF000000FF000000000000000000000000000000000000
              0000000000FF000000FF000000FF000000FF000000FF00000000000000FFFFFF
              FFFF000000FF000000FF000000FF000000000000000000000000000000000000
              0000000000FFFFFFFFFF000000FF000000FF000000FF00000000000000FFFFFF
              FFFF000000FF000000FF000000FF000000000000000000000000000000000000
              0000000000FFFFFFFFFF000000FF000000FF000000FF00000000000000FF0000
              00FF000000FF000000FF000000FF000000FF000000FF00000000000000FF0000
              00FF000000FF000000FF000000FF000000FF000000FF00000000000000FF0000
              00FFFFFFFFFF000000FF000000FF000000FF000000FF000000FF000000FFFFFF
              FFFF000000FF000000FF000000FF000000FF000000FF00000000000000FF0000
              00FFFFFFFFFF000000FF000000FF000000FF00000000000000FF000000FFFFFF
              FFFF000000FF000000FF000000FF000000FF000000FF00000000000000FF0000
              00FFFFFFFFFF000000FF000000FF000000FF00000000000000FF000000FFFFFF
              FFFF000000FF000000FF000000FF000000FF000000FF00000000000000000000
              00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
              0000000000FFFFFFFFFF000000FF000000FF000000FF00000000000000FFFFFF
              FFFF000000FF000000FF000000FF000000000000000000000000000000000000
              0000000000FF000000FF000000FF000000FF000000FF00000000000000FF0000
              00FF000000FF000000FF000000FF000000000000000000000000000000000000
              000000000000000000FF000000FF000000FF0000000000000000000000000000
              00FF000000FF000000FF00000000000000000000000000000000000000000000
              000000000000000000FFFFFFFFFF000000FF0000000000000000000000000000
              00FFFFFFFFFF000000FF00000000000000000000000000000000000000000000
              000000000000000000FF000000FF000000FF0000000000000000000000000000
              00FF000000FF000000FF00000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            OnClick = btnBuscarClick
          end
          object Label2: TLabel
            Left = 13
            Top = 48
            Width = 34
            Height = 16
            Anchors = [akLeft, akTop, akRight]
            Caption = 'Filtro:'
          end
          object rbNsocio: TRadioButton
            Left = 10
            Top = 20
            Width = 75
            Height = 22
            Caption = 'No. Socio'
            TabOrder = 0
            OnClick = rbNsocioClick
          end
          object rbNombre: TRadioButton
            Left = 108
            Top = 19
            Width = 67
            Height = 22
            Caption = 'Nombre'
            TabOrder = 1
            OnClick = rbNombreClick
          end
          object rbCuenta: TRadioButton
            Left = 202
            Top = 19
            Width = 81
            Height = 22
            Caption = 'No.Cuenta'
            TabOrder = 2
            OnClick = rbCuentaClick
          end
          object pnFiltro1: TPanel
            Left = 53
            Top = 44
            Width = 476
            Height = 31
            Anchors = [akLeft, akTop, akRight]
            BorderStyle = bsSingle
            Caption = 'pnFiltro1'
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 3
            object edFiltro: TButtonedEdit
              Left = 1
              Top = 1
              Width = 470
              Height = 25
              Align = alClient
              Anchors = [akTop, akBottom]
              Images = DataModulo1.ImageList2
              RightButton.HotImageIndex = 7
              RightButton.ImageIndex = 7
              RightButton.PressedImageIndex = 7
              RightButton.Visible = True
              TabOrder = 0
              OnClick = edFiltroClick
              OnExit = edFiltroExit
              OnKeyPress = edFiltroKeyPress
              OnRightButtonClick = edFiltroRightButtonClick
              ExplicitHeight = 24
            end
          end
          object pnFiltro2: TPanel
            Left = 53
            Top = 45
            Width = 213
            Height = 30
            Anchors = [akLeft, akTop, akRight]
            Ctl3D = True
            ParentBackground = False
            ParentCtl3D = False
            TabOrder = 4
            object ced1: TMaskEdit
              Left = 3
              Top = 3
              Width = 35
              Height = 24
              Color = clCream
              TabOrder = 0
              Text = ''
              OnKeyPress = ced1KeyPress
            end
            object ced2: TMaskEdit
              Left = 44
              Top = 3
              Width = 59
              Height = 24
              Alignment = taCenter
              Color = clCream
              EditMask = '!9999;0; '
              MaxLength = 4
              TabOrder = 1
              Text = ''
            end
            object ced3: TMaskEdit
              Left = 114
              Top = 3
              Width = 77
              Height = 24
              Alignment = taCenter
              Color = clCream
              EditMask = '!9999;0; '
              MaxLength = 4
              TabOrder = 2
              Text = ''
              OnChange = ced3Change
            end
          end
          object rbCedula: TRadioButton
            Left = 308
            Top = 19
            Width = 81
            Height = 22
            Caption = 'C'#233'dula'
            TabOrder = 5
            OnClick = rbCedulaClick
          end
          object rbPasaporteRuc: TRadioButton
            Left = 395
            Top = 19
            Width = 112
            Height = 22
            Caption = 'Pasaporte / Ruc'
            TabOrder = 6
            OnClick = rbPasaporteRucClick
          end
        end
      end
      object PageControl1: TPageControl
        Left = 1
        Top = 91
        Width = 620
        Height = 383
        ActivePage = TabSheet1
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object TabSheet1: TTabSheet
          Caption = 'Transaccion'
          ImageIndex = 4
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 612
            Height = 70
            Align = alTop
            Color = clMoneyGreen
            Ctl3D = False
            ParentBackground = False
            ParentCtl3D = False
            TabOrder = 0
            DesignSize = (
              612
              70)
            object GroupBox4: TGroupBox
              Left = 286
              Top = 0
              Width = 322
              Height = 66
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = 'Descripcion:'
              TabOrder = 0
              object Memo2: TMemo
                Left = 5
                Top = 17
                Width = 308
                Height = 45
                Align = alCustom
                Anchors = [akLeft, akTop, akRight, akBottom]
                Color = clInfoBk
                DragCursor = crMultiDrag
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Lines.Strings = (
                  'M'
                  'e'
                  'm'
                  'o'
                  '2')
                ParentFont = False
                ScrollBars = ssVertical
                TabOrder = 0
              end
            end
            object GroupBox3: TGroupBox
              Left = 5
              Top = 0
              Width = 280
              Height = 66
              Caption = 'Fecha - Transaccion:'
              TabOrder = 1
              object dpFecha: TDateTimePicker
                Left = 8
                Top = 18
                Width = 233
                Height = 21
                Date = 42742.786855451390000000
                Time = 42742.786855451390000000
                DateFormat = dfLong
                Enabled = False
                TabOrder = 0
              end
              object rbDeposito: TRadioButton
                Left = 17
                Top = 45
                Width = 130
                Height = 17
                Caption = 'Dep'#243'sito / Pago'
                TabOrder = 1
                OnClick = rbDepositoClick
              end
              object rbRetiro: TRadioButton
                Left = 153
                Top = 45
                Width = 113
                Height = 17
                Caption = 'Retiro'
                TabOrder = 2
                OnClick = rbRetiroClick
              end
            end
          end
          object ToolBar3: TToolBar
            Left = 0
            Top = 70
            Width = 612
            Height = 35
            ButtonHeight = 32
            ButtonWidth = 32
            Caption = 'ToolBar3'
            DrawingStyle = dsGradient
            GradientEndColor = clMoneyGreen
            GradientStartColor = clWhite
            Images = DataModulo1.ImageList2
            TabOrder = 1
            object btnNuevo: TToolButton
              Left = 0
              Top = 0
              Caption = 'btnNuevo'
              ImageIndex = 40
              OnClick = btnNuevoClick
            end
            object ToolButton10: TToolButton
              Left = 32
              Top = 0
              Width = 17
              Caption = 'ToolButton10'
              ImageIndex = 41
              Style = tbsSeparator
            end
            object btnInsertarLinea: TToolButton
              Left = 49
              Top = 0
              Caption = 'btnInsertarLinea'
              ImageIndex = 44
              OnClick = btnInsertarLineaClick
            end
            object btnEliminar: TToolButton
              Left = 81
              Top = 0
              Caption = 'btnEliminar'
              ImageIndex = 7
              OnClick = btnEliminarClick
            end
            object btnSalvar: TToolButton
              Left = 113
              Top = 0
              Caption = 'btnSalvar'
              ImageIndex = 6
              OnClick = btnSalvarClick
            end
            object btnImprimir: TToolButton
              Left = 145
              Top = 0
              Caption = 'btnImprimir'
              ImageIndex = 39
            end
            object ToolButton5: TToolButton
              Left = 177
              Top = 0
              Width = 16
              Caption = 'ToolButton5'
              ImageIndex = 40
              Style = tbsSeparator
            end
            object btnReversar: TToolButton
              Left = 193
              Top = 0
              Caption = 'btnReversar'
              ImageIndex = 47
              OnClick = btnReversarClick
            end
            object ToolButton7: TToolButton
              Left = 225
              Top = 0
              Width = 8
              Caption = 'ToolButton7'
              ImageIndex = 43
              Style = tbsSeparator
            end
            object btn_trx_det_suspenso: TToolButton
              Left = 233
              Top = 0
              Caption = 'btn_trx_det_suspenso'
              ImageIndex = 43
              Visible = False
              OnClick = btn_trx_det_suspensoClick
            end
          end
          object pnTotal: TPanel
            Left = 0
            Top = 300
            Width = 612
            Height = 52
            Align = alBottom
            Color = clMoneyGreen
            ParentBackground = False
            TabOrder = 2
            DesignSize = (
              612
              52)
            object Label3: TLabel
              Left = 355
              Top = 12
              Width = 37
              Height = 16
              Anchors = [akTop, akRight]
              Caption = 'Total:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitLeft = 409
            end
            object edMontoTotal: TEdit
              Left = 398
              Top = 6
              Width = 121
              Height = 27
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Memo1: TMemo
            Left = 3
            Top = 355
            Width = 363
            Height = 25
            Lines.Strings = (
              'Memo'
              '1')
            TabOrder = 3
            Visible = False
          end
          object pnlGridTrx: TPanel
            Left = 0
            Top = 105
            Width = 612
            Height = 195
            Align = alTop
            Anchors = [akLeft, akTop, akRight, akBottom]
            TabOrder = 4
            object DBGrid1: TDBGrid
              Left = 1
              Top = 1
              Width = 610
              Height = 193
              Align = alClient
              DataSource = dtstransaccion
              FixedColor = clMoneyGreen
              GradientEndColor = clMoneyGreen
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ParentColor = True
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnCellClick = DBGrid1CellClick
              OnColExit = DBGrid1ColExit
              OnDrawColumnCell = DBGrid1DrawColumnCell
              OnDblClick = DBGrid1DblClick
              OnDragDrop = DBGrid1DragDrop
              OnDragOver = DBGrid1DragOver
              OnKeyPress = DBGrid1KeyPress
              OnMouseUp = DBGrid1MouseUp
              Columns = <
                item
                  Alignment = taLeftJustify
                  Expanded = False
                  FieldName = 'Documento'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Doc.'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clGreen
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 53
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TipoDoc'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clGreen
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 54
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Num_Cuenta'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clGreen
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 102
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'nombreCuentafull'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Cuenta Contable'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clGreen
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 230
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Naturaleza'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Caption = 'DC'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clGreen
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 23
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Efectivo'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Alignment = taCenter
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
                  FieldName = 'Cheque'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Cheque $'
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
                  FieldName = 'Monto'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Aplicado'
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
                  FieldName = 'Saldo'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Alignment = taCenter
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
                  FieldName = 'tipoCuenta'
                  Visible = True
                end>
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Plan de Pago'
          ImageIndex = 1
          object Panel8: TPanel
            Left = 0
            Top = 0
            Width = 612
            Height = 347
            Align = alTop
            Anchors = [akLeft, akTop, akRight, akBottom]
            Caption = 'Panel8'
            TabOrder = 0
            object dbgPlanPago: TDBGrid
              Left = 1
              Top = 56
              Width = 610
              Height = 266
              Align = alTop
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataSource = dtsPlanPago
              DrawingStyle = gdsGradient
              GradientEndColor = clMoneyGreen
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'nPago'
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Sec.'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clGreen
                  Title.Font.Height = -13
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 42
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'fechaPago'
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Fecha Pago'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clGreen
                  Title.Font.Height = -13
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 105
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'saldoInicial'
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'saldo Inicial'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clGreen
                  Title.Font.Height = -13
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 161
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'letra'
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Letra'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clGreen
                  Title.Font.Height = -13
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 94
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Pago'
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clGreen
                  Title.Font.Height = -13
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Saldo'
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Saldo Letra'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clGreen
                  Title.Font.Height = -13
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'saldoFinal'
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Deber Ser'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clGreen
                  Title.Font.Height = -13
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 141
                  Visible = True
                end>
            end
            object Panel9: TPanel
              Left = 1
              Top = 1
              Width = 610
              Height = 55
              Align = alTop
              BevelEdges = []
              BorderStyle = bsSingle
              Color = clMoneyGreen
              ParentBackground = False
              TabOrder = 1
              object Label5: TLabel
                Left = 11
                Top = 18
                Width = 68
                Height = 16
                Caption = 'No. Cuenta:'
              end
              object lbl_PPP_Cuenta: TEdit
                Left = 85
                Top = 15
                Width = 204
                Height = 24
                ReadOnly = True
                TabOrder = 0
                Text = 'lblNumCuenta'
              end
            end
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Movimientos'
          ImageIndex = 2
          object Panel10: TPanel
            Left = 0
            Top = 0
            Width = 612
            Height = 55
            Align = alTop
            BevelEdges = []
            BorderStyle = bsSingle
            Color = clMoneyGreen
            ParentBackground = False
            TabOrder = 0
            object Label4: TLabel
              Left = 11
              Top = 18
              Width = 68
              Height = 16
              Caption = 'No. Cuenta:'
            end
            object lblNumCuenta: TEdit
              Left = 85
              Top = 16
              Width = 204
              Height = 24
              ReadOnly = True
              TabOrder = 0
              Text = 'lblNumCuenta'
            end
          end
          object pnlMivimientos: TPanel
            Left = 0
            Top = 55
            Width = 612
            Height = 297
            Align = alClient
            BorderStyle = bsSingle
            Caption = 'pnlMivimientos'
            Color = clMoneyGreen
            ParentBackground = False
            TabOrder = 1
            object DBGrid2: TDBGrid
              Left = 1
              Top = 1
              Width = 606
              Height = 291
              Align = alClient
              Color = clWhite
              DataSource = dtsMovimientos
              DrawingStyle = gdsGradient
              GradientEndColor = clMoneyGreen
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDrawColumnCell = DBGrid2DrawColumnCell
              Columns = <
                item
                  Expanded = False
                  FieldName = 'fecha_doc'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Fecha'
                  Title.Color = clSkyBlue
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clGreen
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 76
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'nombreDoc'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Tipo'
                  Title.Color = clSkyBlue
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clGreen
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 167
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'documento'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Documento'
                  Title.Color = clSkyBlue
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clGreen
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 72
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cuenta'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Cuenta'
                  Title.Color = clSkyBlue
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clGreen
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 63
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'naturaleza'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'DB/CR'
                  Title.Color = clSkyBlue
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clGreen
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 41
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'montoCapital'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Monto'
                  Title.Color = clSkyBlue
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clGreen
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 73
                  Visible = True
                end
                item
                  Color = clMoneyGreen
                  Expanded = False
                  FieldName = 'saldoCapital'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Saldo'
                  Title.Color = clSkyBlue
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clGreen
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 82
                  Visible = True
                end
                item
                  Expanded = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = '|'
                  Title.Color = clSkyBlue
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clGreen
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 7
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'montoInteres'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Interes'
                  Title.Color = clSkyBlue
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clGreen
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 73
                  Visible = True
                end
                item
                  Color = clMoneyGreen
                  Expanded = False
                  FieldName = 'saldoInteres'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Saldo'
                  Title.Color = clSkyBlue
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
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = '|'
                  Title.Color = clSkyBlue
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clGreen
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 6
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'montoMora'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Mora'
                  Title.Color = clSkyBlue
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clGreen
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 71
                  Visible = True
                end
                item
                  Color = clMoneyGreen
                  Expanded = False
                  FieldName = 'saldoMora'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Saldo'
                  Title.Color = clSkyBlue
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clGreen
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 80
                  Visible = True
                end>
            end
          end
        end
      end
    end
  end
  object pn_Imagen: TPanel
    Left = 48
    Top = 52
    Width = 100
    Height = 103
    TabOrder = 2
    OnMouseMove = pn_ImagenMouseMove
    object SpeedButton1: TSpeedButton
      Left = 69
      Top = 52
      Width = 30
      Height = 25
      Align = alRight
      Glyph.Data = {
        4E010000424D4E01000000000000760000002800000014000000120000000100
        040000000000D800000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF006FF00FF00FF0
        077007670000F00FF00FF0008008806700000FF00FF00F07008008670000F00F
        F00FF00780088077000000000000070788000087000077777707700788807777
        0000777777000007888077770000777777088807888077770000777777088807
        8880777700007700000008070880777700007709999908078880777700007099
        9990880788807777000070909908880788807777000070009008880788807777
        0000777007088880788077770000777777088888078077770000777777088888
        807077770000777777000000000077770000}
      OnClick = SpeedButton1Click
      ExplicitLeft = 235
      ExplicitTop = 273
    end
    object SpeedButton2: TSpeedButton
      Left = 31
      Top = 52
      Width = 30
      Height = 25
      Align = alLeft
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000010000FF00FF000000
        9A00001DEC000022F1000029F900002EFC000236FF00083CFF001248FF001B50
        FF00285BFF003264FF003E6EFF004474FF000D80AA000A82AF001385AF000682
        B600078DBB002692BF000C92C000089DCF00129ECA000DA2D40011A7D20020A2
        CB0035A7CD0030BCDD0044BADD0023D6FD0035D3F70035D4F80036D9FE004AC5
        DD0049C1E30049D5EE0063DAF50059EAFE006FE6FF006FF8FF0072F9FE007AFE
        FF0092CEE4008DE7FA0082F8FF008CFBFE0091FCFE0097FEFF009BFBFC00BAEE
        F600A0FCFE00A8FFFF00ADFFFF00B6F6FF00B3FCFE00B4FFFF00C6F5FF00C7FF
        FF00D3FFFF00E1F8FD00E4FFFF00F1FBFD00F4FFFF00FCFFFF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000E0E0E0E0E0E00000000000000000012231D20
        262B1C0E00000000000000122D251D1E0101010101010101000000122D251D1E
        010C0A0806040201000000122D251D1F010D0B0907040301000000123635383B
        010101010101010100000012311B1816191A132A0E0000000000001221251D20
        262B22110E000000000000122D251D20262B22150E000000000000122D251D20
        262B22150E000000000000122D251D20262B22150E000000000000122E2C2729
        2E3224170E000000000000123F3E3A36363434270E00000000000000143E3B39
        3432301000000000000000000012121212121200000000000000}
      OnClick = SpeedButton2Click
      ExplicitTop = 273
    end
    object SpeedButton3: TSpeedButton
      Left = 1
      Top = 52
      Width = 30
      Height = 25
      Align = alLeft
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000010000FF00FF000875
        0D0010A61D0013AA220016AD260017AF2A001AB12D001CB4310020B8360021B8
        390025BD3E0026BE41002AC147002CC349002FC74F0030C9520035CE590038D1
        5E003AD260003CD462003ED766003FD8680041DA6D0045DD710049E279004DE6
        7F000E7FA9000E80AA001385AF000682B600078DBB002692BF000C92C000089C
        CE00129FCB000DA2D40011A7D20020A1CA0035A7CD0030BCDD0044BADD0023D7
        FE0036D8FD004AC5DD0049C1E30049D5EE0063DAF50059EAFE006CE0F8006FE6
        FF006FF8FF0072F9FE007AFEFF0092CEE4008DE7FA0082F8FF008CFBFE0091FC
        FE0097FEFF009BFBFC00BAEEF600A0FCFE00A8FFFF00ADFFFF00B6F6FF00B3FC
        FE00B4FFFF00C6F5FF00C7FFFF00D3FFFF00E3FAFF00E4FFFF00E9F9FD00F1FB
        FD00F4FFFF00FCFFFF0000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000101010100000000001B1B1B1B1B1B0001030201000000001E2D292A31
        36281B010603010000001E382F292A31010101010A07010101011E382F292A31
        0113100F0D0B0A0605011E382F292A3101161611100D0C0A08011E4140434648
        010101011513010101011E3C27242225261F35011716010000001E2B2F292A31
        362C1D011919010000001E382F292A31362C21010101010000001E382F292A31
        362C211A0000000000001E382F292A31362C211B0000000000001E3937323439
        3D2E231B0000000000001E4B4A4541413F3F321B00000000000000204A46443F
        3D3B1C0000000000000000001E1E1E1E1E1E0000000000000000}
      OnClick = SpeedButton3Click
      ExplicitTop = 273
    end
    object pn_Expira: TPanel
      Left = 1
      Top = 77
      Width = 98
      Height = 25
      Align = alBottom
      Caption = 'pn_Expira'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBImage2: TDBImage
      Left = 1
      Top = 1
      Width = 98
      Height = 51
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataField = 'imagen'
      DataSource = dts_CajaImagen
      Stretch = True
      TabOrder = 1
      OnMouseMove = DBImage2MouseMove
    end
  end
  object dtsCuentas: TDataSource
    DataSet = DataModulo1.SocioProductos
    Left = 32
    Top = 208
  end
  object dtstransaccion: TDataSource
    DataSet = mTransaccion
    OnDataChange = dtstransaccionDataChange
    Left = 692
    Top = 251
  end
  object dtsRecientes: TDataSource
    DataSet = DataModulo1.recientes
    OnDataChange = dtstransaccionDataChange
    Left = 132
    Top = 211
  end
  object dtsBancos: TDataSource
    DataSet = DataModulo1.Bancos
    Left = 467
    Top = 355
  end
  object mTransaccion: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 788
    Top = 251
    object mTransaccionFECHA: TDateTimeField
      FieldName = 'FECHA'
      DisplayFormat = 'dd MMM yyyy'
    end
    object mTransaccionTipoDoc: TStringField
      FieldName = 'TipoDoc'
      Size = 3
    end
    object mTransaccionDocumento: TIntegerField
      FieldName = 'Documento'
    end
    object mTransaccionNum_Cuenta: TStringField
      FieldName = 'Num_Cuenta'
      EditMask = '!00-000000-00;0;_'
      Size = 12
    end
    object mTransaccionCuenta: TStringField
      FieldName = 'Cuenta'
      LookupDataSet = DataModulo1.CuentaContableFull
      LookupKeyFields = 'CuentaNombre'
      LookupResultField = 'CuentaNombre'
      KeyFields = 'Cuenta'
    end
    object mTransaccionNaturaleza: TStringField
      FieldName = 'Naturaleza'
      Size = 1
    end
    object mTransaccionMonto: TFloatField
      FieldName = 'Monto'
      DisplayFormat = '#,##0.00;(#,##0.00)'
      EditFormat = '#,##0.00'
    end
    object mTransaccionFecha_Aud: TDateTimeField
      FieldName = 'Fecha_Aud'
    end
    object mTransaccionUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object mTransaccionSaldo: TFloatField
      FieldName = 'Saldo'
      DisplayFormat = '#,##0.00;(#,##0.00)'
    end
    object mTransaccionEfectivo: TFloatField
      FieldName = 'Efectivo'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      MaxValue = 999999999999999.000000000000000000
    end
    object mTransaccionCheque: TFloatField
      FieldName = 'Cheque'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      MaxValue = 99999999999999.000000000000000000
    end
    object mTransaccionNumCheque: TIntegerField
      FieldName = 'NumCheque'
    end
    object mTransaccionBanco: TIntegerField
      FieldName = 'Banco'
    end
    object mTransaccionBanco2: TStringField
      FieldKind = fkLookup
      FieldName = 'Banco2'
      LookupDataSet = DataModulo1.Bancos
      LookupKeyFields = 'banco'
      LookupResultField = 'nombre'
      KeyFields = 'Banco'
      Size = 100
      Lookup = True
    end
    object mTransaccionsubCuenta: TIntegerField
      FieldName = 'subCuenta'
    end
    object mTransaccionSaldoT: TFloatField
      FieldName = 'SaldoT'
      DisplayFormat = '#,##0.00;(#,##0.00)'
    end
    object mTransaccionimputable: TBooleanField
      FieldName = 'imputable'
    end
    object mTransaccionOrden: TStringField
      FieldName = 'Orden'
      Size = 1
    end
    object mTransacciondeposito: TFloatField
      FieldName = 'deposito'
      DisplayFormat = '#,##0.00;(#,##0.00)'
    end
    object mTransaccionSaldoO: TFloatField
      FieldName = 'SaldoO'
      DisplayFormat = '#,##0.00;(#,##0.00)'
    end
    object mTransaccionPrestamo_SN: TStringField
      FieldName = 'Prestamo_SN'
      Size = 1
    end
    object mTransaccionnombreCuenta: TStringField
      FieldName = 'nombreCuenta'
      Size = 150
    end
    object mTransaccioncampo: TStringField
      FieldName = 'campo'
    end
    object mTransaccionCuentaContable: TStringField
      FieldKind = fkLookup
      FieldName = 'CuentaContable'
      LookupDataSet = DataModulo1.CuentaContableFull
      LookupKeyFields = 'CuentaNombre'
      LookupResultField = 'cuenta'
      KeyFields = 'CuentaContable'
      Lookup = True
    end
    object mTransaccionguid: TStringField
      FieldName = 'guid'
      Size = 50
    end
    object mTransaccionnombreCuentafull: TStringField
      FieldKind = fkLookup
      FieldName = 'nombreCuentafull'
      LookupDataSet = DataModulo1.CuentaContableFull
      LookupKeyFields = 'cuenta'
      LookupResultField = 'CuentaNombre'
      KeyFields = 'Cuenta'
      Size = 50
      Lookup = True
    end
    object mTransacciontipoCuenta: TStringField
      FieldName = 'tipoCuenta'
      Size = 1
    end
    object mTransaccionmontoInteres: TFloatField
      FieldName = 'montoInteres'
    end
  end
  object mPlanPago: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 246
    Top = 355
    object mPlanPagonPago: TIntegerField
      FieldName = 'nPago'
    end
    object mPlanPagofechaPago: TDateField
      FieldName = 'fechaPago'
      DisplayFormat = 'dd MMM yyyy'
    end
    object mPlanPagosaldoInicial: TFloatField
      FieldName = 'saldoInicial'
      DisplayFormat = '#,##0.00;(#,##0.00)'
    end
    object mPlanPagoletra: TFloatField
      FieldName = 'letra'
      DisplayFormat = '#,##0.00;(#,##0.00)'
    end
    object mPlanPagosaldoFinal: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'saldoFinal'
      DisplayFormat = '#,##0.00;(#,##0.00)'
    end
    object mPlanPagoPago: TFloatField
      FieldName = 'Pago'
      DisplayFormat = '#,##0.00;(#,##0.00)'
    end
    object mPlanPagoSaldo: TFloatField
      FieldName = 'Saldo'
      DisplayFormat = '#,##0.00;(#,##0.00)'
    end
  end
  object dtsPlanPago: TDataSource
    DataSet = mPlanPago
    Left = 542
    Top = 355
  end
  object dtsMovimientos: TDataSource
    DataSet = mMovimientos
    Left = 654
    Top = 351
  end
  object mMovimientos: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 480
    Top = 304
    object mMovimientostipo_documento: TWideStringField
      FieldName = 'tipo_documento'
      Origin = 'tipo_documento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object mMovimientosdocumento: TIntegerField
      FieldName = 'documento'
      Origin = 'documento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object mMovimientosfecha_doc: TDateField
      FieldName = 'fecha_doc'
      Origin = 'fecha_doc'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      DisplayFormat = 'dd MMM yyyy'
    end
    object mMovimientosnum_cuenta: TWideStringField
      FieldName = 'num_cuenta'
      Origin = 'num_cuenta'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 12
    end
    object mMovimientoscuenta: TWideStringField
      FieldName = 'cuenta'
      Origin = 'cuenta'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object mMovimientosnaturaleza: TWideStringField
      FieldName = 'naturaleza'
      Origin = 'naturaleza'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 1
    end
    object mMovimientosmontoCapital: TFloatField
      FieldName = 'montoCapital'
      Origin = 'montoCapital'
      DisplayFormat = '#,##0.00;(#,##0.00)'
    end
    object mMovimientossaldoCapital: TBCDField
      FieldName = 'saldoCapital'
      Origin = 'saldoCapital'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00)'
      Precision = 1
      Size = 1
    end
    object mMovimientosmontoInteres: TFloatField
      FieldName = 'montoInteres'
      Origin = 'montoInteres'
      DisplayFormat = '#,##0.00;(#,##0.00)'
    end
    object mMovimientossaldoInteres: TBCDField
      FieldName = 'saldoInteres'
      Origin = 'saldoInteres'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00)'
      Precision = 1
      Size = 1
    end
    object mMovimientosmontoMora: TFloatField
      FieldName = 'montoMora'
      Origin = 'montoMora'
      DisplayFormat = '#,##0.00;(#,##0.00)'
    end
    object mMovimientossaldoMora: TBCDField
      FieldName = 'saldoMora'
      Origin = 'saldoMora'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00)'
      Precision = 1
      Size = 1
    end
    object mMovimientosOrden: TIntegerField
      FieldName = 'Orden'
      Origin = 'Orden'
      Required = True
    end
    object mMovimientos_dc: TWideStringField
      FieldName = '_dc'
      Origin = '_dc'
      Size = 1
    end
    object mMovimientosSigno: TStringField
      FieldName = 'Signo'
      Origin = 'Signo'
      Size = 1
    end
    object mMovimientosnombreDoc: TWideStringField
      FieldName = 'nombreDoc'
      Origin = 'nombreDoc'
      Size = 50
    end
    object mMovimientossubcuenta: TSmallintField
      FieldName = 'subcuenta'
      Origin = 'subcuenta'
    end
  end
  object calculo: TFDQuery
    Connection = DataModulo1.cnn2
    SQL.Strings = (
      'Select 22 - 21 as calculo ')
    Left = 566
    Top = 311
    object calculocalculo: TIntegerField
      FieldName = 'calculo'
      Origin = 'calculo'
      ReadOnly = True
    end
  end
  object dtsCuentasContables: TDataSource
    DataSet = DataModulo1.CuentaContable
    Left = 374
    Top = 355
  end
  object dtsTipoTransaccion: TDataSource
    DataSet = DataModulo1.tipoTransaccion
    Left = 112
    Top = 304
  end
  object dtsTrx: TDataSource
    DataSet = DataModulo1.productoTrx
    Left = 288
    Top = 408
  end
  object dts_CajaImagen: TDataSource
    DataSet = DataModulo1.cajaImage
    Left = 176
    Top = 400
  end
end
