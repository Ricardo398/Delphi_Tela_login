program LoginFMX;

uses
  System.StartUpCopy,
  FMX.Forms,
  unit_login in 'Tela_login\unit_login.pas' {form_login};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tform_login, form_login);
  Application.Run;
end.
