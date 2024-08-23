unit uLogin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.ListBox, FMX.Edit, FMX.Controls.Presentation, Data.DB, DBAccess, Uni,
  MemDS;

type
  TfLogin = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    cbTipoUser: TComboBox;
    btnEntrar: TButton;
    Label1: TLabel;
    Button1: TButton;
    uqUsuarios: TUniQuery;
    udsUsuarios: TUniDataSource;
    procedure Label2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLogin: TfLogin;

implementation

{$R *.fmx}

uses uModulo, uPrincipal;

procedure TfLogin.btnEntrarClick(Sender: TObject);
Var       Consulta : String;                     // Var para texto do SQL
          //NivelUsuario : String;
          { Separar componentes em Variaveis)
            txtUsuario : String;                 // Var para edtUsuario
            txtSenha   : String;                 // Var para edtSenha
            NivelUser  : String;                 // Var para Nivel do usuario
          }
begin
          // Verificar a autenticação
             uqUsuarios.Active := False;   // Desligar a query           String;
             uqUsuarios.SQL.Clear;         // Limpar o SQL
             { Ajusta valores dos componentes para variaveis
               txtUsuario   := edtUsuario.Text;
               txtSenha     := edtSenha.Text;
               NivelUsuario := IntToStr(cbTipoUser.ItemIndex);
             }

             // Jogar o SQL (Sempre deixar um espaço antes da aspas que fecha
             Consulta := 'Select *              ' +
                         'From usuarios         ' +
                         'Where usuario       = ' + QuotedStr(edtUsuario.Text) +
                         '  and senha         = ' + QuotedStr(edtSenha.Text)   +
                         '  and nivel_usuario = ' + QuotedStr(IntToStr(cbTipoUser.ItemIndex));

             { Com variaveis
             Consulta := 'Select *              ' +
                         'From usuarios         ' +
                         'Where usuario       = ' + QuotedStr(txttUsuario) +
                         '  and senha         = ' + QuotedStr(txtSenha)    +
                         '  and nivel_usuario = ' + QuotedStr(NivelUsuario);
             }

             uqUsuarios.SQL.Add(Consulta);
             uqUsuarios.Active := True;    // Executa a query

             // Verificar se existe no banco uma resposta correta
             If uqUsuarios.Fields[0].AsInteger > 0
                Then Begin
                  // Liberar a entrada no sistema
                  // Criar a tela principal aqui e tirar do Source
                  //ShowMessage ('Usuário Aceito');
                  Application.CreateForm(TfPrincipal, fPrincipal);
                  FPrincipal.Show;
                  Exit;
                End;

             ShowMessage ('Usuário inválido!');
end;

procedure TfLogin.Button1Click(Sender: TObject);
begin
          Close;
end;

procedure TfLogin.Label2Click(Sender: TObject);
begin
           fLogin.Close;
           Application.Terminated := True;
end;

end.
