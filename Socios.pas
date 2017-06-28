
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
  FireDAC.Comp.DataSet, FireDAC.Comp.Client ,SqlTimSt, Vcl.Imaging.pngimage;//,Data.SqlTimSt;

type
  TfrmSocios = class(TfrmVentana)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    ScrollBox1: TScrollBox;
    gbGenerales: TGroupBox;
    lblClienteID: TLabel;
    grpSocioCorreos: TGroupBox;
    Label17: TLabel;
    grpSocioDireccion: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    grpSocioTelefonos: TGroupBox;
    Label15: TLabel;
    dbSocioTelefono: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    TabSheet3: TTabSheet;
    TabSheet8: TTabSheet;
    DBGrid3: TDBGrid;
    GroupBox6: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    spMes: TSpinEdit;
    spAnio: TSpinEdit;
    DBCheckBox11: TDBCheckBox;
    TabSheet6: TTabSheet;
    DBGrid2: TDBGrid;
    Mantenimiento: TGroupBox;
    Label16: TLabel;
    Label18: TLabel;
    sbDesde: TSpeedButton;
    sbHasta: TSpeedButton;
    GroupBox5: TGroupBox;
    TabSheet5: TTabSheet;
    TabSheet4: TTabSheet;
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
    TabSheet2: TTabSheet;
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
    Copiar1: TMenuItem;
    N1: TMenuItem;
    Imprimir1: TMenuItem;
    GroupBox2: TGroupBox;
    Label41: TLabel;
    Label42: TLabel;
    edNombreDoc: TDBEdit;
    DBCheckBox6: TDBCheckBox;
    edFechaRegistro: TDBEdit;
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
    DBGrid5: TDBGrid;
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
    dblFinalidad: TDBLookupComboBox;
    Label52: TLabel;
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
    Image8: TImage;
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
    rbMasculino: TRadioButton;
    rbFemenino: TRadioButton;
    Label12: TLabel;
    Label38: TLabel;
    ndia: TSpinEdit;
    Label39: TLabel;
    nMes: TSpinEdit;
    Label40: TLabel;
    nAno: TSpinEdit;
    Label4: TLabel;
    cmbPaisNacimiento: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    Label37: TLabel;
    Label67: TLabel;
    cmbPaisResidencia: TDBLookupComboBox;
    dblEstadoCivil: TDBLookupComboBox;
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
    dbTipoDireccion: TDBLookupComboBox;
    edDescripcion: TDBMemo;
    Label73: TLabel;
    edCasaApart: TDBEdit;
    DBCheckBox8: TDBCheckBox;
    tbsDependientes: TTabSheet;
    dblTipoResidencia: TDBLookupComboBox;
    Label28: TLabel;
    Label74: TLabel;
    dblHipoteca: TDBLookupComboBox;
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
    dblTipoSocio: TDBLookupComboBox;
    DBCheckBox12: TDBCheckBox;
    edTipoCliente: TDBLookupComboBox;
    ToolButton27: TToolButton;
    btnSocioAprobar: TToolButton;
    dbldescripcionAsociacion: TDBLookupComboBox;
    dtsSocioAsociaciones: TDataSource;
    DBCheckBox10: TDBCheckBox;
    tsPerfiles: TTabSheet;
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
    Button2: TButton;
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
    procedure FormCreate(Sender: TObject);
    procedure btnSocioNuevo1Click(Sender: TObject);
    procedure dblTipoSocioClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    Function CalculaEdadCompleta(Fecha : TDateTime) : string;
    procedure btnSocioSalvar1Click(Sender: TObject);
    procedure dbCompaniaChange(Sender: TObject);
    procedure SociosDataChange(Sender: TObject; Field: TField);
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
    procedure DBLookupComboBox6Click(Sender: TObject);
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
    procedure Copiar1Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
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
    procedure dtsmFiadorDataChange(Sender: TObject; Field: TField);
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
    procedure dtspaises2DataChange(Sender: TObject; Field: TField);
    procedure dtsSocioNacionalidadesUpdateData(Sender: TObject);
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
  private
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
    //----
    Procedure CalcularTotalIngresosFijos;
    Procedure CalcularTotalIngresosVariables;
    Function  Grupos(valor : Boolean) : Boolean;
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

