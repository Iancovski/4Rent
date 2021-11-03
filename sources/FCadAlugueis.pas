unit FCadAlugueis;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FRootCadastro, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, CDBEdit;

type
  TfrmCadAlugueis = class(TfrmRootCadastro)
    edtImovel: TCDBEdit;
    edtNomeImovel: TCDBEdit;
    edtInquilino: TCDBEdit;
    edtNomeInquilino: TCDBEdit;
    edtDataEntrada: TCDBEdit;
    edtPeriodo: TCDBEdit;
    edtDataSaida: TCDBEdit;
    ComboBox1: TComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadAlugueis: TfrmCadAlugueis;

implementation

{$R *.dfm}

uses DAlugueis;

end.
