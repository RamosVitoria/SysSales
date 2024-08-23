unit uCadFornecedores;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, Data.DB,
  DBAccess, Uni, MemDS, FMX.StdCtrls, FMX.Layouts, FMX.ExtCtrls,
  FMX.Controls.Presentation, FMX.Edit, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView,
  Data.Bind.Controls, Fmx.Bind.Navigator, System.Rtti, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope;

type
  TfCadFornecedores = class(TForm)
    uqFornecedores: TUniQuery;
    udsFornecedores: TUniDataSource;
    pTopo: TPanel;
    pTopo02: TPanel;
    Panel1: TPanel;
    RegFirst: TImageViewer;
    RegPrior: TImageViewer;
    RegNext: TImageViewer;
    RegLast: TImageViewer;
    Panel2: TPanel;
    RegInserir: TImageViewer;
    RegDeletar: TImageViewer;
    RegEditar: TImageViewer;
    RegGravar: TImageViewer;
    RegCancelar: TImageViewer;
    RegAtualizar: TImageViewer;
    Sair: TImageViewer;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    ImageViewer1: TImageViewer;
    ImageViewer2: TImageViewer;
    ImageViewer3: TImageViewer;
    ImageViewer4: TImageViewer;
    Panel7: TPanel;
    ImageViewer5: TImageViewer;
    ImageViewer6: TImageViewer;
    ImageViewer7: TImageViewer;
    ImageViewer8: TImageViewer;
    ImageViewer9: TImageViewer;
    ImageViewer10: TImageViewer;
    ImageViewer11: TImageViewer;
    Panel8: TPanel;
    Panel9: TPanel;
    Label3: TLabel;
    Panel10: TPanel;
    Panel11: TPanel;
    ImageViewer12: TImageViewer;
    ImageViewer13: TImageViewer;
    ImageViewer14: TImageViewer;
    ImageViewer15: TImageViewer;
    Panel12: TPanel;
    ImageViewer16: TImageViewer;
    ImageViewer17: TImageViewer;
    ImageViewer18: TImageViewer;
    ImageViewer19: TImageViewer;
    ImageViewer20: TImageViewer;
    ImageViewer21: TImageViewer;
    ImageViewer22: TImageViewer;
    lbID: TLabel;
    lbNome: TLabel;
    pCodigo: TPanel;
    lCodigo: TLabel;
    lbCnpj: TLabel;
    edtNome: TEdit;
    edtCnpj: TEdit;
    lUsuarios: TListView;
    BindNavigator1: TBindNavigator;
    uqFornecedoresCODFORN: TIntegerField;
    uqFornecedoresNOME: TStringField;
    uqFornecedoresCNPJ: TStringField;
    uqFornecedoresRUA: TStringField;
    uqFornecedoresBAIRRO: TStringField;
    uqFornecedoresCIDADE: TStringField;
    uqFornecedoresCEP: TStringField;
    uqFornecedoresUF: TStringField;
    uqFornecedoresFONE: TStringField;
    lbRua: TLabel;
    lbBairro: TLabel;
    edtRua: TEdit;
    edtBairro: TEdit;
    edtCidade: TEdit;
    lbCidade: TLabel;
    lbCep: TLabel;
    Label4: TLabel;
    lbFone: TLabel;
    lbUf: TLabel;
    edtCep: TEdit;
    edtUf: TEdit;
    edtFone: TEdit;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    LinkPropertyToFieldText: TLinkPropertyToField;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    LinkControlToField7: TLinkControlToField;
    LinkControlToField8: TLinkControlToField;
    procedure ImageViewer12Click(Sender: TObject);
    procedure ImageViewer13Click(Sender: TObject);
    procedure ImageViewer14Click(Sender: TObject);
    procedure ImageViewer15Click(Sender: TObject);
    procedure ImageViewer16Click(Sender: TObject);
    procedure ImageViewer17Click(Sender: TObject);
    procedure ImageViewer18Click(Sender: TObject);
    procedure ImageViewer20Click(Sender: TObject);
    procedure ImageViewer21Click(Sender: TObject);
    procedure ImageViewer22Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCadFornecedores: TfCadFornecedores;

