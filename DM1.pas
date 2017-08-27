//==============================================================================
//                            Funcion _Acceso (Entrar)
//
// Descripcion:
//       1- Verifica el acceso del usuario en la tabla de usuarioRoles
//          DataModule1.rolesUsuarioLogin
//
// LLamado Por:
//            -
//------------------------------------------------------------------------------
//       Por                |     Fecha          |    Hora
//------------------------------------------------------------------------------
// 00- Edwin cedeno         | 5-abr-2017         | 9:17pm
// 00- Edwin cedeno         | 5-abr-2017         | 9:17pm
//==============================================================================
unit DM1;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, System.ImageList,
  Vcl.ImgList, Vcl.Controls,  IdMessage, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient,
  IdSMTPBase, IdSMTP, IdText, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.VCLUI.Wait,
  IniFiles,Dialogs, FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef,System.DateUtils,
  FireDAC.Phys.ODBC, FireDAC.Phys.ODBCDef;

type
  TDataModulo1 = class(TDataModule)
    tblUsuarios: TADOQuery;
    tblUsuariosidCia: TIntegerField;
    tblUsuariosUsuario: TWideStringField;
    tblUsuariosidUsuario: TAutoIncField;
    tblUsuariosclave: TStringField;
    tblUsuariosnombre: TStringField;
    tblUsuariosapellido: TStringField;
    tblUsuariosnombreCompleto: TWideStringField;
    tblUsuarioscorreo: TStringField;
    tblUsuarioscelular: TStringField;
    tblUsuariosidRol: TIntegerField;
    tblUsuariosidGrupo: TWideStringField;
    tblUsuarioscajero: TFloatField;
    tblUsuariossec_ini: TIntegerField;
    tblUsuariossec_fin: TIntegerField;
    tblUsuariosactivo: TBooleanField;
    tblUsuariosnumeroEmpleado: TIntegerField;
    tblUsuariosnumeroSS: TStringField;
    tblUsuariosfechaIngreso: TDateTimeField;
    tblUsuariosfechaCambioPass: TDateTimeField;
    tblUsuariosdiasClave: TIntegerField;
    tblUsuariosfecha_Aud: TDateTimeField;
    tblUsuariosmodificadoPor: TIntegerField;
    tblUsuariosfechaModificacion: TDateTimeField;
    tblUsuariosCreadoPor: TIntegerField;
    tblUsuariosfechaCreacion: TDateTimeField;
    tblUsuariosinactivadoPor: TIntegerField;
    tblUsuariosFechaInactivacion: TDateTimeField;
    tblUsuariosbloqueado: TBooleanField;
    tblUsuariosfechaBloqueo: TDateTimeField;
    tblUsuariostiempoBloqueo: TIntegerField;
    tblUsuariosintentosMax: TIntegerField;
    tblUsuariosintentos: TIntegerField;
    ImageList1: TImageList;
    tblUsuarioscambiaClave: TBooleanField;
    CambiarClave: TADOQuery;
    ClavesUsadas: TADOQuery;
    Recuperarcion: TADOQuery;
    RecuperarcionPregunta: TStringField;
    RecuperarcionRespuesta: TStringField;
    tblUsuariosvigenteDesde: TDateTimeField;
    tblUsuariosvigenciaDias: TIntegerField;
    tblUsuariosvigenteHasta: TDateTimeField;
    tblUsuariosclaveVence: TStringField;
    ImageList2: TImageList;
    clavePreguntas: TADOQuery;
    clavePreguntasllave: TStringField;
    clavePreguntassec: TAutoIncField;
    clavePreguntasP1: TStringField;
    clavePreguntasR1: TStringField;
    clavePreguntasP2: TStringField;
    clavePreguntasR2: TStringField;
    clavePreguntasP3: TStringField;
    clavePreguntasR3: TStringField;
    RecuperacionActualizacion: TADOQuery;
    tblSocios2: TADOQuery;
    tipoPersona: TADOQuery;
    tipoPersonaidTipoPerson: TStringField;
    tipoPersonaDescripcion: TStringField;
    tipoDocumento: TADOQuery;
    tipoDocumentoidTipoDoc: TStringField;
    tipoDocumentoidTipoPersona: TStringField;
    tipoDocumentoDescripcion: TStringField;
    Paises: TADOQuery;
    PaisesidPais: TStringField;
    PaisescodigoPais: TStringField;
    Paisesdescripcion: TStringField;
    PaisescodigoArea: TIntegerField;
    PaiseszonaHoraria: TBCDField;
    PaisesidIdioma: TIntegerField;
    Paisesidmoneda: TStringField;
    PaisesformatoCelular: TStringField;
    PaisesformatoFijo: TStringField;
    Paisesnacionalidad: TStringField;
    PaisesformatoCedula: TStringField;
    PaisesformatoPas: TStringField;
    PaisesformatoRuc: TStringField;
    Paisesiata: TStringField;
    PaisesunidadPeso: TStringField;
    Paisesunidad: TBCDField;
    PaisesManejoCarga: TBooleanField;
    SociosCorreos: TADOQuery;
    SociosCorreosidSocio: TIntegerField;
    SociosCorreosidSec: TIntegerField;
    SociosCorreosemail: TStringField;
    SociosCorreosactivo: TBooleanField;
    SociosCorreospredeterminado: TBooleanField;
    SociosCorreosuso: TStringField;
    SociosCorreosprivado: TBooleanField;
    SociosCorreoscobro: TBooleanField;
    SociosCorreosmercadeo: TBooleanField;
    SociosCorreostodos: TBooleanField;
    profesiones: TADOQuery;
    profesionesidProfesion: TIntegerField;
    profesionesnombre: TWideStringField;
    cargos: TADOQuery;
    cargosidCargo: TIntegerField;
    cargosnombre: TWideStringField;
    tblSocios2socio: TAutoIncField;
    tblSocios2nombre: TWideStringField;
    tblSocios2apellido: TWideStringField;
    tblSocios2direccion: TWideStringField;
    tblSocios2idTipoPersona: TStringField;
    tblSocios2idTipoDoc: TStringField;
    tblSocios2cedL: TStringField;
    tblSocios2ced1: TWideStringField;
    tblSocios2ced2: TIntegerField;
    tblSocios2ced3: TIntegerField;
    tblSocios2activo: TWideStringField;
    tblSocios2fecha_ingreso: TDateTimeField;
    tblSocios2fecha_salida: TDateTimeField;
    tblSocios2sexo: TWideStringField;
    tblSocios2fecha_nacimiento: TDateTimeField;
    tblSocios2telefono_casa: TWideStringField;
    tblSocios2telefono_oficina: TWideStringField;
    tblSocios2idProfesion: TIntegerField;
    tblSocios2compania: TStringField;
    tblSocios2idCargo: TIntegerField;
    tblSocios2foto: TWideStringField;
    tblSocios2fecha_aud: TWideStringField;
    tblSocios2usuario: TWideStringField;
    tblSocios2idCia: TIntegerField;
    tblSocios2idSucursal: TIntegerField;
    tblSocios2idReferidoPor: TIntegerField;
    tblSocios2fechaRegistro: TDateTimeField;
    tblSocios2fechaActivacion: TDateTimeField;
    tblSocios2fechaDesactivacion: TDateTimeField;
    tblSocios2SocioCodigo: TStringField;
    tblSocios2SocioPass: TMemoField;
    tblSocios2idGrupoEco: TIntegerField;
    tblSocios2idEtnia: TIntegerField;
    tblSocios2idSectorEco: TIntegerField;
    tblSocios2idNacionalidad: TStringField;
    tblSocios2idIdioma: TIntegerField;
    tblSocios2fechaCambioPass: TDateTimeField;
    tblSocios2fechaParaCambiar: TDateTimeField;
    tblSocios2exonerado: TBooleanField;
    tblSocios2ingresoMensual: TBCDField;
    socioDirecciones: TADOQuery;
    _socioHerederos: TADOQuery;
    Parentezco: TADOQuery;
    ParentezcoidParentezco: TIntegerField;
    Parentezconombre: TWideStringField;
    _socioHerederosidSocio: TIntegerField;
    _socioHerederosorden: TIntegerField;
    _socioHerederosnombre: TWideStringField;
    _socioHerederosapellido: TWideStringField;
    _socioHerederosidParentezco: TIntegerField;
    _socioHerederoscedula: TWideStringField;
    _socioHerederosporcentajes: TFloatField;
    _socioHerederosfecha_aud: TWideStringField;
    _socioHerederosusuario: TWideStringField;
    _socioHerederosdia: TIntegerField;
    _socioHerederosmes: TIntegerField;
    _socioHerederosanio: TIntegerField;
    _socioHerederosfechaNacimiento: TWideStringField;
    tblSocios2Estatus: TStringField;
    tblSocios2fechaSalida: TDateTimeField;
    tblSocios2nDia: TIntegerField;
    tblSocios2nMes: TIntegerField;
    tblSocios2nAno: TIntegerField;
    Cumpleanos: TADOQuery;
    HBTelefonos: TADOQuery;
    HBCorreos: TADOQuery;
    HBTelefonosIdtelefono: TStringField;
    HBCorreosemail: TStringField;
    Cumpleanosnombre: TWideStringField;
    CumpleanosApellido: TWideStringField;
    Cumpleanoscompania: TStringField;
    Cumpleanosndia: TIntegerField;
    Cumpleanosnmes: TIntegerField;
    Cumpleanosnano: TIntegerField;
    CumpleanosSocio: TAutoIncField;
    HBHerederos: TADOQuery;
    HBHerederosSocio: TAutoIncField;
    HBHerederosSocioNombre: TWideStringField;
    HBHerederosCompania: TStringField;
    HBHerederosHeredero: TWideStringField;
    MaxFinalidad: TADOQuery;
    MaxFinalidadmaximo: TSmallintField;
    Secuancial: TADOQuery;
    test: TADOQuery;
    cnn2: TFDConnection;
    SecuenciaBanco: TFDQuery;
    Bancos: TFDQuery;
    BancoCuentas: TFDQuery;
    Bancosbanco: TIntegerField;
    Bancosnombre: TWideStringField;
    Bancosfecha_aud: TSQLTimeStampField;
    Bancosusuario: TWideStringField;
    BancoCuentasno_cuenta: TWideStringField;
    BancoCuentasnombre: TWideStringField;
    BancoCuentastipo: TIntegerField;
    BancoCuentasfecha_apertura: TSQLTimeStampField;
    BancoCuentasbanco: TIntegerField;
    BancoCuentascuenta: TWideStringField;
    BancoCuentasseq_chq: TIntegerField;
    BancoCuentassecuencia_auto: TSingleField;
    BancoCuentasfecha_aud: TSQLTimeStampField;
    BancoCuentasusuario: TWideStringField;
    TipoCuentas: TFDQuery;
    TipoCuentastipos: TIntegerField;
    TipoCuentasnombre: TWideStringField;
    TipoCuentasfecha_aud: TSQLTimeStampField;
    TipoCuentasusuario: TWideStringField;
    MantCargos: TFDQuery;
    Generico: TFDQuery;
    MantProfesiones: TFDQuery;
    MantCompany: TFDQuery;
    Finalidad: TFDQuery;
    Finalidadfinalidad: TSmallintField;
    Finalidadnombre: TWideStringField;
    Finalidadfecha_aud: TSQLTimeStampField;
    Finalidadusuario: TWideStringField;
    TipoProducto: TFDQuery;
    TipoProductosubcuenta: TSmallintField;
    TipoProductonombresubcuenta: TWideStringField;
    TipoProductoprestamo_s_n: TWideStringField;
    TipoProductoabreviatura: TWideStringField;
    TipoProductocuenta: TWideStringField;
    TipoProductoperiodo_tasa: TSmallintField;
    TipoProductogarantia: TWideStringField;
    TipoProductofecha_aud: TSQLTimeStampField;
    TipoProductousuario: TWideStringField;
    ContraCuenta: TFDQuery;
    ContraCuentasubcuenta: TSmallintField;
    ContraCuentacuenta_contra_parte: TWideStringField;
    ContraCuentafecha_aud: TSQLTimeStampField;
    ContraCuentausuario: TWideStringField;
    Sectores: TFDQuery;
    SectoresidSectorEco: TFDAutoIncField;
    Sectoresdescripcion: TStringField;
    Sectoresidtarifa: TBCDField;
    Provincias: TFDQuery;
    Distritos: TFDQuery;
    DistritosidProvincia: TIntegerField;
    DistritosidDistrito: TIntegerField;
    DistritosNombre: TStringField;
    Distritosidruta: TIntegerField;
    Corregimientos: TFDQuery;
    CorregimientosidProvincia: TIntegerField;
    CorregimientosidDistrito: TIntegerField;
    CorregimientosidCorregimiento: TFDAutoIncField;
    CorregimientosDescripcion: TStringField;
    CorregimientosidRuta: TIntegerField;
    areas: TFDQuery;
    areasidArea: TFDAutoIncField;
    areasdescripcion: TStringField;
    Parentezcos: TFDQuery;
    ParentezcosidParentezco: TIntegerField;
    Parentezcosnombre: TWideStringField;
    Parentezcosfecha_aud: TSQLTimeStampField;
    Parentezcosusuario: TWideStringField;
    tblpar: TFDQuery;
    TipoDocumentos: TFDQuery;
    TipoDocumentostipo_doc: TWideStringField;
    TipoDocumentosnombre: TWideStringField;
    TipoDocumentossecuencia: TIntegerField;
    TipoDocumentossecuencia_auto: TSingleField;
    TipoDocumentosfecha_reinicio_secuencia: TSQLTimeStampField;
    TipoDocumentosfecha_aud: TSQLTimeStampField;
    TipoDocumentosusuario: TWideStringField;
    TipoDocumentosSSMA_TimeStamp: TBytesField;
    MantProfesionesidprofesion: TIntegerField;
    MantProfesionesnombre: TWideStringField;
    MantProfesionesDescuento: TBCDField;
    MantCompanycompania: TIntegerField;
    MantCompanynombre: TWideStringField;
    MantCompanydireccion_compania: TWideStringField;
    MantCompanyfecha_aud: TSQLTimeStampField;
    MantCompanyusuario: TWideStringField;
    tblSocios2idSocio: TIntegerField;
    tblSocios2idAhorrista: TIntegerField;
    tblSocios2fechaSocio: TDateTimeField;
    tblSocios2fechaAhorrista: TDateTimeField;
    tblSocios2imagen: TBlobField;
    SocioDoc: TFDQuery;
    SocioDocSocio: TIntegerField;
    SocioDocidDoc: TFDAutoIncField;
    SocioDocNombreDoc: TStringField;
    SocioDocverEnCaja: TBooleanField;
    SocioDocruta: TStringField;
    SocioDocimagen: TBlobField;
    SocioDocfechaRegistro: TSQLTimeStampField;
    SocioDocusuario: TStringField;
    SocioDocfechaAud: TSQLTimeStampField;
    tblSocios2idEmpresa: TIntegerField;
    SocioProductos: TFDQuery;
    CuentaTransacciones: TFDQuery;
    productos: TFDQuery;
    productossubcuenta: TSmallintField;
    productosnombresubcuenta: TWideStringField;
    productosprestamo_s_n: TWideStringField;
    productosabreviatura: TWideStringField;
    productoscuenta: TWideStringField;
    productosperiodo_tasa: TSmallintField;
    productosgarantia: TWideStringField;
    productosfecha_aud: TSQLTimeStampField;
    productosusuario: TWideStringField;
    transaccionesPacto: TFDQuery;
    transaccionesCoopena: TFDQuery;
    CuentaTransaccionestipo_documento: TWideStringField;
    CuentaTransaccionesdocumento: TIntegerField;
    CuentaTransaccionesfecha_doc: TSQLTimeStampField;
    CuentaTransaccionesnum_cuenta: TWideStringField;
    CuentaTransaccionescuenta: TWideStringField;
    CuentaTransaccionesnaturaleza: TWideStringField;
    CuentaTransaccionesmonto: TFloatField;
    CuentaTransaccionesfecha_aud: TSQLTimeStampField;
    CuentaTransaccionesusuario: TWideStringField;
    CuentaSaldos: TFDQuery;
    CuentaSaldosDebito: TFloatField;
    CuentaSaldoscredito: TFloatField;
    CuentaTransaccionesnombre: TWideStringField;
    SocioSecuencial: TFDQuery;
    SocioSecuencialid: TFDAutoIncField;
    SocioSecuencialDescripcion: TStringField;
    SocioSecuencialDesde: TIntegerField;
    SocioSecuencialHasta: TIntegerField;
    SocioSecuencialincremento: TIntegerField;
    SocioSecuencialValorActual: TIntegerField;
    SocioSecuencialfecha_Aud: TSQLTimeStampField;
    SocioSecuencialusuario: TStringField;
    Cnn: TADOConnection;
    CuentaTransaccionesnombresubcuenta: TWideStringField;
    productosParaAhorrista: TBooleanField;
    productosParaSocio: TBooleanField;
    productosParaAmbos: TBooleanField;
    TipoProductoParaAhorrista: TBooleanField;
    TipoProductoParaSocio: TBooleanField;
    TipoProductoParaAmbos: TBooleanField;
    Disponible: TFDQuery;
    Disponibleid: TFDAutoIncField;
    DisponibleDescripcion: TStringField;
    DisponibleDesde: TIntegerField;
    DisponibleHasta: TIntegerField;
    Disponibleincremento: TIntegerField;
    DisponibleValorActual: TIntegerField;
    Disponiblefecha_Aud: TSQLTimeStampField;
    Disponibleusuario: TStringField;
    Asignados: TFDQuery;
    FDAutoIncField1: TFDAutoIncField;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    SQLTimeStampField1: TSQLTimeStampField;
    StringField2: TStringField;
    cmb_Beneficiario: TFDQuery;
    cmb_Beneficiariosocio: TIntegerField;
    cmb_BeneficiariotipoCliente: TIntegerField;
    cmb_BeneficiarioidSocio: TIntegerField;
    cmb_BeneficiarioidAhorrista: TIntegerField;
    cmb_Beneficiarionombre: TWideStringField;
    cmb_Beneficiarioapellido: TWideStringField;
    cmb_Beneficiariodireccion: TWideStringField;
    cmb_BeneficiarioidTipoPersona: TStringField;
    cmb_BeneficiarioidTipoDoc: TStringField;
    cmb_BeneficiariocedL: TStringField;
    cmb_Beneficiarioced1: TWideStringField;
    cmb_Beneficiarioced2: TIntegerField;
    cmb_Beneficiarioced3: TIntegerField;
    cmb_Beneficiarioactivo: TWideStringField;
    cmb_Beneficiariofecha_ingreso: TSQLTimeStampField;
    cmb_Beneficiariofecha_salida: TSQLTimeStampField;
    cmb_Beneficiariosexo: TWideStringField;
    cmb_Beneficiariofecha_nacimiento: TSQLTimeStampField;
    cmb_Beneficiariotelefono_casa: TWideStringField;
    cmb_Beneficiariotelefono_oficina: TWideStringField;
    cmb_BeneficiarioidProfesion: TIntegerField;
    cmb_Beneficiariocompania: TStringField;
    cmb_BeneficiarioidCargo: TIntegerField;
    cmb_Beneficiariofoto: TWideStringField;
    cmb_Beneficiariofecha_aud: TSQLTimeStampField;
    cmb_Beneficiariousuario: TWideStringField;
    cmb_BeneficiarioidCia: TIntegerField;
    cmb_BeneficiarioidSucursal: TIntegerField;
    cmb_BeneficiarioidReferidoPor: TIntegerField;
    cmb_BeneficiariofechaRegistro: TSQLTimeStampField;
    cmb_BeneficiariofechaActivacion: TSQLTimeStampField;
    cmb_BeneficiariofechaDesactivacion: TSQLTimeStampField;
    cmb_BeneficiarioSocioCodigo: TStringField;
    cmb_BeneficiarioSocioPass: TMemoField;
    cmb_BeneficiarioidGrupoEco: TIntegerField;
    cmb_BeneficiarioidEtnia: TIntegerField;
    cmb_BeneficiarioidSectorEco: TIntegerField;
    cmb_BeneficiarioidNacionalidad: TStringField;
    cmb_BeneficiarioidIdioma: TIntegerField;
    cmb_BeneficiariofechaCambioPass: TSQLTimeStampField;
    cmb_BeneficiariofechaParaCambiar: TSQLTimeStampField;
    cmb_Beneficiarioexonerado: TBooleanField;
    cmb_BeneficiarioingresoMensual: TBCDField;
    cmb_BeneficiarioEstatus: TStringField;
    cmb_BeneficiariofechaSalida: TSQLTimeStampField;
    cmb_BeneficiarionDia: TIntegerField;
    cmb_BeneficiarionMes: TIntegerField;
    cmb_BeneficiarionAno: TIntegerField;
    cmb_BeneficiariofechaSocio: TSQLTimeStampField;
    cmb_BeneficiariofechaAhorrista: TSQLTimeStampField;
    cmb_Beneficiarioimagen: TBlobField;
    cmb_BeneficiarioidEmpresa: TIntegerField;
    CuentaFiadores: TFDQuery;
    Fiadores: TFDQuery;
    mFiadores: TFDMemTable;
    mFiadoresced1: TStringField;
    mFiadoresced2: TIntegerField;
    mFiadoresced3: TIntegerField;
    mFiadorescedula: TStringField;
    mFiadoresnombre: TStringField;
    mFiadoresapellido: TStringField;
    mFiadoresidprofesion: TIntegerField;
    mFiadoresprofesion: TStringField;
    FiadoresCedula: TWideStringField;
    FiadoresnombreCompleto: TWideStringField;
    FiadoresNombre: TWideStringField;
    FiadoresApellido: TWideStringField;
    FiadoresTrabajo: TWideStringField;
    FiadoresTelefono_Casa: TWideStringField;
    Fiadorestelefono_Ofic: TWideStringField;
    FiadoresidProfesion: TIntegerField;
    FiadoresProfesion: TWideStringField;
    Fiadoresced1: TWideStringField;
    Fiadoresced2: TIntegerField;
    Fiadoresced3: TIntegerField;
    TipoProductofiador: TBooleanField;
    ProductosCliente: TFDQuery;
    ProductosClientesubcuenta: TSmallintField;
    ProductosClientenombresubcuenta: TWideStringField;
    ProductosClienteprestamo_s_n: TWideStringField;
    ProductosClienteabreviatura: TWideStringField;
    ProductosClientecuenta: TWideStringField;
    ProductosClienteperiodo_tasa: TSmallintField;
    ProductosClientegarantia: TWideStringField;
    ProductosClientefecha_aud: TSQLTimeStampField;
    ProductosClienteusuario: TWideStringField;
    ProductosClienteParaAhorrista: TBooleanField;
    ProductosClienteParaSocio: TBooleanField;
    ProductosClienteParaAmbos: TBooleanField;
    ProductosClientefiador: TBooleanField;
    productosfiador: TBooleanField;
    productosfinalidad: TBooleanField;
    TipoProductofinalidad: TBooleanField;
    ProductosClientefinalidad: TBooleanField;
    mFiadorestelefono: TStringField;
    SocioProductosnum_cuenta: TWideStringField;
    SocioProductossocio: TIntegerField;
    SocioProductossubcuenta: TSmallintField;
    SocioProductosmonto: TFloatField;
    SocioProductosplazo: TFloatField;
    SocioProductosfinalidad: TSmallintField;
    SocioProductosestado: TWideStringField;
    SocioProductosletra: TFloatField;
    SocioProductosdesc_planilla: TFloatField;
    SocioProductostasa: TFloatField;
    SocioProductosperiodo_planilla: TWideStringField;
    SocioProductosinteres_pendiente: TFloatField;
    SocioProductosfecha_inicio: TSQLTimeStampField;
    SocioProductosperiodo_tasa: TWideStringField;
    SocioProductosmonto_pignorado: TFloatField;
    SocioProductostipo_periodo_tasa: TSmallintField;
    SocioProductosfecha_aud: TSQLTimeStampField;
    SocioProductosusuario: TWideStringField;
    SocioProductosFin: TStringField;
    TipoProductoMontoAportacion: TBCDField;
    CuentaSaldo: TFDQuery;
    SPC: TFDQuery;
    Actualiza: TFDQuery;
    idiomas: TFDQuery;
    recientes: TFDQuery;
    recientesdocumento: TIntegerField;
    recientesdia: TIntegerField;
    recientesmes: TIntegerField;
    recientesanio: TIntegerField;
    recientessocio: TIntegerField;
    recientesApellido: TWideStringField;
    recientesNombre: TWideStringField;
    Morosidad1: TFDQuery;
    recientesFecha: TDateField;
    recientesHora: TTimeField;
    DocumentoTransaccion: TFDQuery;
    DocumentoTransacciontipo_documento: TWideStringField;
    DocumentoTransacciondocumento: TIntegerField;
    DocumentoTransaccionfecha_doc: TSQLTimeStampField;
    DocumentoTransaccionnum_cuenta: TWideStringField;
    DocumentoTransaccioncuenta: TWideStringField;
    DocumentoTransaccionnaturaleza: TWideStringField;
    DocumentoTransaccionmonto: TFloatField;
    DocumentoTransaccionfecha_aud: TSQLTimeStampField;
    DocumentoTransaccionusuario: TWideStringField;
    Prueba: TFDQuery;
    Pruebasocio: TIntegerField;
    PruebatipoCliente: TIntegerField;
    PruebaidSocio: TIntegerField;
    PruebaidAhorrista: TIntegerField;
    Pruebanombre: TWideStringField;
    Pruebaapellido: TWideStringField;
    Pruebadireccion: TWideStringField;
    PruebaidTipoPersona: TStringField;
    PruebaidTipoDoc: TStringField;
    PruebacedL: TStringField;
    Pruebaced1: TWideStringField;
    Pruebaced2: TIntegerField;
    Pruebaced3: TIntegerField;
    Pruebaactivo: TWideStringField;
    Pruebafecha_ingreso: TSQLTimeStampField;
    Pruebafecha_salida: TSQLTimeStampField;
    Pruebasexo: TWideStringField;
    Pruebafecha_nacimiento: TSQLTimeStampField;
    Pruebatelefono_casa: TWideStringField;
    Pruebatelefono_oficina: TWideStringField;
    PruebaidProfesion: TIntegerField;
    Pruebacompania: TStringField;
    PruebaidCargo: TIntegerField;
    Pruebafoto: TWideStringField;
    Pruebafecha_aud: TSQLTimeStampField;
    Pruebausuario: TWideStringField;
    PruebaidCia: TIntegerField;
    PruebaidSucursal: TIntegerField;
    PruebaidReferidoPor: TIntegerField;
    PruebafechaRegistro: TSQLTimeStampField;
    PruebafechaActivacion: TSQLTimeStampField;
    PruebafechaDesactivacion: TSQLTimeStampField;
    PruebaSocioCodigo: TStringField;
    PruebaSocioPass: TMemoField;
    PruebaidGrupoEco: TIntegerField;
    PruebaidEtnia: TIntegerField;
    PruebaidSectorEco: TIntegerField;
    PruebaidNacionalidad: TStringField;
    PruebaidIdioma: TIntegerField;
    PruebafechaCambioPass: TSQLTimeStampField;
    PruebafechaParaCambiar: TSQLTimeStampField;
    Pruebaexonerado: TBooleanField;
    PruebaingresoMensual: TBCDField;
    PruebaEstatus: TStringField;
    PruebafechaSalida: TSQLTimeStampField;
    PruebanDia: TIntegerField;
    PruebanMes: TIntegerField;
    PruebanAno: TIntegerField;
    PruebafechaSocio: TSQLTimeStampField;
    PruebafechaAhorrista: TSQLTimeStampField;
    Pruebaimagen: TBlobField;
    PruebaidEmpresa: TIntegerField;
    prueba2: TFDQuery;
    DocumentoTransaccionEfectivo: TFloatField;
    DocumentoTransaccionCheque: TFloatField;
    DocumentoTransaccionBanco: TIntegerField;
    DocumentoTransaccionNumCheque: TIntegerField;
    fdqPacto_Transacciones: TFDQuery;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    DateField1: TDateField;
    TimeField1: TTimeField;
    productoTrx: TFDQuery;
    maestroContableCombo: TFDQuery;
    productoTrxidTrx: TFDAutoIncField;
    productoTrxidProducto: TIntegerField;
    productoTrxcuenta: TStringField;
    productoTrxdescripcion: TStringField;
    productoTrxdebito: TStringField;
    productoTrxcredito: TStringField;
    productoTrxverAuxiliar: TBooleanField;
    productoTrxfecha_aud: TSQLTimeStampField;
    productoTrxusuario: TStringField;
    productoTrxpago: TBooleanField;
    maestroContableCombonombre: TWideStringField;
    maestroContableCombocuenta: TWideStringField;
    maestroContableCombonaturaleza: TWideStringField;
    TipoProductoActivePage: TIntegerField;
    TipoProductocalulaInteres: TBooleanField;
    TipoProductointeresSobre: TStringField;
    productoTrxprincipal: TBooleanField;
    TipoProductocalculaMora: TBooleanField;
    _consulta: TFDQuery;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    AsientoTrx: TFDQuery;
    movimientosCuenta: TFDQuery;
    movimientosCuentatipo_documento: TWideStringField;
    movimientosCuentadocumento: TIntegerField;
    movimientosCuentanum_cuenta: TWideStringField;
    movimientosCuentacuenta: TWideStringField;
    movimientosCuentanaturaleza: TWideStringField;
    movimientosCuentamontoCapital: TFloatField;
    movimientosCuentasaldoCapital: TBCDField;
    movimientosCuentamontoInteres: TFloatField;
    movimientosCuentasaldoInteres: TBCDField;
    movimientosCuentamontoMora: TFloatField;
    movimientosCuentasaldoMora: TBCDField;
    movimientosCuentaOrden: TIntegerField;
    movimientosCuenta_dc: TWideStringField;
    productoTrxDC: TStringField;
    productoTrxsigno: TStringField;
    movimientosCuentaSigno: TStringField;
    movimientosCuentanombreDoc: TWideStringField;
    movimientoCorte: TFDQuery;
    movimientoCortenum_cuenta: TWideStringField;
    movimientoCortemontoCapital: TBCDField;
    movimientoCortemontoInteres: TBCDField;
    movimientoCortemontoMora: TBCDField;
    movimientosCuentafecha_doc: TDateField;
    tipoCuentasContables: TFDQuery;
    tipoCuentasContablestipo_maescont: TSmallintField;
    tipoCuentasContablesnombre: TWideStringField;
    tipoCuentasContablestipo_db_cr: TWideStringField;
    tipoCuentasContablesfecha_aud: TSQLTimeStampField;
    tipoCuentasContablesusuario: TWideStringField;
    tipoPlanilla: TFDQuery;
    tipoPlanillaidTipo: TStringField;
    tipoPlanillanombre: TStringField;
    periocidad: TFDQuery;
    periocidadidPeriocidad: TIntegerField;
    periocidadnombre: TStringField;
    periocidadmeses: TIntegerField;
    estatusProducto: TFDQuery;
    estatusProductoidEstatus: TIntegerField;
    estatusProductonombre: TStringField;
    estatusProductovalor: TStringField;
    SocioProductosgarantias: TMemoField;
    prestamosVigentes: TFDQuery;
    prestamosVigentesnum_cuenta: TWideStringField;
    prestamosVigentessocio: TIntegerField;
    prestamosVigentessubcuenta: TSmallintField;
    prestamosVigentesmonto: TFloatField;
    prestamosVigentesplazo: TFloatField;
    prestamosVigentesfinalidad: TSmallintField;
    prestamosVigentesestado: TWideStringField;
    prestamosVigentesletra: TFloatField;
    prestamosVigentesdesc_planilla: TFloatField;
    prestamosVigentestasa: TFloatField;
    prestamosVigentesperiodo_planilla: TWideStringField;
    prestamosVigentesinteres_pendiente: TFloatField;
    prestamosVigentesfecha_inicio: TSQLTimeStampField;
    prestamosVigentesperiodo_tasa: TWideStringField;
    prestamosVigentesmonto_pignorado: TFloatField;
    prestamosVigentestipo_periodo_tasa: TSmallintField;
    prestamosVigentesgarantias: TMemoField;
    prestamosVigentesfecha_aud: TSQLTimeStampField;
    prestamosVigentesusuario: TWideStringField;
    prestamosVigentesSSMA_TimeStamp: TBytesField;
    prestamosVigentessubcuenta_1: TSmallintField;
    prestamosVigentesnombresubcuenta: TWideStringField;
    prestamosVigentesprestamo_s_n: TWideStringField;
    prestamosVigentesabreviatura: TWideStringField;
    prestamosVigentescuenta: TWideStringField;
    prestamosVigentesperiodo_tasa_1: TSmallintField;
    prestamosVigentesgarantia: TWideStringField;
    prestamosVigentesfecha_aud_1: TSQLTimeStampField;
    prestamosVigentesusuario_1: TWideStringField;
    prestamosVigentesParaAhorrista: TBooleanField;
    prestamosVigentesParaSocio: TBooleanField;
    prestamosVigentesParaAmbos: TBooleanField;
    prestamosVigentesfiador: TBooleanField;
    prestamosVigentesfinalidad_1: TBooleanField;
    prestamosVigentesMontoAportacion: TBCDField;
    prestamosVigentesActivePage: TIntegerField;
    prestamosVigentescalculaMora: TBooleanField;
    prestamosVigentescalulaInteres: TBooleanField;
    prestamosVigentesinteresSobre: TStringField;
    meses: TFDQuery;
    mesesmes: TIntegerField;
    mesesmesEsp: TStringField;
    mesesmesIng: TStringField;
    usuarios: TFDQuery;
    roles: TFDQuery;
    rolesidRol: TFDAutoIncField;
    rolescodigoRol: TStringField;
    rolesNombreRol: TStringField;
    rolesfecha_aud: TSQLTimeStampField;
    rolesusuario_aud: TStringField;
    rolesUsuario: TFDQuery;
    rolesUsuarioidCia: TIntegerField;
    rolesUsuarioidUsuario: TIntegerField;
    rolesUsuariousuario: TStringField;
    rolesUsuarioidRoll: TIntegerField;
    rolesUsuarioactivo: TBooleanField;
    rolesUsuariocodigoRol: TStringField;
    rolesUsuarionombreRol: TStringField;
    rolesUsuarioesCajero: TBooleanField;
    rolesUsuarioesGerente: TBooleanField;
    rolesUsuariofecha_aud: TSQLTimeStampField;
    rolesUsuariousuario_aud: TStringField;
    roles2: TFDQuery;
    roles2idRol: TFDAutoIncField;
    roles2codigoRol: TStringField;
    roles2NombreRol: TStringField;
    roles2fecha_aud: TSQLTimeStampField;
    roles2usuario_aud: TStringField;
    rolesUsuarioLogin: TFDQuery;
    rolesUsuarioLoginidCia: TIntegerField;
    rolesUsuarioLoginidUsuario: TIntegerField;
    rolesUsuarioLoginusuario: TStringField;
    rolesUsuarioLoginidRoll: TIntegerField;
    rolesUsuarioLoginactivo: TBooleanField;
    rolesUsuarioLogincodigoRol: TStringField;
    rolesUsuarioLoginnombreRol: TStringField;
    rolesUsuarioLoginesCajero: TBooleanField;
    rolesUsuarioLoginesGerente: TBooleanField;
    rolesUsuarioLoginfecha_aud: TSQLTimeStampField;
    rolesUsuarioLoginusuario_aud: TStringField;
    usuariosidCia: TIntegerField;
    usuariosUsuario: TWideStringField;
    usuariosidUsuario: TFDAutoIncField;
    usuariosclave: TStringField;
    usuariosnombre: TStringField;
    usuariosapellido: TStringField;
    usuariosnombreCompleto: TWideStringField;
    usuarioscorreo: TStringField;
    usuarioscelular: TStringField;
    usuariosidRol: TIntegerField;
    usuariosidGrupo: TWideStringField;
    usuarioscajero: TSingleField;
    usuariossec_ini: TIntegerField;
    usuariossec_fin: TIntegerField;
    usuariosactivo: TBooleanField;
    usuariosnumeroEmpleado: TIntegerField;
    usuariosnumeroSS: TStringField;
    usuariosfechaIngreso: TSQLTimeStampField;
    usuariosfechaCambioPass: TSQLTimeStampField;
    usuariosdiasClave: TIntegerField;
    usuariosfecha_Aud: TSQLTimeStampField;
    usuariosmodificadoPor: TIntegerField;
    usuariosfechaModificacion: TSQLTimeStampField;
    usuariosCreadoPor: TIntegerField;
    usuariosfechaCreacion: TSQLTimeStampField;
    usuariosinactivadoPor: TIntegerField;
    usuariosFechaInactivacion: TSQLTimeStampField;
    usuariostiempoBloqueo: TIntegerField;
    usuariosintentosMax: TIntegerField;
    usuariosintentos: TIntegerField;
    usuariosbloqueado: TBooleanField;
    usuariosfechaBloqueo: TSQLTimeStampField;
    usuarioscambiaClave: TBooleanField;
    usuariosvigenteDesde: TSQLTimeStampField;
    usuariosvigenciaDias: TIntegerField;
    usuariosvigenteHasta: TSQLTimeStampField;
    usuariosclaveVence: TStringField;
    usuariosgrupo: TWideStringField;
    tipoCuentaCheque: TFDQuery;
    tipoCuentaChequetipos: TIntegerField;
    tipoCuentaChequenombre: TWideStringField;
    tipoCuentaChequefecha_aud: TSQLTimeStampField;
    tipoCuentaChequeusuario: TWideStringField;
    chequesCuenta: TFDQuery;
    chequesCuentano_cuenta: TWideStringField;
    chequesCuentanombre: TWideStringField;
    chequesCuentatipo: TIntegerField;
    chequesCuentafecha_apertura: TSQLTimeStampField;
    chequesCuentabanco: TIntegerField;
    chequesCuentacuenta: TWideStringField;
    chequesCuentaseq_chq: TIntegerField;
    chequesCuentasecuencia_auto: TSingleField;
    chequesCuentafecha_aud: TSQLTimeStampField;
    chequesCuentausuario: TWideStringField;
    CuentaContable: TFDQuery;
    CuentaContablecuenta: TWideStringField;
    CuentaContableCuentaNombre: TWideStringField;
    Aprobaciones: TFDQuery;
    Aprobacionesnivel: TSingleField;
    Aprobacionesnombre: TWideStringField;
    Aprobacionesorden: TSmallintField;
    Aprobacionesestado: TByteField;
    Aprobacionesfecha_aud: TSQLTimeStampField;
    Aprobacionesusuario: TWideStringField;
    AprobacionesSSMA_TimeStamp: TBytesField;
    NivelAprobacionUsuario: TFDQuery;
    usuariosNivel: TFDQuery;
    usuariosNivelUsuario: TWideStringField;
    usuariosNivelfullname: TStringField;
    NivelAprobacionUsuarionivel: TSingleField;
    NivelAprobacionUsuariousuario: TWideStringField;
    NivelAprobacionUsuariomonto_no_usar: TFloatField;
    NivelAprobacionUsuariodesde: TFloatField;
    NivelAprobacionUsuariohasta: TFloatField;
    NivelAprobacionUsuariofullname: TStringField;
    NivelAprobacionUsuarioactivo: TBooleanField;
    productoTrxtipoTrx: TStringField;
    TipoProductoretiro: TBooleanField;
    TipoProductodeposito: TBooleanField;
    tipoTransaccion: TFDQuery;
    tipoTransaccionidtipo: TStringField;
    tipoTransaccionDescripcion: TStringField;
    tipoTransaccioncuentaContable: TStringField;
    tipoTransaccionorden: TStringField;
    DesgloseCheques: TFDQuery;
    DesgloseChequesfecha: TSQLTimeStampField;
    DesgloseChequesnumeroCheque: TStringField;
    DesgloseChequesidBanco: TIntegerField;
    DesgloseChequesmonto: TCurrencyField;
    DesgloseChequesfecha_au: TSQLTimeStampField;
    DesgloseChequesusuario_au: TStringField;
    DesgloseChequesestatus: TStringField;
    DesgloseChequesguid: TStringField;
    DesgloseChequesbancoid: TIntegerField;
    DesgloseChequesbb: TStringField;
    productoTrxcajaTrx: TStringField;
    productoTrx2: TFDQuery;
    productoTrx2idTrx: TFDAutoIncField;
    productoTrx2idProducto: TIntegerField;
    productoTrx2cuenta: TStringField;
    productoTrx2descripcion: TStringField;
    productoTrx2debito: TStringField;
    productoTrx2credito: TStringField;
    productoTrx2verAuxiliar: TBooleanField;
    productoTrx2fecha_aud: TSQLTimeStampField;
    productoTrx2usuario: TStringField;
    productoTrx2pago: TBooleanField;
    productoTrx2principal: TBooleanField;
    productoTrx2DC: TStringField;
    productoTrx2signo: TStringField;
    productoTrx2tipoTrx: TStringField;
    productoTrx2cajaTrx: TStringField;
    productoTrxesInteres: TBooleanField;
    productoTrxesMora: TBooleanField;
    productoTrxesCaja: TBooleanField;
    productoTrxesCapital: TBooleanField;
    productoTrxorden: TIntegerField;
    productoTrx2esInteres: TBooleanField;
    productoTrx2esMora: TBooleanField;
    productoTrx2esCaja: TBooleanField;
    productoTrx2esCapital: TBooleanField;
    productoTrx2orden: TIntegerField;
    productoTrxesImputable: TBooleanField;
    productoTrx2esImputable: TBooleanField;
    ChequesCaja: TFDQuery;
    ChequesCajaidDocumento: TIntegerField;
    ChequesCajaguid: TStringField;
    ChequesCajafecha: TSQLTimeStampField;
    ChequesCajanumeroCheque: TStringField;
    ChequesCajaidBanco: TIntegerField;
    ChequesCajamonto: TCurrencyField;
    ChequesCajafecha_au: TSQLTimeStampField;
    ChequesCajausuario_au: TStringField;
    ChequesCajaestatus: TStringField;
    ChequesCajaBanco: TStringField;
    ChequesCajaemisor: TStringField;
    ChequesCajatipoCheque: TIntegerField;
    tipoCheque: TFDQuery;
    tipoChequeid: TIntegerField;
    tipoChequedescripcion: TStringField;
    tipoChequeguid: TStringField;
    tipoChequefecha_au: TSQLTimeStampField;
    tipoChequeusuario_au: TStringField;
    tipoChequeactivo: TBooleanField;
    ChequesCajatcheque: TStringField;
    cmb_BeneficiariopasaporteRuc: TStringField;
    cmb_BeneficiariosegundoNombre: TStringField;
    cmb_BeneficiariosegundoApellido: TStringField;
    cmb_BeneficiarioapellidoCasada: TStringField;
    cmb_BeneficiarionombreCompleto: TStringField;
    cmb_BeneficiarioguidSocio: TStringField;
    cmb_BeneficiarioesAhorrista: TBooleanField;
    cmb_BeneficiarioesSocio: TBooleanField;
    cmb_BeneficiarioesProveedor: TBooleanField;
    cmb_BeneficiarioesPEP: TBooleanField;
    cmb_BeneficiarioesRiesgo: TBooleanField;
    cmb_BeneficiarioestadoCivil: TIntegerField;
    paises2: TFDQuery;
    paises2unidadPeso: TStringField;
    paises2unidad: TBCDField;
    paises2ManejoCarga: TBooleanField;
    paises2guidPais: TStringField;
    paises2nivelRiesgo: TIntegerField;
    paises2ISO2: TStringField;
    paises2ISO3: TStringField;
    idiomasidIdioma: TFDAutoIncField;
    idiomasIdioma: TStringField;
    paises2idioma: TStringField;
    paises2idPais: TStringField;
    paises2codigoPais: TStringField;
    paises2descripcion: TStringField;
    paises2codigoArea: TIntegerField;
    paises2zonaHoraria: TBCDField;
    paises2idIdioma: TIntegerField;
    paises2idmoneda: TStringField;
    paises2formatoCelular: TStringField;
    paises2formatoFijo: TStringField;
    paises2nacionalidad: TStringField;
    paises2formatoCedula: TStringField;
    paises2formatoPas: TStringField;
    paises2formatoRuc: TStringField;
    paises2iata: TStringField;
    estadoCivil: TFDQuery;
    estadoCivilidEstado: TFDAutoIncField;
    estadoCivilDescripcion: TStringField;
    estadoCivilguidEstado: TStringField;
    cmb_BeneficiarioestadoCivil2: TStringField;
    cmb_BeneficiariopaisNacimiento: TStringField;
    cmb_BeneficiariopaisResidencia: TStringField;
    cmb_BeneficiariopaisPasaporte: TStringField;
    cmb_BeneficiariofechaExpiracionDocumento: TDateField;
    socioNacionalidades: TFDQuery;
    socioNacionalidadesidSocio: TIntegerField;
    socioNacionalidadesidNacionlidad: TStringField;
    socioNacionalidadesnacionalidad: TStringField;
    socioNacionalidadesactiva: TBooleanField;
    socioNacionalidadesguidSocio: TStringField;
    socioNacionalidadesnacionalidadid: TStringField;
    socioNacionalidadespais: TStringField;
    DistritosidPais: TStringField;
    DistritosguidProvincia: TStringField;
    DistritosguidDistrito: TStringField;
    paises2idioma2: TStringField;
    socioDireccionesidSocio: TIntegerField;
    socioDireccionessec: TBCDField;
    socioDireccionescodigoPais: TStringField;
    socioDireccionesidprovincia: TIntegerField;
    socioDireccionesidDistrito: TIntegerField;
    socioDireccionesidCorregimiento: TIntegerField;
    socioDireccionesidBarrio: TIntegerField;
    socioDireccionesidRuta: TIntegerField;
    socioDireccionesdescripcion: TMemoField;
    socioDireccionespredeterminada: TBooleanField;
    socioDireccionesidtipoDireccion: TIntegerField;
    socioDireccionesguidSocio: TStringField;
    socioDireccionesguidDireccion: TStringField;
    socioDireccionesfecha_au: TDateTimeField;
    socioDireccionesusuario_au: TStringField;
    ProvinciasidPais: TStringField;
    Provinciasidprovincia: TIntegerField;
    ProvinciasNombre: TStringField;
    ProvinciasidArea: TIntegerField;
    ProvinciasguidProvincia: TStringField;
    provinciasTodas: TFDQuery;
    Distritos2: TFDQuery;
    provinciasTodasidPais: TStringField;
    provinciasTodasidprovincia: TIntegerField;
    provinciasTodasNombre: TStringField;
    provinciasTodasidArea: TIntegerField;
    provinciasTodasguidProvincia: TStringField;
    CuentaContableFull: TFDQuery;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    corregimiento: TFDQuery;
    corregimientoidPais: TStringField;
    corregimientoidProvincia: TIntegerField;
    corregimientoidDistrito: TIntegerField;
    corregimientoidCorregimiento: TFDAutoIncField;
    corregimientoDescripcion: TStringField;
    corregimientoidRuta: TIntegerField;
    corregimientoguidDistrito: TStringField;
    corregimientoguidCorregimiento: TStringField;
    Barrio: TFDQuery;
    Barrioidpais: TStringField;
    Barrioidprovincia: TIntegerField;
    Barrioiddistrito: TIntegerField;
    BarrioidCorregimiento: TIntegerField;
    BarrioidBarrio: TFDAutoIncField;
    BarrioDescripcion: TStringField;
    Barrioidruta: TIntegerField;
    BarrioguidBarrio: TStringField;
    BarrioguidCorregimiento: TStringField;
    Barriofecha_au: TSQLTimeStampField;
    Barriousuario_au: TStringField;
    Barrios: TFDQuery;
    Barriosidpais: TStringField;
    Barriosidprovincia: TIntegerField;
    Barriosiddistrito: TIntegerField;
    BarriosidCorregimiento: TIntegerField;
    BarriosidBarrio: TFDAutoIncField;
    BarriosDescripcion: TStringField;
    Barriosidruta: TIntegerField;
    BarriosguidBarrio: TStringField;
    BarriosguidCorregimiento: TStringField;
    Barriosfecha_au: TSQLTimeStampField;
    Barriosusuario_au: TStringField;
    provinciasTodasfecha_au: TSQLTimeStampField;
    provinciasTodasusuario_au: TVarBytesField;
    Provinciasfecha_au: TSQLTimeStampField;
    Provinciasusuario_au: TVarBytesField;
    Distritosfecha_au: TSQLTimeStampField;
    Distritosusuario_au: TWideStringField;
    corregimientoSocio: TFDQuery;
    Distritos2idPais: TStringField;
    Distritos2idProvincia: TIntegerField;
    Distritos2idDistrito: TFDAutoIncField;
    Distritos2Nombre: TStringField;
    Distritos2idruta: TIntegerField;
    Distritos2guidProvincia: TStringField;
    Distritos2guidDistrito: TStringField;
    Distritos2fecha_au: TSQLTimeStampField;
    Distritos2usuario_au: TWideStringField;
    BarriosSocio: TFDQuery;
    StringField6: TStringField;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    IntegerField14: TIntegerField;
    FDAutoIncField3: TFDAutoIncField;
    StringField7: TStringField;
    IntegerField16: TIntegerField;
    StringField8: TStringField;
    StringField9: TStringField;
    SQLTimeStampField2: TSQLTimeStampField;
    StringField11: TStringField;
    corregimientoSocioidPais: TStringField;
    corregimientoSocioidProvincia: TIntegerField;
    corregimientoSocioidDistrito: TIntegerField;
    corregimientoSocioidCorregimiento: TFDAutoIncField;
    corregimientoSocioDescripcion: TStringField;
    corregimientoSocioidRuta: TIntegerField;
    corregimientoSocioguidDistrito: TStringField;
    corregimientoSocioguidCorregimiento: TStringField;
    SocioTipoDireccion: TFDQuery;
    tipoResidencia: TFDQuery;
    tipoResidenciaidtipoResidencia: TFDAutoIncField;
    tipoResidenciadescripcion: TStringField;
    tipoResidenciaguidTipoResidencia: TStringField;
    socioPasatiempo: TFDQuery;
    socioPasatiempoguidSocio: TStringField;
    socioPasatiempoguidPasatiempo: TStringField;
    socioPasatiempoidSocio: TIntegerField;
    socioPasatiempodescripcion: TStringField;
    socioPasatiempoesPeligroso: TBooleanField;
    cmb_BeneficiarioesInstitucion: TBooleanField;
    socioComunidad: TFDQuery;
    socioComunidadidSocio: TIntegerField;
    socioComunidaddescripcion: TStringField;
    socioComunidadidComunidad: TIntegerField;
    socioComunidadesRiesgosa: TBooleanField;
    socioComunidadguidSocioComunidad: TStringField;
    socioComunidadguidComunidad: TStringField;
    socioComunidadguidSocio: TStringField;
    comunidades: TFDQuery;
    socioComunidadcomunidad: TStringField;
    comunidadesidComunidad: TFDAutoIncField;
    comunidadesdescripcion: TStringField;
    comunidadesesRiesgosa: TBooleanField;
    comunidadesguidComunidad: TStringField;
    socioAsociaciones: TFDQuery;
    Asociaciones: TFDQuery;
    AsociacionesidAsociacion: TFDAutoIncField;
    Asociacionesdescripcion: TStringField;
    AsociacionesesRiesgosa: TBooleanField;
    Asociacionesguid: TStringField;
    socioAsociacionesidSocio: TIntegerField;
    socioAsociacionesguid: TStringField;
    socioAsociacionesguidAsociacion: TStringField;
    socioAsociacionesidAsociacion: TIntegerField;
    socioAsociacionesdescripcion: TStringField;
    socioAsociacionesesRiesgosa: TBooleanField;
    socioAsociacionesfecha_au: TSQLTimeStampField;
    socioAsociacionesusuario_au: TWideStringField;
    socioAsociacionesguidSocio: TStringField;
    socioAsociacionesAsociacion: TStringField;
    MantCargosidcargo: TIntegerField;
    MantCargosnombre: TWideStringField;
    MantCargosfecha_aud: TSQLTimeStampField;
    MantCargosesRiesgo: TBooleanField;
    MantCargosusuario: TWideStringField;
    MantCargosguid: TStringField;
    cmb_BeneficiarioesDependiente: TBooleanField;
    proveedores: TFDQuery;
    proveedoressocio: TFDAutoIncField;
    proveedorestipoCliente: TIntegerField;
    proveedoresidSocio: TIntegerField;
    proveedoresidAhorrista: TIntegerField;
    proveedoresnombre: TWideStringField;
    proveedoresapellido: TWideStringField;
    proveedoresdireccion: TWideStringField;
    proveedoresidTipoPersona: TStringField;
    proveedoresidTipoDoc: TStringField;
    proveedorescedL: TStringField;
    proveedoresced1: TWideStringField;
    proveedoresced2: TIntegerField;
    proveedoresced3: TIntegerField;
    proveedoresactivo: TWideStringField;
    proveedoresfecha_ingreso: TSQLTimeStampField;
    proveedoresfecha_salida: TSQLTimeStampField;
    proveedoressexo: TWideStringField;
    proveedoresfecha_nacimiento: TSQLTimeStampField;
    proveedorestelefono_casa: TWideStringField;
    proveedorestelefono_oficina: TWideStringField;
    proveedoresidProfesion: TIntegerField;
    proveedoresidCargo: TIntegerField;
    proveedoresfoto: TWideStringField;
    proveedoresfecha_aud: TSQLTimeStampField;
    proveedoresusuario: TWideStringField;
    proveedoresidCia: TIntegerField;
    proveedoresidSucursal: TIntegerField;
    proveedoresidReferidoPor: TIntegerField;
    proveedoresfechaRegistro: TSQLTimeStampField;
    proveedoresfechaActivacion: TSQLTimeStampField;
    proveedoresfechaDesactivacion: TSQLTimeStampField;
    proveedoresSocioCodigo: TStringField;
    proveedoresSocioPass: TMemoField;
    proveedoresidGrupoEco: TIntegerField;
    proveedoresidEtnia: TIntegerField;
    proveedoresidSectorEco: TIntegerField;
    proveedoresidNacionalidad: TStringField;
    proveedoresidIdioma: TIntegerField;
    proveedoresfechaCambioPass: TSQLTimeStampField;
    proveedoresfechaParaCambiar: TSQLTimeStampField;
    proveedoresexonerado: TBooleanField;
    proveedoresingresoMensual: TBCDField;
    proveedoresEstatus: TStringField;
    proveedoresfechaSalida: TSQLTimeStampField;
    proveedoresnDia: TIntegerField;
    proveedoresnMes: TIntegerField;
    proveedoresnAno: TIntegerField;
    proveedoresfechaSocio: TSQLTimeStampField;
    proveedoresfechaAhorrista: TSQLTimeStampField;
    proveedoresimagen: TBlobField;
    proveedoresidEmpresa: TIntegerField;
    proveedorespasaporteRuc: TStringField;
    proveedoressegundoNombre: TStringField;
    proveedoressegundoApellido: TStringField;
    proveedoresapellidoCasada: TStringField;
    proveedoresnombreCompleto: TStringField;
    proveedoresguidSocio: TStringField;
    proveedoresesAhorrista: TBooleanField;
    proveedoresesSocio: TBooleanField;
    proveedoresesProveedor: TBooleanField;
    proveedoresesPEP: TBooleanField;
    proveedoresesRiesgo: TBooleanField;
    proveedoresestadoCivil: TIntegerField;
    proveedorespaisNacimiento: TStringField;
    proveedorespaisResidencia: TStringField;
    proveedorespaisPasaporte: TStringField;
    proveedoresfechaExpiracionDocumento: TDateField;
    proveedoresesInstitucion: TBooleanField;
    proveedoresesDependiente: TBooleanField;
    SocioFuentesIngresosVariables: TFDQuery;
    dtsSocioFuentesIngresosVariables: TDataSource;
    dtsSocioFuentesIngresosFijos: TDataSource;
    SocioTotalIngresosFijos: TFDQuery;
    SocioTotalIngresosFijosDescripcion: TStringField;
    SocioTotalIngresosFijostotal: TCurrencyField;
    SocioTotalIngresosFijosTotalVigente: TCurrencyField;
    dtsSocioTotalIngresosFijos: TDataSource;
    dtsSocioTotalIV: TDataSource;
    SocioTotalIV: TFDQuery;
    StringField3: TStringField;
    CurrencyField1: TCurrencyField;
    CurrencyField3: TCurrencyField;
    actividadEconomica: TFDQuery;
    actividadEconomicaidActividad: TFDAutoIncField;
    actividadEconomicadescripcion: TStringField;
    actividadEconomicaguidSector: TStringField;
    actividadEconomicaidSector: TIntegerField;
    actividadEconomicaguid: TStringField;
    actividadEconomicaesRiesgosa: TBooleanField;
    dtsActividadEconomica: TDataSource;
    sectorEconomico: TFDQuery;
    sectorEconomicoidSectorEco: TFDAutoIncField;
    sectorEconomicodescripcion: TStringField;
    sectorEconomicoidtarifa: TBCDField;
    sectorEconomicoguid: TStringField;
    dtsSectorEconomico: TDataSource;
    dtsCargos: TDataSource;
    cargo: TFDQuery;
    IntegerField10: TIntegerField;
    WideStringField6: TWideStringField;
    cargosfecha_aud: TSQLTimeStampField;
    cargosesRiesgo: TBooleanField;
    cargosusuario: TWideStringField;
    cargosguid: TStringField;
    FinalidadrequiereUbicacion: TBooleanField;
    direccionIngreso: TFDQuery;
    direccionIngresoguid: TStringField;
    direccionIngresoguidSocio: TStringField;
    direccionIngresoguidActividad: TStringField;
    direccionIngresoidPais: TStringField;
    direccionIngresoguidProvincia: TStringField;
    direccionIngresoguidDistrito: TStringField;
    direccionIngresoguidCorreg: TStringField;
    direccionIngresoguidBarrio: TStringField;
    direccionIngresobarriada: TStringField;
    direccionIngresocalleEdificio: TStringField;
    direccionIngresonumero: TStringField;
    direccionIngresodetalle: TMemoField;
    direccionIngresoidProvincia: TIntegerField;
    direccionIngresoidDistrito: TIntegerField;
    direccionIngresoidCorreg: TIntegerField;
    direccionIngresoidBarrio: TIntegerField;
    direccionIngresotipoIngreso: TStringField;
    direccionIngresofecha_au: TSQLTimeStampField;
    direccionIngresousuario_au: TStringField;
    direccionIF_Pais: TFDQuery;
    dtsDireccionIngreso: TDataSource;
    direccionIF_Prov: TFDQuery;
    direccionIF_PaisidPais: TStringField;
    direccionIF_PaiscodigoPais: TStringField;
    direccionIF_Paisdescripcion: TStringField;
    direccionIF_PaiscodigoArea: TIntegerField;
    direccionIF_PaiszonaHoraria: TBCDField;
    direccionIF_PaisidIdioma: TIntegerField;
    direccionIF_Paisidmoneda: TStringField;
    direccionIF_PaisformatoCelular: TStringField;
    direccionIF_PaisformatoFijo: TStringField;
    direccionIF_Paisnacionalidad: TStringField;
    direccionIF_PaisformatoCedula: TStringField;
    direccionIF_PaisformatoPas: TStringField;
    direccionIF_PaisformatoRuc: TStringField;
    direccionIF_Paisiata: TStringField;
    direccionIF_PaisunidadPeso: TStringField;
    direccionIF_Paisunidad: TBCDField;
    direccionIF_PaisManejoCarga: TBooleanField;
    direccionIF_PaisguidPais: TStringField;
    direccionIF_PaisnivelRiesgo: TIntegerField;
    direccionIF_PaisISO2: TStringField;
    direccionIF_PaisISO3: TStringField;
    direccionIF_ProvidPais: TStringField;
    direccionIF_Providprovincia: TIntegerField;
    direccionIF_ProvNombre: TStringField;
    direccionIF_ProvidArea: TIntegerField;
    direccionIF_ProvguidProvincia: TStringField;
    direccionIF_Provfecha_au: TSQLTimeStampField;
    direccionIF_Provusuario_au: TVarBytesField;
    SocioFuentesIngresosFijos: TFDQuery;
    SocioFuentesIngresosFijosidsocio: TIntegerField;
    SocioFuentesIngresosFijosidsector: TIntegerField;
    SocioFuentesIngresosFijosguid: TStringField;
    SocioFuentesIngresosFijosguidSocio: TStringField;
    SocioFuentesIngresosFijosidActividad: TIntegerField;
    SocioFuentesIngresosFijosidCargo: TIntegerField;
    SocioFuentesIngresosFijosguidFuente: TStringField;
    SocioFuentesIngresosFijosguidSector: TStringField;
    SocioFuentesIngresosFijosdesde: TDateField;
    SocioFuentesIngresosFijosactivo: TBooleanField;
    SocioFuentesIngresosFijoscargo: TStringField;
    SocioFuentesIngresosFijosfrecuencia: TIntegerField;
    SocioFuentesIngresosFijosletraFrecuencia: TWideStringField;
    SocioFuentesIngresosFijosmonto: TCurrencyField;
    SocioFuentesIngresosFijosidFormaPago: TIntegerField;
    SocioFuentesIngresosFijosguidFormaPago: TStringField;
    SocioFuentesIngresosFijosfuente: TIntegerField;
    SocioFuentesIngresosFijostipoFuente: TIntegerField;
    SocioFuentesIngresosFijosdescripcionTipoFuente: TStringField;
    SocioFuentesIngresosFijosidtipoFuente: TIntegerField;
    SocioFuentesIngresosFijosidtipoIngreso: TIntegerField;
    SocioFuentesIngresosFijosidtipoFlujo: TStringField;
    SocioFuentesIngresosFijosantiguedad: TIntegerField;
    SocioFuentesIngresosFijos_actividad: TStringField;
    SocioFuentesIngresosFijos_sector: TStringField;
    SocioFuentesIngresosFijos_cargo: TStringField;
    SocioFuentesIngresosFijos_proveedor: TStringField;
    SocioFuentesIngresosFijoshasta: TSQLTimeStampField;
    frecuenciaPagos: TFDQuery;
    frecuenciaPagosidFormaPago: TFDAutoIncField;
    frecuenciaPagosdescripcion: TStringField;
    frecuenciaPagosletra: TWideStringField;
    frecuenciaPagosdias: TIntegerField;
    frecuenciaPagosguid: TStringField;
    dtsFrecuenciaPagos: TDataSource;
    SocioFuentesIngresosFijos_frecuencia: TStringField;
    formasPagos: TFDQuery;
    dsFormasPagos: TDataSource;
    formasPagosidFormaPago: TFDAutoIncField;
    formasPagosdescripcion: TStringField;
    formasPagosletra: TWideStringField;
    formasPagosguid: TStringField;
    SocioFuentesIngresosFijos_formaPago: TStringField;
    direccionIngreso_pais: TStringField;
    direccionEF_Prov: TFDQuery;
    direccionIngreso_distrito: TStringField;
    actividadEgresosF: TFDQuery;
    actividadEgresosFguid: TStringField;
    actividadEgresosFidFormaPago: TIntegerField;
    actividadEgresosFmonto: TCurrencyField;
    actividadEgresosFidPais: TStringField;
    actividadEgresosFtipoIngreso: TStringField;
    actividadEgresosF_pais: TStringField;
    dtsActividadEgresosF: TDataSource;
    actividadEgresosFidFrecuencia: TWideStringField;
    actividadEgresosF_frecuencia: TStringField;
    actividadEgresosFguidSocio: TStringField;
    actividadEgresosFguidActividad: TStringField;
    actividadEgresosFidProvincia: TIntegerField;
    actividadEgresosFguidProvincia: TStringField;
    actividadEgresosFdetalle: TMemoField;
    SocioFuentesIngresosVariables_actividad: TStringField;
    SocioFuentesIngresosVariables_sector: TStringField;
    SocioFuentesIngresosVariables_cargo: TStringField;
    SocioFuentesIngresosVariables_proveedor: TStringField;
    SocioFuentesIngresosVariables_frecuencia: TStringField;
    SocioFuentesIngresosVariables_formaPago: TStringField;
    direccionIngresoV: TFDQuery;
    StringField22: TStringField;
    dtsDireccionIngresoV: TDataSource;
    direccionIngresoVguid: TStringField;
    direccionIngresoVguidSocio: TStringField;
    direccionIngresoVguidActividad: TStringField;
    direccionIngresoVidPais: TStringField;
    direccionIngresoVguidProvincia: TStringField;
    direccionIngresoVguidDistrito: TStringField;
    direccionIngresoVguidCorreg: TStringField;
    direccionIngresoVguidBarrio: TStringField;
    direccionIngresoVbarriada: TStringField;
    direccionIngresoVcalleEdificio: TStringField;
    direccionIngresoVnumero: TStringField;
    direccionIngresoVdetalle: TMemoField;
    direccionIngresoVidProvincia: TIntegerField;
    direccionIngresoVidDistrito: TIntegerField;
    direccionIngresoVidCorreg: TIntegerField;
    direccionIngresoVidBarrio: TIntegerField;
    direccionIngresoVtipoIngreso: TStringField;
    direccionIngresoVfecha_au: TSQLTimeStampField;
    direccionIngresoVusuario_au: TStringField;
    SocioFuentesIngresosVariablesidsocio: TIntegerField;
    SocioFuentesIngresosVariablesidsector: TIntegerField;
    SocioFuentesIngresosVariablesguid: TStringField;
    SocioFuentesIngresosVariablesguidSocio: TStringField;
    SocioFuentesIngresosVariablesidActividad: TIntegerField;
    SocioFuentesIngresosVariablesidCargo: TIntegerField;
    SocioFuentesIngresosVariablesguidFuente: TStringField;
    SocioFuentesIngresosVariablesguidSector: TStringField;
    SocioFuentesIngresosVariablesactivo: TBooleanField;
    SocioFuentesIngresosVariablesdesde: TDateField;
    SocioFuentesIngresosVariableshasta: TSQLTimeStampField;
    SocioFuentesIngresosVariablescargo: TStringField;
    SocioFuentesIngresosVariablesfrecuencia: TIntegerField;
    SocioFuentesIngresosVariablesletraFrecuencia: TWideStringField;
    SocioFuentesIngresosVariablesmonto: TCurrencyField;
    SocioFuentesIngresosVariablesidFormaPago: TIntegerField;
    SocioFuentesIngresosVariablesguidFormaPago: TStringField;
    SocioFuentesIngresosVariablesfuente: TIntegerField;
    SocioFuentesIngresosVariablestipoFuente: TIntegerField;
    SocioFuentesIngresosVariablesdescripcionTipoFuente: TStringField;
    SocioFuentesIngresosVariablesidtipoFuente: TIntegerField;
    SocioFuentesIngresosVariablesidtipoIngreso: TIntegerField;
    SocioFuentesIngresosVariablesidtipoFlujo: TStringField;
    SocioFuentesIngresosVariablesantiguedad: TIntegerField;
    dts_direccionIF_Prov: TDataSource;
    dtsDireccionIF_Pais: TDataSource;
    direccionIngresoF: TFDQuery;
    direccionIngresoFguid: TStringField;
    direccionIngresoFguidSocio: TStringField;
    direccionIngresoFguidActividad: TStringField;
    direccionIngresoFidPais: TStringField;
    direccionIngresoFguidProvincia: TStringField;
    direccionIngresoFguidDistrito: TStringField;
    direccionIngresoFguidCorreg: TStringField;
    direccionIngresoFguidBarrio: TStringField;
    direccionIngresoFbarriada: TStringField;
    direccionIngresoFcalleEdificio: TStringField;
    direccionIngresoFnumero: TStringField;
    direccionIngresoFdetalle: TMemoField;
    direccionIngresoFidProvincia: TIntegerField;
    direccionIngresoFidDistrito: TIntegerField;
    direccionIngresoFidCorreg: TIntegerField;
    direccionIngresoFidBarrio: TIntegerField;
    direccionIngresoFtipoIngreso: TStringField;
    direccionIngresoFfecha_au: TSQLTimeStampField;
    direccionIngresoFusuario_au: TStringField;
    dsdireccionIngresoF: TDataSource;
    direccionIngresoF_pais: TStringField;
    direccionIngresoF_provincia: TStringField;
    direccionEF_ProvidPais: TStringField;
    direccionEF_Providprovincia: TIntegerField;
    direccionEF_ProvNombre: TStringField;
    direccionEF_ProvidArea: TIntegerField;
    direccionEF_ProvguidProvincia: TStringField;
    direccionEF_Provfecha_au: TSQLTimeStampField;
    direccionEF_Provusuario_au: TVarBytesField;
    actividadEgresosF_provincia: TStringField;
    direccionIV_prov: TFDQuery;
    StringField4: TStringField;
    IntegerField11: TIntegerField;
    StringField5: TStringField;
    IntegerField15: TIntegerField;
    StringField10: TStringField;
    SQLTimeStampField3: TSQLTimeStampField;
    VarBytesField1: TVarBytesField;
    direccionIV_Pais: TFDQuery;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    IntegerField17: TIntegerField;
    BCDField1: TBCDField;
    IntegerField18: TIntegerField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField23: TStringField;
    StringField25: TStringField;
    BCDField2: TBCDField;
    BooleanField1: TBooleanField;
    StringField26: TStringField;
    IntegerField19: TIntegerField;
    StringField27: TStringField;
    StringField28: TStringField;
    actividadEgresosV: TFDQuery;
    StringField32: TStringField;
    StringField33: TStringField;
    StringField37: TStringField;
    dtsactividadEgresosV: TDataSource;
    actividadEgresosVguid: TStringField;
    actividadEgresosVguidSocio: TStringField;
    actividadEgresosVguidActividad: TStringField;
    actividadEgresosVidFrecuencia: TWideStringField;
    actividadEgresosVidFormaPago: TIntegerField;
    actividadEgresosVmonto: TCurrencyField;
    actividadEgresosVidPais: TStringField;
    actividadEgresosVidProvincia: TIntegerField;
    actividadEgresosVguidProvincia: TStringField;
    actividadEgresosVtipoIngreso: TStringField;
    actividadEgresosVdetalle: TMemoField;
    direccionIngresoV_provincia: TStringField;
    ProductoPlanPago: TFDQuery;
    dtsProductoPlanPago: TDataSource;
    Pagos: TFDQuery;
    PagosPagos: TFloatField;
    SocioProductosguidSocio: TStringField;
    Producto: TFDQuery;
    Productosubcuenta: TSmallintField;
    Productonombresubcuenta: TWideStringField;
    Productoprestamo_s_n: TWideStringField;
    Productoabreviatura: TWideStringField;
    Productocuenta: TWideStringField;
    Productoperiodo_tasa: TSmallintField;
    Productogarantia: TWideStringField;
    Productofecha_aud: TSQLTimeStampField;
    Productousuario: TWideStringField;
    ProductoParaAhorrista: TBooleanField;
    ProductoParaSocio: TBooleanField;
    ProductoParaAmbos: TBooleanField;
    Productofiador: TBooleanField;
    Productofinalidad: TBooleanField;
    ProductoMontoAportacion: TBCDField;
    ProductoActivePage: TIntegerField;
    ProductocalculaMora: TBooleanField;
    ProductocalulaInteres: TBooleanField;
    ProductointeresSobre: TStringField;
    Productoretiro: TBooleanField;
    Productodeposito: TBooleanField;
    Productointeres: TBCDField;
    ProductoPlanPagonum_cuenta: TStringField;
    ProductoPlanPagosecuencia: TIntegerField;
    ProductoPlanPagosocio: TIntegerField;
    ProductoPlanPagosubcuenta: TIntegerField;
    ProductoPlanPagovencimiento: TDateField;
    ProductoPlanPagosaldoInicial: TFloatField;
    ProductoPlanPagoletra: TCurrencyField;
    ProductoPlanPagodeberSer: TFloatField;
    ProductoPlanPagousuario: TStringField;
    ProductoPlanPagofecha_aud: TSQLTimeStampField;
    ProductoPlanPagoguid: TStringField;
    ProductoPlanPagoguidCuenta: TStringField;
    ProductoPlanPagoguidSocio: TStringField;
    ProductoPlanPago_SaldoReal: TFloatField;
    saldoCuenta: TFDQuery;
    morosidadPrestamos: TFDQuery;
    dtsMorosidadPrestamos: TDataSource;
    saldoCuentasaldoReal: TFloatField;
    saldoCuentadeberSer: TFloatField;
    saldoCuentafechaVencimiento: TDateField;
    saldoCuentaMeses: TIntegerField;
    morosidadPrestamosnum_cuenta: TWideStringField;
    morosidadPrestamosLetra: TFloatField;
    morosidadPrestamosMonto: TFloatField;
    morosidadPrestamosperiodo_planilla: TWideStringField;
    morosidadPrestamosnombreCompleto: TStringField;
    TipoProductointeres: TBCDField;
    TipoProductomora: TBCDField;
    morosidadPrestamosmora: TBCDField;
    frecuenciaPagosperiodoGracia: TBooleanField;
    frecuenciaPagosperiodoGraciaMeses: TIntegerField;
    morosidadPrestamosperiodoGracia: TBooleanField;
    morosidadPrestamosperiodoGraciaMeses: TIntegerField;
    procesos: TFDQuery;
    procesosidProceso: TFDAutoIncField;
    procesosnombre: TStringField;
    procesosperiocidad: TStringField;
    procesosmes: TIntegerField;
    procesosano: TIntegerField;
    procesosfechaInicioCierre: TSQLTimeStampField;
    procesosusuario_au: TStringField;
    procesosfechaFinCierre: TSQLTimeStampField;
    SocioProductos_NombreProducto: TStringField;
    cheque_enc: TFDQuery;
    cheque_enctipo_documento: TWideStringField;
    cheque_encdocumento: TIntegerField;
    cheque_encfecha_doc: TSQLTimeStampField;
    cheque_encestado: TSingleField;
    cheque_encanombrede: TIntegerField;
    cheque_encimpreso: TSingleField;
    cheque_encanulado: TSingleField;
    cheque_enccontabilidad: TSingleField;
    cheque_encconciliado: TSingleField;
    cheque_encfecha_aud: TSQLTimeStampField;
    cheque_encusuario: TWideStringField;
    cheque_encmonto_gral: TFloatField;
    cheque_encpagare: TWideStringField;
    cheque_encidSocio: TIntegerField;
    cheque_encguid: TStringField;
    cheque_encbanco: TIntegerField;
    cheque_encnCuenta: TStringField;
    cheque_encnCuentaCheque: TStringField;
    tblSocios: TFDQuery;
    dtsChequesCuenta: TDataSource;
    chequesCuentaactiva: TBooleanField;
    chequesCuentaNombreBanco: TWideStringField;
    cheque_encobservacion: TMemoField;
    dtsCuentasChequera: TDataSource;
    CuentasChequera: TFDQuery;
    CuentasChequerano_cuenta: TWideStringField;
    CuentasChequeranombre: TWideStringField;
    CuentasChequeratipo: TIntegerField;
    CuentasChequerafecha_apertura: TSQLTimeStampField;
    CuentasChequerabanco: TIntegerField;
    CuentasChequeracuenta: TWideStringField;
    CuentasChequeraseq_chq: TIntegerField;
    CuentasChequerasecuencia_auto: TSingleField;
    CuentasChequerafecha_aud: TSQLTimeStampField;
    CuentasChequerausuario: TWideStringField;
    CuentasChequeraactiva: TBooleanField;
    CuentasChequeraNombreBanco: TWideStringField;
    chequesGenerados: TFDQuery;
    chequesGeneradosdocumento: TIntegerField;
    chequesGeneradosanombrede: TIntegerField;
    chequesGeneradosfecha_doc: TSQLTimeStampField;
    chequesGeneradosimpreso: TSingleField;
    chequesGeneradosMonto: TFloatField;
    chequesGeneradosBenef1: TStringField;
    chequesGeneradosBenef2: TWideStringField;
    cheque_det: TFDQuery;
    cheque_dettipo_documento: TWideStringField;
    cheque_detdocumento: TIntegerField;
    cheque_detfecha_doc: TSQLTimeStampField;
    cheque_detnum_cuenta: TWideStringField;
    cheque_detcuenta: TWideStringField;
    cheque_detnaturaleza: TWideStringField;
    cheque_detmonto: TFloatField;
    cheque_detusuario: TWideStringField;
    cheque_detfecha_aud: TSQLTimeStampField;
    cheque_detEfectivo: TFloatField;
    cheque_detCheque: TFloatField;
    cheque_detBanco: TIntegerField;
    cheque_detNumCheque: TIntegerField;
    cheque_dettipoTransaccion: TStringField;
    cheque_detimputable: TBooleanField;
    cheque_detorden: TStringField;
    cheque_detver: TIntegerField;
    productoTrx2guid: TStringField;
    productoTrx2verChk_Tran: TBooleanField;
    socioCuentas: TFDQuery;
    socioCuentasnum_cuenta: TWideStringField;
    socioCuentasnombreCompleto: TStringField;
    dts_socioCuentas: TDataSource;
    socioCuentasnombreSubCuenta: TWideStringField;
    socioCuentasprestamo_S_N: TWideStringField;
    socioCuentassubcuenta: TSmallintField;
    catalogo: TFDQuery;
    catalogocuenta: TWideStringField;
    catalogonombre: TWideStringField;
    catalogonaturaleza: TWideStringField;
    catalogotipo_maescont: TSmallintField;
    catalogomov_auxiliar: TWideStringField;
    catalogocuenta_madre: TWideStringField;
    catalogotipo: TWideStringField;
    catalogofecha_aud: TSQLTimeStampField;
    catalogousuario: TWideStringField;
    Secuencial: TFDQuery;
    Secuencialtipo_doc: TStringField;
    Secuencialdocumento: TIntegerField;
    transaccionTrx: TFDQuery;
    transaccionTrxidTrx: TFDAutoIncField;
    transaccionTrxidProducto: TIntegerField;
    transaccionTrxcuenta: TStringField;
    transaccionTrxdescripcion: TStringField;
    transaccionTrxdebito: TStringField;
    transaccionTrxcredito: TStringField;
    transaccionTrxverAuxiliar: TBooleanField;
    transaccionTrxfecha_aud: TSQLTimeStampField;
    transaccionTrxusuario: TStringField;
    transaccionTrxpago: TBooleanField;
    transaccionTrxprincipal: TBooleanField;
    transaccionTrxDC: TStringField;
    transaccionTrxsigno: TStringField;
    transaccionTrxtipoTrx: TStringField;
    transaccionTrxcajaTrx: TStringField;
    transaccionTrxesInteres: TBooleanField;
    transaccionTrxesMora: TBooleanField;
    transaccionTrxesCaja: TBooleanField;
    transaccionTrxesCapital: TBooleanField;
    transaccionTrxorden: TIntegerField;
    transaccionTrxesImputable: TBooleanField;
    transaccionTrxguid: TStringField;
    transaccionTrxverChk_Tran: TBooleanField;
    movimientoTRX: TFDQuery;
    movimientosCuentasubcuenta: TSmallintField;
    movimientoTRXidTrx: TFDAutoIncField;
    movimientoTRXidProducto: TIntegerField;
    movimientoTRXcuenta: TStringField;
    movimientoTRXdescripcion: TStringField;
    movimientoTRXdebito: TStringField;
    movimientoTRXcredito: TStringField;
    movimientoTRXverAuxiliar: TBooleanField;
    movimientoTRXfecha_aud: TSQLTimeStampField;
    movimientoTRXusuario: TStringField;
    movimientoTRXpago: TBooleanField;
    movimientoTRXprincipal: TBooleanField;
    movimientoTRXDC: TStringField;
    movimientoTRXsigno: TStringField;
    movimientoTRXtipoTrx: TStringField;
    movimientoTRXcajaTrx: TStringField;
    movimientoTRXesInteres: TBooleanField;
    movimientoTRXesMora: TBooleanField;
    movimientoTRXesCaja: TBooleanField;
    movimientoTRXesCapital: TBooleanField;
    movimientoTRXorden: TIntegerField;
    movimientoTRXesImputable: TBooleanField;
    movimientoTRXguid: TStringField;
    movimientoTRXverChk_Tran: TBooleanField;
    CuentaSaldoSaldo: TFloatField;
    transaccionTrxMDC: TWideStringField;
    productoTrx2campo: TStringField;
    transaccionTrxcd: TStringField;
    transaccionTrxcampo: TStringField;
    socioCuentascuenta: TWideStringField;
    socioCuentasinteresSobre: TStringField;
    socioCuentastasa: TFloatField;
    saldoMora: TFDQuery;
    saldoMoramontoMora: TFloatField;
    cheque_ListaBeneficiario: TFDQuery;
    beneficiarios: TFDQuery;
    beneficiariosnombrecompleto: TStringField;
    beneficiariosidsocio: TIntegerField;
    productoTrx2Naturaleza: TWideStringField;
    ProductoTrx3: TFDQuery;
    ProductoTrx3idTrx: TFDAutoIncField;
    ProductoTrx3idProducto: TIntegerField;
    ProductoTrx3cuenta: TStringField;
    ProductoTrx3descripcion: TStringField;
    ProductoTrx3debito: TStringField;
    ProductoTrx3credito: TStringField;
    ProductoTrx3verAuxiliar: TBooleanField;
    ProductoTrx3fecha_aud: TSQLTimeStampField;
    ProductoTrx3usuario: TStringField;
    ProductoTrx3pago: TBooleanField;
    ProductoTrx3principal: TBooleanField;
    ProductoTrx3DC: TStringField;
    ProductoTrx3signo: TStringField;
    ProductoTrx3tipoTrx: TStringField;
    ProductoTrx3cajaTrx: TStringField;
    ProductoTrx3esInteres: TBooleanField;
    ProductoTrx3esMora: TBooleanField;
    ProductoTrx3esCaja: TBooleanField;
    ProductoTrx3esCapital: TBooleanField;
    ProductoTrx3orden: TIntegerField;
    ProductoTrx3esImputable: TBooleanField;
    ProductoTrx3guid: TStringField;
    ProductoTrx3verChk_Tran: TBooleanField;
    ProductoTrx3campo: TStringField;
    Actualiza2: TFDQuery;
    ActualizaCheque: TFDQuery;
    chequeImpresion: TFDQuery;
    chequeImpresionEnc: TFDQuery;
    chequeImpresionEnctipo_documento: TWideStringField;
    chequeImpresionEncdocumento: TIntegerField;
    chequeImpresionEncfecha_doc: TSQLTimeStampField;
    chequeImpresionEncestado: TSingleField;
    chequeImpresionEncobservacion: TMemoField;
    chequeImpresionEncanombrede: TIntegerField;
    chequeImpresionEncimpreso: TSingleField;
    chequeImpresionEncanulado: TSingleField;
    chequeImpresionEnccontabilidad: TSingleField;
    chequeImpresionEncconciliado: TSingleField;
    chequeImpresionEncfecha_aud: TSQLTimeStampField;
    chequeImpresionEncusuario: TWideStringField;
    chequeImpresionEncmonto_gral: TFloatField;
    chequeImpresionEncpagare: TWideStringField;
    chequeImpresionEncidSocio: TIntegerField;
    chequeImpresionEncguid: TStringField;
    chequeImpresionEncbanco: TIntegerField;
    chequeImpresionEncnCuenta: TStringField;
    chequeImpresioncuenta: TWideStringField;
    chequeImpresionnombre: TWideStringField;
    chequeImpresionnum_cuenta: TWideStringField;
    chequeImpresiondebito: TBCDField;
    chequeImpresionCredito: TBCDField;
    chequeImpresionidProducto: TSmallintField;
    chequeImpresionNaturaleza: TWideStringField;
    chequeImpresionEncNombreCompleto: TWideStringField;
    productoTrxtipoCuenta: TStringField;
    ProductoTrx3tipoCuenta: TStringField;
    FDQuery1: TFDQuery;
    tipoCuenta: TFDQuery;
    tipoCuentaid: TStringField;
    tipoCuentanombre: TStringField;
    tipoCuentaorden: TIntegerField;
    dts_tipoCuenta: TDataSource;
    FDQuery2: TFDQuery;
    transferencia_enc: TFDQuery;
    transferencia_enctipo_documento: TWideStringField;
    transferencia_encdocumento: TIntegerField;
    transferencia_encfecha_doc: TSQLTimeStampField;
    transferencia_encestado: TSingleField;
    transferencia_encobservacion: TMemoField;
    transferencia_encanombrede: TIntegerField;
    transferencia_encimpreso: TSingleField;
    transferencia_encanulado: TSingleField;
    transferencia_enccontabilidad: TSingleField;
    transferencia_encconciliado: TSingleField;
    transferencia_encfecha_aud: TSQLTimeStampField;
    transferencia_encusuario: TWideStringField;
    transferencia_encmonto_gral: TFloatField;
    transferencia_encpagare: TWideStringField;
    transferencia_encidSocio: TIntegerField;
    transferencia_encguid: TStringField;
    transferencia_encbanco: TIntegerField;
    transferencia_encnCuenta: TStringField;
    fechadelSistema: TFDQuery;
    fechadelSistemaFechaSistema: TSQLTimeStampField;
    actualizaDocumento: TFDQuery;
    pacto: TFDConnection;
    p_Sicios: TFDQuery;
    FDQuery4: TFDQuery;
    ProductoTrx3esPagoEspecial: TBooleanField;
    ProductoTrx3EspecialContraCuenta: TStringField;
    SaldoCuenta1: TFDQuery;
    SaldoCuenta1saldoReal: TFloatField;
    SaldoCuenta1deberSer: TFloatField;
    SaldoCuenta1Vencimiento: TSQLTimeStampField;
    SaldoCuenta1atraso: TIntegerField;
    TipoProductograciaEnMora: TBooleanField;
    trfGeneradas: TFDQuery;
    trfEnc: TFDQuery;
    transferencia_det: TFDQuery;
    FDQuery3: TFDQuery;
    socioPrestamos: TFDQuery;
    socioPrestamosnum_cuenta: TWideStringField;
    socioPrestamosnombresubcuenta: TWideStringField;
    socioPrestamossubcuenta: TSmallintField;
    comprobante_ENC: TFDQuery;
    comprobante_DET: TFDQuery;
    comprobante_ENCtipo_documento: TWideStringField;
    comprobante_ENCdocumento: TIntegerField;
    comprobante_ENCfecha_doc: TSQLTimeStampField;
    comprobante_ENCestado: TSingleField;
    comprobante_ENCobservacion: TMemoField;
    comprobante_ENCanombrede: TIntegerField;
    comprobante_ENCimpreso: TSingleField;
    comprobante_ENCanulado: TSingleField;
    comprobante_ENCcontabilidad: TSingleField;
    comprobante_ENCconciliado: TSingleField;
    comprobante_ENCfecha_aud: TSQLTimeStampField;
    comprobante_ENCusuario: TWideStringField;
    comprobante_ENCmonto_gral: TFloatField;
    comprobante_ENCpagare: TWideStringField;
    comprobante_ENCidSocio: TIntegerField;
    comprobante_ENCguid: TStringField;
    comprobante_ENCbanco: TIntegerField;
    comprobante_ENCnCuenta: TStringField;
    comprobante_ENCNombreCompleto: TWideStringField;
    comprobante_ENCnombreDocumento: TWideStringField;
    comprobante_DETFecha_doc: TSQLTimeStampField;
    comprobante_DETdocumento: TIntegerField;
    comprobante_DETcuenta: TWideStringField;
    comprobante_DETNombreCuenta: TWideStringField;
    comprobante_DETnum_cuenta: TWideStringField;
    comprobante_DETdebito: TBCDField;
    comprobante_DETCredito: TBCDField;
    comprobante_DETidProducto: TSmallintField;
    comprobante_DETNaturaleza: TWideStringField;
    FDQuery5: TFDQuery;
    FDQuery6: TFDQuery;
    cuentaSaldoInteres: TFDQuery;
    SocioDocimagenTxt: TMemoField;
    socioApoyoLentes: TFDQuery;
    socioApoyoLentesidsocio: TIntegerField;
    socioApoyoLentesguidSocio: TStringField;
    socioApoyoLentesfechaApoyo: TDateField;
    socioApoyoLentesmonto: TBCDField;
    socioApoyoLentesnota: TMemoField;
    socioApoyoLentesguid: TStringField;
    socioApoyoLentestipoApoyo: TIntegerField;
    tipoApoyo: TFDQuery;
    socioApoyoDoc: TFDQuery;
    socioApoyoDocidApoyo: TIntegerField;
    socioApoyoDocidSocio: TIntegerField;
    socioApoyoDocsecuencial: TFDAutoIncField;
    socioApoyoDocdescripcion: TStringField;
    socioApoyoDocimagen: TBlobField;
    socioApoyoDocguid: TStringField;
    socioApoyoDocguidApoyo: TStringField;
    socioApoyoDocfecha: TSQLTimeStampField;
    socioApoyoDocusuario_au: TStringField;
    socioApoyoDocfecha_au: TSQLTimeStampField;
    socioApoyoLentesidApoyo: TFDAutoIncField;
    socioApoyoDocnota: TMemoField;
    p_maes_aux: TFDQuery;
    p_fiadores: TFDQuery;
    FDQuery7: TFDQuery;
    socioHerederos: TFDQuery;
    socioHerederosidSocio: TIntegerField;
    socioHerederosorden: TIntegerField;
    socioHerederosnombre: TWideStringField;
    socioHerederosapellido: TWideStringField;
    socioHerederosidParentezco: TIntegerField;
    socioHerederoscedula: TWideStringField;
    socioHerederosporcentajes: TFloatField;
    socioHerederosfecha_aud: TSQLTimeStampField;
    socioHerederosusuario: TWideStringField;
    socioHerederosdia: TIntegerField;
    socioHerederosmes: TIntegerField;
    socioHerederosanio: TIntegerField;
    socioHerederosfechaNacimiento: TDateField;
    tipoDireccion: TFDQuery;
    tipoDireccionidTipoDireccion: TFDAutoIncField;
    tipoDirecciondescripcion: TStringField;
    tipoDireccionsigla: TStringField;
    tipoDireccionguidTipo: TStringField;
    tipoDireccionfecha_au: TSQLTimeStampField;
    tipoDireccionusuario_au: TWideStringField;
    tipotelefono: TFDQuery;
    SocioTelefonos: TFDQuery;
    SocioTelefonosidSocio: TIntegerField;
    SocioTelefonosidsec: TFDAutoIncField;
    SocioTelefonosidTelefono: TStringField;
    SocioTelefonosuso: TStringField;
    SocioTelefonospredeterminado: TBooleanField;
    SocioTelefonosidTipoTelefono: TIntegerField;
    SocioTelefonosSMS: TBooleanField;
    SocioTelefonosguidSocio: TStringField;
    SocioTelefonosguid: TStringField;
    tipotelefonoidTipoTelefono: TFDAutoIncField;
    tipotelefonoDescripcion: TStringField;
    tipotelefonoSMS: TBooleanField;
    SocioDireccion: TFDQuery;
    SocioDireccionidSocio: TIntegerField;
    SocioDireccionsec: TBCDField;
    SocioDireccioncodigoPais: TStringField;
    SocioDireccionidprovincia: TIntegerField;
    SocioDireccionidDistrito: TIntegerField;
    SocioDireccionidCorregimiento: TIntegerField;
    SocioDireccionidBarrio: TIntegerField;
    SocioDireccionidRuta: TIntegerField;
    SocioDirecciondescripcion: TMemoField;
    SocioDireccionpredeterminada: TBooleanField;
    SocioDireccionidtipoDireccion: TIntegerField;
    SocioDireccionguidSocio: TStringField;
    SocioDireccionguidDireccion: TStringField;
    SocioDireccionfecha_au: TSQLTimeStampField;
    SocioDireccionusuario_au: TStringField;
    SocioDireccioncalle: TStringField;
    SocioDireccionedificio: TStringField;
    SocioDireccioncasa: TWideStringField;
    SocioDireccionbarriada: TStringField;
    SocioDireccionnoCasaApart: TWideStringField;
    SocioDireccionesDireccionPrincial: TBooleanField;
    SocioDirecciontipoResidencia: TIntegerField;
    SocioDireccionhipoteca: TIntegerField;
    cajaImage: TFDQuery;
    cajaImageSocio: TIntegerField;
    cajaImageidDoc: TFDAutoIncField;
    cajaImageNombreDoc: TStringField;
    cajaImageverEnCaja: TBooleanField;
    cajaImageruta: TStringField;
    cajaImageimagen: TBlobField;
    cajaImagefechaRegistro: TSQLTimeStampField;
    cajaImageusuario: TStringField;
    cajaImagefechaAud: TSQLTimeStampField;
    cajaImageimagenTxt: TMemoField;
    SocioProductosgraciaEnMora: TBooleanField;
    SocioProductosguid: TStringField;
    dtsProveedores: TDataSource;
    estatus: TFDQuery;
    estatusestatus: TStringField;
    estatusdescripcion: TStringField;
    CuentaFiadoresnum_cuenta: TWideStringField;
    CuentaFiadoresCedula: TWideStringField;
    CuentaFiadoresced1: TWideStringField;
    CuentaFiadoresced2: TIntegerField;
    CuentaFiadoresced3: TIntegerField;
    CuentaFiadoresNombre: TWideStringField;
    CuentaFiadoresApellido: TWideStringField;
    CuentaFiadoresTrabajo: TWideStringField;
    CuentaFiadoresTelefono_Casa: TWideStringField;
    CuentaFiadorestelefono_Ofic: TWideStringField;
    CuentaFiadoresidProfesion: TIntegerField;
    CuentaFiadoresProfesion: TWideStringField;
    FiadoresDireccion: TWideStringField;
    tblSociossocio: TIntegerField;
    tblSociostipoCliente: TIntegerField;
    tblSociosidSocio: TIntegerField;
    tblSociosidAhorrista: TIntegerField;
    tblSociosnombre: TWideStringField;
    tblSociossegundoNombre: TStringField;
    tblSociossegundoApellido: TStringField;
    tblSociosapellidoCasada: TStringField;
    tblSociosnombreCompleto: TStringField;
    tblSociosapellido: TWideStringField;
    tblSociosdireccion: TWideStringField;
    tblSociosidTipoPersona: TStringField;
    tblSociosidTipoDoc: TStringField;
    tblSocioscedL: TStringField;
    tblSociosced1: TWideStringField;
    tblSociosced2: TIntegerField;
    tblSociosced3: TIntegerField;
    tblSociosactivo: TWideStringField;
    tblSociosfecha_ingreso: TSQLTimeStampField;
    tblSociosfecha_salida: TSQLTimeStampField;
    tblSociossexo: TWideStringField;
    tblSociosfecha_nacimiento: TSQLTimeStampField;
    tblSociosnDia: TIntegerField;
    tblSociosnMes: TIntegerField;
    tblSociosnAno: TIntegerField;
    tblSociostelefono_casa: TWideStringField;
    tblSociostelefono_oficina: TWideStringField;
    tblSociosidProfesion: TIntegerField;
    tblSociosidCargo: TIntegerField;
    tblSociosfoto: TWideStringField;
    tblSociosfecha_aud: TSQLTimeStampField;
    tblSociosusuario: TWideStringField;
    tblSociosidCia: TIntegerField;
    tblSociosidSucursal: TIntegerField;
    tblSociosidReferidoPor: TIntegerField;
    tblSociosfechaRegistro: TSQLTimeStampField;
    tblSociosfechaActivacion: TSQLTimeStampField;
    tblSociosfechaDesactivacion: TSQLTimeStampField;
    tblSociosSocioCodigo: TStringField;
    tblSociosSocioPass: TMemoField;
    tblSociosidGrupoEco: TIntegerField;
    tblSociosidEtnia: TIntegerField;
    tblSociosidSectorEco: TIntegerField;
    tblSociosidNacionalidad: TStringField;
    tblSociosidIdioma: TIntegerField;
    tblSociosfechaCambioPass: TSQLTimeStampField;
    tblSociosfechaParaCambiar: TSQLTimeStampField;
    tblSociosexonerado: TBooleanField;
    tblSociosingresoMensual: TBCDField;
    tblSociosEstatus: TStringField;
    tblSociosfechaSalida: TSQLTimeStampField;
    tblSociosfechaSocio: TSQLTimeStampField;
    tblSociosfechaAhorrista: TSQLTimeStampField;
    tblSociosimagen: TBlobField;
    tblSociosidEmpresa: TIntegerField;
    tblSociospasaporteRuc: TStringField;
    tblSociosguidSocio: TStringField;
    tblSociosesAhorrista: TBooleanField;
    tblSociosesSocio: TBooleanField;
    tblSociosesProveedor: TBooleanField;
    tblSociosesPEP: TBooleanField;
    tblSociosesRiesgo: TBooleanField;
    tblSociosestadoCivil: TIntegerField;
    tblSociospaisNacimiento: TStringField;
    tblSociospaisResidencia: TStringField;
    tblSociospaisPasaporte: TStringField;
    tblSociosfechaExpiracionDocumento: TDateField;
    tblSociosesInstitucion: TBooleanField;
    tblSociosesDependiente: TBooleanField;
    tblSociosref_per_nombre: TStringField;
    tblSociosref_per_telefono: TStringField;
    tblSociosref_per_direccion: TStringField;
    tblSociosref_fam_nombre: TStringField;
    tblSociosref_fam_telefono: TStringField;
    tblSociosref_fam_direccion: TStringField;
    tblSociosseguro_Social: TStringField;
    tblSocioslugar_trabajo: TStringField;
    tblSociosObservacion: TMemoField;
    tblSociosdireccion_trabajo: TStringField;
    tblSociosprovincia: TStringField;
    tblSociosdistrito: TStringField;
    tblSocioscorregimiento: TStringField;
    tblSocioscalle_barrio: TStringField;
    dts_EstadoCivil: TDataSource;
    companias: TFDQuery;
    companiascompania: TIntegerField;
    companiasnombre: TWideStringField;
    companiasdireccion_compania: TWideStringField;
    companiasfecha_aud: TSQLTimeStampField;
    companiasusuario: TWideStringField;
    dts_Companias: TDataSource;
    tblSocioscompania: TWideStringField;
    proveedorescompania: TWideStringField;
    SocioDocexpira: TSQLTimeStampField;
    SocioDoctipodoc: TIntegerField;
    tipoDocumentoSocio: TFDQuery;
    tipoDocumentoSocioidTipo: TFDAutoIncField;
    tipoDocumentoSocioDescripcion: TStringField;
    tipoDocumentoSocioactivo: TBooleanField;
    tipoDocumentoSocioconfidencial: TBooleanField;
    tipoDocumentoSociocopiar: TBooleanField;
    dts_tipoDocumentoSocio: TDataSource;
    cajaImageexpira: TSQLTimeStampField;
    cajaImagetipodoc: TIntegerField;
    ArchivoLog: TFDQuery;
    ArchivoLogidlog: TFDAutoIncField;
    ArchivoLogfecha: TSQLTimeStampField;
    ArchivoLogusuario: TStringField;
    ArchivoLogaccion: TStringField;
    ArchivoLogdetalle: TMemoField;
    TipoProductoesAhorro: TBooleanField;
    FDQuery8: TFDQuery;
    dts_Profesiones: TDataSource;
    morosidadPrestamosfecha_inicio: TSQLTimeStampField;
    morosidadPrestamosplazo: TFloatField;
    morosidadPrestamostipo_periodo_tasa: TSmallintField;
    morosidadPrestamostasa: TFloatField;
    morosidadPrestamosfullname: TWideStringField;
    morosidadPrestamosSaldoReal: TFloatField;

    Function Crypt(Action, Src: String): String;
    Function DBConnectCnn  : Boolean ;
    Function DBConnectCnn2 : Boolean ;
    Function fCnn  : Boolean;
    Function fCnn2 : Boolean;
    Function calculoPeriodo(desde,Hasta : Tdatetime) : string;
    procedure tblso(Sender: TObject);
    procedure movimientosCuentaCalcFields(DataSet: TDataSet);
    procedure socioNacionalidadesAfterEdit(DataSet: TDataSet);
    procedure Test2DataChange(Sender: TObject; Field: TField);
    procedure dsdireccionIngresoFDataChange(Sender: TObject; Field: TField);
    procedure dtsDireccionIngresoDataChange(Sender: TObject; Field: TField);

  private
    { Private declarations }
  public
    function _Acceso(_usuario,_acceso: String):Boolean;
    function _guid() : String;
    function _diaMes(_fecha : tdateTime) : Integer;
    function _ultimoDiaMes(ano,mes : integer) : integer;
    Function Dias360(des,has : tdateTime) : integer;
    Function CalculaSaldoActual(NumCuenta: String; cuenta: String) : double;
    Function SalodMora(numcuenta : String) : Double;
    Function _Documento(Operacion : String) : integer;
    Function NumToLetras(num:double) : string;
    Function FechaSistema(): tDateTime;
    Function RegistroLog(_logusuario : String; _logaccion : string ; _logDetalle : string) : boolean;

    { Public declarations }
  end;
