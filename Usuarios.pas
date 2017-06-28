unit Usuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ventana2, Vcl.ComCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ToolWin,

  //--Componentes de correo
  IdSMTP, IdSSLOpenSSL, IdMessage, IdText, IdAttachmentFile,
  IdExplicitTLSClientServerBase, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTPBase, IdBaseComponent, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdServerIOHandler, IdServerIOHandlerSocket,
  IdServerIOHandlerStack, Vcl.Samples.Spin, FireDAC.UI.Intf, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Intf, FireDAC.Comp.UI, System.ImageList, Vcl.ImgList,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.Components, Data.Bind.DBScope,DateUtils;

type
  TfrmUsuarios = class(TfrmVentana)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    PageControl1: TPageControl;
    tsUsuario: TTabSheet;
    ToolBar8: TToolBar;
    bntUsuarioNuevo: TToolButton;
    btnUsuarioEliminar: TToolButton;
    btnUsuarioSalvar: TToolButton;
    Panel4: TPanel;
    Image1: TImage;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    idUsuario: TDBEdit;
    edNombre: TDBEdit;
    celular: TDBEdit;
    CategoryPanelGroup1: TCategoryPanelGroup;
    CategoryPanel1: TCategoryPanel;
    CategoryPanel2: TCategoryPanel;
    dbgProfesion: TDBGrid;
    Label4: TLabel;
    edApellido: TDBEdit;
    Label5: TLabel;
    correo: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    dpIngreso: TDateTimePicker;
    Label8: TLabel;
    DBCheckBox2: TDBCheckBox;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Label3: TLabel;
    DBCheckBox1: TDBCheckBox;
    dpDesde: TDateTimePicker;
    dpHasta: TDateTimePicker;
    Label11: TLabel;
    vigenciaDias: TDBEdit;
    GroupBox3: TGroupBox;
    Label12: TLabel;
    vigenciaClave: TDBEdit;
    Label13: TLabel;
    dpVence: TDateTimePicker;
    Label14: TLabel;
    Button1: TButton;
    Panel5: TPanel;
    usuarios: TDataSource;
    edClave: TButtonedEdit;
    SMTP: TIdSMTP;
    mensaje: TIdMessage;
    IdServerIOHandlerStack1: TIdServerIOHandlerStack;
    SSLHandler: TIdSSLIOHandlerSocketOpenSSL;
    Label9: TLabel;
    DBCheckBox3: TDBCheckBox;
    dgRoles: TDBGrid;
    roles: TDataSource;
    tsRol: TTabSheet;
    ToolBar1: TToolBar;
    btnRolNuevo: TToolButton;
    btnRolEliminar: TToolButton;
    btnRolSalvar: TToolButton;
    GroupBox4: TGroupBox;
    Label16: TLabel;
    Label15: TLabel;
    codigo: TDBEdit;
    nombre: TDBEdit;
    DBCheckBox5: TDBCheckBox;
    tsRolesUsuario: TTabSheet;
    ToolBar2: TToolBar;
    btnUsrRolNuevo: TToolButton;
    btnUsrRolEliminar: TToolButton;
    btnUsrRolSalvar: TToolButton;
    gbUsuarioRoles: TGroupBox;
    rolesUsuario: TDataSource;
    dblRol: TDBLookupComboBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    roles2: TDataSource;
    dbgRoles: TDBGrid;
    ToolButton1: TToolButton;
    btnRegenerar: TToolButton;
    Button2: TButton;
    sDiaClave: TSpinEdit;
    procedure FormShow(Sender: TObject);
    procedure edClaveRightButtonClick(Sender: TObject);
    procedure btnUsuarioSalvarClick(Sender: TObject);
    procedure edClaveChange(Sender: TObject);
    Function EnviaCorreoOK(Correo,Clave : String) : boolean;
    procedure Button1Click(Sender: TObject);

    Function MD5(S : String):String ;
    procedure dbgProfesionMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CategoryPanel2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure bntUsuarioNuevoClick(Sender: TObject);
    procedure btnRolNuevoClick(Sender: TObject);
    procedure btnRolSalvarClick(Sender: TObject);
    procedure dgRolesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbgProfesionCellClick(Column: TColumn);
    procedure edClaveEnter(Sender: TObject);
    procedure btnUsrRolNuevoClick(Sender: TObject);
    procedure btnUsrRolSalvarClick(Sender: TObject);
    procedure usuariosDataChange(Sender: TObject; Field: TField);
    Procedure RolesUsuarios;
    procedure vigenciaDiasChange(Sender: TObject);
    procedure dpDesdeChange(Sender: TObject);
    procedure vigenciaClaveChange(Sender: TObject);
    procedure btnRegenerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUsuarios: TfrmUsuarios;
  _claveNueva : boolean;

