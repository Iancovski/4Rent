unit CFDQuery;

interface

uses
  System.SysUtils, System.Classes, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TCFDQuery = class(TFDQuery)
  private
    { Private declarations }
  protected
    { Protected declarations }
    procedure DoBeforePost; override;
    procedure DoBeforeInsert; override;
    procedure ValidateRequiredFields(DataSet: TDataSet);
  public
    { Public declarations }
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Custom', [TCFDQuery]);
end;

{ TCFDQuery }

procedure TCFDQuery.DoBeforeInsert;
begin
  if Assigned(Self.MasterSource) then begin
    if Self.MasterSource.State in dsEditModes then begin
      Self.MasterSource.DataSet.Post;
    end;
  end;

  inherited;
end;

procedure TCFDQuery.DoBeforePost;
begin
  ValidateRequiredFields(Self);

  inherited;
end;

procedure TCFDQuery.ValidateRequiredFields(DataSet: TDataSet);
var
  i: integer;
  vMessage: String;
begin
  vMessage := '';

  for i := 0 to DataSet.FieldCount - 1 do begin
    if (DataSet.Fields[i].Required) and (DataSet.Fields[i].AsString = '') then begin
      vMessage := vMessage + '- ' + DataSet.Fields[i].DisplayLabel + sLineBreak;
    end;
  end;

  if vMessage <> '' then
    raise Exception.Create(Format('Os seguintes campos são obrigatórios e não foram preenchidos:%s%s', [sLineBreak, vMessage]));
end;

end.
