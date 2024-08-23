unit uCadUsuarios;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes, // Import para a MessageDLG
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  Data.DB,
  DBAccess,
  Uni,
  MemDS,
  FMX.Controls.Presentation,
  FMX.StdCtrls,
  FMX.Layouts,
  FMX.ExtCtrls,
  FMX.DateTimeCtrls,
  FMX.Edit,
  Data.Bind.Controls,
  Fmx.Bind.Navigator,
  FMX.ListView.Types,
  FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base,
  System.Rtti,
  System.Bindings.Outputs,
  Fmx.Bind.Editors,
  Data.Bind.EngExt,
  Fmx.Bind.DBEngExt,
  Data.Bind.Components,
  Data.Bind.DBScope,
  FMX.ListView, FMX.ListBox;

type
  TfCadUsuarios = class(TForm)
    uqUsuarios: TUniQuery;
    udsUsuarios: TUniDataSource;
    lbID: TLabel;
    lbNome: TLabel;
    lbSobrenome: TLabel;
    lbEmail: TLabel;
    lbUsuario: TLabel;
    lbSenha: TLabel;
    lbInformacoes: TLabel;
    edtNome: TEdit;
    edtSobrenome: TEdit;
    edtEmail: TEdit;
    edtInfo: TEdit;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    lbDtaCad: TLabel;
    dtCadastro: TDateEdit;
    lbDtaAces: TLabel;
    dtUAcesso: TDateEdit;
    Panel1: TPanel;
    RegFirst: TImageViewer;
    RegPrior: TImageViewer;
    RegNext: TImageViewer;
    RegLast: TImageViewer;
    Panel2: TPanel;
    uqUsuariosUsuario_ID: TIntegerField;
    uqUsuariosNome: TStringField;
    uqUsuariosSobrenome: TStringField;
    uqUsuarioseMail: TStringField;
    uqUsuariosUsuario: TStringField;
    uqUsuariosSenha: TStringField;
    uqUsuariosNivel_usuario: TStringField;
    uqUsuariosDta_cadastro: TDateTimeField;
    uqUsuariosDta_ultimo_login: TDateTimeField;
    uqUsuariosAtivado: TStringField;
    BindNavigator1: TBindNavigator;
    lUsuarios: TListView;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField7: TLinkControlToField;
    LinkControlToField8: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    RegInserir: TImageViewer;
    RegDeletar: TImageViewer;
    RegEditar: TImageViewer;
    RegGravar: TImageViewer;
    RegCancelar: TImageViewer;
    RegAtualizar: TImageViewer;
    pTopo: TPanel;
    pTopo01: TPanel;
    pTopo02: TPanel;
    Label1: TLabel;
    pCodigo: TPanel;
    lCodigo: TLabel;
    LinkPropertyToFieldText: TLinkPropertyToField;
    Sair: TImageViewer;
    edtSenha2: TEdit;
    VerSenha: TImageViewer;
    LinkControlToField9: TLinkControlToField;
    uqUsuariosStatusUser: TStringField;
    cbNivelUser: TComboBox;
    cbStatusUser: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    uqUsuariosInfo: TMemoField;
    uqUsuariosNivelUser: TStringField;
    LinkFillControlToField1: TLinkFillControlToField;
    LinkFillControlToField2: TLinkFillControlToField;
    procedure SairClick(Sender: TObject);
    procedure RegFirstClick(Sender: TObject);
    procedure RegPriorClick(Sender: TObject);
    procedure RegNextClick(Sender: TObject);
    procedure RegLastClick(Sender: TObject);
    procedure RegInserirClick(Sender: TObject);
    procedure RegDeletarClick(Sender: TObject);
    procedure RegEditarClick(Sender: TObject);
    procedure RegGravarClick(Sender: TObject);
    procedure RegCancelarClick(Sender: TObject);
    procedure RegAtualizarClick(Sender: TObject);
    procedure VerSenhaMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure VerSenhaMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure uqUsuariosCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCadUsuarios: TfCadUsuarios;

implementation

{$R *.fmx}

uses uModulo;

procedure TfCadUsuarios.SairClick(Sender: TObject);
begin
          // Verificar se a tabela está em Inserção ou Edição
          If (uqUsuarios.State) in [dsInsert, dsEdit]
             Then Begin
                    ShowMessage ('Tabela está em uso!' + CHR(13)+
                                 'Cancele, antes de Sair');
                    Exit;
                  End;
          Close;
end;

procedure TfCadUsuarios.uqUsuariosCalcFields(DataSet: TDataSet);
Var Item : Integer; // Não esquecer de copiar a variável
begin
      // Monta item do combobox para campo Nivel_Usuario
Item := StrToInt (uqUsuariosNivel_usuario.Value[1]);
case Item of
0: uqUsuariosNivelUser.Value := 'Administrador';
1: uqUsuariosNivelUser.Value := 'Normal';
2: uqUsuariosNivelUser.Value := 'Consulta';
End;
// Monta item do combobox para campo ATIVADO
Item := StrToInt (uqUsuariosAtivado.Value[1]);
case Item of
0: uqUsuariosStatusUser.Value := 'Desativado';
1: uqUsuariosStatusUser.Value := 'Ativado';
End;
end;

procedure TfCadUsuarios.VerSenhaMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
         If (edtSenha.Password)
