object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 221
  ClientWidth = 423
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 6
    Top = 8
    Width = 409
    Height = 209
    Caption = 'Cadastro'
    TabOrder = 0
    object Label1: TLabel
      Left = 47
      Top = 25
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object Label2: TLabel
      Left = 55
      Top = 52
      Width = 19
      Height = 13
      Caption = 'CPF'
    end
    object Label3: TLabel
      Left = 42
      Top = 80
      Width = 32
      Height = 13
      Caption = 'Sal'#225'rio'
    end
    object Label4: TLabel
      Left = 63
      Top = 106
      Width = 11
      Height = 13
      Caption = 'IR'
    end
    object Label5: TLabel
      Left = 51
      Top = 133
      Width = 23
      Height = 13
      Caption = 'INSS'
    end
    object btnAdicionarDependente: TBitBtn
      Left = 242
      Top = 106
      Width = 126
      Height = 25
      Caption = 'Adicionar Dependente'
      Enabled = False
      TabOrder = 0
      OnClick = btnAdicionarDependenteClick
    end
    object btnSalvar: TBitBtn
      Left = 242
      Top = 168
      Width = 126
      Height = 25
      Caption = 'Salvar'
      Enabled = False
      TabOrder = 1
      OnClick = btnSalvarClick
    end
    object BitBtn1: TBitBtn
      Left = 242
      Top = 75
      Width = 126
      Height = 25
      Caption = 'Adicionar Funcion'#225'rio'
      TabOrder = 2
      OnClick = btnAdicionarFuncionarioClick
    end
    object btnCalcImpost: TBitBtn
      Left = 242
      Top = 137
      Width = 126
      Height = 25
      Caption = 'Calcular Impostos'
      Enabled = False
      TabOrder = 3
      OnClick = btnCalcImpostClick
    end
    object edtIR: TEdit
      Left = 89
      Top = 103
      Width = 121
      Height = 21
      Alignment = taRightJustify
      Color = clSkyBlue
      Enabled = False
      TabOrder = 4
    end
    object edtINSS: TEdit
      Left = 89
      Top = 130
      Width = 121
      Height = 21
      Alignment = taRightJustify
      Color = clSkyBlue
      Enabled = False
      TabOrder = 5
    end
    object edtNome: TEdit
      Left = 89
      Top = 22
      Width = 304
      Height = 21
      TabOrder = 6
    end
    object edtCPF: TEdit
      Left = 89
      Top = 49
      Width = 121
      Height = 21
      MaxLength = 11
      TabOrder = 7
      OnKeyPress = edtCPFKeyPress
    end
    object edtSalario: TEdit
      Left = 89
      Top = 76
      Width = 121
      Height = 21
      Alignment = taRightJustify
      TabOrder = 8
      OnKeyPress = edtSalarioKeyPress
    end
  end
end