const
  Codes64 = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz+/';

implementation

{$R *.dfm}

uses DM1, Principal, Login,IdHashMessageDigest, Calendario;

//------------------------------------------------------------------------------
//
//
//------------------------------------------------------------------------------
function PassGen(Str: String): String;
const
  // Caracteres Utilizados para Generar la Contraseña Automaticamnete.
  Letras = '0123abcdefg456789+-*&$%#@!ABCDEFGHIJKLhijklmnoMNOPQRSTpqrstuvUVWwXxYyZz+-*&$%#@!';
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
  Sleep(40);
  Result := dato; //Edit2.Text := Dato;
end;

procedure TfrmUsuarios.bntUsuarioNuevoClick(Sender: TObject);
begin
  inherited;

  idUsuario.SetFocus;
  DataModulo1.usuarios.Append;
  DataModulo1.usuariosactivo.AsBoolean := True;
  dpIngreso.Date := now;
  dpDesde.Date := now;
  dpHasta.Date := now + 30;
  DataModulo1.usuariosvigenteDesde.AsDateTime := dpdesde.Date;
  DataModulo1.usuariosvigenteHasta.AsDateTime := dpHasta.Date;
  DataModulo1.usuariosfechaIngreso.AsDateTime := dpingreso.Date;
  DataModulo1.usuariosfechaCambioPass.Clear ;
  edClave.Clear;
end;

procedure TfrmUsuarios.btnRolNuevoClick(Sender: TObject);
begin
  inherited;
  //---
  codigo.SetFocus;
  DataModulo1.roles.append;
  DataModulo1.roles.FieldByName('fecha_aud').AsDateTime := now;
  DataModulo1.roles.FieldByName('usuario_aud').asstring := Usuario;
end;

procedure TfrmUsuarios.btnRolSalvarClick(Sender: TObject);
begin
  inherited;
  //---
  if (DataModulo1.roles.State IN [dsInsert]) then
//    DataModulo1.roles.FieldByName('idProfesion').Value  := Siguiente + 1
  else
   if  Not (DataModulo1.roles.State IN [dsEdit,dsInsert]) then
   Begin
    DataModulo1.roles.edit;
   End;

  Try
   DataModulo1.roles.post;
  except
   on E:Exception do
   begin
    showMessage('Error al salvar el Rol...');
   end;
  end;

end;

procedure TfrmUsuarios.btnUsrRolNuevoClick(Sender: TObject);
begin
  inherited;
  //---


  DataModulo1.rolesUsuario.append;
  DataModulo1.rolesUsuarioidCia.AsInteger := 1;
  DataModulo1.rolesUsuariofecha_aud.AsDateTime := now;
  DataModulo1.rolesUsuariousuario_aud.AsString := usuario;
  dblRol.SetFocus;


end;

procedure TfrmUsuarios.btnUsrRolSalvarClick(Sender: TObject);
begin
  inherited;
  //--- Salvar

  if  Not (DataModulo1.rolesUsuario.State IN [dsEdit,dsInsert]) then
  Begin
    DataModulo1.rolesUsuario.edit;
  End;

  DataModulo1.rolesUsuario.FieldByName('usuario').AsString :=
      DataModulo1.usuariosUsuario.AsString ;

  DataModulo1.rolesUsuario.FieldByName('idRoll').AsInteger  :=
  DataModulo1.roles2idRol.asinteger;
  DataModulo1.rolesUsuarionombreRol.AsString :=
      DataModulo1.roles2NombreRol.AsString ;

 Try
   DataModulo1.rolesUsuario.post;
  except
   on E:Exception do
   begin
    showMessage('Error al salvar el Rol...');
   end;
  end;

end;

procedure TfrmUsuarios.btnUsuarioSalvarClick(Sender: TObject);
var

  xfecha    : Tdate;
  xhora     : TTime;
  FechaFull : TdateTime;
  sFecha    : string;
  cFecha    : String;

