inherited dmCidades: TdmCidades
  object fdqCidades: TCFDQuery
    CachedUpdates = True
    Connection = dmPrincipal.FDConnection
    SchemaAdapter = FDSchemaAdapter
    SQL.Strings = (
      'select M.ID,'
      '       M.NOME,'
      '       M.UF'
      'from MUNICIPIO M')
    Left = 48
    Top = 24
    object fdqCidadesid: TFDAutoIncField
      FieldName = 'id'
    end
    object fdqCidadesnome: TWideStringField
      FieldName = 'nome'
      Required = True
      Size = 50
    end
    object fdqCidadesuf: TWideStringField
      FieldName = 'uf'
      Required = True
      FixedChar = True
      Size = 2
    end
  end
end
