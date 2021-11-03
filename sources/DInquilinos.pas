unit DInquilinos;

interface

uses
  System.SysUtils, System.Classes, DRoot, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.Stan.Async,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, CFDQuery;

type
  TdmInquilinos = class(TdmRoot)
    fdqInquilinos: TCFDQuery;
    fdqContatos: TCFDQuery;
    dsLink: TDataSource;
    fdqInquilinosid: TFDAutoIncField;
    fdqInquilinosnome: TWideStringField;
    fdqInquilinoscpf: TWideStringField;
    fdqInquilinosrg: TWideStringField;
    fdqInquilinosrenda: TFloatField;
    fdqInquilinosativo: TWideStringField;
    fdqContatosid: TFDAutoIncField;
    fdqContatosid_inquilino: TIntegerField;
    fdqContatosdescricao: TWideStringField;
    fdqContatoscontato: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmInquilinos: TdmInquilinos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses DPrincipal;

{$R *.dfm}

end.
