unit uCalcStrategy;

interface

uses uDisplay, System.Classes;

type
  TCalculadoraStrategy = class
  private
    procedure AplicarSoma(const ADisplay: TDisplay);
    procedure AplicarDivisao(const ADisplay: TDisplay);
    procedure AplicarSubtracao(const ADisplay: TDisplay);
    procedure AplicarMultiplicacao(const ADisplay: TDisplay);
    procedure AplicarImpostoA(const ADisplay: TDisplay);
    procedure AplicarImpostoB(const ADisplay: TDisplay);
    procedure AplicarImpostoC(const ADisplay: TDisplay);
  public
    procedure AplicarResultado(const ADisplay: TDisplay;
      const AOperacao: String);

  end;

implementation

procedure TCalculadoraStrategy.AplicarSoma(const ADisplay: TDisplay);
begin
  ADisplay.Resultado := ADisplay.Valor1 + ADisplay.Valor2;
end;

procedure TCalculadoraStrategy.AplicarDivisao(const ADisplay: TDisplay);
begin
  ADisplay.Resultado := ADisplay.Valor1 / ADisplay.Valor2;
end;

procedure TCalculadoraStrategy.AplicarSubtracao(const ADisplay: TDisplay);
begin
  ADisplay.Resultado := ADisplay.Valor1 - ADisplay.Valor2;
end;

procedure TCalculadoraStrategy.AplicarImpostoA(const ADisplay: TDisplay);
begin
  ADisplay.Resultado := (ADisplay.Valor1 * 0.2) - 500;
end;

procedure TCalculadoraStrategy.AplicarImpostoB(const ADisplay: TDisplay);
var
  oDisplayA: TDisplay;
begin
  oDisplayA := TDisplay.Create;
  try
   oDisplayA.Valor1 := ADisplay.Valor1;
    AplicarImpostoA(oDisplayA);
  finally
   oDisplayA.Free;
  end;

  ADisplay.Resultado := oDisplayA.Resultado - 15;
end;

procedure TCalculadoraStrategy.AplicarImpostoC(const ADisplay: TDisplay);
var
  oDisplayA: TDisplay;
  oDisplayB: TDisplay;
begin
  oDisplayA := TDisplay.Create;
  oDisplayB := TDisplay.Create;
  Try
    oDisplayA.Valor1 := ADisplay.Valor1;
    oDisplayB.Valor1 := ADisplay.Valor1;
    AplicarImpostoA(oDisplayA);
    AplicarImpostoB(oDisplayB);
    ADisplay.Resultado := oDisplayA.Resultado + oDisplayB.Resultado;
  Finally
    oDisplayA.Free;
    oDisplayB.Free;
  End;
end;

procedure TCalculadoraStrategy.AplicarMultiplicacao(const ADisplay: TDisplay);
begin
  ADisplay.Resultado := ADisplay.Valor1 * ADisplay.Valor2;
end;

procedure TCalculadoraStrategy.AplicarResultado(const ADisplay: TDisplay;
  const AOperacao: String);
begin
  if AOperacao = '+' then
    AplicarSoma(ADisplay)
  else if AOperacao = '-' then
    AplicarSubtracao(ADisplay)
  else if AOperacao = '*' then
    AplicarMultiplicacao(ADisplay)
  else if AOperacao = '/' then
    AplicarDivisao(ADisplay)
  else if AOperacao = 'A' then
    AplicarImpostoA(ADisplay)
  else if AOperacao = 'B' then
    AplicarImpostoB(ADisplay)
  else if AOperacao = 'C' then
    AplicarImpostoC(ADisplay)
  else
    Exit;

end;

end.
