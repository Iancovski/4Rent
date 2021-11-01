inherited frmRootConsulta: TfrmRootConsulta
  Caption = 'frmRootConsulta'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTitulo: TPanel
    Caption = 'Meus '
  end
  inherited pnlGeral: TPanel
    inherited pnlOpcoes: TPanel
      Font.Color = clWhite
      ParentFont = False
      object btnExcluir: TSpeedButton
        Left = 300
        Top = 0
        Width = 100
        Height = 50
        Align = alLeft
        Caption = 'E&xcluir'
        Flat = True
        OnClick = btnExcluirClick
        ExplicitLeft = 200
      end
      object btnEditar: TSpeedButton
        Left = 100
        Top = 0
        Width = 100
        Height = 50
        Align = alLeft
        Caption = '&Editar'
        Flat = True
        OnClick = btnEditarClick
        ExplicitLeft = 94
        ExplicitTop = -6
      end
      object btnNovo: TSpeedButton
        Left = 0
        Top = 0
        Width = 100
        Height = 50
        Align = alLeft
        Caption = '&Novo'
        Flat = True
        OnClick = btnNovoClick
        ExplicitLeft = -6
        ExplicitTop = -6
      end
      object btnConsultar: TSpeedButton
        Left = 200
        Top = 0
        Width = 100
        Height = 50
        Align = alLeft
        Caption = '&Visualizar'
        Flat = True
        ExplicitLeft = 220
        ExplicitTop = 6
      end
    end
    object dbgQuery: TDBGrid
      Left = 0
      Top = 50
      Width = 800
      Height = 500
      Align = alClient
      DataSource = dsQuery
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Roboto'
      TitleFont.Style = []
    end
  end
  inherited ImageList: TImageList
    Left = 752
    Top = 120
  end
  object dsQuery: TDataSource
    Left = 752
    Top = 176
  end
end
