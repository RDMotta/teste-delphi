program FuncionarioTest;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  DUnitTestRunner,
  TestuFuncionarioController in 'src\TestuFuncionarioController.pas',
  uFuncionario in '..\src\model\uFuncionario.pas',
  uDependente in '..\src\model\uDependente.pas',
  uFuncionarioController in '..\src\controller\uFuncionarioController.pas',
  cadDependente in '..\src\view\cadDependente.pas' {frmDependente},
  cadFuncionario in '..\src\view\cadFuncionario.pas' {frmFuncionario},
  uFuncionarioDAO in '..\src\dao\uFuncionarioDAO.pas',
  uDependenteDAO in '..\src\dao\uDependenteDAO.pas',
  uDM in '..\src\dao\uDM.pas' {DM: TDataModule},
  uDMClient in '..\uDMClient.pas' {DMClient: TDataModule},
  uMain in '..\uMain.pas' {frmPrincipal};

{$R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

