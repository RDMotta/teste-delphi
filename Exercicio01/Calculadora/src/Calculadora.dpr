program Calculadora;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  uDisplay in 'uDisplay.pas',
  uCalcStrategy in 'uCalcStrategy.pas',
  uCalculadoraController in 'controller\uCalculadoraController.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