Then Begin
edtSenha.Password := False;
edtSenha2.Password := False;
End
Else Begin
edtSenha.Password := True;
edtSenha2.Password := True;
End;
end;

procedure TfCadUsuarios.VerSenhaMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
          If (edtSenha.Password)
             Then Begin
                    edtSenha.Password  := False;
                    edtSenha2.Password := False;
                  End
             Else Begin
                    edtSenha.Password  := True;
                    edtSenha2.Password := True;
                  End;
end;

procedure TfCadUsuarios.RegCancelarClick(Sender: TObject);
begin
          ShowMessage ('Atividades canceladas!');
          uqUsuarios.Cancel;
end;

procedure TfCadUsuarios.RegAtualizarClick(Sender: TObject);
begin
          // Verificar se a tabela está em Inserção ou Edição
          if (uqUsuarios.State) in [dsInsert, dsEdit]
             Then Begin
                    ShowMessage ('Tabela está em uso!' + CHR(13)+
                                 'Cancele, antes de atualizar');
                    Exit;
                  End;
          uqUsuarios.Refresh;
end;

procedure TfCadUsuarios.RegDeletarClick(Sender: TObject);
begin     // Verificar se a tabela está em Inserção ou Edição
          if (uqUsuarios.State) in [dsInsert, dsEdit]
             Then Begin
                    ShowMessage ('Tabela já está em uso!' + CHR(13)+
                                 'Cancele, antes de Deletar');
                    Exit;
                  End;
          // Perguntar antes
          If MessageDlg('Deletar Registro?', TMsgDlgType.MTConfirmation,
                         [TMsgDlgBtn.MBYes, TMsgDlgBtn.MBNO],0)
                         = MRYes
             Then Begin
                    uqUsuarios.Delete;   // Excluindo registro
                    ShowMessage ('Excluído com Sucesso!');
                  End
             Else ShowMessage ('Não Excluído!')
end;

procedure TfCadUsuarios.RegEditarClick(Sender: TObject);
begin
          // Verificar se a tabela está em Inserção ou Edição
          if (uqUsuarios.State) in [dsInsert, dsEdit]
             Then Begin
                    ShowMessage ('Tabela já está em uso!'+
                                 CHR(13)+
                                 'Cancele, se desejar');
                    Exit;
                  End;

          uqUsuarios.Edit;
end;

procedure TfCadUsuarios.RegGravarClick(Sender: TObject);
begin
       { Criticas antes de salvar
- Verificar se todas as informações estão presentes
}
// Verificar se a tabela está em Inserção ou Edição
If (uqUsuarios.State) in [dsInsert, dsEdit]
Then Begin
// Verifica os valores dos combobox
// Nivel do Usuario
Case cbNivelUser.ItemIndex of
0: uqUsuariosNivel_usuario.Value := '0';
1: uqUsuariosNivel_usuario.Value := '1';
2: uqUsuariosNivel_usuario.Value := '2';
End;
// Status do Usuario
Case cbStatusUser.ItemIndex of
0: uqUsuariosAtivado.Value := '0';
1: uqUsuariosAtivado.Value := '1';
End;
uqUsuarios.Post; // metodo para gravar
ShowMessage ('Dados gravados com sucesso!');
Exit;
End;
ShowMessage ('Tabela não está em Edição ou Inserção!'
+ CHR(13)+
'Gravação Cancelada!');
end;

procedure TfCadUsuarios.RegPriorClick(Sender: TObject);
begin
          // Verificar se a tabela está em Inserção ou Edição
          if (uqUsuarios.State) in [dsInsert, dsEdit]
             Then Begin
                    ShowMessage ('Tabela já está em uso!'+
                                 CHR(13)+
                                 'Cancele, se desejar');
                    Exit;
                  End;
          uqUsuarios.Prior;
end;

procedure TfCadUsuarios.RegInserirClick(Sender: TObject);
begin
          // Verificar se a tabela está em Inserção ou Edição
          if (uqUsuarios.State) in [dsInsert, dsEdit]
             Then Begin
                    ShowMessage ('Tabela já está em uso!'+
                                 CHR(13)+
                                 'Cancele, se desejar');
                    Exit;
                  End;

          uqUsuarios.Insert;
end;

procedure TfCadUsuarios.RegFirstClick(Sender: TObject);
begin
          // Verificar se a tabela está em Inserção ou Edição
          if (uqUsuarios.State) in [dsInsert, dsEdit]
             Then Begin
                    ShowMessage ('Tabela já está em uso!'+
                                 CHR(13)+
                                 'Cancele, se desejar');
                    Exit;
                  End;


          uqUsuarios.First;
end;

procedure TfCadUsuarios.RegNextClick(Sender: TObject);
begin
          // Verificar se a tabela está em Inserção ou Edição
          if (uqUsuarios.State) in [dsInsert, dsEdit]
             Then Begin
                    ShowMessage ('Tabela já está em uso!'+
                                 CHR(13)+
                                 'Cancele, se desejar');
                    Exit;
                  End;

          uqUsuarios.Next;
end;

procedure TfCadUsuarios.RegLastClick(Sender: TObject);
begin
          // Verificar se a tabela está em Inserção ou Edição
          if (uqUsuarios.State) in [dsInsert, dsEdit]
             Then Begin
                    ShowMessage ('Tabela já está em uso!'+
                                 CHR(13)+
                                 'Cancele, se desejar');
                    Exit;
                  End;

          uqUsuarios.Last;
end;

end.
