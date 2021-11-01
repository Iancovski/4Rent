unit FConsCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FRootConsulta, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls;

type
  TfrmConsCidades = class(TfrmRootConsulta)
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsCidades: TfrmConsCidades;

implementation

{$R *.dfm}

uses DCidades, UUtils, FCadCidades;

procedure TfrmConsCidades.btnEditarClick(Sender: TObject);
begin
  inherited;
  NewForm(frmCadCidades, TfrmCadCidades, dmCidades, TdmCidades, Self, Parent);
end;

procedure TfrmConsCidades.btnNovoClick(Sender: TObject);
begin
  inherited;
  NewForm(frmCadCidades, TfrmCadCidades, dmCidades, TdmCidades, Self, Parent);
end;

end.