const
   coma=#39;
var
  DataModulo1: TDataModulo1;

  usuarioOK,ClaveOK,CambiarClave : Boolean;
  Pregunta, Respuesta : String;
  _fechaSistema : TDate;
  _diaSistema,_mesSistema,_anoSistema : Word;
  _accion     : string;
  _detalleLog : string;
  Server,Usuario,Password,_Roles: string;
  Base : String;
  IniFile : TIniFile;
  Ruta: String;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses DTS, Socios, ProcesoMorisidad;

{$R *.dfm}
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
//               Calcula Saldo Actual de la cuenta Capital(Principal)
//...edw:2017-05-19 8:51am
//------------------------------------------------------------------------------
function TDataModulo1.CalculaSaldoActual(NumCuenta, cuenta: String): double;
Begin
          DataModulo1.CuentaSaldo.Close;
          DataModulo1.CuentaSaldo.Params [0].AsString := numCuenta;
          DataModulo1.CuentaSaldo.Params [1].AsString := cuenta;
          DataModulo1.CuentaSaldo.Open;

          if not DataModulo1.CuentaSaldo.eof then
          Begin
            Result := DataModulo1.CuentaSaldoSaldo.AsFloat ;
          End
          Else
          Begin
            Result := 0.000;
          End;
end;

