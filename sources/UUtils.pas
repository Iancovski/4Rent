unit UUtils;

interface

uses
  System.Classes, Vcl.Forms, Vcl.Controls, Data.DB, FireDAC.Comp.Client;

{Procedures}
procedure NewForm(var AFormInstance; AFormClass: TFormClass; var ADataModuleInstance; ADataModuleClass: TComponentClass; AOwner: TComponent; AParent: TWinControl);

{Functions}
function CanOpen(AForm: TForm): Boolean;

implementation

uses
  FRootCadastro, Winapi.Windows, System.SysUtils;

procedure NewForm(var AFormInstance; AFormClass: TFormClass; var ADataModuleInstance; ADataModuleClass: TComponentClass; AOwner: TComponent; AParent: TWinControl);
begin
  if CanOpen(TForm(AFormInstance)) then begin
    if Assigned(ADataModuleClass) then begin
      if not Assigned(TDataModule(ADataModuleInstance)) then
        TDataModule(ADataModuleInstance) := TDataModule(ADataModuleClass.Create(AOwner));
    end;

    if not Assigned(TForm(AFormInstance)) then begin
      TForm(AFormInstance) := TForm(AFormClass.Create(AOwner));
      TForm(AFormInstance).Parent := AParent;
      TForm(AFormInstance).Show;
    end
    else
      TForm(AFormInstance).BringToFront;
  end;
end;

function CanOpen(AForm: TForm): Boolean;
var
  i: integer;
begin
  Result := True;
  for i := 0 to Screen.FormCount - 1 do begin
    if (Screen.Forms[i] is TfrmRootCadastro) and (Screen.Forms[i] <> AForm) then begin
      if Application.MessageBox('Há um cadastro em andamento. Se continuar, o cadastro será fechado e suas alterações perdidas. Deseja continuar?', 'Atenção', MB_YESNOCANCEL+MB_ICONWARNING) = ID_YES then begin
        TFDQuery(TfrmRootCadastro(Screen.Forms[i]).dsQuery.DataSet).SchemaAdapter.CancelUpdates;
        TfrmRootCadastro(Screen.Forms[i]).Close;
      end
      else begin
        Result := False;
      end;
      Break;
    end;
  end;
end;

end.
