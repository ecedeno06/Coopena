object frmVentana: TfrmVentana
  Left = 0
  Top = 0
  Caption = 'frmVentana'
  ClientHeight = 385
  ClientWidth = 763
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 763
    Height = 34
    ButtonHeight = 30
    ButtonWidth = 30
    Caption = 'ToolBar1'
    EdgeBorders = [ebBottom]
    TabOrder = 0
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = 'ToolButton1'
      ImageIndex = 6
    end
    object ToolButton2: TToolButton
      Left = 30
      Top = 0
      Caption = 'ToolButton2'
      ImageIndex = 5
    end
    object ToolButton3: TToolButton
      Left = 60
      Top = 0
      Caption = 'ToolButton3'
      ImageIndex = 0
    end
    object ToolButton4: TToolButton
      Left = 90
      Top = 0
      Caption = 'ToolButton4'
      ImageIndex = 4
    end
    object ToolButton5: TToolButton
      Left = 120
      Top = 0
      Caption = 'ToolButton5'
      ImageIndex = 7
    end
    object ToolButton6: TToolButton
      Left = 150
      Top = 0
      Caption = 'ToolButton6'
      ImageIndex = 8
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 366
    Width = 763
    Height = 19
    Panels = <>
  end
end
