unit FCadCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FRootCadastro, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, CDBEdit;

type
  TfrmCadCidades = class(TfrmRootCadastro)
    edtNome: TCDBEdit;
    edtUF: TCDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCidades: TfrmCadCidades;

implementation

{$R *.dfm}

uses DCidades;

end.
