inherited frmEncripta: TfrmEncripta
  Caption = ''
  DockSite = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object edCrudo: TButtonedEdit
    Left = 44
    Top = 72
    Width = 339
    Height = 21
    Images = DataModulo1.ImageList1
    LeftButton.DisabledImageIndex = 30
    LeftButton.HotImageIndex = 30
    LeftButton.ImageIndex = 30
    LeftButton.PressedImageIndex = 30
    LeftButton.Visible = True
    TabOrder = 2
    OnLeftButtonClick = edCrudoLeftButtonClick
  end
  object btnGenerarClave: TButton
    Left = 390
    Top = 67
    Width = 73
    Height = 32
    Align = alCustom
    Anchors = [akTop, akRight, akBottom]
    Caption = 'Enc...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ImageIndex = 48
    Images = DataModulo1.ImageList1
    ParentFont = False
    TabOrder = 3
    OnClick = btnGenerarClaveClick
  end
  object edEncriptado: TButtonedEdit
    Left = 44
    Top = 128
    Width = 339
    Height = 21
    Images = DataModulo1.ImageList1
    LeftButton.DisabledImageIndex = 47
    LeftButton.HotImageIndex = 15
    LeftButton.ImageIndex = 15
    LeftButton.PressedImageIndex = 15
    LeftButton.Visible = True
    TabOrder = 4
  end
  object Button1: TButton
    Left = 389
    Top = 123
    Width = 73
    Height = 32
    Align = alCustom
    Anchors = [akTop, akRight, akBottom]
    Caption = 'Des...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ImageIndex = 48
    Images = DataModulo1.ImageList1
    ParentFont = False
    TabOrder = 5
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 44
    Top = 184
    Width = 339
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 6
  end
  object btnFecha: TButton
    Left = 389
    Top = 182
    Width = 75
    Height = 25
    Caption = 'btnFecha'
    TabOrder = 7
    OnClick = btnFechaClick
  end
  object editFecha: TButtonedEdit
    Left = 389
    Top = 224
    Width = 339
    Height = 21
    Images = DataModulo1.ImageList1
    LeftButton.DisabledImageIndex = 47
    LeftButton.HotImageIndex = 15
    LeftButton.ImageIndex = 15
    LeftButton.PressedImageIndex = 15
    LeftButton.Visible = True
    TabOrder = 8
  end
  object Button2: TButton
    Left = 621
    Top = 70
    Width = 75
    Height = 25
    Caption = 'btnFecha'
    TabOrder = 9
    OnClick = Button2Click
  end
end