implementation

{$R *.dfm}

uses DM1, Principal, Calendario, DTS;

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

procedure TfrmSocios.btnCorreoNuevoClick(Sender: TObject);
begin
  inherited;
  DataModulo1.SociosCorreos.Append;
  DataModulo1.SociosCorreosIDSocio.value := DataModulo1.tblSociosSocio.Value;
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
// DataModulo1.SocioProductossocio.AsInteger  := DataModulo1.tblSociosidSocio.AsInteger;
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

     Memo2.Text :=     DataModulo1.Generico.Sql.Text;
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

    end;


    DataModulo1.SocioProductossocio.value := DataModulo1.tblSociosSocio.value;

    Try
       DataModulo1.SocioProductos.Post;
    Except
       ShowMessage('Error al Insertar/Actualizar Producto del Cliente...');
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
            DataModulo1.tblSociossocio.value;

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
    DataModulo1.tblSocios.Open ;
  end;


  if cbSocioFiltro.Text = 'Nombre'  then
  begin
    DataModulo1.tblSocios.Close;
    DataModulo1.tblSocios.Sql.clear;
    DataModulo1.tblSocios.Sql.Add('Select * from Socios') ;
    DataModulo1.tblSocios.Sql.Add(' Where Nombre Like ' + QuotedStr('%'+edFiltro.Text+'%'));
    DataModulo1.tblSocios.Open ;
  end;

  if cbSocioFiltro.Text = 'Apellido'  then
  begin
    DataModulo1.tblSocios.Close;
    DataModulo1.tblSocios.Sql.clear;
    DataModulo1.tblSocios.Sql.Add('Select * from Socios') ;
    DataModulo1.tblSocios.Sql.Add(' Where Apellido Like ' + QuotedStr('%'+edFiltro.Text+'%'));
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
end;

procedure TfrmSocios.btnSocioDocSalvarClick(Sender: TObject);
begin
  inherited;
  if  Not (DataModulo1.SocioDoc.State IN [dsEdit,dsInsert]) then
  Begin
    DataModulo1.SocioDoc.edit;
  End;

  Try
   DataModulo1.SocioDoc.post;
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
  grpSocioCorreos.Enabled   := False;
  grpSocioTelefonos.Enabled := false;
  grpSocioDireccion.Enabled := False;
  edTipoCliente.SetFocus;
  DataModulo1.tblSocios.Append;
  DataModulo1.tblSociosidNacionalidad.Value    := 'PAN';
  DataModulo1.tblSociosfechaRegistro.AsDateTime   := now;
  DataModulo1.tblSociosfechaActivacion.AsDateTime := now;
  rbMasculino.Checked := false;
  rbFemenino.Checked  := false;

  //----- Deshabilita los otros grups
  grpNacionalidades.Enabled   := false;
  grpPasatiempos.Enabled      := false;
  grpSocioCorreos.Enabled     := false;
  grpSocioDireccion.Enabled   := false;
  grpSocioTelefonos.Enabled   := false;
  grpAsociaciones.Enabled     := false;
  grpDatosPersonales.Enabled  := false;
end;

procedure TfrmSocios.btnSocioSalvar1Click(Sender: TObject);
var
 sSQL : String;
 sSec : Integer;
 nombreCompleto,_guid : string;
 _idsocio : integer;

