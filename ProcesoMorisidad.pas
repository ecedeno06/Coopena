unit ProcesoMorisidad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ventana2, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls, Data.DB, Vcl.Buttons, Vcl.Mask, Vcl.ToolWin, Vcl.Grids,
  Vcl.DBGrids, Vcl.Samples.Spin, Vcl.DBCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmProcesoMorisidad = class(TfrmVentana)
    Panel1: TPanel;
    Panel2: TPanel;
    num_cuenta: TEdit;
    SpeedButton1: TSpeedButton;
    dtsCorte: TDataSource;
    corte: TDateTimePicker;
    saldo: TMaskEdit;
    dbg_lista_Morosos: TDBGrid;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    anio: TSpinEdit;
    mes: TDBLookupComboBox;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    dtsMeses: TDataSource;
    mMes: TFDMemTable;
    mMesmes: TIntegerField;
    mMesmesEsp: TStringField;
    dtsmes1: TDataSource;
    ToolBar2: TToolBar;
    ToolButton6: TToolButton;
    GroupBox1: TGroupBox;
    ToolButton4: TToolButton;
    morosidadHist: TFDMemTable;
    morosidadHistfecha_inicio: TDateTimeField;
    morosidadHistCantidad: TIntegerField;
    morosidadHistMonto: TFloatField;
    dtsMorisidadHist: TDataSource;
    mCuentas: TFDMemTable;
    mCuentas_num_Cuenta: TStringField;
    mCuentas_NombreSocio: TStringField;
    mCuentas_SaldoReal: TFloatField;
    mCuentas_DeberSer: TFloatField;
    mCuentas_Vencimiento: TDateField;
    mCuentas_meses: TIntegerField;
    mCuentas_cargo: TFloatField;
    mCuentas_periocidad: TStringField;
    dtsCuentas: TDataSource;
    mCuentas_periodoGraciaMeses: TIntegerField;
    mCuentas_mora: TFloatField;
    Panel3: TPanel;
    NoProcesadas: TCheckBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    Function ValidaCierre(mes,ano : Integer) : Boolean;
    //------
    Procedure CargarPrestamos;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProcesoMorisidad: TfrmProcesoMorisidad;
 _dia,_mes,_ano : word;

implementation

{$R *.dfm}

uses DM1, Principal, Notify, WORKING;

procedure TfrmProcesoMorisidad.CargarPrestamos;
var

 _reg : integer;
 _fechaCierre : TDateTime;
begin
//---
  mCuentas.Close;
  mCuentas.Open;
  dbg_lista_Morosos.Refresh;
  DataModulo1.morosidadPrestamos.Close;
  DataModulo1.morosidadPrestamos.Open;

  _reg := 0;
  _mes := mMesmes.AsInteger ;
  _ano := StrToInt(anio.text);
  _dia := DataModulo1._ultimoDiaMes(_ano,_mes) ;
  _FechaCierre := EncodeDate(_ano,_mes,_dia ) + EncodeTime(23,59,59,00)  ;
//  _FechaCierre := EncodeDate(y,m,d)+EnCodeTime(hr,mn,ss,ms);
 // _fechaCierre :=


  ShowWorking('Recuperando Registros En Mora...',DataModulo1.morosidadPrestamos.RecordCount);

  if not DataModulo1.morosidadPrestamos.Eof then
  begin
    while not DataModulo1.morosidadPrestamos.Eof do
    begin
      _reg := _reg + 1;
      UpdateWorking(_reg);

      DataModulo1.saldoCuenta.Close;
      DataModulo1.saldoCuenta.Params [0].AsDate :=
        _fechaCierre;
      DataModulo1.saldoCuenta.Params [1].asstring :=
         datamodulo1.morosidadPrestamosnum_cuenta.AsString ;
      DataModulo1.saldoCuenta.Open;
