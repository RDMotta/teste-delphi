unit uDisplay;

interface

uses System.Classes;

type
  TDisplay = class
    FOperacao: String;
    FResultado: Double;
    FValor1: Double;
    FValor2: Double;
    FEntrada: String;
    FOperador: String;
    FUltimoOperador: String;
  public
    property Operacao: String read FOperacao write FOperacao;
    property Operador: String read FOperacao write FOperacao;
    property Valor1: Double read FValor1 write FValor1;
    property Valor2: Double read FValor2 write FValor2;
    property Resultado: Double read FResultado write FResultado;
    property Entrada: String read FEntrada write FEntrada;
    property UltimoOperador: String read FUltimoOperador write FUltimoOperador;

    constructor Create overload;
    function isOperacaoValida(var Key: Char): boolean;
    function isValorValido(var Key: Char): boolean;
    function AplicarOperacao: Double;

  end;

implementation

{ TDisplay }

function TDisplay.AplicarOperacao: Double;
begin
  result := 0.0;
end;

constructor TDisplay.Create;
begin
  FOperacao := '';
  FResultado := 0.0;
  FValor1 := 0.0;
  FValor2 := 0.0;
  FEntrada := '';
  FOperador := '';
  FUltimoOperador := '';
end;

function TDisplay.isOperacaoValida(var Key: Char): boolean;
begin
  result := Key in ['+', '-', '*', '/'];
end;

function TDisplay.isValorValido(var Key: Char): boolean;
begin
   result := Key in ['0'..'9', #8];
end;

end.