begin
  inherited;


  if (DataModulo1.tblSocios.State IN [dsInsert]) then
  begin
    DataModulo1.tblSocios.edit;
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

      DataModulo1.tblSociosidsocio.Value        := sSec;
    End;
    DataModulo1.tblSociosguidSocio.asstring := DataModulo1._guid ();
  end;

  if  Not (DataModulo1.tblSocios.State IN [dsEdit,dsInsert]) then
  Begin
   DataModulo1.tblSocios.edit;
 //  DataModulo1.tblSociosfechaExpiracionDocumento.AsDateTime := dpExpira.DateTime;
  End;

  Try
   FechaNacimiento (now,'W');

   try

      DataModulo1.Generico.Close;
      DataModulo1.Generico.SQL.Clear;
      DataModulo1.Generico.SQL.Add('Update SocioSecuencial set ValorActual = ' + IntToStr(sSec)) ;
      DataModulo1.Generico.SQL.Add(' Where id = ' + DataModulo1.SocioSecuencialid.AsString);
      DataModulo1.Generico.ExecSQL;

   except on E:Exception do

     begin

     end;

   end;

   //--- Documento Passaporte/RUC
   if DataModulo1.tblSociosidTipoDoc.AsString = 'CE' then
   begin
      DataModulo1.tblSociospasaporteRuc.AsString :=
          DataModulo1.tblSociosced1.AsString + '-' +
          DataModulo1.tblSociosced2.AsString + '-' +
          DataModulo1.tblSociosced3.AsString ;
   end;

   //--- Nombre Completo
   nombreCompleto:='';

   if not (VarIsNull(DataModulo1.tblSociosnombre.AsString )) and
          (trim(DataModulo1.tblSociosnombre.AsString)<>'') then
     nombreCompleto := nombreCompleto + ' ' + DataModulo1.tblSociosnombre.AsString;

   if not (VarIsNull(DataModulo1.tblSociossegundoNombre.AsString )) and
          (trim(DataModulo1.tblSociossegundoNombre.AsString) <> '') then
     nombreCompleto := nombreCompleto + ' ' + DataModulo1.tblSociossegundoNombre.AsString;

   if not (VarIsNull(DataModulo1.tblSociosapellido.AsString ))  and
          (trim(DataModulo1.tblSociosapellido.AsString) <> '') then
     nombreCompleto := nombreCompleto + ' ' + DataModulo1.tblSociosapellido.AsString;

   if not (VarIsNull(DataModulo1.tblSociossegundoApellido.AsString )) and
          (trim(DataModulo1.tblSociossegundoApellido.AsString) <> '') then
      nombreCompleto := nombreCompleto + ' ' + DataModulo1.tblSociossegundoApellido.AsString;

   if not (VarIsNull(DataModulo1.tblSociosapellidoCasada.AsString ))  and
          (trim(DataModulo1.tblSociosapellidoCasada.AsString) <> '') then
     nombreCompleto := nombreCompleto + ' de ' + DataModulo1.tblSociosapellidoCasada.AsString;

   nombreCompleto := trim(nombreCompleto);

   DataModulo1.tblSociosnombreCompleto.AsString := nombreCompleto;
   //--- Se asigna la Compania
   //--- en Este caso 1, Pero esto debe ser capturado en el Login,

   DataModulo1.tblSociosidCia.Value := 1;


   if  DataModulo1.tblSociosguidSocio.asstring = '' then
       DataModulo1.tblSociosguidSocio.asstring := DataModulo1._guid ();

   _guid := DataModulo1.tblSociosguidSocio.asstring;

   DataModulo1.tblSocios.post;

   // carga
   DataModulo1.tblSocios.Locate('guidSocio',_guid,[]);
   grpSocioCorreos.Enabled   := True;
   grpSocioTelefonos.Enabled := True;
   grpSocioDireccion.Enabled := True;

  except on E:Exception do
    begin

    end;

  end;

  Grupos(true);

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
//  Result := FormatFloat('#,###0',Anio)+' '+mAnio +', '+FormatFloat('#,###0',Mes)+' '+mMes+' y '+FormatFloat('#,###0',Dia)+' '+mDia;
  Result := Format('Años: %.0f, Meses: %.0f, Dias: %.0f', [Anio, Mes, Dia]);
  //Result := FormatFloat('#,###0',Anio)+' '+mAnio ; //+', '+FormatFloat('#,###0',Mes)+' '+mMes+' y '+FormatFloat('#,###0',Dia)+' '+mDia;
  //Result := Format('Años: %.0f, Meses: %.0f, Dias: %.0f', [Anio, Mes, Dia]);



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
  DataModulo1.SocioDireccion.Params[0].Value := DataModulo1.tblSociosSocio.Value ;
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
  DataModulo1.SocioHerederos.Parameters[0].Value := DataModulo1.tblSociossocio.Value ;
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
  DataModulo1.SocioTelefonos.Parameters[0].Value := DataModulo1.tblSociossocio.Value ;
  DataModulo1.SocioTelefonos.Open;
  DataModulo1.SocioTelefonos.First;
  if DataModulo1.SocioTelefonos.RecordCount > 0  then
    grpSocioTelefonos.Caption := 'Telefonos [' + IntToStr(DataModulo1.SocioTelefonos.RecordCount) + ']:'
  Else
    grpSocioTelefonos.Caption := 'Telefonos [0]:';

