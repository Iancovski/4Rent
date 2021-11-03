inherited frmConsImoveis: TfrmConsImoveis
  Caption = 'frmConsImoveis'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTitulo: TPanel
    Caption = 'Meus Im'#243'veis'
  end
  inherited pnlGeral: TPanel
    inherited dbgQuery: TDBGrid
      Height = 300
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
          FieldName = 'id_municipio'
          Title.Alignment = taCenter
          Title.Caption = 'Munic'#237'pio'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome_municipio'
          Title.Alignment = taCenter
          Title.Caption = 'Nome do Munic'#237'pio'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cep'
          Title.Alignment = taCenter
          Title.Caption = 'CEP'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bairro'
          Title.Alignment = taCenter
          Title.Caption = 'Bairro'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'rua'
          Title.Alignment = taCenter
          Title.Caption = 'Rua'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'numero'
          Title.Alignment = taCenter
          Title.Caption = 'N'#250'mero'
          Width = 80
          Visible = True
        end>
    end
    object pcImoveis: TPageControl
      Left = 0
      Top = 350
      Width = 800
      Height = 200
      ActivePage = tsImoveis
      Align = alBottom
      TabOrder = 2
      object tsImoveis: TTabSheet
        Caption = 'Im'#243'veis'
        object CDBGrid1: TCDBGrid
          Left = 0
          Top = 0
          Width = 792
          Height = 170
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
              FieldName = 'id'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo'
              Width = 80
              Visible = True
            end
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
