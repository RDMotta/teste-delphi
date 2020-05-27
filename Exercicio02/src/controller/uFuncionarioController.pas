unit uFuncionarioController;

interface

uses uFuncionario, uDependente, uFuncionarioDAO, Vcl.Forms,
  System.Generics.Collections;

type
  TFuncionarioController = class
  protected
    FFuncionarioDAO: TFuncionarioDAO;
    FView: TForm;
    FViewDependente: TForm;
    FLista: TList<TFuncionario>;
  public
    constructor Create; overload;
    destructor Destroy;
    procedure SetView(AView: TForm);
    procedure SetViewDependente(AView: TForm);
    procedure LimparView;
    procedure LimparViewDependente;
    procedure SalvarCadastro;
    function getListaFuncionarios: TList<TFuncionario>;
    procedure AdicionarDependente; overload;
    procedure AdicionarFuncionario; overload;
    procedure AdicionarDependente(const ADependente: TDependente); overload;
    procedure AdicionarFuncionario(const AFuncionario: TFuncionario);  overload;
    function CalcularImpostoIR: Real;
    function CalcularImpostoINSS: Real;
  end;

implementation

uses
  uMain, cadDependente, SysUtils;

   const PC_IR= 0.15;
         PC_INSS= 0.08;
{ TFuncionarioController }

procedure TFuncionarioController.AdicionarDependente;
var
  oDependente: TDependente;
  oFuncionario: TFuncionario;
begin
  oDependente := TDependente.Create;
  oDependente.Nome := ( FViewDependente As TfrmDependente).edtNome.Text;
  oDependente.IsCalculaIR := ( FViewDependente As TfrmDependente).cbIR.Checked;
  oDependente.IsCalculaINSS := ( FViewDependente As TfrmDependente).cbINSS.Checked;
  oDependente.Id_Funcionario := 0;
  AdicionarDependente(oDependente);
end;

procedure TFuncionarioController.AdicionarFuncionario;
var
  oFuncionario: TFuncionario;
begin
  oFuncionario := TFuncionario.Create;

  oFuncionario.Nome := (FView as TfrmPrincipal).edtNome.Text;
  oFuncionario.CPF := (FView as TfrmPrincipal).edtCPF.Text;

  oFuncionario.Salario := StrToFloatDef((FView as TfrmPrincipal)
    .edtSalario.Text, 0);

  AdicionarFuncionario(oFuncionario);

  (FView as TfrmPrincipal).btnAdicionarDependente.Enabled := True;
  (FView as TfrmPrincipal).btnCalcImpost.Enabled := True;
  (FView as TfrmPrincipal).btnSalvar.Enabled := True;
end;



procedure TFuncionarioController.LimparView;
begin
  (FView as TfrmPrincipal).edtNome.Clear;
  (FView as TfrmPrincipal).edtCPF.Clear;
  (FView as TfrmPrincipal).edtSalario.Clear;
end;

procedure TFuncionarioController.LimparViewDependente;
begin
( FViewDependente As TfrmDependente).edtNome.Clear;
( FViewDependente As TfrmDependente).cbIR.Checked := False;
( FViewDependente As TfrmDependente).cbINSS.Checked := False;
end;

procedure TFuncionarioController.AdicionarFuncionario(
  const AFuncionario: TFuncionario);
begin
  FLista.Add(AFuncionario);
end;

function TFuncionarioController.CalcularImpostoINSS: Real;
var
  oDependente: TDependente;
  oFuncionario: TFuncionario;
  bINSS: Boolean;
begin
  result := 0.0;
  if FLista.Last.Dependentes.Count = 0 then
    Exit;

  bINSS := false;
  oFuncionario := FLista.Last;
  for oDependente in oFuncionario.Dependentes do
  begin
    if oDependente.IsCalculaINSS then
      bINSS := true;
  end;

  if not bINSS then
    result := 0.0;
  result := (oFuncionario.Salario * PC_INSS);
end;

function TFuncionarioController.CalcularImpostoIR: Real;
var
  iNumDependentes: Integer;
  oDependente: TDependente;
  oFuncionario: TFuncionario;
begin
  result := 0.0;
  if FLista.Last.Dependentes.Count = 0 then
    Exit;

  oFuncionario := FLista.Last;
  if oFuncionario.Salario <= 0 then
    Exit;

  iNumDependentes := 0;
  for oDependente in oFuncionario.Dependentes do
  begin
    if oDependente.IsCalculaIR then
      inc(iNumDependentes);
  end;

  if iNumDependentes = 0 then
    result := 0.0;
  result := (oFuncionario.Salario -(iNumDependentes*100)) * PC_IR;
end;

constructor TFuncionarioController.Create;
begin
  FFuncionarioDAO := TFuncionarioDAO.Create;
  FLista := TList<TFuncionario>.Create();
end;

destructor TFuncionarioController.Destroy;
var
  oFuncionario: TFuncionario;
begin
  FFuncionarioDAO.Free;
  for oFuncionario in FLista do
  begin
    oFuncionario.Free;
  end;
  FLista.Free;
  FLista := nil;
end;

function TFuncionarioController.getListaFuncionarios: TList<TFuncionario>;
begin
   result := FLista;
end;

procedure TFuncionarioController.SalvarCadastro;
var
  oFuncionario: TFuncionario;
begin
  for oFuncionario in FLista do
  begin
    FFuncionarioDAO.Salvar(oFuncionario);
  end;
end;

procedure TFuncionarioController.SetView(AView: TForm);
begin
  FView := AView;
end;

procedure TFuncionarioController.SetViewDependente(AView: TForm);
begin
  FViewDependente := AView;
end;

procedure TFuncionarioController.AdicionarDependente(
  const ADependente: TDependente);
begin
  FLista.Last.Dependentes.Add(ADependente);
end;

end.