end;



procedure TfrmSocios.Copiar1Click(Sender: TObject);
begin
  inherited;
  DBImage1.CopyToClipboard;
end;

procedure TfrmSocios.dbcVigenteVClick(Sender: TObject);
begin
  inherited;
  CalcularPeriodoV;
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

procedure TfrmSocios.edPlazoChange(Sender: TObject);
begin
  inherited;
//  DataModulo1.SocioProductos.Edit;
//  DataModulo1.SocioProductosfecha_inicio.AsDateTime := dpFechaInicio.Date  ;
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
//
//  DataModulo1.Producto.Locate('subCuenta',DataModulo1.SocioProductossubcuenta.AsString  ,[]);
//  showMessage(
//  DataModulo1.SocioProductossubcuenta.AsString + '  ' +
//  DataModulo1.Productonombresubcuenta.AsString );
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
  if (DataModulo1.tblSocios.State IN [dsInsert]) then
  begin
    DataModulo1.tblSocios.Cancel;
    abort  ;
  end;

  //--- Deshabilita secciones de captura
  grp_IF.Enabled  := false;
  grp_IV.Enabled  := False;

  //--- Deshabilita Botones de Salvar y deshacer
  btnSalvarIngresoFijo.Enabled := false;
  btn_IV_Salvar.Enabled        := false;
  btn_IV_Undo.Enabled          := False;

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

procedure TfrmSocios.dbl_DirIF_PaisClick(Sender: TObject);
begin
  inherited;
  DataModulo1.direccionIF_Prov.Close;
  DataModulo1.direccionIF_Prov.Params[0].AsString :=
      DataModulo1.direccionIngresoFidPais.AsString;
  DataModulo1.direccionIF_Prov.Open;
end;

procedure TfrmSocios.DBLookupComboBox6Click(Sender: TObject);
begin
  inherited;
  DataModulo1.estatus.Close;
  DataModulo1.estatus.open;
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
    rbMasculino.Checked := False;
    rbFemenino.Checked := False;
    rbMasculino.enabled := False;
    rbFemenino.enabled := False;
    DataModulo1.tblSocios.Edit;
    DataModulo1.tblSociossexo.Value := '';
  end
  Else
  begin
    rbMasculino.enabled := true;
    rbFemenino.enabled  := true;
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

  if not DataModulo1.Distritos2.eof then
  begin
    //--- recupera los Corregimientos del distrito
    DataModulo1.corregimientoSocio.Close;
    DataModulo1.corregimientoSocio.params[0].AsString :=
            DataModulo1.Distritos2guidDistrito.AsString;
    DataModulo1.corregimientoSocio.Open;

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



end;

procedure TfrmSocios.dtsCuentaFiadorDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  mFiador.Close;
  mFiador.Open;
  mfiador.Append;
  mFiadorcuenta.AsString := DataModulo1.SocioProductosnum_cuenta.AsString;
  mFiadorcedula.AsString := DataModulo1.CuentaFiadoresCed1.AsString +
                            DataModulo1.CuentaFiadoresCed2.AsString +
                            DataModulo1.CuentaFiadoresCed3.AsString ;
end;

procedure TfrmSocios.dtsmFiadorDataChange(Sender: TObject; Field: TField);
begin
  inherited;
//  DataModulo1.CuentaFiadores.Edit ;
//  DataModulo1.CuentaFiadoresssced.AsString :=
//       DataModulo1.Fiadoresced1.AsString +
//       DataModulo1.Fiadoresced2.AsString +
//       DataModulo1.Fiadoresced3.AsString ;
end;

procedure TfrmSocios.dtspaises2DataChange(Sender: TObject; Field: TField);
begin
  inherited;
