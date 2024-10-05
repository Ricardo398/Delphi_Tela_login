object DataModule1: TDataModule1
  Height = 480
  Width = 640
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=banco_aplicacao'
      'User_Name=postgres'
      'Password=132539'
      'Server=localhost'
      'DriverID=PG')
    Connected = True
    LoginPrompt = False
    Left = 184
    Top = 184
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from usuarios')
    Left = 376
    Top = 184
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 280
    Top = 184
  end
end
