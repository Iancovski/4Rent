inherited frmCadImoveis: TfrmCadImoveis
  Caption = 'frmCadImoveis'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTitulo: TPanel
    Caption = 'Cadastro de Im'#243'veis'
    ExplicitWidth = 800
  end
  inherited pnlGeral: TPanel
    ExplicitWidth = 800
    ExplicitHeight = 550
    inherited pnlOpcoes: TPanel
      ExplicitWidth = 800
    end
    inherited pnlFields: TPanel
      Height = 297
      Align = alTop
      ExplicitHeight = 297
      object edtCEP: TCDBEdit
        Left = 20
        Top = 93
        Width = 160
        Height = 23
        DataField = 'cep'
        DataSource = dsQuery
        TabOrder = 1
        EditLabel.Width = 23
        EditLabel.Height = 15
        EditLabel.Caption = 'CEP'
      end
      object edtEndereco: TCDBEdit
        Left = 20
        Top = 147
        Width = 400
        Height = 23
        DataField = 'rua'
        DataSource = dsQuery
        TabOrder = 2
        EditLabel.Width = 54
        EditLabel.Height = 15
        EditLabel.Caption = 'Endere'#231'o'
      end
      object edtBairro: TCDBEdit
        Left = 20
        Top = 201
        Width = 300
        Height = 23
        DataField = 'bairro'
        DataSource = dsQuery
        TabOrder = 3
        EditLabel.Width = 35
        EditLabel.Height = 15
        EditLabel.Caption = 'Bairro'
      end
      object edtNumero: TCDBEdit
        Left = 340
        Top = 201
        Width = 80
        Height = 23
        DataField = 'numero'
        DataSource = dsQuery
        TabOrder = 4
        EditLabel.Width = 46
        EditLabel.Height = 15
        EditLabel.Caption = 'N'#250'mero'
      end
      object edtNomeMunicipio: TCDBEdit
        Left = 99
        Top = 255
        Width = 321
        Height = 23
        DataField = 'nome_municipio'
        DataSource = dsQuery
        Enabled = False
        TabOrder = 6
        EditLabel.Width = 3
        EditLabel.Height = 15
      end
      object edtMunicipio: TCDBEdit
        Left = 20
        Top = 255
        Width = 80
        Height = 23
        DataField = 'id_municipio'
        DataSource = dsQuery
        TabOrder = 5
        EditLabel.Width = 55
        EditLabel.Height = 15
        EditLabel.Caption = 'Munic'#237'pio'
      end
    end
    object pcImoveis: TPageControl
      Left = 0
      Top = 347
      Width = 800
      Height = 203
      ActivePage = tsImoveis
      Align = alClient
      TabOrder = 2
      object tsImoveis: TTabSheet
        Caption = 'Im'#243'veis'
        object CDBGrid1: TCDBGrid
          Left = 0
          Top = 0
          Width = 792
          Height = 173
          Align = alClient
          DataSource = dsImoveis
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Roboto'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'descricao'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o'
              Width = 400
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'valor_mensal'
              Title.Alignment = taCenter
              Title.Caption = 'Valor (Mensal)'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'valor_diaria'
              Title.Alignment = taCenter
              Title.Caption = 'Valor (Di'#225'ria)'
              Width = 100
              Visible = True
            end>
        end
      end
    end
  end
  inherited dsQuery: TDataSource
    DataSet = dmImoveis.fdqEnderecos
  end
  object dsImoveis: TDataSource
    DataSet = dmImoveis.fdqImoveis
    Left = 752
    Top = 232
  end
end
