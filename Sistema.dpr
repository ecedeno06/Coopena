program Sistema;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {frmPrincipal},
  DM1 in 'DM1.pas' {DataModulo1: TDataModule},
  Ventana2 in 'Ventana2.pas' {frmVentana},
  Login in 'Login.pas' {frmLogin},
  Calendario in 'Calendario.pas' {frmCalendario},
  Encripta in 'Encripta.pas' {frmEncripta},
  Login2 in 'Login2.pas' {frmLogin2},
  GeneralesUsuario in 'GeneralesUsuario.pas' {frmGeneralesUsuario},
  Socios in 'Socios.pas' {frmSocios},
  Finalidad in 'Finalidad.pas' {frmFinalidad},
  Bancos in 'Bancos.pas' {frmBancos},
  Cargos in 'Cargos.pas' {frmCargos},
  Profesion in 'Profesion.pas' {frmProfesion},
  MantCompanias in 'MantCompanias.pas' {frmCompanias},
  MantTipoProducto in 'MantTipoProducto.pas' {frmTipoProducto},
  MantSector in 'MantSector.pas' {frmSector},
  MantGEO in 'MantGEO.pas' {frmGeografia},
  MantFiadores in 'MantFiadores.pas' {frmFiadores},
  MantParentezcos in 'MantParentezcos.pas' {frmParentezcos},
  MantTipoDocumentos in 'MantTipoDocumentos.pas' {frmTipoDocumentos},
  empresa in 'empresa.pas' {frmEmpresa},
  Caja in 'Caja.pas' {frmCaja},
  Utils in 'Utils.pas' {frmUtil},
  splitter in 'splitter.pas' {Form1},
  MantTipoCuentaContable in 'MantTipoCuentaContable.pas' {frmMantTipoCuentaContable},
  ProcesoMorisidad in 'ProcesoMorisidad.pas' {frmProcesoMorisidad},
  Notify in 'Notify.pas' {msgNotify},
  WORKING in 'WORKING.PAS' {frmWorking},
  DataModulo2 in 'DataModulo2.pas' {DM2: TDataModule},
  Usuarios in 'Usuarios.pas' {frmUsuarios},
  ValidacionUsuario in 'ValidacionUsuario.pas' {frmValidacionUsuario},
  MantTipoCheque in 'MantTipoCheque.pas' {frmMantTipoCheque},
  MantCuentasChequera in 'MantCuentasChequera.pas' {frmMantCuentasChequera},
  cuentas in 'cuentas.pas' {frmCuentas},
  ChequesCaja in 'ChequesCaja.pas' {frmChequesCaja},
  MantenimientoPaises in 'MantenimientoPaises.pas' {frmPaises},
  MantAprobacionesCheque in 'MantAprobacionesCheque.pas' {frmMantAprobacionesCheque},
  Asociaciones in 'Asociaciones.pas' {frmAsociaciones},
  DTS in 'DTS.pas' {ds},
  MantenimientoFrecuenciaPagos in 'MantenimientoFrecuenciaPagos.pas' {frmFrecuenciaPagos},
  MantenimientoFormasPagos in 'MantenimientoFormasPagos.pas' {frmFormasPagos},
  MantenimientoTipoIngresos in 'MantenimientoTipoIngresos.pas' {frmTipoIngreso},
  MantenimientoActividadEconomica in 'MantenimientoActividadEconomica.pas' {frmActividadEconimca},
  Cheques in 'Cheques.pas' {frmCheques},
  SocioCuentas in 'SocioCuentas.pas' {frmSocioCuentas},
  CatalogoContable in 'CatalogoContable.pas' {frmCatalogoContable};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModulo1, DataModulo1);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TDM2, DM2);
  Application.CreateForm(Tds, ds);
  Application.CreateForm(TfrmSocioCuentas, frmSocioCuentas);
  Application.CreateForm(TfrmCatalogoContable, frmCatalogoContable);
  Application.Run;
end.
