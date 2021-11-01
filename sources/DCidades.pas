unit DCidades;

interface

uses
  System.SysUtils, System.Classes, DRoot, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.Stan.Async,
  CFDQuery, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmCidades = class(TdmRoot)
    fdqCidades: TCFDQuery;
    fdqCidadesid: TFDAutoIncField;
    fdqCidadesnome: TWideStringField;
    fdqCidadesuf: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCidades: TdmCidades;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses DPrincipal;

{$R *.dfm}

end.