//------------------------------------------------------------------------------
//
//------------------------------------------------------------------------------

function TDataModulo1.calculoPeriodo(desde, Hasta: Tdatetime): string;
var A, AA, M, MM, D, DD: Word;
  Anio, Mes, Dia: double;
  mMes,mDia, mAnio : string;
begin
  DecodeDate(desde, A, M, D);
  DecodeDate(hasta, AA, MM, DD);
  Anio := Int(AA - A);
  if( M <= MM ) then
     Mes := MM - M
  else
  begin
    Mes := MM+12-M;
    Anio := Anio -1;
  end;
  if( D <= DD ) then
    Dia := DD - D
  else
  begin
    Dia:=DD+MonthDays[IsLeapYear(AA),MM]-D;
    Mes := Mes -1;
  end;
  if Mes < 0 then
  begin
    Anio := Anio - 1;
    Mes := 12 + Mes;
  end;
  if Mes > 1 then
     mMes := 'Meses'
  else
     mMes := 'Mes';
  if Dia > 1 then
     mDia := 'Días'
  else
     mDia := 'Día';
  if Anio > 1 then
     mAnio := 'Años'
  else
     mAnio := 'Año';
//  Result := FormatFloat('#,###0',Anio)+' '+mAnio +', '+FormatFloat('#,###0',Mes)+' '+mMes+' y '+FormatFloat('#,###0',Dia)+' '+mDia;
//  Result := Format('Años: %.0f, Meses: %.0f, Dias: %.0f', [Anio, Mes, Dia]);
  //Result := FormatFloat('#,###0',Anio)+' '+mAnio ; //+', '+FormatFloat('#,###0',Mes)+' '+mMes+' y '+FormatFloat('#,###0',Dia)+' '+mDia;
  Result := Format('%.0fa, %.0fm, %.0fd', [Anio, Mes, Dia]);
