unit uDependenteDTO;

interface
  type TDependenteDTO = class
  private
    FIsCalculaINSS: Boolean;
    FNome: String;
    FIsCalculaIR: Boolean;
    public
      property Nome: String read FNome write FNome;
      property IsCalculaIR: Boolean read FIsCalculaIR write FIsCalculaIR;
      property IsCalculaINSS: Boolean read FIsCalculaINSS write FIsCalculaINSS;
  end;
implementation

end.
