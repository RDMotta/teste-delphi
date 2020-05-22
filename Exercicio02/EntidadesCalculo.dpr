program EntidadesCalculo;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmPrincipal},
  uFuncionario in 'src\model\uFuncionario.pas',
  uDependente in 'src\model\uDependente.pas',
  uFuncionarioDAO in 'src\dao\uFuncionarioDAO.pas',
  uFuncionarioController in 'src\controller\uFuncionarioController.pas',
  cadDependente in 'src\view\cadDependente.pas' {frmDependente},
  uDM in 'src\dao\uDM.pas' {DM: TDataModule},
  uDMClient in 'uDMClient.pas' {DMClient: TDataModule},
  uDependenteDAO in 'src\dao\uDependenteDAO.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TDMClient, DMClient);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
