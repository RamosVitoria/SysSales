unit uPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.ExtCtrls;

type
  TfPrincipal = class(TForm)
    Panel3: TPanel;
    Panel5: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    ImageViewer8: TImageViewer;
    ImageViewer6: TImageViewer;
    ImageViewer7: TImageViewer;
    ImageViewer4: TImageViewer;
    ImageViewer3: TImageViewer;
    ImageViewer2: TImageViewer;
    ImageViewer12: TImageViewer;
    ImageViewer1: TImageViewer;
    procedure ImageViewer1Click(Sender: TObject);
    procedure ImageViewer2Click(Sender: TObject);
    procedure ImageViewer3Click(Sender: TObject);
    procedure ImageViewer4Click(Sender: TObject);
    procedure ImageViewer12Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrincipal: TfPrincipal;

implementation

{$R *.fmx}

uses uCadUsuarios, uCadProdutos, uCadClientes, uCadFornecedores;

procedure TfPrincipal.ImageViewer12Click(Sender: TObject);
begin
          Application.Terminate;
end;

procedure TfPrincipal.ImageViewer1Click(Sender: TObject);
begin
          Application.CreateForm(TfCadUsuarios, fCadUsuarios);
          fCadUsuarios.ShowModal;

end;

procedure TfPrincipal.ImageViewer2Click(Sender: TObject);
begin
          Application.CreateForm(TfCadProdutos, fCadProdutos);
          fCadProdutos.ShowModal;
end;

procedure TfPrincipal.ImageViewer3Click(Sender: TObject);
begin
          Application.CreateForm(TfCadClientes, fCadClientes);
          fCadClientes.ShowModal;
end;

procedure TfPrincipal.ImageViewer4Click(Sender: TObject);
begin
          Application.CreateForm(TfCadFornecedores, fCadFornecedores);
          fCadFornecedores.ShowModal;
end;

end.