//
//      DecodeDate(DataModulo1.saldoCuentafechaVencimiento.AsDateTime,
//                 _ano,_mes,_dia);

      if DataModulo1.saldoCuentaMeses.AsInteger > 0  then
      begin

        mCuentas.Append;
        mCuentas_num_Cuenta.AsString     := DataModulo1.morosidadPrestamosnum_cuenta.AsString ;
        mCuentas_NombreSocio.AsString    := DataModulo1.morosidadPrestamosnombreCompleto.asstring;
        mCuentas_SaldoReal .asfloat      := DataModulo1.saldoCuentasaldoReal.AsFloat ;
        mCuentas_DeberSer.AsFloat        := DataModulo1.saldoCuentadeberSer.AsFloat ;

        if _ano > 2000 then
          mCuentas_Vencimiento.AsDateTime  := DataModulo1.saldoCuentafechaVencimiento.AsDateTime
        else
          mCuentas_Vencimiento.clear;

        mCuentas_meses.AsInteger         := DataModulo1.saldoCuentaMeses.AsInteger ;
        mCuentas_periodoGraciaMeses.AsInteger :=
           DataModulo1.morosidadPrestamosperiodoGraciaMeses.AsInteger ;
        mCuentas_cargo.AsFloat           := DataModulo1.morosidadPrestamosmora.AsFloat;
        mCuentas_periocidad.AsString     := Datamodulo1.morosidadPrestamosperiodo_planilla.AsString ;

        if mCuentas_meses.AsInteger > 0 then
           mCuentas_mora.AsFloat            :=
              (mCuentas_SaldoReal .asfloat -  mCuentas_DeberSer.AsFloat) * mCuentas_cargo.AsFloat
        else
        begin
         mCuentas_mora.Clear;
         mCuentas_meses.clear;
        end;
      end;

      DataModulo1.morosidadPrestamos.Next;
    end;

    WorkingEnd;

  end;

end;

procedure TfrmProcesoMorisidad.FormShow(Sender: TObject);
var
 dd,mm,yy : Word;
begin
  inherited;
  //---
  DataModulo1.meses.Close;
  DataModulo1.meses.Open;
  decodedate(now,yy,mm,dd);

 mMes.Close;
 mMes.Open;
 mMes.Append;

 mMesmes.Value := mm;

 // DataModulo1.meses.locate('mes',mm,[]);
  anio.Text     := intToStr(yy);
  anio.MinValue := yy ; //- 1;
  anio.MaxValue := yy;

 // CargarPrestamos;


end;

procedure TfrmProcesoMorisidad.SpeedButton1Click(Sender: TObject);
var
 _saldo : double;
 _monto : double;
 _letra : double;
 _inicio: tdatetime;
 _tipoTasa : Int32;
 _plazoMeses   : integer;
 _cuotas       : integer;
begin
  inherited;
  DataModulo1.Generico.Close;
  DataModulo1.Generico.Sql.Clear;
  DataModulo1.Generico.sql.Add('Select * from maes_aux ');
  DataModulo1.Generico.sql.Add('where num_cuenta = ' + quotedstr(num_cuenta.text));
  DataModulo1.Generico.open;

 if not DataModulo1.Generico.eof then
 begin
     DataModulo1.Generico.first;
     _saldo := 0.00;
     _inicio      := DataModulo1.Generico.fieldbyname('Fecha_inicio').AsDateTime ;
     _letra       := DataModulo1.Generico.FieldByName('letra').AsFloat;
     _saldo       := DataModulo1.Generico.FieldByName('monto').AsFloat;
     _tipoTasa    := DataModulo1.Generico.FieldByName('tipo_periodo_tasa').AsInteger;
     _plazoMeses  := DataModulo1.Generico.FieldByName('plazo').AsInteger;

  //     _tasa        := DataModulo1.Generico.FieldByName('tasa').AsFloat;

        //----
     _cuotas := trunc(_plazoMeses / _tipoTasa);
     while not DataModulo1.Generico.eof do
     begin

//       if _inicio > dpFecha.Date then
//        break  ;

       _inicio := IncMonth(_inicio, _tipoTasa);

//
//         mplanPago.Append;
//         mPlanPagonPago.Value        := i;
//         _inicio := IncMonth(_inicio, _tipoTasa);
//         mPlanPagofechaPago.Value    := _inicio;
//         mPlanPagoletra.Value        := _letra;
//         mPlanPagosaldoInicial.Value := _saldo ;
         _Saldo := _saldo - _letra;
//         mPlanPagosaldoFinal.Value   := _saldo;

 //      DataModulo1.Generico.Next;
     end;

     saldo.Text := formatfloat('#,###.##',_saldo);
     //showmessage(formatFloat('#,##0.00',_saldo));
 end;

end;

procedure TfrmProcesoMorisidad.ToolButton3Click(Sender: TObject);
var
 i : integer;

begin
  inherited;
  _mes := mMesmes.AsInteger ;
  _ano := StrToInt(anio.text);
  if  ValidaCierre(_mes,_ano) then
    CargarPrestamos;

end;


function TfrmProcesoMorisidad.ValidaCierre(mes, ano: Integer): Boolean;
begin
  DataModulo1.procesos.Close;
  DataModulo1.procesos.Params [0].Value := 1;
  DataModulo1.procesos.Open;

  if (mMesmes.AsInteger  = DataModulo1.procesosmes.AsInteger) and
     (strtoInt(anio.Text ) =  DataModulo1.procesosano.Value ) then
  begin
     ShowMessage('Proceso de Morosidad YA EJECUTADO...');
     result := false;
  end
  else
     result := true;
end;

end.
















