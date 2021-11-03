inherited frmConsAlugueis: TfrmConsAlugueis
  Caption = 'frmConsAlugueis'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTitulo: TPanel
    Caption = 'Meus Alugu'#233'is'
  end
  inherited pnlGeral: TPanel
    inherited pnlOpcoes: TPanel
      object pnOpcoes: TPanel
        Left = 400
        Top = 0
        Width = 400
        Height = 50
        Align = alClient
        BevelOuter = bvNone
        Color = 14061056
        ParentBackground = False
        TabOrder = 0
        ExplicitLeft = 450
        ExplicitTop = 6
        ExplicitWidth = 185
        ExplicitHeight = 41
        object btnReceber: TSpeedButton
          Left = 0
          Top = 0
          Width = 100
          Height = 50
          Align = alLeft
          Caption = '&Receber'
          Flat = True
          ExplicitLeft = -32
          ExplicitTop = -6
        end
        object btnRenovar: TSpeedButton
          Left = 100
          Top = 0
          Width = 100
          Height = 50
          Align = alLeft
          Caption = 'Ren&ovar'
          Flat = True
          ExplicitLeft = 88
          ExplicitTop = 6
        end
        object btnRescindir: TSpeedButton
          Left = 200
          Top = 0
          Width = 100
          Height = 50
          Align = alLeft
          Caption = 'Re&scindir'
          Flat = True
          ExplicitLeft = 8
        end
      end
    end
    inherited dbgQuery: TDBGrid
      Height = 307
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
          FieldName = 'id_imovel'
          Title.Alignment = taCenter
          Title.Caption = 'Im'#243'vel'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descricao_imovel'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o do Im'#243'vel'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'id_inquilino'
          Title.Alignment = taCenter
          Title.Caption = 'Inquilino'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome_inquilino'
          Title.Alignment = taCenter
          Title.Caption = 'Nome do Inquilino'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data_entrada'
          Title.Alignment = taCenter
          Title.Caption = 'Data de Entrada'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data_saida'
          Title.Alignment = taCenter
          Title.Caption = 'Data de Sa'#237'da'
          Width = 100
          Visible = True
        end>
    end
    object PageControl1: TPageControl
      Left = 0
      Top = 357
      Width = 800
      Height = 193
      ActivePage = tsContasReceber
      Align = alBottom
      TabOrder = 2
      object tsContasReceber: TTabSheet
        Caption = 'Contas a Receber'
        object pnLegenda: TPanel
          Left = 0
          Top = 128
          Width = 792
          Height = 35
          Align = alBottom
          BevelOuter = bvNone
          Color = 16448250
          ParentBackground = False
          TabOrder = 0
          object pnCorRecebido: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 5
            Width = 25
            Height = 25
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alLeft
            BevelKind = bkFlat
            BevelOuter = bvNone
            Color = 12644574
            ParentBackground = False
            TabOrder = 0
            ExplicitLeft = -4
            ExplicitTop = -3
          end
          object pnCorPendente: TPanel
            AlignWithMargins = True
            Left = 103
            Top = 5
            Width = 25
            Height = 25
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alLeft
            BevelKind = bkFlat
            BevelOuter = bvNone
            Color = 12118256
            ParentBackground = False
            TabOrder = 1
            ExplicitLeft = 40
          end
          object pnCorAtrasado: TPanel
            AlignWithMargins = True
            Left = 202
            Top = 5
            Width = 25
            Height = 25
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alLeft
            BevelKind = bkFlat
            BevelOuter = bvNone
            Color = 12634352
            ParentBackground = False
            TabOrder = 2
            ExplicitLeft = 0
          end
          object Panel1: TPanel
            AlignWithMargins = True
            Left = 35
            Top = 0
            Width = 53
            Height = 35
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 10
            Margins.Bottom = 0
            Align = alLeft
            BevelOuter = bvNone
            Caption = 'Recebido'
            TabOrder = 3
          end
          object Panel2: TPanel
            AlignWithMargins = True
            Left = 133
            Top = 0
            Width = 54
            Height = 35
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 10
            Margins.Bottom = 0
            Align = alLeft
            BevelOuter = bvNone
            Caption = 'Pendente'
            TabOrder = 4
          end
          object Panel3: TPanel
            AlignWithMargins = True
            Left = 232
            Top = 0
            Width = 52
            Height = 35
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 10
            Margins.Bottom = 0
            Align = alLeft
            BevelOuter = bvNone
            Caption = 'Atrasado'
            TabOrder = 5
          end
        end
        object dbgContasReceber: TCDBGrid
          Left = 0
          Top = 0
          Width = 792
          Height = 128
          Align = alClient
          DataSource = dsContasReceber
          TabOrder = 1
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
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'data_vencimento'
              Title.Alignment = taCenter
              Title.Caption = 'Data de Vencimento'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'data_baixa'
              Title.Alignment = taCenter
              Title.Caption = 'Data de Baixa'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'valor_desconto'
              Title.Alignment = taCenter
              Title.Caption = 'Valor de Desconto'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'valor_multa'
              Title.Alignment = taCenter
              Title.Caption = 'Valor de Multa'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'valor_juros'
              Title.Alignment = taCenter
              Title.Caption = 'Valor de Juros'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'valor_total'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Total'
              Width = 120
              Visible = True
            end>
        end
      end
    end
  end
  inherited dsQuery: TDataSource
    DataSet = dmAlugueis.fdqAlugueis
  end
  object dsContasReceber: TDataSource
    DataSet = dmAlugueis.fdqContasReceber
    Left = 752
    Top = 232
  end
end
