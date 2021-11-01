unit DRoot;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.Stan.Async, Data.DB, FireDAC.Comp.DataSet;

type
  TdmRoot = class(TDataModule)
    FDSchemaAdapter: TFDSchemaAdapter;
    fdqPesq: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure FDSchemaAdapterAfterApplyUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRoot: TdmRoot;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmRoot.DataModuleCreate(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if (Components[i] is TFDQuery) and (Components[i] <> fdqPesq) then
      TFDQuery(Components[i]).Open();
  end;
end;

procedure TdmRoot.FDSchemaAdapterAfterApplyUpdate(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if (Components[i] is TFDQuery) and (Components[i] <> fdqPesq) then
      TFDQuery(Components[i]).CommitUpdates;
  end;
end;

end.
