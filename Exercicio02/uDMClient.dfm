object DMClient: TDMClient
  OldCreateOrder = False
  Height = 379
  Width = 389
  object SQLFuncionarios: TSQLDataSet
    CommandText = 
      'SELECT  ID_FUNCIONARIO,'#13#10'  NOME,'#13#10'  CPF,'#13#10'  SALARIO,'#13#10'  DATA_ATU' +
      'ALIZACAO'#13#10'from FUNCIONARIO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnection
    Left = 56
    Top = 48
  end
  object dspFuncionarios: TDataSetProvider
    DataSet = SQLFuncionarios
    Left = 56
    Top = 94
  end
  object cdsFuncionario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFuncionarios'
    AfterScroll = cdsFuncionarioAfterScroll
    Left = 60
    Top = 150
  end
  object dspDependentes: TDataSetProvider
    DataSet = SQLDependentes
    Left = 199
    Top = 102
  end
  object cdsDependente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDependentes'
    Left = 191
    Top = 158
  end
  object SQLDependentes: TSQLDataSet
    AfterScroll = SQLDependentesAfterScroll
    CommandText = 
      'Select ID_DEPENDENTE, NOME, IS_CALCULAR_IR, IS_CALCULAR_INSS,  I' +
      'D_FUNCIONARIO from  DEPENDENTE'#13#10'Where  ID_FUNCIONARIO = :ID_FUNC' +
      'IONARIO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_FUNCIONARIO'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 200
    Top = 56
  end
end
