object frmDesgloseCheques: TfrmDesgloseCheques
  Left = 0
  Top = 0
  AutoSize = True
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Desglos de Cheques'
  ClientHeight = 184
  ClientWidth = 491
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  DesignSize = (
    491
    184)
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 3
    Top = 31
    Width = 488
    Height = 122
    DataSource = dtsDesgloseCheques
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
        Title.Caption = 'No. de Cheque'
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bb'
        Title.Caption = 'Nombre Banco'
        Width = 234
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'monto'
        Title.Caption = 'Monto'
        Width = 119
        Visible = True
      end>
  end
  object btnAceptar: TButton
    Left = 0
    Top = 159
    Width = 75
    Height = 25
    Align = alCustom
    Anchors = [akLeft, akBottom]
    Caption = 'Aceptar'
    ModalResult = 1
    TabOrder = 1
  end
  object btnCancelar: TButton
    Left = 398
    Top = 150
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 2
  end
  object ToolBar1: TToolBar
    Left = 3
    Top = 0
    Width = 488
    Height = 25
    ButtonHeight = 25
    ButtonWidth = 32
    Caption = 'ToolBar1'
    Color = clMoneyGreen
    DrawingStyle = dsGradient
    GradientEndColor = clMoneyGreen
    Images = DataModulo1.ImageList1
    ParentColor = False
    TabOrder = 3
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = 'ToolButton1'
      ImageIndex = 21
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 32
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object ToolButton3: TToolButton
      Left = 40
      Top = 0
      Caption = 'ToolButton3'
      ImageIndex = 4
      OnClick = ToolButton3Click
    end
    object ToolButton4: TToolButton
      Left = 72
      Top = 0
      Width = 31
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ToolButton5: TToolButton
      Left = 103
      Top = 0
      Caption = 'ToolButton5'
      ImageIndex = 5
      OnClick = ToolButton5Click
    end
  end
  object dtsDesgloseCheques: TDataSource
    DataSet = DataModulo1.DesgloseCheques
    Left = 336
    Top = 88
  end
end
