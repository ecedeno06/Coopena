object frmCuentas: TfrmCuentas
  Left = 0
  Top = 0
  AutoSize = True
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
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
      Left = 53
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
      TabOrder = 3
    end
    object Button2: TButton
      Left = 339
      Top = 77
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 4
    end
    object esDebito: TRadioButton
      Left = 101
      Top = 50
      Width = 113
      Height = 17
      Caption = 'Debito'
      TabOrder = 1
    end
    object esCredito: TRadioButton
      Left = 220
      Top = 50
      Width = 113
      Height = 17
      Caption = 'Credito'
      TabOrder = 2
    end
  end
  object dtsCuentas: TDataSource
    DataSet = DataModulo1.CuentaContableFull
    Left = 288
    Top = 55
  end
  object mCuenta: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 176
    Top = 48
    object mCuenta_Cuenta: TStringField
      FieldName = '_Cuenta'
    end
  end
end
