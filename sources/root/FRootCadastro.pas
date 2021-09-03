unit FRootCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FRoot, Data.DB, Vcl.Buttons,
  System.ImageList, Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFormFunction = (ffInsert, ffEdit);

  TfrmRootCadastro = class(TfrmRoot)
    btnCancelar: TSpeedButton;
    btnSalvar: TSpeedButton;
    dsQuery: TDataSource;
    pnlFields: TPanel;
    lblID: TLabel;
    btnEditID: TSpeedButton;
    edtID: TEdit;
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEditIDClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtIDExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
    FormFunction: TFormFunction;
  public
    { Public declarations }
  end;

var
  frmRootCadastro: TfrmRootCadastro;

implementation

uses
  FireDAC.Comp.Client, FRootPrincipal, FRootConsulta, FireDAC.Stan.Error;

{$R *.dfm}

procedure TfrmRootCadastro.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Deseja cancelar as alterações?','Atenção',MB_YESNO+MB_ICONWARNING) = ID_YES then begin
    if FormFunction = ffInsert then begin
      TFDQuery(dsQuery.DataSet).SchemaAdapter.CancelUpdates;
      dsQuery.DataSet.Append;
    end
    else begin
      TFDQuery(dsQuery.DataSet).SchemaAdapter.CancelUpdates;
    end;
  end;
end;

procedure TfrmRootCadastro.btnEditIDClick(Sender: TObject);
begin
  inherited;
  edtID.Enabled := True;
  edtID.Clear;
  edtID.NumbersOnly := True;
  edtID.SetFocus;
end;

procedure TfrmRootCadastro.btnSalvarClick(Sender: TObject);
var
  i: Integer;
  vExceptionMessage: String;
begin
  inherited;
  if FormFunction = ffInsert then begin
    if edtID.Text <> 'Novo' then begin
      dsQuery.DataSet.Edit;
      dsQuery.DataSet.FieldByName('ID').AsInteger := StrToInt(edtID.Text);
    end;
  end;

  for i := 0 to ComponentCount - 1 do begin
    if Components[i] is TDataSource then begin
      if TDataSource(Components[i]).DataSet.State in dsEditModes then
        TDataSource(Components[i]).DataSet.Post;
    end;
  end;

  TFDQuery(dsQuery.DataSet).SchemaAdapter.ApplyUpdates(0);
  dsQuery.DataSet.Refresh;

  Close;
end;

procedure TfrmRootCadastro.edtIDExit(Sender: TObject);
begin
  inherited;
  if edtID.Text = '' then begin
    edtID.Text := 'Novo';
    edtID.Enabled := False;
  end
  else begin
    try
      if StrToInt(edtID.Text) <= 0 then
        raise Exception.Create('');
    except
      Application.MessageBox('O número informado é inválido.','Erro',MB_ICONERROR);
      Abort;
    end;
  end;
end;

procedure TfrmRootCadastro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  TFDQuery(dsQuery.DataSet).SchemaAdapter.CancelUpdates;
  TfrmRootConsulta(Owner).dbgQuery.DataSource := TfrmRootConsulta(Owner).dsQuery;
end;

procedure TfrmRootCadastro.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if Application.MessageBox('Deseja cancelar as alterações e sair?','Atenção',MB_YESNO+MB_ICONWARNING) = ID_YES then
    CanClose := True
  else
    CanClose := False;
end;

procedure TfrmRootCadastro.FormCreate(Sender: TObject);
begin
  inherited;
  TfrmRootConsulta(Owner).dbgQuery.DataSource := nil;

  if dsQuery.DataSet.State = dsInsert then begin
    FormFunction := ffInsert;

    btnEditID.Visible := True;
    edtID.Text := 'Novo';
  end
  else begin
    FormFunction := ffEdit;

    btnEditID.Visible := False;
    edtID.Text := dsQuery.DataSet.FieldByName('ID').AsString;
  end;
end;

procedure TfrmRootCadastro.FormShow(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  for i := 0 to ComponentCount - 1 do begin
    if Components[i] is TDBEdit then begin
      if TDBEdit(Components[i]).TabOrder = 1 then begin
        TDBEdit(Components[i]).SetFocus;
        Break;
      end;
    end;
  end;
end;

end.
