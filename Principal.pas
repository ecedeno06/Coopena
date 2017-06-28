unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Imaging.jpeg, Vcl.ToolWin, Vcl.Menus, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.GIFImg;

type
  TfrmPrincipal = class(TForm)
    stbPrincipal: TStatusBar;
    ToolBar1: TToolBar;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton8: TToolButton;
    Splitter2: TSplitter;
    Image1: TImage;
    dtpFecha1: TDateTimePicker;
    GroupBox1: TGroupBox;
    ToolBar2: TToolBar;
    ToolButton14: TToolButton;
    Panel1: TPanel;
    Label1: TLabel;
    Menu: TMainMenu;
    mnuArchivo: TMenuItem;
    Paises1: TMenuItem;
    Monedas1: TMenuItem;
    Bancos1: TMenuItem;
    Sucursales1: TMenuItem;
    N5: TMenuItem;
    Idiomas: TMenuItem;
    r1: TMenuItem;
    Etnias1: TMenuItem;
    N3: TMenuItem;
    Tarjetas1: TMenuItem;
    N4: TMenuItem;
    Clientes1: TMenuItem;
    mnSocios: TMenuItem;
    Procesos1: TMenuItem;
    N11: TMenuItem;
    Seguridad1: TMenuItem;
    Usuarios1: TMenuItem;
    N12: TMenuItem;
    Roles1: TMenuItem;
    Encriptar1: TMenuItem;
    Encriptar2: TMenuItem;
    Perfil1: TMenuItem;
    N1: TMenuItem;
    ToolButton4: TToolButton;
    cpPrincipal: TCategoryPanelGroup;
    cpPrincipalNoticias: TCategoryPanel;
    mMision: TMemo;
    cpPrincipalTareas: TCategoryPanel;
    mVision: TMemo;
    cpPrincipalCumpleanos: TCategoryPanel;
    dtsCumpleanos: TDataSource;
    tvHB: TTreeView;
    Finalidades1: TMenuItem;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    MantCargos1: TMenuItem;
    Profesiones1: TMenuItem;
    ToolButton7: TToolButton;
    Companas1: TMenuItem;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    TipoProducto1: TMenuItem;
    ToolButton1: TToolButton;
    SectorEconmico1: TMenuItem;
    ToolButton11: TToolButton;
    mnuArea: TMenuItem;
    Provincias1: TMenuItem;
    ToolButton12: TToolButton;
    Parentezcos1: TMenuItem;
    ToolButton13: TToolButton;
    tipoDocumentos1: TMenuItem;
    ToolButton15: TToolButton;
    DocumentosSocio1: TMenuItem;
    Cooperativa1: TMenuItem;
    Parametros1: TMenuItem;
    mnuPrinUtils: TMenuItem;
    Image2: TImage;
    N2: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    Contabilidad2: TMenuItem;
    Ajustes1: TMenuItem;
    iposdeCuentas1: TMenuItem;
    CatalogoContable1: TMenuItem;
    Procesos2: TMenuItem;
    RegistrodeTransacciones1: TMenuItem;
    N9: TMenuItem;
    AnulaciondeDocumentos1: TMenuItem;
    AjustedeCuentasEspeciales1: TMenuItem;
    Caja1: TMenuItem;
    N8: TMenuItem;
    Reportes1: TMenuItem;
    ransacciones1: TMenuItem;
    MovimientosporCuenta1: TMenuItem;
    ConsultadeDocumento1: TMenuItem;
    N10: TMenuItem;
    BalanceGeneral1: TMenuItem;
    BalancedePrueba1: TMenuItem;
    EstadodeResultado1: TMenuItem;
    N13: TMenuItem;
    Procesos3: TMenuItem;
    N14: TMenuItem;
    Generarmorosidad1: TMenuItem;
    GenerarCalculosdeInteres1: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    Cheques1: TMenuItem;
    ipoCuenta1: TMenuItem;
    Autorizaciones1: TMenuItem;
    CuentasdeChequera1: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    GestionarCheques1: TMenuItem;
    SolicituddeCheque1: TMenuItem;
    N19: TMenuItem;
    AprobaciondeCheques1: TMenuItem;
    ImpresiondeCheque1: TMenuItem;
    N20: TMenuItem;
    AnularCheque1: TMenuItem;
    ChequesCaja1: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    mnuArchivoPaises: TMenuItem;
    Asociaciones1: TMenuItem;
    mnuFrecuenciaPagos: TMenuItem;
    mnuFormaPagos: TMenuItem;
    mnuTiposIngresos: TMenuItem;
    ParametrosFinan1: TMenuItem;
    mnuActividadesEco: TMenuItem;
    mnuVentanas: TMenuItem;
    N23: TMenuItem;
    mnu_Cont_Cheque: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure Encriptar2Click(Sender: TObject);
    procedure Perfil1Click(Sender: TObject);
    procedure mnSociosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    Function Cumpleaños(dia, mes : integer ) : Boolean;
    Procedure CargarTreeView;
    Function Telefonos(Socio : Integer) : Boolean;
    Function Correos(Socio : Integer) : Boolean;
    Function HB_Herederos (dia,mes : integer) : boolean;
    procedure dtpFecha1Change(Sender: TObject);
    procedure Finalidades1Click(Sender: TObject);
    procedure Bancos1Click(Sender: TObject);
    procedure MantCargos1Click(Sender: TObject);
    procedure Profesiones1Click(Sender: TObject);
    procedure Companas1Click(Sender: TObject);
    procedure TipoProducto1Click(Sender: TObject);
    procedure SectorEconmico1Click(Sender: TObject);
    procedure Provincias1Click(Sender: TObject);
    procedure Parentezcos1Click(Sender: TObject);
    procedure tipoDocumentos1Click(Sender: TObject);
    procedure DocumentosSocio1Click(Sender: TObject);
    procedure Parametros1Click(Sender: TObject);
    procedure CargadeManifiesto1Click(Sender: TObject);
    procedure mnuPrinUtilsClick(Sender: TObject);
    procedure Caja1Click(Sender: TObject);
    procedure iposdeCuentas1Click(Sender: TObject);
    procedure Generarmorosidad1Click(Sender: TObject);
    procedure Usuarios1Click(Sender: TObject);
    procedure Seguridad1Click(Sender: TObject);
    procedure ipoCuenta1Click(Sender: TObject);
    procedure CuentasdeChequera1Click(Sender: TObject);
    procedure Autorizaciones1Click(Sender: TObject);
    procedure ChequesCaja1Click(Sender: TObject);
    procedure mnuArchivoPaisesClick(Sender: TObject);
    procedure Asociaciones1Click(Sender: TObject);
    procedure mnuFrecuenciaPagosClick(Sender: TObject);
    procedure mnuFormaPagosClick(Sender: TObject);
    procedure mnuTiposIngresosClick(Sender: TObject);
    procedure GrupoEconomico1Click(Sender: TObject);
    procedure mnuActividadesEcoClick(Sender: TObject);
    procedure mnu_Cont_ChequeClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses Encripta, DM1,  Socios, GeneralesUsuario, Finalidad, Bancos, Cargos,
  Profesion, MantCompanias, MantTipoProducto, MantSector, MantGEO,
  MantParentezcos, test, MantTipoDocumentos, documentoSocio, empresa,
  MantFiadores, Caja, Utils, Irving, Login, MantTipoCuentaContable,
  ProcesoMorisidad, Usuarios, MantTipoCheque, MantCuentasChequera,
  MantAprobacionesCheque, ChequesCaja, MantenimientoPaises, Asociaciones,
  MantenimientoFrecuenciaPagos, MantenimientoFormasPagos,
  MantenimientoTipoIngresos, MantenimientoActividadEconomica, Cheques;