//  DataModulo1.socioNacionalidadesnacionalidad.AsString :=
//     DataModulo1.paises2nacionalidad.AsString;
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

procedure TfrmSocios.dtsSocioNacionalidadesUpdateData(Sender: TObject);
begin
  inherited;
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
    DataModulo1.tblSocios.edit;

   dFechaNacimiento := EncodeDate (nano.Value,nmes.Value ,ndia.Value );

   CalculaEdadCompleta(dFechaNacimiento);

   DataModulo1.tblSociosfecha_nacimiento.AsDateTime  := dFechaNacimiento;

   DataModulo1.tblSociosnDia.Value  := ndia.Value ;
   DataModulo1.tblSociosnMes.Value  := nmes.Value ;
   DataModulo1.tblSociosnAno.Value  := nAno.Value ;

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

procedure TfrmSocios.FormCreate(Sender: TObject);
begin
  inherited;
  DataModulo1.Paises2.Open ;
  DataModulo1.tblSocios.Open;
  DataModulo1.tblSocios.first;

  DataModulo1.cargos.Open;
  DataModulo1.Estatus.Open;
  DataModulo1.profesiones.Open;
  DataModulo1.SociosCorreos.Open;
  DataModulo1.socioTelefonos.Open;
  DataModulo1.socioDireccion.Open;
  DataModulo1.Parentezco.Open;
  DataModulo1.socioHerederos.Open;
  DataModulo1.TipoTelefono.Open;
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
//


end;

procedure TfrmSocios.FormShow(Sender: TObject);
begin
  inherited;
  xh := DBImage1.Height;
  xw := DBImage1.Width ;
  desde.Date := strToDate('01/01/2000');
  hasta.Date := now;

  grpSocioCorreos.Enabled   := True;
  grpSocioTelefonos.Enabled := True;
  grpSocioDireccion.Enabled := True;

  //----- Abre la tabla de tipo de planilla
  DataModulo1.tipoPlanilla.Close;
  DataModulo1.tipoPlanilla.Open;
  //----- Abre la tabla de Periocidad
  DataModulo1.periocidad.Close;
  DataModulo1.periocidad.Open;

  DataModulo1.estatusProducto.close;
  DataModulo1.estatusProducto.Open;

end;

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
  FechaNacimiento(now , 'N')
end;

procedure TfrmSocios.ndiaChange(Sender: TObject);
begin
  inherited;
  (FechaNacimiento(now , 'N') );
end;

procedure TfrmSocios.nMesChange(Sender: TObject);
begin
  inherited;
 (FechaNacimiento(now , 'N') );
end;

procedure TfrmSocios.PageControl1Change(Sender: TObject);
begin
  inherited;
  if PageControl1.ActivePageIndex = 5 then
  begin
    CargaMov;
  end;

end;


//------------------------------------------------------------------------------
//        Seleccina el Page de cuentas
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

procedure TfrmSocios.PaisesDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  DataModulo1.Provincias.Close;
end;

procedure TfrmSocios.rbFemeninoClick(Sender: TObject);
begin
  inherited;
  DataModulo1.tblSocios.edit;
  if rbFemenino.Checked  then
      DataModulo1.tblSociossexo.Value := 'F';
end;

procedure TfrmSocios.rbMasculinoClick(Sender: TObject);
begin
  inherited;
  DataModulo1.tblSocios.edit;
  if rbMasculino.Checked  then
      DataModulo1.tblSociossexo.Value := 'M';

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
    CargarIngresosVariables;
    CargarDireccionIF;  // carga las direccion del Ingreso Fijo (IF)
    CargarEgresosFI;
    //---
    CargarDireccionV;
    CargarEgresosVA;



    //---- calculo de la edad del socio.
    FechaNacimiento(DataModulo1.tblSociosfecha_nacimiento.AsDateTime, 'R' );
    lbedad.caption := CalculaEdadCompleta(DataModulo1.tblSociosfecha_nacimiento.AsDateTime);
    dpExpira.Date  := DataModulo1.tblSociosfechaExpiracionDocumento.AsDateTime ;

    if DataModulo1.tblSociosidTipoPersona.AsString = 'PN' then
    begin
      rbMasculino.Enabled :=true;
      rbFemenino.Enabled  :=true;

      if DataModulo1.tblSociossexo.AsString = 'M'  then
        rbMasculino.Checked := True
      Else
        if DataModulo1.tblSociossexo.AsString = 'F'  then
           rbFemenino.Checked := True
        Else
        begin
           rbMasculino.Checked := False;
           rbFemenino.Checked  := False;
        end;

    end
    Else //... No es Persona Natural
    begin
       rbMasculino.Checked := False; rbMasculino.Enabled:=False;
       rbFemenino.Checked  := False; rbFemenino.Enabled:=False;
    end;

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


