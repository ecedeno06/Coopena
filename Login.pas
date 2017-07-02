unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls,system.Math,
  //atDiagram, LiveDiagram, wsClasses, wsDiagram,
 // wsControls, wsMain, wsDB, wsADO,
  //--Componentes de correo
  IdSMTP, IdSSLOpenSSL, IdMessage, IdText, IdAttachmentFile,
  IdExplicitTLSClientServerBase, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTPBase, IdBaseComponent, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdServerIOHandler, IdServerIOHandlerSocket,
  IdServerIOHandlerStack, Vcl.Samples.Spin, FireDAC.UI.Intf, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Intf, FireDAC.Comp.UI, System.ImageList, Vcl.ImgList,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.Components, Data.Bind.DBScope, Vcl.ToolWin,
  Vcl.Buttons;

type
  TfrmLogin = class(TForm)
    mensaje: TIdMessage;
    SMTP: TIdSMTP;
    IdServerIOHandlerStack1: TIdServerIOHandlerStack;
    SSLHandler: TIdSSLIOHandlerSocketOpenSSL;
    Timer1: TTimer;
    stbLogin: TStatusBar;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    edUsuario: TEdit;
    Label2: TLabel;
    cxbCambiar: TCheckBox;
    edClave: TEdit;
    btnEntrar: TButton;
    SolicitarClave: TGroupBox;
    lblMensaje1: TLabel;
    cxbOlvidoClave: TCheckBox;
    btnGenerarClave: TButton;
    gbSecreta: TGroupBox;
    lbPregunta: TLabel;
    edRespuesta: TEdit;
    gbCambio: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    edClaveNueva: TEdit;
    edClaveConfirmacion: TEdit;
    Button1: TButton;
    SpinEdit1: TSpinEdit;
    pb1: TProgressBar;
    ImageList1: TImageList;
    Image2: TImage;
    TabSheet2: TTabSheet;
    CategoryPanelGroup1: TCategoryPanelGroup;
    CategoryPanel2: TCategoryPanel;
    BindingsList1: TBindingsList;
    ctMision: TCategoryPanel;
    ctVision: TCategoryPanel;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    mVision: TMemo;
    mMision: TMemo;
    ToolBar2: TToolBar;
    btnGeneralesSalvar1: TToolButton;
    BalloonHint1: TBalloonHint;
    Label5: TLabel;
    edRespuesta2: TEdit;
    sbCambio: TStatusBar;
    procedure cxbOlvidoClaveClick(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
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
    Function preguntaSecreta(_usuario:string) : String;
    Function SolicitarClaveNueva(titulo:string; msg:String) : boolean;



    //    Function EnvioDeCorreo(Correo,Clave : String) : Boolean;
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    Function PantallaBloqueado(bloqueado : Integer):Boolean;
    Function PantallaNoExiste(Existe : Integer) : Boolean;
    procedure edClaveKeyPress(Sender: TObject; var Key: Char);
    Procedure Entrar;
    procedure SpeedButton1Click(Sender: TObject);


    function ConectarServidorEmail (servidor : string; usuario : string; puerto : integer) : boolean;
    procedure gbCambioEnter(Sender: TObject);
    procedure edUsuarioExit(Sender: TObject);
    procedure edClaveChange(Sender: TObject);

//    function enviarEmail (servidor : string; usuario : string; contrasena : string;
//    puerto : integer; asunto : string; mensaje : TStringList; conAutenticacion : boolean;
//    emisor : string; nombreEmisor : string; destinatario : string; cc : string) : boolean;

//    Function ValidaClave(usuario,clave):Boolean;
  private
    Function CambiarClave1(titulo:string; msg:String) : boolean;
    { Private declarations }
  public
    { Public declarations }
    Function MD5(S : String):String ;

  end;

const
  Codes64 = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz+/';

var
  frmLogin: TfrmLogin;
  compEnvioEmail : TIdSMTP;
  _bloqueado     : boolean;
  _activo        : boolean;
  _cambioPass    : boolean;
  _mensaje       : string;
  _claveVence    : int16;


implementation

{$R *.dfm}

uses DM1, Principal,IdHashMessageDigest, Calendario ;

function TfrmLogin.ConectarServidorEmail(servidor, usuario: string;
  puerto: integer): boolean;
begin
  compEnvioEmail := TIdSMTP.Create(nil);
  compEnvioEmail.host := servidor;
  compEnvioEmail.Username := usuario;
  compEnvioEmail.Port := puerto;
  try
    compEnvioEmail.connect;
  except
    compEnvioEmail.Free;
    ConectarServidorEmail := false;
  end;
end;

//==============================================================================
//                             Cambiar  Clave  (CambiarClave1)
//
// Descripcion:  despliega la informacion para cambiar la clave
//
// LLamado Por:
//            -
//------------------------------------------------------------------------------
// Elavorado Por : Edwin Cedeño   |Fecha:                |Hora:
//==============================================================================
function TfrmLogin.CambiarClave1(titulo, msg: String): boolean;
begin

  gbCambio.Visible  := true;
  gbCambio.Top      := 111;
  gbCambio.left     := 24;
  SolicitarClave.Visible := False;
  btnEntrar.Enabled := False;
  edClaveNueva.Clear;
  edClaveConfirmacion.Clear;
  gbCambio.Caption := Titulo;
  stbLogin.Panels[0].Text := msg;


end;

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
  Letras = '0123abcd+-*&$%#@!./efg456789ABCDEFGHIJKLhijklmnoMNOPQRSTpqrstuvUVWwXxYyZz+-*&$%#@!.';
var
  Resul : String;
  Dato : String;
begin
  Result := '';
  Dato := Resul+Letras[1+Random(Length(Letras))] +
          Resul+Letras[1+Random(Length(Letras))] +
          Resul+Letras[1+Random(Length(Letras))] +
          Resul+Letras[1+Random(Length(Letras))] +
          Resul+Letras[1+Random(Length(Letras))] +
          Resul+Letras[1+Random(Length(Letras))] +
          Resul+Letras[1+Random(Length(Letras))] +
          Resul+Letras[1+Random(Length(Letras))] +
          Resul+Letras[1+Random(Length(Letras))] +
          Resul+Letras[1+Random(Length(Letras))];

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
function TfrmLogin.MD5(S: String): String;
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
procedure TfrmLogin.cxbCambiarClick(Sender: TObject);
begin
  pb1.Position := 0;
  edRespuesta2.Enabled := true;
  preguntaSecreta(edUsuario.Text);
  edRespuesta2.Text    := '';
  edRespuesta2.PasswordChar := #0;
  if respuesta = '' then
  begin
    label5.Caption := 'Pregunta Secreta?';
    edRespuesta2.Enabled := false; //'..No Tiene configurada...';
    edRespuesta2.PasswordChar := #0;
    edRespuesta2.Text    := '..No Tiene configurada...';
  end;
  if cxbCambiar.Checked  then
  begin
      CambiarClave1('','Cambie antes de que venza el tiempo...');
      sbCambio.Panels[0].Text := 'Cambie antes de que venza el tiempo...';
  end
  else
  begin
//    frmLogin.Height   := 250;;
    gbCambio.Visible  := false;
    SolicitarClave.Visible := False;
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
procedure TfrmLogin.cxbOlvidoClaveClick(Sender: TObject);
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
    DataModulo1.Recuperarcion.Sql.Add(' Select ' + 'P' + trim(Secreta) +' as Pregunta, R'+trim(Secreta) + ' as Respuesta');
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


procedure TfrmLogin.edClaveChange(Sender: TObject);
var
 sfecha : string;
 dfecha : tdateTime;
 _ahora : tdateTime;
begin
  if Length (trim(edClave.Text)) > 0  then
  begin
    btnEntrar.Enabled := True;
    if ValidarClave( edUsuario.Text,edClave.Text ) then
    begin
      sfecha := DataModulo1.Crypt('D',DataModulo1.tblUsuariosclaveVence.AsString);
      dfecha := VarToDateTime(sfecha);
      _ahora := now;
      //--- Validar si clave vencio ----
      if (_ahora >= dfecha) then
      begin
         SolicitarClaveNueva('Clave Vencio...','Clave Vencio, debe solicitar una nueva...');
      end;

      if ( DataModulo1.tblUsuarioscambiaClave.value)  then
      begin
        cxbCambiar.Visible   := true;
        cxbCambiar.Checked   := true;
        cxbCambiar.enabled   := false;
        CambiarClave1('','Requiere Cambiar la Clave...Cambie antes de que venza el tiempo...');
      end
      Else
      begin
        cxbCambiar.Visible   := true;
        cxbCambiar.Checked   := false;
        cxbCambiar.enabled   := true;
        gbCambio.Visible     := false;
        btnEntrar.Enabled    := true;
        stbLogin.Panels[0].Text := 'Bienvenido...';
      end;


    end
    Else  //... Clave incorrecta
    Begin

      cxbCambiar.Visible := false;
      gbCambio.Visible   := False;
      stbLogin.Panels[0].Text := 'Clave Incorrecta...';

    End;
  end
  Else
    stbLogin.Panels[0].Text := '';
end;





//     begin
//      edClave.Enabled := false;
//     end;
//  end
//  Else
//  begin
//    btnEntrar.Enabled := False;
//    stbLogin.Panels[0].Text := '';
//
//  end;




procedure TfrmLogin.edClaveEnter(Sender: TObject);
begin

 //
//  pantallaNoExiste(1);
//  btnEntrar.Enabled := false;
end;

procedure TfrmLogin.edClaveKeyPress(Sender: TObject; var Key: Char);
begin
if ( key = #13) then
  begin
 //    entrar;
     btnEntrar.SetFocus ;
  end;
end;

procedure TfrmLogin.edClaveNuevaExit(Sender: TObject);
begin
  if (edClave.Text = edClaveNueva.text) and (Length(Trim(edClave.text)) > 0 ) then
  Begin

    ShowMessage('Clave Nueva No puede ser Igual a la actual...');
    edClaveNueva.Clear;
    edClaveConfirmacion.Clear;
//    edClave.Clear;

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

procedure TfrmLogin.edUsuarioEnter(Sender: TObject);
begin

// stbLogin.Panels[0].Text := '' ;
// stbLogin.Panels[1].Text := '' ;
 edClave.Text            := '';

 gbCambio.Visible        := False;
 SolicitarClave.Visible       := false;
 cxbCambiar.Visible      := false;
 cxbCambiar.Checked      := false;
 gbSecreta.Visible       := False;

 _bloqueado     := false;
 _activo        := false;
 _cambioPass    := false;

end;

procedure TfrmLogin.edUsuarioExit(Sender: TObject);
begin
 UsuarioOK              := False;
// ClaveOK                := False;
 edClave.Text           := '';
// edClave.Enabled        := False;
 cxbOlvidoClave.Checked := False;
 if Not UsuarioOK  then
 begin

   if ValidarUsuario(edUsuario.Text) then
   begin
      if not DataModulo1.tblUsuariosbloqueado.Value then
      Begin
        edClave.Text           := '';
        edClave.Enabled        := true;
        edclave.SetFocus;
        stbLogin.Panels[0].Text := ''; stbLogin.Panels[1].Text := '';
      End
      Else
      Begin
        edClave.Enabled        := false;
        SolicitarClave.Visible      := true;
        SolicitarClave.Top          := 111;
        SolicitarClave.left         := 24;
        PantallaBloqueado(1);
      End;
   end
   Else
   Begin
     edClave.Text           := '';
     edClave.Enabled        := false;
     edUsuario.SetFocus ;
   End;
 end;
end;

procedure TfrmLogin.btnGenerarClaveClick(Sender: TObject);

var
  continua  : string;
  passw     : String;
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
    ShowMessage(passw);
    if true then //EnviaCorreoOK(DataModulo1.tblUsuarioscorreo.AsString , passw) then
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
        ShowMessage ('Erro al enviar Correo: '+ E.Message);
      end

    End;

    SolicitarClave.visible := False;
//    frmLogin.Height  := 250;
  end
  Else
  Begin
    ShowMessage('No Logro enviar el Correo, Solicite nueva clave...');
  End;
 end;
screen.cursor:=crMyCursor;
end;


procedure TfrmLogin.Button1Click(Sender: TObject);
var
  Continua,cfecha : String;
  claveVence : int16;
  sfecha : string;

begin

  if respuesta <> '' then
  Begin
    if edRespuesta2.Text = DataModulo1.Crypt('D',Respuesta) then
      Continua := 'S'
    Else
    begin
      Continua := 'N';
      ShowMessage('La respuesta secreta no coincide...');
      edRespuesta.Text := '';
    end;
    End
  Else //----respuesta Nula
  Begin
    if not edRespuesta2.Enabled then
    begin
       Continua := 'S'
    end;
  end;



  if (Length (edClaveConfirmacion.Text) > 0) and (Continua = 'S')  then
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

      claveVence := DataModulo1.tblusuariosdiasClave.AsInteger ;
      sfecha := FormatDateTime('yyyy-mm-dd',now + ClaveVence) ;
      cFecha := DataModulo1.Crypt ('E',sfecha);

      DataModulo1.CambiarClave.Close;
      DataModulo1.CambiarClave.SQL.Clear;
      DataModulo1.CambiarClave.SQL.Add('Update USUARIO set ');
      DataModulo1.CambiarClave.SQL.Add(' Clave = ' + coma + MD5(edClaveNueva.Text) + coma);
      DataModulo1.CambiarClave.SQL.Add(',CambiaClave = ' + coma + 'False' + coma);
      DataModulo1.CambiarClave.SQL.Add(',FechaCambioPass = ' + coma + FormatDateTime('yyyy-mm-dd hh:nn:ss',now) + coma);
      DataModulo1.CambiarClave.SQL.Add(',Intentos        = ' + coma + '0' + coma);
      DataModulo1.CambiarClave.SQL.Add(',Bloqueado       = ' + coma + 'False' + coma);
      //---- Vencimiento de la clave
      DataModulo1.CambiarClave.SQL.Add(',ClaveVence      = ' + coma + cFecha + coma);


      DataModulo1.CambiarClave.SQL.Add(' Where usuario   = ' + coma + upperCase(edUsuario.Text) + coma );
//      DataModulo1.CambiarClave.SQL.Add(' and   CLAVE     = ' + coma + MD5(edClave.Text) + coma);
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
      SolicitarClave.Visible    := false;
      edClave.SetFocus;
//      edClave.Clear;

    End;
  End
  Else
  Begin
    ShowMessage('Error al Asignar Clave Nueva');
    edClaveNueva.Clear;
    edClaveConfirmacion.Clear;
    edClaveNueva.SetFocus;
  End;
end;




function TfrmLogin.ClaveUsada(Usuario, Clave: String): boolean;
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



//==============================================================================
//                            Accion de entrar  (Entrar)
//
// Descripcion:
//       1- Verifica que el usuario existe
//       2- Carga los roles activos
//
// LLamado Por:
//            - btnEntrarClick
//------------------------------------------------------------------------------
//       Por                |     Fecha         |    Hora
//------------------------------------------------------------------------------
// 00- Edwin Cedeño         | 26-07-2016        |
// 01- Edwin cedeno         | 5-abr-2017        | 9:17pm (carga de Roles)
//==============================================================================
procedure TfrmLogin.Entrar;
begin
  DataModulo1.tblUsuarios.Close;
  DataModulo1.tblUsuarios.SQL.Clear;
  DataModulo1.tblUsuarios.SQL.Add (' select *  ' );
  DataModulo1.tblUsuarios.SQL.Add (' from  Usuario ' );
  DataModulo1.tblUsuarios.SQL.Add (' where Usuario = ' + coma + upperCase(edUsuario.Text) + coma);
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
           Usuario := edUsuario.Text;

           //[01]--- Carga de Roles
           _roles := '';

           DataModulo1.rolesUsuarioLogin.close;
           DataModulo1.rolesUsuarioLogin.Params [0].Value := usuario;
           DataModulo1.rolesUsuarioLogin.open;
           DataModulo1.rolesUsuarioLogin.First;

           while not DataModulo1.rolesUsuarioLogin.eof do
           begin

              if length(trim(_roles)) > 0  then
                _Roles := _roles + ',' + DataModulo1.rolesUsuarioLogin.FieldByName('codigoRol').AsString
              else
                _Roles := DataModulo1.rolesUsuarioLogin.FieldByName('CodigoRol').AsString;

              DataModulo1.rolesUsuarioLogin.Next;

           end;
      //     showmessage(_Roles);
           //--- cierra las tablas
           DataModulo1.rolesUsuarioLogin.close;
      //     DataModulo1.tblUsuarios.close;
           frmLogin.Free;

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
    stbLogin.Panels[0].Text := 'Usuario No Existe';
  end;
end;


function TfrmLogin.EnviaCorreoOK(Correo, Clave: String): boolean;
var
  Email: TIdMessage;
 // SSLHandler: TIdSSLIOHandlerSocketOpenSSL;
begin
  Email := TIdMessage.Create(nil);
  result := false;
//  SSLHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);

  try
    SMTP.Host := 'smtp.gmail.com';
//    SMTP.Port := 25;
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


procedure TfrmLogin.EnvioDeCorreo (Clave : String);
var
  Email: TIdMessage;
begin
  Email := TIdMessage.Create(nil);
  try
    SMTP.Host := 'smtp.gmail.com';
    SMTP.Port := 587;
    SMTP.Username := 'edwin.e.cedeno@gmail.com'; //'rmedina1470@gmail.com';
    SMTP.Password := 'Reina911.' ; // 'roly1470';
    SMTP.UseTLS := utUseExplicitTLS;
    showMessage(Clave);
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

procedure TfrmLogin.FormActivate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  edUsuario.SetFocus;
  mVision.Text := 'Brindar a nuestros Socios, la confianza ....';
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
  UsuarioOK := false;
  ClaveOK   := false;
end;




procedure TfrmLogin.gbCambioEnter(Sender: TObject);
begin
   btnEntrar.Enabled    := false;
end;

procedure TfrmLogin.Timer1Timer(Sender: TObject);
begin
  if gbCambio.Visible  then
  begin
    pb1.StepIt;
    if pb1.position >= pb1.Max  then
    begin
      edClave.Text := '';
      pantallaNoExiste(1) ;
      cxbCambiar.Checked := False;
      cxbCambiar.Visible := False;
      btnEntrar.Enabled  := false;
    end
  End;
end;


//==============================================================================
//   Validacion de Usuario
//==============================================================================
procedure TfrmLogin.btnEntrarClick(Sender: TObject);
begin
    entrar;
end;


function TfrmLogin.ValidarUsuario(usuario : String): Boolean;
begin
  result := false;
  btnEntrar.Enabled    := False;
  DataModulo1.tblUsuarios.Close;
  DataModulo1.tblUsuarios.SQL.Clear;
  DataModulo1.tblUsuarios.SQL.Add (' select * ' );
  DataModulo1.tblUsuarios.SQL.Add (' from usuario ' );
  DataModulo1.tblUsuarios.SQL.Add (' where Usuario   = ' + coma + upperCase(usuario) + coma);

  DataModulo1.tblUsuarios.Open;
  DataModulo1.tblUsuarios.First;

  if not DataModulo1.tblUsuarios.eof  then
  Begin
    if DataModulo1.tblUsuariosactivo.value then
    Begin
      result := true;
    End
    Else  //... Usuario Inactivo ....
    Begin
      result := false;
      stbLogin.Panels[0].Text := '*** Usuario Inactivo ***';
    End;
  End
  Else  //... Usuario No Existe ....
  begin
    stbLogin.Panels[0].Text := '*** Usuario No Existe... ***'; stbLogin.Panels[1].Text :='';
    PantallaNoExiste (0);
    result := false;
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
function TfrmLogin.ValidarClave(Usuario, Clave: String): Boolean;
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

      //--- Validar si la clave requiere cambio
      _claveVence := DataModulo1.tblUsuarios.FieldByName('diasClave').AsInteger;
      if DataModulo1.tblUsuarioscambiaClave.value then
      begin
        begin
          Continuar := true;
          edClave.Text := '';
          cxbCambiar.Visible   := true;
          cxbCambiar.Checked   := true;
          gbCambio.Visible     := true;
          CambiarClave := DataModulo1.tblUsuarioscambiaClave.value;
          cxbCambiar.enabled := false;
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
     //   frmLogin.Height    := 380;
       cxbCambiar.enabled := true;
      end
     else
     Begin
        Result := false;
        ClaveOK := False;
        PantallaNoExiste(1);
      End;

  end
  Else
  Begin
    Result := false;
    ClaveOK := False;
    PantallaNoExiste(1);
  End;
end;

function TfrmLogin.PantallaBloqueado(bloqueado: Integer): Boolean;
begin
 if Bloqueado = 1 then
   Begin
      UsuarioOK               := False;
 //     edClave.Enabled         := false;
      btnEntrar.Enabled       := False;
      SolicitarClave.Visible       := true;
      SolicitarClave.Top           := 111;
      SolicitarClave.left          := 24;
      cxbCambiar.Visible      := false;
      gbCambio.Visible        := false;
      edRespuesta.Text        := '';
      stbLogin.Panels[0].Text := 'Bloqueado, Solicite nueva Clave';
   End
   Else
   Begin
      stbLogin.Panels[0].Text := ''; stbLogin.Panels[1].Text := '';
//      edClave.Enabled      := true;
      gbCambio.Visible     := false;
      SolicitarClave.Visible    := false;
   End;
end;


function TfrmLogin.PantallaNoExiste(Existe: Integer): Boolean;
begin
  if Existe = 1 then
   Begin
      stbLogin.Panels[0].Text := ''; stbLogin.Panels[1].Text := '';
 //     btnEntrar.Enabled    := True;
      edClave.Enabled      := true;
      gbCambio.Visible     := false;
 //     frmLogin.Height      := 250;
      SolicitarClave.Visible    := false;
   End
   Else
   Begin
      UsuarioOK               := False;
//      edClave.Enabled         := false;
      btnEntrar.Enabled       := False;
      SolicitarClave.Visible       := False;
      cxbCambiar.Visible      := False;
      gbCambio.Visible        := False;
      stbLogin.Panels[0].Text := 'Usuario NO Existe';
 //     frmLogin.Height         := 250;
   End;
end;

function TfrmLogin.preguntaSecreta(_usuario: string): String;
var
 Secreta : string;
begin
//---
  Secreta := intToStr(RandomRange(1,4));
  Respuesta               := '';

  DataModulo1.Recuperarcion.Close;
  DataModulo1.Recuperarcion.Sql.Clear;
  DataModulo1.Recuperarcion.Sql.Add(' Select ' + 'P' + trim(Secreta) +' as Pregunta, R'+trim(Secreta) + ' as Respuesta');
  DataModulo1.Recuperarcion.Sql.Add(' From ClaveRecuperacion Where llave = ' + coma + MD5(edUsuario.Text) + coma );
  DataModulo1.Recuperarcion.open;
  DataModulo1.Recuperarcion.First;

  if Not DataModulo1.Recuperarcion.eof then
  Begin
    Label5.Caption  := DataModulo1.Crypt ('D',dataModulo1.RecuperarcionPregunta.asstring);
    Respuesta       := DataModulo1.RecuperarcionRespuesta.AsString;
    result          := Respuesta;
  End
  Else
  Begin
    Respuesta := '';
    result := '';
    End;
end;




function TfrmLogin.SolicitarClaveNueva(titulo, msg: String): boolean;
begin
//---
  cxbCambiar.Visible   := false;
  cxbCambiar.Checked   := false;
  btnEntrar.Enabled    := false;
  stbLogin.Panels[0].Text := msg;
  edClave.Enabled         := false;
  SolicitarClave.Visible  := true;
  SolicitarClave.Caption  := titulo;
  SolicitarClave.Top      := 111;
  SolicitarClave.left     := 24;
  Result := true;
end;

procedure TfrmLogin.SpeedButton1Click(Sender: TObject);
begin

end;


//Función para conectar con el servidor de email
//function ConectarServidorEmail (servidor : string; usuario : string; puerto : integer) : boolean;
//begin
//  compEnvioEmail := TIdSMTP.Create(nil);
//  compEnvioEmail.host := servidor;
//  compEnvioEmail.userid := usuario;
//  compEnvioEmail.Port := puerto;
//  try
//    compEnvioEmail.connect;
//  except
//    compEnvioEmail.Free;
//    ConectarServidorEmail := false;
//  end;
//end;

//enviar email
{
function enviarEmail (servidor : string; usuario : string; contrasena : string;
    puerto : integer; asunto : string; mensaje : TStringList; conAutenticacion : boolean;
    emisor : string; nombreEmisor : string; destinatario : string; cc : string) : boolean;
var
  compMensaje : TIdMessage;
  textoTemp : string;
  tipoAutenticacion : TAuthenticationType;
  envioCorrecto : boolean;
begin
  if conAutenticacion then
  begin
    compEnvioEmail.AuthenticationType := atLogin;
    compEnvioEmail.UserId := usuario;
    compEnvioEmail.Password := contrasena;
  end
  else
    compEnvioEmail.AuthenticationType := atNone;
  compMensaje := TIdMessage.Create (nil);
  compMensaje.From.Address := emisor;
  compMensaje.From.Name := nombreEmisor;
  compMensaje.Recipients.Add.Address := destinatario;
  compMensaje.CCList.Add.Address := cc;
  compMensaje.Body.AddStrings (mensaje);
  compMensaje.Subject := asunto;
  compMensaje.ReplyTo.Add.Address := emisor;
  envioCorrecto := true;
  try
    compEnvioEmail.Send(compMensaje);
  except
    envioCorrecto := false;
  end;
  compMensaje.Free;
  enviarEmail := envioCorrecto;
end;
    }
end.

 {
//==============================================================================
//                             Nombre
// Descripcion:
// LLamado Por:
//------------------------------------------------------------------------------
// Elavorado Por : Edwin Cedeño   |Fecha:                |Hora:
//==============================================================================


function TfrmLogin.EnvioDeCorreo(Correo , Clave: String): Boolean;
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

}





