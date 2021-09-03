object dmRoot: TdmRoot
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 669
  Width = 989
  object FDSchemaAdapter: TFDSchemaAdapter
    AfterApplyUpdate = FDSchemaAdapterAfterApplyUpdate
    Left = 904
    Top = 24
  end
  object fdqPesq: TFDQuery
    Left = 904
    Top = 88
  end
end
