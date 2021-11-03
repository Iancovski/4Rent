inherited frmCadInquilinos: TfrmCadInquilinos
  Caption = 'frmCadInquilinos'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTitulo: TPanel
    Caption = 'Cadastro de Inquilinos'
    ExplicitWidth = 800
  end
  inherited pnlGeral: TPanel
    ExplicitWidth = 800
    ExplicitHeight = 550
    inherited pnlOpcoes: TPanel
      ExplicitWidth = 800
    end
    inherited pnlFields: TPanel
      Height = 247
      Align = alTop
      ExplicitHeight = 247
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
      object edtCPF: TCDBEdit
        Left = 20
        Top = 147
        Width = 190
        Height = 23
        DataField = 'cpf'
        DataSource = dsQuery
        TabOrder = 2
        EditLabel.Width = 23
        EditLabel.Height = 15
        EditLabel.Caption = 'CPF'
      end
      object edtRG: TCDBEdit
        Left = 230
        Top = 147
        Width = 190
        Height = 23
        DataField = 'rg'
        DataSource = dsQuery
        TabOrder = 3
        EditLabel.Width = 17
        EditLabel.Height = 15
        EditLabel.Caption = 'RG'
      end
      object edtRenda: TCDBEdit
        Left = 20
        Top = 201
        Width = 80
        Height = 23
        DataField = 'renda'
        DataSource = dsQuery
        TabOrder = 4
        EditLabel.Width = 36
        EditLabel.Height = 15
        EditLabel.Caption = 'Renda'
      end
    end
    object pcContatos: TPageControl
      Left = 0
      Top = 297
      Width = 800
      Height = 253
      ActivePage = tsContatos
      Align = alClient
      TabOrder = 2
      object tsContatos: TTabSheet
        Caption = 'Contatos'
        object CDBGrid1: TCDBGrid
          Left = 0
          Top = 0
          Width = 792
          Height = 223
          Align = alClient
          DataSource = dsContatos
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
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'contato'
              Title.Alignment = taCenter
              Title.Caption = 'Contato'
              Width = 400
              Visible = True
            end>
        end
      end
    end
  end
  inherited dsQuery: TDataSource
    DataSet = dmInquilinos.fdqInquilinos
  end
  object dsContatos: TDataSource
    DataSet = dmInquilinos.fdqContatos
    Left = 752
    Top = 232
  end
end
