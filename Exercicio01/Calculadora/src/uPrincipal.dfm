object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Calculadora'
  ClientHeight = 289
  ClientWidth = 346
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbHistorico: TLabel
    Left = 326
    Top = 37
    Width = 3
    Height = 13
    Alignment = taRightJustify
  end
  object edtEntrada: TEdit
    Left = 24
    Top = 56
    Width = 305
    Height = 21
    Alignment = taRightJustify
    TabOrder = 0
    OnKeyPress = edtEntradaKeyPress
  end
  object btnIgual: TBitBtn
    Left = 254
    Top = 207
    Width = 75
    Height = 25
    Caption = '='
    TabOrder = 1
    OnClick = btnIgualClick
  end
  object btnMais: TBitBtn
    Left = 254
    Top = 145
    Width = 75
    Height = 25
    Caption = '+'
    TabOrder = 2
    OnClick = btnMaisClick
  end
  object btnSubtrair: TBitBtn
    Left = 254
    Top = 114
    Width = 75
    Height = 25
    Caption = '-'
    TabOrder = 3
    OnClick = btnSubtrairClick
  end
  object btnVezes: TBitBtn
    Left = 253
    Top = 83
    Width = 75
    Height = 25
    Caption = '*'
    TabOrder = 4
    OnClick = btnVe1zesClick
  end
  object btnDividir: TBitBtn
    Left = 254
    Top = 176
    Width = 75
    Height = 25
    Caption = '/'
    TabOrder = 5
    OnClick = btnDividirClick
  end
  object btn6: TBitBtn
    Left = 118
    Top = 114
    Width = 41
    Height = 25
    Caption = '6'
    TabOrder = 6
    OnClick = btn7Click
  end
  object btn8: TBitBtn
    Left = 165
    Top = 83
    Width = 41
    Height = 25
    Caption = '8'
    TabOrder = 7
    OnClick = btn7Click
  end
  object btn5: TBitBtn
    Left = 165
    Top = 114
    Width = 41
    Height = 25
    Caption = '5'
    TabOrder = 8
    OnClick = btn7Click
  end
  object btn3: TBitBtn
    Left = 207
    Top = 145
    Width = 41
    Height = 25
    Caption = '3'
    TabOrder = 9
    OnClick = btn7Click
  end
  object btn1: TBitBtn
    Left = 118
    Top = 145
    Width = 41
    Height = 25
    Caption = '1'
    TabOrder = 10
    OnClick = btn7Click
  end
  object btn4: TBitBtn
    Left = 207
    Top = 114
    Width = 41
    Height = 25
    Caption = '4'
    TabOrder = 11
    OnClick = btn7Click
  end
  object btn2: TBitBtn
    Left = 165
    Top = 145
    Width = 41
    Height = 25
    Caption = '2'
    TabOrder = 12
    OnClick = btn7Click
  end
  object btn0: TBitBtn
    Left = 160
    Top = 176
    Width = 41
    Height = 25
    Caption = '0'
    TabOrder = 13
    OnClick = btn7Click
  end
  object btnPonto: TBitBtn
    Left = 207
    Top = 176
    Width = 41
    Height = 25
    Caption = ','
    TabOrder = 14
    OnClick = btnPontoClick
  end
  object btn9: TBitBtn
    Left = 207
    Top = 83
    Width = 41
    Height = 25
    Caption = '9'
    TabOrder = 15
    OnClick = btn7Click
  end
  object btn7: TBitBtn
    Left = 118
    Top = 83
    Width = 41
    Height = 25
    Caption = '7'
    TabOrder = 16
    OnClick = btn7Click
  end
  object btnImpA: TBitBtn
    Left = 24
    Top = 83
    Width = 75
    Height = 25
    Caption = 'A'
    TabOrder = 17
    OnClick = btnVe1zesClick
  end
  object btnImpB: TBitBtn
    Left = 24
    Top = 114
    Width = 75
    Height = 25
    Caption = 'B'
    TabOrder = 18
    OnClick = btnVe1zesClick
  end
  object btnImpC: TBitBtn
    Left = 24
    Top = 145
    Width = 75
    Height = 25
    Caption = 'C'
    TabOrder = 19
    OnClick = btnVe1zesClick
  end
end
