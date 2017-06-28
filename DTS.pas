unit DTS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ventana2, Vcl.ComCtrls, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls;

type
  Tds = class(TfrmVentana)
    SocioFuentesIngresosFijos: TFDQuery;
    dtsSocioFuentesIngresosFijos: TDataSource;
    frecuenciaPagos: TFDQuery;
    dtsFrecuenciaPagos: TDataSource;
    frecuenciaPagosidFormaPago: TFDAutoIncField;
    frecuenciaPagosdescripcion: TStringField;
    frecuenciaPagosletra: TWideStringField;
    frecuenciaPagosdias: TIntegerField;
    frecuenciaPagosguid: TStringField;
    formasPagos: TFDQuery;
    dtsFormasPagos: TDataSource;
    formasPagosidFormaPago: TFDAutoIncField;
    formasPagosdescripcion: TStringField;
    formasPagosletra: TWideStringField;
    formasPagosguid: TStringField;
    fuentesIngresos: TFDQuery;
    dtsFuentesIngresos: TDataSource;
    fuentesIngresosid: TFDAutoIncField;
    fuentesIngresosdescripcion: TStringField;
    fuentesIngresosfecha_au: TSQLTimeStampField;
    fuentesIngresostipoFlujo: TStringField;
    fuentesIngresosusuario_au: TStringField;
    fuentesIngresosactivo: TBooleanField;
    fuentesIngresosguid: TStringField;
    actividadEconomica: TFDQuery;
    dtsActividadEconomica: TDataSource;
    actividadEconomicaidActividad: TFDAutoIncField;
    actividadEconomicadescripcion: TStringField;
    actividadEconomicaguidSector: TStringField;
    actividadEconomicaidSector: TIntegerField;
    actividadEconomicaguid: TStringField;
    actividadEconomicaesRiesgosa: TBooleanField;
    GroupBox11: TGroupBox;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox5: TGroupBox;
    SocioFuentesIngresosVariables: TFDQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    DateField1: TDateField;
    BooleanField1: TBooleanField;
    StringField5: TStringField;
    IntegerField5: TIntegerField;
    CurrencyField1: TCurrencyField;
    IntegerField6: TIntegerField;
    StringField6: TStringField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    StringField7: TStringField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    StringField8: TStringField;
    dtsSocioFuentesIngresosVariables: TDataSource;
    SocioFuentesIngresosVariablesletraFrecuencia: TWideStringField;
    GroupBox8: TGroupBox;
    sectorEconomico: TFDQuery;
    dtsSectorEconomico: TDataSource;
    sectorEconomicoidSectorEco: TFDAutoIncField;
    sectorEconomicodescripcion: TStringField;
    sectorEconomicoidtarifa: TBCDField;
    sectorEconomicoguid: TStringField;
    cargos: TFDQuery;
    cargosidcargo: TIntegerField;
    cargosnombre: TWideStringField;
    cargosfecha_aud: TSQLTimeStampField;
    cargosesRiesgo: TBooleanField;
    cargosusuario: TWideStringField;
    cargosguid: TStringField;
    dtsCargos: TDataSource;
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
    SocioFuentesIngresosFijos_frecuencia: TStringField;
    SocioFuentesIngresosFijos_formaPago: TStringField;
    SocioTotalIngresosFijos: TFDQuery;
    SocioTotalIngresosFijosDescripcion: TStringField;
    SocioTotalIngresosFijostotal: TCurrencyField;
    dtsSocioTotalIngresosFijos: TDataSource;
    SocioFuentesIngresosFijos_proveedor: TStringField;
    SocioFuentesIngresosFijoshasta: TSQLTimeStampField;
    SocioTotalIngresosFijosTotalVigente: TCurrencyField;
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    function _guid() : String;
    { Public declarations }
  end;

var
  ds: Tds;

implementation

{$R *.dfm}

uses DM1, Socios;

{ Tds }

procedure Tds.FormCreate(Sender: TObject);
begin
  inherited;
  ds.Hide;
end;

function Tds._guid: String;
var
 MyGuid1 : TGUID;
 _guid         : string;
begin
  CreateGUID(MyGUID1);
  GUIDToString(MyGuid1);
  _guid := GUIDToString(MyGuid1);
  result := _guid;
end;

end.
