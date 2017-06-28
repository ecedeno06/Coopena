unit GeneralesUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.ToolWin,
  Vcl.StdCtrls, Vcl.Imaging.pngimage;

type
  TfrmGeneralesUsuario = class(TForm)
    StatusBar1: TStatusBar;
    ScrollBox1: TScrollBox;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    edR1: TEdit;
    edP1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edP2: TEdit;
    edR2: TEdit;
    Label5: TLabel;
    edP3: TEdit;
    edR3: TEdit;
    ToolBar1: TToolBar;
    btnGeneralesSalvar: TToolButton;
    Label3: TLabel;
    edGeneralesCelular: TButtonedEdit;
    ToolBar2: TToolBar;
    btnGeneralesSalvar1: TToolButton;
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGeneralesSalvarClick(Sender: TObject);
    procedure edGeneralesCelularRightButtonClick(Sender: TObject);
    procedure btnGeneralesSalvar1Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGeneralesUsuario: TfrmGeneralesUsuario;

implementation

{$R *.dfm}

uses Principal, DM1, Login;

procedure TfrmGeneralesUsuario.btnGeneralesSalvar1Click(Sender: TObject);
begin
  DataModulo1.tblUsuarios.Edit;
  DataModulo1.tblUsuarioscelular.Value := edGeneralesCelular.Text ;
  DataModulo1.tblUsuarios.Post;
end;

procedure TfrmGeneralesUsuario.btnGeneralesSalvarClick(Sender: TObject);
begin
  if not DataModulo1.clavePreguntas.eof then
  begin

      DataModulo1.clavePreguntas.edit;
      DataModulo1.clavePreguntasP1.Value := DataModulo1.Crypt('E',edP1.text);
      DataModulo1.clavePreguntasR1.Value := DataModulo1.Crypt('E',edR1.text);
      DataModulo1.clavePreguntasP2.Value := DataModulo1.Crypt('E',edP2.text);
      DataModulo1.clavePreguntasR2.Value := DataModulo1.Crypt('E',edR2.text);
      DataModulo1.clavePreguntasP3.Value := DataModulo1.Crypt('E',edP3.text);
      DataModulo1.clavePreguntasR3.Value := DataModulo1.Crypt('E',edR3.text);

  end
  Else
  begin
    DataModulo1.clavepreguntas.append;
    DataModulo1.clavePreguntasllave.AsString := frmLogin.MD5(DataModulo1.tblUsuariosUsuario.AsString )
  end;

   Try
     DataModulo1.clavePreguntas.Post;
   except
    on E:Exception do
    begin
     showMessage('Error al salvar el seguridad...');
    end;
   end;

end;

procedure TfrmGeneralesUsuario.edGeneralesCelularRightButtonClick(
  Sender: TObject);
begin
  edGeneralesCelular.Clear;
end;

procedure TfrmGeneralesUsuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    action := cafree;
end;

procedure TfrmGeneralesUsuario.FormCreate(Sender: TObject);
var
 xllave : string;
begin

  xllave  := frmLogin.MD5( DataModulo1.tblUsuariosUsuario.AsString );
  edGeneralesCelular.Text := DataModulo1.tblUsuarioscelular.AsString ;

  DataModulo1.clavepreguntas.close;
  DataModulo1.clavepreguntas.Sql.Clear;
  DataModulo1.clavepreguntas.sql.Add(' Select * from ClaveRecuperacion ');
  DataModulo1.clavepreguntas.sql.Add(' Where llave = ' + coma + frmLogin.MD5(DataModulo1.tblUsuariosUsuario.AsString ) + coma );
  DataModulo1.clavepreguntas.Open;
  DataModulo1.clavepreguntas.First;

  if not DataModulo1.clavepreguntas.eof then
  begin
    edP1.Text :=  DataModulo1.Crypt ('D',DataModulo1.clavepreguntasP1.asstring);
    edR1.Text :=  DataModulo1.Crypt ('D',DataModulo1.clavepreguntasR1.asstring);
    edP2.Text :=  DataModulo1.Crypt ('D',DataModulo1.clavepreguntasP2.asstring);
    edR2.Text :=  DataModulo1.Crypt ('D',DataModulo1.clavepreguntasR2.asstring);
    edP3.Text :=  DataModulo1.Crypt ('D',DataModulo1.clavepreguntasP3.asstring);
    edR3.Text :=  DataModulo1.Crypt ('D',DataModulo1.clavepreguntasR3.asstring);
  end;



end;

procedure TfrmGeneralesUsuario.FormDestroy(Sender: TObject);
begin
  self := nil;
end;

end.