procedure TfrmPrincipal.mnSociosClick(Sender: TObject);
begin
  application.CreateForm(TfrmSocios , frmSocios);
  frmSocios.Show;
end;

procedure TfrmPrincipal.mnuActividadesEcoClick(Sender: TObject);
begin
  application.CreateForm(TfrmActividadEconimca  , frmActividadEconimca);
  frmActividadEconimca.Show;
end;

procedure TfrmPrincipal.mnuArchivoPaisesClick(Sender: TObject);
begin
  application.CreateForm(TfrmPaises  , frmPaises);
  frmPaises.Show;

end;

procedure TfrmPrincipal.mnuFormaPagosClick(Sender: TObject);
begin
  application.CreateForm(TfrmFormasPagos   , frmFormasPagos);
  frmFormasPagos.Show;
end;

procedure TfrmPrincipal.mnuFrecuenciaPagosClick(Sender: TObject);
begin
//---
  application.CreateForm(TfrmFrecuenciaPagos   , frmFrecuenciaPagos);
  frmFrecuenciaPagos.Show;
end;

procedure TfrmPrincipal.mnuPrinUtilsClick(Sender: TObject);
begin
 application.CreateForm(TfrmUtil  , frmUtil);
  frmUtil.Show;
end;

procedure TfrmPrincipal.mnuTiposIngresosClick(Sender: TObject);
begin
  application.CreateForm(TfrmTipoIngreso , frmTipoIngreso);
  frmTipoIngreso.Show;
