inherited frmVentana1: TfrmVentana1
  Caption = 'frmVentana1'
  OnShow = FormShow
  ExplicitWidth = 800
  ExplicitHeight = 500
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    ExplicitTop = 443
    ExplicitWidth = 784
  end
  object DBGrid1: TDBGrid
    Left = 480
    Top = 8
    Width = 217
    Height = 129
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
        FieldName = 'nombre'
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = DataModulo1.Parentezcos
    Left = 48
    Top = 40
  end
end