end;

function TDataModulo1.Crypt(Action, Src: String): String;
Label
 Lab;
var
KeyLen : Integer;
KeyPos : Integer;
OffSet : Integer;
Dest, Key : String;
SrcPos : Integer;
SrcAsc : Integer;
TmpSrcAsc : Integer;
Range : Integer;
begin
  if (Src = '') Then begin
    Result:= '';
    Goto Lab;
  end;
  Key := 'YUQL23KL23DF90WI5E1JAS467NMCXXL6JAOAUWWMCL0AOMM4A 4VZYW9KHJUI2347EJHJKDF3424SKLK3LAKDJSL9RTIKJ';
  Dest := '';
  KeyLen := Length(Key);
  KeyPos := 0;
  SrcPos := 0;
  SrcAsc := 0;
  Range := 256;
  if Action = 'E' then begin
    Randomize;
    OffSet := Random(Range);
    Dest := Format('%1.2x',[OffSet]);
    for SrcPos := 1 to Length(Src) do begin
     //Application.ProcessMessages;
      SrcAsc := (Ord(Src[SrcPos]) + OffSet) Mod 255;
      if KeyPos < KeyLen then KeyPos := KeyPos + 1 else KeyPos := 1;
      SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      Dest := Dest + Format('%1.2x',[SrcAsc]);
      OffSet := SrcAsc;
    end;
  end
  Else if Action = 'D' then begin
    OffSet := StrToInt('$'+ copy(Src,1,2));
    SrcPos := 3;
    repeat
      SrcAsc := StrToInt('$'+ copy(Src,SrcPos,2));
      if (KeyPos < KeyLen) Then KeyPos := KeyPos + 1 else KeyPos := 1;
      TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      if TmpSrcAsc <= OffSet then TmpSrcAsc := 255 + TmpSrcAsc - OffSet
      else TmpSrcAsc := TmpSrcAsc - OffSet;
      Dest := Dest + Chr(TmpSrcAsc);
      OffSet := SrcAsc;
      SrcPos := SrcPos + 2;
    until (SrcPos >= Length(Src));
  end;
  Result := Dest;
  Lab:
