unit Login2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask,
  //atDiagram, LiveDiagram, wsClasses, wsDiagram,
  //wsControls, wsMain, wsDB, wsADO,
  Vcl.ComCtrls,system.Math,
  //--Componentes de correo
  IdSMTP, IdSSLOpenSSL, IdMessage, IdText, IdAttachmentFile,
  IdExplicitTLSClientServerBase, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTPBase, IdBaseComponent, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdServerIOHandler, IdServerIOHandlerSocket,
  IdServerIOHandlerStack, Vcl.Samples.Spin, FireDAC.UI.Intf, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Intf, FireDAC.Comp.UI;

type
  TfrmLogin2 = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edUsuario: TEdit;
    edClave: TEdit;
    GroupBox1: TGroupBox;
    cxbOlvidoClave: TCheckBox;
    btnGenerarClave: TButton;
    btnEntrar: TButton;
    cxbCambiar: TCheckBox;
    mensaje: TIdMessage;
    SMTP: TIdSMTP;
    IdServerIOHandlerStack1: TIdServerIOHandlerStack;
    SSLHandler: TIdSSLIOHandlerSocketOpenSSL;
    gbCambio: TGroupBox;
    Label3: TLabel;
    edClaveNueva: TEdit;
    Label4: TLabel;
    edClaveConfirmacion: TEdit;
    Button1: TButton;
    lblMensaje1: TLabel;
    Timer1: TTimer;
    SpinEdit1: TSpinEdit;
    pb1: TProgressBar;
    gbSecreta: TGroupBox;
    lbPregunta: TLabel;
    edRespuesta: TEdit;
    fxCursor1: TFDGUIxWaitCursor;
    stbLogin: TStatusBar;
    procedure cxbOlvidoClaveClick(Sender: TObject);
    procedure edUsuarioChange(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
    procedure edClaveChange(Sender: TObject);
    procedure btnGenerarClaveClick(Sender: TObject);
    Function ValidarUsuario(usuario : string):Boolean;
    Function ValidarClave(Usuario,Clave : String) :Boolean;
    procedure edUsuarioEnter(Sender: TObject);
    procedure edClaveEnter(Sender: TObject);
    procedure EnvioDeCorreo(Clave : string);
    procedure cxbCambiarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edClaveNuevaExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    Function ClaveUsada(Usuario,Clave : String) : boolean;
    Function EnviaCorreoOK(Correo,Clave : String) : boolean;
//    Function EnvioDeCorreo(Correo,Clave : String) : Boolean;
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    Function PantallaBloqueado(bloqueado : Integer):Boolean;
    Function PantallaNoExiste(Existe : Integer) : Boolean;

//    Function ValidaClave(usuario,clave):Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  Codes64 = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz+/';

var
  frmLogin2: TfrmLogin2;

implementation

{$R *.dfm}

uses DM1, Principal,IdHashMessageDigest, Calendario;


//==============================================================================
//                             Generacion de Clave  (PassGen)
//
// Descripcion:  Genera una clave aleatoria de 10 digitos
//
// LLamado Por:
//            - btnGenerarClaveClick
//------------------------------------------------------------------------------
// Elavorado Por : Edwin Cedeño   |Fecha:                |Hora:
//==============================================================================
function PassGen(Str: String): String;
const
  // Caracteres Utilizados para Generar la Contraseña Automaticamnete.
//  Letras = '01234abcdefghijklmn56789opqrstuvwxyzABCDEFGH+-/*$%#@!IJKLMNOPQRSTWVXYZ';
  Letras = '0123abcd+-*&$%#@!/efg456789ABCDEFGHIJKLhijklmnoMNOPQRSTpqrstuvUVWwXxYyZz+-*&$%#@!';
var
  Resul : String;
  Dato : String;
begin
  Result := '';
  Dato := Resul+Letras[1+Random(Length(Letras))] + Resul+Letras[1+Random(Length(Letras))]
        + Resul+Letras[1+Random(Length(Letras))] + Resul+Letras[1+Random(Length(Letras))]
        + Resul+Letras[1+Random(Length(Letras))] + Resul+Letras[1+Random(Length(Letras))]
        + Resul+Letras[1+Random(Length(Letras))] + Resul+Letras[1+Random(Length(Letras))]
        + Resul+Letras[1+Random(Length(Letras))] + Resul+Letras[1+Random(Length(Letras))];

  Result := dato; //Edit2.Text := Dato;
end;

//==============================================================================
//                             Encriptacion MD5 (MD5)
//
// Descripcion:  Combierte una cadena string en codigo MD5
//
// LLamado Por:
//            - cxbOlvidoClaveClick
//            - btnGenerarClaveClick
//            - Button1Click
//            - ClaveUsada
//            - btnEntrarClick
//------------------------------------------------------------------------------
// Elavorado Por : Edwin Cedeño   |Fecha:                |Hora:
//==============================================================================
function MD5(S: String): String;
begin
   with TIdHashMessageDigest5.Create do
   begin
      Result := HashStringAsHex(S);
    end;
end;



//==============================================================================
//                             CheckBox Cambiar (cxbCambiarClick)
//
// Descripcion:  Activa o desactiva el CheckBox de Cambiar Clave
//
// LLamado Por:
//            -
//------------------------------------------------------------------------------
// Elavorado Por : Edwin Cedeño   |Fecha:                |Hora:
//==============================================================================
procedure TfrmLogin2.cxbCambiarClick(Sender: TObject);
begin
  pb1.Position := 0;
  if cxbCambiar.Checked  then
  begin
    frmLogin2.Height   := 300;
    gbCambio.Visible  := true;
    GroupBox1.Visible := False;
    btnEntrar.Enabled := False;
    edClaveNueva.Clear;
    edClaveConfirmacion.Clear;
  end
  else
  begin
    frmLogin2.Height   := 190;;
    gbCambio.Visible  := false;
    GroupBox1.Visible := False;
    edClaveNueva.Clear;

    if CambiarClave  then
      btnEntrar.Enabled := False
    else
     btnEntrar.Enabled := true;

    edClaveConfirmacion.Clear;
  end;

end;

//==============================================================================
//                             Olvido Clave , Bloqueado (cxbOlvidoClaveClick)
//
// Descripcion:  Activa el Check Box de Olvido la clave y desea regenerarla.
//    Si tiene configurada preguntas reto, se activará  para validar el usuario
//
// LLamado Por:
//            -
//------------------------------------------------------------------------------
// Elavorado Por : Edwin Cedeño   |Fecha:                |Hora:
//==============================================================================
procedure TfrmLogin2.cxbOlvidoClaveClick(Sender: TObject);
var
 Secreta : string;
begin
 if cxbOlvidoClave.Checked  then
  begin
    btnGenerarClave.Visible := true;
    gbSecreta.Visible       := True;
    lblMensaje1.Visible     := True;
    Secreta := intToStr(RandomRange(1,4));
    edRespuesta.text        := '';
    Respuesta               := '';

    DataModulo1.Recuperarcion.Close;
    DataModulo1.Recuperarcion.Sql.Clear;
    DataModulo1.Recuperarcion.Sql.Add('Select ' + 'P' + trim(Secreta) +' as Pregunta, R'+trim(Secreta) + ' as Respuesta');
    DataModulo1.Recuperarcion.Sql.Add(' From ClaveRecuperacion Where llave = ' + coma + MD5(edUsuario.Text) + coma );
    DataModulo1.Recuperarcion.open;
    DataModulo1.Recuperarcion.First;

    if Not DataModulo1.Recuperarcion.eof then
    Begin
       gbSecreta.Visible   := true;
       lbPregunta.Caption  := DataModulo1.Crypt ('D',dataModulo1.RecuperarcionPregunta.asstring);
       Respuesta           := DataModulo1.RecuperarcionRespuesta.AsString;
    End
    Else
    Begin
      gbSecreta.Visible := False;
    End;
  end
 else
   begin
    btnGenerarClave.Visible := False;
    lblMensaje1.Visible     := False;
    gbSecreta.Visible       := false;
   end;
end;


procedure TfrmLogin2.edClaveChange(Sender: TObject);
begin
  if Length (trim(edClave.Text)) > 0  then
  begin
     if Not DataModulo1.tblUsuariosbloqueado.value then
     begin
       btnEntrar.Enabled := True;
       if ValidarClave( edUsuario.Text,edClave.Text ) then
       begin
         GroupBox1.Visible  := False;
         cxbCambiar.Visible := True;

         if  DataModulo1.tblUsuarioscambiaClave.value then
         begin
           cxbCambiar.Checked  := True;
           cxbCambiar.Enabled  := false;
         end
         else
         begin
           cxbCambiar.Checked  := false;
         end;

         stbLogin.Panels[0].Text := 'Bienvenid@, Cambie antes que completar la barra'; stbLogin.Panels[1].Text := 'Inicio:' + FormatDateTime('dd/mm/yy hh:nn',now);

       end
       Else  //... Clave incorrecta
       Begin
         cxbCambiar.Visible := false;
         gbCambio.Visible   := False;
         stbLogin.Panels[0].Text := 'Clave Incorrecta...';
       End;

     end
     else
     begin
      edClave.Enabled := false;
     end;
  end
  Else
  begin
    btnEntrar.Enabled := False;
  end;
end;

procedure TfrmLogin2.edClaveEnter(Sender: TObject);
begin
  edclave.Clear;
  pantallaNoExiste(1);
  btnEntrar.Enabled := false;
end;

procedure TfrmLogin2.edClaveNuevaExit(Sender: TObject);
begin
  if (edClave.Text = edClaveNueva.text) and (Length(Trim(edClave.text)) > 0 ) then
  Begin

    ShowMessage('Clave Nueva No puede ser Igual a la actual...');
    edClaveNueva.Clear;
    edClaveConfirmacion.Clear;
    edClave.Clear;

  End
  Else
    if ClaveUsada(edUsuario.Text , edClaveNueva.Text) then
    Begin
      ShowMessage('Clave YA UTILIZADA...Intente con otra Clave Distinta');
      edClaveNueva.Clear;
      edClaveConfirmacion.Clear;
      edClaveNueva.SetFocus;
    End
    Else
    Begin
      edClaveConfirmacion.Enabled:=true;
    End;
end;

procedure TfrmLogin2.edUsuarioChange(Sender: TObject);
begin
// PantallaBloqueado (0);
 UsuarioOK              := False;
 ClaveOK                := False;
 edClave.Text           := '';
 edClave.Enabled        := False;
 cxbOlvidoClave.Checked := False;
 if Not UsuarioOK  then
   begin
      ValidarUsuario(edUsuario.Text) ;
   end;
end;

procedure TfrmLogin2.edUsuarioEnter(Sender: TObject);
begin
// UsuarioOK  := False;
 stbLogin.Panels[0].Text := '' ;   stbLogin.Panels[1].Text := '' ;
 edClave.Text         := '';
 gbCambio.Visible     := False;
 GroupBox1.Visible    := false;
 cxbCambiar.Visible   := false;
 cxbCambiar.Checked   := false;
 gbSecreta.Visible    := False;
 frmLogin2.Height      := 190;
end;

procedure TfrmLogin2.btnGenerarClaveClick(Sender: TObject);

var
  continua : string;
  passw : String;
  xfecha    : Tdate;
  xhora     : TTime;
  FechaFull : TdateTime;
  sFecha    : string;
  cFecha    : String;

Const
   crMyCursor = 5;
begin
  Screen.Cursor := crHourGlass;
  if  (Length(trim(Respuesta)) > 0 ) then
  Begin
    if edRespuesta.Text = DataModulo1.Crypt('D',Respuesta) then
      Continua := 'S'
    Else begin
      Continua := 'N';
      ShowMessage('La respuesta secreta no coincide...');
      edRespuesta.Text := '';
    end;
  End
  Else
  Begin
    Continua := 'S';
  End;

  passw := passgen('');
  if Continua = 'S'  then
  Begin
    if EnviaCorreoOK(DataModulo1.tblUsuarioscorreo.AsString , passw) then
    begin
    Try


     xfecha := VarToDateTime(formatDateTime('yyyy-mm-dd',now));
     xhora  := VarToDateTime(FormatDateTime('hh:nn',Now));
     xhora  := xhora + strToTime('00:30');
     sfecha := FormatDateTime('yyyy-mm-dd',xfecha) + ' ' + FormatDateTime('hh:nn',xhora);
     cFecha := DataModulo1.Crypt ('E',sfecha); // fecha encriptada

      DataModulo1.tblUsuarios.Edit;
      DataModulo1.tblUsuariosClave.Value           := MD5(passw);
      DataModulo1.tblUsuarioscambiaClave.Value     := true ;
      DataModulo1.tblUsuariosfechaCambioPass.Value := now;
      DataModulo1.tblUsuariosClaveVence.Value      := cFecha;
      DataModulo1.tblUsuariosintentos.value        := 0;
      DataModulo1.tblUsuariosbloqueado.value       := False;
      DataModulo1.tblUsuarios.Post;
      ShowMessage ('Se le ha enviado una clave temporal a su buzon de correo ' );
      edClave.Enabled := True;
      edclave.SetFocus;
    except
      on E:Exception do
      begin

      end

    End;

    GroupBox1.visible := False;
    frmLogin2.Height  := 190;
  end
  Else
  Begin
    ShowMessage('No Logro enviar el Correo, Solicite nueva clave...');
  End;
 end;
screen.cursor:=crMyCursor;
end;


procedure TfrmLogin2.Button1Click(Sender: TObject);
begin
  if Length (edClaveConfirmacion.Text) > 0  then
  Begin
    if edClaveConfirmacion.Text  <> edClaveNueva.text then
    Begin
      ShowMessage('Clave nueva no coicide...');
      edClaveNueva.Clear;
      edClaveConfirmacion.Clear;
      edClaveNueva.SetFocus;
    End
    Else
    Begin

      DataModulo1.CambiarClave.Close;
      DataModulo1.CambiarClave.SQL.Clear;
      DataModulo1.CambiarClave.SQL.Add('Update USUARIO set ');
      DataModulo1.CambiarClave.SQL.Add(' Clave = ' + coma + MD5(edClaveNueva.Text) + coma);
      DataModulo1.CambiarClave.SQL.Add(',CambiaClave = ' + coma + 'False' + coma);
      DataModulo1.CambiarClave.SQL.Add(',FechaCambioPass = ' + coma + FormatDateTime('yyyy-mm-dd hh:nn:ss',now) + coma);
      DataModulo1.CambiarClave.SQL.Add(',Intentos        = ' + coma + '0' + coma);
      DataModulo1.CambiarClave.SQL.Add(',Bloqueado       = ' + coma + 'False' + coma);
      DataModulo1.CambiarClave.SQL.Add(' Where usuario   = ' + coma + upperCase(edUsuario.Text) + coma );
      DataModulo1.CambiarClave.SQL.Add(' and   CLAVE     = ' + coma + MD5(edClave.Text) + coma);
      DataModulo1.CambiarClave.ExecSQL ;

      //----  Debe insertar en la tabla de clavesUsadas esta nueva clave.
      DataModulo1.ClavesUsadas.Close;
      DataModulo1.ClavesUsadas.SQl.Clear;
      DataModulo1.ClavesUsadas.SQl.Add('Insert ClavesUsadas (' ) ;
      DataModulo1.ClavesUsadas.SQl.Add('idcia,Usuario,Clave) Values (');
      DataModulo1.ClavesUsadas.SQl.Add('1');
      DataModulo1.ClavesUsadas.SQl.Add(',' + coma + MD5(trim(edusuario.text))    + coma );
      DataModulo1.ClavesUsadas.SQl.Add(',' + coma + MD5(trim(edclaveNueva.text)) + coma + ')') ;
      DataModulo1.ClavesUsadas.ExecSQL;

      edClave.Enabled      := true;
      cxbCambiar.Enabled   := true;
      gbCambio.Visible     := false;
      GroupBox1.Visible    := false;
      cxbCambiar.Checked   := False;
      frmLogin2.Height     := 190;
      edClave.SetFocus;
      edClave.Clear;
      cxbCambiar.Checked   := False;

    End;
  End
  Else
  Begin
    ShowMessage('Clave debe tener MÍNIMO 10 pocisiones');
    edClaveNueva.Clear;
    edClaveConfirmacion.Clear;
    edClaveNueva.SetFocus;
  End;
end;



function TfrmLogin2.ClaveUsada(Usuario, Clave: String): boolean;
var
  m5Usuario, m5Clave : String;
begin
  Result := False;
  m5Usuario := MD5(Usuario);
  m5Clave   := MD5(Clave);
  if Length(trim(edClaveNueva.Text))  > 0  then
  begin
    DataModulo1.ClavesUsadas.Close;
    DataModulo1.ClavesUsadas.SQl.Clear;
    DataModulo1.ClavesUsadas.SQl.Add(' Select * from ClavesUsadas ' ) ;
    DataModulo1.ClavesUsadas.SQl.Add(' Where Usuario = ' + coma + m5Usuario + coma );
    DataModulo1.ClavesUsadas.SQl.Add(' and   clave   = ' + coma + m5Clave   + coma );
    DataModulo1.ClavesUsadas.Open;
    DataModulo1.ClavesUsadas.First;
    //ShowMessage(IntToStr(DataModulo1.ClavesUsadas.RecordCount));
    if Not DataModulo1.ClavesUsadas.Eof then
    Begin
      Result := True;
    End

  end;

end;

function TfrmLogin2.EnviaCorreoOK(Correo, Clave: String): boolean;
var
  Email: TIdMessage;
 // SSLHandler: TIdSSLIOHandlerSocketOpenSSL;
begin
  Email := TIdMessage.Create(nil);
  result := false;
//  SSLHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);

  try
  //  SSLHandler.MaxLineAction := maException;
//    SSLHandler.SSLOptions.Method := sslvTLSv1;
//    SSLHandler.SSLOptions.Mode := sslmUnassigned;
//    SSLHandler.SSLOptions.VerifyMode := [];
//    SSLHandler.SSLOptions.VerifyDepth := 0;

//    SMTP.IOHandler := SSLHandler;
    SMTP.Host := 'smtp.gmail.com';
    SMTP.Port := 587;
    SMTP.Username := 'info.coopena.pa@gmail.com';
    SMTP.Password := 'Coopena2016';
    SMTP.UseTLS := utUseExplicitTLS;

    Email.From.Address := 'Seguridad - COOPENA';
    Email.Recipients.EmailAddresses := correo; //'edwin.e.cedeno@gmail.com';
    Email.Subject := 'Generacion de Clave' ;
    Email.Body.Text := 'Buen día, usted ha solicitado se le genere una nueva clave : ' +
      clave +
      #13+#10 +  #13+#10 +
     'Esta clave deberá ser cambiada inmediatamente al ingresarla al sistema.' +
      #13+#10 +  #13+#10 + #13+#10 +  #13+#10 +
     'Estamos a la orden para cualquier consulta...'  ;

    try
      SMTP.Connect;
      SMTP.Authenticate;
    except
      on E:Exception do
      begin
        //Memo1.Text := E.Message;
        MessageDlg('Error en la autenticacion del correo Remitente: ' +
          E.Message, mtWarning, [mbOK], 0);
        Exit;
      end;
    end;

    // Envio da mensagem
    try
      SMTP.Send(Email);
      result:= true;
    //  MessageDlg('Correo Enviado Satisfactoriamente!', mtInformation, [mbOK], 0);
    except
      On E:Exception do
      begin
        MessageDlg('Error en el envio del mensaje: ' +
          E.Message, mtWarning, [mbOK], 0);
      end;
    end;
  finally
    // desconecta do servidor
    SMTP.Disconnect;
    // libera��o da DLL
    UnLoadOpenSSLLibrary;
    // libera��o dos objetos da mem�ria
    FreeAndNil(Email);
    FreeAndNil(SSLHandler);
    FreeAndNil(smtp);
    Email.Free;
    SSLHandler.Free;
  end;

end;


procedure TfrmLogin2.EnvioDeCorreo (Clave : String);
var
  Email: TIdMessage;
 // SSLHandler: TIdSSLIOHandlerSocketOpenSSL;
begin
  Email := TIdMessage.Create(nil);
//  SSLHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);

  try
  //  SSLHandler.MaxLineAction := maException;
//    SSLHandler.SSLOptions.Method := sslvTLSv1;
//    SSLHandler.SSLOptions.Mode := sslmUnassigned;
//    SSLHandler.SSLOptions.VerifyMode := [];
//    SSLHandler.SSLOptions.VerifyDepth := 0;

//    SMTP.IOHandler := SSLHandler;
    SMTP.Host := 'smtp.gmail.com';
    SMTP.Port := 587;
    SMTP.Username := 'rmedina1470@gmail.com';
    SMTP.Password := 'roly1470';
    SMTP.UseTLS := utUseExplicitTLS;

    Email.From.Address := 'Seguridad - COOPENA';
    Email.Recipients.EmailAddresses := 'edwin.e.cedeno@gmail.com';
    Email.Subject := 'Generacion de Clave' ;
    Email.Body.Text := 'Buen día, usted ha solicitado se le genere una nueva clave : ' +
      clave +
      #13+#10 +  #13+#10 +
     'Esta clave deberá ser cambiada inmediatamente al ingresarla al sistema.' +
      #13+#10 +  #13+#10 + #13+#10 +  #13+#10 +
     'Estamos a la orden para cualquier consulta...'  ;

    try
      SMTP.Connect;
      SMTP.Authenticate;
    except
      on E:Exception do
      begin
        //Memo1.Text := E.Message;
        MessageDlg('Error en la autenticacion del correo Remitente: ' +
          E.Message, mtWarning, [mbOK], 0);
        Exit;
      end;
    end;

    // Envio da mensagem
    try
      SMTP.Send(Email);
    //  MessageDlg('Correo Enviado Satisfactoriamente!', mtInformation, [mbOK], 0);
    except
      On E:Exception do
      begin
        MessageDlg('Error en el envio del mensaje: ' +
          E.Message, mtWarning, [mbOK], 0);
      end;
    end;
  finally
    // desconecta do servidor
    SMTP.Disconnect;
    // libera��o da DLL
    UnLoadOpenSSLLibrary;
    // libera��o dos objetos da mem�ria
    FreeAndNil(Email);
    FreeAndNil(SSLHandler);
    FreeAndNil(smtp);
    Email.Free;
    SSLHandler.Free;
  end;
end;

procedure TfrmLogin2.FormActivate(Sender: TObject);
begin
  edUsuario.SetFocus;
end;

procedure TfrmLogin2.FormCreate(Sender: TObject);
begin
      frmLogin2.Height  := 190;
      UsuarioOK := false;
      ClaveOK   := false;
end;


procedure TfrmLogin2.Timer1Timer(Sender: TObject);
begin
if gbCambio.Visible  then
begin
pb1.StepIt;
  if pb1.position >= pb1.Max  then
  begin
    edClave.Text := '';
    pantallaNoExiste(1) ;
    cxbCambiar.Checked := False;
    btnEntrar.Enabled  := false;
  end
End;

//  if (not UsuarioOK) and (Length (trim(edUsuario.Text)) > 0)  then
//    Begin
//     if ValidarUsuario(edUsuario.Text) then
//       begin
//         edclave.Enabled := True;
//       end
//     else
//       begin
//         edclave.Enabled := false;
//       end;
//    End
//  Else
//    Begin
//      stbLogin.Panels[0].Text := ''; stbLogin.Panels[1].Text := '';
//    End;
end;


//==============================================================================
//   Validacion de Usuario
//==============================================================================
procedure TfrmLogin2.btnEntrarClick(Sender: TObject);
begin
 //----Comentario
  DataModulo1.tblUsuarios.Close;
  DataModulo1.tblUsuarios.SQL.Clear;
  DataModulo1.tblUsuarios.SQL.Add ('Select * from Usuario where ' );
  DataModulo1.tblUsuarios.SQL.Add (' Usuario = ' + coma + upperCase(edUsuario.Text) + coma);
  DataModulo1.tblUsuarios.Open;
  DataModulo1.tblUsuarios.First;

  if not DataModulo1.tblUsuarios.eof  then
  Begin
    if DataModulo1.tblUsuariosactivo.value then
    Begin
      CambiarClave  := DataModulo1.tblUsuarioscambiaClave.Value;
      if Not DataModulo1.tblUsuariosbloqueado.Value then
      Begin
        DataModulo1.tblUsuarios.edit;
        if DataModulo1.tblUsuariosclave.AsString = md5(edClave.Text) then
         begin
            DataModulo1.tblUsuariosintentos.Value := 0;
            frmLogin2.Free;
            application.CreateForm(TfrmPrincipal , frmPrincipal);
            frmPrincipal.Show;
         end
         else  //... Clave no coincide ...
         begin
            DataModulo1.tblUsuariosintentos.Value := DataModulo1.tblUsuariosintentos.Value + 1;
            stbLogin.Panels[0].Text := ' *** Clave NO COINCIDE *** ';
            stbLogin.Panels[1].Text := '(Intentos: '     +
                                    DataModulo1.tblUsuariosintentos.AsString + ' de ' +
                                    DataModulo1.tblUsuariosintentosMax.Asstring + ')';

//            lbIncorrecto.Caption := ' *** Clave NO COINCIDE (Intentos: '     +
//                                    DataModulo1.tblUsuariosintentos.AsString + ' de ' +
//                                    DataModulo1.tblUsuariosintentosMax.Asstring + ')';
            if DataModulo1.tblUsuariosintentos.Value >= DataModulo1.tblUsuariosintentosMax .value then
            begin
               DataModulo1.tblUsuariosbloqueado.Value  := True;
            end

         end;
         DataModulo1.tblUsuarios.Post;
      End;
      if DataModulo1.tblUsuariosbloqueado.Value then
      Begin
        PantallaBloqueado(1);
      End;
    End
    Else  //... Usuario Inactivo ....
    Begin
      stbLogin.Panels[0].Text := 'Usuario INACTIVO';
    End;
  End
  Else  //... Usuario No Existe ....
  begin
    stbLogin.Panels[0].Text := 'Usuario INACTIVO';
  end;
end;


function TfrmLogin2.ValidarUsuario(usuario : String): Boolean;
begin
  result := false;
  btnEntrar.Enabled    := False;
  DataModulo1.tblUsuarios.Close;
  DataModulo1.tblUsuarios.SQL.Clear;
  DataModulo1.tblUsuarios.SQL.Add ('Select * from Usuario where ' );
  DataModulo1.tblUsuarios.SQL.Add (' Usuario = ' + coma + upperCase(usuario) + coma);
  DataModulo1.tblUsuarios.Open;
  DataModulo1.tblUsuarios.First;

  if not DataModulo1.tblUsuarios.eof  then
  Begin
    CambiarClave := DataModulo1.tblUsuarioscambiaClave.Value ;
    if DataModulo1.tblUsuariosactivo.value then
    Begin
      if not DataModulo1.tblUsuariosbloqueado.Value then
      Begin

         result := true;
         UsuarioOK := True;
         PantallaBloqueado (0);

      End
      Else
      Begin
         Result   := False ;
         PantallaBloqueado(1);
      End;
    End
    Else  //... Usuario Inactivo ....
    Begin
         stbLogin.Panels[0].Text := '*** Usuario Inactivo ***';
    End;
  End
  Else  //... Usuario No Existe ....
  begin
    stbLogin.Panels[0].Text := '*** Usuario No Existe... ***'; stbLogin.Panels[1].Text :='';
    PantallaNoExiste (0);
  end;
end;

//==============================================================================
//                             Validar Usuario & Clave (ValidarClave)
//
// Descripcion: Valida que la combinacion de USUARIO y CLAVE existan.
//
// LLamado Por:
//            - edClaveChange
//------------------------------------------------------------------------------
// Por : Edwin Cedeño   |Fecha: 26-07-2016  |Hora:
//==============================================================================
function TfrmLogin2.ValidarClave(Usuario, Clave: String): Boolean;
var
  sfecha : string;
  dFecha : TDateTime;
  Continuar : boolean;

begin

  Result := False;
  DataModulo1.tblUsuarios.Close;
  DataModulo1.tblUsuarios.SQL.Clear;
  DataModulo1.tblUsuarios.SQL.Add (' Select * from Usuario where ' );
  DataModulo1.tblUsuarios.SQL.Add (' Usuario   = ' + coma + upperCase(usuario) + coma);
  DataModulo1.tblUsuarios.SQL.Add (' and Clave = ' + coma + MD5(clave) + coma);
  DataModulo1.tblUsuarios.Open;
  DataModulo1.tblUsuarios.First;

  if Not DataModulo1.tblUsuarios.eof  then
  begin
      Continuar := true;

      sfecha := DataModulo1.Crypt('D',DataModulo1.tblUsuariosclaveVence.AsString);
      dfecha := VarToDateTime(sfecha);

      if  DataModulo1.tblUsuarioscambiaClave.value  then
      begin
        if now <= dFecha then
          Continuar := True
        else
        begin
           Continuar := false;
           edClave.Text := '';
           ShowMessage('Clave Venció..., debe Gerenerar una Nueva...');
        end;
     end;

     if Continuar then
     Begin
        Result:= true;
        ClaveOK := true;
        cxbCambiar.Visible   := true;
        cxbCambiar.Checked   := true;
        gbCambio.Visible     := true;
        CambiarClave := DataModulo1.tblUsuarioscambiaClave.value;
        frmLogin2.Height    := 300;
        cxbCambiar.enabled := true;
      end
     else
     Begin
        Result := false;
        ClaveOK := False;
        PantallaNoExiste(1);
      End;

  end;
end;

function TfrmLogin2.PantallaBloqueado(bloqueado: Integer): Boolean;
begin
 if Bloqueado = 1 then
   Begin
      UsuarioOK               := False;
      edClave.Enabled         := false;
      btnEntrar.Enabled       := False;
      GroupBox1.Visible       := true;
      cxbCambiar.Visible      := false;
      gbCambio.Visible        := false;
      stbLogin.Panels[0].Text := 'Bloqueado, Solicite nueva Clave';
      frmLogin2.Height         := 300;
   End
   Else
   Begin
      stbLogin.Panels[0].Text := ''; stbLogin.Panels[1].Text := '';
//      btnEntrar.Enabled    := True;
      edClave.Enabled      := true;
      gbCambio.Visible     := false;
      frmLogin2.Height      := 190;
      GroupBox1.Visible    := false;
   End;
end;


function TfrmLogin2.PantallaNoExiste(Existe: Integer): Boolean;
begin
if Existe = 1 then

   Begin
      stbLogin.Panels[0].Text := ''; stbLogin.Panels[1].Text := '';
 //     btnEntrar.Enabled    := True;
      edClave.Enabled      := true;
      gbCambio.Visible     := false;
      frmLogin2.Height      := 190;
      GroupBox1.Visible    := false;
   End
   Else
   Begin
      UsuarioOK               := False;
      edClave.Enabled         := false;
      btnEntrar.Enabled       := False;
      GroupBox1.Visible       := False;
      cxbCambiar.Visible      := False;
      gbCambio.Visible        := False;
      stbLogin.Panels[0].Text := 'Usuario NO Existe';
      frmLogin2.Height         := 190;
   End;
end;

end.

//==============================================================================
//                             Nombre
// Descripcion:
// LLamado Por:
//------------------------------------------------------------------------------
// Elavorado Por : Edwin Cedeño   |Fecha:                |Hora:
//==============================================================================


{function TfrmLogin.EnvioDeCorreo(Correo , Clave: String): Boolean;
var
  Email: TIdMessage;
 // SSLHandler: TIdSSLIOHandlerSocketOpenSSL;
begin
  Email := TIdMessage.Create(nil);
  result := false;
//  SSLHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);

  try
  //  SSLHandler.MaxLineAction := maException;
//    SSLHandler.SSLOptions.Method := sslvTLSv1;
//    SSLHandler.SSLOptions.Mode := sslmUnassigned;
//    SSLHandler.SSLOptions.VerifyMode := [];
//    SSLHandler.SSLOptions.VerifyDepth := 0;

//    SMTP.IOHandler := SSLHandler;
    SMTP.Host := 'smtp.gmail.com';
    SMTP.Port := 587;
    SMTP.Username := 'info.coopena.pa@gmail.com';
    SMTP.Password := 'Coopena2016';
    SMTP.UseTLS := utUseExplicitTLS;

    Email.From.Address := 'Seguridad - COOPENA';
    Email.Recipients.EmailAddresses := correo; //'edwin.e.cedeno@gmail.com';
    Email.Subject := 'Generacion de Clave' ;
    Email.Body.Text := 'Buen día, usted ha solicitado se le genere una nueva clave : ' +
      clave +
      #13+#10 +  #13+#10 +
     'Esta clave deberá ser cambiada inmediatamente al ingresarla al sistema.' +
      #13+#10 +  #13+#10 + #13+#10 +  #13+#10 +
     'Estamos a la orden para cualquier consulta...'  ;

    try
      SMTP.Connect;
      SMTP.Authenticate;
    except
      on E:Exception do
      begin
        //Memo1.Text := E.Message;
        MessageDlg('Error en la autenticacion del correo Remitente: ' +
          E.Message, mtWarning, [mbOK], 0);
        Exit;
      end;
    end;

    // Envio da mensagem
    try
      SMTP.Send(Email);
      result:= true;
    //  MessageDlg('Correo Enviado Satisfactoriamente!', mtInformation, [mbOK], 0);
    except
      On E:Exception do
      begin
        MessageDlg('Error en el envio del mensaje: ' +
          E.Message, mtWarning, [mbOK], 0);
      end;
    end;
  finally
    // desconecta do servidor
    SMTP.Disconnect;
    // libera��o da DLL
    UnLoadOpenSSLLibrary;
    // libera��o dos objetos da mem�ria
    FreeAndNil(Email);
    FreeAndNil(SSLHandler);
    FreeAndNil(smtp);
    Email.Free;
    SSLHandler.Free;
  end;

end;    }


