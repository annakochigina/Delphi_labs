object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = #1048#1075#1088#1072
  ClientHeight = 299
  ClientWidth = 635
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object NumLb: TLabel
    Left = 32
    Top = 115
    Width = 75
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1095#1080#1089#1083#1086
  end
  object AnsLb: TLabel
    Left = 32
    Top = 152
    Width = 32
    Height = 13
    Caption = #1054#1090#1074#1077#1090
  end
  object PopLb: TLabel
    Left = 32
    Top = 184
    Width = 45
    Height = 13
    Caption = #1055#1086#1087#1099#1090#1082#1080
  end
  object TimLb: TLabel
    Left = 32
    Top = 216
    Width = 30
    Height = 13
    Caption = #1042#1088#1077#1084#1103
  end
  object Lb: TLabel
    Left = 33
    Top = 56
    Width = 49
    Height = 13
    Caption = #1044#1080#1072#1087#1072#1079#1086#1085
  end
  object PopLab: TLabel
    Left = 128
    Top = 184
    Width = 3
    Height = 13
  end
  object OtvLb: TLabel
    Left = 128
    Top = 152
    Width = 3
    Height = 13
  end
  object Tim: TLabel
    Left = 128
    Top = 216
    Width = 3
    Height = 13
  end
  object InputNum: TEdit
    Left = 128
    Top = 112
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 0
  end
  object Dia1Ed: TEdit
    Left = 128
    Top = 53
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Dia2Ed: TEdit
    Left = 312
    Top = 53
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object NewBt: TButton
    Left = 488
    Top = 51
    Width = 75
    Height = 25
    Caption = #1053#1086#1074#1072#1103' '#1080#1075#1088#1072
    TabOrder = 3
    OnClick = NewBtClick
  end
  object ReactBt: TButton
    Left = 488
    Top = 110
    Width = 75
    Height = 25
    Caption = #1056#1077#1072#1082#1094#1080#1103
    Enabled = False
    TabOrder = 4
    OnClick = ReactBtClick
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 216
    Top = 200
  end
end
