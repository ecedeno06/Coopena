object frmIrving: TfrmIrving
  Left = 0
  Top = 0
  Caption = 'frmIrving'
  ClientHeight = 303
  ClientWidth = 545
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
  object DBGrid1: TDBGrid
    Left = 32
    Top = 24
    Width = 497
    Height = 169
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
        FieldName = 'apellido'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'socio'
        Visible = True
      end
      item
        Expanded = False
        Visible = True
      end
      item
        Expanded = False
        Visible = True
      end
      item
        Expanded = False
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = DataModulo1.prueba2
    Left = 48
    Top = 216
  end
end
