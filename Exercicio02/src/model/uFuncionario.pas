unit uFuncionario;

interface

uses uDependente, System.Generics.Collections;

type
  TFuncionario = class
  private
    FID: Integer;
    FCPF: String;
    FSalario: Real;
    FNome: String;
    FListaDependentes: TList<TDependente>;
  public
    constructor Create; overload;
    destructor Destroy;
    property Id_Funcionario: Integer read FID write FID;
    property Nome: String read FNome write FNome;
    property CPF: String read FCPF write FCPF;
    property Salario: Real read FSalario write FSalario;
    property Dependentes: TList<TDependente> read FListaDependentes
      write FListaDependentes;
  end;

implementation

{ TFuncionario }

constructor TFuncionario.Create;
begin
  FListaDependentes := TList<TDependente>.Create();
end;

destructor TFuncionario.Destroy;
var
  oDependente: TDependente;
begin
  for oDependente in FListaDependentes do
  begin
    oDependente.Free;
  end;
  FListaDependentes.Free;
  FListaDependentes := nil;
end;

end.
