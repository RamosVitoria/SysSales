unit uCadProdutos;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, Data.DB,
  DBAccess, Uni, MemDS, FMX.StdCtrls, FMX.Layouts, FMX.ExtCtrls,
  FMX.Controls.Presentation, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView, FMX.Edit, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,
  Data.Bind.Controls, Fmx.Bind.Navigator;

type
  TfCadProdutos = class(TForm)
    uqProdutos: TUniQuery;
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
    lProdutos: TListView;
    udsProdutos: TUniDataSource;
    lbID: TLabel;
    lbNome: TLabel;
    pCodigo: TPanel;
    lCodigo: TLabel;
    uqProdutosCODPROD: TIntegerField;
    uqProdutosNOME: TStringField;
    uqProdutosCODCATEG: TIntegerField;
    uqProdutosQTDEST: TIntegerField;
    uqProdutosVALUNIT: TFloatField;
    lbCodCateg: TLabel;
    lbQtd: TLabel;
    lbValorUnit: TLabel;
    edtNome: TEdit;
    edtCodCateg: TEdit;
    edtQdt: TEdit;
    edtValorUnit: TEdit;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkPropertyToFieldText: TLinkPropertyToField;
    BindNavigator1: TBindNavigator;
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
  fCadProdutos: TfCadProdutos;

implementation

{$R *.fmx}

uses uModulo;

procedure TfCadProdutos.ImageViewer12Click(Sender: TObject);
begin
          // Verificar se a tabela está em Inserção ou Edição
          if (uqProdutos.State) in [dsInsert, dsEdit]
             Then Begin
                    ShowMessage ('Tabela já está em uso!'+
                                 CHR(13)+
                                 'Cancele, se desejar');
                    Exit;
                  End;


          uqProdutos.First;
end;

procedure TfCadProdutos.ImageViewer13Click(Sender: TObject);
begin
          // Verificar se a tabela está em Inserção ou Edição
          if (uqProdutos.State) in [dsInsert, dsEdit]
             Then Begin
                    ShowMessage ('Tabela já está em uso!'+
                                 CHR(13)+
                                 'Cancele, se desejar');
                    Exit;
                  End;
          uqProdutos.Prior;
end;

procedure TfCadProdutos.ImageViewer14Click(Sender: TObject);
begin
          // Verificar se a tabela está em Inserção ou Edição
          if (uqProdutos.State) in [dsInsert, dsEdit]
             Then Begin
                    ShowMessage ('Tabela já está em uso!'+
                                 CHR(13)+
                                 'Cancele, se desejar');
                    Exit;
                  End;

          uqProdutos.Next;
end;

procedure TfCadProdutos.ImageViewer15Click(Sender: TObject);
begin
          // Verificar se a tabela está em Inserção ou Edição
          if (uqProdutos.State) in [dsInsert, dsEdit]
             Then Begin
                    ShowMessage ('Tabela já está em uso!'+
                                 CHR(13)+
                                 'Cancele, se desejar');
                    Exit;
                  End;

          uqProdutos.Last;
end;


procedure TfCadProdutos.ImageViewer16Click(Sender: TObject);
begin
          // Verificar se a tabela está em Inserção ou Edição
          if (uqProdutos.State) in [dsInsert, dsEdit]
             Then Begin
                    ShowMessage ('Tabela já está em uso!'+
                                 CHR(13)+
                                 'Cancele, se desejar');
                    Exit;
                  End;

          uqProdutos.Insert;
end;

procedure TfCadProdutos.ImageViewer17Click(Sender: TObject);
begin     // Verificar se a tabela está em Inserção ou Edição
          if (uqProdutos.State) in [dsInsert, dsEdit]
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
                    uqProdutos.Delete;   // Excluindo registro
                    ShowMessage ('Excluído com Sucesso!');
                  End
             Else ShowMessage ('Não Excluído!')
end;

procedure TfCadProdutos.ImageViewer18Click(Sender: TObject);
begin
          // Verificar se a tabela está em Inserção ou Edição
          if (uqProdutos.State) in [dsInsert, dsEdit]
             Then Begin
                    ShowMessage ('Tabela já está em uso!'+
                                 CHR(13)+
                                 'Cancele, se desejar');
                    Exit;
                  End;

          uqProdutos.Edit;
end;

procedure TfCadProdutos.ImageViewer20Click(Sender: TObject);
begin
          ShowMessage ('Atividades canceladas!');
          uqProdutos.Cancel;
end;

procedure TfCadProdutos.ImageViewer21Click(Sender: TObject);
begin
          // Verificar se a tabela está em Inserção ou Edição
          if (uqProdutos.State) in [dsInsert, dsEdit]
             Then Begin
                    ShowMessage ('Tabela está em uso!' + CHR(13)+
                                 'Cancele, antes de atualizar');
                    Exit;
                  End;
          uqProdutos.Refresh;
end;

procedure TfCadProdutos.ImageViewer22Click(Sender: TObject);
begin
          // Verificar se a tabela está em Inserção ou Edição
          If (uqProdutos.State) in [dsInsert, dsEdit]
             Then Begin
                    ShowMessage ('Tabela está em uso!' + CHR(13)+
                                 'Cancele, antes de Sair');
                    Exit;
                  End;
          Close;
end;

end.
