unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Buttons, uCalculadoraController;

type
  TForm1 = class(TForm)
    edtEntrada: TEdit;
    btnIgual: TBitBtn;
    btnMais: TBitBtn;
    btnSubtrair: TBitBtn;
    btnVezes: TBitBtn;
    btnDividir: TBitBtn;
    lbHistorico: TLabel;
    btn6: TBitBtn;
    btn8: TBitBtn;
    btn5: TBitBtn;
    btn3: TBitBtn;
    btn1: TBitBtn;
    btn4: TBitBtn;
    btn2: TBitBtn;
    btn0: TBitBtn;
    btnPonto: TBitBtn;
    btn9: TBitBtn;
    btn7: TBitBtn;
    btnImpA: TBitBtn;
    btnImpB: TBitBtn;
    btnImpC: TBitBtn;
    procedure edtEntradaKeyPress(Sender: TObject; var Key: Char);
    procedure btnVe1zesClick(Sender: TObject);
    procedure btnSubtrairClick(Sender: TObject);
    procedure btnMaisClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
    procedure btnIgualClick(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btnPontoClick(Sender: TObject);
  private
    FController: TCalculadoraController;
    procedure definirOperador(const pOperacao: String);
    procedure definirValor(const AValor: String);
  public
    { Public declarations }
    function getController: TCalculadoraController;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnSubtrairClick(Sender: TObject);
begin
  definirOperador((Sender as TBitBtn).Caption);
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
  definirValor((Sender as TBitBtn).Caption);
end;

procedure TForm1.btnDividirClick(Sender: TObject);
begin
  definirOperador((Sender as TBitBtn).Caption);
end;

procedure TForm1.btnIgualClick(Sender: TObject);
begin
  definirOperador((Sender as TBitBtn).Caption);
end;

procedure TForm1.btnMaisClick(Sender: TObject);
begin
  definirOperador((Sender as TBitBtn).Caption);
end;

procedure TForm1.btnPontoClick(Sender: TObject);
begin
  getController.AdicionarDigito((Sender as TBitBtn).Caption);
end;

procedure TForm1.btnVe1zesClick(Sender: TObject);
begin
  definirOperador((Sender as TBitBtn).Caption);
end;

procedure TForm1.definirOperador(const pOperacao: String);
begin
   getController.DefinirOperador(pOperacao);
end;

procedure TForm1.definirValor(const AValor: String);
begin
  getController.AdicionarDigito(AValor);
end;

procedure TForm1.edtEntradaKeyPress(Sender: TObject; var Key: Char);
begin
  if (not getController.isValorValido(Key)) then
  begin
    Key := #0;
    Exit;
  end;
end;

function TForm1.getController: TCalculadoraController;
begin
  if not Assigned(FController) then
     FController := TCalculadoraController.Create(edtEntrada);
  result := FController;
end;

end.

