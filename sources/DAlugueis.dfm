inherited dmAlugueis: TdmAlugueis
  object fdqAlugueis: TCFDQuery
    Connection = dmPrincipal.FDConnection
    SQL.Strings = (
      'select A.ID,'
      '       A.ID_IMOVEL,'
      '       IMO.DESCRICAO as DESCRICAO_IMOVEL,'
      '       A.ID_INQUILINO,'
      '       INQ.NOME as NOME_INQUILINO,'
      '       A.DATA_ENTRADA,'
      '       A.TIPO_ALUGUEL,'
      '       A.PERIODO,'
      '       A.DATA_SAIDA,'
      '       A.ATIVO'
      'from ALUGUEL A'
      'join IMOVEL IMO on IMO.ID = A.ID_IMOVEL'
      'join INQUILINO INQ on INQ.ID = A.ID_INQUILINO')
    Left = 40
    Top = 24
    object fdqAlugueisid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object fdqAlugueisid_imovel: TIntegerField
      FieldName = 'id_imovel'
      Origin = 'id_imovel'
      Required = True
    end
    object fdqAlugueisdescricao_imovel: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao_imovel'
      Origin = 'descricao'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object fdqAlugueisid_inquilino: TIntegerField
      FieldName = 'id_inquilino'
      Origin = 'id_inquilino'
      Required = True
    end
    object fdqAlugueisnome_inquilino: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_inquilino'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object fdqAlugueisdata_entrada: TDateField
      FieldName = 'data_entrada'
      Origin = 'data_entrada'
      Required = True
    end
    object fdqAlugueistipo_aluguel: TWideStringField
      FieldName = 'tipo_aluguel'
      Origin = 'tipo_aluguel'
      Required = True
      FixedChar = True
      Size = 1
    end
    object fdqAlugueisperiodo: TIntegerField
      FieldName = 'periodo'
      Origin = 'periodo'
      Required = True
    end
    object fdqAlugueisdata_saida: TDateField
      FieldName = 'data_saida'
      Origin = 'data_saida'
      Required = True
    end
    object fdqAlugueisativo: TWideStringField
      FieldName = 'ativo'
      Origin = 'ativo'
      FixedChar = True
      Size = 1
    end
  end
  object fdqContasReceber: TCFDQuery
    CachedUpdates = True
    IndexFieldNames = 'id_aluguel'
    MasterSource = dsLink
    MasterFields = 'id'
    Connection = dmPrincipal.FDConnection
    SQL.Strings = (
      'select RD.ID,'
      '       AR.ID as ID_ALUGUEL,'
      '       RD.DATA,'
      '       RD.DATA_VENCIMENTO,'
      '       RD.ID_INQUILINO,'
      '       RD.DESCRICAO,'
      '       RD.VALOR,'
      '       RD.TIPO,'
      '       RD.ORIGEM,'
      '       RD.BAIXADO,'
      '       RD.DATA_BAIXA,'
      '       cast(0 as double precision) as VALOR_DESCONTO,'
      '       cast(0 as double precision) as VALOR_MULTA,'
      '       cast(0 as double precision) as VALOR_JUROS,'
      '       cast(0 as double precision) as VALOR_TOTAL'
      'from RECEITA_DESPESA RD'
      'join ALUGUEL_RECEITA AR on AR.ID_RECEITA = RD.ID'
      'where AR.ID_ALUGUEL = :ID')
    Left = 40
    Top = 88
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdqContasReceberid: TFDAutoIncField
      FieldName = 'id'
    end
    object fdqContasReceberid_aluguel: TIntegerField
      FieldName = 'id_aluguel'
      ReadOnly = True
    end
    object fdqContasReceberdata: TDateField
      FieldName = 'data'
      Required = True
    end
    object fdqContasReceberdata_vencimento: TDateField
      FieldName = 'data_vencimento'
      Required = True
    end
    object fdqContasReceberid_inquilino: TIntegerField
      FieldName = 'id_inquilino'
    end
    object fdqContasReceberdescricao: TWideStringField
      FieldName = 'descricao'
      Required = True
      Size = 500
    end
    object fdqContasRecebervalor: TFloatField
      FieldName = 'valor'
      Required = True
    end
    object fdqContasRecebertipo: TWideStringField
      FieldName = 'tipo'
      Required = True
      FixedChar = True
      Size = 1
    end
    object fdqContasReceberorigem: TWideStringField
      FieldName = 'origem'
      Required = True
      FixedChar = True
      Size = 1
    end
    object fdqContasReceberbaixado: TWideStringField
      FieldName = 'baixado'
      FixedChar = True
      Size = 1
    end
    object fdqContasReceberdata_baixa: TDateField
      FieldName = 'data_baixa'
    end
    object fdqContasRecebervalor_desconto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor_desconto'
      Origin = 'valor_desconto'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqContasRecebervalor_multa: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor_multa'
      Origin = 'valor_multa'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqContasRecebervalor_juros: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor_juros'
      Origin = 'valor_juros'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqContasRecebervalor_total: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor_total'
      Origin = 'valor_total'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object dsLink: TDataSource
    DataSet = fdqAlugueis
    Left = 112
    Top = 24
  end
end