end;
{ TDataModulo1 }




procedure TDataModulo1.tblso(Sender: TObject);

begin
//
//  if fCnn then
//    if fCnn2 then
//    else
//  else
//  begin
//
//  end;

 //---
 //---  Obtener la fecha del sistema

  Generico.Close;
  Generico.SQL.Clear;
  Generico.SQL.Add('Select fechaSistema from Cia where id = 1');
  Generico.Open;
  _fechaSistema := Generico.FieldByName('fechaSistema').AsDateTime;
  DecodeDate(_fechaSistema ,_anoSistema,_mesSistema,_diaSistema );


end;



function TDataModulo1.fCnn: Boolean;
var
  appINI : TIniFile;
  strcon : string;
begin
 //--
  strCon := cnn.ConnectionString;
  cnn.Connected := False;
  Ruta := GetCurrentDir ; // 'C:\coopena'; //GetCurrentDir();
  appINI := TIniFile.Create(Ruta+'\coopena.ini') ; ;
  try

    Server   := appINI.ReadString('cnn', 'Server',     '') ;
    Base     := appINI.ReadString('cnn', 'Database', '') ;
    Usuario  := DataModulo1.Crypt('D',appINI.ReadString('cnn', 'Usuario','')) ;
    Password := DataModulo1.Crypt('D',appINI.ReadString('cnn', 'Contrasena','')) ;
    result   := true;
  except
    result := False;
    appINI.Free;
  end;

  if not DBConnectCnn then
  begin
