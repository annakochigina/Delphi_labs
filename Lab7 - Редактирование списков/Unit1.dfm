object Form1: TForm1
  Left = 640
  Top = 228
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1087#1080#1089#1082#1072
  ClientHeight = 414
  ClientWidth = 694
  Color = clInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 64
    Width = 125
    Height = 21
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1089#1090#1088#1086#1082#1091
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 35
    Top = 160
    Width = 269
    Height = 185
  end
  object ListBox1: TListBox
    Left = 432
    Top = 64
    Width = 233
    Height = 313
    ItemHeight = 13
    TabOrder = 0
  end
  object Edit: TEdit
    Left = 24
    Top = 96
    Width = 161
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 216
    Top = 94
    Width = 186
    Height = 33
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1082#1086#1085#1077#1094' '#1089#1087#1080#1089#1082#1072
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object MainMenu1: TMainMenu
    Left = 632
    Top = 8
    object N1: TMenuItem
      Caption = #1052#1077#1085#1102
      object N2: TMenuItem
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
        object N6: TMenuItem
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1082#1086#1085#1077#1094
          OnClick = N6Click
        end
        object N7: TMenuItem
          Caption = #1059#1076#1072#1083#1080#1090#1100' '#1089#1090#1088#1086#1082#1091
          OnClick = N7Click
        end
        object N8: TMenuItem
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1090#1088#1086#1082#1091
          OnClick = N8Click
        end
        object N9: TMenuItem
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1089#1090#1088#1086#1082#1091
          OnClick = N9Click
        end
      end
      object N3: TMenuItem
        Caption = #1054#1095#1080#1089#1090#1082#1072
        object N10: TMenuItem
          Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1089#1087#1080#1089#1086#1082
          OnClick = N10Click
        end
        object N11: TMenuItem
          Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1086#1082#1085#1086' '#1074#1074#1086#1076#1072
          OnClick = N11Click
        end
      end
      object N4: TMenuItem
        Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1085#1080#1077
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N5Click
      end
    end
  end
end
