unit uDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.SqlExpr, Data.DBXFirebird,
  Data.FMTBcd, Datasnap.Provider, Datasnap.DBClient;

type
  TDM = class(TDataModule)
    SQLConnection: TSQLConnection;
  private
    { Private declarations }
    FTransactionDec: TTransactionDesc;
  public
    procedure IniciarTransacao;
    procedure CancelarTransacao;
    procedure ConfirmarTransacao;
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDM }

procedure TDM.CancelarTransacao;
begin
  SQLConnection.Rollback(FTransactionDec);
end;

procedure TDM.ConfirmarTransacao;
begin
  try
    SQLConnection.Commit(FTransactionDec);
  except on E: Exception do
    SQLConnection.Rollback(FTransactionDec);
  end;
end;

procedure TDM.IniciarTransacao;
begin
  SQLConnection.StartTransaction(FTransactionDec);
end;

end.