//     EstatusConeccion := 'Desconectado';
    raise exception.Create('No fue posible conectarse a la base de datos!');
  end
  else
  begin
 //     EstatusConeccion := 'Conectado';
   //   tblEmpresa.Open;
  end;
end;

function TDataModulo1.DBConnectCnn: Boolean;
var
  conStr,constrOld : string;

begin
//Provider=SQLOLEDB.1;Password=Frijol001.;Persist Security Info=True;User ID=sa;Initial Catalog=COOPENA;Data Source=.;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID=ECEDENO-PC;Use Encryption for Data=False;Tag with column collation when possible=False
//--------
   conStr   := 'Provider=SQLOLEDB.1;' +
               'Password='+Trim(Password)+';'+
               'Persist Security Info=True;'+
               'User ID='+Trim(Usuario)+';'+
               'Initial Catalog=' + Base + ';'+
               'Data Source=' + Server +';';
   Result := false;
   cnn.Close;
   cnn.ConnectionString := conStr;
   cnn.LoginPrompt := False;
   if (NOT cnn.Connected) then
   try
     cnn.Open;
     Result:=True;
   except on E:Exception do
     begin
       //
     end;
   end;
end;




function TDataModulo1.fCnn2: Boolean;
var
  appINI : TIniFile;
  strcon : string;
