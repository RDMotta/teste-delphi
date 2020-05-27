unit cadFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFuncionarioController, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmFuncionario = class(TForm)
    dbNome: TDBEdit;
    dbCPF: TDBEdit;
    dbSalario: TDBEdit;
    lbNome: TLabel;
    lbCPF: TLabel;
    Label3: TLabel;
    btnSalvar: TBitBtn;
    btnDependente: TBitBtn;
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnDependenteClick(Sender: TObject);
  private
     FController: TFuncionarioController;
  public
    { Public declarations }
  end;

implementation
  uses uFuncionarioDTO;
{$R *.dfm}

procedure TfrmFuncionario.btnDependenteClick(Sender: TObject);
begin
  FController.AdicionarDependente;
end;

procedure TfrmFuncionario.btnSalvarClick(Sender: TObject);
begin
  FController.SalvarCadastro;
end;

procedure TfrmFuncionario.FormCreate(Sender: TObject);
begin
  FController := FController.Create;
  Fcontroller.SetView(Self);
end;

end.
