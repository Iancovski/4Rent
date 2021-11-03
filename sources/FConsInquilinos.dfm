inherited frmConsInquilinos: TfrmConsInquilinos
  Caption = 'frmConsInquilinos'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTitulo: TPanel
    Caption = 'Meus Inquilinos'
    ExplicitWidth = 800
  end
  inherited pnlGeral: TPanel
    ExplicitWidth = 800
    ExplicitHeight = 550
    inherited pnlOpcoes: TPanel
      ExplicitWidth = 800
    end
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
          FieldName = 'nome'
          Title.Alignment = taCenter
          Title.Caption = 'Nome'
          Width = 400
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cpf'
          Title.Alignment = taCenter
          Title.Caption = 'CPF'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'rg'
          Title.Alignment = taCenter
          Title.Caption = 'RG'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'renda'
          Title.Alignment = taCenter
          Title.Caption = 'Renda'
          Width = 80
          Visible = True
        end>
    end
    object pcContatos: TPageControl
      Left = 0
      Top = 350
      Width = 800
      Height = 200
      ActivePage = tsContatos
      Align = alBottom
      TabOrder = 2
      object tsContatos: TTabSheet
        Caption = 'Contatos'
        object CDBGrid1: TCDBGrid
          Left = 0
          Top = 0
          Width = 792
          Height = 170
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