begin
 //--
  strCon := cnn2.ConnectionString;
  cnn2.Connected := False;
  Ruta := GetCurrentDir; // 'C:\coopena'; //GetCurrentDir();
  appINI := TIniFile.Create(Ruta+'\coopena.ini') ; ;
  try

    Server   := appINI.ReadString('cnn2', 'Server',     '') ;
    Base     := appINI.ReadString('cnn2', 'Database', '') ;
  //  Usuario  := appINI.ReadString('cnn2', 'Usuario',         '') ;
  //  Password := appINI.ReadString('cnn2', 'Contrasena',      '') ;
    Usuario  := DataModulo1.Crypt('D',appINI.ReadString('cnn2', 'Usuario','')) ;
    Password := DataModulo1.Crypt('D',appINI.ReadString('cnn2', 'Contrasena','')) ;
  finally
    appINI.Free;
  end;

  if not DBConnectCnn2 then
  begin
//     EstatusConeccion := 'Desconectado';
    raise exception.Create('No fue posible conectarse a la base de datos!');
  end
  else
  begin

  end;
end;

function TDataModulo1.FechaSistema: tDateTime;
begin
  fechadelSistema.Close;
  fechadelSistema.Open;

  if not fechadelSistema.eof then
    FechaSistema := fechadelSistemaFechaSistema.AsDateTime ;


end;

procedure TDataModulo1.movimientosCuentaCalcFields(DataSet: TDataSet);
begin
  //movimientosCuentasaldo.Value  := movimientosCuentamontoCapital.Value ;
end;


function TDataModulo1.NumToLetras(num: double): string;
var
  cadena   : array[0..12] of char;
  cade     : array[0..2] of char;
  cienmil  : string[20];
  diezmil  : string[14];
  unmil    : string[14];
  centena  : string[14];
  decena   : string[14];
  unidad   : string[10];
  largo,n,i: integer;
  texto    : string;
  letras   : string;

