unit FConsImoveis;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FRootConsulta, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, CDBGrid;

type
  TfrmConsImoveis = class(TfrmRootConsulta)
    pcImoveis: TPageControl;
    tsImoveis: TTabSheet;
    CDBGrid1: TCDBGrid;
    dsImoveis: TDataSource;
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsImoveis: TfrmConsImoveis;

implementation

{$R *.dfm}

uses UUtils, FCadImoveis, DImoveis;

procedure TfrmConsImoveis.btnEditarClick(Sender: TObject);
begin
  inherited;
  NewForm(frmCadImoveis, TfrmCadImoveis, dmImoveis, TdmImoveis, Self, Parent);
end;

procedure TfrmConsImoveis.btnNovoClick(Sender: TObject);
begin
  inherited;
  NewForm(frmCadImoveis, TfrmCadImoveis, dmImoveis, TdmImoveis, Self, Parent);
end;

end.
