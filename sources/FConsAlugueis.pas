unit FConsAlugueis;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FRootConsulta, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, CDBGrid;

type
  TfrmConsAlugueis = class(TfrmRootConsulta)
    PageControl1: TPageControl;
    tsContasReceber: TTabSheet;
    pnLegenda: TPanel;
    pnCorRecebido: TPanel;
    pnCorPendente: TPanel;
    pnCorAtrasado: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    dbgContasReceber: TCDBGrid;
    pnOpcoes: TPanel;
    btnReceber: TSpeedButton;
    btnRenovar: TSpeedButton;
    btnRescindir: TSpeedButton;
    dsContasReceber: TDataSource;
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsAlugueis: TfrmConsAlugueis;

implementation

{$R *.dfm}

uses UUtils, FCadAlugueis, DAlugueis;

procedure TfrmConsAlugueis.btnEditarClick(Sender: TObject);
begin
  inherited;
  NewForm(frmCadAlugueis, TfrmCadAlugueis, dmAlugueis, TdmAlugueis, Self, Parent);
end;

procedure TfrmConsAlugueis.btnNovoClick(Sender: TObject);
begin
  inherited;
  NewForm(frmCadAlugueis, TfrmCadAlugueis, dmAlugueis, TdmAlugueis, Self, Parent);
end;

end.
