unit FCadImoveis;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FRootCadastro, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, CDBEdit, Vcl.Grids,
  Vcl.DBGrids, CDBGrid;

type
  TfrmCadImoveis = class(TfrmRootCadastro)
    edtCEP: TCDBEdit;
    edtEndereco: TCDBEdit;
    edtBairro: TCDBEdit;
    edtNumero: TCDBEdit;
    edtMunicipio: TCDBEdit;
    edtNomeMunicipio: TCDBEdit;
    pcImoveis: TPageControl;
    tsImoveis: TTabSheet;
    CDBGrid1: TCDBGrid;
    dsImoveis: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadImoveis: TfrmCadImoveis;

implementation

{$R *.dfm}

uses DImoveis;

end.
