
//==============================================================================
//                             Nombre
// Descripcion:
// LLamado Por:
//------------------------------------------------------------------------------
// Elavorado Por : Edwin Cedeño   |Fecha:                |Hora:
//==============================================================================
unit Socios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes , Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ventana2, Vcl.ComCtrls, Vcl.ToolWin,
  Data.DB, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.DBCtrls, Vcl.Samples.Spin,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, DateUtils, Vcl.Imaging.GIFImg, Vcl.Menus, Vcl.ExtDlgs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client ,SqlTimSt, Vcl.Imaging.pngimage,clipbrd,System.StrUtils,
  axCtrls, FireDAC.Stan.Async, FireDAC.DApt,
  DelphiTwain, DelphiTwain_Vcl;

  type
  TfrmSocios = class(TfrmVentana)
    pc_socio: TPageControl;
    ts_Generales: TTabSheet;
    ScrollBox1: TScrollBox;
    gbGenerales: TGroupBox;
    lblClienteID: TLabel;
    grpSocioCorreos: TGroupBox;
    Label17: TLabel;
    grpSocioDireccion: TGroupBox;
    Label22: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    grpSocioTelefonos: TGroupBox;
    Label15: TLabel;
    dbSocioTelefono: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    ts_Herederos: TTabSheet;
    ts_datosFinancieros: TTabSheet;
    DBGrid3: TDBGrid;
    GroupBox6: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    spMes: TSpinEdit;
    spAnio: TSpinEdit;
    DBCheckBox11: TDBCheckBox;
    ts_Vaciones: TTabSheet;
    DBGrid2: TDBGrid;
    Mantenimiento: TGroupBox;
    Label16: TLabel;
    Label18: TLabel;
    sbDesde: TSpeedButton;
    sbHasta: TSpeedButton;
    GroupBox5: TGroupBox;
    ts_documentos: TTabSheet;
    ts_EstadoCuentas: TTabSheet;
    Socios: TDataSource;
    tipoPersona: TDataSource;
    tipoDocumento: TDataSource;
    Paises: TDataSource;
    ToolBar1: TToolBar;
    btnCorreoNuevo: TToolButton;
    btnCorreoSalvar: TToolButton;
    GroupBox3: TGroupBox;
    dbgSocios: TDBGrid;
    ToolBar7: TToolBar;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    cbSocioFiltro: TComboBox;
    edFiltro: TButtonedEdit;
    btnSocioBuscar: TToolButton;
    ToolBar8: TToolBar;
    btnSocioNuevo1: TToolButton;
    btnSocioSalvar1: TToolButton;
    ToolButton10: TToolButton;
    btnCorreoAnterior: TToolButton;
    btnCorreoSiguiente: TToolButton;
    ToolButton15: TToolButton;
    btnCorreoBorrar: TToolButton;
    Correos: TDataSource;
    dbCorreo: TDBEdit;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    ToolBar2: TToolBar;
    btnTelNuevo: TToolButton;
    btnTelSalvar: TToolButton;
    ToolButton3: TToolButton;
    btnTelAnterior: TToolButton;
    btnTelSiguiente: TToolButton;
    ToolButton14: TToolButton;
    btnTelBorrar: TToolButton;
    TipoTelefono: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    Label5: TLabel;
    Telefonos: TDataSource;
    GroupBox1: TGroupBox;
    cambioPass: TSpeedButton;
    DBCheckBox1: TDBCheckBox;
    Button1: TButton;
    ToolBar3: TToolBar;
    btnDireccionNuevo: TToolButton;
    btnDireccionSalvar: TToolButton;
    ToolButton4: TToolButton;
    btnDireccionAnterior: TToolButton;
    btnDireccionSiguiente: TToolButton;
    ToolButton13: TToolButton;
    btnDireccionBorrar: TToolButton;
    ToolBar4: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolBar5: TToolBar;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolBar6: TToolBar;
    ToolButton11: TToolButton;
    btnSocioDocSalvar: TToolButton;
    ToolBar9: TToolBar;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolBar10: TToolBar;
    btnHerederoNuevo: TToolButton;
    btnHerederoSalvar: TToolButton;
    profesiones: TDataSource;
    cargos: TDataSource;
    Herederos: TDataSource;
    dblPais: TDBLookupComboBox;
    Direcciones: TDataSource;
    gbParentezco: TGroupBox;
    dbHerederoParentezco: TDBLookupComboBox;
    Label13: TLabel;
    Label14: TLabel;
    dbHerederoApellido: TDBEdit;
    Label29: TLabel;
    dbHerederoNombre: TDBEdit;
    dtsParentezco: TDataSource;
    Label30: TLabel;
    spDia1: TSpinEdit;
    spMes1: TSpinEdit;
    spAnio1: TSpinEdit;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    dbHerederoOrden: TDBEdit;
    Label35: TLabel;
    dbHerederoCedula: TDBEdit;
    Label36: TLabel;
    dbHerederoPorcentaje: TDBEdit;
    Label34: TLabel;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    CategoryPanelGroup1: TCategoryPanelGroup;
    ctMision: TCategoryPanel;
    ctVision: TCategoryPanel;
    CategoryPanel2: TCategoryPanel;
    ToolBar11: TToolBar;
    btnGeneralesSalvar1: TToolButton;
    ToolBar12: TToolBar;
    ToolButton9: TToolButton;
    ToolBar13: TToolBar;
    ToolButton18: TToolButton;
    estatus: TDataSource;
    GroupBox8: TGroupBox;
    DBGrid1: TDBGrid;
    StatusBar2: TStatusBar;
    dtsCias: TDataSource;
    ToolButton19: TToolButton;
    ToolButton20: TToolButton;
    OpenPictureDialog1: TOpenPictureDialog;
    ToolButton21: TToolButton;
    ToolButton22: TToolButton;
    dtsSocioDoc: TDataSource;
    GroupBox7: TGroupBox;
    ScrollBox2: TScrollBox;
    DBImage1: TDBImage;
    ts_Cuentas: TTabSheet;
    GroupBox10: TGroupBox;
    DBGrid4: TDBGrid;
    SocioProductos: TDataSource;
    dtsProductos: TDataSource;
    dts_mMovimientos: TDataSource;
    pcDetalleCuenta: TPageControl;
    GroupBox9: TGroupBox;
    Panel1: TPanel;
    Label43: TLabel;
    Label44: TLabel;
    desde: TDateTimePicker;
    hasta: TDateTimePicker;
    btnextracto: TButton;
    TabSheet7: TTabSheet;
    TabSheet9: TTabSheet;
    GroupBox11: TGroupBox;
    ToolBar14: TToolBar;
    btnCuentaNueva: TToolButton;
    btnCuentaSalvar1: TToolButton;
    ppmImagen: TPopupMenu;
    docCopiar: TMenuItem;
    N1: TMenuItem;
    docPegar: TMenuItem;
    tb1: TTrackBar;
    tsFiador: TTabSheet;
    Image1: TImage;
    Image6: TImage;
    StatusBar3: TStatusBar;
    dtsTipoCliente: TDataSource;
    ToolButton12: TToolButton;
    dtsCuentaFiadores: TDataSource;
    fiadores: TDataSource;
    dtsProductosCliente: TDataSource;
    GroupBox14: TGroupBox;
    dtsFinalidades: TDataSource;
    pnFiadores: TPanel;
    GroupBox12: TGroupBox;
    PageControl3: TPageControl;
    TabSheet11: TTabSheet;
    GroupBox13: TGroupBox;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    edFiador: TDBLookupComboBox;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    ToolBar15: TToolBar;
    ToolButton23: TToolButton;
    ToolButton24: TToolButton;
    ToolButton25: TToolButton;
    pnNoFiadores: TPanel;
    dtsCuentaFiador: TDataSource;
    mFiador: TFDMemTable;
    mFiadorcuenta: TStringField;
    mFiadorcedula: TStringField;
    DBEdit7: TDBEdit;
    Label53: TLabel;
    Label54: TLabel;
    DBEdit9: TDBEdit;
    mMovimientos: TFDMemTable;
    mMovimientostipo_documento: TWideStringField;
    mMovimientosdocumento: TIntegerField;
    mMovimientosfecha_doc: TSQLTimeStampField;
    mMovimientosnum_cuenta: TWideStringField;
    mMovimientoscuenta: TWideStringField;
    mMovimientosnaturaleza: TWideStringField;
    mMovimientosmontoCapital: TFloatField;
    mMovimientossaldoCapital: TBCDField;
    mMovimientosmontoInteres: TFloatField;
    mMovimientossaldoInteres: TBCDField;
    mMovimientosmontoMora: TFloatField;
    mMovimientossaldoMora: TBCDField;
    mMovimientosOrden: TIntegerField;
    mMovimientos_dc: TWideStringField;
    mMovimientosSigno: TStringField;
    mMovimientosnombreDoc: TWideStringField;
    gMovimientos: TDBGrid;
    Memo2: TMemo;
    GroupBox15: TGroupBox;
    Label45: TLabel;
    edTipoProducto: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    GroupBox16: TGroupBox;
    dpFechaInicio: TDateTimePicker;
    Label56: TLabel;
    dbMonto: TDBEdit;
    Label57: TLabel;
    dbLetra: TDBEdit;
    Label58: TLabel;
    Label55: TLabel;
    Label59: TLabel;
    edPlanilla: TDBEdit;
    DBLookupComboBox8: TDBLookupComboBox;
    Label60: TLabel;
    dtstipoPlanilla: TDataSource;
    Image2: TImage;
    Image7: TImage;
    Label61: TLabel;
    periocidad: TDBLookupComboBox;
    dtsPeriocidad: TDataSource;
    Label62: TLabel;
    tasa: TDBEdit;
    Label63: TLabel;
    dtsEstatus: TDataSource;
    estatusProducto: TDBLookupComboBox;
    ToolButton26: TToolButton;
    DBEdit10: TDBEdit;
    garantia: TDBMemo;
    grpDatosPersonales: TGroupBox;
    Label8: TLabel;
    dbNombre: TDBEdit;
    Label64: TLabel;
    edSegundoNombre: TDBEdit;
    edSegundoApellido: TDBEdit;
    Label65: TLabel;
    dbApellido: TDBEdit;
    lblApellido: TLabel;
    Label66: TLabel;
    edApellidoCasada: TDBEdit;
    Label9: TLabel;
    dblTipoDoc: TDBLookupComboBox;
    Label7: TLabel;
    dbCed1: TDBEdit;
    dbCed2: TDBEdit;
    dbCed3: TDBEdit;
    edPasaporteRuc: TDBEdit;
    Label3: TLabel;
    Label12: TLabel;
    Label38: TLabel;
    ndia: TSpinEdit;
    Label39: TLabel;
    nMes: TSpinEdit;
    Label40: TLabel;
    nAno: TSpinEdit;
    Label4: TLabel;
    cmbPaisNacimiento: TDBLookupComboBox;
    Label67: TLabel;
    cmbPaisResidencia: TDBLookupComboBox;
    lblEstadoCivil: TLabel;
    lbedadh: TLabel;
    lbEdad: TLabel;
    dblPaisPasaporte: TDBLookupComboBox;
    Label68: TLabel;
    dpExpira: TDateTimePicker;
    Label69: TLabel;
    dtsSocioNacionalidades: TDataSource;
    dtspaises2: TDataSource;
    Label1: TLabel;
    dblDistrito: TDBLookupComboBox;
    dblCorregimiento: TDBLookupComboBox;
    dtsProvincias: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    dtsDistritos2: TDataSource;
    corregimientoSocio: TDataSource;
    dtsBarriosSocio: TDataSource;
    dblBarriosSocio: TDBLookupComboBox;
    Label70: TLabel;
    edCalle: TDBEdit;
    edSocioEdificio: TDBEdit;
    edBarriada: TDBEdit;
    Label71: TLabel;
    Label72: TLabel;
    edDescripcion: TDBMemo;
    Label73: TLabel;
    edCasaApart: TDBEdit;
    DBCheckBox8: TDBCheckBox;
    ts_Dependientes: TTabSheet;
    dblTipoResidencia: TDBLookupComboBox;
    Label28: TLabel;
    Label74: TLabel;
    grpNacionalidades: TGroupBox;
    ToolBar16: TToolBar;
    btnNuevaNacionalidad: TToolButton;
    btnSalvarNacionalidad: TToolButton;
    ToolButton29: TToolButton;
    btnAnteriorNacionalidad: TToolButton;
    btnSiguienteNacionalidad: TToolButton;
    ToolButton32: TToolButton;
    btnBorrarNacionalidad: TToolButton;
    DBCheckBox7: TDBCheckBox;
    dblSocioNacionalidad: TDBLookupComboBox;
    DBEdit11: TDBEdit;
    grpPasatiempos: TGroupBox;
    ToolBar18: TToolBar;
    btnNuevoPasatiempo: TToolButton;
    btnSalvarPasatiempo: TToolButton;
    ToolButton30: TToolButton;
    btnAnteriorPasatiempo: TToolButton;
    btnSiguientePasatiempo: TToolButton;
    ToolButton34: TToolButton;
    btnBorrarPasatiempo: TToolButton;
    dtsSocioPasatiempo: TDataSource;
    Label75: TLabel;
    edsocioPasatiempoDescripcion: TDBEdit;
    DBCheckBox9: TDBCheckBox;
    grpGrupo: TGroupBox;
    ToolBar19: TToolBar;
    btnNuevoComunidad: TToolButton;
    btnSalvarComunidad: TToolButton;
    ToolButton31: TToolButton;
    btnAnteriorComunidad: TToolButton;
    btnSiguienteComunidad: TToolButton;
    ToolButton36: TToolButton;
    btnBorrarComunidad: TToolButton;
    Label76: TLabel;
    dblsocioComunidad: TDBLookupComboBox;
    dtsSocioGrupo: TDataSource;
    dbkSocioesRiesgosa: TDBCheckBox;
    GroupBox18: TGroupBox;
    grpAsociaciones: TGroupBox;
    Label6: TLabel;
    ToolBar20: TToolBar;
    btnNuevoAsociacion: TToolButton;
    btnSalvarAsociacion: TToolButton;
    ToolButton33: TToolButton;
    btnAnteriorAsociacion: TToolButton;
    btnSiguienteAsociacion: TToolButton;
    ToolButton38: TToolButton;
    btnBorrarAsociacion: TToolButton;
    GroupBox4: TGroupBox;
    Panel2: TPanel;
    Label46: TLabel;
    Label2: TLabel;
    DBCheckBox12: TDBCheckBox;
    ToolButton27: TToolButton;
    btnSocioAprobar: TToolButton;
    dbldescripcionAsociacion: TDBLookupComboBox;
    dtsSocioAsociaciones: TDataSource;
    DBCheckBox10: TDBCheckBox;
    ts_Perfiles: TTabSheet;
    ToolButton35: TToolButton;
    PageControl2: TPageControl;
    tsPerfilFijo: TTabSheet;
    tsPerfilVariable: TTabSheet;
    grpIngresosVariables: TGroupBox;
    Panel3: TPanel;
    GroupBox22: TGroupBox;
    dbgResumenF: TDBGrid;
    pnIngresosF2: TPanel;
    tbIngresosFijos: TToolBar;
    btnNuevoIngresoFijo: TToolButton;
    btnEditarFijos: TToolButton;
    btnSalvarIngresoFijo: TToolButton;
    btnUndoFijos: TToolButton;
    ToolButton28: TToolButton;
    btnBorrarIngresoFijo: TToolButton;
    grp_IF: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label77: TLabel;
    Label79: TLabel;
    Label94: TLabel;
    Label78: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label80: TLabel;
    lblAntiguedadFijos: TLabel;
    Label93: TLabel;
    dbl_IF_Actividad: TDBLookupComboBox;
    dblSectorFijo: TDBLookupComboBox;
    dbcVigenteFijos: TDBCheckBox;
    dblCargoFijo: TDBLookupComboBox;
    ed_IF_Monto: TDBEdit;
    dblFrecuenciaFijo: TDBLookupComboBox;
    dblFormaPagoFijo: TDBLookupComboBox;
    dblProveedor: TDBLookupComboBox;
    edDesdeFijos: TDateTimePicker;
    edHastaFijos: TDateTimePicker;
    GroupBox20: TGroupBox;
    dbgActividadesF: TDBGrid;
    psIngresosF_direcciones: TPageControl;
    tsIF_Geografia: TTabSheet;
    grp_IF_Direcciones: TGroupBox;
    ToolBar21: TToolBar;
    btn_DirIF_Nuevo: TToolButton;
    btn_DirIF_Editar: TToolButton;
    btn_DirIF_Salvar: TToolButton;
    btn_DirIF_UnDo: TToolButton;
    btn_DirIF_Anterior: TToolButton;
    btn_DirIF_Siguiente: TToolButton;
    ToolButton48: TToolButton;
    ToolButton49: TToolButton;
    grp_IF_Direccion: TGroupBox;
    tsIF_Egresos: TTabSheet;
    GroupBox19: TGroupBox;
    ToolBar17: TToolBar;
    btn_nuevoEF: TToolButton;
    btn_EditarEF: TToolButton;
    btn_SalvarEF: TToolButton;
    btn_UndoEF: TToolButton;
    btn_AnteriorEF: TToolButton;
    btn_SiguienteEF: TToolButton;
    btnBorrarOrigenF: TToolButton;
    ToolButton43: TToolButton;
    grpEgresosFijos: TGroupBox;
    Label97: TLabel;
    Label99: TLabel;
    GroupBox24: TGroupBox;
    ed_DirIF_Detalle: TDBMemo;
    dbl_EgresoIF_FormaPago: TDBLookupComboBox;
    Label98: TLabel;
    Label100: TLabel;
    dbl_EgresoIF_pais: TDBLookupComboBox;
    Label101: TLabel;
    dbl_EgresoIF_Frecuencia: TDBLookupComboBox;
    Label102: TLabel;
    Label103: TLabel;
    ed_EgresoIF_Monto: TDBEdit;
    GroupBox25: TGroupBox;
    DBMemo1: TDBMemo;
    GroupBox17: TGroupBox;
    Panel4: TPanel;
    GroupBox21: TGroupBox;
    DBGrid6: TDBGrid;
    GroupBox26: TGroupBox;
    dbgIngresosVariables: TDBGrid;
    Panel5: TPanel;
    ToolBar22: TToolBar;
    btn_IV_Nuevo: TToolButton;
    btn_IV_Editar: TToolButton;
    btn_IV_Salvar: TToolButton;
    btn_IV_UnDo: TToolButton;
    ToolButton42: TToolButton;
    ToolButton44: TToolButton;
    grp_IV: TGroupBox;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label95: TLabel;
    lblAntiguedadV: TLabel;
    Label104: TLabel;
    dbl_IV_Actividad: TDBLookupComboBox;
    dbl_IV_Sector: TDBLookupComboBox;
    dbcVigenteIV: TDBCheckBox;
    dbl_IV_Cargo: TDBLookupComboBox;
    ed_IV_monto: TDBEdit;
    dbl_IV_Frecuencia: TDBLookupComboBox;
    dbl_IV_FormaPago: TDBLookupComboBox;
    dbl_IV_Proveedor: TDBLookupComboBox;
    dp_IV_Desde: TDateTimePicker;
    dp_IV_Hasta: TDateTimePicker;
    PageControl4: TPageControl;
    TabSheet10: TTabSheet;
    grp_IV_Direcciones: TGroupBox;
    ToolBar23: TToolBar;
    btn_DirIV_Nuevo: TToolButton;
    btn_DirIV_Editar: TToolButton;
    btn_DirIV_Salvar: TToolButton;
    btn_DirIV_UnDo: TToolButton;
    btn_DirIV_Anterior: TToolButton;
    btn_DirIV_Siguiente: TToolButton;
    ToolButton53: TToolButton;
    ToolButton54: TToolButton;
    grp_IV_Direccion: TGroupBox;
    Label105: TLabel;
    Label106: TLabel;
    dbl_DirIV_Pais: TDBLookupComboBox;
    GroupBox30: TGroupBox;
    ed_DirIV_Detalle: TDBMemo;
    dbl_DirIV_provincia: TDBLookupComboBox;
    TabSheet12: TTabSheet;
    grpEgresosIV: TGroupBox;
    ToolBar24: TToolBar;
    btn_Egreso_IV_Nuevo: TToolButton;
    btn_Egreso_IV_Editar: TToolButton;
    btn_Egreso_IV_Salvar: TToolButton;
    btn_Egreso_IV_UnDo: TToolButton;
    btn_Egreso_IV_Anterior: TToolButton;
    btn_Egreso_IV_Siguiente: TToolButton;
    ToolButton61: TToolButton;
    ToolButton62: TToolButton;
    grp_Egreso_IV: TGroupBox;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    dbl_EgresoIV_FormaPago: TDBLookupComboBox;
    dbl_EgresoIV_pais: TDBLookupComboBox;
    dbl_EgresoIV_provincia: TDBLookupComboBox;
    dbl_EgresoIV_Frecuencia: TDBLookupComboBox;
    ed_EgresoIV_Monto: TDBEdit;
    GroupBox33: TGroupBox;
    ed_EgresoIV_Detalle: TDBMemo;
    dbl_DirIF_Pais: TDBLookupComboBox;
    dbl_DirIF_Provincia: TDBLookupComboBox;
    dbl_EgresoIF_provincia: TDBLookupComboBox;
    tsProductoPlanPago: TTabSheet;
    grp_PPP: TGroupBox;
    tb_Producto_PlanPago: TToolBar;
    btn_ppp_Salvar: TToolButton;
    btn_PPP_Generar: TToolButton;
    ToolButton41: TToolButton;
    ToolButton45: TToolButton;
    dbg_PPP: TDBGrid;
    Label96: TLabel;
    ToolButton37: TToolButton;
    mMovimientossubcuenta: TSmallintField;
    ToolButton39: TToolButton;
    ToolButton40: TToolButton;
    ToolButton46: TToolButton;
    Image10: TImage;
    GroupBox2: TGroupBox;
    Label41: TLabel;
    Label42: TLabel;
    edNombreDoc: TDBEdit;
    DBCheckBox6: TDBCheckBox;
    edFechaRegistro: TDBEdit;
    ts_ApoyoLentes: TTabSheet;
    grp_apoyoLentes: TGroupBox;
    ToolBar25: TToolBar;
    btn_ApoyoLentes_new: TToolButton;
    btn_ApoyoLentes_Salvar: TToolButton;
    ToolButton52: TToolButton;
    ToolButton47: TToolButton;
    ToolButton50: TToolButton;
    dts_SocioApoyoLentes: TDataSource;
    DBEdit12: TDBEdit;
    db_Nota: TDBMemo;
    dp_FechaApoyoLentes: TDateTimePicker;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    dts_tipoApoyo: TDataSource;
    GroupBox23: TGroupBox;
    ToolBar26: TToolBar;
    btn_ApoyoDoc_new: TToolButton;
    btn_ApoyoDoc_salvar: TToolButton;
    ToolButton56: TToolButton;
    btn_ApoyoDoc_prior: TToolButton;
    btn_ApoyoDoc_next: TToolButton;
    DBImage2: TDBImage;
    dts_SocioApoyoDoc: TDataSource;
    GroupBox27: TGroupBox;
    dp_factura: TDateTimePicker;
    Label115: TLabel;
    DBEdit13: TDBEdit;
    Label116: TLabel;
    DBMemo3: TDBMemo;
    ppm_Facturas: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    Pegar1: TMenuItem;
    dtsTipoDireccion: TDataSource;
    tipoResidencia: TDataSource;
    DBLookupComboBox4: TDBLookupComboBox;
    edSeguroSocial: TDBEdit;
    Label23: TLabel;
    edLugarTrabajo: TDBEdit;
    Label117: TLabel;
    Label118: TLabel;
    edNota: TDBMemo;
    Label52: TLabel;
    dblFinalidad: TDBLookupComboBox;
    Image8: TImage;
    DBEdit15: TDBEdit;
    DBEdit14: TDBEdit;
    Label119: TLabel;
    Label120: TLabel;
    DBEdit16: TDBEdit;
    Label121: TLabel;
    DBEdit17: TDBEdit;
    Label122: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    Label37: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    DBEdit18: TDBEdit;
    dbl_Estatus: TDBLookupComboBox;
    BalloonHint1: TBalloonHint;
    Label125: TLabel;
    dbl_Cargo: TDBLookupComboBox;
    DBGrid5: TDBGrid;
    dts_mFiador: TDataSource;
    DBEdit19: TDBEdit;
    Label126: TLabel;
    DBEdit20: TDBEdit;
    Label127: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    ToolButton51: TToolButton;
    socioInsertar: TFDQuery;
    ed_IngresoMensual: TDBEdit;
    dblEstadoCivil: TDBLookupComboBox;
    Label128: TLabel;
    dbl_compania: TDBLookupComboBox;
    mSocio: TFDMemTable;
    FDMemTable1: TFDMemTable;
    mSociosocio: TIntegerField;
    mSociotipoCliente: TIntegerField;
    mSocioidSocio: TIntegerField;
    mSocioidAhorrista: TIntegerField;
    mSocionombre: TWideStringField;
    mSociosegundoNombre: TStringField;
    mSociosegundoApellido: TStringField;
    mSocioapellidoCasada: TStringField;
    mSocionombreCompleto: TStringField;
    mSocioapellido: TWideStringField;
    mSociodireccion: TWideStringField;
    mSocioidTipoPersona: TStringField;
    mSocioidTipoDoc: TStringField;
    mSociocedL: TStringField;
    mSocioced1: TWideStringField;
    mSocioced2: TIntegerField;
    mSocioced3: TIntegerField;
    mSocioactivo: TWideStringField;
    mSociofecha_ingreso: TSQLTimeStampField;
    mSociofecha_salida: TSQLTimeStampField;
    mSociosexo: TWideStringField;
    mSociofecha_nacimiento: TSQLTimeStampField;
    mSocionDia: TIntegerField;
    mSocionMes: TIntegerField;
    mSocionAno: TIntegerField;
    mSociotelefono_casa: TWideStringField;
    mSociotelefono_oficina: TWideStringField;
    mSocioidProfesion: TIntegerField;
    mSocioidCargo: TIntegerField;
    mSociofoto: TWideStringField;
    mSociofecha_aud: TSQLTimeStampField;
    mSociousuario: TWideStringField;
    mSocioidCia: TIntegerField;
    mSocioidSucursal: TIntegerField;
    mSocioidReferidoPor: TIntegerField;
    mSociofechaRegistro: TSQLTimeStampField;
    mSociofechaActivacion: TSQLTimeStampField;
    mSociofechaDesactivacion: TSQLTimeStampField;
    mSocioSocioCodigo: TStringField;
    mSocioSocioPass: TMemoField;
    mSocioidGrupoEco: TIntegerField;
    mSocioidEtnia: TIntegerField;
    mSocioidSectorEco: TIntegerField;
    mSocioidNacionalidad: TStringField;
    mSocioidIdioma: TIntegerField;
    mSociofechaCambioPass: TSQLTimeStampField;
    mSociofechaParaCambiar: TSQLTimeStampField;
    mSocioexonerado: TBooleanField;
    mSocioingresoMensual: TBCDField;
    mSocioEstatus: TStringField;
    mSociofechaSalida: TSQLTimeStampField;
    mSociofechaSocio: TSQLTimeStampField;
    mSociofechaAhorrista: TSQLTimeStampField;
    mSocioimagen: TBlobField;
    mSocioidEmpresa: TIntegerField;
    mSociopasaporteRuc: TStringField;
    mSocioguidSocio: TStringField;
    mSocioesAhorrista: TBooleanField;
    mSocioesSocio: TBooleanField;
    mSocioesProveedor: TBooleanField;
    mSocioesPEP: TBooleanField;
    mSocioesRiesgo: TBooleanField;
    mSocioestadoCivil: TIntegerField;
    mSociopaisNacimiento: TStringField;
    mSociopaisResidencia: TStringField;
    mSociopaisPasaporte: TStringField;
    mSociofechaExpiracionDocumento: TDateField;
    mSocioesInstitucion: TBooleanField;
    mSocioesDependiente: TBooleanField;
    mSocioref_per_nombre: TStringField;
    mSocioref_per_telefono: TStringField;
    mSocioref_per_direccion: TStringField;
    mSocioref_fam_nombre: TStringField;
    mSocioref_fam_telefono: TStringField;
    mSocioref_fam_direccion: TStringField;
    mSocioseguro_Social: TStringField;
    mSociolugar_trabajo: TStringField;
    mSocioObservacion: TMemoField;
    mSociodireccion_trabajo: TStringField;
    mSocioprovincia: TStringField;
    mSociodistrito: TStringField;
    mSociocorregimiento: TStringField;
    mSociocalle_barrio: TStringField;
    mSociocompania: TWideStringField;
    DataSource1: TDataSource;
    edTipoCliente: TDBLookupComboBox;
    dts_mSocio: TDataSource;
    dblTipoSocio: TDBLookupComboBox;
    pn_scaner: TPanel;
    ImgHolder: TImage;
    lbs: TListBox;
    Panel6: TPanel;
    ToolBar27: TToolBar;
    ToolButton55: TToolButton;
    ToolButton57: TToolButton;
    ToolButton58: TToolButton;
    ToolButton59: TToolButton;
    ToolButton60: TToolButton;
    Label130: TLabel;
    Label129: TLabel;
    dbl_Tipodocumento: TDBLookupComboBox;
    Label131: TLabel;
    dp_Expira: TDateTimePicker;
    Label132: TLabel;
    dbl_Prof: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btnSocioNuevo1Click(Sender: TObject);
    procedure dblTipoSocioClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    Function CalculaEdadCompleta(Fecha : TDateTime) : string;
    procedure btnSocioSalvar1Click(Sender: TObject);
    procedure dbCompaniaChange(Sender: TObject);
    procedure rbMasculinoClick(Sender: TObject);
    procedure rbFemeninoClick(Sender: TObject);
    procedure btnCorreoNuevoClick(Sender: TObject);
    procedure btnCorreoSalvarClick(Sender: TObject);
    procedure btnCorreoAnteriorClick(Sender: TObject);
    procedure btnCorreoSiguienteClick(Sender: TObject);
    Procedure CargarCorreos;
    Procedure CargarTelefonos;
    Procedure CargarDirecciones;
    Procedure CargarHerederos;
    Function  FechaNacimiento(fecha : TDateTime; Opcion : String) : tDateTime;
    procedure btnTelNuevoClick(Sender: TObject);
    procedure btnTelSalvarClick(Sender: TObject);
    procedure btnTelAnteriorClick(Sender: TObject);
    procedure btnTelSiguienteClick(Sender: TObject);
    procedure btnDireccionNuevoClick(Sender: TObject);
    procedure btnDireccionSalvarClick(Sender: TObject);
    procedure btnDireccionAnteriorClick(Sender: TObject);
    procedure btnDireccionSiguienteClick(Sender: TObject);
    procedure btnHerederoNuevoClick(Sender: TObject);
    procedure btnHerederoSalvarClick(Sender: TObject);
    procedure spAnio1Change(Sender: TObject);
    procedure dbl_EstatusClick(Sender: TObject);
    procedure ndiaChange(Sender: TObject);
    procedure nMesChange(Sender: TObject);
    procedure nAnoChange(Sender: TObject);
    procedure spDia1Change(Sender: TObject);
    procedure spMes1Change(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGrid1MouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure DBGrid1MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure DBGrid1MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dblCiaClick(Sender: TObject);
    procedure ToolButton19Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton21Click(Sender: TObject);
    procedure ToolButton22Click(Sender: TObject);
    procedure btnSocioDocSalvarClick(Sender: TObject);
    procedure dbgSociosCellClick(Column: TColumn);
    procedure ScrollBar1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCuentaNuevaClick(Sender: TObject);
    procedure btnCuentaSalvar1Click(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure SocioProductosDataChange(Sender: TObject; Field: TField);
    procedure gMovimientosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnextractoClick(Sender: TObject);
    procedure docCopiarClick(Sender: TObject);
    procedure pc_socioChange(Sender: TObject);
    procedure DBGrid4CellClick(Column: TColumn);
    procedure DBImage1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBImage1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBImage1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure gMovimientosDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure tb1Change(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure gbGeneralesExit(Sender: TObject);
    procedure ToolButton23Click(Sender: TObject);
    procedure PageControl3MouseEnter(Sender: TObject);
    procedure PageControl3MouseLeave(Sender: TObject);
    procedure GroupBox13MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ToolButton24Click(Sender: TObject);
    procedure ToolButton25Click(Sender: TObject);
    procedure edTipoProductoClick(Sender: TObject);
    procedure pcDetalleCuentaChange(Sender: TObject);
    procedure dtsProductosClienteDataChange(Sender: TObject; Field: TField);
    procedure dtsCuentaFiadorDataChange(Sender: TObject; Field: TField);
    procedure btnSocioBuscarClick(Sender: TObject);
    procedure dpFechaInicioChange(Sender: TObject);
    procedure edPlazoChange(Sender: TObject);
    procedure cbSocioFiltroChange(Sender: TObject);
    procedure dpExpiraChange(Sender: TObject);
    procedure btnNuevaNacionalidadClick(Sender: TObject);
    procedure btnSalvarNacionalidadClick(Sender: TObject);
    procedure btnAnteriorNacionalidadClick(Sender: TObject);
    procedure btnSiguienteNacionalidadClick(Sender: TObject);
    procedure btnBorrarNacionalidadClick(Sender: TObject);
    procedure PaisesDataChange(Sender: TObject; Field: TField);
    procedure DireccionesDataChange(Sender: TObject; Field: TField);
    procedure btnDireccionBorrarClick(Sender: TObject);
    procedure btnNuevoPasatiempoClick(Sender: TObject);
    procedure btnSalvarPasatiempoClick(Sender: TObject);
    procedure btnAnteriorPasatiempoClick(Sender: TObject);
    procedure btnSiguientePasatiempoClick(Sender: TObject);
    procedure btnBorrarPasatiempoClick(Sender: TObject);
    procedure btnNuevoComunidadClick(Sender: TObject);
    procedure btnSalvarComunidadClick(Sender: TObject);
    procedure btnAnteriorComunidadClick(Sender: TObject);
    procedure btnSiguienteComunidadClick(Sender: TObject);
    procedure btnBorrarComunidadClick(Sender: TObject);
    procedure dblsocioComunidadClick(Sender: TObject);
    procedure dblSocioNacionalidadClick(Sender: TObject);
    procedure btnNuevoAsociacionClick(Sender: TObject);
    procedure btnSalvarAsociacionClick(Sender: TObject);
    procedure dbldescripcionAsociacionClick(Sender: TObject);
    procedure btnNuevoIngresoFijoClick(Sender: TObject);
    procedure btnSalvarIngresoFijoClick(Sender: TObject);
    procedure btnNuevoIngresoVClick(Sender: TObject);
    procedure btnSalvarIngresoVClick(Sender: TObject);
    procedure dblFormaPagoClick(Sender: TObject);
    procedure dblFrecuenciaFijoClick(Sender: TObject);
    procedure dblTipoDocClick(Sender: TObject);
    procedure dbcVigenteFijosClick(Sender: TObject);
    procedure edDesdeFijosClick(Sender: TObject);
    procedure edHastaFijosClick(Sender: TObject);
    procedure dbgActividadesFCellClick(Column: TColumn);
    procedure btnEditarFijosClick(Sender: TObject);
    procedure dblFrecuenciaVClick(Sender: TObject);
    procedure dbcVigenteVClick(Sender: TObject);
    procedure dpDesdeVClick(Sender: TObject);
    procedure dpHastaVClick(Sender: TObject);
    procedure dbgActividadesVCellClick(Column: TColumn);
    procedure btnAnteriorAsociacionClick(Sender: TObject);
    procedure btnSiguienteAsociacionClick(Sender: TObject);
    procedure btnBorrarAsociacionClick(Sender: TObject);
    procedure btn_DirIF_NuevoClick(Sender: TObject);
    procedure btn_DirIF_EditarClick(Sender: TObject);
    procedure btn_nuevoEFClick(Sender: TObject);
    procedure btn_EditarEFClick(Sender: TObject);
    procedure btn_SalvarEFClick(Sender: TObject);
    procedure btn_AnteriorEFClick(Sender: TObject);
    procedure btn_SiguienteEFClick(Sender: TObject);
    procedure dbgIngresosVariablesCellClick(Column: TColumn);
    procedure btn_IV_UnDoClick(Sender: TObject);
    procedure btn_IV_EditarClick(Sender: TObject);
    procedure btn_IV_NuevoClick(Sender: TObject);
    procedure btn_IV_SalvarClick(Sender: TObject);
    procedure dbl_DirIF_PaisClick(Sender: TObject);
    procedure btn_Egreso_IV_NuevoClick(Sender: TObject);
    procedure btn_Egreso_IV_EditarClick(Sender: TObject);
    procedure btn_Egreso_IV_SalvarClick(Sender: TObject);
    procedure btn_Egreso_IV_UnDoClick(Sender: TObject);
    procedure btn_Egreso_IV_AnteriorClick(Sender: TObject);
    procedure btn_Egreso_IV_SiguienteClick(Sender: TObject);
    procedure btn_DirIV_NuevoClick(Sender: TObject);
    procedure btn_DirIV_SalvarClick(Sender: TObject);
    procedure btn_DirIV_UnDoClick(Sender: TObject);
    procedure btn_DirIV_AnteriorClick(Sender: TObject);
    procedure btn_DirIV_SiguienteClick(Sender: TObject);
    procedure dblSectorFijoClick(Sender: TObject);
    procedure btn_DirIF_SalvarClick(Sender: TObject);
    procedure btn_DirIF_UnDoClick(Sender: TObject);
    procedure btn_DirIF_AnteriorClick(Sender: TObject);
    procedure btn_DirIF_SiguienteClick(Sender: TObject);
    procedure btn_PPP_GenerarClick(Sender: TObject);
    procedure btn_ppp_SalvarClick(Sender: TObject);
    procedure ToolButton37Click(Sender: TObject);
    procedure estatusProductoClick(Sender: TObject);
    procedure ToolButton39Click(Sender: TObject);
    procedure ToolButton40Click(Sender: TObject);
    procedure ToolButton46Click(Sender: TObject);
    procedure DBImage1DblClick(Sender: TObject);
    procedure btn_ApoyoLentes_newClick(Sender: TObject);
    procedure btn_ApoyoLentes_SalvarClick(Sender: TObject);
    procedure dts_SocioApoyoLentesDataChange(Sender: TObject; Field: TField);
    procedure ToolButton47Click(Sender: TObject);
    procedure ToolButton50Click(Sender: TObject);
    procedure btn_ApoyoDoc_newClick(Sender: TObject);
    procedure btn_ApoyoDoc_salvarClick(Sender: TObject);
    procedure btn_ApoyoDoc_priorClick(Sender: TObject);
    procedure btn_ApoyoDoc_nextClick(Sender: TObject);
    procedure DBImage2KeyPress(Sender: TObject; var Key: Char);
    procedure DBImage2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBImage2DblClick(Sender: TObject);
    procedure dts_SocioApoyoDocDataChange(Sender: TObject; Field: TField);
    procedure MenuItem1Click(Sender: TObject);
    procedure Pegar1Click(Sender: TObject);
    procedure docPegarClick(Sender: TObject);
    procedure dbNombreEnter(Sender: TObject);
    procedure dbNombreExit(Sender: TObject);
    procedure dbApellidoExit(Sender: TObject);
    procedure edSegundoNombreExit(Sender: TObject);
    procedure edSegundoApellidoExit(Sender: TObject);
    procedure dblPaisPasaporteExit(Sender: TObject);
    procedure cmbPaisNacimientoExit(Sender: TObject);
    procedure dbApellidoEnter(Sender: TObject);
    procedure dblTipoDocEnter(Sender: TObject);
    procedure dblPaisPasaporteEnter(Sender: TObject);
    procedure cmbPaisNacimientoEnter(Sender: TObject);
    procedure dblEstadoCivilEnter(Sender: TObject);
    procedure dblEstadoCivilExit(Sender: TObject);
    procedure edPasaporteRucExit(Sender: TObject);
    procedure dpExpiraExit(Sender: TObject);
    procedure ndiaEnter(Sender: TObject);
    procedure ndiaExit(Sender: TObject);
    procedure nMesEnter(Sender: TObject);
    procedure nMesExit(Sender: TObject);
    procedure nAnoExit(Sender: TObject);
    procedure nAnoEnter(Sender: TObject);
    procedure dpExpiraEnter(Sender: TObject);
    procedure dblTipoDocExit(Sender: TObject);
    procedure edSegundoNombreEnter(Sender: TObject);
    procedure edSegundoApellidoEnter(Sender: TObject);
    procedure edApellidoCasadaExit(Sender: TObject);
    procedure edApellidoCasadaEnter(Sender: TObject);
    procedure edPasaporteRucEnter(Sender: TObject);
    procedure cmbPaisResidenciaExit(Sender: TObject);
    procedure cmbPaisResidenciaEnter(Sender: TObject);
    procedure dbCed1Exit(Sender: TObject);
    procedure dbCed1Enter(Sender: TObject);
    procedure dbCed2Enter(Sender: TObject);
    procedure dbCed2Exit(Sender: TObject);
    procedure dbCed3Exit(Sender: TObject);
    procedure dbCed3Enter(Sender: TObject);
    procedure edSeguroSocialExit(Sender: TObject);
    procedure edSeguroSocialEnter(Sender: TObject);
    procedure edLugarTrabajoExit(Sender: TObject);
    procedure edLugarTrabajoEnter(Sender: TObject);
    procedure edNotaExit(Sender: TObject);
    procedure edNotaEnter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SociosDataChange(Sender: TObject; Field: TField);
    procedure ToolButton51Click(Sender: TObject);
    procedure dts_mSocioDataChange(Sender: TObject; Field: TField);
    procedure ToolButton55Click(Sender: TObject);
    procedure ToolButton58Click(Sender: TObject);
    procedure ToolButton60Click(Sender: TObject);
    procedure TwainTwainAcquire(Sender: TObject; const Index: Integer;
      Image: TBitmap; var Cancel: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dtsSocioDocDataChange(Sender: TObject; Field: TField);
    procedure dp_ExpiraEnter(Sender: TObject);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure ScrollBox1MouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure DBEdit12Enter(Sender: TObject);
    procedure DBLookupComboBox3Enter(Sender: TObject);
    procedure dp_FechaApoyoLentesEnter(Sender: TObject);
    procedure db_NotaEnter(Sender: TObject);
  private
    Twain: TDelphiTwain;
  //-----
    Procedure _Carga;
    Procedure CargarDocumentos;
    Procedure CargarProductos;
    Procedure CargaMov;
    Procedure CargaFiadores;
    Procedure CargarTipoProductos;
    Procedure CargarNacionalidades;
    Procedure CargarPasatiempos;
    Procedure CargarComunidad;
    Procedure CargarAsociaciones;
    procedure CargarIngresosFijos;
    Procedure CargarIngresosVariables;
    Procedure CargarDireccionIF;
    Procedure CargarDireccionV;
    Procedure CargarEgresosFI;
    Procedure CargarEgresosVA;
    Procedure CargarApoyoLentes;
    //----
    Procedure CalcularTotalIngresosFijos;
    Procedure CalcularTotalIngresosVariables;
    Function  Grupos(valor : Boolean) : Boolean;
    function Paginas (valor : boolean) : boolean;
    function _ActualizarSocio() : Boolean;
    function _InsertarSocio(
             id               : string;      // ID del Asociado
             tipoCliente      : string;      // Ahorrista, Socio o Proveedor
             tipoPersona      : String;      // Persona Natural o Juridica
             esProveedor      : string;      // Si es proveedor
             nombre           : string;
             segundoNombre    : string;
             apellido         : string;
             segundoApellido  : string;
             Casada           : string;
             nombreCompleto   : string;
             tipoDocumento    : string;     // CE=Cedula
             ced1             : string;
             ced2             : string;
             ced3             : string;
             Pasaporte_Ruc    : string;
             activo           : string;
             fechaIngreso     : string;
             sexo             : string;
             Nacimiento       : string;
             ndia             : string;
             nmes             : string;
             nano             : string;
             profecion        : string;
             compania         : string;
             cargo            : string;
             estadoCivil      : string;
             paisNacimiento   : string;
             paisResidencia   : string;
             paisPasaporte    : string;
             fechaExDoc       : string;
             seguroSocial     : string;
             Observacion      : string;
             lugar_Trabajo    : String;
             MontoIngreso     : String;
             guid             : string;
             accion           : String
                              ) : boolean;
    //----
    Procedure CargarPlanPago;

      { Private declarations }
  public
    Procedure CalcularPeriodo;
    Procedure CalcularPeriodoV;

    { Public declarations }
  end;

var
  frmSocios: TfrmSocios;
  xH,XW : Integer;
  FPunto: TPoint;
  bFiadores : Boolean;
  abmFiador : string;
  dm : TDataModule;
  _alto , _ancho : integer;

const
  CRYPT_STRING_BASE64 = 1;
  BPP = 8; //Note: BYTES per pixel


implementation

{$R *.dfm}

uses DM1, Principal, Calendario, DTS, EncdDecd;

{---------------------------------------------------------}
function BitmapToString(Bitmap: TBitmap): String;
var
  x, y: Integer;
  S: String;

begin
  S := '';
  for y := 0 to Bitmap.Height-1 do
    begin
      for x := 0 to Bitmap.Width-1 do
        begin
          S := S + IntToHex(Bitmap.Canvas.Pixels[x,y], BPP);
        end;
      S := S + '\';
    end;
  Result := S;
end;
{---------------------------------------------------------}
function StringToBitmap(S: String): TBitmap;
var
  Bitmap: TBitmap;
  Line: String;
  P: Integer;
  x, y: Integer;

begin
  Bitmap := TBitmap.Create;
  P := pos('\', S);
  Bitmap.Width := P div BPP;
  Bitmap.Height := 1;

  Line := Copy(S, 1, P-1);
  Delete(S, 1, P);
  x := 0;
  y := 0;

  While P <> 0 do
    begin
      if length(Line) <> 0 then
        begin
          Bitmap.Canvas.Pixels[x, y] := StrToInt('$' + Copy(Line, 1, BPP));
          Delete(Line, 1, BPP);
          inc(x);
        end
      else
        begin
          P := pos('\', S);
          Line := Copy(S, 1, P-1);
          Delete(S, 1, P);
          inc(y);
          Bitmap.Height := y+1;
          x := 0;
        end;
    end;
  Bitmap.Height := Bitmap.Height - 1;
  Result := Bitmap;
end;

{$Region '********** Imagen a Text y vis *************************************************'}
function CryptBinaryToString(pbBinary: PByte; cbBinary: DWORD; dwFlags: DWORD;
  pszString: PChar; var pcchString: DWORD): BOOL; stdcall;
  external 'Crypt32.dll' name 'CryptBinaryToStringA';

function CryptStringToBinary(pszString: PChar; cchString: DWORD; dwFlags: DWORD;
  pbBinary: PByte; var pcbBinary: DWORD; pdwSkip: PDWORD;
  pdwFlags: PDWORD): BOOL; stdcall;
  external 'Crypt32.dll' name 'CryptStringToBinaryA';
function BinToStr(Binary: PByte; Len: Cardinal): String;
var
  Count: DWORD;
begin
  Count:= 0;
  if CryptBinaryToString(Binary,Len,CRYPT_STRING_BASE64,nil,Count) then
  begin
    SetLength(Result,Count);
    if not CryptBinaryToString(Binary,Len,CRYPT_STRING_BASE64,PChar(Result),
      Count) then
      Result:= EmptyStr;
  end;
end;

procedure StrToStream(Str: String; Stream: TStream);
var
  Buffer: PByte;
  Count: DWORD;
begin
  Count:= 0;
  if CryptStringToBinary(PChar(Str),Length(Str),CRYPT_STRING_BASE64,nil,Count,
    nil,nil) then
  begin
    GetMem(Buffer,Count);
    try
      if CryptStringToBinary(PChar(Str),Length(Str),CRYPT_STRING_BASE64,Buffer,
        Count,nil,nil) then
        Stream.WriteBuffer(Buffer^,Count);
    finally
      FreeMem(Buffer);
    end;
  end;
end;

{$Endregion}

function TfrmSocios.Grupos(valor: Boolean): Boolean;
begin
//---
  grpNacionalidades.Enabled   := valor;
  grpPasatiempos.Enabled      := valor;
  grpSocioCorreos.Enabled     := valor;
  grpSocioDireccion.Enabled   := valor;
  grpSocioTelefonos.Enabled   := valor;
  grpAsociaciones.Enabled     := valor;
  grpDatosPersonales.Enabled  := valor;

//  dbrTipoCliente.Items.Add()
//  dbrTipoCliente.Items.va

end;

procedure TfrmSocios.docPegarClick(Sender: TObject);
begin
  inherited;
  case MessageDlg('Esta Seguro de Pegar la Imagen?... Esto borrara la Actual', mtConfirmation, [mbOK, mbCancel], 0,mbCancel) of
    mrOk:
    begin
    // Write code here for pressing button OK
      DataModulo1.SocioDoc.Edit;
      DBImage1.PasteFromClipboard ;
      DataModulo1.RegistroLog(usuario,'Pegar Imagen' , 'Pega Imagen Socio No. ' + mSociosocio.AsString);
    end;
    mrCancel:
    begin
    end;
  end;
end;

procedure TfrmSocios.MenuItem1Click(Sender: TObject);
begin
  inherited;
  DBImage2.CopyToClipboard;
end;

procedure TfrmSocios.btnCorreoNuevoClick(Sender: TObject);
begin
  inherited;
  DataModulo1.SociosCorreos.Append;
  DataModulo1.SociosCorreosIDSocio.AsInteger  := DataModulo1.tblSociosSocio.AsInteger ;
end;

procedure TfrmSocios.btnCorreoSalvarClick(Sender: TObject);
begin
  inherited;
    Try
       DataModulo1.SociosCorreos.post;
      except
      on E:Exception do
      begin

      end;

    end;

end;


procedure TfrmSocios.btnAnteriorAsociacionClick(Sender: TObject);
begin
  inherited;
   DataModulo1.socioAsociaciones.Prior ;
end;

procedure TfrmSocios.btnSiguienteAsociacionClick(Sender: TObject);
begin
  inherited;
   DataModulo1.socioAsociaciones.Next ;
end;

procedure TfrmSocios.btnSiguienteComunidadClick(Sender: TObject);
begin
  DataModulo1.socioComunidad.Next;
end;

procedure TfrmSocios.btnAnteriorComunidadClick(Sender: TObject);
begin
  inherited;
  DataModulo1.socioComunidad.Prior;
 end;

procedure TfrmSocios.btnAnteriorNacionalidadClick(Sender: TObject);
begin
  inherited;
  DataModulo1.socioNacionalidades.Prior ;
end;

procedure TfrmSocios.btnAnteriorPasatiempoClick(Sender: TObject);
begin
  inherited;
    DataModulo1.socioPasatiempo.Prior;
end;

procedure TfrmSocios.btnBorrarAsociacionClick(Sender: TObject);
begin
  inherited;
   DataModulo1.socioAsociaciones.Delete ;
   CargarAsociaciones;
end;

procedure TfrmSocios.btnBorrarComunidadClick(Sender: TObject);
begin
  inherited;
//
end;

procedure TfrmSocios.btnBorrarNacionalidadClick(Sender: TObject);
begin
  inherited;
    DataModulo1.socioNacionalidades.delete;
    CargarNacionalidades;
end;

procedure TfrmSocios.btnBorrarPasatiempoClick(Sender: TObject);
begin
  inherited;
    DataModulo1.socioPasatiempo.Delete;
    CargarPasatiempos;
end;

procedure TfrmSocios.btnCorreoAnteriorClick(Sender: TObject);
begin
  inherited;
  DataModulo1.SociosCorreos.Prior ;
end;

procedure TfrmSocios.btnCorreoSiguienteClick(Sender: TObject);
begin
  inherited;
  DataModulo1.sociosCorreos.next ;
end;

procedure TfrmSocios.btnCuentaNuevaClick(Sender: TObject);
begin
  inherited;

 edTipoProducto.SetFocus;
 DataModulo1.SocioProductos.Append;
 DataModulo1.SocioProductossocio.AsInteger  := DataModulo1.tblSociosidSocio.AsInteger;
 datamodulo1.SocioProductosestado.Value     := 'P';
 estatusProducto.Enabled := false;
 datamodulo1.SocioProductosfecha_inicio.AsDateTime  := now;
 dpFechaInicio.Date := now;
 estatusProducto.Enabled := false;

end;

procedure TfrmSocios.btnCuentaSalvar1Click(Sender: TObject);
var
  _siguiente : int32;
  _numCuenta : String;
begin
  inherited;
//--
  _accion     := 'Actualiza Producto ';
  _detalleLog := 'Producto :' + DataModulo1.SocioProductosnum_cuenta.AsString;

  if  Not (DataModulo1.SocioProductos.State IN [dsEdit,dsInsert]) then
  Begin
    DataModulo1.SocioProductos.edit;
  end
  Else
    if DataModulo1.SocioProductos.State = dsInsert then
    begin

     //--- busca el siguiente numero correspondiente al tipo de producto para
     //    el cliente.

     DataModulo1.Generico.Close;
     DataModulo1.Generico.Sql.Clear;
     DataModulo1.Generico.Sql.Add('select count(num_cuenta) as siguiente from maes_aux ');
     DataModulo1.Generico.Sql.Add('where socio = ' +
                                   DataModulo1.tblSociosSocio.AsString +
                                  ' and subcuenta = ' +
                                   DataModulo1.SocioProductossubcuenta.AsString );

     Clipboard.AsText :=  DataModulo1.Generico.Sql.Text;
     DataModulo1.Generico.Open;

     if not DataModulo1.Generico.eof then
     begin
       _siguiente :=  DataModulo1.Generico.FieldByName('siguiente').AsInteger + 1;

     end
     Else
       _siguiente := 1;

     _numCuenta := formatfloat('00',     DataModulo1.SocioProductossubcuenta.AsInteger) +   // el codigo de producto
                   formatFloat('000000', DataModulo1.tblSociosSocio.AsInteger) +  // El Numero de Socio
                   formatFloat('00' , _siguiente);   // el Consecutivo del producto

      DataModulo1.SocioProductosnum_cuenta.AsString := _numCuenta;
      _accion     := 'Insertar Producto ';
      _detalleLog := 'Insertar Producto ' + _numCuenta ;

    end;

    if DataModulo1.SocioProductosguid.asstring = '' then
       DataModulo1.SocioProductosguid.AsString := DataModulo1._guid();

    DataModulo1.SocioProductossocio.value := DataModulo1.tblSociosSocio.value;

    Try
       DataModulo1.SocioProductos.Post;
       DataModulo1.RegistroLog(Usuario,_accion,_detallelog);
    Except
      on E : Exception do
         ShowMessage(E.ClassName+'Error al Actualizar Producto : '+E.Message);
      End;

  End;

procedure TfrmSocios.btnSalvarAsociacionClick(Sender: TObject);
var
_guid : string;
begin
  inherited;
  if  Not (DataModulo1.socioAsociaciones.State IN [dsEdit,dsInsert]) then
  Begin
    DataModulo1.socioAsociaciones.edit;
  end;

  Try

    if DataModulo1.socioAsociacionesguid.AsString  = ''  then
       DataModulo1.socioAsociacionesguid.AsString := DataModulo1._guid();

    DataModulo1.socioAsociacionesidSocio.value      := DataModulo1.tblSociosSocio.Value;
    DataModulo1.socioAsociacionesguidSocio.AsString := DataModulo1.tblSociosguidSocio.AsString;

    _guid :=   DataModulo1.socioAsociacionesguid.AsString;

    DataModulo1.socioAsociaciones.post;

    CargarAsociaciones;
    DataModulo1.socioAsociaciones.Locate('guid',_guid,[]);
  except
   on E:Exception do
   begin
    showMessage('Error al salvar el Pasatiempo...');
   end;
  end;
end;

procedure TfrmSocios.btnSalvarComunidadClick(Sender: TObject);
var
_guid : string;
begin
  inherited;
  if  Not (DataModulo1.socioComunidad.State IN [dsEdit,dsInsert]) then
  Begin
    DataModulo1.socioComunidad.edit;
  end;

  Try

    if DataModulo1.socioComunidadguidsocioComunidad.AsString  = ''  then
       DataModulo1.socioComunidadguidsocioComunidad.AsString := DataModulo1._guid();

    DataModulo1.socioComunidadidSocio.value := DataModulo1.tblSociossocio.value;
    _guid :=   DataModulo1.socioComunidadguidsocioComunidad.AsString;

    DataModulo1.socioComunidad.post;

    CargarComunidad;
    DataModulo1.socioComunidad.Locate('guidsocioComunidad',_guid,[]);
  except
   on E:Exception do
   begin
    showMessage('Error al salvar el Pasatiempo...');
   end;
  end;
end;

procedure TfrmSocios.btnSalvarIngresoFijoClick(Sender: TObject);
var
_guid : string;
begin
  inherited;

  if  Not (DataModulo1.SocioFuentesIngresosFijos.State IN [dsEdit,dsInsert]) then
  Begin
    DataModulo1.SocioFuentesIngresosFijos.edit;
  end;

  Try
    //--- Asigna el Dato de Vigencia de la Fuente de Ingreso

    DataModulo1.SocioFuentesIngresosFijosDesde.AsDateTime := edDesdeFijos.Date;

    if DataModulo1.SocioFuentesIngresosFijosactivo.AsBoolean  then
       DataModulo1.SocioFuentesIngresosFijoshasta.Clear
    else
       DataModulo1.SocioFuentesIngresosFijoshasta.AsDateTime:=edHastaFijos.Date;


    if DataModulo1.SocioFuentesIngresosFijosguid.AsString  = ''  then
      DataModulo1.SocioFuentesIngresosFijosguid.AsString := DataModulo1._guid();

    DataModulo1.SocioFuentesIngresosFijosidsocio.value :=
            DataModulo1.tblSociosidsocio.value;

    DataModulo1.SocioFuentesIngresosFijosguidSocio.AsString :=
            DataModulo1.tblSociosguidSocio.asstring;

    DataModulo1.SocioFuentesIngresosFijosidtipoFlujo.AsString  := 'F';

    _guid :=  DataModulo1.SocioFuentesIngresosFijosguid.AsString;

    DataModulo1.SocioFuentesIngresosFijos.post;
    CargarIngresosFijos;
    DataModulo1.SocioFuentesIngresosFijos.Locate('guid',_guid,[]);
  except
   on E:Exception do
   begin
    showMessage('Error al salvar el Ingreso Fijo...');
   end;
  end;
  btnNuevoIngresoFijo.Enabled  := true;
  btnEditarFijos.Enabled       := true;
  grp_IF.Enabled := False;
end;

procedure TfrmSocios.btnSalvarIngresoVClick(Sender: TObject);
var
_guid : string;
begin
  inherited;

  if  Not (DataModulo1.SocioFuentesIngresosVariables.State IN [dsEdit,dsInsert]) then
  Begin
    DataModulo1.SocioFuentesIngresosVariables.edit;
  end;

  Try
    DataModulo1.SocioFuentesIngresosVariablesdesde.AsDateTime := dp_IV_Desde.Date;

    if DataModulo1.SocioFuentesIngresosVariablesActivo.AsBoolean  then
       DataModulo1.SocioFuentesIngresosVariableshasta.Clear
    else
       DataModulo1.SocioFuentesIngresosVariableshasta.AsDateTime:=dp_IV_Hasta.Date;


    if DataModulo1.SocioFuentesIngresosVariablesGuid.Asstring   = ''  then
      DataModulo1.SocioFuentesIngresosVariablesGuid.Asstring  := DataModulo1._guid();

    DataModulo1.SocioFuentesIngresosVariablesidsocio.value :=
            DataModulo1.tblSociossocio.value;
    DataModulo1.SocioFuentesIngresosVariablesguidSocio.AsString :=
            DataModulo1.tblSociosguidSocio.asstring;
    DataModulo1.SocioFuentesIngresosVariablesidtipoFlujo.AsString  := 'V';

    _guid := DataModulo1.SocioFuentesIngresosVariablesguid.AsString;

    DataModulo1.SocioFuentesIngresosVariables.post;
    CargarIngresosVariables;
    DataModulo1.SocioFuentesIngresosVariables.Locate('guid',_guid,[]);
  except
   on E:Exception do
   begin
    showMessage('Error al salvar el Ingreso Variable...');
   end;
  end;
  btn_IV_Nuevo.Enabled := true;
  btn_IV_Editar.Enabled       := true;
  grp_IV.Enabled      := False;
end;

procedure TfrmSocios.btnSalvarNacionalidadClick(Sender: TObject);
begin
  inherited;

  if  Not (DataModulo1.socioNacionalidades.State IN [dsEdit,dsInsert]) then
  Begin
    DataModulo1.socioNacionalidades.edit;
    DataModulo1.socioNacionalidadesnacionalidad.AsString :=
       DataModulo1.paises2nacionalidad.AsString;
  end;

  Try
   DataModulo1.socioNacionalidadesidSocio.value := DataModulo1.tblSociosSocio.Value;
   DataModulo1.socioNacionalidades.post;
  except
   on E:Exception do
   begin
    showMessage('Error al salvar la Nacionalidad...');
   end;
  end;

end;

procedure TfrmSocios.btnSalvarPasatiempoClick(Sender: TObject);
var
_guid : string;
begin
  inherited;
  if  Not (DataModulo1.socioPasatiempo.State IN [dsEdit,dsInsert]) then
  Begin
    DataModulo1.socioPasatiempo.edit;
  end;

  Try

    if DataModulo1.socioPasatiempoguidPasatiempo.AsString  = ''  then
      DataModulo1.socioPasatiempoguidPasatiempo.AsString := DataModulo1._guid();

    DataModulo1.socioPasatiempoidSocio.value := DataModulo1.tblSociossocio.value;
    _guid :=   DataModulo1.socioPasatiempoguidPasatiempo.AsString;

    DataModulo1.socioPasatiempo.post;

    CargarPasatiempos;
    DataModulo1.socioPasatiempo.Locate('guidPasatiempo',_guid,[]);
  except
   on E:Exception do
   begin
    showMessage('Error al salvar el Pasatiempo...');
   end;
  end;
end;



procedure TfrmSocios.btnSiguienteNacionalidadClick(Sender: TObject);
begin
  inherited;
    DataModulo1.socioNacionalidades.Next ;
end;

procedure TfrmSocios.btnSiguientePasatiempoClick(Sender: TObject);
begin
  inherited;
    DataModulo1.socioPasatiempo.next;
end;

procedure TfrmSocios.btnSocioBuscarClick(Sender: TObject);
begin
  inherited;

  if cbSocioFiltro.Text = '*' then
  begin
    //
    DataModulo1.tblSocios.Close;
    DataModulo1.tblSocios.Sql.clear;
    DataModulo1.tblSocios.Sql.Add('Select * from Socios') ;
    DataModulo1.tblSocios.Sql.Add(' Order by Socio');
    DataModulo1.tblSocios.Open ;
  end;


  if cbSocioFiltro.Text = 'Nombre'  then
  begin
    DataModulo1.tblSocios.Close;
    DataModulo1.tblSocios.Sql.clear;
    DataModulo1.tblSocios.Sql.Add('Select * from Socios') ;
    DataModulo1.tblSocios.Sql.Add(' Where Nombre Like ' + QuotedStr('%'+edFiltro.Text+'%'));
    DataModulo1.tblSocios.Sql.Add(' Order by Nombre,Apellido' );
    DataModulo1.tblSocios.Open ;
  end;

  if cbSocioFiltro.Text = 'Apellido'  then
  begin
    DataModulo1.tblSocios.Close;
    DataModulo1.tblSocios.Sql.clear;
    DataModulo1.tblSocios.Sql.Add('Select * from Socios') ;
    DataModulo1.tblSocios.Sql.Add(' Where Apellido Like ' + QuotedStr('%'+edFiltro.Text+'%'));
    DataModulo1.tblSocios.Sql.Add(' Order by Apellido,nombre ');
    DataModulo1.tblSocios.Open ;
  end;

  if cbSocioFiltro.Text = '# Socio'  then
  begin
    DataModulo1.tblSocios.Close;
    DataModulo1.tblSocios.Sql.clear;
    DataModulo1.tblSocios.Sql.Add('Select * from Socios') ;
    DataModulo1.tblSocios.Sql.Add(' Where socio = ' + edFiltro.Text);
    DataModulo1.tblSocios.Open ;
  end;

  dbgSocios.Height :=  dbgSocios.Height + 1;
  dbgSocios.Height :=  dbgSocios.Height - 1;

end;

procedure TfrmSocios.btnSocioDocSalvarClick(Sender: TObject);

begin
  inherited;

  docPegar.Enabled  := true;
  docCopiar.Enabled := true;

  if  Not (DataModulo1.SocioDoc.State IN [dsEdit,dsInsert]) then
  Begin
    DataModulo1.SocioDoc.edit;
  End
  Else
  Begin
    if DataModulo1.SocioDoc.State = dsInsert then
      _accion := 'Inserta Documento...';
    if DataModulo1.SocioDoc.State = dsEdit then
      _accion := 'Modifica Documento...';
  End;

  DataModulo1.SocioDocexpira.AsDateTime := dp_Expira.Date;

  Try
   DataModulo1.SocioDoc.post;
   DataModulo1.RegistroLog(Usuario,_accion,'Socio No. ' + mSociosocio.AsString );
  except
   on E:Exception do
   begin
    showMessage('Error al salvar el Documento...');
   end;
  end;

end;

procedure TfrmSocios.btnSocioNuevo1Click(Sender: TObject);
begin
  inherited;
  grpDatosPersonales.Enabled  := true;

  grpSocioCorreos.Enabled   := False;
  grpSocioTelefonos.Enabled := false;
  grpSocioDireccion.Enabled := False;
  grpNacionalidades.Enabled := False;
  grpGrupo.Enabled          := False;

  edTipoCliente.Enabled := true;
  edTipoCliente.SetFocus;

  paginas(false);

  msocio.Append;
  msocioidNacionalidad.Value       := 'PAN';
  msociofechaRegistro.AsDateTime   := now;
  msociofechaActivacion.AsDateTime := now;
  mSocioidEmpresa.AsInteger        := -1;
  msocioActivo.AsString            := 'A';

  //----- Deshabilita los otros grups
  grpNacionalidades.Enabled   := false;
  grpPasatiempos.Enabled      := false;
  grpSocioCorreos.Enabled     := false;
  grpSocioDireccion.Enabled   := false;
  grpSocioTelefonos.Enabled   := false;
  grpAsociaciones.Enabled     := false;

end;

procedure TfrmSocios.btnSocioSalvar1Click(Sender: TObject);
var
 sSQL : String;
 sSec,esProveedor : Integer;
 nombreCompleto,_guid : string;
 _idsocio : integer;
 _actualizaSec : boolean;
 _Accion   : String;

begin
  inherited;


  _actualizaSec := false;

//  _InsertarSocio()
//  _ActualizarSocio();



  if (msocio.State IN [dsInsert]) then
  begin
    _Accion := 'I';
    mSocio.edit;

    DataModulo1.Generico.Close;
    DataModulo1.Generico.SQL.Clear;
    DataModulo1.Generico.SQL.Add('Select Desde,Hasta,ValorActual From SocioSecuencial') ;
    DataModulo1.Generico.SQL.Add(' Where id = ' + DataModulo1.SocioSecuencialid.AsString );

    DataModulo1.Generico.Open;

    if not DataModulo1.Generico.eof then
    Begin
      if VarIsNull(DataModulo1.Generico.FieldByName('valorActual').AsInteger) or
              (DataModulo1.Generico.FieldByName('valorActual').AsInteger = 0) or
         not ((DataModulo1.Generico.FieldByName('valorActual').AsInteger >= DataModulo1.Generico.FieldByName('desde').AsInteger)
         and  (DataModulo1.Generico.FieldByName('valorActual').AsInteger <= DataModulo1.Generico.FieldByName('hasta').AsInteger) ) then
      begin
        sSec := DataModulo1.Generico.FieldByName('desde').AsInteger ;
      end
      else
        sSec := DataModulo1.Generico.FieldByName('ValorActual').AsInteger + 1;
    End;

    msocioidsocio.Value      := sSec;
    msociosocio.Value        := sSec;

    msociofechaRegistro.AsDateTime := DataModulo1.FechaSistema();
    msocioguidSocio.asstring       := DataModulo1._guid ();
    _actualizaSec := true;

  end
  Else
  if  (msocio.State IN [dsEdit]) then
  Begin
    _Accion := 'U';
    //msocio.edit;
  End;

  Try
   FechaNacimiento (now,'W');

   try
      if _actualizaSec  then
      begin
        DataModulo1.Generico.Close;
        DataModulo1.Generico.SQL.Clear;
        DataModulo1.Generico.SQL.Add('Update SocioSecuencial set ValorActual = ' + IntToStr(sSec)) ;
        DataModulo1.Generico.SQL.Add(' Where id = ' + DataModulo1.SocioSecuencialid.AsString);
        DataModulo1.Generico.ExecSQL;
      end;

   except on E:Exception do

     begin
       ShowMessage('...Error al acutlizar secuencia numerica de socios....');
     end;

   end;

   //--- Documento Passaporte/RUC
   if msocioidTipoDoc.AsString = 'CE' then
   begin
      msociopasaporteRuc.AsString :=
          msocioced1.AsString + '-' +
          msocioced2.AsString + '-' +
          msocioced3.AsString ;
   end;

   //--- Nombre Completo
   nombreCompleto:='';

   if not (VarIsNull(msocionombre.AsString )) and
          (trim(msocionombre.AsString)<>'') then
     nombreCompleto := Trim(nombreCompleto) + ' ' + trim(msocionombre.AsString);

   if not (VarIsNull(msociosegundoNombre.AsString )) and
          (trim(msociosegundoNombre.AsString) <> '') then
     nombreCompleto := trim(nombreCompleto) + ' ' + Trim(msociosegundoNombre.AsString);

   if not (VarIsNull(msocioapellido.AsString ))  and
          (trim(msocioapellido.AsString) <> '') then
     nombreCompleto := trim(nombreCompleto) + ' ' + Trim(msocioapellido.AsString);

   if not (VarIsNull(msociosegundoApellido.AsString )) and
          (trim(msociosegundoApellido.AsString) <> '') then
      nombreCompleto := Trim(nombreCompleto) + ' ' + Trim(msociosegundoApellido.AsString);

   if not (VarIsNull(msocioapellidoCasada.AsString ))  and
          (trim(msocioapellidoCasada.AsString) <> '') then
     nombreCompleto := Trim(nombreCompleto)  + ' de ' + Trim(msocioapellidoCasada.AsString);

   nombreCompleto := trim(nombreCompleto);

   msocionombreCompleto.AsString := nombreCompleto;

   //--- Se asigna la Compania
   //--- en Este caso 1, Pero esto debe ser capturado en el Login,

   msocioidCia.Value := 1;

   _guid := msocioguidSocio.asstring;

   try

    if _accion = 'U' then
    Begin
     mSocio.Post;
     mSocio.edit;
     if _ActualizarSocio() then
     Begin
       DataModulo1.tblSocios.Close;
       DataModulo1.tblSocios.Open;
       DataModulo1.tblSocios.Locate('guidSocio',_guid,[]);
       DataModulo1.RegistroLog(Usuario,'Actualizar Socio ',
                                 ' actualiza Socio No. ' +  msociosocio.AsString);
     End;
    End;

    if _Accion = 'I' then
    begin
      mSocio.Post;
      mSocio.edit;
      if msocioesProveedor.AsBoolean = true then
        esProveedor := 1
      else
        esProveedor := 0;

      If _InsertarSocio(
       msociosocio.AsString,
       msociotipoCliente.AsString ,
       msocioidTipoPersona.AsString,
       IntToStr(esProveedor),
       msocionombre.AsString,
       msociosegundoNombre.AsString,
       msocioapellido.AsString,
       msociosegundoApellido.AsString,
       msocioapellidoCasada.AsString,
       msocionombreCompleto.AsString,
       msocioidTipoDoc.AsString,
       msocioced1.AsString,
       intToStr(msocioced2.AsInteger),
       intToStr(msocioced3.AsInteger),
       msociopasaporteRuc.AsString,
       msocioactivo.AsString,
       FormatDateTime('yyyy-mm-dd',msociofecha_nacimiento.AsDateTime),
       msociosexo.AsString,
       FormatDateTime('yyyy-mm-dd',DataModulo1.FechaSistema ()),                      // Fecha de Ingreso
       IntToStr(msocionDia.AsInteger),
       IntToStr(msocionMes.AsInteger),
       intToStr(msocionAno.AsInteger),
       intToStr(msocioidProfesion.AsInteger),
       intToStr(msocioidEmpresa.AsInteger),
       intToStr(msocioidCargo.AsInteger),
       intToStr(msocioestadoCivil.AsInteger),
       msociopaisNacimiento.AsString,
       msociopaisResidencia.AsString,
       msociopaisPasaporte.AsString,
       FormatDateTime('yyyy-mm-dd',msociofechaExpiracionDocumento.AsDateTime ),
       msocioseguro_Social.AsString,
       msocioObservacion.AsString,
       msociolugar_trabajo.AsString,
       FloatToStr(msocioingresoMensual.AsFloat),
       _guid,
       'I')  then
      Begin
         //---
         DataModulo1.tblSocios.Close;
         DataModulo1.tblSocios.Open;
         DataModulo1.tblSocios.Locate('guidSocio',_guid,[]);
         DataModulo1.RegistroLog(Usuario,'Insertar Socio ',
                                 ' Insertar Socio No. ' +  msociosocio.AsString);
      End;
    end;
   except
     on E : Exception do
       ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
   end;
   _carga;
   DataModulo1.tblSocios.Locate('guidSocio',_guid,[]);
   grpSocioCorreos.Enabled   := True;
   grpSocioTelefonos.Enabled := True;
   grpSocioDireccion.Enabled := True;

  except on E:Exception do
    begin

    end;

  end;

  Grupos(true);
  paginas(true);

end;



function TfrmSocios.CalculaEdadCompleta(Fecha: TDateTime): string;
var A, AA, M, MM, D, DD: Word;
  Anio, Mes, Dia: double;
  mMes,mDia, mAnio : string;
begin
  DecodeDate(Fecha, A, M, D);
  DecodeDate(Date, AA, MM, DD);
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

  Result := Format('Años: %.0f y %.0f Mes(es)', [Anio, Mes]);


end;

procedure TfrmSocios.CalcularPeriodo;
begin

  if dbcVigenteFijos.Checked  then
  begin
    edHastaFijos.Enabled    := False;
    edHastaFijos.DateTime   := now;
    lblAntiguedadFijos.Caption := DataModulo1.calculoPeriodo(edDesdeFijos.DateTime,now);
  end
  Else
  Begin
    edHastaFijos.Enabled    := True;
    lblAntiguedadFijos.Caption := DataModulo1.calculoPeriodo(edDesdeFijos.DateTime,edHastaFijos.DateTime);
  End;

end;

procedure TfrmSocios.CalcularPeriodoV;
begin

  if dbcVigenteIV.Checked  then
  begin
    dp_IV_Hasta.Enabled    := False;
    dp_IV_Hasta.DateTime   := now;
    lblAntiguedadV.Caption := DataModulo1.calculoPeriodo(dp_IV_Desde.DateTime,now);
  end
  Else
  Begin
    dp_IV_Hasta.Enabled    := True;
    lblAntiguedadV.Caption := DataModulo1.calculoPeriodo(dp_IV_Desde.DateTime,dp_IV_Hasta.DateTime);
  End;

end;

procedure TfrmSocios.CalcularTotalIngresosFijos;
var
totalfijo : Double;
begin
  DataModulo1.SocioTotalIngresosFijos.Close;
  DataModulo1.SocioTotalIngresosFijos.params[0].AsString :=
          DataModulo1.tblSociosguidSocio.AsString;
  DataModulo1.SocioTotalIngresosFijos.open;

  if True then


end;


procedure TfrmSocios.CalcularTotalIngresosVariables;
begin

  DataModulo1.SocioTotalIV.Close;
  DataModulo1.SocioTotalIV.params[0].AsString :=
         DataModulo1.tblSociosguidSocio.AsString;
  DataModulo1.SocioTotalIV.open;


end;

procedure TfrmSocios.CargaFiadores;
begin

  bFiadores := False;

  DataModulo1.CuentaFiadores.Close;
  DataModulo1.CuentaFiadores.Params[0].AsString :=
        DataModulo1.SocioProductosnum_cuenta.AsString;
  DataModulo1.CuentaFiadores.Open;

end;

procedure TfrmSocios.CargaMov;
var
  _numCuenta    : string;
  _saldoCapital : Double;
  _saldoMora    : Double;
  _saldoInteres : Double;
  i,_signo      : int32;
  _orden        : String;
begin
   _numCuenta := DataModulo1.SocioProductosnum_cuenta.AsString;
//   lblNumCuenta.Text := _numCuenta;

   DataModulo1.movimientosCuenta.close;
   DataModulo1.movimientosCuenta.Params [0].AsString := _numCuenta;
   DataModulo1.movimientosCuenta.open;

   mMovimientos.Close;
   mMovimientos.Open;
   _saldoCapital := 0;
   _saldoInteres := 0;
   _saldoMora    := 0;
   _orden        :='';

   if Not DataModulo1.movimientosCuenta.eof then
   begin
     DataModulo1.movimientosCuenta.first;
     desde.Date := DataModulo1.movimientosCuenta.FieldByName('Fecha_doc').Value;
     mMovimientos.ControlsDisabled;

     while Not DataModulo1.movimientosCuenta.eof do
     begin
        mMovimientos.Append;
        for I := 0 to DataModulo1.movimientosCuenta.FieldCount - 1  do
        Begin
          mMovimientos.Fields[I].Value := DataModulo1.movimientosCuenta.Fields[i].Value;
        End;

 //       _orden := DataModulo1.movimientosCuentanaturaleza.AsString;
        _signo := 1;

        //--- Verifica que el moviemiento tenga la misma naturaleza
        if mMovimientosnaturaleza.AsString = mMovimientos_dc.AsString  then
        begin
            //--- Mantiene el mismo signo con el que se configuro
            //    en la tabla de productosTrx (mantenimiento de productos)
            if mMovimientosSigno.AsString = '-' then
            begin
              _signo := -1;
            end
        end
        else  //--- En caso contrario, que la naturaleza de la cuenta en el
              //    maestro contable sea diferente al movimiento dela transaccion,
              //    Entonces el signo con el que se configuro se cambia ....
        begin
         if mMovimientosSigno.AsString = '-' then
            begin
              _signo := 1;
            end
            else
              _signo := -1
        end;


        mMovimientosmontoCapital.Value := mMovimientosmontoCapital.Value * _signo;
        mMovimientosmontoInteres.Value := mMovimientosmontoInteres.Value * _signo;
        mMovimientosmontoMora.Value    := mMovimientosmontoMora.Value    * _signo;

        _saldoCapital := _saldoCapital + mMovimientosmontoCapital.AsFloat;
        _saldoInteres := _saldoInteres + mMovimientosmontoInteres.AsFloat;
        _saldomora    := _saldoMora    + mMovimientosmontoMora.AsFloat;


        mMovimientossaldoCapital.Value := _saldoCapital;
        mMovimientossaldoInteres.Value := _saldoInteres;
        mMovimientossaldoMora.Value    := _saldoMora;

        if mMovimientosmontoCapital.Value = 0  then
           mMovimientosmontoCapital.Clear;

        if mMovimientossaldoCapital.Value = 0  then
           mMovimientossaldoCapital.Clear;

        if mMovimientosmontoInteres.Value = 0  then
           mMovimientosmontoInteres.Clear;

        if mMovimientossaldoInteres.Value = 0  then
           mMovimientossaldoInteres.Clear;

        if mMovimientosmontoMora.Value = 0  then
           mMovimientosmontoMora.Clear;

        if mMovimientossaldoMora.Value = 0  then
           mMovimientossaldoMora.Clear;

       DataModulo1.movimientosCuenta.next;
     end;
     hasta.Date := DataModulo1.movimientosCuenta.FieldByName('Fecha_doc').Value;

   end;

end;

procedure TfrmSocios.CargarApoyoLentes;
begin

  DataModulo1.socioApoyoLentes.Close;
  DataModulo1.socioApoyoLentes.Params[0].AsInteger  :=
         DataModulo1.tblSociosidSocio.AsInteger  ;
  DataModulo1.socioApoyoLentes.Open;
  DataModulo1.socioApoyoLentes.First;

  DataModulo1.socioApoyoDoc.Close;
  DataModulo1.socioApoyoDoc.Params[0].AsString := DataModulo1.socioApoyoLentesguid.AsString  ;
  DataModulo1.socioApoyoDoc.Open;

end;

procedure TfrmSocios.CargarAsociaciones;
begin

  DataModulo1.socioAsociaciones.Close;
  DataModulo1.socioAsociaciones.Params[0].AsString :=
         DataModulo1.tblSociosguidSocio.AsString  ;
  DataModulo1.socioAsociaciones.Open;
  DataModulo1.socioAsociaciones.First;

  if DataModulo1.socioAsociaciones.RecordCount > 0  then
    grpAsociaciones.Caption := 'Asociaciones [' + IntToStr(DataModulo1.socioAsociaciones.RecordCount) + ']:'
  Else
    grpAsociaciones.Caption := 'Asociaciones [0]:';
end;

procedure TfrmSocios.CargarComunidad;
begin
  DataModulo1.socioComunidad.Close;
  DataModulo1.socioComunidad.Params[0].Value := DataModulo1.tblSociosguidSocio.Value ;
  DataModulo1.socioComunidad.Open;
  DataModulo1.socioComunidad.First;

  if DataModulo1.socioComunidad.RecordCount > 0  then
    grpGrupo.Caption := 'Comunidad [' + IntToStr(DataModulo1.socioComunidad.RecordCount) + ']:'
  Else
    grpGrupo.Caption := 'Comunidad [0]:';
end;

procedure TfrmSocios.CargarCorreos;
begin
  DataModulo1.SociosCorreos.Close;
  DataModulo1.SociosCorreos.Parameters[0].Value := DataModulo1.tblSociossocio.Value ;
  DataModulo1.SociosCorreos.Open;
  DataModulo1.SociosCorreos.First;
  if DataModulo1.SociosCorreos.RecordCount > 0  then
    grpSocioCorreos.Caption := 'Correos [' + IntToStr(DataModulo1.SociosCorreos.RecordCount) + ']:'
  Else
    grpSocioCorreos.Caption := 'Correos [0]:';

end;

procedure TfrmSocios.CargarDirecciones;
begin
  DataModulo1.SocioDireccion.Close;
  DataModulo1.SocioDireccion.Params [0].AsInteger := DataModulo1.tblSociosSocio.AsInteger  ;
  DataModulo1.SocioDireccion.Open;
  DataModulo1.SocioDireccion.First;

  if DataModulo1.SocioDireccion.RecordCount > 0  then
    grpSocioDireccion.Caption := 'Direcciones [' + IntToStr(DataModulo1.SocioDireccion.RecordCount) + ']:'
  Else
    grpSocioDireccion.Caption := 'Direcciones [0]:';
 end;


procedure TfrmSocios.CargarDireccionIF;
begin
 //---

 DataModulo1.direccionIngresoF.Close;
 DataModulo1.direccionIngresoF.Params [0].AsString :=
             DataModulo1.SocioFuentesIngresosFijosguid.AsString;
 DataModulo1.direccionIngresoF.Open;

 DataModulo1.direccionIF_Prov.Close;
 DataModulo1.direccionIF_Prov.Params [0].Value :=
       DataModulo1.direccionIngresoFidPais.Value;
 DataModulo1.direccionIF_Prov.Open;

 if  DataModulo1.direccionIngresoF.eof then
 begin
   btn_DirIF_Anterior.Enabled  := false;
   btn_DirIF_Siguiente.Enabled := false;
 end
 Else
 begin

   if DataModulo1.direccionIngresoF.RecordCount > 1 then
   begin
      btn_DirIF_Siguiente.Enabled := true;
      btn_DirIF_Anterior.Enabled := true;
   end
   else
      btn_DirIF_Siguiente.Enabled := false;
 end;


end;

procedure TfrmSocios.CargarDireccionV;
begin
//---
 DataModulo1.direccionIngresoV.Close;
 DataModulo1.direccionIngresoV.Params [0].AsString :=
             DataModulo1.SocioFuentesIngresosVariablesguid.AsString;
 DataModulo1.direccionIngresoV.Open;

 if  DataModulo1.direccionIngresoV.eof then
 begin
      btn_DirIV_Siguiente.Enabled := False;
      btn_DirIV_Anterior.Enabled  := False;
 end
 Else
 begin

   if DataModulo1.direccionIngresoV.RecordCount > 1 then
   begin
      btn_DirIV_Siguiente.Enabled := true;
      btn_DirIV_Anterior.Enabled  := true;
   end
   else
      btn_DirIV_Siguiente.Enabled := false;
 end;
end;

procedure TfrmSocios.CargarHerederos;
begin
  DataModulo1.SocioHerederos.Close;
  DataModulo1.SocioHerederos.Params[0].Value := DataModulo1.tblSociossocio.Value ;
  DataModulo1.SocioHerederos.Open;

  if not DataModulo1.SocioHerederos.eof then
  begin
    DataModulo1.SocioHerederos.First;
    spanio1.Value := DataModulo1.SocioHerederosanio.Value ;
    spmes1.value  := DataModulo1.SocioHerederosmes.Value ;
    spdia1.value  := DataModulo1.SocioHerederosdia.Value ;

  end
  else
  begin
    spanio1.Value := YearOf(now) ;
    spmes1.value  := MonthOf(now) ;
    spdia1.value  := DayOf(now);
  end;

end;


procedure TfrmSocios.CargarIngresosFijos;
begin

    DataModulo1.SocioFuentesIngresosFijos.close;
    DataModulo1.SocioFuentesIngresosFijos.params[0].Value :=
        DataModulo1.tblSociosguidSocio.Value ;
    DataModulo1.SocioFuentesIngresosFijos.open;

    CalcularTotalIngresosFijos;

end;

procedure TfrmSocios.CargarIngresosVariables;
begin

    DataModulo1.SocioFuentesIngresosVariables.close;
    DataModulo1.SocioFuentesIngresosVariables.params[0].Value :=
                           DataModulo1.tblSociosguidSocio.Value ;
    DataModulo1.SocioFuentesIngresosVariables.open;

    CalcularTotalIngresosVariables;
end;

procedure TfrmSocios.CargarNacionalidades;
begin

  DataModulo1.socioNacionalidades.Close;
  DataModulo1.socioNacionalidades.Params[0].Value := DataModulo1.tblSociossocio.Value ;
  DataModulo1.socioNacionalidades.Open;
  if DataModulo1.socioNacionalidades.RecordCount > 0  then
    grpNacionalidades.Caption := 'Nacionalidades [' + IntToStr(DataModulo1.socioNacionalidades.RecordCount) + ']:'
  Else
    grpNacionalidades.Caption := 'Nacionalidades [0]:';
end;

procedure TfrmSocios.CargarPasatiempos;
begin
//---
  DataModulo1.SocioPasatiempo.Close;
  DataModulo1.SocioPasatiempo.Params[0].Value := DataModulo1.tblSociosguidSocio.Value ;
  DataModulo1.SocioPasatiempo.Open;
  DataModulo1.SocioPasatiempo.First;

  if DataModulo1.SocioPasatiempo.RecordCount > 0  then
    grpPasatiempos.Caption := 'Pasatiempos [' + IntToStr(DataModulo1.SocioPasatiempo.RecordCount) + ']:'
  Else
    grpPasatiempos.Caption := 'Pasatiempos [0]:';
end;

procedure TfrmSocios.CargarPlanPago;
begin
//---
DataModulo1.ProductoPlanPago.Close;
DataModulo1.ProductoPlanPago.Params [0].AsString :=
   DataModulo1.SocioProductosnum_cuenta.AsString ;
DataModulo1.ProductoPlanPago.Open;
end;

procedure TfrmSocios.CargarProductos;
begin
  DataModulo1.SocioProductos.Close;
  DataModulo1.SocioProductos.Params[0].Value := DataModulo1.tblSociossocio.Value ;
  DataModulo1.SocioProductos.Open;
  DataModulo1.SocioProductos.First;
end;

procedure TfrmSocios.CargarTelefonos;
begin
  DataModulo1.SocioTelefonos.Close;
  DataModulo1.SocioTelefonos.Params [0].Value := DataModulo1.tblSociossocio.Value ;
  DataModulo1.SocioTelefonos.Open;
  DataModulo1.SocioTelefonos.First;

  if DataModulo1.SocioTelefonos.RecordCount > 0  then
    grpSocioTelefonos.Caption := 'Telefonos [' + IntToStr(DataModulo1.SocioTelefonos.RecordCount) + ']:'
  Else
    grpSocioTelefonos.Caption := 'Telefonos [0]:';

end;



procedure TfrmSocios.docCopiarClick(Sender: TObject);
begin
  inherited;
  DBImage1.CopyToClipboard;
  DataModulo1.RegistroLog(usuario,'Copia Imagen' , 'Socio No. ' + mSociosocio.AsString);
end;

procedure TfrmSocios.dbcVigenteVClick(Sender: TObject);
begin
  inherited;
  CalcularPeriodoV;
end;

procedure TfrmSocios.DBEdit12Enter(Sender: TObject);
begin
  inherited;
  _detalleLog := _detalleLog + '...Monto...';
end;

procedure TfrmSocios.dbcVigenteFijosClick(Sender: TObject);
begin
  inherited;
  CalcularPeriodo;
end;

procedure TfrmSocios.dpDesdeVClick(Sender: TObject);
begin
  inherited;
  CalcularPeriodoV;
end;

procedure TfrmSocios.dpExpiraChange(Sender: TObject);
begin
  inherited;
   DataModulo1.tblSocios.edit;
   DataModulo1.tblSociosfechaExpiracionDocumento.AsDateTime := dpExpira.DateTime;
end;

procedure TfrmSocios.dpExpiraEnter(Sender: TObject);
begin
  inherited;
    dpExpira.ParentColor := false;
    dpExpira.color       := clMoneyGreen  ;
end;

procedure TfrmSocios.dpExpiraExit(Sender: TObject);
begin
  inherited;
    dpExpira.ParentColor := true;
    dpExpira.color       := clWhite ;
end;

procedure TfrmSocios.dpFechaInicioChange(Sender: TObject);
begin
  inherited;
  DataModulo1.SocioProductos.Edit;
  DataModulo1.SocioProductosfecha_inicio.AsDateTime := dpFechaInicio.Date  ;

end;

procedure TfrmSocios.dpHastaVClick(Sender: TObject);
begin
  inherited;
  CalcularPeriodoV;
end;

procedure TfrmSocios.dp_ExpiraEnter(Sender: TObject);
begin
  inherited;
  dp_expira.DateMode := dmUpDown ;
  dp_Expira.Format   := 'MM/dd/yyyy';
end;

procedure TfrmSocios.dp_FechaApoyoLentesEnter(Sender: TObject);
begin
  inherited;
  _detalleLog := _detalleLog + '...Fecha...';
end;

procedure TfrmSocios.edApellidoCasadaEnter(Sender: TObject);
begin
  inherited;
    edApellidoCasada.ParentColor := false;
    edApellidoCasada.color       := clMoneyGreen ;
end;

procedure TfrmSocios.edApellidoCasadaExit(Sender: TObject);
begin
  inherited;
    edApellidoCasada.ParentColor := true;
    edApellidoCasada.color       := clWhite ;
end;

procedure TfrmSocios.edDesdeFijosClick(Sender: TObject);
begin
  inherited;
  CalcularPeriodo;
end;

procedure TfrmSocios.edHastaFijosClick(Sender: TObject);
begin
  inherited;
  CalcularPeriodo;
end;

procedure TfrmSocios.edLugarTrabajoEnter(Sender: TObject);
begin
  inherited;
    edLugarTrabajo.ParentColor := false;
    edLugarTrabajo.color       := clMoneyGreen ;
end;

procedure TfrmSocios.edLugarTrabajoExit(Sender: TObject);
begin
  inherited;
    edLugarTrabajo.ParentColor := true;
    edLugarTrabajo.color       := clWhite ;
end;

procedure TfrmSocios.edNotaEnter(Sender: TObject);
begin
  inherited;
    edNota.ParentColor := false;
    edNota.color       := clMoneyGreen ;
end;

procedure TfrmSocios.edNotaExit(Sender: TObject);
begin
  inherited;
    edNota.ParentColor := true;
    edNota.color       := clWhite ;
end;

procedure TfrmSocios.edPasaporteRucEnter(Sender: TObject);
begin
  inherited;
    edPasaporteRuc.ParentColor := false;
    edPasaporteRuc.color       := clMoneyGreen  ;
end;

procedure TfrmSocios.edPasaporteRucExit(Sender: TObject);
begin
  inherited;
    edPasaporteRuc.ParentColor := true;
    edPasaporteRuc.color       := clWhite ;
end;

procedure TfrmSocios.edPlazoChange(Sender: TObject);
begin
  inherited;
//  DataModulo1.SocioProductos.Edit;
//  DataModulo1.SocioProductosfecha_inicio.AsDateTime := dpFechaInicio.Date  ;
end;

procedure TfrmSocios.edSegundoApellidoEnter(Sender: TObject);
begin
  inherited;
    edSegundoApellido.ParentColor   := false;
    edSegundoApellido.color         := clMoneyGreen ;
end;

procedure TfrmSocios.edSegundoApellidoExit(Sender: TObject);
begin
  inherited;
    edSegundoApellido.ParentColor:=true;
    edSegundoApellido.color:=clWhite ;
end;

procedure TfrmSocios.edSegundoNombreEnter(Sender: TObject);
begin
  inherited;
    edSegundoNombre.ParentColor := false;
    edSegundoNombre.color       := clMoneyGreen ;
end;

procedure TfrmSocios.edSegundoNombreExit(Sender: TObject);
begin
  inherited;
    edSegundoNombre.ParentColor := true;
    edSegundoNombre.color       := clWhite ;
end;

procedure TfrmSocios.edSeguroSocialEnter(Sender: TObject);
begin
  inherited;
    edSeguroSocial.ParentColor := false;
    edSeguroSocial.color       := clMoneyGreen ;
end;

procedure TfrmSocios.edSeguroSocialExit(Sender: TObject);
begin
  inherited;
    edSeguroSocial.ParentColor := true;
    edSeguroSocial.color       := clWhite ;
end;

procedure TfrmSocios.edTipoProductoClick(Sender: TObject);
begin
  inherited;
  CargarTipoProductos;
end;

procedure TfrmSocios.estatusProductoClick(Sender: TObject);
begin
  inherited;

  //---- Se aprueba el Prestamo, se debe generar el primer registro en el
  //     Archivo Transaccion_Det , _Enc ;  con la informacion inical del
  //     Prestamo -- Saldo Inicial

  if DataModulo1.estatusProductovalor.AsString = 'V' then
  begin
     //---
  end;

end;

//------------------------------------------------------------------------------
//     Carga los Tipos de Productos Disponibles deacuerdo con el tipo de Cliente
//------------------------------------------------------------------------------
procedure TfrmSocios.CargarTipoProductos;
begin
//---
  DataModulo1.ProductosCliente.close;
  DataModulo1.ProductosCliente.params [0].Value := DataModulo1.tblSociostipoCliente.value;
  DataModulo1.ProductosCliente.Open;
end;
procedure TfrmSocios.cbSocioFiltroChange(Sender: TObject);
begin
  inherited;
  edFiltro.Clear;
  edfiltro.SetFocus;
end;

procedure TfrmSocios.cmbPaisNacimientoEnter(Sender: TObject);
begin
  inherited;
    cmbPaisNacimiento.ParentColor := false;
    cmbPaisNacimiento.color       := clMoneyGreen;
end;

procedure TfrmSocios.cmbPaisNacimientoExit(Sender: TObject);

begin
  inherited;
    cmbPaisNacimiento.ParentColor := true;
    cmbPaisNacimiento.color       := clWhite;    // este es el que tiene el foco
end;

procedure TfrmSocios.cmbPaisResidenciaEnter(Sender: TObject);
begin
  inherited;
    cmbPaisResidencia.ParentColor := false;
    cmbPaisResidencia.color       := clMoneyGreen ;
end;

procedure TfrmSocios.cmbPaisResidenciaExit(Sender: TObject);
begin
  inherited;
    cmbPaisResidencia.ParentColor := true;
    cmbPaisResidencia.color       := clWhite ;
end;

//------------------------------------------------------------------------------
//     Carga los documentos del Socio
//------------------------------------------------------------------------------
procedure TfrmSocios.CargarDocumentos;
begin

//---
  DataModulo1.socioDoc.Close;
  DataModulo1.socioDoc.SQL.Clear;
  DataModulo1.socioDoc.SQL.Add('Select * from SocioDocumentos ' ) ;
  DataModulo1.socioDoc.SQL.Add(' Where Socio = ' +
             DataModulo1.tblSociossocio.AsString);
  DataModulo1.socioDoc.Open;
  DataModulo1.socioDoc.First;

  if not DataModulo1.socioDoc.eof then
  begin
    _alto  := DBImage1.Height;
    _ancho := DBImage1.Width ;
  end;



end;


procedure TfrmSocios.CargarEgresosFI;
begin
//---
//DataModulo1.actividadEgresosF.close;
//DataModulo1.actividadEgresosF.Open;

 DataModulo1.actividadEgresosF.Close;
 DataModulo1.actividadEgresosF.Params [0].AsString :=
             DataModulo1.SocioFuentesIngresosFijosguid.AsString;
 DataModulo1.actividadEgresosF.Open;

end;

procedure TfrmSocios.CargarEgresosVA;
begin
 DataModulo1.actividadEgresosV.Close;
 DataModulo1.actividadEgresosV.Params [0].AsString :=
             DataModulo1.SocioFuentesIngresosVariablesGUID.AsString;
 DataModulo1.actividadEgresosV.Open;

 btn_Egreso_IV_Anterior.Enabled  := false;
 btn_Egreso_IV_Siguiente.Enabled := false;
 if not (DataModulo1.actividadEgresosV.eof) then
 begin
   if  DataModulo1.actividadEgresosV.recordCount > 1 then
   begin
     btn_Egreso_IV_Anterior.Enabled  := true;
     btn_Egreso_IV_Siguiente.Enabled := true;
   end;
 end;
end;

procedure TfrmSocios.dbApellidoEnter(Sender: TObject);
begin
  inherited;
    dbApellido.ParentColor := false;
    dbApellido.color       := clMoneyGreen  ;
end;

procedure TfrmSocios.dbApellidoExit(Sender: TObject);
begin
  inherited;
    dbApellido.ParentColor := true;
    dbApellido.color       := clWhite;
end;

procedure TfrmSocios.dbCed1Enter(Sender: TObject);
begin
  inherited;
    dbCed1.ParentColor := false;
    dbCed1.color       := clMoneyGreen ;
end;

procedure TfrmSocios.dbCed1Exit(Sender: TObject);
begin
  inherited;
    dbCed1.ParentColor := true;
    dbCed1.color       := clWhite ;
end;

procedure TfrmSocios.dbCed2Enter(Sender: TObject);
begin
  inherited;
    dbCed2.ParentColor := false;
    dbCed2.color       := clMoneyGreen ;
end;

procedure TfrmSocios.dbCed2Exit(Sender: TObject);
begin
  inherited;
    dbCed2.ParentColor := true;
    dbCed2.color       := clWhite ;
end;

procedure TfrmSocios.dbCed3Enter(Sender: TObject);
begin
  inherited;
    dbCed3.ParentColor := false;
    dbCed3.color       := clMoneyGreen  ;
end;

procedure TfrmSocios.dbCed3Exit(Sender: TObject);
begin
  inherited;
    dbCed3.ParentColor := true;
    dbCed3.color       := clWhite ;
end;

procedure TfrmSocios.dbCompaniaChange(Sender: TObject);
begin
  inherited;
  DataModulo1.tblSocios.Edit;
end;

procedure TfrmSocios.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  spanio1.Value := DataModulo1.SocioHerederosanio.Value ;
  spmes1.value  := DataModulo1.SocioHerederosmes.Value ;
  spdia1.value  := DataModulo1.SocioHerederosdia.Value ;
end;

procedure TfrmSocios.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  spanio1.Value := DataModulo1.SocioHerederosanio.Value ;
  spmes1.value  := DataModulo1.SocioHerederosmes.Value ;
  spdia1.value  := DataModulo1.SocioHerederosdia.Value ;
end;

procedure TfrmSocios.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  spanio1.Value := DataModulo1.SocioHerederosanio.Value ;
  spmes1.value  := DataModulo1.SocioHerederosmes.Value ;
  spdia1.value  := DataModulo1.SocioHerederosdia.Value ;
end;

procedure TfrmSocios.DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
//  spanio1.Value := DataModulo1.SocioHerederosanio.Value ;
//  spmes1.value  := DataModulo1.SocioHerederosmes.Value ;
//  spdia1.value  := DataModulo1.SocioHerederosdia.Value ;
end;

procedure TfrmSocios.DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  spanio1.Value := DataModulo1.SocioHerederosanio.Value ;
  spmes1.value  := DataModulo1.SocioHerederosmes.Value ;
  spdia1.value  := DataModulo1.SocioHerederosdia.Value ;
end;

procedure TfrmSocios.DBGrid1MouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  spanio1.Value := DataModulo1.SocioHerederosanio.Value ;
  spmes1.value  := DataModulo1.SocioHerederosmes.Value ;
  spdia1.value  := DataModulo1.SocioHerederosdia.Value ;
end;

procedure TfrmSocios.DBGrid1MouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  spanio1.Value := DataModulo1.SocioHerederosanio.Value ;
  spmes1.value  := DataModulo1.SocioHerederosmes.Value ;
  spdia1.value  := DataModulo1.SocioHerederosdia.Value ;
end;

procedure TfrmSocios.DBGrid1MouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  spanio1.Value := DataModulo1.SocioHerederosanio.Value ;
  spmes1.value  := DataModulo1.SocioHerederosmes.Value ;
  spdia1.value  := DataModulo1.SocioHerederosdia.Value ;
end;

procedure TfrmSocios.DBGrid4CellClick(Column: TColumn);
begin
  inherited;
  mMovimientos.Close;
  mMovimientos.Open;
  CargaMov;
  CargarPlanPago;
end;

procedure TfrmSocios.dbgIngresosVariablesCellClick(Column: TColumn);
begin
  inherited;
  dp_IV_Desde.DateTime := DataModulo1.SocioFuentesIngresosVariablesdesde.AsDateTime ;
  dp_IV_Hasta.DateTime := DataModulo1.SocioFuentesIngresosVariablesHasta.AsDateTime ;
  CalcularPeriodoV;
  CargarDireccionV;
  CargarEgresosVA;

end;

procedure TfrmSocios.dbgActividadesFCellClick(Column: TColumn);
var
  _pais : string;
begin
  inherited;
  edDesdeFijos.DateTime := DataModulo1.SocioFuentesIngresosFijosdesde.AsDateTime ;
  edHastaFijos.DateTime := DataModulo1.SocioFuentesIngresosFijosHasta.AsDateTime ;
  CalcularPeriodo;
  CargarDireccionIF;
  CargarEgresosFI;
end;

procedure TfrmSocios.dbgActividadesVCellClick(Column: TColumn);
begin
  inherited;
  dp_IV_Desde.DateTime := DataModulo1.SocioFuentesIngresosVariablesdesde.AsDateTime ;
  dp_IV_Hasta.DateTime := DataModulo1.SocioFuentesIngresosVariablesHasta.AsDateTime ;
  CalcularPeriodoV;
end;

procedure TfrmSocios.dbgSociosCellClick(Column: TColumn);
begin
  inherited;
//  if (mSocio.State IN [dsInsert]) then
//  begin
//    mSocio.Cancel;
//    abort  ;
//  end;
//
//  //--- Deshabilita secciones de captura
//  grp_IF.Enabled  := false;
//  grp_IV.Enabled  := False;
//
//  //--- Deshabilita Botones de Salvar y deshacer
//  btnSalvarIngresoFijo.Enabled := false;
//  btn_IV_Salvar.Enabled        := false;
//  btn_IV_Undo.Enabled          := False;
//
  _carga;

end;

procedure TfrmSocios.DBImage1DblClick(Sender: TObject);
begin
  inherited;
  if OpenPictureDialog1.Execute  then
  begin
    DataModulo1.SocioDoc.Edit;
    DBImage1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    DBImage1.Refresh;
  end;
end;

procedure TfrmSocios.DBImage1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  {Tomamos la posición del cursor EN LA PANTALLA para evitar que se produzca un
   salto en el primer desplazamiento.}
  GetCursorPos(FPunto);

  {Ponemos un cursor que indique que se va a mover la imagen.}
  Screen.Cursor := crSizeAll;

end;procedure TfrmSocios.DBImage1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  NuevoPunto: TPoint;
begin
  inherited;

  if ssLeft in Shift then
  begin {Movemos la imagen al pinchar sobre la misma.}

    {Tomamos las coordenadas de cada nuevo punto al que se mueve el cursor.}
    GetCursorPos(NuevoPunto);

    {Provocamos el movimiento utilizando las barras de desplazamiento del form.}
    scrollbox2.HorzScrollBar.Position := scrollbox2.HorzScrollBar.Position + (FPunto.X - NuevoPunto.X);
    scrollbox2.VertScrollBar.Position := scrollbox2.VertScrollBar.Position + (FPunto.Y - NuevoPunto.Y);

    {Recordamos la nueva posición del cursor.}
    FPunto := NuevoPunto;

  end;{if ssLeft in Shift}
end;

procedure TfrmSocios.DBImage1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  {Dejamos el cursor como estaba}
  Screen.Cursor := crDefault;
end;

procedure TfrmSocios.DBImage2DblClick(Sender: TObject);
begin
  inherited;
  if OpenPictureDialog1.Execute  then
  begin
    DataModulo1.socioApoyoDoc.Edit;
    DataModulo1.socioApoyoDocidSocio.Value       := DataModulo1.tblSociossocio.Value;
    DataModulo1.socioApoyoDocidApoyo.AsInteger   := DataModulo1.socioApoyoLentesidApoyo.AsInteger ;
    DataModulo1.socioApoyoDocguidApoyo.AsString  := DataModulo1.socioApoyoLentesguid.AsString ;
    DataModulo1.socioApoyoDocusuario_au.AsString := usuario;
    DataModulo1.socioApoyoDocfecha_au.AsDateTime := now;
    DataModulo1.socioApoyoDocguid.AsString       := DataModulo1._guid ();
    DBImage2.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  End
  else
end;

procedure TfrmSocios.DBImage2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

 if not DataModulo1.socioApoyoDoc.eof then
 begin
   if (ssCtrl in Shift) and ((Key = Ord('V')) or (Key = Ord('v'))) and
      (DataModulo1.socioApoyoDocidApoyo.AsInteger > 0) then
       DBImage2.PasteFromClipboard;
 end;

end;

procedure TfrmSocios.DBImage2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;


end;

{OnMouseDown}


procedure TfrmSocios.dblCiaClick(Sender: TObject);
begin
  inherited;
  DataModulo1.MantCompany.Close;
  DataModulo1.MantCompany.Open;
end;

procedure TfrmSocios.dbldescripcionAsociacionClick(Sender: TObject);
begin
  inherited;
  DataModulo1.socioAsociacionesesRiesgosa.AsBoolean :=
       DataModulo1.AsociacionesesRiesgosa.AsBoolean;
end;

procedure TfrmSocios.dblEstadoCivilEnter(Sender: TObject);
begin
  inherited;
    dblEstadoCivil.ParentColor := false;
    dblEstadoCivil.color       := clMoneyGreen;
end;

procedure TfrmSocios.dblEstadoCivilExit(Sender: TObject);
begin
  inherited;
    dblEstadoCivil.ParentColor := true;
    dblEstadoCivil.color       := clWhite ;
end;

procedure TfrmSocios.dblFormaPagoClick(Sender: TObject);
begin
  inherited;
  if not DataModulo1.frecuenciaPagos.Eof then
    DataModulo1.SocioFuentesIngresosFijosletraFrecuencia.AsString :=
       DataModulo1.frecuenciaPagosletra.AsString;
end;

procedure TfrmSocios.dblFrecuenciaFijoClick(Sender: TObject);
begin
  inherited;
  if not DataModulo1.frecuenciaPagos.Eof then
    DataModulo1.SocioFuentesIngresosFijosfrecuencia.Value :=
       DataModulo1.frecuenciaPagosdias.Value;
end;

procedure TfrmSocios.dblFrecuenciaVClick(Sender: TObject);
begin
  inherited;
  if not DataModulo1.frecuenciaPagos.Eof then
    DataModulo1.SocioFuentesIngresosVariablesfrecuencia.Value :=
        DataModulo1.frecuenciaPagosdias.Value;
end;

procedure TfrmSocios.DBLookupComboBox3Enter(Sender: TObject);
begin
  inherited;
    _detalleLog := _detalleLog + '...Tipo Apoyo...';
end;

procedure TfrmSocios.dbl_DirIF_PaisClick(Sender: TObject);
begin
  inherited;
  DataModulo1.direccionIF_Prov.Close;
  DataModulo1.direccionIF_Prov.Params[0].AsString :=
      DataModulo1.direccionIngresoFidPais.AsString;
  DataModulo1.direccionIF_Prov.Open;
end;

procedure TfrmSocios.dbNombreEnter(Sender: TObject);

begin
  inherited;

    ParentColor:=false;
    dbnombre.color:=clMoneyGreen  ;
end;

procedure TfrmSocios.dbNombreExit(Sender: TObject);
begin
  inherited;
    dbNombre.ParentColor:=true;
    dbNombre.color:=clWhite ;
end;

procedure TfrmSocios.db_NotaEnter(Sender: TObject);
begin
  inherited;
  _detalleLog := _detalleLog + '...Nota...';
end;

procedure TfrmSocios.dbl_EstatusClick(Sender: TObject);
begin
  inherited;
  DataModulo1.estatus.Close;
  DataModulo1.estatus.open;

  if DataModulo1.tblSociosEstatus.AsString = 'R' then
  begin
    DataModulo1.tblSocios.Edit;
    DataModulo1.tblSociosfecha_salida.AsDateTime := DataModulo1.FechaSistema();
  end;

  if DataModulo1.tblSociosEstatus.AsString = 'A' then
  begin
    DataModulo1.tblSocios.Edit;
    DataModulo1.tblSociosfechaActivacion.AsDateTime := DataModulo1.FechaSistema();
  end;

end;

procedure TfrmSocios.dblPaisPasaporteEnter(Sender: TObject);
begin
  inherited;
    dblPaisPasaporte.ParentColor := false;
    dblPaisPasaporte.color       := clMoneyGreen  ;
end;

procedure TfrmSocios.dblPaisPasaporteExit(Sender: TObject);
begin
  inherited;
    dblPaisPasaporte.ParentColor := true;
    dblPaisPasaporte.color       := clWhite ;
end;

procedure TfrmSocios.dblSectorFijoClick(Sender: TObject);
begin
  inherited;

  DataModulo1.sectorEconomico.Close;
  DataModulo1.sectorEconomico.Open;

end;

procedure TfrmSocios.dblsocioComunidadClick(Sender: TObject);
begin
  inherited;
  DataModulo1.socioComunidadesRiesgosa.AsBoolean :=
       DataModulo1.comunidadesesRiesgosa.AsBoolean;
end;

procedure TfrmSocios.dblSocioNacionalidadClick(Sender: TObject);
begin
  inherited;
  DataModulo1.socioNacionalidades.Edit;
  DataModulo1.socioNacionalidadesnacionalidad.AsString :=
       DataModulo1.paises2nacionalidad.AsString;
end;

procedure TfrmSocios.dblTipoDocClick(Sender: TObject);
begin
  inherited;
   if Not (DataModulo1.tblSociosidTipoDoc.AsString = 'CE') then
    begin
      dbCed1.Visible := false;
      dbCed2.Visible := false;
      dbCed3.Visible := false;
      edPasaporteRuc.Visible := true;
      edPasaporteRuc.Top := dbced1.Top;
    end
    else
    Begin
      dbCed1.Visible := true;
      dbCed2.Visible := true;
      dbCed3.Visible := true;
      edPasaporteRuc.Visible := false;
    End;

end;

procedure TfrmSocios.dblTipoDocEnter(Sender: TObject);
begin
  inherited;
    dblTipoDoc.ParentColor := false;
    dblTipoDoc.color       := clMoneyGreen;
end;

procedure TfrmSocios.dblTipoDocExit(Sender: TObject);
begin
  inherited;
    dblTipoDoc.ParentColor := true;
    dblTipoDoc.color       := clWhite;
end;

procedure TfrmSocios.dblTipoSocioClick(Sender: TObject);
begin
  inherited;
  DataModulo1.tipoDocumento.Close;
  DataModulo1.tipoDocumento.Sql.Clear;
  DataModulo1.tipoDocumento.Sql.Add ('Select * From tipoDocumentoID ');
  DataModulo1.tipoDocumento.Sql.Add ('Where idTipoPersona = ' + coma + DataModulo1.tipoPersonaidTipoPerson.AsString + coma);
  DataModulo1.tipoDocumento.Open;

  if DataModulo1.tipoPersonaidTipoPerson.AsString <> 'PN' then
  begin
//    rbMasculino.Checked := False;
//    rbFemenino.Checked := False;
//    rbMasculino.enabled := False;
//    rbFemenino.enabled := False;
    DataModulo1.tblSocios.Edit;
    DataModulo1.tblSociossexo.Value := '';
  end
  Else
  begin
//    rbMasculino.enabled := true;
//    rbFemenino.enabled  := true;
  end;
end;



procedure TfrmSocios.DireccionesDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  //--- recupera las provincias del Pais
  DataModulo1.provinciasTodas.Close;
  DataModulo1.provinciasTodas.params[0].AsString :=
      DataModulo1.socioDireccioncodigoPais.AsString;
  DataModulo1.provinciasTodas.Open;

  //--- recupera los Distritos de la provincia
  DataModulo1.Distritos2.Close;
  DataModulo1.Distritos2.params[0].AsString :=
      DataModulo1.provinciasTodasguidProvincia.AsString;
  DataModulo1.Distritos2.Open;

  //--- recupera los Corregimientos del distrito
  DataModulo1.corregimientoSocio.Close;
  DataModulo1.corregimientoSocio.params[0].AsString :=
            DataModulo1.Distritos2guidDistrito.AsString;
  DataModulo1.corregimientoSocio.Open;

  //--- recupera los Poblados del Corregimiento
  DataModulo1.BarriosSocio.Close;
  DataModulo1.BarriosSocio.params[0].AsString :=
                  DataModulo1.corregimientoSocioguidCorregimiento.AsString;
  DataModulo1.BarriosSocio.Open;



{
  if not DataModulo1.Distritos2.eof then
  begin
    //--- recupera los Barrios del Corregimiento
    if not DataModulo1.corregimientoSocio.eof then
    begin
       if DataModulo1.corregimientoSocioguidCorregimiento.asstring <> '' then
        begin

            DataModulo1.BarriosSocio.Close;
            DataModulo1.BarriosSocio.params[0].AsString :=
                  DataModulo1.corregimientoSocioguidCorregimiento.AsString;
            DataModulo1.BarriosSocio.Open;

        end
        else
        begin
          DataModulo1.BarriosSocio.Close;
          DataModulo1.BarriosSocio.Open;
        end;
    end
    else
    begin
     DataModulo1.BarriosSocio.Close;
     DataModulo1.BarriosSocio.Open;
    end;
  end
  Else
  begin
     DataModulo1.corregimientoSocio.Close;
     DataModulo1.corregimientoSocio.Open;
  end;

}

end;

procedure TfrmSocios.dtsCuentaFiadorDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if length(trim(dataModulo1.CuentaFiadoresCedula.AsString )) > 3  then
  begin
  DataModulo1.Fiadores.Close;
  DataModulo1.Fiadores.Open;
  mFiador.Close;
  mFiador.Open;

  mfiador.Append;
  mFiadorcuenta.AsString := DataModulo1.SocioProductosnum_cuenta.AsString;
  mFiadorcedula.AsString := DataModulo1.CuentaFiadoresCed1.AsString +
                            DataModulo1.CuentaFiadoresCed2.AsString +
                            DataModulo1.CuentaFiadoresCed3.AsString ;
  end
  else
  begin
    mfiador.Close;
    mfiador.Open;
    DataModulo1.Fiadores.Close;
  end;
end;

procedure TfrmSocios.dtsProductosClienteDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if DataModulo1.ProductosClientefinalidad.AsBoolean  then
  begin
    dblFinalidad.Enabled := True;
  end
  Else
  Begin
    dblFinalidad.Enabled := False;
  End;


end;

procedure TfrmSocios.dtsSocioDocDataChange(Sender: TObject; Field: TField);
 var
 fileName : string;
begin
  inherited;
 // if varisnull(DataModulo1.SocioDocimagen.Value) then
    if length(trim(datamodulo1.SocioDocruta.AsString)) > 0 then
    begin
       DataModulo1.SocioDoc.edit;
       fileName := datamodulo1.SocioDocruta.AsString;
       DBImage1.Picture.LoadFromFile(fileName);
       DBImage1.Refresh;
    end;

    if (datamodulo1.SocioDocexpira.asstring = '') then
      dp_expira.Format := '''Ingrese Fecha'''
    else
    begin
      dp_Expira.date   := datamodulo1.SocioDocexpira.AsDateTime ;
      dp_expira.Format := 'MM/dd/yyyy';
    end;

//    if trunc(dp_expira.Date) = 0 then
//      dp_Expira.Date := 0;


end;

procedure TfrmSocios.dts_mSocioDataChange(Sender: TObject; Field: TField);
begin
  inherited;
   if Not (msocioidTipoDoc.AsString = 'CE') then
    begin
      dbCed1.Visible         := false;
      dbCed2.Visible         := false;
      dbCed3.Visible         := false;
      edPasaporteRuc.Visible := true;
      edPasaporteRuc.Top     := dbced1.Top;
    end
    else
    Begin
      dbCed1.Visible         := true;
      dbCed2.Visible         := true;
      dbCed3.Visible         := true;
      edPasaporteRuc.Visible := false;
    End;
end;

procedure TfrmSocios.dts_SocioApoyoDocDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  DBImage2.Stretch := true;
end;

procedure TfrmSocios.dts_SocioApoyoLentesDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if not DataModulo1.socioApoyoLentes.eof then
  begin
   DataModulo1.socioApoyoDoc.Close;
   DataModulo1.socioApoyoDoc.Params [0].AsString :=
      DataModulo1.socioApoyoLentesguid.AsString ;
   DataModulo1.socioApoyoDoc.Open;

  end
  else
  begin
   DataModulo1.socioApoyoDoc.Close;
   DataModulo1.socioApoyoDoc.Open;
  end;
end;

//==============================================================================
//                         Fecha de Nacimiento
//
//  Carga los valores en los spinControl con respecto a la fecha de nacimiento
//  Entrada: Manual , BD
//  Salida:  Fecha de nacimiento
//
//  LLamado Por:
//             - SociosDataChange
// Edw-21/8/2106
//------------------------------------------------------------------------------
function TfrmSocios.FechaNacimiento(fecha: TDateTime; opcion :string): TDateTime;
var
 ddia,dmes,dano : word;
 dFechaNacimiento : TDateTime;
 begin
//
  if Opcion = 'R'  then
  begin
    DecodeDate(fecha, dano, dmes, ddia);
    ndia.Value := ddia; nmes.Value := dmes ; nano.Value := dano;
    dFechaNacimiento := EncodeDate (dano,dmes ,ddia );
    CalculaEdadCompleta(dFechaNacimiento);
  end;
  if Opcion  = 'W' then
  begin
   if  Not (DataModulo1.tblSocios.State IN [dsEdit, dsInsert]) then
    mSocio.edit;

   dFechaNacimiento := EncodeDate (nano.Value,nmes.Value ,ndia.Value );

   CalculaEdadCompleta(dFechaNacimiento);

   mSociofecha_nacimiento.AsDateTime  := dFechaNacimiento;

   mSocionDia.Value  := ndia.Value ;
   mSocionMes.Value  := nmes.Value ;
   mSocionAno.Value  := nAno.Value ;

  end;

  if Opcion = 'N'  then
  begin
    dFechaNacimiento := EncodeDate (nano.Value,nmes.Value ,ndia.Value );
    lbEdad.Caption := CalculaEdadCompleta(dFechaNacimiento);
  end;

  if Opcion = 'H'  then
  begin
    dFechaNacimiento := EncodeDate (spAnio1.Value,spMes1.Value ,spDia1.Value );
    lbEdadH.Caption := CalculaEdadCompleta(dFechaNacimiento);
  end;

end;

procedure TfrmSocios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfrmSocios.FormCreate(Sender: TObject);
begin
  inherited;

  DataModulo1.Paises2.Open ;
  DataModulo1.tblSocios.Open;
  DataModulo1.tblSocios.first;

  DataModulo1.cargos.Open;
  DataModulo1.Estatus.Open;
//  DataModulo1.SocioDireccion.Open;
  DataModulo1.profesiones.Open;
  DataModulo1.SociosCorreos.Open;
  DataModulo1.socioTelefonos.Open;
  DataModulo1.Parentezco.Open;
  DataModulo1.socioHerederos.Open;
  DataModulo1.tipoPersona.Open;
  DataModulo1.tipoDocumento.Open;
  DataModulo1.MantCompany.Open;
  DataModulo1.SocioDoc.Open;
  DataModulo1.SocioProductos.Open;
  DataModulo1.productos.Open;
  DataModulo1.SocioSecuencial.Open;
  DataModulo1.Fiadores.Open;
  DataModulo1.mFiadores.Open;         //... tabla de memoria para Fiadores del Prestamo
  DataModulo1.Finalidad.Open;         //... tabla Finalidad
//  DataModulo1.socioApoyoLentes.Open;

  DataModulo1.tipoResidencia.Open;
  DataModulo1.tipotelefono.Open;



end;

procedure TfrmSocios.FormDestroy(Sender: TObject);
begin
  inherited;
  self := nil;
end;

procedure TfrmSocios.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if Key = #13 then
 begin
  SelectNext(ActiveControl, true, True);
  Key := #0;
 end;
end;

procedure TfrmSocios.FormMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;

end;

{$Region '********** Incio FormShow ******************************************'}
procedure TfrmSocios.FormShow(Sender: TObject);
var
 i : integer;
begin
  inherited;

  Twain := TDelphiTwain.Create;
  Twain.OnTwainAcquire := TwainTwainAcquire;

  if Twain.LoadLibrary then
  begin
    //Load source manager
    Twain.SourceManagerLoaded := TRUE;
    lbs.Items.Clear;
    for I := 0 to Twain.SourceCount-1 do
       lbs.Items.Add(Twain.Source[I].ProductName);

  end else begin
    ShowMessage('Twain is not installed.');
  end;

  xh := DBImage1.Height;
  xw := DBImage1.Width ;
  desde.Date := strToDate('01/01/2000');
  hasta.Date := now;

  grpSocioCorreos.Enabled   := True;
  grpSocioTelefonos.Enabled := True;
  grpSocioDireccion.Enabled := True;
 //showmessage('1');
  //----- Abre la tabla de tipo de planilla
  DataModulo1.tipoPlanilla.Close;
  DataModulo1.tipoPlanilla.Open;
 // showmessage('2');
  //----- Abre la tabla de Periocidad
  DataModulo1.periocidad.Close;
  DataModulo1.periocidad.Open;

  DataModulo1.estatusProducto.close;
  DataModulo1.estatusProducto.Open;

  DataModulo1.tipoApoyo.Close;
  DataModulo1.tipoApoyo.Open;

  DataModulo1.socioApoyoDoc.Close;
  DataModulo1.socioApoyoDoc.open;

  //--- Para el comboBox de Tipo de Direccion
  DataModulo1.Tipodireccion.close;
  DataModulo1.Tipodireccion.Open;

  //--- Para el combobox de de Hipoteca
  DataModulo1.proveedores.Close;
  DataModulo1.proveedores.Open;

  //--- Para el ComboBox de Cargo del Cliente ----
  DataModulo1.cargo.Close;
  DataModulo1.cargo.Open;

  //--- Para el comboBox de Estado Civil
  DataModulo1.estadoCivil.Close;
  DataModulo1.estadoCivil.Open;

  //--- Para el ComboBox de Companias
  DataModulo1.companias.Close;
  DataModulo1.companias.Open;

  DataModulo1.estatus.Close;
  DataModulo1.estatus.Open;

  //--- Para Manejo de socio
  msocio.Close;
  msocio.Open;

  //--- Para el ComboBox de Tipos de Documentos del Socio

  DataModulo1.tipoDocumentoSocio.Close;
  DataModulo1.tipoDocumentoSocio.Open;

  pn_scaner.Visible := false;

  _carga;

end;
{$EndRegion}

{$Region '********** Procedimiento de Carga de Datos del Cliente *************'}
//==============================================================================
//                             Nombre: Carga
// Descripcion: LLamado a los procedimientos de carga de datos de Socio
// LLamado Por:
//------------------------------------------------------------------------------
// Elavorado Por : Edwin Cedeño   |Fecha:                |Hora:
//==============================================================================

procedure TfrmSocios._Carga;
begin
//--
  //---
  if not DataModulo1.tblSocios.Eof then
  begin

    //--- Deshabilita secciones de captura
    grp_IF.Enabled := false;
    grp_IV.Enabled   := False;

    //--- Deshabilita Botones de Salvar y deshacer
    btnSalvarIngresoFijo.Enabled := false;
    btn_IV_Salvar.Enabled        := false;
    btnUndoFijos.Enabled         := False;
    btn_IV_Undo.Enabled          := False;

    CargarCorreos;
    CargarTelefonos;
    CargarDirecciones;
    CargarHerederos;
    CargarDocumentos;
    CargarProductos;
    CargarTipoProductos;
    CargarNacionalidades;
    CargarPasatiempos;
    CargarComunidad;
    CargarAsociaciones;
    CargarIngresosFijos;
//    CargarIngresosVariables;
//    CargarDireccionIF;  // carga las direccion del Ingreso Fijo (IF)
//    CargarEgresosFI;
//    //---
//    CargarDireccionV;
//    CargarEgresosVA;
    CargarApoyoLentes;

    //---- calculo de la edad del socio.
    FechaNacimiento(msociofecha_nacimiento.AsDateTime, 'R' );
    lbedad.caption := CalculaEdadCompleta(msociofecha_nacimiento.AsDateTime);
    dpExpira.Date  := msociofechaExpiracionDocumento.AsDateTime ;

    //--- Calculo del tiempo vigente de la fuente de ingreso Fijo
    edDesdeFijos.DateTime := DataModulo1.SocioFuentesIngresosFijosdesde.AsDateTime ;
    edHastaFijos.DateTime := DataModulo1.SocioFuentesIngresosFijosHasta.AsDateTime ;
    CalcularPeriodo;

    //--- Calculo del tiempo vigente de la fuente de ingreso Variable
    dp_IV_Desde.DateTime := DataModulo1.SocioFuentesIngresosVariablesdesde.AsDateTime ;
    dp_IV_Hasta.DateTime := DataModulo1.SocioFuentesIngresosVariablesHasta.AsDateTime ;
    CalcularPeriodoV;

    if DataModulo1.SocioFuentesIngresosFijosactivo.AsBoolean then
    begin
      edHastaFijos.Enabled:=False;
    end
    Else
    Begin
      edHastaFijos.Enabled:=True;
    End;
  end // Validar eof
end;
{$EndRegion}

{$Region '********** Actualizar Cliente **************************************'}
function TfrmSocios._ActualizarSocio: Boolean;
var
 esproveedor : string;
begin
//
  if (varisnull(msocioidtipoPersona.AsString)) or (msocioidtipoPersona.AsString = '') then
    msocioidtipoPersona.AsString := 'PN';

  if (varisnull(mSocioesProveedor.AsBoolean))  then
    mSocioesProveedor.AsBoolean := false;

  if mSocioesProveedor.AsBoolean then
    esproveedor := '1'
  else
    esproveedor := '0';
  //--- Nombre
  if (varisnull(mSocionombre.AsString)) or (mSocionombre.AsString = '') then
    mSocionombre.AsString := '';

  //--- Segundo Nombre
  if (varisnull(mSociosegundoNombre.AsString)) then
    mSociosegundoNombre.AsString := '';
  //--- Apellido
  if (varisnull(mSocioapellido.AsString))  then
    mSocioapellido.AsString := '';
  //--- Segundo Apellido
  if (varisnull(mSociosegundoApellido.AsString)) then
    mSociosegundoApellido.AsString := '';
  //--- Apellido Casada
  if (varisnull(mSocioapellidoCasada.AsString)) then
    mSocioapellidoCasada.AsString := '';
  //--- Nombre Completo
  if (varisnull(mSocionombreCompleto.AsString))  then
    mSocionombreCompleto.AsString := '';
  //--- Tipo de Documento
  if (varisnull(mSocioidTipoDoc.AsString)) then
    mSocioidTipoDoc.AsString := '';
  //--- Ced1
  if (varisnull(mSocioced1.AsString)) then
    mSocioced1.AsString := '';
  if (mSocioced2.AsInteger <= 0) then
    mSocioced2.AsInteger := 0;
  if (mSocioced3.AsInteger <= 0) then
    mSocioced3.AsInteger := 0;
  if (varisnull(mSociopasaporteRuc.AsString)) then
    mSociopasaporteRuc.AsString := '';
  if (varisnull(mSocioActivo.AsString)) then
    mSocioActivo.AsString := '';
  if (varisnull(mSociosexo.AsString)) then
    mSociosexo.AsString := '';
  if (varisnull(mSociofecha_nacimiento.AsDateTime)) then
    mSociofecha_nacimiento.AsDateTime := strtodatetime('01/01/1900   12');
  if (varisnull(mSociondia.AsInteger)) then
    mSociondia.AsInteger := 0;
  if (varisnull(mSocionmes.AsInteger )) then
    mSocionmes.AsInteger := 0;
  if (varisnull(mSocionano.AsInteger)) then
    mSocionano.AsInteger := 0;
   //--- ID Empresa Labora
  if (mSocioidEmpresa.AsInteger <= 0) then
    mSocioidEmpresa.AsInteger := -1;

  if (mSocioidcargo.asInteger <= 0) then
    mSocioidcargo.AsInteger := 0;
  if (mSocioestadoCivil.AsInteger <= 0 )  then
    mSocioestadoCivil.AsInteger := 0;
  if (varisnull(mSociopaisNacimiento.AsString)) then
    mSociopaisNacimiento.AsString := '';
  if (varisnull(mSociopaisResidencia.AsString )) then
    mSociopaisResidencia.AsString := '';
  if (varisnull(mSociopaisPasaporte.AsString ))  then
    mSociopaisPasaporte.AsString := '';
  if (varisnull(mSociofechaExpiracionDocumento.AsDateTime)) then
    mSociofechaExpiracionDocumento.AsDateTime := strtodatetime('01/01/1900   12');
  if (varisnull(mSocioseguro_Social.AsString  )) then
    mSocioseguro_Social.AsString := '';
  if (varisnull(mSocioObservacion.AsString )) then
    mSocioObservacion.AsString := '';
  if (varisnull(mSociolugar_trabajo.AsString ))  then
    mSociolugar_trabajo.AsString := '';
  if (mSocioingresoMensual.AsFloat <= 0.00) then
    mSocioingresoMensual.AsFloat := 0.00;


  socioInsertar.Close;
  socioInsertar.Sql.Clear;
  socioInsertar.SQL.Add('Update Socios Set ');
  socioInsertar.SQL.Add(' idTipoPersona   = ' + QuotedStr(mSocioidTipoPersona.AsString));
  SocioInsertar.SQL.Add(',esProveedor     = ' + esProveedor);
  SocioInsertar.SQL.Add(',nombre          = ' + quotedStr(mSocionombre.AsString ));
  SocioInsertar.SQL.Add(',segundoNombre   = ' + quotedstr(mSociosegundoNombre.AsString));
  SocioInsertar.SQL.Add(',Apellido        = ' + quotedstr(msocioApellido.AsString));
  SocioInsertar.SQL.Add(',segundoApellido = ' + quotedStr(mSociosegundoApellido.AsString));
  SocioInsertar.SQL.Add(',apellidoCasada  = ' + quotedStr(mSocioapellidoCasada.AsString));
  SocioInsertar.SQL.Add(',nombreCompleto  = ' + quotedStr(mSocionombreCompleto.AsString));
  SocioInsertar.SQL.Add(',idTipodoc       = ' + quotedStr(mSocioidTipoDoc.AsString));
  SocioInsertar.SQL.Add(',ced1            = ' + quotedStr(mSocioced1.AsString));
  SocioInsertar.SQL.Add(',ced2            = ' + IntToStr(mSocioCed2.AsInteger));
  SocioInsertar.SQL.Add(',ced3            = ' + intToStr(mSocioCed3.AsInteger));
  SocioInsertar.SQL.Add(',pasaporteRuc    = ' + quotedStr(mSociopasaporteRuc.AsString));
  SocioInsertar.SQL.Add(',Activo          = ' + quotedStr(mSocioactivo.AsString));
  SocioInsertar.SQL.Add(',Sexo            = ' + quotedstr(mSociosexo.AsString));
  SocioInsertar.SQL.Add(',fecha_nacimiento= ' + QuotedStr(FormatDateTime('yyyy-mm-dd',mSociofecha_nacimiento.AsDateTime)));
  SocioInsertar.SQL.Add(',ndia            = ' + IntToStr(mSocionDia.AsInteger));
  SocioInsertar.SQL.Add(',nmes            = ' + intToStr(mSocionmes.AsInteger));
  SocioInsertar.SQL.Add(',nano            = ' + intToStr(mSocionAno.AsInteger));
  SocioInsertar.SQL.Add(',idEmpresa       = ' + intToStr(mSocioidEmpresa.AsInteger));
  SocioInsertar.SQL.Add(',idCargo         = ' + intToStr(mSocioidCargo.AsInteger));
  SocioInsertar.SQL.Add(',estadoCivil     = ' + intToStr(mSocioestadoCivil.AsInteger));
  SocioInsertar.SQL.Add(',paisNacimiento  = ' + quotedStr(mSociopaisNacimiento.AsString));
  SocioInsertar.SQL.Add(',paisResidencia  = ' + quotedstr(mSociopaisResidencia.AsString));
  SocioInsertar.SQL.Add(',paisPasaporte   = ' + quotedStr(mSociopaisPasaporte.AsString));
  SocioInsertar.SQL.Add(',fechaExpiracionDocumento = ' + quotedStr(FormatDateTime('yyyy-mm-dd',mSociofechaExpiracionDocumento.AsDateTime)));
  SocioInsertar.SQL.Add(',seguro_Social   = ' + quotedStr(mSocioseguro_Social.AsString ));
  SocioInsertar.SQL.Add(',Observacion     = ' + quotedStr(mSocioObservacion.AsString));
  SocioInsertar.SQL.Add(',lugar_trabajo   = ' + quotedStr(mSociolugar_trabajo.AsString));
  SocioInsertar.SQL.Add(',ingresoMensual  = ' + FloatToStr(mSocioingresoMensual.asFloat));
  SocioInsertar.SQL.Add(',fecha_aud       = ' + quotedStr(FormatDateTime('yyyy-mm-dd',now)));
  SocioInsertar.SQL.Add(',usuario         = ' + quotedstr(usuario));
  SocioInsertar.SQL.Add(' where socio     = ' + mSociosocio.AsString);
  Clipboard.AsText := SocioInsertar.SQL.text;
  Try
    DataModulo1.tblSocios.Close;
    socioInsertar.ExecSQL;
    result := true;
  except
      on E : Exception do
      begin
        ShowMessage(E.ClassName+' Error al Atualizar el Cliente : '+E.Message);
        result := false;
      end;

  End;
end;
{$EndRegion}


{$Region '********** Insertar Cliente en Base de Datos ***********************'}
function TfrmSocios._InsertarSocio
  (id              : String;
  tipoCliente      : String;
  tipoPersona      : String;
  esProveedor      : String;
  nombre           : string;
  segundoNombre    : String;
  apellido         : String;
  segundoApellido  : string;
  Casada           : String;
  nombreCompleto   : string;
  tipoDocumento    : String;
  ced1             : string;
  ced2             : String;
  ced3             : String;
  Pasaporte_Ruc    : String;
  activo           : string;
  fechaIngreso     : String;
  sexo             : string;
  Nacimiento       : String;
  ndia             : String;
  nmes             : String;
  nano             : String;
  profecion        : String;
  compania         : string;
  cargo            : String;
  estadoCivil      : String;
  paisNacimiento   : String;
  paisResidencia   : string;
  paisPasaporte    : string;
  fechaExDoc       : String;
  seguroSocial     : String;
  Observacion      : string;
  lugar_Trabajo    : string;
  MontoIngreso     : string;
  guid             : string;
  accion           : string
   ): boolean;
begin
//---
 if accion = 'I' then
 Begin

  if (varisnull(id)) or (id = '') then
    id := '0';
  if (varisnull(tipoCliente)) or (tipoCliente = '') then
    tipoCliente := '0';
  if (varisnull(tipoPersona)) or (tipoPersona = '') then
    tipoPersona := 'PN';
  if (varisnull(esProveedor)) or (esProveedor = '') then
    esProveedor := '0';
  if (varisnull(nombre)) or (nombre = '') then
    nombre := '';
  if (varisnull(segundoNombre)) or (segundoNombre = '') then
    segundoNombre := '';
  if (varisnull(apellido)) or (apellido = '') then
    apellido := '';
  if (varisnull(segundoApellido)) or (segundoApellido = '') then
    segundoApellido := '';
  if (varisnull(Casada)) or (Casada = '') then
    Casada := '';
  if (varisnull(nombreCompleto)) or (nombreCompleto = '') then
    nombreCompleto := '';
  if (varisnull(tipoDocumento)) or (tipoDocumento = '') then
    tipoDocumento := '';
  if (varisnull(ced1)) or (ced1 = '') then
    ced1 := '';
  if (varisnull(ced2)) or (ced2 = '') then
    ced2 := '0';
  if (varisnull(ced3)) or (ced3 = '') then
    ced3 := '0';
  if (varisnull(Pasaporte_Ruc)) or (Pasaporte_Ruc = '') then
    Pasaporte_Ruc := '';
  if (varisnull(Activo)) or (Activo = '') then
    Activo := '';
  if (varisnull(fechaIngreso)) or (fechaIngreso = '') then
    fechaIngreso := '';
  if (varisnull(sexo)) or (sexo = '') then
    sexo := '';
  if (varisnull(Nacimiento)) or (Nacimiento = '') then
    Nacimiento := '';
  if (varisnull(ndia)) or (ndia = '') then
    ndia := '0';
  if (varisnull(nmes)) or (nmes = '') then
    nmes := '0';
  if (varisnull(nano)) or (nano = '') then
    nano := '0';
  if (varisnull(compania)) or (compania = '') then
    compania := '0';
  if (varisnull(cargo)) or (cargo = '') then
    cargo := '0';
  if (varisnull(estadoCivil )) or (estadoCivil = '') then
    estadoCivil := '0';
  if (varisnull(paisNacimiento )) or (paisNacimiento = '') then
    paisNacimiento := '';
  if (varisnull(paisResidencia )) or (paisResidencia = '') then
    paisResidencia := '';
  if (varisnull(paisPasaporte )) or (paisPasaporte = '') then
    paisPasaporte := '';
  if (varisnull(fechaExDoc )) or (fechaExDoc = '') then
    fechaExDoc := '';
  if (varisnull(seguroSocial )) or (seguroSocial = '') then
    seguroSocial := '';
  if (varisnull(Observacion )) or (Observacion = '') then
    Observacion := '';
  if (varisnull(lugar_Trabajo )) or (lugar_Trabajo = '') then
    lugar_Trabajo := '';
  if (varisnull(MontoIngreso )) or (MontoIngreso = '') then
    MontoIngreso := '0.00';



  socioInsertar.Close;
  socioInsertar.Sql.Clear;
  socioInsertar.Sql.Add('Insert Into Socios (');
  socioInsertar.Sql.Add(' socio');
  socioInsertar.Sql.Add(',idSocio');
  socioInsertar.Sql.Add(',nombre');
  socioInsertar.Sql.Add(',Segundonombre');
  socioInsertar.Sql.Add(',Apellido');
  socioInsertar.Sql.Add(',SegundoApellido');
  socioInsertar.Sql.Add(',apellidoCasada');
  socioInsertar.Sql.Add(',nombreCompleto');
  socioInsertar.Sql.Add(',estadoCivil');
  socioInsertar.Sql.Add(',tipoCliente');
  socioInsertar.Sql.Add(',idTipoPersona');
  socioInsertar.Sql.Add(',idTipoDoc');
  socioInsertar.Sql.Add(',ced1');
  socioInsertar.Sql.Add(',ced2');
  socioInsertar.Sql.Add(',ced3');
  socioInsertar.Sql.Add(',pasaporteRuc');
  socioInsertar.Sql.Add(',fechaExpiracionDocumento');
  socioInsertar.Sql.Add(',fecha_ingreso');
  socioInsertar.Sql.Add(',sexo');
  socioInsertar.Sql.Add(',fecha_nacimiento');
  socioInsertar.Sql.Add(',paisNacimiento');
  socioInsertar.Sql.Add(',paisResidencia');
  socioInsertar.Sql.Add(',paisPasaporte');
  socioInsertar.Sql.Add(',nDia');
  socioInsertar.Sql.Add(',nmes');
  socioInsertar.Sql.Add(',nano');
  socioInsertar.Sql.Add(',idEmpresa');
  socioInsertar.Sql.Add(',idCargo');
  socioInsertar.Sql.Add(',ingresoMensual');
  socioInsertar.Sql.Add(',lugar_Trabajo');
  socioInsertar.Sql.Add(',seguro_Social');
  socioInsertar.Sql.Add(',guidSocio');
  // --- Datos de Auditoria
  socioInsertar.Sql.Add(',fecha_aud');
  socioInsertar.Sql.Add(',usuario');
  socioInsertar.Sql.Add(' )');
  //----------------------------------------------------------------------------
  // ---                      Seccion de Valores
  //----------------------------------------------------------------------------
  socioInsertar.Sql.Add(' Values (');
  socioInsertar.Sql.Add(      id);                        // ID de Socio
  socioInsertar.Sql.Add(',' + id);                        // id de IdSocio
  socioInsertar.Sql.Add(',' + quotedStr(nombre));         // Nombre del cliente
  socioInsertar.Sql.Add(',' + quotedStr(segundoNombre));  // Segundo Nombre del cliente
  socioInsertar.Sql.Add(',' + quotedStr(apellido));       // Apellido del Cliente
  socioInsertar.Sql.Add(',' + quotedStr(segundoApellido));// Segundo Apellido del Cliente
  socioInsertar.Sql.Add(',' + quotedStr(Casada));         // Apelldido de Casada
  socioInsertar.Sql.Add(',' + quotedStr(nombreCompleto)); // Nombre Completo
  socioInsertar.Sql.Add(',' + estadoCivil );              // Estado Civil
  socioInsertar.Sql.Add(',' + tipoCliente );              // Tipo Cliente (Asociado,Ahorrista...etc)
  socioInsertar.Sql.Add(',' + quotedstr(tipoPersona));    // Tipo Persona (Natural , Juridica ..etc)
  socioInsertar.Sql.Add(',' + quotedStr(tipoDocumento));  // Tipo Documento (Cedula o Pasaporte)
  socioInsertar.Sql.Add(',' + quotedStr(ced1));           // Cedula - tomo
  socioInsertar.Sql.Add(',' + ced2 );                     // Cedula - Folio
  socioInsertar.Sql.Add(',' + ced3 );                     // Cedula - Asiento
  socioInsertar.Sql.Add(',' + quotedStr(Pasaporte_Ruc));  // Pasaporte-Ruc
  socioInsertar.Sql.Add(',' + quotedStr(fechaExDoc));     // Fecha de expiracion de documento
  socioInsertar.Sql.Add(',' + QuotedStr(fechaIngreso));   // Fecha de ingreso al sistema
  socioInsertar.Sql.Add(',' + quotedStr(sexo));
  socioInsertar.Sql.Add(',' + quotedStr(Nacimiento));      // Fecha de nacimiento
  socioInsertar.Sql.Add(',' + quotedStr(paisNacimiento));  // Pais de nacimiento
  socioInsertar.Sql.Add(',' + quotedStr(paisResidencia));  // Pais de Residencia
  socioInsertar.Sql.Add(',' + quotedStr(paisPasaporte));   // Pais de emision de pasaporte
  socioInsertar.Sql.Add(',' + ndia);                       // Dia de nacimiento
  socioInsertar.Sql.Add(',' + nmes);                       // mes de nacimiento
  socioInsertar.Sql.Add(',' + nano);                       // anio de nacimiento
  socioInsertar.Sql.Add(',' + quotedStr(compania));        // Compania donde Labora
  socioInsertar.Sql.Add(',' + cargo);                      // ID del cargo
  socioInsertar.Sql.Add(',' + MontoIngreso );              // Monto - Ingreso Mensual
  socioInsertar.Sql.Add(',' + quotedStr(lugar_Trabajo));   // Direccion del Trabajo
  socioInsertar.Sql.Add(',' + quotedStr(seguroSocial));    // No. de Seguro Social
  socioInsertar.Sql.Add(',' + quotedstr(guid));            // Guid del Socio
  socioInsertar.Sql.Add(',' + QuotedStr(formatDateTime('yyyy-mm-dd',now)));   // Fecha de registro auditoria
  socioInsertar.Sql.Add(',' + quotedStr(Usuario));
  socioInsertar.Sql.Add(' )');   // Cierre de seccion de Valores...

  Try
    socioInsertar.ExecSQL;
    result := true;
  except
      on E : Exception do
      begin
        ShowMessage(E.ClassName+' Error al Insertar Cliente : '+E.Message);
        result := false;
      end;
  End;
 End;

 Clipboard.AsText := socioInsertar.Sql.Text;

end;

{$EndRegion}


procedure TfrmSocios.gbGeneralesExit(Sender: TObject);
begin
  inherited;
  if (DataModulo1.tblSocios.State IN [dsInsert]) then
      DataModulo1.tblSocios.Cancel;
  abort  ;
end;

procedure TfrmSocios.gMovimientosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
    if (Column.Index in [5,6,8,9,11,12]) then
    if gMovimientos.Columns [DataCol].Field.AsFloat < 0  then
//    dbgrid2gMovimientos.Columns[column.FieldName]
    begin
      gMovimientos.Canvas.Font.Color := clRed;
    end
    else
      gMovimientos.Canvas.Font.Color := clBlack;

    gMovimientos.DefaultDrawColumnCell(rect,DataCol,Column,State);

end;

procedure TfrmSocios.gMovimientosDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  inherited;
//  ShowScrollBar(gMovimientos.Handle, SB_VERT, True);
end;

procedure TfrmSocios.GroupBox13MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  bFiadores := True;
end;

procedure TfrmSocios.nAnoChange(Sender: TObject);
begin
  inherited;
  FechaNacimiento(encodedate(nano.Value ,nmes.Value ,ndia.value) , 'N')
end;

procedure TfrmSocios.nAnoEnter(Sender: TObject);
begin
  inherited;
    nAno.ParentColor := false;
    nAno.color       := clMoneyGreen;
end;

procedure TfrmSocios.nAnoExit(Sender: TObject);
begin
  inherited;
    nAno.ParentColor := true;
    nAno.color       := clWhite ;
end;

procedure TfrmSocios.ndiaChange(Sender: TObject);
begin
  inherited;
  FechaNacimiento(encodedate(nano.Value ,nmes.Value ,ndia.value) , 'N')
end;

procedure TfrmSocios.ndiaEnter(Sender: TObject);
begin
  inherited;
    ndia.ParentColor := false;
    ndia.color       := clMoneyGreen;
end;

procedure TfrmSocios.ndiaExit(Sender: TObject);
begin
  inherited;
    ndia.ParentColor := true;
    ndia.color       := clWhite;
end;

procedure TfrmSocios.nMesChange(Sender: TObject);
begin
  inherited;
  FechaNacimiento(encodedate(nano.Value ,nmes.Value ,ndia.value) , 'N')
end;

procedure TfrmSocios.nMesEnter(Sender: TObject);
begin
  inherited;
    nMes.ParentColor := false;
    nMes.color       := clMoneyGreen;
end;

procedure TfrmSocios.nMesExit(Sender: TObject);
begin
  inherited;
    nMes.ParentColor := true;
    nMes.color       := clWhite ;
end;

procedure TfrmSocios.pc_socioChange(Sender: TObject);
begin
  inherited;
  if pc_socio.ActivePageIndex = 5 then
  begin
    CargaMov;
  end;

end;

{$Region '********** Imagen -> Pegar *****************************************'}
procedure TfrmSocios.Pegar1Click(Sender: TObject);
begin
  inherited;
  case MessageDlg('Esta Seguro de Pegar la Imagen?... Esto borrara la Actual', mtConfirmation, [mbOK, mbCancel], 0,mbCancel) of
    mrOk:
    begin
    // Write code here for pressing button OK
      DataModulo1.socioApoyoDoc.Edit;
      DBImage2.PasteFromClipboard ;
    end;
    mrCancel:
    begin
    end;
  end;

end;
{$EndRegion}

//------------------------------------------------------------------------------
//        Selecciona el Page de cuentas
//------------------------------------------------------------------------------
procedure TfrmSocios.pcDetalleCuentaChange(Sender: TObject);
begin
  inherited;
  if pcDetalleCuenta.ActivePageIndex = 1 then
  begin
    if Not DataModulo1.TipoProductoFiador.AsBoolean  then
    begin
      pnFiadores.Visible    := false;
      pnNoFiadores.Visible  := True;
    end
    else
    begin
      pnFiadores.Visible    := true;
      pnNoFiadores.Visible  := False;
    end;
  end;


end;

procedure TfrmSocios.PageControl3MouseEnter(Sender: TObject);
begin
  inherited;
 bFiadores := True;
end;

procedure TfrmSocios.PageControl3MouseLeave(Sender: TObject);
begin
  inherited;
   bFiadores := False;
end;

function TfrmSocios.Paginas(valor: boolean): boolean;
begin
  ts_Herederos.Enabled        := valor;
  ts_datosFinancieros.Enabled := valor;
  ts_Vaciones.Enabled         := valor;
  ts_documentos.Enabled       := valor;
  ts_EstadoCuentas.Enabled    := valor;
  ts_Cuentas.Enabled          := valor;
  ts_Dependientes.Enabled     := valor;
  ts_Perfiles.Enabled         := valor;
end;

procedure TfrmSocios.PaisesDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  DataModulo1.Provincias.Close;
end;

procedure TfrmSocios.rbFemeninoClick(Sender: TObject);
begin
  inherited;
  DataModulo1.tblSocios.edit;
//  if rbFemenino.Checked  then
//      DataModulo1.tblSociossexo.Value := 'F';
end;

procedure TfrmSocios.rbMasculinoClick(Sender: TObject);
begin
  inherited;
  DataModulo1.tblSocios.edit;
//  if rbMasculino.Checked  then
//      DataModulo1.tblSociossexo.Value := 'M';

end;

procedure TfrmSocios.ScrollBar1Change(Sender: TObject);
begin
  inherited;
  DBImage1.Top    := 1;
  DBImage1.Left   := 1;
  ScrollBox2.VertScrollBar.Visible := true;
  ScrollBox2.HorzScrollBar.Visible := true;
  DBImage1.Height := xH + tb1.Position ;
  DBImage1.Width  := xW + tb1.Position ;
end;

procedure TfrmSocios.ScrollBox1MouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  if wheelDelta > 0  then ScrollBox1.Perform(WM_VSCROLL,0,0);
  if wheelDelta < 0  then ScrollBox1.Perform(WM_VSCROLL,1,0);
  Handled := True;



end;

procedure TfrmSocios.SocioProductosDataChange(Sender: TObject; Field: TField);
Var
 Saldo : Double;
begin
  inherited;

  dpFechaInicio.Date := DataModulo1.SocioProductosfecha_inicio.AsDateTime ;
 // edPlazo.Text       := DataModulo1.SocioProductosplazo.AsString;

  mMovimientos.Close;
  mMovimientos.Open;

  //--- Carga el plan de pago del Producto
  DataModulo1.Producto.Close;
  DataModulo1.Producto.SQL.Clear;
  DataModulo1.Producto.SQL.Add('Select  * from subcuenta ');
  DataModulo1.Producto.SQL.Add('Where SubCuenta = ' + Quotedstr(DataModulo1.SocioProductossubcuenta.AsString));
  DataModulo1.producto.Open;
 // DataModulo1.Producto.Locate('subCuenta',DataModulo1.SocioProductossubcuenta.AsString  ,[]);

  CargarPlanPago;

//  CargaMov;
  pnNoFiadores.Visible := False;
  if DataModulo1.ProductoFiador.AsBoolean  then
  Begin
   pnFiadores.visible := True;
   CargaFiadores;
  End
  else
  begin
   pnFiadores.visible := False;
   pnNoFiadores.Visible := true;
   DataModulo1.mFiadores.Close;
   DataModulo1.mFiadores.open;
  end;

end;

procedure TfrmSocios.SociosDataChange(Sender: TObject; Field: TField);
var
i : integer;
begin

  inherited;
  msocio.Close;
  msocio.Open;


  if DataModulo1.tblSociossocio.AsInteger > 0  then
  begin
    edTipoCliente.Enabled := false;
    msocio.Append;
    for i := 0 to DataModulo1.tblSocios.FieldCount - 1 do
    begin
      mSocio.Fields[I].Value := DataModulo1.tblSocios.Fields[i].value;
    end;
    msocio.Post;
    _detalleLog := '' ;

  end
  else
  begin
    edTipoCliente.Enabled := true;
  end;


{

//--- Activa el hints para mostrar la activacion / Retiro del Asocioado
  if DataModulo1.tblSociosActivo.AsString = 'R' then
  begin
    dbl_Estatus.Hint := 'Salida | Fecha de Salida : ' +
       FormatDateTime('dd-mmm-yyyy',DataModulo1.tblSociosfecha_salida.AsDateTime )
       + '|51';
  end
  else
  if DataModulo1.tblSociosActivo.AsString = 'A' Then
    dbl_Estatus.Hint := 'Ingreso|Fecha de Ingreso : ' +
       FormatDateTime('dd-mmm-yyyy',DataModulo1.tblSociosfecha_ingreso.AsDateTime )
       +'|50';

  dbl_Estatus.ShowHint := True;

  //---
  if Not (DataModulo1.tblSociosidTipoDoc.AsString = 'CE') then
    begin
      dbCed1.Visible := false;
      dbCed2.Visible := false;
      dbCed3.Visible := false;
      edPasaporteRuc.Visible := true;
      edPasaporteRuc.Top := dbced1.Top;
    end
    else
    Begin
      dbCed1.Visible := true;
      dbCed2.Visible := true;
      dbCed3.Visible := true;
      edPasaporteRuc.Visible := false;
    End;
          }
end;



procedure TfrmSocios.SpeedButton1Click(Sender: TObject);
begin
  inherited;
   Application.CreateForm(TfrmCalendario, frmCalendario);
   if DataModulo1.tblSociosfecha_nacimiento.AsString <> '' then
      frmCalendario.Fechas.Date := DataModulo1.tblSociosfecha_nacimiento.AsDateTime
   else
      frmCalendario.Fechas.Date := Date;

   if frmCalendario.ShowModal = mrOk then
   begin
      DataModulo1.tblSocios.Edit;
      DataModulo1.tblSociosfecha_nacimiento.AsDateTime  := frmCalendario.Fechas.Date;
      lbEdad.Caption:=CalculaEdadCompleta(DataModulo1.tblSociosfecha_nacimiento.AsDateTime);
   end;

end;

procedure TfrmSocios.spMes1Change(Sender: TObject);
begin
  inherited;
  FechaNacimiento(now,'H');
end;

procedure TfrmSocios.tb1Change(Sender: TObject);

begin
  inherited;
//  DBImage1.Top    := 1;
//  DBImage1.Left   := 1;
  DBImage1.Proportional := true;
  DBImage1.Stretch := true;
  DBImage1.Repaint;
//
//  DBImage1.Height := Round(_alto * tb1.Position  / 2);
//  Dbimage1.Width  := Round(_ancho * tb1.Position / 2);

//  ScrollBox2.VertScrollBar.Visible := true;
//  ScrollBox2.HorzScrollBar.Visible := true;
//  DBImage1.Height := xH + tb1.Position ;
//  DBImage1.Width  := xW + tb1.Position ;

//En el zoom +
//
//Imagen->Height= Imagen->Picture->Height;
//Imagen->Width=Imagen->Picture->Width;
//Imagen->Height = Imagen->Height*2;
//Imagen->Width = Imagen->Width*2;
//
//En el zoom -
//
//Imagen->Height= Imagen->Picture->Height;
//Imagen->Width=Imagen->Picture->Width;
//Imagen->Height = Imagen->Height/2;
//Imagen->Width = Imagen->Width/2;

end;

procedure TfrmSocios.ToolButton11Click(Sender: TObject);
  var
    FileName : String;
begin
  inherited;
  //---
  OpenPictureDialog1.Filter := 'Archivo de Imagen(*.bmp) |*.bmp';
  if OpenPictureDialog1.Execute  then
  begin
    docPegar.Enabled  := False;
    docCopiar.Enabled := False;
   // Image10.Picture.LoadFromFile()
    DataModulo1.SocioDoc.Append;
    DataModulo1.SocioDocSocio.Value              := DataModulo1.tblSociossocio.Value;
    DataModulo1.SocioDocfechaRegistro.AsDateTime := DataModulo1.FechaSistema();
    DataModulo1.SocioDocruta.AsString            := OpenPictureDialog1.FileName;
    DBImage1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    DBImage1.Refresh;
  End
  else
   ShowMessage('Apertaru de Archivo Cancelada...');
end;

procedure TfrmSocios.ToolButton12Click(Sender: TObject);
begin
  inherited;
  if True then
    DataModulo1.tblSocios.Delete;
end;

procedure TfrmSocios.ToolButton16Click(Sender: TObject);
var
 I :  Integer;
begin
  inherited;

end;

procedure TfrmSocios.ToolButton19Click(Sender: TObject);
var
  Stream: TMemoryStream;
  Texto: String;
  I: Integer;
  LI : TListItem;
begin

   pn_scaner.Left  := 90;
   pn_scaner.Top   := 32;
   pn_scaner.Width := 482;
   pn_scaner.Height:= 336;
   pn_scaner.Visible := true;

end;

procedure TfrmSocios.ToolButton21Click(Sender: TObject);
//var
//  OleGraphic               : TOleGraphic;
//  Source                   : TImage;
//  BMP                      : TBitmap;
//  ss          :TMemoryStream;
//  st          :string;
//  fs          :TBytesStream;
begin
  inherited;
//  OleGraphic := TOleGraphic.Create; {The magic class!}

  DataModulo1.SocioDoc.prior;
//  ss    := TMemoryStream.Create();
//  st := DataModulo1.SocioDocimagenTxt.AsString;
//
//
//  if st <> '' then
//  begin
//    fs := TBytesStream.Create(DecodeBase64(st));
//    OleGraphic.LoadFromStream(fs);
//    Source := Timage.Create(Nil);
//    Source.Picture.Assign(OleGraphic);
//
//    BMP := TBitmap.Create; {Converting to Bitmap}
////    bmp.Width := Source.Picture.Width;
////    bmp.Height := source.Picture.Height;
//    bmp.Canvas.Draw(0, 0, source.Picture.Graphic);
//
//    image10.Picture.Bitmap := bmp; {Show the bitmap on form}
//  end;

end;

procedure TfrmSocios.ToolButton22Click(Sender: TObject);
//var
//  OleGraphic               : TOleGraphic;
//  Source                   : TImage;
//  BMP                      : TBitmap;
//  ss          :TMemoryStream;
//  st          :string;
//  fs          :TBytesStream;
begin
  inherited;
//  OleGraphic := TOleGraphic.Create; {The magic class!}
//
  DataModulo1.SocioDoc.Next;
//  ss    := TMemoryStream.Create();
//  st := DataModulo1.SocioDocimagenTxt.AsString;
//
//
//  if st <> '' then
//  begin
//    fs := TBytesStream.Create(DecodeBase64(st));
//    OleGraphic.LoadFromStream(fs);
//    Source := Timage.Create(Nil);
//    Source.Picture.Assign(OleGraphic);
//
//    BMP := TBitmap.Create; {Converting to Bitmap}
//    bmp.Width := Source.Picture.Width;
//    bmp.Height := source.Picture.Height;
//
//    bmp.Canvas.Draw(0, 0, source.Picture.Graphic);
//
//    image10.Picture.Bitmap := bmp; {Show the bitmap on form}
//  end;

end;

procedure TfrmSocios.ToolButton23Click(Sender: TObject);
begin
  inherited;
  abmFiador := 'A';
  edFiador.Enabled:=true;
  edFiador.SetFocus;

  DataModulo1.CuentaFiadores.Append;
  DataModulo1.CuentaFiadoresNum_Cuenta.AsString :=
          DataModulo1.SocioProductosnum_cuenta.AsString;

  DataModulo1.Fiadores.Close;
  DataModulo1.Fiadores.Open;
  mFiador.Close;
  mFiador.Open;

end;

procedure TfrmSocios.ToolButton24Click(Sender: TObject);
begin
  inherited;
  if  abmFiador = 'A' then
  Begin
    try

    DataModulo1.Generico.Close;
    DataModulo1.Generico.SQL.Clear;
    DataModulo1.Generico.SQL.Add('Insert InTo maes_aux_fiador (' );
    DataModulo1.Generico.SQL.Add('num_cuenta,ced1,ced2,ced3,fecha_aud,usuario )');
    DataModulo1.Generico.SQL.Add(' Values (');
    DataModulo1.Generico.SQL.Add(  coma + DataModulo1.SocioProductosnum_cuenta.AsString + coma);
    DataModulo1.Generico.SQL.Add(  ',' + coma + DataModulo1.Fiadoresced1.AsString + coma );
    DataModulo1.Generico.SQL.Add(  ',' + DataModulo1.Fiadoresced2.AsString );
    DataModulo1.Generico.SQL.Add(  ',' + DataModulo1.Fiadoresced3.AsString );
    DataModulo1.Generico.SQL.Add(  ',' + coma + FormatDateTime('yyyy-mm-dd hh:nn:ss',now) + coma);
    DataModulo1.Generico.SQL.Add(  ',' + coma + usuario + coma + ')');
    Clipboard.AsText := DataModulo1.Generico.SQL.Text;
    DataModulo1.Generico.ExecSQL;

    edFiador.Enabled:=false;
    abmFiador := '';
    CargaFiadores;
    except
      on E:Exception do
      begin
       showMessage('Error al salvar el Fiador...');
      end;
    end;
  End;

end;

procedure TfrmSocios.ToolButton25Click(Sender: TObject);
begin
  inherited;

  if MessageDlg('¿Está seguro de borrar el registro?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
    DataModulo1.Generico.Close;
    DataModulo1.Generico.SQL.Clear;
    DataModulo1.Generico.SQL.Add('Delete maes_aux_fiador ' );
    DataModulo1.Generico.SQL.Add('Where num_Cuenta = ' ) ;
    DataModulo1.Generico.SQL.Add(  coma + DataModulo1.SocioProductosnum_cuenta.AsString + coma);
    DataModulo1.Generico.SQL.Add(' and ced1 = ' + coma + DataModulo1.CuentaFiadoresced1 .AsString + coma );
    DataModulo1.Generico.SQL.Add(' and ced2 = ' + DataModulo1.CuentaFiadoresced2.AsString );
    DataModulo1.Generico.SQL.Add(' and ced3 = ' + DataModulo1.CuentaFiadoresced3.AsString );
    DataModulo1.Generico.ExecSQL;
    CargaFiadores;
    abmFiador := '';
  End;

end;

procedure TfrmSocios.ToolButton37Click(Sender: TObject);
var
 _SaldoInicial,_deberSer,_saldoActual : Double;
 _fechaCierre, _Vencimiento  : TDateTime;
 _dia, _mes, _ano, _meses : word;
 _mora  : double;
begin
  inherited;

  _dia := 28;
  _mes := 03;
  _ano := 2014;

  _fechaCierre := EncodeDateTime(_ano,_mes,_dia,23,54,00,00) ;
  _SaldoInicial := DataModulo1.SocioProductosmonto.AsFloat;

  DataModulo1.ProductoPlanPago.first;
  while not DataModulo1.ProductoPlanPago.eof  do
  begin
     if DataModulo1.ProductoPlanPagovencimiento.AsDateTime > _fechaCierre then
       Break
     else
     begin
       _deberSer := DataModulo1.ProductoPlanPagodeberSer.AsFloat;
       _vencimiento := DataModulo1.ProductoPlanPagovencimiento.AsDateTime ;
     end;
     DataModulo1.ProductoPlanPago.next;
  end;

  _deberSer := _deberSer ;

  mMovimientos.First;

  while not mMovimientos.Eof do
  begin
    if mMovimientosfecha_doc.AsDateTime > _fechaCierre  then
       Break
    else
    begin
      _SaldoActual := mMovimientossaldoCapital.AsFloat ;
    end;

    mMovimientos.Next
  end;

  _saldoActual := _saldoActual;

  _mora := _saldoActual - _deberSer ;

  _mora := _mora * 0.02;

  _meses := MonthOf(_fechaCierre) - MonthOf(_Vencimiento) + 1;



end;

procedure TfrmSocios.ToolButton39Click(Sender: TObject);
var
  FS: TMemoryStream;
  FirstBytes: AnsiString;
  Graphic: TGraphic;
  fileName : string;
  tipo,st  : string;
begin
  inherited;
//---
  Graphic := nil;
  OpenPictureDialog1.Filter := 'Imagenes JPG (*.jpg)|*.JPG|BMP-s (*.bmp)|*.BMP|GIF (*.gif)|*.GIF';
  FS := TMemoryStream.Create ();
  if OpenPictureDialog1.execute  then
  begin
    fileName := OpenPictureDialog1.FileName;
    Image10.Picture.LoadFromFile(fileName);
    image10.Picture.Graphic.SaveToStream(FS);
    st    :=  EncodeBase64(fs.Memory, fs.Size);
    Clipboard.AsText := st;
    tipo := RightStr(filename, 3);

    if tipo = 'jpg' then
      Graphic := TJPEGImage.Create;
    if tipo = 'bmp'  then
      Graphic := TBitmap.Create;

    DataModulo1.SocioDoc.Append;
    DataModulo1.SocioDocSocio.Value              := DataModulo1.tblSociossocio.Value;
    DataModulo1.SocioDocfechaRegistro.AsDateTime := now;
    DataModulo1.SocioDocruta.AsString            := filename;
    DataModulo1.SocioDocimagenTxt.AsString       := St;
    DataModulo1.SocioDoc.Post;

//    image9.Picture.LoadFromFile(OpenPictureDialog1.FileName);
//    s := BitmapToString(image9.Picture.Bitmap );
//    Clipboard.AsText := s;
//    DataModulo1.SocioDocimagenTxt.AsString := S;
//    Image10.Picture.Bitmap := StringToBitmap(DataModulo1.SocioDocimagenTxt.AsString );
//    DBImage1.Refresh;
  End
  else
   ShowMessage('Open file was cancelled');

end;

procedure TfrmSocios.ToolButton40Click(Sender: TObject);

var
  ss    :TMemoryStream;
  st    :string;
  stream: TBytesStream;
  jpg   :  TJPEGImage;
begin
  ss    := TMemoryStream.Create();
  jpg   := TJPEGImage.Create;

  if OpenPictureDialog1.Execute  then
  begin
    OpenPictureDialog1.Filter := 'Imagenes JPG (*.jpg)|*.JPG| BMP-s (*.bmp)|*.BMP';
    if OpenPictureDialog1.execute  then

    DataModulo1.SocioDoc.Append;
    DataModulo1.SocioDocSocio.Value              := DataModulo1.tblSociossocio.Value;
    DataModulo1.SocioDocfechaRegistro.AsDateTime := now;
    DataModulo1.SocioDocruta.AsString            := OpenPictureDialog1.FileName;

    DBImage1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    DBImage1.Refresh;

    try

      DBImage1.Picture.Graphic.SaveToStream(ss);

      st    :=  EncodeBase64(ss.Memory, ss.Size);
      Clipboard.AsText := st;
      DataModulo1.SocioDocimagenTxt.AsString := st;
      stream := TBytesStream.Create(DecodeBase64(st));
      stream.Position := 0;

      jpg.LoadFromStream(stream);
      Image10.Picture.Assign(jpg);

    finally
      ss.Free;
    end;
  end;
end;

procedure TfrmSocios.ToolButton46Click(Sender: TObject);
var
  ss    :TMemoryStream;
  st    :string;
  stream: TBytesStream;
  jpg   :  TJPEGImage;
begin

  ss    := TMemoryStream.Create();
  jpg   := TJPEGImage.Create;
  st := DataModulo1.SocioDocimagenTxt.AsString;

  stream := TBytesStream.Create(DecodeBase64(st));
  stream.Position := 0;

  jpg.LoadFromStream(stream);
  Image10.Picture.Assign(jpg);

end;

procedure TfrmSocios.ToolButton47Click(Sender: TObject);
begin
  inherited;
  _detalleLog := '' ;
  DataModulo1.socioApoyoLentes.Prior;
  dp_FechaApoyoLentes.Datetime := DataModulo1.socioApoyoLentesfechaApoyo.AsDateTime ;
end;

procedure TfrmSocios.ToolButton50Click(Sender: TObject);
begin
  inherited;
  _detalleLog := '' ;
  DataModulo1.socioApoyoLentes.Next;
  dp_FechaApoyoLentes.Datetime := DataModulo1.socioApoyoLentesfechaApoyo.AsDateTime ;
end;

procedure TfrmSocios.ToolButton51Click(Sender: TObject);
begin
  inherited;
  DataModulo1.tblSocios.Post;
end;

procedure TfrmSocios.ToolButton55Click(Sender: TObject);
begin
  inherited;
   Twain.SelectedSourceIndex := lbs.ItemIndex ;//.ItemIndex;

  if Assigned(Twain.SelectedSource) then begin
    //Load source, select transference method and enable (display interface)}
    Twain.SelectedSource.Loaded := True;
    Twain.SelectedSource.ShowUI := True;//display interface
    Twain.SelectedSource.Enabled := True;
  end;
end;

procedure TfrmSocios.ToolButton58Click(Sender: TObject);

//var
//  mask,bmp : TBitmap;
//  bkColor : TColor;
//  i : Integer;
//  xloop : boolean;
begin
 // if not fileexists('C:\img\' + edNombre.Text + '.bmp') then
  begin
//   ImgHolder.Picture.Bitmap.savetofile('C:\img\' +edNombre.Text + '.bmp');
   DataModulo1.SocioDoc.Append;
   DataModulo1.SocioDocSocio.AsInteger := DataModulo1.tblSociossocio.Value;
   DataModulo1.SocioDocfechaRegistro.AsDateTime  := DataModulo1.FechaSistema ();
   DBImage1.Picture.Bitmap:=ImgHolder.Picture.Bitmap;
   pn_scaner.Visible := false;
   DataModulo1.SocioDoc.post;
   DataModulo1.RegistroLog(usuario,'Inserta desde Scaner ' , 'Socio No. ' + mSociosocio.AsString);

  end;
end;

procedure TfrmSocios.ToolButton60Click(Sender: TObject);
begin
  inherited;
   pn_scaner.Visible := false;
end;

procedure TfrmSocios.TwainTwainAcquire(Sender: TObject; const Index: Integer;
  Image: TBitmap; var Cancel: Boolean);
begin
  ImgHolder.Picture.Assign(Image);
  Cancel := True;//Only want one image
end;

procedure TfrmSocios.btn_AnteriorEFClick(Sender: TObject);
begin
  inherited;
   DataModulo1.actividadEgresosF.Prior;
end;

procedure TfrmSocios.btn_ApoyoDoc_newClick(Sender: TObject);
var
 _file : String;
begin
  inherited;


  if OpenPictureDialog1.Execute  then
  begin
    _file :=  OpenPictureDialog1.FileName;
    DataModulo1.socioApoyoDoc.Append;
    DataModulo1.socioApoyoDocidSocio.Value       := DataModulo1.tblSociossocio.Value;
    DataModulo1.socioApoyoDocidApoyo.AsInteger   := DataModulo1.socioApoyoLentesidApoyo.AsInteger ;
    DataModulo1.socioApoyoDocguidApoyo.AsString  := DataModulo1.socioApoyoLentesguid.AsString ;
    DataModulo1.socioApoyoDocusuario_au.AsString := usuario;
    DataModulo1.socioApoyoDocfecha_au.AsDateTime := now;
    DataModulo1.socioApoyoDocguid.AsString       := DataModulo1._guid ();
    DBImage2.Picture.LoadFromFile(_file);
    dp_factura.DateTime := now;
 //   DBImage2.Refresh;
  End
  else
   ShowMessage('Open file was cancelled');


end;

procedure TfrmSocios.btn_ApoyoDoc_nextClick(Sender: TObject);
begin
  inherited;
  DataModulo1.socioApoyoDoc.next;
  dp_factura.Datetime := DataModulo1.socioApoyodocFecha.AsDateTime ;
end;

procedure TfrmSocios.btn_ApoyoDoc_priorClick(Sender: TObject);
begin
  inherited;
  DataModulo1.socioApoyoDoc.Prior;
  dp_factura.Datetime := DataModulo1.socioApoyodocFecha.AsDateTime ;

end;

procedure TfrmSocios.btn_ApoyoDoc_salvarClick(Sender: TObject);
begin
  inherited;
  if  Not (DataModulo1.socioApoyoDoc.State IN [dsEdit,dsInsert]) then
  Begin
    DataModulo1.socioApoyoDoc.edit;
  End;

  Try
   DataModulo1.socioApoyodocFecha.AsDateTime :=  dp_factura.Datetime ;
   DataModulo1.socioApoyoDoc.post;
   DBImage2.Refresh;
   DBImage2.Stretch := true;
  except
   on E:Exception do
   begin
    showMessage('Error al salvar el Documento...');
   end;
  end;
end;

procedure TfrmSocios.btn_ApoyoLentes_newClick(Sender: TObject);
begin
  inherited;

  DataModulo1.socioApoyoLentes.Append;
  DataModulo1.socioApoyoLentesidSocio.Value         := DataModulo1.tblSociossocio.Value;
  DataModulo1.socioApoyoLentesGuidSocio.AsString    := DataModulo1.tblSociosguidSocio.AsString;
  DataModulo1.socioApoyoLentesFechaApoyo.AsDateTime := DataModulo1.FechaSistema ();
  dp_FechaApoyoLentes.Datetime := DataModulo1.FechaSistema ();
  DataModulo1.socioApoyoLentesguid.AsString         := DataModulo1._guid();

end;

procedure TfrmSocios.btn_ApoyoLentes_SalvarClick(Sender: TObject);
begin
  inherited;
  if  Not (DataModulo1.socioApoyoLentes.State IN [dsEdit, dsInsert]) then
     DataModulo1.socioApoyoLentes.edit;

  if DataModulo1.socioApoyoLentes.State = dsEdit then
     DataModulo1.RegistroLog(Usuario,'Actualiza Apoyo ','Socio No. '
         + DataModulo1.socioApoyoLentesidSocio.AsString + _detalleLog  );

  if DataModulo1.socioApoyoLentes.State = dsInsert then
     DataModulo1.RegistroLog(Usuario,'Inserta Apoyo ','Socio No. ' + DataModulo1.socioApoyoLentesidSocio.AsString);


    Try

      DataModulo1.socioApoyoLentesfechaApoyo.AsDateTime := dp_FechaApoyoLentes.DateTime ;
      DataModulo1.socioApoyoLentes.post;

      except
      on E:Exception do
      begin
        showMessage('Error al salvar el Apoyo...');
      end;

    end;

end;

procedure TfrmSocios.btn_DirIV_AnteriorClick(Sender: TObject);
begin
  inherited;
    DataModulo1.direccionIngresoV.Prior  ;
end;

procedure TfrmSocios.btn_DirIV_NuevoClick(Sender: TObject);
begin
  inherited;
  grp_IV_Direccion.Enabled := True;
  btn_DirIV_Nuevo.Enabled := false;
  btn_DirIV_Editar.Enabled := false;
  btn_DirIV_Salvar.Enabled := True;
  btn_DirIV_UnDo.enabled := true;
  dbl_DirIV_Pais.SetFocus;
  DataModulo1.direccionIngresoV.Append;
end;

procedure TfrmSocios.btn_DirIV_SalvarClick(Sender: TObject);
begin
  inherited;

  if  Not (DataModulo1.direccionIngresoV.State IN [dsEdit,dsInsert]) then
  Begin
    DataModulo1.direccionIngresoV.edit;
  end;

  Try
    if DataModulo1.direccionIngresoVguid.AsString  = ''  then
       DataModulo1.direccionIngresoVguid.AsString := DataModulo1._guid();


    DataModulo1.direccionIngresoVguidSocio.value :=
            DataModulo1.tblSociosguidSocio.value;

    DataModulo1.direccionIngresoVguidActividad.Value :=
    DataModulo1.SocioFuentesIngresosVariablesguid.Value ;
    DataModulo1.direccionIngresoVtipoIngreso.AsString  := 'V';
    DataModulo1.direccionIngresoV.post;
  except
   on E:Exception do
   begin
    showMessage('Error al salvar el Origen del Ingreso Variable...');
   end;


  end;

  grp_IV_Direccion.Enabled   := false;
  btn_DirIV_Nuevo.Enabled    := True;
  btn_DirIV_Editar.Enabled   := True;
  btn_DirIV_Salvar.Enabled   := false;
  btn_DirIV_UnDo.enabled     := false;
  btn_DirIV_Anterior.Enabled := True;
  btn_DirIV_Siguiente.Enabled:= True;

end;

procedure TfrmSocios.btn_DirIV_SiguienteClick(Sender: TObject);
begin
  inherited;
    DataModulo1.direccionIngresoV.next  ;
end;

procedure TfrmSocios.btn_DirIV_UnDoClick(Sender: TObject);
begin
  inherited;
  DataModulo1.direccionIngresoV.Cancel;
  grp_IV_Direccion.Enabled   := false;
  btn_DirIV_Nuevo.Enabled    := True;
  btn_DirIV_Editar.Enabled   := True;
  btn_DirIV_Salvar.Enabled   := false;
  btn_DirIV_UnDo.enabled     := false;
  btn_DirIV_Anterior.Enabled := True;
  btn_DirIV_Siguiente.Enabled:= True;
end;

procedure TfrmSocios.btn_DirIF_AnteriorClick(Sender: TObject);
begin
  inherited;
    DataModulo1.direccionIngresoF.Prior  ;
end;

procedure TfrmSocios.btn_DirIF_EditarClick(Sender: TObject);
begin
  inherited;

  grp_IF_Direccion.Enabled   := True;
  btn_DirIF_Nuevo.Enabled    := false;
  btn_DirIF_Editar.Enabled   := false;
  btn_DirIF_Salvar.Enabled   := True;
  btn_DirIF_UnDo.enabled     := true;

end;

procedure TfrmSocios.btn_EditarEFClick(Sender: TObject);
begin
  inherited;
  grpEgresosFijos.Enabled := true;
  btn_nuevoEF.Enabled   := false;
  btn_EditarEF .Enabled := false;
  btn_SalvarEF .Enabled := true;
//  btn_UnDoDIF .Enabled  := true;

end;

procedure TfrmSocios.btn_Egreso_IV_AnteriorClick(Sender: TObject);
begin
  inherited;
   DataModulo1.actividadEgresosV.Prior;
end;

procedure TfrmSocios.btn_Egreso_IV_EditarClick(Sender: TObject);
begin
  inherited;

  grp_Egreso_IV.Enabled        := true;
  btn_Egreso_IV_Nuevo.Enabled  := false;
  btn_Egreso_IV_Editar.Enabled := false;
  btn_Egreso_IV_Salvar.Enabled := true;
  btn_Egreso_IV_UnDo.Enabled   := true;

end;

procedure TfrmSocios.btn_Egreso_IV_NuevoClick(Sender: TObject);
begin
  inherited;
  grp_Egreso_IV.Enabled        := true;
  btn_Egreso_IV_Nuevo.Enabled  := false;
  btn_Egreso_IV_Editar.Enabled := false;
  btn_Egreso_IV_Salvar.Enabled := true;
  btn_Egreso_IV_Undo.Enabled   := true;

  DataModulo1.actividadEgresosV.Append;
end;

procedure TfrmSocios.btn_Egreso_IV_SalvarClick(Sender: TObject);
begin
  inherited;

  if  Not (DataModulo1.actividadEgresosV.State IN [dsEdit,dsInsert]) then
  Begin
    DataModulo1.actividadEgresosV.edit;
  end;

  Try
    if DataModulo1.actividadEgresosVguid.AsString  = ''  then
       DataModulo1.actividadEgresosVguid.AsString := DataModulo1._guid();


    DataModulo1.actividadEgresosVguidSocio.value :=
            DataModulo1.tblSociosguidSocio.value;

    DataModulo1.actividadEgresosVguidActividad.Value :=
    DataModulo1.SocioFuentesIngresosVariablesguid.Value ;

    DataModulo1.actividadEgresosVtipoIngreso.AsString  := 'V';
    DataModulo1.actividadEgresosV.post;

  except
   on E:Exception do
   begin
    showMessage('Error al salvar el Origen del Ingreso Variable...');
   end;


  end;

  grp_Egreso_IV.Enabled         := False;
  btn_Egreso_IV_Nuevo.Enabled  := True;
  btn_Egreso_IV_Editar.Enabled := True;
  btn_Egreso_IV_Salvar.Enabled := False;
  btn_Egreso_IV_UnDo.Enabled   := False;
  btn_Egreso_IV_Siguiente.Enabled := True;
  btn_Egreso_IV_Anterior.Enabled  := True;

end;

procedure TfrmSocios.btn_Egreso_IV_SiguienteClick(Sender: TObject);
begin
  inherited;
   DataModulo1.actividadEgresosV.next;
end;

procedure TfrmSocios.btn_Egreso_IV_UnDoClick(Sender: TObject);
begin
  inherited;
  DataModulo1.actividadEgresosV.Cancel;
  grp_Egreso_IV.Enabled           := False;
  btn_Egreso_IV_Nuevo.Enabled     := True;
  btn_Egreso_IV_Editar.Enabled    := True;
  btn_Egreso_IV_Salvar.Enabled    := False;
  btn_Egreso_IV_UnDo.Enabled      := False;
  btn_Egreso_IV_Siguiente.Enabled := True;
  btn_Egreso_IV_Anterior.Enabled  := True;
end;

procedure TfrmSocios.btn_IV_EditarClick(Sender: TObject);
begin
  inherited;
  //grpInfresoV.Enabled    := true;
  btn_IV_Undo.Enabled    := true;
  btn_IV_Nuevo.Enabled   := false;
  btn_IV_Editar.Enabled  := false;
  btn_IV_Salvar.Enabled  := true;
  btn_Egreso_IV_Siguiente.Enabled := False;
  btn_Egreso_IV_Anterior.Enabled  := False;
end;

procedure TfrmSocios.btn_IV_NuevoClick(Sender: TObject);
begin
  inherited;
  btn_IV_Nuevo.Enabled  := false;
  btn_IV_Editar.Enabled := false;
  btn_IV_Salvar.Enabled := true;
  btn_IV_Undo.Enabled := true;
  grp_IV.Enabled := true;
  dbl_IV_Actividad.SetFocus;
  DataModulo1.SocioFuentesIngresosVariables.Append;
end;

procedure TfrmSocios.btn_IV_SalvarClick(Sender: TObject);
var
 _guid : string;
begin
  inherited;
  if  Not (DataModulo1.SocioFuentesIngresosVariables.State IN [dsEdit,dsInsert]) then
  Begin
    DataModulo1.SocioFuentesIngresosVariables.edit;
  end;

  Try
    //--- Asigna el Dato de Vigencia de la Fuente de Ingreso

    DataModulo1.SocioFuentesIngresosVariablesdesde.AsDateTime := dp_IV_Desde.Date;

    if DataModulo1.SocioFuentesIngresosVariablesactivo.AsBoolean  then
       DataModulo1.SocioFuentesIngresosVariablesHasta.Clear
    else
       DataModulo1.SocioFuentesIngresosVariablesHasta.AsDateTime  := dp_IV_Hasta.Date;


    if DataModulo1.SocioFuentesIngresosVariablesguid.AsString  = ''  then
      DataModulo1.SocioFuentesIngresosVariablesguid.AsString := DataModulo1._guid();

    DataModulo1.SocioFuentesIngresosVariablesidsocio.value :=
            DataModulo1.tblSociossocio.value;
    DataModulo1.SocioFuentesIngresosVariablesguidSocio.AsString :=
            DataModulo1.tblSociosguidSocio.asstring;
    DataModulo1.SocioFuentesIngresosVariablesidtipoFlujo.AsString  := 'V';

    _guid :=  DataModulo1.SocioFuentesIngresosVariablesguid.AsString;

    DataModulo1.SocioFuentesIngresosVariables.post;
    CargarIngresosVariables ;
    DataModulo1.SocioFuentesIngresosVariables.Locate('guid',_guid,[]);
  except
   on E:Exception do
   begin
    showMessage('Error al salvar el Ingreso Variables...');
   end;
  end;
  btnNuevoIngresoFijo.Enabled  := true;
  btnEditarFijos.Enabled       := true;
  grp_IF.Enabled := False;
end;

procedure TfrmSocios.btn_IV_UnDoClick(Sender: TObject);
begin
  inherited;
  btn_IV_Nuevo.Enabled  := true;
  btn_IV_Editar.Enabled := true;
  btn_IV_Salvar.Enabled := False;
  grp_IV.Enabled        := false;
end;

procedure TfrmSocios.btn_DirIF_NuevoClick(Sender: TObject);
begin
  inherited;
  dbl_DirIF_Pais.SetFocus;
  grp_IF_Direccion.Enabled   := True;
  btn_DirIF_Nuevo.Enabled    := false;
  btn_DirIF_Editar.Enabled   := false;
  btn_DirIF_Salvar.Enabled   := True;
  btn_DirIF_UnDo.enabled     := true;
  DataModulo1.direccionIngresoF.Append;
end;

procedure TfrmSocios.btn_DirIF_SalvarClick(Sender: TObject);
begin
  inherited;
 if  Not (DataModulo1.direccionIngresoF.State IN [dsEdit,dsInsert]) then
  Begin
    DataModulo1.direccionIngresoF.edit;
  end;

  Try
    if DataModulo1.direccionIngresoFguid.AsString  = ''  then
       DataModulo1.direccionIngresoFguid.AsString := DataModulo1._guid();


    DataModulo1.direccionIngresoFguidSocio.value :=
            DataModulo1.tblSociosguidSocio.value;

    DataModulo1.direccionIngresoFguidActividad.Value :=
    DataModulo1.SocioFuentesIngresosFijosguid.Value ;

    DataModulo1.direccionIngresoFtipoIngreso.AsString  := 'F';

    //_guid :=  DataModulo1.SocioFuentesIngresosFijosguid.AsString;

    DataModulo1.direccionIngresoF.post;
   // CargarIngresosFijos;
   // DataModulo1.SocioFuentesIngresosFijos.Locate('guid',_guid,[]);
  except
   on E:Exception do
   begin
    showMessage('Error al salvar el Origen del Ingreso Fijo...');
   end;


  end;

  grp_IF_Direccion.Enabled   := false;
  btn_DirIF_Nuevo.Enabled    := true;
  btn_DirIF_Editar.Enabled   := true;
  btn_DirIF_Salvar.Enabled   := false;
  btn_DirIF_UnDo.enabled     := false;

end;

procedure TfrmSocios.btn_DirIF_SiguienteClick(Sender: TObject);
begin
  inherited;
    DataModulo1.direccionIngresoF.next  ;
end;

procedure TfrmSocios.btn_DirIF_UnDoClick(Sender: TObject);
begin
  inherited;
  grp_IF_Direccion.Enabled := False;
  btn_DirIF_Nuevo.Enabled     := true;
  btn_DirIF_Editar.Enabled    := true;
  btn_DirIF_Anterior.Enabled  := true;
  btn_DirIF_Siguiente.Enabled := true;
  btn_DirIF_Salvar.Enabled    := false;
  btn_DirIF_UnDo.enabled      := false;
end;

procedure TfrmSocios.btn_nuevoEFClick(Sender: TObject);
begin
  inherited;
  grpEgresosFijos.Enabled := true;
  btn_nuevoEF.Enabled := false;
  btn_EditarEF .Enabled := false;
  btn_SalvarEF .Enabled := true;
  btn_UndoEF .Enabled  := true;
  DataModulo1.actividadEgresosF.Append;
end;

procedure TfrmSocios.btn_PPP_GenerarClick(Sender: TObject);
  var
   _saldo        : double;
  _numCuenta    : string;
  _letra        : double;
  _plazoMeses   : integer;
  _tipoTasa     : integer;
  _tasa         : double;
  _inicio       : TDateTime;
  _cuotas       : integer;
  i             : integer;

begin
  inherited;

  //--- Genera Plan de Pago

  if DataModulo1.SocioProductosestado.AsString  <> '' then //= 'P' then
  begin

    DataModulo1.Generico.Close;
    DataModulo1.Generico.SQL.Clear;
    DataModulo1.Generico.SQL.Add('Delete from PlanPago where');
    DataModulo1.Generico.SQL.Add(' num_Cuenta = ' +
                  QuotedStr(DataModulo1.SocioProductosnum_cuenta.AsString));
    DataModulo1.Generico.ExecSQL;


    // Verifica que el Producto Sea Prestamo
    showmessage(DataModulo1.Productosubcuenta.AsString);
    if DataModulo1.ProductoPrestamo_S_N.Asstring = 'S' then
    begin

       _letra       := DataModulo1.SocioProductos.FieldByName('letra').AsFloat;
       _saldo       := DataModulo1.SocioProductos.FieldByName('monto').AsFloat;
       _tipoTasa    := DataModulo1.SocioProductos.FieldByName('tipo_periodo_tasa').AsInteger;
       _plazoMeses  := DataModulo1.SocioProductos.FieldByName('plazo').AsInteger;
       _tasa        := DataModulo1.SocioProductos.FieldByName('tasa').AsFloat;
       _inicio      := DataModulo1.SocioProductos.FieldByName('Fecha_Inicio').AsDateTime;

       _cuotas := trunc(_plazoMeses / _tipoTasa);
       for I := 1 to _cuotas do
       begin

         DataModulo1.ProductoPlanPago.Append;
         DataModulo1.ProductoPlanPagonum_cuenta.AsString :=
              DataModulo1.SocioProductosnum_cuenta.AsString;
         DataModulo1.ProductoPlanPagosecuencia.AsInteger  := i;
         DataModulo1.ProductoPlanPagosocio.AsInteger :=
              DataModulo1.tblSociosidSocio.AsInteger ;
         DataModulo1.ProductoPlanPagoguidSocio.AsString :=
              DataModulo1.tblSociosguidSocio.AsString;
         DataModulo1.ProductoPlanPagosubcuenta.AsInteger  :=
              DataModulo1.SocioProductossubcuenta.AsInteger ;

         _inicio := IncMonth(_inicio, _tipoTasa);
         DataModulo1.ProductoPlanPagovencimiento.AsDateTime := _inicio;

         DataModulo1.ProductoPlanPagosaldoInicial.AsFloat :=
             DataModulo1.SocioProductos.FieldByName('monto').AsFloat;

         DataModulo1.ProductoPlanPagoletra.AsFloat := _letra;
         _saldo := _saldo - _letra;
         DataModulo1.ProductoPlanPagodeberSer.AsFloat := _saldo;


       end;

    end;

  end;

end;

procedure TfrmSocios.btn_ppp_SalvarClick(Sender: TObject);
begin
  inherited;
  if not (DataModulo1.ProductoPlanPago.State IN [dsEdit,dsInsert])  then
  Begin
    DataModulo1.ProductoPlanPago.Edit;
  End;

  Try
    DataModulo1.ProductoPlanPago.post;
  except
   on E:Exception do
   begin
    showMessage('Error al salvar el Plan de Pago...');
   end;
  End;
end;


procedure TfrmSocios.btn_SalvarEFClick(Sender: TObject);
begin
  inherited;

  if  Not (DataModulo1.actividadEgresosF.State IN [dsEdit,dsInsert]) then
  Begin
    DataModulo1.actividadEgresosF.edit;
  end;

  Try
    if DataModulo1.actividadEgresosFguid.AsString  = ''  then
       DataModulo1.actividadEgresosFguid.AsString := DataModulo1._guid();


    DataModulo1.actividadEgresosFguidSocio.value :=
            DataModulo1.tblSociosguidSocio.value;

    DataModulo1.actividadEgresosFguidActividad.Value :=
    DataModulo1.SocioFuentesIngresosFijosguid.Value ;

    DataModulo1.actividadEgresosFtipoIngreso.AsString  := 'F';

    //_guid :=  DataModulo1.SocioFuentesIngresosFijosguid.AsString;

    DataModulo1.actividadEgresosF.post;
   // CargarIngresosFijos;
   // DataModulo1.SocioFuentesIngresosFijos.Locate('guid',_guid,[]);
  except
   on E:Exception do
   begin
    showMessage('Error al salvar el Origen del Ingreso Fijo...');
   end;


  end;




  grpEgresosFijos.Enabled := False;
  btn_nuevoEF.Enabled     := true;
  btn_EditarEF .Enabled   := true;
  btn_SalvarEF .Enabled   := false;
  btn_UndoEF .Enabled    := false;
end;

procedure TfrmSocios.btn_SiguienteEFClick(Sender: TObject);
begin
  inherited;
   DataModulo1.actividadEgresosF.next;
end;

procedure TfrmSocios.spAnio1Change(Sender: TObject);
begin
  inherited;
  FechaNacimiento(now,'H');
end;

procedure TfrmSocios.spDia1Change(Sender: TObject);
begin
  inherited;
  FechaNacimiento(now,'H');
end;

procedure TfrmSocios.btnTelAnteriorClick(Sender: TObject);
begin
  inherited;
  DataModulo1.socioTelefonos.Prior;
end;

procedure TfrmSocios.btnTelSiguienteClick(Sender: TObject);
begin
  inherited;
  DataModulo1.socioTelefonos.next;
end;

procedure TfrmSocios.btnextractoClick(Sender: TObject);
Var
  Saldo : Double;
  _saldoCapital : Double;
  _saldoInteres : double;
  _saldoMora    : double;
  _hayregistros : boolean;
  _signo        : int32;
  i             : int32;
  dd,mm,yy      : word;
  _fecha        : TDatetime;
  _fechaInicio  : TDatetime ;
begin

  DataModulo1.movimientosCuenta.First;

  //---Inicializacion de los acumuladores...
  _saldoCapital := 0.00;
  _saldoInteres := 0.00;
  _saldoMora    := 0.00;
  _hayRegistros := false;
  while not DataModulo1.movimientosCuenta.eof  do
  begin

    _fechaInicio := DataModulo1.movimientosCuentafecha_doc.asdatetime;

    if _fechaInicio <= desde.date  then
    begin

     _signo := 1;

     //--- Verifica que el moviemiento tenga la misma naturaleza
     if DataModulo1.movimientosCuentanaturaleza.AsString =
        DataModulo1.movimientosCuenta_dc.AsString          then
      begin
            //--- Mantiene el mismo signo con el que se configuro
            //    en la tabla de productosTrx (mantenimiento de productos)
       if DataModulo1.movimientosCuentaSigno.AsString = '-' then
       begin
        _signo := -1;
       end
      end
      else  //--- En caso contrario, que la naturaleza de la cuenta en el
              //    maestro contable sea diferente al movimiento dela transaccion,
              //    Entonces el signo con el que se configuro se cambia ....
      begin
       if DataModulo1.movimientosCuentaSigno.AsString = '-' then
       begin
        _signo := 1;
       end
      else
       _signo := -1
      end;

       _saldoCapital := _saldoCapital + DataModulo1.movimientosCuentamontoCapital .Value * _signo ;
       _saldoInteres := _saldoInteres + DataModulo1.movimientosCuentamontoInteres.Value * _signo ;
       _saldoMora    := _saldoMora    + DataModulo1.movimientosCuentamontoMora.Value * _signo ;
       _hayregistros := true;
    end
    else
      break;

    DataModulo1.movimientosCuenta.Next
  end;

  if _hayRegistros then
  begin
    mMovimientos.Close;
    mMovimientos.Open;
    //---- Inserta el registro de saldo a la fecha inicial
    mMovimientos.Append;
    mMovimientosnombreDoc.AsString  := '.....Saldo a la fecha';
    mMovimientosnum_cuenta.AsString := DataModulo1.movimientosCuentanum_cuenta.AsString ;
    mMovimientosfecha_doc.asdatetime:= desde.Date;
    mMovimientossaldoCapital.Value  := _saldoCapital ;
    mMovimientossaldoInteres.Value  := _saldoInteres ;
    mMovimientossaldoMora.Value     := _saldoMora ;

    while (Not DataModulo1.movimientosCuenta.eof) do
    begin

       if DataModulo1.movimientosCuentafecha_doc.AsDateTime > hasta.DateTime  then
          break;

        mMovimientos.Append;
        for I := 0 to DataModulo1.movimientosCuenta.FieldCount - 1  do
        Begin
          mMovimientos.Fields[I].Value := DataModulo1.movimientosCuenta.Fields[i].Value;
        End;

        _signo := 1;

        //--- Verifica que el moviemiento tenga la misma naturaleza
        if mMovimientosnaturaleza.AsString = mMovimientos_dc.AsString  then
        begin
            //--- Mantiene el mismo signo con el que se configuro
            //    en la tabla de productosTrx (mantenimiento de productos)
            if mMovimientosSigno.AsString = '-' then
            begin
              _signo := -1;
            end
        end
        else  //--- En caso contrario, que la naturaleza de la cuenta en el
              //    maestro contable sea diferente al movimiento dela transaccion,
              //    Entonces el signo con el que se configuro se cambia ....
        begin
         if mMovimientosSigno.AsString = '-' then
            begin
              _signo := 1;
            end
            else
              _signo := -1
        end;

        mMovimientosmontoCapital.Value := mMovimientosmontoCapital.Value * _signo;
        mMovimientosmontoInteres.Value := mMovimientosmontoInteres.Value * _signo;
        mMovimientosmontoMora.Value    := mMovimientosmontoMora.Value    * _signo;

        _saldoCapital := _saldoCapital + mMovimientosmontoCapital.AsFloat;
        _saldoInteres := _saldoInteres + mMovimientosmontoInteres.AsFloat;
        _saldomora    := _saldoMora    + mMovimientosmontoMora.AsFloat;

        mMovimientossaldoCapital.Value := _saldoCapital;
        mMovimientossaldoInteres.Value := _saldoInteres;
        mMovimientossaldoMora.Value    := _saldoMora;

        if mMovimientosmontoCapital.Value = 0  then
           mMovimientosmontoCapital.Clear;

        if mMovimientossaldoCapital.Value = 0  then
           mMovimientossaldoCapital.Clear;

        if mMovimientosmontoInteres.Value = 0  then
           mMovimientosmontoInteres.Clear;

        if mMovimientossaldoInteres.Value = 0  then
           mMovimientossaldoInteres.Clear;

        if mMovimientosmontoMora.Value = 0  then
           mMovimientosmontoMora.Clear;

        if mMovimientossaldoMora.Value = 0  then
           mMovimientossaldoMora.Clear;

       DataModulo1.movimientosCuenta.next;

     end;


  end;



{  inherited;

  DataModulo1.CuentaSaldos.Close;
  DataModulo1.CuentaSaldos.SQL.Clear;
  DataModulo1.CuentaSaldos.SQL.add('Select  '                    +
          ' Sum (Case When Naturaleza = ' + coma + ('D') + coma  +
                ' then monto Else 0.00 end) Debito, '            +
          ' Sum (Case When Naturaleza = ' + coma + ('C') + coma  +
                ' then monto Else 0.00 end) Credito '            +
          ' from [dbo].[transaccion_det] '                       +
          ' where num_cuenta = ' + coma + DataModulo1.SocioProductosnum_cuenta.AsString + coma +
          ' and   fecha_Doc < '  + coma + DateToStr(desde.Date+1) + coma );

  memo1.text := DataModulo1.CuentaSaldos.SQL.text;
  DataModulo1.CuentaSaldos.Open;
  mMovimientos.Close;
  mMovimientos.Open;
  if not DataModulo1.CuentaSaldos.eof then
  Begin
    Saldo := DataModulo1.CuentaSaldoscredito.AsFloat -
                                 DataModulo1.CuentaSaldosDebito.AsFloat;
    if Saldo <> 0 then
    Begin

      mMovimientos.Append;
      mMovimientosSaldo.AsFloat := DataModulo1.CuentaSaldoscredito.AsFloat -
                                   DataModulo1.CuentaSaldosDebito.AsFloat;
    End;
    CargaMov ;
  End;

      }

end;

procedure TfrmSocios.btnTelNuevoClick(Sender: TObject);
begin
  inherited;
//  DataModulo1.tipotelefono.Close;
//  DataModulo1.tipotelefono.Open;
//
  DataModulo1.socioTelefonos.Append;
  DataModulo1.socioTelefonosidSocio.asInteger := DataModulo1.tblSociossocio.asInteger ;

end;



procedure TfrmSocios.btnDireccionNuevoClick(Sender: TObject);
begin
  inherited;

  DataModulo1.socioDireccion.Append;
  DataModulo1.socioDireccionidSocio.Value   := DataModulo1.tblSociosSocio.Value ;
  DataModulo1.socioDireccionguidSocio.Value := DataModulo1.tblSociosguidSocio.Value ;
  DataModulo1.socioDireccionguidDireccion.AsString   := DataModulo1._guid();

end;

procedure TfrmSocios.btnTelSalvarClick(Sender: TObject);
begin
  inherited;
    Try
      DataModulo1.socioTelefonos.post;
      except
      on E:Exception do
      begin

      end;

    end;

end;

procedure TfrmSocios.btnDireccionSalvarClick(Sender: TObject);
var
_guid : string;
begin
  inherited;
    Try
      _guid :=   DataModulo1.socioDireccionguidDireccion.AsString;
      DataModulo1.socioDireccion.post;
      CargarDirecciones;
      DataModulo1.socioDireccion.Locate('socioDireccionguidDireccion',_guid,[]);
    except
      on E:Exception do
      begin

      end;

    end;
end;


procedure TfrmSocios.btnDireccionAnteriorClick(Sender: TObject);
begin
  inherited;
    DataModulo1.socioDireccion.prior;
end;

procedure TfrmSocios.btnDireccionBorrarClick(Sender: TObject);
begin
  inherited;
    DataModulo1.socioDireccion.delete;
end;

procedure TfrmSocios.btnDireccionSiguienteClick(Sender: TObject);
begin
  inherited;
    DataModulo1.socioDireccion.next;
end;

procedure TfrmSocios.btnEditarFijosClick(Sender: TObject);
begin
  inherited;
  grp_IF.Enabled := true;
  btnUndoFijos.Enabled := true;
  btnNuevoIngresoFijo.Enabled   := false;
  btnEditarFijos.Enabled        := false;
  btnSalvarIngresoFijo.Enabled  := true;
end;

procedure TfrmSocios.btnHerederoNuevoClick(Sender: TObject);
var
  xanio,xmes,xdia : word;
begin
  inherited;
  decodeDate(now , xanio,xmes,xdia);
  DataModulo1.socioHerederos.Append;
  DataModulo1.socioHerederosidSocio.Value := DataModulo1.tblSociossocio.Value ;
  spanio1.Value := YearOf( now ) ;
  dbHerederoNombre.SetFocus ;

end;

procedure TfrmSocios.btnHerederoSalvarClick(Sender: TObject);
begin
  inherited;
  if  Not (DataModulo1.socioHerederos.State IN [dsEdit, dsInsert]) then
     DataModulo1.socioHerederos.edit;

    Try
      DataModulo1.socioHerederosanio.Value :=  spAnio1.Value;
      DataModulo1.socioHerederosmes.Value  :=  spmes1.Value;
      DataModulo1.socioHerederosdia.Value  :=  spdia1.Value;
      DataModulo1.socioHerederos.post;

      except
      on E:Exception do
      begin
        showMessage('Error al salvar el Heredero...');
      end;

    end;

end;

procedure TfrmSocios.btnNuevaNacionalidadClick(Sender: TObject);
begin
  inherited;
  //edNacionalidad.Clear;
  DataModulo1.socioNacionalidades.Append;
 //
end;

procedure TfrmSocios.btnNuevoAsociacionClick(Sender: TObject);
begin
  inherited;
  dbldescripcionAsociacion.SetFocus;
  DataModulo1.socioAsociaciones.Append;
  DataModulo1.socioAsociacionesidSocio.value      := DataModulo1.tblSociosSocio.Value;
  DataModulo1.socioAsociacionesguidSocio.AsString := DataModulo1.tblSociosguidSocio.AsString;
end;

procedure TfrmSocios.btnNuevoComunidadClick(Sender: TObject);
begin
  inherited;
  dblsocioComunidad.SetFocus;
  DataModulo1.socioComunidad.Append;
  DataModulo1.socioComunidadguidSocio.AsString :=
       DataModulo1.tblSociosguidSocio.AsString;
end;

procedure TfrmSocios.btnNuevoIngresoFijoClick(Sender: TObject);
begin
  inherited;

  btnNuevoIngresoFijo.Enabled  := false;
  btnEditarFijos.Enabled       := false;
  btnSalvarIngresoFijo.Enabled := true;
  btnUndoFijos.Enabled := true;
  grp_IF.Enabled := true;
  dbl_IF_Actividad.SetFocus;

  DataModulo1.SocioFuentesIngresosFijos.Append;

end;

procedure TfrmSocios.btnNuevoIngresoVClick(Sender: TObject);
begin
  inherited;
  //grpInfresoV.Enabled := true;
  btn_IV_Nuevo.Enabled     := false;
  btn_IV_Editar.Enabled           := false;
  btn_IV_Salvar.Enabled    := true;
  btn_IV_Undo.Enabled             := true;

  dbl_IV_Actividad.SetFocus;
  DataModulo1.SocioFuentesIngresosVariables.Append;

end;

procedure TfrmSocios.btnNuevoPasatiempoClick(Sender: TObject);
begin
  inherited;
//---
  edsocioPasatiempoDescripcion.SetFocus;
  DataModulo1.socioPasatiempo.Append;
  DataModulo1.socioPasatiempoguidSocio.AsString :=
       DataModulo1.tblSociosguidSocio.AsString;

end;

end.


