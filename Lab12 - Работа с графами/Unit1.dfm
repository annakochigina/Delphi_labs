object Form1: TForm1
  Left = 754
  Top = 231
  ClientHeight = 661
  ClientWidth = 681
  Color = clGradientInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 40
    Top = 24
    Width = 465
    Height = 377
  end
  object Button1: TButton
    Left = 544
    Top = 40
    Width = 121
    Height = 33
    Caption = 'Add vertex'
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 544
    Top = 104
    Width = 121
    Height = 41
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1094#1074#1077#1090
    TabOrder = 1
    OnClick = Button2Click
  end
  object StringGrid1: TStringGrid
    Left = 40
    Top = 432
    Width = 225
    Height = 221
    ColCount = 4
    DefaultColWidth = 24
    TabOrder = 2
  end
  object Button3: TButton
    Left = 544
    Top = 168
    Width = 121
    Height = 41
    Caption = #1052#1072#1090#1088#1080#1094#1072' '#1089#1084#1077#1078#1085#1086#1089#1090#1080
    TabOrder = 3
    OnClick = Button3Click
  end
end
