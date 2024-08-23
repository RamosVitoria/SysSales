unit uModulo;

interface

uses
  System.SysUtils, System.Classes, DBAccess, Uni, UniProvider, MySQLUniProvider,
  Data.DB, MemDS;

type
  TModulo = class(TDataModule)
    Conexao: TUniConnection;
    Provedor: TMySQLUniProvider;
    Transacoes: TUniTransaction;
    sqlOff: TUniSQL;
    uqUsuarios: TUniQuery;
    udsUsuarios: TUniDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Modulo: TModulo;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