end;

procedure TfrmPrincipal.mnu_Cont_ChequeClick(Sender: TObject);
begin
  application.CreateForm(TfrmCheques , frmCheques );
  frmCheques.Show;
end;

procedure TfrmPrincipal.Asociaciones1Click(Sender: TObject);
begin
  application.CreateForm(TfrmAsociaciones , frmAsociaciones);
  frmAsociaciones.Show;
end;

procedure TfrmPrincipal.Autorizaciones1Click(Sender: TObject);
begin
  application.CreateForm(TfrmMantAprobacionesCheque , frmMantAprobacionesCheque);
  frmMantAprobacionesCheque.Show;
end;

procedure TfrmPrincipal.Bancos1Click(Sender: TObject);
begin
  application.CreateForm(TfrmBancos , frmBancos);
  frmBancos.Show;
end;

procedure TfrmPrincipal.Caja1Click(Sender: TObject);
begin

  if DataModulo1._Acceso (usuario,'CA') then
  begin
    application.CreateForm(TfrmCaja , frmCaja);
    frmCaja.Show;
  end
  Else
    ShowMessage('Acceso no permitido...');
end;

procedure TfrmPrincipal.CargadeManifiesto1Click(Sender: TObject);
begin
  application.CreateForm(TfrmCaja , frmCaja);
  frmCaja.Show;
end;

procedure TfrmPrincipal.CargarTreeView;
begin
//---

end;

procedure TfrmPrincipal.ChequesCaja1Click(Sender: TObject);
begin
  application.CreateForm(TfrmChequesCaja , frmChequesCaja);
  frmChequesCaja.Show;
end;

//==============================================================================
//                          Cumpleaños
//------------------------------------------------------------------------------
procedure TfrmPrincipal.CuentasdeChequera1Click(Sender: TObject);
begin
  application.CreateForm(TfrmMantCuentasChequera , frmMantCuentasChequera );
  frmMantCuentasChequera.Show;
end;

function TfrmPrincipal.Cumpleaños(dia, mes: Integer ): Boolean;
Var
  N  : TTreeNode;
  ND : TTreeNode;
  NC : TTreeNode;

  HayHB : Boolean;

