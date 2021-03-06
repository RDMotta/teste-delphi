unit uDependente;

interface

uses System.Classes;

type
  TDependente = class
  private
    FIsCalculaINSS: Boolean;
    FNome: String;
    FIsCalculaIR: Boolean;
    FId_Funcionario: integer;
  public
    property Nome: String read FNome write FNome;
    property IsCalculaIR: Boolean read FIsCalculaIR write FIsCalculaIR;
    property IsCalculaINSS: Boolean read FIsCalculaINSS write FIsCalculaINSS;
    property Id_Funcionario: Integer read FId_Funcionario write FId_Funcionario;
  end;

implementation

end.
