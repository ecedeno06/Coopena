object frmChequesCaja: TfrmChequesCaja
  Left = 0
  Top = 0
  Anchors = [akLeft, akBottom]
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'ChequesCaja'
  ClientHeight = 164
  ClientWidth = 783
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 32
    Width = 702
    Height = 132
    Align = alCustom
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'numeroCheque'
        Title.Caption = 'No. Cheque'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clGreen
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Banco'
        Title.Alignment = taCenter
        Title.Caption = 'Nombre Banco'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clGreen
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 205
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'emisor'
        Title.Caption = 'Emisor'
        Width = 159
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tcheque'
        Title.Caption = 'Tipo de Cheque'
        Width = 148
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'monto'
        Title.Alignment = taCenter
        Title.Caption = 'Monto Cheque'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clGreen
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 783
    ButtonHeight = 30
    ButtonWidth = 30
    Caption = 'ToolBar1'
    DrawingStyle = dsGradient
    GradientEndColor = clMoneyGreen
    Images = DataModulo1.ImageList2
    TabOrder = 1
    ExplicitWidth = 513
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = 'ToolButton1'
      ImageIndex = 8
      OnClick = ToolButton1Click
    end
    object ToolButton3: TToolButton
      Left = 30
      Top = 0
      Caption = 'ToolButton3'
      ImageIndex = 6
      OnClick = ToolButton3Click
    end
    object ToolButton2: TToolButton
      Left = 60
      Top = 0
      Width = 38
      Caption = 'ToolButton2'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object ToolButton5: TToolButton
      Left = 98
      Top = 0
      Caption = 'ToolButton5'
      ImageIndex = 7
      OnClick = ToolButton5Click
    end
    object ToolButton4: TToolButton
      Left = 128
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
  end
  object btnAceptar: TButton
    Left = 708
    Top = 38
    Width = 75
    Height = 47
    Align = alCustom
    Anchors = [akLeft, akBottom]
    Caption = 'Aceptar'
    Images = DataModulo1.ImageList1
    ModalResult = 1
    TabOrder = 2
    OnClick = btnAceptarClick
  end
  object btnCancelar: TButton
    Left = 708
    Top = 107
    Width = 75
    Height = 49
    Align = alCustom
    Anchors = [akLeft, akBottom]
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 3
  end
  object DataSource1: TDataSource
    DataSet = DataModulo1.ChequesCaja
    Left = 248
    Top = 232
  end
end
