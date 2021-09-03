unit FRootPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, System.ImageList,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.DBCtrls;

type
  TfrmRootPrincipal = class(TForm)
    pnMenu: TPanel;
    pnInicio: TPanel;
    pnlPrincipal: TPanel;
    tbrMenu: TToolBar;
    tbrInicio: TToolBar;
    btnInicio: TToolButton;
    pnConfiguracoes: TPanel;
    tbrConfiguracoes: TToolBar;
    btnConfiguracoes: TToolButton;
    ImageList: TImageList;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnInicioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRootPrincipal: TfrmRootPrincipal;

implementation

{$R *.dfm}

uses UUtils, FRootCadastro, FireDAC.Comp.Client;

procedure TfrmRootPrincipal.btnInicioClick(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to Screen.FormCount - 1 do begin
    if not (Screen.Forms[i] is TfrmRootPrincipal) then begin
      if Screen.Forms[i] is TfrmRootCadastro then begin
        if Application.MessageBox('Há um cadastro em andamento. Se continuar, o cadastro será fechado e suas alterações perdidas. Deseja continuar?', 'Atenção', MB_YESNOCANCEL+MB_ICONWARNING) = ID_YES then begin
          TFDQuery(TfrmRootCadastro(Screen.Forms[i]).dsQuery.DataSet).SchemaAdapter.CancelUpdates;
          Screen.Forms[i].Close;
        end
        else begin
          Break;
        end;
      end;
      Screen.Forms[i].Close;
    end
  end;
end;

procedure TfrmRootPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    if (ActiveControl is TEdit) or (ActiveControl is TDBEdit) then begin
      Key := #0;
      Perform(WM_NEXTDLGCTL,0,0);
    end;
  end;
end;

end.
