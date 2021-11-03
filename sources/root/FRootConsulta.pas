unit FRootConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FRoot, System.ImageList, Vcl.ImgList,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids;

type
  TfrmRootConsulta = class(TfrmRoot)
    btnExcluir: TSpeedButton;
    btnEditar: TSpeedButton;
    btnNovo: TSpeedButton;
    dsQuery: TDataSource;
    dbgQuery: TDBGrid;
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRootConsulta: TfrmRootConsulta;

implementation

{$R *.dfm}

procedure TfrmRootConsulta.btnEditarClick(Sender: TObject);
begin
  inherited;
  if dsQuery.DataSet.IsEmpty then
    Exit;

  dsQuery.DataSet.Edit;
end;

procedure TfrmRootConsulta.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if dsQuery.DataSet.IsEmpty then
    Exit;

  if Application.MessageBox('Deseja excluir o registro selecionado?','Atenção',MB_YESNO+MB_ICONWARNING) = ID_YES then begin
    dsQuery.DataSet.Delete;
    TFDQuery(dsQuery.DataSet).SchemaAdapter.ApplyUpdates(0);
  end;
end;

procedure TfrmRootConsulta.btnNovoClick(Sender: TObject);
begin
  inherited;
  dsQuery.DataSet.Append;
end;

end.