begin
// --
 tvHB.Items.Clear;
 HayHB := False;

 DataModulo1.Cumpleanos.Close;
 DataModulo1.Cumpleanos.SQL.Clear;
 DataModulo1.Cumpleanos.Sql.Add('Select Socio,nombre ,Apellido ,compania , ndia, nmes, nano ');
 DataModulo1.Cumpleanos.Sql.Add(' from socios ');
 DataModulo1.Cumpleanos.Sql.Add(' where ndia = ' + intToStr(dia) + ' and nmes = ' + IntToStr(mes)) ;
 DataModulo1.Cumpleanos.Open;

 DataModulo1.Cumpleanos.First;
 if not  DataModulo1.Cumpleanos.eof then
 Begin
  while Not DataModulo1.Cumpleanos.eof do
  Begin
   N  := tvHB.items.AddFirst(nil,DataModulo1.cumpleanosNombre.asstring);
   N.ImageIndex    := 16;
   N.SelectedIndex := 16;
   HayHB := True;

   if Telefonos(DataModulo1.CumpleanosSocio.Value) then
   Begin
    Datamodulo1.HBTelefonos.First;
    NC := tvHB.items.AddChild(N,'Teléfonos') ;
    NC.ImageIndex    := 15;
    NC.SelectedIndex := 15;
    while Not Datamodulo1.HBTelefonos.eof do
    begin
       ND := tvHB.items.AddChild(NC,DataModulo1.HBTelefonosIdtelefono.AsString) ;
       ND.ImageIndex    := 17;
       ND.SelectedIndex := 17;
       Datamodulo1.HBTelefonos.Next
    end;

   End;


   if Correos(DataModulo1.CumpleanosSocio.Value) then
   Begin
    Datamodulo1.HBCorreos.First;
    NC := tvHB.items.AddChild(N,'Correos') ;
    NC.ImageIndex    := 14;
    NC.SelectedIndex := 14;
    while Not Datamodulo1.HBCorreos.eof do
    begin
     ND := tvHB.items.AddChild(NC,DataModulo1.HBCorreosemail.AsString) ;
     ND.ImageIndex    := 17;
     ND.SelectedIndex := 17;
     Datamodulo1.HBCorreos.Next
    end;
   End;
   DataModulo1.cumpleanos.Next;
  End;
 End;

 //------Carga los herederos...
 if HB_Herederos(dia,mes) then
 Begin

  if HayHB then
   N  := tvHB.items.Add(nil,'Herederos ')
  Else
   N  := tvHB.items.AddFirst(nil,'Herederos ');

  N.ImageIndex    := 16;
  N.SelectedIndex := 16;

  Datamodulo1.HBHerederos.First;
  while Not Datamodulo1.HBHerederos.eof do
  begin
       NC := tvHB.items.AddChild(N,DataModulo1.HBHerederosHeredero.AsString + ' [' +
                                   DataModulo1.HBHerederosSocioNombre.AsString + '] ' ) ;
       NC.ImageIndex    := 17;
       NC.SelectedIndex := 17;
       Datamodulo1.HBHerederos.Next
  end;
 End;
End;


procedure TfrmPrincipal.DocumentosSocio1Click(Sender: TObject);
begin
  application.CreateForm(Tfrmdoc , frmdoc);
  frmdoc.Show;
end;

procedure TfrmPrincipal.dtpFecha1Change(Sender: TObject);
Var
 dia,mes,ano : Word;
begin
   DecodeDate(dtpFecha1.DateTime, ano, mes, dia) ;
   Cumpleaños(dia,mes);
end;

procedure TfrmPrincipal.Encriptar2Click(Sender: TObject);
begin
  application.CreateForm(TfrmEncripta , frmEncripta);
  frmEncripta.Show;
end;

procedure TfrmPrincipal.Finalidades1Click(Sender: TObject);
begin
  application.CreateForm(TfrmFinalidad , frmFinalidad);
  frmFinalidad.Show;
end;


procedure TfrmPrincipal.FormActivate(Sender: TObject);
Var
 dia,mes,ano : Word;
begin
 dtpFecha1.DateTime := now;
 Cumpleaños(dia,mes);
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin

 DataModulo1.Cumpleanos.Close;
 DataModulo1.Cumpleanos.Open;

 end;

 procedure TfrmPrincipal.Generarmorosidad1Click(Sender: TObject);
begin
  application.CreateForm(TfrmProcesoMorisidad , frmProcesoMorisidad  );
  frmProcesoMorisidad.Show;
end;

procedure TfrmPrincipal.GrupoEconomico1Click(Sender: TObject);
begin

end;

//==============================================================================
//                          Cumpleaños Herederos
//------------------------------------------------------------------------------
function TfrmPrincipal.HB_Herederos(dia, mes: integer): boolean;
begin
//---

  DataModulo1.HBHerederos.Close;
  DataModulo1.HBHerederos.Parameters[0].Value := dia;
  DataModulo1.HBHerederos.Parameters[1].Value := mes;
  DataModulo1.HBHerederos.Open;
  DataModulo1.HBHerederos.First;

  If DataModulo1.HBHerederos.eof then
    Result := False
  else
    Result := True;

end;

