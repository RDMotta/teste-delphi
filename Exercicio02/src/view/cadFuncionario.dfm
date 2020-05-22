object frmFuncionario: TfrmFuncionario
  Left = 0
  Top = 0
  Caption = 'frmFuncionario'
  ClientHeight = 133
  ClientWidth = 493
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbNome: TLabel
    Left = 15
    Top = 11
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object lbCPF: TLabel
    Left = 23
    Top = 46
    Width = 19
    Height = 13
    Caption = 'CPF'
  end
  object Label3: TLabel
    Left = 10
    Top = 65
    Width = 32
    Height = 13
    Caption = 'Sal'#225'rio'
  end
  object dbNome: TDBEdit
    Left = 48
    Top = 8
    Width = 401
    Height = 21
    MaxLength = 50
    TabOrder = 0
  end
  object dbCPF: TDBEdit
    Left = 48
    Top = 35
    Width = 193
    Height = 21
    MaxLength = 11
    TabOrder = 1
  end
  object dbSalario: TDBEdit
    Left = 48
    Top = 62
    Width = 193
    Height = 21
    MaxLength = 11
    TabOrder = 2
  end
  object btnSalvar: TBitBtn
    Left = 340
    Top = 89
    Width = 109
    Height = 29
    Caption = 'Salvar'
    TabOrder = 3
    OnClick = btnSalvarClick
  end
  object btnDependente: TBitBtn
    Left = 48
    Top = 89
    Width = 109
    Height = 29
    Caption = 'Novo Dependente'
    TabOrder = 4
    OnClick = btnDependenteClick
  end
end
