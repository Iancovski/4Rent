inherited dmInquilinos: TdmInquilinos
  OldCreateOrder = True
  object fdqInquilinos: TCFDQuery
    CachedUpdates = True
    Connection = dmPrincipal.FDConnection
    SchemaAdapter = FDSchemaAdapter
    SQL.Strings = (
      'select I.ID,'
      '       I.NOME,'
      '       I.CPF,'
      '       I.RG,'
      '       I.RENDA,'
      '       I.ATIVO'
      'from INQUILINO I')
    Left = 40
    Top = 24
    object fdqInquilinosid: TFDAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object fdqInquilinosnome: TWideStringField
      FieldName = 'nome'
      Required = True
      Size = 100
    end
    object fdqInquilinoscpf: TWideStringField
      FieldName = 'cpf'
      Required = True
    end
    object fdqInquilinosrg: TWideStringField
      FieldName = 'rg'
    end
    object fdqInquilinosrenda: TFloatField
      FieldName = 'renda'
    end
    object fdqInquilinosativo: TWideStringField
      FieldName = 'ativo'
      FixedChar = True
      Size = 1
    end
  end
  object fdqContatos: TCFDQuery
    CachedUpdates = True
    IndexFieldNames = 'id_inquilino'
    MasterSource = dsLink
    MasterFields = 'id'
    Connection = dmPrincipal.FDConnection
    SchemaAdapter = FDSchemaAdapter
    SQL.Strings = (
      'select IC.ID,'
      '       IC.ID_INQUILINO,'
      '       IC.DESCRICAO,'
      '       IC.CONTATO'
      'from INQUILINO_CONTATO IC'
      'where IC.ID_INQUILINO = :ID')
    Left = 40
    Top = 88
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdqContatosid: TFDAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object fdqContatosid_inquilino: TIntegerField
      FieldName = 'id_inquilino'
      Required = True
    end
    object fdqContatosdescricao: TWideStringField
      FieldName = 'descricao'
      Required = True
      Size = 50
    end
    object fdqContatoscontato: TWideStringField
      FieldName = 'contato'
      Required = True
      Size = 200
    end
  end
  object dsLink: TDataSource
    DataSet = fdqInquilinos
    Left = 120
    Top = 24
  end
end