implementation

{$R *.fmx}

uses uModulo;

procedure TfCadFornecedores.ImageViewer12Click(Sender: TObject);
begin
          // Verificar se a tabela está em Inserção ou Edição
          if (uqFornecedores.State) in [dsInsert, dsEdit]
             Then Begin
                    ShowMessage ('Tabela já está em uso!'+
                                 CHR(13)+
                                 'Cancele, se desejar');
                    Exit;
                  End;


          uqFornecedores.First;
end;

procedure TfCadFornecedores.ImageViewer13Click(Sender: TObject);
begin
          // Verificar se a tabela está em Inserção ou Edição
          if (uqFornecedores.State) in [dsInsert, dsEdit]
             Then Begin
                    ShowMessage ('Tabela já está em uso!'+
                                 CHR(13)+
                                 'Cancele, se desejar');
                    Exit;
                  End;
          uqFornecedores.Prior;
end;

procedure TfCadFornecedores.ImageViewer14Click(Sender: TObject);
begin
          // Verificar se a tabela está em Inserção ou Edição
          if (uqFornecedores.State) in [dsInsert, dsEdit]
             Then Begin
                    ShowMessage ('Tabela já está em uso!'+
                                 CHR(13)+
                                 'Cancele, se desejar');
                    Exit;
                  End;

          uqFornecedores.Next;
end;

procedure TfCadFornecedores.ImageViewer15Click(Sender: TObject);
begin
          // Verificar se a tabela está em Inserção ou Edição
          if (uqFornecedores.State) in [dsInsert, dsEdit]
             Then Begin
                    ShowMessage ('Tabela já está em uso!'+
                                 CHR(13)+
                                 'Cancele, se desejar');
                    Exit;
                  End;

          uqFornecedores.Last;
end;

procedure TfCadFornecedores.ImageViewer16Click(Sender: TObject);
begin
          // Verificar se a tabela está em Inserção ou Edição
          if (uqFornecedores.State) in [dsInsert, dsEdit]
             Then Begin
                    ShowMessage ('Tabela já está em uso!'+
                                 CHR(13)+
                                 'Cancele, se desejar');
                    Exit;
                  End;

          uqFornecedores.Insert;
end;

procedure TfCadFornecedores.ImageViewer17Click(Sender: TObject);
begin     // Verificar se a tabela está em Inserção ou Edição
          if (uqFornecedores.State) in [dsInsert, dsEdit]
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
                    uqFornecedores.Delete;   // Excluindo registro
                    ShowMessage ('Excluído com Sucesso!');
                  End
             Else ShowMessage ('Não Excluído!')
end;

procedure TfCadFornecedores.ImageViewer18Click(Sender: TObject);
begin
          // Verificar se a tabela está em Inserção ou Edição
          if (uqFornecedores.State) in [dsInsert, dsEdit]
             Then Begin
                    ShowMessage ('Tabela já está em uso!'+
                                 CHR(13)+
                                 'Cancele, se desejar');
                    Exit;
                  End;

          uqFornecedores.Edit;
end;

procedure TfCadFornecedores.ImageViewer20Click(Sender: TObject);
begin
          ShowMessage ('Atividades canceladas!');
          uqFornecedores.Cancel;
end;

procedure TfCadFornecedores.ImageViewer21Click(Sender: TObject);
begin
          // Verificar se a tabela está em Inserção ou Edição
          if (uqFornecedores.State) in [dsInsert, dsEdit]
             Then Begin
                    ShowMessage ('Tabela está em uso!' + CHR(13)+
                                 'Cancele, antes de atualizar');
                    Exit;
                  End;
          uqFornecedores.Refresh;
end;

procedure TfCadFornecedores.ImageViewer22Click(Sender: TObject);
begin
          // Verificar se a tabela está em Inserção ou Edição
          If (uqFornecedores.State) in [dsInsert, dsEdit]
             Then Begin
                    ShowMessage ('Tabela está em uso!' + CHR(13)+
                                 'Cancele, antes de Sair');
                    Exit;
                  End;
          Close;
end;

end.
