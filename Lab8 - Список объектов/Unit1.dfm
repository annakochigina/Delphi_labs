object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 651
  ClientWidth = 674
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 160
    Top = 25
    Width = 5
    Height = 22
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 8
    Top = 64
    Width = 648
    Height = 569
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
  end
  object Start: TButton
    Left = 8
    Top = 16
    Width = 97
    Height = 34
    Caption = #1057#1090#1072#1088#1090
    TabOrder = 1
    OnClick = StartClick
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 400
    OnTimer = Timer1Timer
    Left = 616
    Top = 16
  end
end
