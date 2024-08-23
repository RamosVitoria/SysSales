unit uCadClientes;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, Data.DB,
  DBAccess, Uni, MemDS, FMX.StdCtrls, FMX.Layouts, FMX.ExtCtrls,
  FMX.Controls.Presentation, FMX.Edit, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView,
  Data.Bind.Controls, Fmx.Bind.Navigator, FMX.DateTimeCtrls, FMX.ListBox,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.Components, Data.Bind.DBScope;

type
  TfCadClientes = class(TForm)
    uqClientes: TUniQuery;
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
    lbCpf: TLabel;
    lbRua: TLabel;
    lbBairro: TLabel;
    edtNome: TEdit;
    edtCpf: TEdit;
    edtRua: TEdit;
    edtBairro: TEdit;
    lClientes: TListView;
    uqClientesCODCLI: TIntegerField;
    uqClientesNOME: TStringField;
    uqClientesCPF_CNPJ: TStringField;
    uqClientesRUA: TStringField;
    uqClientesBAIRRO: TStringField;
    uqClientesCIDADE: TStringField;
    uqClientesCEP: TStringField;
    uqClientesUF: TStringField;
    uqClientesFONE: TStringField;
    uqClientesDATANASC: TDateField;
    uqClientesTIPO: TIntegerField;
    edtCidade: TEdit;
    lbCidade: TLabel;
    lbCep: TLabel;
    Label4: TLabel;
    lbFone: TLabel;
    lbUf: TLabel;
    edtCep: TEdit;
    edtUf: TEdit;
    edtFone: TEdit;
    lbDtaNasc: TLabel;
    dtNasc: TDateEdit;
    cbTipo: TComboBox;
    lbTipo: TLabel;
    BindNavigator1: TBindNavigator;
    UniDataSource1: TUniDataSource;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkPropertyToFieldText: TLinkPropertyToField;
    LinkListControlToField1: TLinkListControlToField;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    LinkControlToField7: TLinkControlToField;
    LinkControlToField8: TLinkControlToField;
    LinkFillControlToField1: TLinkFillControlToField;
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
  fCadClientes: TfCadClientes;

implementation

{$R *.fmx}

uses uModulo;

procedure TfCadClientes.ImageViewer12Click(Sender: TObject);
begin
          // Verificar se a tabela está em Inserção ou Edição
          if (uqClientes.State) in [dsInsert, dsEdit]
             Then Begin
                    ShowMessage ('Tabela já está em uso!'+
                                 CHR(13)+
                                 'Cancele, se desejar');
                    Exit;
                  End;


          uqClientes.First;
end;

procedure TfCadClientes.ImageViewer13Click(Sender: TObject);
begin
          // Verificar se a tabela está em Inserção ou Edição
          if (uqClientes.State) in [dsInsert, dsEdit]
             Then Begin
                    ShowMessage ('Tabela já está em uso!'+
                                 CHR(13)+
                                 'Cancele, se desejar');
                    Exit;
                  End;
          uqClientes.Prior;
end;

procedure TfCadClientes.ImageViewer14Click(Sender: TObject);
begin
          // Verificar se a tabela está em Inserção ou Edição
          if (uqClientes.State) in [dsInsert, dsEdit]
             Then Begin
                    ShowMessage ('Tabela já está em uso!'+
                                 CHR(13)+
                                 'Cancele, se desejar');
                    Exit;
                  End;

          uqClientes.Next;
end;

procedure TfCadClientes.ImageViewer15Click(Sender: TObject);
begin
          // Verificar se a tabela está em Inserção ou Edição
          if (uqClientes.State) in [dsInsert, dsEdit]
             Then Begin
                    ShowMessage ('Tabela já está em uso!'+
                                 CHR(13)+
                                 'Cancele, se desejar');
                    Exit;
                  End;

          uqClientes.Last;
end;

procedure TfCadClientes.ImageViewer16Click(Sender: TObject);
begin
          // Verificar se a tabela está em Inserção ou Edição
          if (uqClientes.State) in [dsInsert, dsEdit]
             Then Begin
                    ShowMessage ('Tabela já está em uso!'+
                                 CHR(13)+
                                 'Cancele, se desejar');
                    Exit;
                  End;

          uqClientes.Insert;
end;

procedure TfCadClientes.ImageViewer17Click(Sender: TObject);
begin     // Verificar se a tabela está em Inserção ou Edição
          if (uqClientes.State) in [dsInsert, dsEdit]
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
                    uqClientes.Delete;   // Excluindo registro
                    ShowMessage ('Excluído com Sucesso!');
                  End
             Else ShowMessage ('Não Excluído!')
end;

procedure TfCadClientes.ImageViewer18Click(Sender: TObject);
begin
          // Verificar se a tabela está em Inserção ou Edição
          if (uqClientes.State) in [dsInsert, dsEdit]
             Then Begin
                    ShowMessage ('Tabela já está em uso!'+
                                 CHR(13)+
                                 'Cancele, se desejar');
                    Exit;
                  End;

          uqClientes.Edit;
end;

procedure TfCadClientes.ImageViewer20Click(Sender: TObject);
begin
          ShowMessage ('Atividades canceladas!');
          uqClientes.Cancel;
end;

procedure TfCadClientes.ImageViewer21Click(Sender: TObject);
begin
          // Verificar se a tabela está em Inserção ou Edição
          if (uqClientes.State) in [dsInsert, dsEdit]
             Then Begin
                    ShowMessage ('Tabela está em uso!' + CHR(13)+
                                 'Cancele, antes de atualizar');
                    Exit;
                  End;
          uqClientes.Refresh;
end;

procedure TfCadClientes.ImageViewer22Click(Sender: TObject);
begin
          // Verificar se a tabela está em Inserção ou Edição
          If (uqClientes.State) in [dsInsert, dsEdit]
             Then Begin
                    ShowMessage ('Tabela está em uso!' + CHR(13)+
                                 'Cancele, antes de Sair');
                    Exit;
                  End;
          Close;
end;

end.
