unit FRoot;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, System.ImageList,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin;

type
  TfrmRoot = class(TForm)
    pnlTitulo: TPanel;
    pnlGeral: TPanel;
    tbrVoltar: TToolBar;
    btnVoltar: TToolButton;
    ImageList: TImageList;
    pnlOpcoes: TPanel;
    procedure btnVoltarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRoot: TfrmRoot;

implementation

{$R *.dfm}

uses UUtils, Vcl.StdCtrls, Vcl.DBCtrls, FRootCadastro, FireDAC.Comp.Client;

procedure TfrmRoot.btnVoltarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRoot.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
