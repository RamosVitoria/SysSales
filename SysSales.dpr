program SysSales;

uses
  System.StartUpCopy,
  FMX.Forms,
  uSplash in 'uSplash.pas' {fSplash},
  uModulo in 'uModulo.pas' {Modulo: TDataModule},
  uLogin in 'uLogin.pas' {fLogin},
  uPrincipal in 'uPrincipal.pas' {fPrincipal},
  uCadProdutos in 'uCadProdutos.pas' {fCadProdutos},
  uCadClientes in 'uCadClientes.pas' {fCadClientes},
  uCadFornecedores in 'uCadFornecedores.pas' {fCadFornecedores},
  uCadUsuarios in 'uCadUsuarios.pas' {fCadUsuarios};

{$R *.res}

begin
  // Fixo
  Application.Initialize;

  // Banco de dados
  Application.CreateForm(TModulo, Modulo);
  // Sequencia de telas
  Application.CreateForm(TfSplash, fSplash);
  Application.CreateForm(TfLogin, fLogin);
  //Application.CreateForm(TfPrincipal, fPrincipal);

  // Fixo
  Application.Run;
end.
