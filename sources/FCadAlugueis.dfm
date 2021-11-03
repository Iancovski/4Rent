inherited frmCadAlugueis: TfrmCadAlugueis
  Caption = 'frmCadAlugueis'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTitulo: TPanel
    Caption = 'Cadastro de Alugu'#233'is'
    ExplicitWidth = 800
  end
  inherited pnlGeral: TPanel
    ExplicitWidth = 800
    ExplicitHeight = 550
    inherited pnlOpcoes: TPanel
      ExplicitWidth = 800
    end
    inherited pnlFields: TPanel
      object edtNomeImovel: TCDBEdit
        Left = 99
        Top = 93
        Width = 400
        Height = 23
        DataField = 'descricao_imovel'
        DataSource = dsQuery
        Enabled = False
        TabOrder = 2
        EditLabel.Width = 3
        EditLabel.Height = 15
      end
      object edtNomeInquilino: TCDBEdit
        Left = 99
        Top = 149
        Width = 400
        Height = 23
        DataField = 'nome_inquilino'
        DataSource = dsQuery
        Enabled = False
        TabOrder = 4
        EditLabel.Width = 3
        EditLabel.Height = 15
      end
      object edtDataEntrada: TCDBEdit
        Left = 20
        Top = 205
        Width = 120
        Height = 23
        DataField = 'data_entrada'
        DataSource = dsQuery
        TabOrder = 5
        EditLabel.Width = 91
        EditLabel.Height = 15
        EditLabel.Caption = 'Data de Entrada'
      end
      object edtPeriodo: TCDBEdit
        Left = 160
        Top = 205
        Width = 100
        Height = 23
        DataField = 'periodo'
        DataSource = dsQuery
        TabOrder = 6
        EditLabel.Width = 44
        EditLabel.Height = 15
        EditLabel.Caption = 'Per'#237'odo'
      end
      object edtInquilino: TCDBEdit
        Left = 20
        Top = 149
        Width = 80
        Height = 23
        DataField = 'id_inquilino'
        DataSource = dsQuery
        TabOrder = 3
        EditLabel.Width = 48
        EditLabel.Height = 15
        EditLabel.Caption = 'Inquilino'
      end
      object edtImovel: TCDBEdit
        Left = 20
        Top = 93
        Width = 80
        Height = 23
        DataField = 'id_imovel'
        DataSource = dsQuery
        TabOrder = 1
        EditLabel.Width = 39
        EditLabel.Height = 15
        EditLabel.Caption = 'Im'#243'vel'
      end
      object edtDataSaida: TCDBEdit
        Left = 379
        Top = 205
        Width = 120
        Height = 23
        DataField = 'data_saida'
        DataSource = dsQuery
        TabOrder = 7
        EditLabel.Width = 79
        EditLabel.Height = 15
        EditLabel.Caption = 'Data de Sa'#237'da'
      end
      object ComboBox1: TComboBox
        Left = 259
        Top = 205
        Width = 100
        Height = 23
        ItemIndex = 1
        TabOrder = 8
        Text = 'Meses'
        Items.Strings = (
          'Dias'
          'Meses')
      end
    end
  end
  inherited dsQuery: TDataSource
    DataSet = dmAlugueis.fdqAlugueis
  end
end
