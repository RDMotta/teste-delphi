object frmDependente: TfrmDependente
  Left = 0
  Top = 0
  Caption = 'Dependente'
  ClientHeight = 118
  ClientWidth = 381
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 23
    Top = 8
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object btnGuardar: TBitBtn
    Left = 217
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Guardar'
    TabOrder = 0
    OnClick = btnGuardarClick
  end
  object btnSair: TBitBtn
    Left = 298
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 1
    OnClick = btnSairClick
  end
  object edtNome: TEdit
    Left = 65
    Top = 11
    Width = 304
    Height = 21
    TabOrder = 2
  end
  object cbINSS: TCheckBox
    Left = 65
    Top = 38
    Width = 97
    Height = 17
    Caption = 'INSS'
    TabOrder = 3
  end
  object cbIR: TCheckBox
    Left = 160
    Top = 38
    Width = 97
    Height = 17
    Caption = 'IR'
    TabOrder = 4
  end
end