begin
  inherited;
  //--- Salvar
   if (DataModulo1.MantProfesiones.State IN [dsInsert]) then
   begin
    DataModulo1.usuarios.FieldByName('clave').AsString := frmLogin.MD5(edclave.Text);
    DataModulo1.usuarios.edit;
   end;

   if  Not (DataModulo1.usuarios.State IN [dsEdit,dsInsert]) then
    Begin
      DataModulo1.usuarios.edit;
    End;

    if _claveNueva then
    Begin
     _claveNueva := false;
     xfecha := VarToDateTime(formatDateTime('yyyy-mm-dd',now));
     xhora  := VarToDateTime(FormatDateTime('hh:nn',Now));
     xhora  := xhora + strToTime('00:30');
     sfecha := FormatDateTime('yyyy-mm-dd',xfecha ) + ' ' + FormatDateTime('hh:nn',xhora);
     cFecha := DataModulo1.Crypt ('E',sfecha); // fecha encriptada

     DataModulo1.usuariosClaveVence.Value           := cFecha;
     DataModulo1.usuariosintentos.value             := 0;
     DataModulo1.usuariosbloqueado.value            := False;




     if EnviaCorreoOK(correo.Text , edclave.Text) then
     begin
      DataModulo1.usuarios.FieldByName('clave').AsString := frmLogin.MD5(edclave.Text);
      DataModulo1.usuarioscambiaClave.Value              := true ;
      DataModulo1.usuariosfechaCambioPass.AsDateTime     := date + 1;
     end;

    End;


   DataModulo1.Usuarios.FieldByName('idCia').Value                := 1;
   DataModulo1.Usuarios.FieldByName('fechaIngreso').AsDateTime    := dpIngreso.Date;
   DataModulo1.Usuarios.FieldByName('vigenteDesde').AsDateTime    := dpDesde.Date;
   DataModulo1.Usuarios.FieldByName('vigenteHasta').AsDateTime    := dpHasta.Date;
   DataModulo1.Usuarios.FieldByName('fechaCambioPass').AsDateTime := dpVence.Date;
   DataModulo1.Usuarios.FieldByName('vigenciaDias').value         := strToInt(vigenciaDias.Text);
   DataModulo1.usuarios.FieldByName('diasClave').Value            := sDiaClave.Value ;
//   DataModulo1.Usuarios.FieldByName('vigenciaClave').Value        :=



   Try
    DataModulo1.usuarios.post;
   except
    on E:Exception do
    begin
     showMessage('Error al salvar el Usuario...');
    end;
   end;


end;

procedure TfrmUsuarios.Button1Click(Sender: TObject);
var
 bSel : Integer;
 passw : string;
 continua  : string;
 xfecha    : Tdate;
 xhora     : TTime;
 FechaFull : TdateTime;
 sFecha    : string;
 cFecha    : String;
begin
  inherited;
  edclave.Text := passgen(edNombre.text );
  bSel         := MessageDlg('Esta seguro de Regenerar la Clave? ' ,mtConfirmation,
                              mbYesNoCancel, 2);

  if bsel = 6  then
   begin

    if EnviaCorreoOK(correo.Text , edClave.Text ) then
    Begin
      xfecha := VarToDateTime(formatDateTime('yyyy-mm-dd',now));
      xhora  := VarToDateTime(FormatDateTime('hh:nn',Now));
      xhora  := xhora + strToTime('00:30');
      sfecha := FormatDateTime('yyyy-mm-dd',xfecha) + ' ' + FormatDateTime('hh:nn',xhora);
      cFecha := DataModulo1.Crypt ('E',sfecha); // fecha encriptada

      DataModulo1.usuarios.Edit;
      DataModulo1.usuariosclave.AsString             := MD5(edclave.Text);
      DataModulo1.usuarioscambiaClave.Value          := true ;
      DataModulo1.usuariosfechaCambioPass.AsDateTime := date + 1;
      DataModulo1.usuariosClaveVence.Value           := cFecha;
      DataModulo1.usuariosintentos.value             := 0;
      DataModulo1.usuariosbloqueado.value            := False;

      DataModulo1.usuarios.Post;

    End;
   end;

end;

procedure TfrmUsuarios.CategoryPanel2MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  panel3.Visible := false;

end;

procedure TfrmUsuarios.dbgProfesionCellClick(Column: TColumn);
begin
  inherited;

  dpIngreso.Date := DataModulo1.Usuarios.FieldByName('fechaIngreso').AsDateTime;
  dpDesde.Date   := DataModulo1.Usuarios.FieldByName('vigenteDesde').AsDateTime;
  dphasta.Date   := DataModulo1.Usuarios.FieldByName('vigenteHasta').AsDateTime;
  dpVence.Date   := DataModulo1.Usuarios.FieldByName('fechaCambioPass').AsDateTime;
  sDiaClave.Value:= DataModulo1.Usuarios.FieldByName('diasClave').AsInteger;

  RolesUsuarios;

end;

procedure TfrmUsuarios.dbgProfesionMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  tsUsuario.TabVisible := true;
  tsRolesUsuario.TabVisible := true;
  tsRol.TabVisible     := false;


end;

procedure TfrmUsuarios.dgRolesMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  tsUsuario.TabVisible := false;
  tsRolesUsuario.TabVisible := false;
  tsRol.TabVisible     := true;

