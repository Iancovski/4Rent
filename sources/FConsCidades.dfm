inherited frmConsCidades: TfrmConsCidades
  Caption = 'frmConsCidades'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTitulo: TPanel
    Caption = 'Minhas Cidades'
    ExplicitWidth = 800
  end
  inherited pnlGeral: TPanel
    ExplicitWidth = 800
    ExplicitHeight = 550
    inherited pnlOpcoes: TPanel
      ExplicitWidth = 800
    end
    inherited dbgQuery: TDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Title.Alignment = taCenter
          Title.Caption = 'Nome'
          Width = 400
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'uf'
          Title.Alignment = taCenter
          Title.Caption = 'UF'
          Width = 50
          Visible = True
        end>
    end
  end
  inherited dsQuery: TDataSource
    DataSet = dmCidades.fdqCidades
  end
end
