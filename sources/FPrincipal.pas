unit FPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FRootPrincipal, System.ImageList,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls;

type
  TfrmPrincipal = class(TfrmRootPrincipal)
    btnAlugueis: TToolButton;
    btnImoveis: TToolButton;
    btnTerceiros: TToolButton;
    btnCidades: TToolButton;
    procedure btnCidadesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses DCidades, FConsCidades, UUtils;

procedure TfrmPrincipal.btnCidadesClick(Sender: TObject);
begin
  inherited;
  NewForm(frmConsCidades, TfrmConsCidades, dmCidades, TdmCidades, Self, pnlPrincipal);
end;

end.
