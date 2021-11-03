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
    btnInquilinos: TToolButton;
    btnCidades: TToolButton;
    btnRelatorios: TToolButton;
    procedure btnCidadesClick(Sender: TObject);
    procedure btnImoveisClick(Sender: TObject);
    procedure btnInquilinosClick(Sender: TObject);
    procedure btnAlugueisClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UUtils, DCidades, FConsCidades, DImoveis, FConsImoveis, DInquilinos, FConsInquilinos,
  FConsAlugueis, DAlugueis;

procedure TfrmPrincipal.btnAlugueisClick(Sender: TObject);
begin
  inherited;
  NewForm(frmConsAlugueis, TfrmConsAlugueis, dmAlugueis, TdmAlugueis, Self, pnlPrincipal);
end;

procedure TfrmPrincipal.btnCidadesClick(Sender: TObject);
begin
  inherited;
  NewForm(frmConsCidades, TfrmConsCidades, dmCidades, TdmCidades, Self, pnlPrincipal);
end;

procedure TfrmPrincipal.btnImoveisClick(Sender: TObject);
begin
  inherited;
  NewForm(frmConsImoveis, TfrmConsImoveis, dmImoveis, TdmImoveis, Self, pnlPrincipal);
end;

procedure TfrmPrincipal.btnInquilinosClick(Sender: TObject);
begin
  inherited;
  NewForm(frmConsInquilinos, TfrmConsInquilinos, dmInquilinos, TdmInquilinos, Self, pnlPrincipal);
end;

end.
