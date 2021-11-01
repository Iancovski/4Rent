program ForRent;

uses
  Vcl.Forms,
  DRoot in '..\sources\root\DRoot.pas' {dmRoot: TDataModule},
  DRootPrincipal in '..\sources\root\DRootPrincipal.pas' {dmRootPrincipal: TDataModule},
  FRoot in '..\sources\root\FRoot.pas' {frmRoot},
  FRootCadastro in '..\sources\root\FRootCadastro.pas' {frmRootCadastro},
  FRootConsulta in '..\sources\root\FRootConsulta.pas' {frmRootConsulta},
  FRootPrincipal in '..\sources\root\FRootPrincipal.pas' {frmRootPrincipal},
  FPrincipal in '..\sources\FPrincipal.pas' {frmPrincipal},
  UUtils in '..\sources\UUtils.pas',
  DPrincipal in '..\sources\DPrincipal.pas' {dmPrincipal: TDataModule},
  DCidades in '..\sources\DCidades.pas' {dmCidades: TDataModule},
  FCadCidades in '..\sources\FCadCidades.pas' {frmCadCidades},
  FConsCidades in '..\sources\FConsCidades.pas' {frmConsCidades};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmPrincipal, dmPrincipal);
  Application.Run;
end.
