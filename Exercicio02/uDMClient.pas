unit uDMClient;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider, Data.DB, Data.SqlExpr, uDM;

type
  TDMClient = class(TDataModule)
    SQLFuncionarios: TSQLDataSet;
    dspFuncionarios: TDataSetProvider;
    cdsFuncionario: TClientDataSet;
    dspDependentes: TDataSetProvider;
    cdsDependente: TClientDataSet;
    SQLDependentes: TSQLDataSet;
    procedure cdsFuncionarioAfterScroll(DataSet: TDataSet);
    procedure SQLDependentesAfterScroll(DataSet: TDataSet);
  private

  public
    function GerarIDTabela(const ATabela: String): Integer;
  end;

var
  DMClient: TDMClient;
implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMClient.cdsFuncionarioAfterScroll(DataSet: TDataSet);
begin
  SQLDependentes.Params.ParamByName('ID_FUNCIONARIO').Value := SQLFuncionarios.FieldByName('ID_FUNCIONARIO').Value
end;

function TDMClient.GerarIDTabela(const ATabela: String): Integer;
var
 oSQLIncremento: TSQLDataSet;
begin
  oSQLIncremento := TSQLDataSet.Create(nil);
  try
    oSQLIncremento.SQLConnection := DM.SQLConnection;
    oSQLIncremento.CommandText := 'Select coalesce(max(id_'+ATabela+')  ,0) + 1 As SEQ from ' + ATabela;
    oSQLIncremento.Open;

    result :=  oSQLIncremento.FieldByName('SEQ').AsInteger;
  finally
    oSQLIncremento.Free;
  end;
end;

procedure TDMClient.SQLDependentesAfterScroll(DataSet: TDataSet);
begin
 SQLDependentes.Params.ParamByName('ID_FUNCIONARIO').Value := SQLFuncionarios.FieldByName('ID_FUNCIONARIO').Value
end;

end.
