object frmCuentas: TfrmCuentas
  Left = 0
  Top = 0
  AutoSize = True
  BorderStyle = bsDialog
  Caption = 'Cuentas'
  ClientHeight = 105
  ClientWidth = 417
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 417
    Height = 105
    Caption = 'Seleccion de la Cuenta'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 26
      Width = 39
      Height = 13
      Caption = 'Cuenta:'
    end
    object edCuenta: TDBLookupComboBox
      Left = 50
      Top = 23
      Width = 358
      Height = 21
      KeyField = 'cuenta'
      ListField = 'CuentaNombre'
      ListSource = dtsCuentas
      TabOrder = 0
    end
    object Button1: TButton
      Left = 3
      Top = 77
      Width = 75
      Height = 25
      Caption = 'Aceptar'
      Default = True
      ModalResult = 1
      TabOrder = 1
    end
    object Button2: TButton
      Left = 339
      Top = 77
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 2
    end
    object esDebito: TRadioButton
      Left = 101
      Top = 50
      Width = 113
      Height = 17
      Caption = 'Debito'
      TabOrder = 3
    end
    object esCredito: TRadioButton
      Left = 220
      Top = 50
      Width = 113
      Height = 17
      Caption = 'Credito'
      TabOrder = 4
    end
  end
  object dtsCuentas: TDataSource
    DataSet = DataModulo1.CuentaContableFull
    Left = 296
    Top = 71
  end
end