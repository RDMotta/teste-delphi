unit uFuncionarioDTO;

interface
uses uDependenteDTO, System.Generics.Collections;

type
  TFuncionarioDTO=class
  private
    FCPF: String;
    FSalario: String;
    FNome: String;
    FListaDependentes: TObjectList<TDependenteDTO>;
  public
    property Nome: String read FNome write FNome;
    property CPF: String read FCPF write FCPF;
    property Salario: String read FSalario write FSalario;
    property Dependentes: TObjectList<TDependenteDTO> read FListaDependentes
      write FListaDependentes;
  end;

implementation

end.
