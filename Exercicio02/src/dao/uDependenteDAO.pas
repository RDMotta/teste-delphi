unit uDependenteDAO;

interface

uses
  System.Classes, SysUtils, Data.SqlExpr, uDependente, uDM, uDMClient;

type
  TDependenteDAO = class
  private
    FSQL: TSQLQuery;
  public
    procedure Salvar(const ADependente: TDependente;
      const AEmTransacao: boolean = false);
  end;

implementation

{ TDependenteDAO }

procedure TDependenteDAO.Salvar(const ADependente: TDependente;
  const AEmTransacao: boolean = false);
var
  iIdDependente: Integer;
begin
  try
    FSQL := TSQLQuery.Create(nil);
    FSQL.SQLConnection := DM.SQLConnection;
    FSQL.CommandText := '';
    if not AEmTransacao then
      DM.IniciarTransacao;

    iIdDependente := DMClient.GerarIDTabela('DEPENDENTE');
    try


      FSQL.SQL.Add
        ('Insert into DEPENDENTE ( ID_DEPENDENTE, NOME, IS_CALCULAR_IR, IS_CALCULAR_INSS, ID_FUNCIONARIO)');
      FSQL.SQL.Add('VALUES (:id, :nome, :calc_ir, :calc_inss, :id_func) ');
      FSQL.Params.ParamByName('id').AsInteger := iIdDependente;
      FSQL.Params.ParamByName('nome').AsString := ADependente.Nome;
      if ADependente.IsCalculaIR then
        FSQL.Params.ParamByName('calc_ir').AsSmallint := 1
      else
        FSQL.Params.ParamByName('calc_ir').AsSmallint := 0;
      if ADependente.IsCalculaINSS then
        FSQL.Params.ParamByName('calc_inss').AsSmallint := 1
      else
        FSQL.Params.ParamByName('calc_inss').AsSmallint := 0;
      FSQL.Params.ParamByName('id_func').AsINteger := ADependente.Id_Funcionario;
      FSQL.ExecSQL;
    finally
      FSQL.Free;
      if not AEmTransacao then
        DM.ConfirmarTransacao;
    end;
  except
    on E: Exception do
      if not AEmTransacao then
        DM.CancelarTransacao;
  end;
end;

end.