end;

procedure TfrmUsuarios.dpDesdeChange(Sender: TObject);
begin
  inherited;
  vigenciaDias.Text := intTostr(DaysBetween(dpdesde.Date , dpHasta.date));
end;

procedure TfrmUsuarios.edClaveChange(Sender: TObject);
begin
  inherited;
  //--- Cambio o asigno la clave
   _claveNueva    := true;


end;

procedure TfrmUsuarios.edClaveEnter(Sender: TObject);
begin
  inherited;
//  _claveNueva := True;
end;

procedure TfrmUsuarios.edClaveRightButtonClick(Sender: TObject);
begin
  inherited;
  edClave.Clear;
end;

procedure TfrmUsuarios.FormShow(Sender: TObject);
begin
  inherited;

  //----
   panel3.Top     := 43;
   panel3.Width   := 608;
   panel3.Left    := 297;
   panel3.Height  := 409;
   panel3.Anchors := [akLeft,akTop,akRight,akBottom];
   panel3.Visible := true;

   tsUsuario.TabVisible := true;
   tsRol.TabVisible     := false;

  //----
  DataModulo1.usuarios.Close;
  DataModulo1.usuarios.Open;
  DataModulo1.usuarios.First;

  DataModulo1.roles.Close;
  DataModulo1.roles.Open;
  DataModulo1.roles.First;

  DataModulo1.roles2.Close;
  DataModulo1.roles2.Open;
  DataModulo1.roles2.First;


end;

function TfrmUsuarios.EnviaCorreoOK(Correo, Clave: String): boolean;
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
      MessageDlg('Correo Enviado Satisfactoriamente!', mtInformation, [mbOK], 0);
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
function TfrmUsuarios.MD5(S: String): String;
begin
   with TIdHashMessageDigest5.Create do
   begin
      Result := HashStringAsHex(S);
    end;
end;

procedure TfrmUsuarios.RolesUsuarios;
begin
  DataModulo1.rolesUsuario.Close;
  DataModulo1.rolesUsuario.Params [0].value  :=
       DataModulo1.Usuarios.FieldByName('usuario').AsString ;
  DataModulo1.rolesUsuario.Open;

end;

procedure TfrmUsuarios.btnRegenerarClick(Sender: TObject);
var
 bSel : Integer;
 passw : string;
 continua  : string;
 xfecha    : Tdate;
 xhora     : TTime;
 FechaFull : TdateTime;
 sFecha    : string;
 cFecha    : String;
begin
  inherited;
  edclave.Text := passgen(edNombre.text );
  bSel         := MessageDlg('Esta seguro de Regenerar la Clave? ' ,mtConfirmation,
                              mbYesNoCancel, 2);

  if bsel = 6  then
   begin

    if EnviaCorreoOK(correo.Text , edClave.Text ) then
    Begin
      xfecha := VarToDateTime(formatDateTime('yyyy-mm-dd',now));
      xhora  := VarToDateTime(FormatDateTime('hh:nn',Now));
      xhora  := xhora + strToTime('00:30');
      sfecha := FormatDateTime('yyyy-mm-dd',xfecha) + ' ' + FormatDateTime('hh:nn',xhora);
      cFecha := DataModulo1.Crypt ('E',sfecha); // fecha encriptada

      DataModulo1.usuarios.Edit;
      DataModulo1.usuariosclave.AsString             := MD5(edclave.Text);
      DataModulo1.usuarioscambiaClave.Value          := true ;
      DataModulo1.usuariosfechaCambioPass.AsDateTime := date + 1;
      DataModulo1.usuariosClaveVence.Value           := cFecha;
      DataModulo1.usuariosintentos.value             := 0;
      DataModulo1.usuariosbloqueado.value            := False;

      DataModulo1.usuarios.Post;

    End;
   end;

end;

procedure TfrmUsuarios.usuariosDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  //--- Vigencia del Usuario
  vigenciaDias.Text := intTostr(DaysBetween(dpdesde.Date , dpHasta.date));

  if DataModulo1.usuariosactivo.AsBoolean  then
  begin
     btnRegenerar.Enabled := true;
  end
  else
  begin
     btnRegenerar.Enabled := false;
  end;


  RolesUsuarios;
end;

procedure TfrmUsuarios.vigenciaClaveChange(Sender: TObject);
begin
  inherited;
  dpVence.Date := dpVence.Date + strToInt(vigenciaClave.Text) ;
end;

procedure TfrmUsuarios.vigenciaDiasChange(Sender: TObject);
begin
  inherited;
  dpHasta.Date := dpDesde.Date + StrToint(vigenciaDias.Text) ;
end;

end.