begin
 texto:=formatfloat('####0.00',num);
 strpcopy(cadena,texto);


 cienmil:='';
 diezmil:='';
 unmil:='';
 centena:='';
 decena:='';
 unidad:='';
 letras:='';
 largo := length(texto);
 if largo < 12 then
  begin
   cadena[8] := cadena[largo-1];
   cadena[7] := cadena[largo-2];
   cadena[6] := cadena[largo-3];
   cadena[5] := cadena[largo-4];
   cadena[4] := cadena[largo-5];
   cadena[3] := cadena[largo-6];
   cadena[2] := cadena[largo-7];
   cadena[1] := cadena[largo-8];
   n:= 8-largo;
   i:= 0;
   while i <= n do
    begin
      cadena[i]:= #32;
      i:=i+1;
    end;
  end;
  cade[2] := cadena[8];
  cade[1] := cadena[7];
  cade[0] := cadena[6];

  if cade[1] = #46 then
  begin
     cadena[0] := cadena[1];
     cadena[1] := cadena[2];
     cadena[2] := cadena[3];
     cadena[3] := cadena[4];
     cadena[4] := cadena[5];
     cadena[5] := cadena[6];
     cadena[6] := cadena[7];
     cadena[7] := cadena[8];
     cadena[8] := #48;
  end;

 if cade[2] = #46 then
  begin
     cadena[0] := cadena[1];
     cadena[1] := cadena[2];
     cadena[2] := cadena[3];
     cadena[3] := cadena[4];
     cadena[4] := cadena[5];
     cadena[5] := cadena[6];
     cadena[6] := cadena[7];
     cadena[7] := #48;
     cadena[8] := #48;
  end;
  { la parte que calcula cien, diez y miles}

 case cadena [0] of
      '1': cienmil := 'Ciento ';
      '2': cienmil := 'Doscientos ';
      '3': cienmil := 'Trescientos ';
      '4': cienmil := 'Cuatrocientos ';
      '5': cienmil := 'Quinientos ';
      '6': cienmil := 'Seicientos ';
      '7': cienmil := 'Setecientos ';
      '8': cienmil := 'Ochocientos ';
      '9': cienmil := 'Novecientos ';
 end;
 if (Cadena[0] ='1') and (Cadena[1] ='0') and (Cadena[2] ='0') then
     cienmil := 'Cien Mil';
 if (Cadena[0] ='2') and (Cadena[1] ='0') and (Cadena[2] ='0') then
     cienmil := 'DOSCIENTOS MIL';
 if (Cadena[0] ='3') and (Cadena[1] ='0') and (Cadena[2] ='0') then
     cienmil := 'TRESCIENTOS MIL';
 if (Cadena[0] ='4') and (Cadena[1] ='0') and (Cadena[2] ='0') then
     cienmil := 'CUATROCIENTOS MIL';
 if (Cadena[0] ='5') and (Cadena[1] ='0') and (Cadena[2] ='0') then
     cienmil := 'QUINIENTOS MIL';
 if (Cadena[0] ='6') and (Cadena[1] ='0') and (Cadena[2] ='0') then
     cienmil := 'SEISCIENTOS MIL';
 if (Cadena[0] ='7') and (Cadena[1] ='0') and (Cadena[2] ='0') then
     cienmil := 'SETECIENTOS MIL';
 if (Cadena[0] ='8') and (Cadena[1] ='0') and (Cadena[2] ='0') then
     cienmil := 'OCHOCIENTOS MIL';
 if (Cadena[0] ='9') and (Cadena[1] ='0') and (Cadena[2] ='0') then
     cienmil := 'NOVECIENTOS MIL';
  //Showmessage(cienmil);
   if cadena[2] = '0' then
   begin
    case cadena [1] of
      '1': diezmil := 'DIEZ MIL ';
      '2': diezmil := 'VEINTE MIL ';
      '3': diezmil := 'TREINTA MIL ';
      '4': diezmil := 'CUARENTA MIL ';
      '5': diezmil := 'CINCUENTA MIL ';
      '6': diezmil := 'SESENTA MIL ';
      '7': diezmil := 'SETENTA MIL ';
      '8': diezmil := 'OCHENTA MIL ';
      '9': diezmil := 'NOVENTA MIL ';
    end;
   end
 else
   begin
    if cadena[1] = '1' then
      begin
           case cadena [2] of
           '1': diezmil := 'ONCE MIL ';
           '2': diezmil := 'DOCE MIL ';
           '3': diezmil := 'TRECE MIL ';
           '4': diezmil := 'CATORCE MIL ';
           '5': diezmil := 'QUINCE MIL ';
           '6': diezmil := 'DIECISEIS MIL ';
           '7': diezmil := 'DIECISIETE MIL ';
           '8': diezmil := 'DIECIOCHO MIL ';
           '9': diezmil := 'DIECINUEVE MIL ';
           end;
      end
    else
      begin
           case cadena[1] of
           '2': diezmil := 'VEINTI';
           '3': diezmil := 'TREINTA Y ';
           '4': diezmil := 'CUARENTA Y';
           '5': diezmil := 'CINCUENTA Y ';
           '6': diezmil := 'SESENTA Y ';
           '7': diezmil := 'SETENTA Y ';
           '8': diezmil := 'OCHENTA Y ';
           '9': diezmil := 'NOVENTA Y';
           end;
           case cadena[2] of
           '1': unmil := 'UN MIL ';
           '2': unmil := 'DOS MIL ';
           '3': unmil := 'TRES MIL ';
           '4': unmil := 'CUATRO MIL ';
           '5': unmil := 'CINCO MIL ';
           '6': unmil := 'SEIS MIL ';
           '7': unmil := 'SIETE MIL ';
           '8': unmil := 'OCHO MIL ';
           '9': unmil := 'NUEVE MIL ';
           end;
      end;
   end;
{ la parte que calcula cientos, decenas y unidades }

 case cadena [3] of
      '1': centena := 'CIENTO ';
      '2': centena := 'DOSCIENTOS ';
      '3': centena := 'TRESCIENTOS ';
      '4': centena := 'CUATROCIENTOS ';
      '5': centena := 'QUINIENTOS ';
      '6': centena := 'SEISCIENTOS ';
      '7': centena := 'SETECIENTOS ';
      '8': centena := 'OCHOCIENTOS ';
      '9': centena := 'NOVECIENTOS ';
 end;

 if cadena[3] = '1' then
    if cadena[4] = '0' then
       if cadena[5] = '0' then
          centena := 'CIEN ';
 if cadena[5] = '0' then
   begin
    case cadena [4] of
      '1': decena := 'DIEZ ';
      '2': decena := 'VEINTE ';
      '3': decena := 'TREINTA ';
      '4': decena := 'CUARENTA ';
      '5': decena := 'CINCUENTA ';
      '6': decena := 'SESENTA ';
      '7': decena := 'SETENTA ';
      '8': decena := 'OCHENTA ';
      '9': decena := 'NOVENTA ';
    end;
   end
 else
   begin
    if cadena[4] = '1' then
      begin
           case cadena [5] of
           '1': decena := 'ONCE ';
           '2': decena := 'DOCE ';
           '3': decena := 'TRECE ';
           '4': decena := 'CATORCE ';
           '5': decena := 'QUINCE ';
           '6': decena := 'DIECISEIS ';
           '7': decena := 'DIECISIETE ';
           '8': decena := 'DIECIOCHO ';
           '9': decena := 'DIECINUEVE ';
           end;
      end
    else
      begin
           case cadena[4] of
           '2': decena := 'VEINTI';
           '3': decena := 'TREINTA Y ';
           '4': decena := 'CUARENTA Y ';
           '5': decena := 'CINCUENTA Y ';
           '6': decena := 'SESENTA Y ';
           '7': decena := 'SETENTA Y ';
           '8': decena := 'OCHENTA Y ';
           '9': decena := 'NOVENTA Y ';
           end;
           case cadena[5] of
           '1': unidad := 'UNO ';
           '2': unidad := 'DOS ';
           '3': unidad := 'TRES ';
           '4': unidad := 'CUATRO ';
           '5': unidad := 'CINCO ';
           '6': unidad := 'SEIS ';
           '7': unidad := 'SIETE ';
           '8': unidad := 'OCHO ';
           '9': unidad := 'NUEVE ';
           end;
      end;
   end;


{fin del calculo}
 if (cadena[0] = #32) then
   if (cadena[1] = #32) then
      if (cadena[2] = #49)  then unmil := 'MIL ';
 NumToLetras:= concat(cienmil+' '+diezmil+unmil+centena+decena+unidad+'con ' +
                      cadena[7]+cadena[8]+'/100');
end;

{$Region '********** Registro de LOG del Sistema *****************************'}
function TDataModulo1.RegistroLog(_logusuario, _logaccion,
  _logDetalle: string): boolean;
begin
//--
 result:= True;

 ArchivoLog.Close;
 ArchivoLog.SQL.Clear;
 ArchivoLog.SQL.add('Insert into archivoLog (');
 ArchivoLog.SQL.add(' fecha');
 ArchivoLog.SQL.add(',usuario');
 ArchivoLog.SQL.add(',accion');
 ArchivoLog.SQL.add(',Detalle )');
 //-- Seccion de Valores
 ArchivoLog.SQL.add( ' Values (');
 ArchivoLog.SQL.add(QuotedStr(formatdatetime('yyyy-mm-dd hh:nn:ss',FechaSistema())));
 ArchivoLog.SQL.add(',' + quotedStr(_logusuario));
 ArchivoLog.SQL.add(',' + QuotedStr(_logaccion));
 ArchivoLog.SQL.add(',' + QuotedStr(_logDetalle));
 ArchivoLog.SQL.add(' )');

 try
   ArchivoLog.ExecSQL;
 except
  on E : Exception do
  begin
    ShowMessage(E.ClassName+' Error al actulizar log : '+E.Message);
    result := false;
  end;

 end;
end;
{$EndRegion}

function TDataModulo1.SalodMora(numcuenta: String): Double;
var
 _saldoMora : Double;
begin
//---
  saldoMora.Close;
  saldoMora.Params [0].AsString := numcuenta;
  saldomora.Open;

  _saldoMora := 0.00;
  if not saldoMora.Eof then
  begin
    saldomora.First;
    while not saldoMora.Eof do
    begin
      _saldomora := _saldoMora + saldoMoramontoMora.AsFloat;
      saldoMora.Next;
    end;

  end;

  result := _saldoMora;
end;

procedure TDataModulo1.socioNacionalidadesAfterEdit(DataSet: TDataSet);
begin
  ShowMessage('');
end;

procedure TDataModulo1.Test2DataChange(Sender: TObject; Field: TField);
begin

end;

//==============================================================================
//                            Funcion _Acceso (Entrar)
//
// Descripcion:
//       1- Verifica el acceso del usuario en la tabla de usuarioRoles
//          DataModule1.rolesUsuarioLogin
//
// LLamado Por:
//            -
//------------------------------------------------------------------------------
//       Por                |     Fecha         |    Hora
//------------------------------------------------------------------------------
// 00- Edwin cedeno         | 5-abr-2017        | 9:17pm
//==============================================================================
function TDataModulo1._Acceso(_usuario, _acceso: String): Boolean;
begin
//---

   DataModulo1.rolesUsuarioLogin.close;
   DataModulo1.rolesUsuarioLogin.Params [0].Value := _usuario;
   DataModulo1.rolesUsuarioLogin.open;
   DataModulo1.rolesUsuarioLogin.First;

   while not DataModulo1.rolesUsuarioLogin.eof do
   begin

      if _acceso = DataModulo1.rolesUsuarioLogin.FieldByName('codigoRol').AsString  then
      begin
        result := true ;
        DataModulo1.rolesUsuarioLogin.close;
        exit;
      end;
      DataModulo1.rolesUsuarioLogin.Next;

   end;
   DataModulo1.rolesUsuarioLogin.close;
   result := false;
end;

function TDataModulo1._diaMes(_fecha: tdateTime): Integer;
var
    ano, mes, dia: Word;
begin
    DecodeDate( _fecha, ano, mes, dia );
      Result:=0;
      case mes of
      2:  if IsLeapYear(ano) then Result:=29 else Result:=28;
      1,3,5,7,8,10,12: Result:=31;
      4,6,9,11:        Result:=30;
      end;
end;

function TDataModulo1._Documento(Operacion: String): integer;
begin
//---   llamado al query que optiene la secuencia actual
  DataModulo1.Secuencial.Close;
  DataModulo1.Secuencial.Params [0].AsString := Operacion;
  DataModulo1.Secuencial.Open;

  if not DataModulo1.Secuencial.Eof  then
  begin
    Result:= DataModulo1.SecuencialDocumento.asinteger;
  end
  Else
  Begin
    Result := 0;
  End;
end;

function TDataModulo1._guid: String;
var
 MyGuid1 : TGUID;
 _guid         : string;
begin
  CreateGUID(MyGUID1);
  GUIDToString(MyGuid1);
  _guid := GUIDToString(MyGuid1);
  result := _guid;
end;

function TDataModulo1._ultimoDiaMes(ano, mes: integer): integer;
Begin
  If (Mes >= 1) And (Mes <= 12) Then
    If (Mes = 4) Or (Mes = 6) Or (Mes = 9) Or (Mes = 11) Then
      Result:= 30
    Else If Mes = 2 Then
    Begin
      If IsLeapYear(Ano) Then
        Result:= 29
      Else
        Result:= 28
      End
    Else
      Result:= 31
  Else
    ShowMessage('Mes incorrecto');
End;


function TDataModulo1.DBConnectCnn2: Boolean;
var
  conStr,constrOld : string;

begin

   constrOld := cnn2.ConnectionString;
  // cnn2
   conStr    := 'Database='    + Base + ';'         +
                'User_Name='   + Trim(Usuario)+';'  +
                'Password='    + Trim(Password)+';' +
                'Server='      + Server +';'        +
                'DriverID=MSSQL';
//   ShowMessage('Base : '          + base     +
//               ', Usuario: '      + usuario  +
//               ', Password: '     + password +
//               ', Server: '       + Server   +
//               ', DriverID: '     + 'MSSQL');
   Result := false;
   cnn2.Close;
   cnn2.ConnectionString := conStr;
   cnn2.LoginPrompt := False;

   if (NOT cnn2.Connected) then
   try
     cnn2.Open;
     Result:=True;
   except on E:Exception do
     begin
       //
     end;
   end;
end;



function TDataModulo1.Dias360(des, has: tdateTime): integer;
var
  dd,dm,dh,da: Integer;
begin
  if DayOf(Des) = 31 then Des:= IncDay(Des, -1); // mes de 30 días
  if Abs(YearOf(Has)-YearOf(Des)) = 0 then  // mismo año
  begin
    // días que faltan para completar mes (Des)
    dd:= 30 - DayOf(Des);
    // días comprendidos entre meses
    dm:= (Abs(MonthOf(Des)-MonthOf(Has))-1)*30;
    // días transcurridos del mes (Has)
    dh:= DayOf(Has);
    // sumar días
    Result:= dd + dm + dh;
  end
  else    // años diferentes
  begin
    // días transcurridos entre años
    da:= Abs(YearOf(Has)-YearOf(Des)-1)*360;
    // (total dias del 1 año) - dias transcurridos fecha (Des)
    dd:= 360 - MonthOf(Des)*30;
    // total días transcurridos meses fecha Has + los días fecha (Has)
    dm:= (MonthOf(Has)-1)*30 + DayOf(Has);
    // diás faltantes  para completar mes (Des)
    dh:= 30 - DayOf(Des);
    // sumar días
    Result:= da + dd + dm + dh;
  end
end;

procedure TDataModulo1.dsdireccionIngresoFDataChange(Sender: TObject;
  Field: TField);
begin
  DataModulo1.direccionIF_Prov.Close;
  DataModulo1.direccionIF_Prov.Params[0].AsString :=
      DataModulo1.direccionIngresoFidPais.AsString;
  DataModulo1.direccionIF_Prov.Open;
end;

procedure TDataModulo1.dtsDireccionIngresoDataChange(Sender: TObject;
  Field: TField);
begin
  DataModulo1.direccionIV_Prov.Close;
  DataModulo1.direccionIV_Prov.Params[0].AsString :=
      DataModulo1.direccionIngresoFidPais.AsString;
  DataModulo1.direccionIV_Prov.Open;
end;

end.
