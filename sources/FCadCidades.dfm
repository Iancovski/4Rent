inherited frmCadCidades: TfrmCadCidades
  Caption = 'frmCadCidades'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTitulo: TPanel
    Caption = 'Cadastro de Cidades'
    ExplicitWidth = 800
  end
  inherited pnlGeral: TPanel
    ExplicitWidth = 800
    ExplicitHeight = 550
    inherited pnlOpcoes: TPanel
      ExplicitWidth = 800
    end
    inherited pnlFields: TPanel
      object edtNome: TCDBEdit
        Left = 20
        Top = 93
        Width = 400
        Height = 23
        DataField = 'nome'
        DataSource = dsQuery
        TabOrder = 1
        EditLabel.Width = 34
        EditLabel.Height = 15
        EditLabel.Caption = 'Nome'
      end
      object edtUF: TCDBEdit
        Left = 428
        Top = 93
        Width = 50
        Height = 23
        DataField = 'uf'
        DataSource = dsQuery
        TabOrder = 2
        EditLabel.Width = 16
        EditLabel.Height = 15
        EditLabel.Caption = 'UF'
      end
    end
  end
  inherited dsQuery: TDataSource
    DataSet = dmCidades.fdqCidades
  end
end
