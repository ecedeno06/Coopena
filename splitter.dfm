object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 372
  ClientWidth = 659
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 56
    Top = 32
    Width = 561
    Height = 305
    Caption = '--'
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 185
      Height = 303
      Align = alLeft
      Caption = 'Panel2'
      Color = clHighlight
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = -4
    end
    object Panel3: TPanel
      Left = 186
      Top = 1
      Width = 374
      Height = 303
      Align = alClient
      Caption = 'Panel3'
      Color = clActiveBorder
      ParentBackground = False
      TabOrder = 1
      ExplicitLeft = 482
      ExplicitTop = 73
      object Splitter1: TSplitter
        Left = 1
        Top = 1
        Height = 301
        ExplicitLeft = 6
        ExplicitTop = 0
      end
    end
  end
end
