unit uSplash;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.ExtCtrls;

type
  TfSplash = class(TForm)
    lNomeSys2: TLabel;
    lNomeSys1: TLabel;
    txt_Contagem: TLabel;
    Progresso: TProgressBar;
    Tempo: TTimer;
    Progresso3: TProgressBar;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    ImageViewer2: TImageViewer;
    linkImage1: TLabel;
    lVersao: TLabel;
    Progresso2: TProgressBar;
    procedure FormActivate(Sender: TObject);
    procedure TempoTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSplash: TfSplash;

implementation

{$R *.fmx}

uses uLogin;

procedure TfSplash.FormActivate(Sender: TObject);
begin
          Tempo.Enabled := True;
end;

procedure TfSplash.TempoTimer(Sender: TObject);
Begin
         // Verifica se chegou a 100
         If Progresso.Value = 100
            then Begin
                   // Fecha o relogio
                   Tempo.Enabled := False;

                   // Esconde a telas splash
                   fSplash.Hide;

                 { Carrega a tela principal (se n�o tiver tela de login)
                   FPrincipal.ShowModal;
                 }


                   // Carrega a tela de login (Se tiver controle de login)
                   fLogin.ShowModal;

                   // Libera a tela Splah
                   FSplash.ReleaseForm;

                   // Fecha a tela splash
                   FSplash.Close;
                 End;

         // Vai contando
         Progresso.Value := Progresso.Value + 1;
         Progresso2.Value := Progresso2.Value + 1;
         Progresso3.Value := Progresso3.Value + 1;

         // Quantide j� percorrida
         txt_Contagem.Text := 'Aguarde. Carregando ... '
                        + Progresso.Value.ToString
                        + '%';

end;

end.
