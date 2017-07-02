object frmSocioCuentas: TfrmSocioCuentas
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Listado de Cuentas'
  ClientHeight = 255
  ClientWidth = 756
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 756
    Height = 255
    Align = alClient
    Caption = 'Seleccion de la Cuenta'
    TabOrder = 0
    DesignSize = (
      756
      255)
    object btn_Aceptar: TButton
      Left = 3
      Top = 227
      Width = 75
      Height = 25
      Caption = 'Aceptar'
      ModalResult = 1
      TabOrder = 0
    end
    object Button2: TButton
      Left = 677
      Top = 229
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 1
    end
    object ed_socioCuentas_Filtro: TButtonedEdit
      Left = 3
      Top = 23
      Width = 749
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Images = DataModulo1.ImageList2
      LeftButton.HotImageIndex = 9
      LeftButton.ImageIndex = 9
      LeftButton.PressedImageIndex = 9
      LeftButton.Visible = True
      RightButton.DisabledImageIndex = 7
      RightButton.HotImageIndex = 7
      RightButton.ImageIndex = 7
      RightButton.PressedImageIndex = 7
      RightButton.Visible = True
      TabOrder = 2
      OnChange = ed_socioCuentas_FiltroChange
      OnKeyDown = ed_socioCuentas_FiltroKeyDown
      OnKeyPress = ed_socioCuentas_FiltroKeyPress
      OnLeftButtonClick = ed_socioCuentas_FiltroLeftButtonClick
      OnRightButtonClick = ed_socioCuentas_FiltroRightButtonClick
    end
    object lv_socioCuentas: TListView
      Left = 3
      Top = 50
      Width = 750
      Height = 173
      Anchors = [akLeft, akTop, akRight, akBottom]
      Columns = <
        item
          Caption = 'Cuenta'
          ImageIndex = 4
          Width = 150
        end
        item
          Caption = 'Producto'
          ImageIndex = 3
          Width = 250
        end
        item
          Caption = 'nombre'
          ImageIndex = 17
          Width = 400
        end>
      LargeImages = DataModulo1.ImageList2
      GroupHeaderImages = DataModulo1.ImageList2
      ReadOnly = True
      RowSelect = True
      SmallImages = DataModulo1.ImageList2
      StateImages = DataModulo1.ImageList2
      TabOrder = 3
      ViewStyle = vsReport
      OnClick = lv_socioCuentasClick
      OnDblClick = lv_socioCuentasDblClick
      OnDrawItem = lv_socioCuentasDrawItem
      OnDragOver = lv_socioCuentasDragOver
    end
  end
  object mCuenta: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 256
    Top = 112
    object mCuenta_Cuenta: TStringField
      FieldName = '_Cuenta'
    end
  end
  object dts_mCuenta: TDataSource
    DataSet = mCuenta
    Left = 352
    Top = 112
  end
end
