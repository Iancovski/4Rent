unit FConsInquilinos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FRootConsulta, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, CDBGrid;

type
  TfrmConsInquilinos = class(TfrmRootConsulta)
    pcContatos: TPageControl;
    tsContatos: TTabSheet;
    CDBGrid1: TCDBGrid;
    dsContatos: TDataSource;
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsInquilinos: TfrmConsInquilinos;

implementation

{$R *.dfm}

uses UUtils, DInquilinos, FCadInquilinos;

procedure TfrmConsInquilinos.btnEditarClick(Sender: TObject);
begin
  inherited;
  NewForm(frmCadInquilinos, TfrmCadInquilinos, dmInquilinos, TdmInquilinos, Self, Parent);
end;

procedure TfrmConsInquilinos.btnNovoClick(Sender: TObject);
begin
  inherited;
  NewForm(frmCadInquilinos, TfrmCadInquilinos, dmInquilinos, TdmInquilinos, Self, Parent);
end;

end.
