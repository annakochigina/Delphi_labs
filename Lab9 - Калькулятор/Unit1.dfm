object Form1: TForm1
  Left = 780
  Top = 291
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1050#1072#1083#1100#1082#1091#1083#1103#1090#1086#1088
  ClientHeight = 451
  ClientWidth = 388
  Color = clMaroon
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Bt1: TButton
    Left = 24
    Top = 144
    Width = 41
    Height = 41
    Caption = '1'
    TabOrder = 0
    OnClick = Bt1Click
  end
  object Bt2: TButton
    Left = 89
    Top = 144
    Width = 41
    Height = 41
    Caption = '2'
    TabOrder = 1
    OnClick = Bt1Click
  end
  object Bt4: TButton
    Left = 24
    Top = 203
    Width = 41
    Height = 41
    Caption = '4'
    TabOrder = 2
    OnClick = Bt1Click
  end
  object Bt3: TButton
    Left = 152
    Top = 144
    Width = 41
    Height = 41
    Caption = '3'
    TabOrder = 3
    OnClick = Bt1Click
  end
  object Bt5: TButton
    Left = 89
    Top = 203
    Width = 41
    Height = 41
    Caption = '5'
    TabOrder = 4
    OnClick = Bt1Click
  end
  object Bt6: TButton
    Left = 152
    Top = 203
    Width = 41
    Height = 41
    Caption = '6'
    TabOrder = 5
    OnClick = Bt1Click
  end
  object Bt8: TButton
    Left = 89
    Top = 264
    Width = 41
    Height = 41
    Caption = '8'
    TabOrder = 6
    OnClick = Bt1Click
  end
  object Bt7: TButton
    Left = 24
    Top = 264
    Width = 41
    Height = 41
    Caption = '7'
    TabOrder = 7
    OnClick = Bt1Click
  end
  object BtPr: TButton
    Left = 312
    Top = 203
    Width = 41
    Height = 41
    Caption = '*'
    TabOrder = 8
    OnClick = BtPlusClick
  end
  object Bt9: TButton
    Left = 152
    Top = 264
    Width = 41
    Height = 41
    Caption = '9'
    TabOrder = 9
    OnClick = Bt1Click
  end
  object BtPlus: TButton
    Left = 248
    Top = 203
    Width = 41
    Height = 41
    Caption = '+'
    TabOrder = 10
    OnClick = BtPlusClick
  end
  object BtMinus: TButton
    Left = 248
    Top = 264
    Width = 41
    Height = 41
    Caption = '-'
    TabOrder = 11
    OnClick = BtPlusClick
  end
  object BtEq: TButton
    Left = 89
    Top = 328
    Width = 105
    Height = 41
    Caption = '='
    TabOrder = 12
    OnClick = BtEqClick
  end
  object Bt0: TButton
    Left = 24
    Top = 328
    Width = 41
    Height = 41
    Caption = '0'
    TabOrder = 13
    OnClick = Bt1Click
  end
  object BtDiv: TButton
    Left = 312
    Top = 264
    Width = 41
    Height = 41
    Caption = '/'
    TabOrder = 14
    OnClick = BtPlusClick
  end
  object BtClear: TButton
    Left = 248
    Top = 144
    Width = 105
    Height = 41
    Caption = #1057
    TabOrder = 15
    OnClick = BtClearClick
  end
  object Edit: TEdit
    Left = 24
    Top = 80
    Width = 329
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
  end
end