procedure TfrmSocios.SociosDataChange(Sender: TObject; Field: TField);
begin
  inherited;

   _carga;

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
  DBImage1.Top    := 1;
  DBImage1.Left   := 1;
  ScrollBox2.VertScrollBar.Visible := true;
  ScrollBox2.HorzScrollBar.Visible := true;
  DBImage1.Height := xH + tb1.Position ;
  DBImage1.Width  := xW + tb1.Position ;
end;

procedure TfrmSocios.ToolButton11Click(Sender: TObject);
  var
    FileName : String;
begin
  inherited;
//---

  if OpenPictureDialog1.Execute  then
   begin
    DataModulo1.SocioDoc.Append;
    DataModulo1.SocioDocSocio.Value              := DataModulo1.tblSociossocio.Value;
    DataModulo1.SocioDocfechaRegistro.AsDateTime := now;
    DBImage1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    DBImage1.Refresh;
  End
  else ShowMessage('Open file was cancelled');


end;

procedure TfrmSocios.ToolButton12Click(Sender: TObject);
begin
  inherited;
  if (DataModulo1.tblSocios.State IN [dsInsert]) then
      DataModulo1.tblSocios.Cancel;
  abort
end;

procedure TfrmSocios.ToolButton16Click(Sender: TObject);
var
 I :  Integer;
begin
  inherited;

end;

procedure TfrmSocios.ToolButton19Click(Sender: TObject);
begin
  inherited;
//  Twain.SelectedSourceIndex := LBSources.ItemIndex;
//
//  if Assigned(Twain.SelectedSource) then begin
//    //Load source, select transference method and enable (display interface)}
//    Twain.SelectedSource.Loaded := True;
//    Twain.SelectedSource.ShowUI := False;
//    Twain.SelectedSource.Enabled := True;
//  end;
end;

procedure TfrmSocios.ToolButton21Click(Sender: TObject);
begin
  inherited;
    DataModulo1.SocioDoc.Prior;
end;

procedure TfrmSocios.ToolButton22Click(Sender: TObject);
begin
  inherited;
    DataModulo1.SocioDoc.Next;
end;

procedure TfrmSocios.ToolButton23Click(Sender: TObject);
begin
  inherited;
  abmFiador := 'A';
  edFiador.Enabled:=true;
  edFiador.SetFocus;
//  DataModulo1.CuentaFiadores.Append;
//  DataModulo1.CuentaFiadoresNum_Cuenta.AsString :=
//          DataModulo1.SocioProductosnum_cuenta.AsString
////  DataModulo1.mFiadores.Append;
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
    DataModulo1.Generico.SQL.Add(  ',' + coma + DateTostr(now) + coma);
    DataModulo1.Generico.SQL.Add(  ',' + coma + usuario + coma + ')');
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
    DataModulo1.Generico.SQL.Add(' and ced1 = ' + coma + DataModulo1.mFiadoresced1.AsString + coma );
    DataModulo1.Generico.SQL.Add(' and ced2 = ' + DataModulo1.mFiadoresced2.AsString );
    DataModulo1.Generico.SQL.Add(' and ced3 = ' + DataModulo1.mFiadoresced3.AsString );
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

procedure TfrmSocios.btn_AnteriorEFClick(Sender: TObject);
begin
  inherited;
   DataModulo1.actividadEgresosF.Prior;
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
  DataModulo1.socioTelefonos.Append;
  DataModulo1.socioTelefonosidSocio.Value := DataModulo1.tblSociossocio.Value ;
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


