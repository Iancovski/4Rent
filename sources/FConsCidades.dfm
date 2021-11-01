inherited frmConsCidades: TfrmConsCidades
  Caption = 'frmConsCidades'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTitulo: TPanel
    Caption = 'Minhas Cidades'
  end
  inherited pnlGeral: TPanel
    inherited dbgQuery: TDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'uf'
          Visible = True
        end>
    end
  end
  inherited dsQuery: TDataSource
    DataSet = dmCidades.fdqCidades
  end
end
