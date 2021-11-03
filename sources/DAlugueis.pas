unit DAlugueis;

interface

uses
  System.SysUtils, System.Classes, DRoot, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.Stan.Async,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, CFDQuery;

type
  TdmAlugueis = class(TdmRoot)
    fdqAlugueis: TCFDQuery;
    fdqAlugueisid: TFDAutoIncField;
    fdqAlugueisid_imovel: TIntegerField;
    fdqAlugueisdescricao_imovel: TWideStringField;
    fdqAlugueisid_inquilino: TIntegerField;
    fdqAlugueisnome_inquilino: TWideStringField;
    fdqAlugueisdata_entrada: TDateField;
    fdqAlugueistipo_aluguel: TWideStringField;
    fdqAlugueisperiodo: TIntegerField;
    fdqAlugueisdata_saida: TDateField;
    fdqAlugueisativo: TWideStringField;
    fdqContasReceber: TCFDQuery;
    dsLink: TDataSource;
    fdqContasReceberid: TFDAutoIncField;
    fdqContasReceberid_aluguel: TIntegerField;
    fdqContasReceberdata: TDateField;
    fdqContasReceberdata_vencimento: TDateField;
    fdqContasReceberid_inquilino: TIntegerField;
    fdqContasReceberdescricao: TWideStringField;
    fdqContasRecebervalor: TFloatField;
    fdqContasRecebertipo: TWideStringField;
    fdqContasReceberorigem: TWideStringField;
    fdqContasReceberbaixado: TWideStringField;
    fdqContasReceberdata_baixa: TDateField;
    fdqContasRecebervalor_desconto: TFloatField;
    fdqContasRecebervalor_multa: TFloatField;
    fdqContasRecebervalor_juros: TFloatField;
    fdqContasRecebervalor_total: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmAlugueis: TdmAlugueis;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses DPrincipal;

{$R *.dfm}

end.
