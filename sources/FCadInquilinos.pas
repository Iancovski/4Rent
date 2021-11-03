unit FCadInquilinos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FRootCadastro, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, CDBEdit, Vcl.Grids,
  Vcl.DBGrids, CDBGrid;

type
  TfrmCadInquilinos = class(TfrmRootCadastro)
    edtNome: TCDBEdit;
    edtCPF: TCDBEdit;
    edtRG: TCDBEdit;
    edtRenda: TCDBEdit;
    pcContatos: TPageControl;
    tsContatos: TTabSheet;
    CDBGrid1: TCDBGrid;
    dsContatos: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadInquilinos: TfrmCadInquilinos;

implementation

{$R *.dfm}

uses DInquilinos;

end.
