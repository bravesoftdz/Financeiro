unit Financas.View.Login;

interface

uses
     System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls, FMX.Edit, FMX.Controls.Presentation, FMX.Objects, FMX.Layouts, FMX.Ani, FMX.Effects;

type
     TViewLogin = class(TForm)
          LayoutMain: TLayout;
          LayoutLogin: TLayout;
          RectangleLogin: TRectangle;
          LabelUser: TLabel;
          LabelPassword: TLabel;
          EditUser: TEdit;
          EditPassword: TEdit;
          ButtonOk: TButton;
          ButtonCancel: TButton;
          PanelMain: TPanel;
          ShadowEffect: TShadowEffect;
          procedure ButtonCancelClick(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure ButtonOkClick(Sender: TObject);
          function Login(UserName, Password: String): Boolean;
     private
          { Private declarations }
     public
          { Public declarations }
          FLogin: Boolean;
     end;

var
     ViewLogin: TViewLogin;

implementation

{$R *.fmx}

procedure TViewLogin.ButtonCancelClick(Sender: TObject);
begin
     Close;
end;

procedure TViewLogin.ButtonOkClick(Sender: TObject);
begin
     FLogin := Login(EditUser.Text, EditUser.Text);
     //
     if FLogin then Close;
end;

procedure TViewLogin.FormCreate(Sender: TObject);
begin
     FLogin := False;
end;

function TViewLogin.Login(UserName, Password: String): Boolean;
begin
     Result := False;
     //
     if (UserName <> '') and (Password <> '') and (UserName = Password) then
          Result := True
     else
          raise exception.Create('Usu�rio e Senha inv�lidos!');
end;

end.
