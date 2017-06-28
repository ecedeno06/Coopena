inherited frmdoc: Tfrmdoc
  Caption = 'frmdoc'
  ExplicitWidth = 800
  ExplicitHeight = 500
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    ExplicitTop = 443
    ExplicitWidth = 784
  end
  object DBGrid1: TDBGrid
    Left = 184
    Top = 104
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'socio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sec'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nombre'
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    Left = 80
    Top = 136
  end
end
