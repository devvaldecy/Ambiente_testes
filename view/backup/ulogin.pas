unit ulogin;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Buttons,
  StdCtrls, utabela, uprincipal, ZDataset, DB;

type

  { TfrmLogin }

  TfrmLogin = class(TForm)
    BtnAcessar: TSpeedButton;
    BtnLimpar: TSpeedButton;
    DataSource1: TDataSource;
    EdtSenha: TEdit;
    EdtUser: TEdit;
    imgLogo: TImage;
    btnFechar: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    pnlEsquerda: TPanel;
    pnlLogo: TPanel;
    pnlConteiner: TPanel;
    SpeedButton1: TSpeedButton;
    ZQuery1: TZQuery;
    procedure BtnAcessarClick(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: char);
    procedure SpeedButton1Click(Sender: TObject);
  private

  public

  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.lfm}

{ TfrmLogin }

procedure TfrmLogin.SpeedButton1Click(Sender: TObject);
begin

    Application.Terminate;

end;

procedure TfrmLogin.BtnLimparClick(Sender: TObject);
begin
    EdtUser.clear;
    EdtSenha.Clear;
    EdtUser.SetFocus;
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin

    cfg_arqINI  := ChangeFileExt(ParamStr(0),'.ini');
    cfg_pathApp := ExtractFilePath(ParamStr(0));

end;

procedure TfrmLogin.FormKeyPress(Sender: TObject; var Key: char);
begin
    if key=#13 then
    begin
      SelectNext(ActiveControl as TWinControl,True,True);
      key:=#0;
    end;
end;

procedure TfrmLogin.BtnAcessarClick(Sender: TObject);
Var

  Usuario, Senha: string;
  qrAI : TZQuery;

begin
  Usuario := EdtUser.Text;
  Senha := EdtSenha.Text;

  // Verificar se os campos não estão vazios
  if (Usuario = '') or (Senha = '') then
  begin
    ShowMessage('Preencha todos os campos!');
    Exit;
  end;

  // Fazer a consulta ao banco de dados
  ZQuery1 := TZQuery.Create(nil);
  ZQuery1.Connection := TabGlobal.conexao;
  ZQuery1.SQL.Text := 'SELECT * FROM usuario WHERE username = :username AND senha = :senha';
  ZQuery1.ParamByName('username').AsString := Usuario;
  ZQuery1.ParamByName('senha').AsString := Senha;
  try
    ZQuery1.Open;
    if ZQuery1.RecordCount > 0 then
    begin
      ShowMessage('Login bem-sucedido!');
      frmprincipal.show;
      // Aqui você pode adicionar o código para abrir a próxima tela ou form
    end
    else
    begin
      ShowMessage('Usuário ou senha incorretos.');
    end;
  except
    on E: Exception do
    begin
      ShowMessage('Erro ao verificar login: ' + E.Message);
    end;
  end;
end;
end.

