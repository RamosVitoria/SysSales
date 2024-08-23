object Modulo: TModulo
  Height = 191
  Width = 417
  object Conexao: TUniConnection
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'dbsyssales354'
    Username = 'root'
    Server = 'localhost'
    Connected = True
    Left = 21
    Top = 5
  end
  object Provedor: TMySQLUniProvider
    Left = 85
    Top = 5
  end
  object Transacoes: TUniTransaction
    DefaultConnection = Conexao
    Left = 193
    Top = 5
  end
  object sqlOff: TUniSQL
    Connection = Conexao
    Left = 251
    Top = 5
  end
  object uqUsuarios: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'Select * From Usuarios;')
    Active = True
    Left = 91
    Top = 96
  end
  object udsUsuarios: TUniDataSource
    DataSet = uqUsuarios
    Left = 171
    Top = 96
  end
end
