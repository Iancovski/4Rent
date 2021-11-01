inherited dmPrincipal: TdmPrincipal
  OldCreateOrder = True
  inherited FDConnection: TFDConnection
    Params.Strings = (
      'Database=4RENT'
      'User_Name=postgres'
      'Password=masterkey'
      'ExtendedMetadata=True'
      'DriverID=PG')
  end
end
