unit cadDependente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFuncionarioController, Vcl.StdCtrls,
  Vcl.Buttons;

type
  TfrmDependente = class(TForm)
    btnGuardar: TBitBtn;
    btnSair: TBitBtn;
    Label1: TLabel;
    edtNome: TEdit;
    cbINSS: TCheckBox;
    cbIR: TCheckBox;
    procedure btnGuardarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
    FController: TFuncionarioController;
  public
    { Public declarations }
    procedure setController(const AController: TFuncionarioController);

  end;

var
  frmDependente: TfrmDependente;

implementation

{$R *.dfm}

{ TfrmDependente }

procedure TfrmDependente.btnGuardarClick(Sender: TObject);
begin
   FController.AdicionarDependente;
   if Application.messageBox('Deseja Adicionar um novo Registro?','Confirmação',mb_YesNo) = id_YES then
    FController.LimparViewDependente;
end;

procedure TfrmDependente.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmDependente.setController(
  const AController: TFuncionarioController);
begin
  FController := AController;
  AController.SetViewDependente(Self);
end;

end.
