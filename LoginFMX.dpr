program LoginFMX;

uses
  System.StartUpCopy,
  FMX.Forms,
  unit_login in 'Tela_login\unit_login.pas' {form_login},
  Db_module in 'Database\Db_module.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tform_login, form_login);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
