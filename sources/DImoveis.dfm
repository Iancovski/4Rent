inherited dmImoveis: TdmImoveis
  OldCreateOrder = True
  object fdqEnderecos: TCFDQuery
    CachedUpdates = True
    Connection = dmPrincipal.FDConnection
    SchemaAdapter = FDSchemaAdapter
    SQL.Strings = (
      'select E.ID,'
      '       E.ID_MUNICIPIO,'
      '       M.NOME as NOME_MUNICIPIO,'
      '       E.CEP,'
      '       E.BAIRRO,'
      '       E.RUA,'
      '       E.NUMERO,'
      '       E.ATIVO'
      'from ENDERECO E'
      'join MUNICIPIO M on M.ID = E.ID_MUNICIPIO')
    Left = 40
    Top = 24
    object fdqEnderecosid: TFDAutoIncField
      FieldName = 'id'
    end
    object fdqEnderecosid_municipio: TIntegerField
      FieldName = 'id_municipio'
      Required = True
    end
    object fdqEnderecosnome_municipio: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_municipio'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object fdqEnderecoscep: TWideStringField
      FieldName = 'cep'
      Size = 10
    end
    object fdqEnderecosbairro: TWideStringField
      FieldName = 'bairro'
      Required = True
      Size = 50
    end
    object fdqEnderecosrua: TWideStringField
      FieldName = 'rua'
      Required = True
      Size = 100
    end
    object fdqEnderecosnumero: TIntegerField
      FieldName = 'numero'
      Required = True
    end
    object fdqEnderecosativo: TWideStringField
      FieldName = 'ativo'
      FixedChar = True
      Size = 1
    end
  end
  object fdqImoveis: TCFDQuery
    CachedUpdates = True
    IndexFieldNames = 'id_endereco'
    MasterSource = dsLink
    MasterFields = 'id'
    Connection = dmPrincipal.FDConnection
    SchemaAdapter = FDSchemaAdapter
    SQL.Strings = (
      'select I.ID,'
      '       I.ID_ENDERECO,'
      '       I.DESCRICAO,'
      '       I.TIPO_ALUGUEL_PADRAO,'
      '       I.VALOR_MENSAL,'
      '       I.VALOR_SEMANAL,'
      '       I.VALOR_DIARIA,'
      '       I.ATIVO'
      'from IMOVEL I'
      'where I.ID_ENDERECO = :ID')
    Left = 40
    Top = 88
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdqImoveisid: TFDAutoIncField
      FieldName = 'id'
    end
    object fdqImoveisid_endereco: TIntegerField
      FieldName = 'id_endereco'
      Required = True
    end
    object fdqImoveisdescricao: TWideStringField
      FieldName = 'descricao'
      Required = True
      Size = 50
    end
    object fdqImoveistipo_aluguel_padrao: TWideStringField
      FieldName = 'tipo_aluguel_padrao'
      Required = True
      FixedChar = True
      Size = 1
    end
    object fdqImoveisvalor_mensal: TFloatField
      FieldName = 'valor_mensal'
    end
    object fdqImoveisvalor_semanal: TFloatField
      FieldName = 'valor_semanal'
    end
    object fdqImoveisvalor_diaria: TFloatField
      FieldName = 'valor_diaria'
    end
    object fdqImoveisativo: TWideStringField
      FieldName = 'ativo'
      FixedChar = True
      Size = 1
    end
  end
  object dsLink: TDataSource
    DataSet = fdqEnderecos
    Left = 112
    Top = 24
  end
end
