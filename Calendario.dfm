object frmCalendario: TfrmCalendario
  Left = 192
  Top = 107
  AutoSize = True
  BiDiMode = bdLeftToRight
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Calendario'
  ClientHeight = 173
  ClientWidth = 317
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Fechas: TMonthCalendar
    Left = 0
    Top = 0
    Width = 238
    Height = 173
    Date = 37168.539202581020000000
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 244
    Top = 1
    Width = 73
    Height = 25
    Caption = 'Aceptar'
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 244
    Top = 32
    Width = 73
    Height = 25
    Caption = 'Cancelar'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 2
  end
end
