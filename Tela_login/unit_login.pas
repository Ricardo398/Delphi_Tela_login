unit unit_login;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.TabControl, FMX.ExtCtrls, FMX.Controls.Presentation, FMX.StdCtrls,
  FMX.Objects, FMX.Edit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tform_login = class(TForm)
    tab_principal: TTabControl;
    tab_login: TTabItem;
    tab_cadastro: TTabItem;
    lay_topo: TLayout;
    img_logo: TImageViewer;
    btn_login: TSpeedButton;
    btn_cadastro: TSpeedButton;
    GridPanelLayout1: TGridPanelLayout;
    layout_login: TLayout;
    lay_login_logo: TLayout;
    lay_nome_usuario: TLayout;
    lay_senha: TLayout;
    Lay_botao_acessar: TLayout;
    lay_nao_cadastro: TLayout;
    lbl_login: TLabel;
    lbl_usuario: TLabel;
    lbl_senha: TLabel;
    lbl_nao_cadastro: TLabel;
    logo: TImageViewer;
    edit_usuario_login: TEdit;
    edit_senha_login: TEdit;
    Rectangle2: TRectangle;
    btn_acessar: TSpeedButton;
    SpeedButton1: TSpeedButton;
    layout_cadastro: TLayout;
    GridPanelLayout2: TGridPanelLayout;
    lay_logo: TLayout;
    label_cadastro: TLabel;
    logo_escrita: TImageViewer;
    lay_repitasenha: TLayout;
    Rectangle1: TRectangle;
    button_cadastrar: TSpeedButton;
    lay_cadastrar: TLayout;
    lbl_jatemcadastro: TLabel;
    button_click_cadastro: TSpeedButton;
    lay_usuario: TLayout;
    edit_usuario_cadastro: TEdit;
    lbl_usuariocadastro: TLabel;
    lay_primeirasenha: TLayout;
    edit_senha_cadastro: TEdit;
    lbl_primeirasenha: TLabel;
    lay_jatemcadastro: TLayout;
    Label1: TLabel;
    edit_repita_senha: TEdit;
    procedure btn_loginClick(Sender: TObject);
    procedure btn_cadastroClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure button_click_cadastroClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure button_cadastrarClick(Sender: TObject);
    procedure btn_acessarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_login: Tform_login;
  nome_usuario_cadastro : string;
  senha_usuario_cadastro : integer;
  confirmacao_senha_cadastro : integer;
  confirmacao_usuario_login : string;
  confirmacao_senha_login : integer;

implementation

{$R *.fmx}
{$R *.Windows.fmx MSWINDOWS}

procedure Tform_login.btn_acessarClick(Sender: TObject);
begin

  if edit_usuario_login.Text = '' then
    begin
      showmessage('Por favor, insira o nome de usuario.');
    end

  else
    begin
      confirmacao_usuario_login := edit_usuario_login.Text;

    if edit_usuario_login.Text <> nome_usuario_cadastro then
      begin
        ShowMessage('Usu�rio n�o cadastrado.')
      end;

    if confirmacao_usuario_login = nome_usuario_cadastro then
    begin
      if edit_senha_login.Text = '' then
        begin
          showmessage('Por favor, insira a senha num�rica.');
        end

      else
        begin
          confirmacao_senha_login := StrToInt(edit_senha_login.Text);

          if confirmacao_senha_login <> senha_usuario_cadastro then
            begin
              ShowMessage('Senha Incorreta.')
            end

          else
            begin

              if confirmacao_senha_login = senha_usuario_cadastro then
                begin
                  ShowMessage('Usu�rio logado com Sucesso')
                end;

            end;

        end;


    end;

  end;
end;


procedure Tform_login.button_cadastrarClick(Sender: TObject);
begin

  if edit_usuario_cadastro.Text = '' then
    begin
      showmessage('Por favor, insira o nome de usuario.');
    end

  else
    begin
      nome_usuario_cadastro := edit_usuario_cadastro.text;

  if edit_senha_cadastro.Text = '' then
    begin
      showmessage('Por favor, insira a senha num�rica.');
    end

  else
    begin
    {if  edit_senha_cadastro.Text <> integer then
      begin
        ShowMessage('Insira somente n�meros.');
      end;
    }
      senha_usuario_cadastro := StrToInt(edit_senha_cadastro.Text);

    if length(senha_usuario_cadastro.ToString) > 6 then
      begin
        showmessage('Por favor, insira somente 6 d�gitos.');
      end;

    if length(senha_usuario_cadastro.ToString) < 6 then
      begin
        showmessage('Por favor, insira uma senha de 6 d�gitos.');
      end;

    if length(senha_usuario_cadastro.ToString) = 6 then
      begin

        confirmacaO_senha_cadastro := StrToInt(edit_senha_cadastro.Text);

      if edit_repita_senha.Text = '' then
        begin
          showmessage('Por favor, repita a senha num�rica para cadastro.');
        end

      else
         begin

         if edit_senha_cadastro.Text = edit_repita_senha.Text then
          begin
            ShowMessage('Usu�rio cadastrado com Sucesso')
          end;

         if  edit_senha_cadastro.Text <> edit_repita_senha.Text then
          begin
            ShowMessage('A senha deve ser exatamente a mesma.')
          end;

          end;



      end;

    end;



end;
end;


procedure Tform_login.btn_cadastroClick(Sender: TObject);
begin
  tab_principal.ActiveTab := tab_cadastro
end;

procedure Tform_login.btn_loginClick(Sender: TObject);
begin
  tab_principal.ActiveTab := tab_login;
end;

procedure Tform_login.FormCreate(Sender: TObject);
begin
  tab_principal.ActiveTab := tab_login;
end;

procedure Tform_login.SpeedButton1Click(Sender: TObject);
begin
    tab_principal.ActiveTab := tab_cadastro
end;

procedure Tform_login.button_click_cadastroClick(Sender: TObject);
begin
tab_principal.ActiveTab := tab_login;
end;

end.
