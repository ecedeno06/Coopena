object frmGeneralesUsuario: TfrmGeneralesUsuario
  Left = 0
  Top = 0
  Caption = 'frmGeneralesUsuario'
  ClientHeight = 432
  ClientWidth = 779
  Color = clBtnFace
  DockSite = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 413
    Width = 779
    Height = 19
    Panels = <
      item
        Text = 'GeneralesUsuario.pas'
        Width = 50
      end>
  end
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 779
    Height = 413
    VertScrollBar.Color = clGradientInactiveCaption
    VertScrollBar.ParentColor = False
    Align = alClient
    BorderStyle = bsNone
    Color = clBtnFace
    Ctl3D = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 1
    DesignSize = (
      779
      413)
    object GroupBox1: TGroupBox
      Left = 6
      Top = 24
      Width = 766
      Height = 105
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Generales del usuario'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label3: TLabel
        Left = 23
        Top = 60
        Width = 72
        Height = 13
        Caption = 'No. de Celular:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edGeneralesCelular: TButtonedEdit
        Left = 112
        Top = 58
        Width = 249
        Height = 21
        Color = clWhite
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Images = DataModulo1.ImageList2
        LeftButton.Hint = 'Limpia el Dato'
        LeftButton.Visible = True
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        RightButton.DisabledImageIndex = 7
        RightButton.HotImageIndex = 7
        RightButton.ImageIndex = 7
        RightButton.PressedImageIndex = 7
        RightButton.Visible = True
        ShowHint = False
        TabOrder = 0
        OnRightButtonClick = edGeneralesCelularRightButtonClick
      end
      object ToolBar2: TToolBar
        Left = 1
        Top = 14
        Width = 764
        Height = 35
        BorderWidth = 1
        ButtonHeight = 30
        ButtonWidth = 30
        Caption = 'ToolBar1'
        DrawingStyle = dsGradient
        GradientEndColor = clMoneyGreen
        Images = DataModulo1.ImageList2
        TabOrder = 1
        object btnGeneralesSalvar1: TToolButton
          Left = 0
          Top = 0
          ImageIndex = 6
          OnClick = btnGeneralesSalvar1Click
        end
      end
    end
    object GroupBox2: TGroupBox
      Left = 6
      Top = 135
      Width = 766
      Height = 258
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Preguntas de Seguridad Ret'#243'ricas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label1: TLabel
        Left = 67
        Top = 82
        Width = 57
        Height = 13
        Caption = 'Pregunta 1:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 67
        Top = 137
        Width = 57
        Height = 13
        Caption = 'Pregunta 2:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 67
        Top = 191
        Width = 57
        Height = 13
        Caption = 'Pregunta 3:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Image1: TImage
        Left = 10
        Top = 55
        Width = 51
        Height = 49
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
          003008060000005702F9870000076D4944415478DADD5A6B5054D71DFF9DBB0F
          9E110465C180E28228815D1C58048D64F2982699347134CC6492A6EDA74E53E3
          382C9AA4FDD6F45BF350709C9A4EA7FDD2C96BD22464CCC4D8CCA493A9894276
          576097AD20C82B8C0A09202F51F6EE3DFD9F6B16D96517BC0B0BB6BF0F70CE3D
          E79EFDFFCEF9BFCEB987611950EC3C98C7A0AF007825037600AC225C3F0E3482
          F34630E6A04AA3A7BCAE7BA9BFCDA27D31BFF3605CC2B8FE674CE18748A0E2A8
          06E1BC8D4B3862E4D7DF71D9FEE25B1102D6D69792E0F3FF8A73FE12632C3BEA
          A90BE2C10738E36F4806C3DFDC256F4EC5844091F7C564E9BAF14512FA65AAAE
          5B0EC1C3E00792E8757FFCCDB7BC452726978D40B1ABC62A71E9241537C548F0
          10F05E5A96C7DDE5C73A964CA0D869FFA9C4D93FA867C2CA08FF2305CEC719F8
          2F88C4C9A809585CF6034CC1313252DD4A0A3F87859F7EFBB0DB56774C3301AB
          CB6E076775AB22F83C2979ADBBACBEFE8E09585DB54F718E4FA8515A6DD90528
          7E28F4B7DA63ABFF6451025647CD565AB6F3D494B8DA8287600C5CA90835EC20
          02F98D07D724E8F54DF470DBDCE7C6193D2C9D1B903E9604BD12DB45912505C3
          A993F0E45FC18C510E6AA395689F96E58AAECAE3E36109581DF65769F67F1FC4
          5061D8D56A46CA54FC4ACCF22CC692A771D6DA032EF1E006CEFFE02EAF7F751E
          81929643058AACB81958DCDCFE19C3F7C07661A35A4E494E824E175B87E4F7FB
          3136792B183B0BFB31943E112C3FF84D66F0E7BB4B8E0F0411B03A6B8595D784
          0E987B390DF7756741922464A4A5C654F8008646AE41511478CD57D0B761645E
          3BADC96B1E5BDDEF66096C6FB6A72A32BB1C2E58DD95043846467DC81ED85537
          AD122876D6FE864CF3AD70832D0781D191110C7CD70FBDDE0059F6C16834223B
          6723929293A32220407E757F9BADEECF2A018BB3B6850A25CB4D6070F02ADA5A
          5B3144FF05F6BFF002FA89C867A73E57EB9BF3F2505AB603C638A36602A446AD
          A446DB59D1B72F67EA24F94A2421A225D0DFDB83CE8E760C0D0DA9F5A4A4A4D9
          191F1A1C9CED67369B51505884B569699A0808F8157D16B338ED7BC9F3346821
          A0D7EB706FC63A4C4C5EC7C8F8C4BC7706FAFBC049550A0AF2F171C34994EED8
          01932933A84FC7052FFA7A7AF0CB9F3F8FBFBFFD2E1E7CE427B32B71A704C823
          ED631687FD35CAF15FD14260DBE61C98D2D7D28F7038BC1DB8717366B6FF0C95
          4F9FFA14B24F464A4A2AAA1E7C689E8A04206CC3D17816C3C3C3D86CCE43E5FD
          BBB511E0FC756675DA4F93337A4C0B81E2FC5CA4A7AE51CB2D1D973036717B13
          D5DDD589A67367D5F29E7DD5110D35004F6B0BDADCAD6AB9FA99E754B2774A80
          28FC53A85017A9509E16025BB233B12133432D9F71B44061B7D38B335FFD8B3C
          CE77E4657268F61FC662102BF6D107EFA9E58A9DBB60CEDFA245852E0915BA4A
          2A64D242A020270B59A6F56AF9DFCE661AE876746E7636615D5A3AAE4D4CC252
          B27D5102025F7E711AE565A5E81BB8ACBEA3418506C50ADC084D1F9642C0EB6E
          C1963C333ABABA3511A8DEBB17E71C2E1416156959819BCB4E400823DCE45CA3
          5C0C1FBEFF2E7C3E1F4A6D366C2DD4488072A06B544E592E02C23D9E773A6130
          1855238EE481020867F49A548808F46281D386700472D6A7C2BCE95686FAE5B9
          6FA137DC4EB585519E6CF8509D5111692B77455E8580CB9D9A9C4486C984471E
          7D5C7DAEC988A371A317DBDBF1D0EE0AF4F40F60746A1AA6F51941EF08D7186F
          D0C3949181168F9748DC3F6F25449AD14C2BB56FCF53F8A8A1013B773F301B8D
          B5B9D1280259C7C58BE8EAEA425C5C1CAAAAAA10679CAF26ED5E0F748CC1E972
          A9F57BB33792806BD5B270B3D74647E8FD7894DBCAE0A38028DC67009A025991
          A3F6591DC37B5A082894CF8E920089898948888F7C5C24ECC143C99C502781EA
          A7F7D1CC0FE1EB6FBE51EB223FAA20430F4D3334A512DB9AEDB9463FEBD14240
          0B849EF77477AA9E298D546492F49DF8AB812E7B6378D3D394CC8902ED853D91
          4E98EFC60DCDADE9E76DB437B6DC22B0C021D6DD4A20684323B6947E995D229B
          4B0BED182020769FEBD7A6D0A63EB6C72A7EBF82EF47C7C4142FB4271E9D96E5
          5C71BC32BBA9A75DD91FA9F2DBD0CE49D78D78E07C3E891FF5B790A840068AAF
          CA3A319DE00BD316B2A917283C7F789341517AC30DB68956616BAF29E6875A01
          88C3AD76F355F4678E866DF74952EE85D2237D410404C21D6C05C048E9D6790D
          58D3187C5A365165849C15DD5991E18A1FC96766829E8DEFD4E187FB64F04873
          15E9602B000A6CED14D8B6C6768EA303A9CE7F48758AE63EFBFF3ADC0DA0D855
          F3A4C4A54F575BE2B9A0B4E1094F79FDE7A1CFFF373E700007DCB6BA13E11A16
          F48D946AD710F523ABF989898CB9C65356FFA7485D1675EE16C7A12768A4F729
          C8DDB3B2B26382C47BD6537EF4D442FDEE283AFD68D862DF90BB32C2F30EC920
          ED69DD7EF4E2627D357DE8D6DD88DB4FBE4CEC1D62F6A19B847F43499C39B1AC
          1FBAE7425C35E033F2012A1E5AE838460BC455031AEB4D18747F8DD955835094
          397F6D986189CF53843EBCB4CB1EECA8914FBDBD62973DC2C1E2A835D3489524
          50399111576E2A2348DC44C6794E5CB7E1909BDA6CC72F2DF5B7FF0B12CFEFE6
          59B7771C0000000049454E44AE426082}
        Stretch = True
      end
      object edR1: TEdit
        Left = 413
        Top = 78
        Width = 313
        Height = 21
        BevelOuter = bvNone
        Color = clWhite
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object edP1: TEdit
        Left = 141
        Top = 79
        Width = 249
        Height = 21
        BevelOuter = bvNone
        Color = clInfoBk
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object edP2: TEdit
        Left = 141
        Top = 134
        Width = 249
        Height = 21
        BevelOuter = bvNone
        Color = clInfoBk
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
      object edR2: TEdit
        Left = 413
        Top = 134
        Width = 313
        Height = 21
        BevelOuter = bvNone
        Color = clWhite
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
      object edP3: TEdit
        Left = 141
        Top = 188
        Width = 249
        Height = 21
        BevelOuter = bvNone
        Color = clInfoBk
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
      end
      object edR3: TEdit
        Left = 413
        Top = 188
        Width = 313
        Height = 21
        BevelOuter = bvNone
        Color = clWhite
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
      end
      object ToolBar1: TToolBar
        Left = 1
        Top = 14
        Width = 764
        Height = 35
        BorderWidth = 1
        ButtonHeight = 30
        ButtonWidth = 30
        Caption = 'ToolBar1'
        DrawingStyle = dsGradient
        GradientEndColor = clMoneyGreen
        Images = DataModulo1.ImageList2
        TabOrder = 5
        object btnGeneralesSalvar: TToolButton
          Left = 0
          Top = 0
          Caption = 'btnGeneralesSalvar'
          ImageIndex = 6
          OnClick = btnGeneralesSalvarClick
        end
      end
    end
  end
end
