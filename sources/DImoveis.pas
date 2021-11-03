unit DImoveis;

interface

uses
  System.SysUtils, System.Classes, DRoot, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.Stan.Async,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, CFDQuery;

type
  TdmImoveis = class(TdmRoot)
    fdqEnderecos: TCFDQuery;
    fdqImoveis: TCFDQuery;
    dsLink: TDataSource;
    fdqEnderecosid: TFDAutoIncField;
    fdqEnderecosid_municipio: TIntegerField;
    fdqEnderecoscep: TWideStringField;
    fdqEnderecosbairro: TWideStringField;
    fdqEnderecosrua: TWideStringField;
    fdqEnderecosnumero: TIntegerField;
    fdqEnderecosativo: TWideStringField;
    fdqImoveisid: TFDAutoIncField;
    fdqImoveisid_endereco: TIntegerField;
    fdqImoveisdescricao: TWideStringField;
    fdqImoveistipo_aluguel_padrao: TWideStringField;
    fdqImoveisvalor_mensal: TFloatField;
    fdqImoveisvalor_semanal: TFloatField;
    fdqImoveisvalor_diaria: TFloatField;
    fdqImoveisativo: TWideStringField;
    fdqEnderecosnome_municipio: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmImoveis: TdmImoveis;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses DPrincipal;

{$R *.dfm}

end.