procedure TfrmPrincipal.ipoCuenta1Click(Sender: TObject);
begin
  application.CreateForm(TfrmMantTipoCheque , frmMantTipoCheque );
  frmMantTipoCheque.Show;

end;

procedure TfrmPrincipal.iposdeCuentas1Click(Sender: TObject);
begin
  application.CreateForm(TfrmMantTipoCuentaContable , frmMantTipoCuentaContable );
  frmMantTipoCuentaContable.Show;
end;

procedure TfrmPrincipal.tipoDocumentos1Click(Sender: TObject);
begin
  application.CreateForm(TfrmTipoDocumentos  , frmTipoDocumentos);
  frmTipoDocumentos.Show;
end;

procedure TfrmPrincipal.TipoProducto1Click(Sender: TObject);
begin
  application.CreateForm(TfrmTipoProducto  , frmTipoProducto);
  frmTipoProducto.Show;
end;

procedure TfrmPrincipal.MantCargos1Click(Sender: TObject);
begin
  application.CreateForm(TfrmCargos  , frmCargos);
  frmCargos.Show;
end;

procedure TfrmPrincipal.Parametros1Click(Sender: TObject);
begin
  application.CreateForm(TfrmEmpresa, frmEmpresa );
  frmEmpresa.Show;
end;

procedure TfrmPrincipal.Parentezcos1Click(Sender: TObject);
begin
  application.CreateForm(TfrmParentezcos, frmParentezcos);
  frmParentezcos.Show;
end;

procedure TfrmPrincipal.Perfil1Click(Sender: TObject);
begin
  application.CreateForm(TfrmGeneralesUsuario , frmGeneralesUsuario);
  frmGeneralesUsuario.Show;

end;

procedure TfrmPrincipal.Profesiones1Click(Sender: TObject);
begin
  application.CreateForm(TfrmProfesion , frmProfesion);
  frmProfesion.Show;
end;

procedure TfrmPrincipal.Provincias1Click(Sender: TObject);
begin
  application.CreateForm(TfrmGeografia , frmGeografia);
  frmGeografia.Show;
end;

procedure TfrmPrincipal.SectorEconmico1Click(Sender: TObject);
begin
  application.CreateForm(TfrmSector , frmSector);
  frmSector.Show;
end;

procedure TfrmPrincipal.Seguridad1Click(Sender: TObject);
begin

end;

//==============================================================================
//                          Telefonos
//------------------------------------------------------------------------------
function TfrmPrincipal.Telefonos(Socio: Integer): Boolean;
begin
 DataModulo1.HBTelefonos.Close;
 DataModulo1.HBTelefonos.Sql.Clear ;
 DataModulo1.HBTelefonos.Sql.Add('Select idTelefono from SocioTelefonos ');
 DataModulo1.HBTelefonos.SQL.Add('Where idSocio = ' + InttoStr(Socio));
 DataModulo1.HBTelefonos.Open;
 DataModulo1.HBTelefonos.First;
 if DataModulo1.HBTelefonos.eof then
  Result := False
 Else
  Result := True;
end;


procedure TfrmPrincipal.Usuarios1Click(Sender: TObject);
begin
  if DataModulo1._Acceso (usuario,'SA') then
  begin
   application.CreateForm(Tfrmusuarios,frmUsuarios);
  frmUsuarios.Show;
  end
  Else
    ShowMessage('Acceso no permitido...');
end;

//==============================================================================
//                          Correos
//------------------------------------------------------------------------------
procedure TfrmPrincipal.Companas1Click(Sender: TObject);
begin

  application.CreateForm(TfrmCompanias,frmCompanias);
  frmCompanias.Show;

end;


function TfrmPrincipal.Correos(Socio: Integer): Boolean;
begin
 DataModulo1.HBCorreos.Close;
 DataModulo1.HBCorreos.Sql.Clear ;
 DataModulo1.HBCorreos.Sql.Add('Select email from SocioCorreo ');
 DataModulo1.HBCorreos.SQL.Add('Where idSocio = ' + InttoStr(Socio));
 DataModulo1.HBCorreos.Open;
 DataModulo1.HBCorreos.First;
 if DataModulo1.HBCorreos.eof then
  Result := False
 Else
  Result := True;
end;






end.

