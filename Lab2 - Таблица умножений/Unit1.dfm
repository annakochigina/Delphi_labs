object MainF: TMainF
  Left = 0
  Top = 0
  Caption = #1058#1072#1073#1083#1080#1094#1072' '#1091#1084#1085#1086#1078#1077#1085#1080#1103
  ClientHeight = 359
  ClientWidth = 698
  Color = clInfoBk
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 96
    Top = 160
    Width = 3
    Height = 13
  end
  object Label2: TLabel
    Left = 256
    Top = 160
    Width = 3
    Height = 13
  end
  object PrLb: TLabel
    Left = 448
    Top = 160
    Width = 3
    Height = 13
  end
  object Cd1Lb: TLabel
    Left = 440
    Top = 184
    Width = 17
    Height = 13
  end
  object Cd2Lb: TLabel
    Left = 440
    Top = 216
    Width = 3
    Height = 13
  end
  object TrackBar1: TTrackBar
    Left = 88
    Top = 72
    Width = 150
    Height = 45
    Max = 99
    Min = 2
    PageSize = 10
    Position = 2
    TabOrder = 0
    OnChange = TrackBar1Change
  end
  object TrackBar2: TTrackBar
    Left = 244
    Top = 72
    Width = 150
    Height = 45
    Max = 99
    Min = 2
    Position = 2
    TabOrder = 1
    OnChange = TrackBar1Change
  end
  object CheckBox1: TCheckBox
    Left = 440
    Top = 124
    Width = 137
    Height = 17
    Caption = #1042#1086#1079#1074#1077#1076#1077#1085#1080#1077' '#1074' '#1082#1074#1072#1076#1088#1072#1090
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
  end
end
