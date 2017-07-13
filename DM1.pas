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
  IniFiles,Dialogs, FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef,System.DateUtils;

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
    TipoTelefono: TADOQuery;
    TipoTelefonoidTipoTelefono: TAutoIncField;
    TipoTelefonoDescripcion: TStringField;
    TipoTelefonoSMS: TBooleanField;
    socioTelefonos: TADOQuery;
    socioTelefonosidSocio: TIntegerField;
    socioTelefonosidsec: TAutoIncField;
    socioTelefonosidTelefono: TStringField;
    socioTelefonosuso: TStringField;
    socioTelefonospredeterminado: TBooleanField;
    socioTelefonosidTipoTelefono: TIntegerField;
    socioTelefonosSMS: TBooleanField;
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
    socioHerederos: TADOQuery;
    Parentezco: TADOQuery;
    ParentezcoidParentezco: TIntegerField;
    Parentezconombre: TWideStringField;
    socioHerederosidSocio: TIntegerField;
    socioHerederosorden: TIntegerField;
    socioHerederosnombre: TWideStringField;
    socioHerederosapellido: TWideStringField;
    socioHerederosidParentezco: TIntegerField;
    socioHerederoscedula: TWideStringField;
    socioHerederosporcentajes: TFloatField;
    socioHerederosfecha_aud: TWideStringField;
    socioHerederosusuario: TWideStringField;
    socioHerederosdia: TIntegerField;
    socioHerederosmes: TIntegerField;
    socioHerederosanio: TIntegerField;
    socioHerederosfechaNacimiento: TWideStringField;
    tblSocios2Estatus: TStringField;
    tblSocios2fechaSalida: TDateTimeField;
    estatus: TADOQuery;
    estatusestatus: TStringField;
    estatusdescripcion: TStringField;
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
    CuentaFiadoresCedula: TWideStringField;
    CuentaFiadoresced1: TWideStringField;
    CuentaFiadoresced2: TIntegerField;
    CuentaFiadoresced3: TIntegerField;
    CuentaFiadoresfNombre: TWideStringField;
    CuentaFiadoresfApellido: TWideStringField;
    CuentaFiadoresTrabajo: TWideStringField;
    CuentaFiadoresTelefono_Casa: TWideStringField;
    CuentaFiadorestelefono_Ofic: TWideStringField;
    CuentaFiadoresidProfesion: TIntegerField;
    CuentaFiadoresProfesion: TWideStringField;
    CuentaFiadoresNum_Cuenta: TWideStringField;
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
    CuentaFiadoresscedula: TStringField;
    CuentaFiadoresssced: TStringField;
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
    socioDireccion: TFDQuery;
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
    socioDireccionidSocio: TIntegerField;
    socioDireccionsec: TBCDField;
    socioDireccioncodigoPais: TStringField;
    socioDireccionidprovincia: TIntegerField;
    socioDireccionidDistrito: TIntegerField;
    socioDireccionidCorregimiento: TIntegerField;
    socioDireccionidBarrio: TIntegerField;
    socioDireccionidRuta: TIntegerField;
    socioDirecciondescripcion: TMemoField;
    socioDireccionpredeterminada: TBooleanField;
    socioDireccionidtipoDireccion: TIntegerField;
    socioDireccionguidSocio: TStringField;
    socioDireccionguidDireccion: TStringField;
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
    socioDireccionfecha_au: TSQLTimeStampField;
    socioDireccionusuario_au: TStringField;
    socioDireccioncalle: TStringField;
    socioDireccionedificio: TStringField;
    socioDireccioncasa: TWideStringField;
    socioDireccionbarriada: TStringField;
    SocioTipoDireccion: TFDQuery;
    socioDirecciontipodireccion: TStringField;
    socioDireccionnoCasaApart: TWideStringField;
    socioDireccionesDireccionPrincial: TBooleanField;
    tipoResidencia: TFDQuery;
    tipoResidenciaidtipoResidencia: TFDAutoIncField;
    tipoResidenciadescripcion: TStringField;
    tipoResidenciaguidTipoResidencia: TStringField;
    socioDireccionhipoteca: TIntegerField;
    socioDirecciontipoResidencia: TIntegerField;
    socioDireccionresidencia: TStringField;
    socioDireccion_hipoteca: TStringField;
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
    proveedorescompania: TStringField;
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
    tblSociossocio: TIntegerField;
    tblSociostipoCliente: TIntegerField;
    tblSociosidSocio: TIntegerField;
    tblSociosidAhorrista: TIntegerField;
    tblSociosnombre: TWideStringField;
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
    tblSociostelefono_casa: TWideStringField;
    tblSociostelefono_oficina: TWideStringField;
    tblSociosidProfesion: TIntegerField;
    tblSocioscompania: TStringField;
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
    tblSociosnDia: TIntegerField;
    tblSociosnMes: TIntegerField;
    tblSociosnAno: TIntegerField;
    tblSociosfechaSocio: TSQLTimeStampField;
    tblSociosfechaAhorrista: TSQLTimeStampField;
    tblSociosimagen: TBlobField;
    tblSociosidEmpresa: TIntegerField;
    tblSociospasaporteRuc: TStringField;
    tblSociossegundoNombre: TStringField;
    tblSociossegundoApellido: TStringField;
    tblSociosapellidoCasada: TStringField;
    tblSociosnombreCompleto: TStringField;
    tblSociosguidSocio: TStringField;
    tblSociosesAhorrista: TBooleanField;
    tblSociosesSocio: TBooleanField;
    tblSociosesProveedor: TBooleanField;
    tblSociosesPEP: TBooleanField;
    tblSociosesRiesgo: TBooleanField;
    tblSociosestadoCivil: TIntegerField;
    tblSociosestadoCivil2: TStringField;
    tblSociospaisNacimiento: TStringField;
    tblSociospaisResidencia: TStringField;
    tblSociospaisPasaporte: TStringField;
    tblSociosfechaExpiracionDocumento: TDateField;
    tblSociosesInstitucion: TBooleanField;
    tblSociosesDependiente: TBooleanField;
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

  if fCnn then
    if fCnn2 then
    else
  else
  begin

  end;

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

procedure TDataModulo1.movimientosCuentaCalcFields(DataSet: TDataSet);
begin
  //movimientosCuentasaldo.Value  := movimientosCuentamontoCapital.Value ;
end;


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
