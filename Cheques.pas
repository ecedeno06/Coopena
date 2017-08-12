unit Cheques;

interface
{$Region '********** Uses ****************************************************************'}
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ventana2, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.StdCtrls, Data.DB, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,math,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, Vcl.ExtCtrls, Vcl.Buttons,
  system.DateUtils,ClipBrd, frxPreview, frxDBSet, frxExportPDF;
{$EndRegion Fin USES}
type
  TfrmCheques = class(TfrmVentana)
    dts_ChequesCuenta: TDataSource;
    dts_cheque_enc: TDataSource;
    mTransaccion: TFDMemTable;
    mTransaccionFECHA: TDateTimeField;
    mTransaccionTipoDoc: TStringField;
    mTransaccionDocumento: TIntegerField;
    mTransaccionNum_Cuenta: TStringField;
    mTransaccionCuenta: TStringField;
    mTransaccionNaturaleza: TStringField;
    mTransaccionMonto: TFloatField;
    mTransaccionFecha_Aud: TDateTimeField;
    mTransaccionUsuario: TStringField;
    mTransaccionSaldo: TFloatField;
    mTransaccionEfectivo: TFloatField;
    mTransaccionCheque: TFloatField;
    mTransaccionNumCheque: TIntegerField;
    mTransaccionBanco: TIntegerField;
    mTransaccionBanco2: TStringField;
    mTransaccionsubCuenta: TIntegerField;
    mTransaccionSaldoT: TFloatField;
    mTransaccionimputable: TBooleanField;
    mTransaccionOrden: TStringField;
    mTransacciondeposito: TFloatField;
    mTransaccionSaldoO: TFloatField;
    mTransaccionPrestamo_SN: TStringField;
    mTransaccionnombreCuenta: TStringField;
    mTransaccioncampo: TStringField;
    mTransaccionCuentaContable: TStringField;
    mTransaccionguid: TStringField;
    mTransaccionnombreCuentafull: TStringField;
    mTransacciontipoCuenta: TStringField;
    dtstransaccion: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    PageControl1: TPageControl;
    ts_Cheque_Confeccion: TTabSheet;
    tb_Chk_Enc: TToolBar;
    btn_chk_Nuevo: TToolButton;
    ToolButton10: TToolButton;
    btn_chk_Salvar: TToolButton;
    btn_chk_Undo_Enca: TToolButton;
    grp_chk_Detalle: TGroupBox;
    tb_chk_det: TToolBar;
    btn_chk_det_InsertarCuenta: TToolButton;
    ToolButton4: TToolButton;
    btn_chk_det_borrar: TToolButton;
    ToolButton2: TToolButton;
    btn_chk_det_socio: TToolButton;
    DBGrid1: TDBGrid;
    grp_chk_enc: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dbl_chk_Beneficiario: TDBLookupComboBox;
    dbl_chk_cuenta: TDBLookupComboBox;
    ed_chk_Monto: TDBEdit;
    GroupBox3: TGroupBox;
    DBMemo1: TDBMemo;
    ed_chk_pagare: TDBEdit;
    DBEdit3: TDBEdit;
    ed_chk_fecha: TDBEdit;
    ts_Cheque_Impresion: TTabSheet;
    grp_chk_generados: TGroupBox;
    tb_chk_listaCheques: TToolBar;
    btn_chk_lista_buscar: TToolButton;
    ToolButton7: TToolButton;
    btn_chk_lista_undo: TToolButton;
    dbg_chk_generados: TDBGrid;
    m_Chk_Generados: TFDMemTable;
    dts_Chk_Generados: TDataSource;
    m_Chk_Generados_documento: TIntegerField;
    m_Chk_Generados_fecha: TDateTimeField;
    m_Chk_Generados_monto: TFloatField;
    m_Chk_Generados_beneficiario: TStringField;
    m_Chk_Generados_aNombreDe: TIntegerField;
    m_Chk_Generados_guidBenef: TStringField;
    dp_desde: TDateTimePicker;
    dp_hasta: TDateTimePicker;
    Label7: TLabel;
    Label8: TLabel;
    m_Chk_Generados_sel: TBooleanField;
    bmpOFF: TImage;
    bmpON: TImage;
    m_Chk_Generados_nombreCompleto: TStringField;
    ed_chk_benef: TButtonedEdit;
    Label9: TLabel;
    ToolButton6: TToolButton;
    m_Chk_Generados_impreso: TIntegerField;
    Label10: TLabel;
    ed_chk_diferencia: TEdit;
    mTransaccionmontoInteres: TFloatField;
    btn_chk_imprimir: TToolButton;
    dts_cheque_ListaBeneficiario: TDataSource;
    pnl_chk_beneficiarios: TPanel;
    ed_chk_beneficiario: TEdit;
    lv_beneficiarios: TListView;
    mTransaccionCuentaOrden: TStringField;
    mTransaccionguiPadre: TStringField;
    frxReport2: TfrxReport;
    frxEncabezado: TfrxDBDataset;
    frxDetalle: TfrxDBDataset;
    mChequeImpresion: TFDMemTable;
    mChequeImpresion_dcuenta: TStringField;
    mChequeImpresion_dNombre: TStringField;
    mChequeImpresion_cCuenta: TStringField;
    mChequeImpresion_cNombre: TStringField;
    mChequeImpresion_documento: TIntegerField;
    mChequeImpresion_tipo: TStringField;
    mChequeImpresion_dMonto: TFloatField;
    mChequeImpresion_cmonto: TFloatField;
    DBGrid2: TDBGrid;
    dts_mchequeImpresion: TDataSource;
    ToolBar1: TToolBar;
    ToolButton9: TToolButton;
    dtsChequeEnc: TDataSource;
    ToolButton1: TToolButton;
    frxPDFExport1: TfrxPDFExport;
    btn_chk_asiento: TToolButton;
    ToolButton5: TToolButton;
    ToolButton3: TToolButton;
    btn_chk_anular: TToolButton;
    lbl_anulado: TLabel;
    frxComprobante: TfrxReport;
    frxComprobante_ENC: TfrxDBDataset;
    frxComprobante_DET: TfrxDBDataset;
    dts_Comprobante_ENC: TDataSource;
    dts_Comprobante_DET: TDataSource;
    procedure btn_chk_NuevoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ed_chk_MontoKeyPress(Sender: TObject; var Key: Char);
    procedure btn_chk_SalvarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dbl_chk_cuentaClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
//    Procedure CargarChequesNoImpresos;
    procedure dbg_chk_generadosCellClick(Column: TColumn);
    procedure dbg_chk_generadosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btn_chk_lista_buscarClick(Sender: TObject);
    procedure ed_chk_benefRightButtonClick(Sender: TObject);

    //---
    procedure CargarCheques;
    Procedure CargarCheque;
    Procedure CargarDetalle;
    procedure btn_chk_det_InsertarCuentaClick(Sender: TObject);
    procedure ed_chk_MontoClick(Sender: TObject);
    procedure ed_chk_MontoExit(Sender: TObject);
    Procedure ValidarMontos;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure ed_chk_MontoEnter(Sender: TObject);
    procedure btn_chk_det_borrarClick(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure btn_chk_det_socioClick(Sender: TObject);
    procedure btn_chk_det_socioDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure btn_chk_Undo_EncaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnl_chk_beneficiariosExit(Sender: TObject);
    procedure dbl_chk_BeneficiarioEnter(Sender: TObject);
    procedure dbl_chk_BeneficiarioExit(Sender: TObject);
    procedure ed_chk_beneficiarioChange(Sender: TObject);
    procedure lv_beneficiariosClick(Sender: TObject);
    procedure pnl_chk_beneficiariosMouseLeave(Sender: TObject);
    procedure tb_Chk_EncMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure tb_chk_detMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lv_beneficiariosColumnClick(Sender: TObject; Column: TListColumn);
    procedure lv_beneficiariosCompare(Sender: TObject; Item1, Item2: TListItem;
      Data: Integer; var Compare: Integer);
    procedure btn_chk_imprimirClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure frxTIFFExport1BeginExport(Sender: TObject);
    procedure btn_chk_anularClick(Sender: TObject);
    procedure dtsChequeEncDataChange(Sender: TObject; Field: TField);
    procedure btn_chk_asientoClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
    procedure _ArrastrarCuenta;
    Function SalvarCheque():Boolean ;
    procedure CargarBeneficiarios;
    procedure AplicaDeposito;
    function AplicaDepositoDetalle (_numCuenta: String; _deposito: Double; _orden : String): Double;
//    Function CalculaSaldoActual(NumCuenta: String; cuenta: String) : double;
//    Function CalculaMora(Cuenta: String; calculaMora: Boolean) : double ;
    Function CalculaInteres(NumCuenta: String; cuentaInteres: String; CuentaCapital: String; interesSobre: String ) : double ;
    Function InsertarDetalle(_monto : double ) :  boolean;
    Function _incluirRegistro(iCuenta : string; iProducto : String ; iDC : String) : Boolean;

  end;

//--- Variables Globales
var
  frmCheques: TfrmCheques;
  _documento,_cheque,  _Numrec  : integer;
   ntecla : word;
  _Origen,_Destino : String;
  _accept : boolean;
  montoInteres, montoMora : Double ;
  _a,_m,_d,_h1,_m1,_s1,_m2 : word;
  _fechaTrx : TdateTime;
  _Monto : double;
  _Naturaleza : string;
  _guidTrx   : String;
  ColumnToSort : Integer;
  _Banco      : string;
  _chequeraNo : String; // Numero de cuenta Bancaria
  _beneficiarionombre : string;
  _desde,_hasta : TDateTime;
implementation

{$R *.dfm}

uses DM1, cuentas, SocioCuentas, CatalogoContable;

function GetCharFromVirtualKey(Key: Word): string;
var
  keyboardState: TKeyboardState;
  asciiResult: Integer;
begin
  GetKeyboardState(keyboardState) ;

  SetLength(Result, 2) ;
  asciiResult := ToAscii(key, MapVirtualKey(key, 0), keyboardState, @Result[1], 0) ;
  case asciiResult of
   0: Result := '';
   1: SetLength(Result, 1) ;
   2:;
  else
   Result := '';
  end;
end;



procedure TfrmCheques.btn_chk_Undo_EncaClick(Sender: TObject);
begin
  inherited;
  mTransaccion.Close;
  mTransaccion.Open;
  DataModulo1.cheque_enc.Close;
  DataModulo1.cheque_enc.Open;

  btn_chk_Nuevo.Enabled   := True;
  btn_chk_Salvar.Enabled  := false;
  grp_chk_enc.Enabled     := false;

  grp_chk_Detalle.Enabled := true;
end;

{$region '************ Calcula Interes **************'}
function TfrmCheques.CalculaInteres(NumCuenta, cuentaInteres, CuentaCapital,
  interesSobre: String): double;
var
 _tasa      : Double;
 _intereses : Double;
 _mora      : Double;
 _saldo     : Double;  // Saldo del Prestamo a la ultima fecha de pago
 _fechaPago : TDateTime;
 _dias      : Int16;
 _Producto  : string;
 _d,_m,_y   : word;

begin
 // Buscar el Interes en el  SPC
  _tasa     := DataModulo1.socioCuentas.FieldByName('tasa').AsFloat;
 //  _Producto := DataModulo1.SPC.FieldByName('subCuenta').AsString;
 // debe ubicar el ultimo pago realizado, esto verificando cuenta en el transaccional y
 // que el numero de cuenta sea igual a numCuenta (Cuenta Principal)

 DataModulo1.Generico.Close;
 DataModulo1.Generico.SQL.Clear;
 DataModulo1.Generico.SQL.Add('select ');
 DataModulo1.Generico.SQL.Add('FechaPago   = (Select max(d.fecha_doc) from transaccion_det d  ');
 DataModulo1.Generico.SQL.Add(' inner Join transaccion_enc e on d.documento = e.documento and d.tipo_documento = e.tipo_documento ');
 DataModulo1.Generico.SQL.Add('         where e.anulado = 0 and d.fecha_doc = e.fecha_doc and num_cuenta = ' + QuotedStr(numCuenta) ) ;
 DataModulo1.Generico.SQL.Add('         and cuenta = ' + QuotedStr(cuentaInteres) + '),');
 DataModulo1.Generico.SQL.Add(' FechaInicio = (Select min(d.fecha_doc) from transaccion_det d ');
 DataModulo1.Generico.SQL.Add(' inner Join transaccion_enc e on d.documento = e.documento and d.tipo_documento = e.tipo_documento ');
 DataModulo1.Generico.SQL.Add(' where e.anulado = 0 and d.fecha_doc = e.fecha_doc and num_cuenta = ' + QuotedStr(numCuenta) + ')');
 Clipboard.AsText :=  DataModulo1.Generico.SQL.Text ;
 DataModulo1.Generico.Open;

 _intereses := 0.00;
 //*----------------------------------------------------------------------------
 // Calcula el saldo a la fecha del ultimo pago
 // y Calcula el Interes
 if not DataModulo1.Generico.eof  then
 Begin

    if YearOf(DataModulo1.Generico.FieldByName('FechaPago').AsDateTime) <= 2000 then
      _fechaPago := DataModulo1.Generico.FieldByName('FechaInicio').AsDateTime
    else
      _fechaPago := DataModulo1.Generico.FieldByName('FechaPago').AsDateTime;


    _fechasistema := DataModulo1.FechaSistema ();
    decodedate(_fechaPago , _y,_m,_d);
    _fechaPago := encodedate(_y, _m,  _d);
    decodedate(_fechasistema , _y,_m,_d);
    _fechasistema := encodedate( _y, _m, _d);

    _dias := trunc( _FechaSistema - _fechaPago) ; //
    //---------------------------------------------------------------------------
    //  LLamado a funcion de dias360
    _dias := DataModulo1.Dias360(_fechaPago,_FechaSistema);
    _fechaPago := EncodeDateTime(_y,_m,_d,23,59,59,0);

   //---------------------------------------------------------------------------
   //  Calculo del saldo a la ultima fecha de pago
   DataModulo1.Generico.Close;
   DataModulo1.Generico.SQL.Clear;
   DataModulo1.Generico.SQL.Add('Select ' + quotedstr('SaldoCapital') +' as Campo');
   //------- Saldo de Capital --------------------------------------------------

   DataModulo1.Generico.SQL.Add(',(Sum(Case naturaleza When ' + quotedStr('D') + ' Then monto Else 0 End) - '        ) ;
   DataModulo1.Generico.SQL.Add('  Sum(Case naturaleza When ' + quotedStr('C') + ' Then monto Else 0 End)) as Saldo ' );

   DataModulo1.Generico.SQL.Add('From Transaccion_det D');
   DataModulo1.Generico.SQL.Add('     Left Join transaccion_enc E on D.documento = E.documento ');
   DataModulo1.Generico.SQL.Add('     and D.tipo_documento = E.tipo_documento');
   DataModulo1.Generico.SQL.Add('where num_cuenta = '  + quotedstr(numCuenta));
   DataModulo1.Generico.SQL.Add(' and  cuenta     = '  + QuotedStr(cuentaCapital));
   DataModulo1.Generico.SQL.Add(' and D.fecha_doc <= ' + quotedStr(FormatdateTime('yyyy-mm-dd hh:mm:ss',_fechaPago)));
   DataModulo1.Generico.SQL.Add(' and e.anulado   = 0');
   DataModulo1.Generico.SQL.Add(' and e.fecha_doc = d.fecha_doc');
   //---------------------------------------------------------------------------

   DataModulo1.Generico.Open;

   if not DataModulo1.Generico.eof  then
   begin
     _saldo := DataModulo1.Generico.FieldByName('Saldo').AsFloat;
   end;

   //--------------------------------------------------------------------------
   // calculo del interes
   if _saldo > 0  then
     _intereses := RoundTo((_saldo * ((_tasa / 360 ) / 100) * _dias ),-2);

 End; //--- Fin
 result := _intereses;
end;
{$Endregion}

{$Region '********** Cargar Beneficiarios en el LisView **********************************'}
procedure TfrmCheques.CargarBeneficiarios;
var
  _item : TListItem;
begin
 if ed_chk_beneficiario.Text <> ''  then
 begin

   lv_beneficiarios.Clear;
   DataModulo1.beneficiarios.Close;
   DataModulo1.beneficiarios.PArams[0].AsString := ed_chk_beneficiario.Text ;
   DataModulo1.beneficiarios.open;

   if not DataModulo1.beneficiarios.eof then
   begin
     DataModulo1.beneficiarios.first;
     While not DataModulo1.beneficiarios.eof do
     Begin

       _item := lv_beneficiarios.Items.Add;
       _item.Caption  := (DataModulo1.beneficiariosidSocio.AsString);
       _item.SubItems.Add(DataModulo1.beneficiariosNombreCompleto.AsString);

       DataModulo1.beneficiarios.next;

     End;
   end;
 end;
end;
{$EndRegion}

procedure TfrmCheques.CargarCheque;
begin
//---
  DataModulo1.cheque_enc.Close;
  DataModulo1.cheque_enc.sql.Clear;
  DataModulo1.cheque_enc.sql.Add('Select * From transaccion_enc ');
  DataModulo1.cheque_enc.sql.Add('Where Tipo_documento = ' + coma + 'CHQ' + coma ) ;
  DataModulo1.cheque_enc.sql.Add(' and Documento = ' + m_Chk_Generados_documento.AsString);
  DataModulo1.cheque_enc.Open;

  btn_chk_Nuevo.Enabled := True;
  grp_chk_enc.Enabled     := false;
  grp_chk_Detalle.Enabled := true;
  if DataModulo1.cheque_encimpreso.AsInteger >= 1 then
  begin
    //--- deshabilita el bonton de nuevo
    btn_chk_Nuevo.Enabled   := false;
  end;

  if DataModulo1.cheque_enc.FieldByName('ANULADO').AsInteger = 1 then
    lbl_Anulado.Visible := true
  else
    lbl_Anulado.Visible := false;

  cargarDetalle;

end;

{$REGION 'Cargar Detalle'}
procedure TfrmCheques.CargarDetalle;
 var
 _subCuenta : integer;
begin
//---
  DataModulo1.cheque_det.Close;
  DataModulo1.cheque_det.sql.Clear;
  DataModulo1.cheque_det.sql.Add('Select T.* ');
  DataModulo1.cheque_det.sql.Add(',(case when (t.num_cuenta) is not null and p.verchk_tran = 1 then 1 else ');
  DataModulo1.cheque_det.sql.Add('(case when (t.num_cuenta) = ' + quotedstr('0') + ' then 1 else 0 end ) end)  as ver ');
  DataModulo1.cheque_det.sql.Add('From transaccion_det T ');
  DataModulo1.cheque_det.sql.Add('inner Join transaccion_enc E on T.documento = E.documento and T.Tipo_documento = E.tipo_documento and T.Fecha_doc = E.fecha_doc');
  DataModulo1.cheque_det.sql.Add('Left Join maes_aux M on T.num_cuenta  = M.num_cuenta');
  DataModulo1.cheque_det.sql.Add('Left join productoTrx P on m.subcuenta = P.idProducto and t.cuenta = p.cuenta');
  DataModulo1.cheque_det.sql.Add('Where T.Tipo_documento = ' + coma + 'CHQ' + coma ) ;
  DataModulo1.cheque_det.sql.Add(' and  T.Documento      = ' + m_Chk_Generados_documento.AsString);
  Clipboard.AsText := DataModulo1.cheque_det.sql.text;
//  ShowMessage('1');
  //Memo1.Text :=   DataModulo1.cheque_det.sql.text;
  DataModulo1.cheque_det.Open;

  if not DataModulo1.cheque_det.eof then
  Begin
    DataModulo1.cheque_det.First;
    mTransaccion.Close;
    mTransaccion.Open;
    while not DataModulo1.cheque_det.eof do
    begin
      //---  Aqui se debe validar si se trata de una cuenta de asociado
      //     de tal forma que se busque la cuenta contable en el trx y
      //     ubique si se debe mostrar o no, si no se debe mostrar, entocees
      //     no hace el append de este registro.
      //---

      if DataModulo1.cheque_det.FieldByName('ver').AsInteger = 1 then
      Begin
          mTransaccion.Append;
          mTransaccionimputable.AsBoolean := false;
          mTransaccionDocumento.AsInteger := DataModulo1.cheque_det.FieldByName('Documento').AsInteger ;
          mTransaccionFECHA.AsDateTime    := DataModulo1.cheque_det.FieldByName('Fecha_doc').AsDateTime ;
          mTransaccionTipoDoc.AsString    := DataModulo1.cheque_det.FieldByName('tipo_Documento').AsString ;
          mTransaccionNum_Cuenta.AsString := DataModulo1.cheque_det.FieldByName('Num_cuenta').AsString;
          mTransaccionCuenta.AsString     := DataModulo1.cheque_det.FieldByName('Cuenta').AsString;
          mTransaccionNaturaleza.AsString := DataModulo1.cheque_det.FieldByName('Naturaleza').AsString ;
          mTransaccionMonto.AsFloat       := DataModulo1.cheque_det.FieldByName('Monto').AsFloat ;
          mTransaccionOrden.AsString      := DataModulo1.cheque_det.FieldByName('Orden').AsString ;
    //      mTransaccionNaturaleza.AsString := DataModulo1.cheque_det.FieldByName('Naturaleza').AsString ;
    //      mTransaccionNaturaleza.AsString := DataModulo1.cheque_det.FieldByName('Naturaleza').AsString ;
    //      mTransaccionNaturaleza.AsString := DataModulo1.cheque_det.FieldByName('Naturaleza').AsString ;
        //---
      end;
      DataModulo1.cheque_det.next
    end;

  End;


end;
{$ENDREGION'}

procedure TfrmCheques.CargarCheques;
begin

 Decodedate(dp_desde.Date,_a,_m,_d);
 _desde := EncodeDateTime(_a,_m,_d,00,00,00,00);

 Decodedate(dp_hasta.Date,_a,_m,_d);
 _hasta := EncodeDateTime(_a,_m,_d,23,59,59,999);


 //----------------
 DataModulo1.chequesgenerados.close;
 DataModulo1.chequesgenerados.Sql.Clear;
 DataModulo1.chequesgenerados.SQL.Add(
   'Select documento,T.aNombreDe,Fecha_Doc,Impreso,Monto_gral as Monto, ' +
   'S.NombreCompleto as Benef1,C.Nombre as Benef2 ' +
   'From Transaccion_enc T ' +
   'Left Join Socios S on T.aNombrede = S.idsocio ' +
   'Left join chq_anombrede C on T.aNombrede = C.aNombrede ' +
   'Where T.fecha_doc >= ' + QuotedStr(formatDateTime('yyyy-mm-dd hh:nn:ss',_desde)) +
   ' and T.fecha_doc <= '  + QuotedStr(formatDateTime('yyyy-mm-dd hh:nn:ss',_hasta)));

 //--- Si coloca beneficiario
 if Length(trim(ed_chk_benef.Text )) > 0 then
 begin
   DataModulo1.chequesGenerados.SQL.Add( ' and (( s.nombrecompleto like '                  + quotedStr('%' + trim(ed_chk_benef.Text ) + '%' ) + ')' );
   DataModulo1.chequesGenerados.SQL.Add( ' or    ( C.nombre        like '                  + quotedStr('%' + trim(ed_chk_benef.Text ) + '%' ) + ')' );
   DataModulo1.chequesGenerados.SQL.Add( ' or    ( Cast(monto_gral as varchar(max)) like ' + quotedstr('%' + trim(ed_chk_benef.Text ) + '%' ) + ')' );
   DataModulo1.chequesGenerados.SQL.Add( ' or    ( Cast(documento as varchar(max))  like ' + quotedstr('%' + trim(ed_chk_benef.Text ) + '%' ) + '))');
 end;

 //Memo1.Text := DataModulo1.chequesgenerados.SQL.Text ;
 //----------------

 DataModulo1.chequesgenerados.Open ;


 m_Chk_Generados.Close;
 m_Chk_Generados.Open;
 dbg_chk_generados.Refresh;

 if not DataModulo1.chequesgenerados.eof  then
 begin
   DataModulo1.chequesgenerados.first;
   while not DataModulo1.chequesgenerados.eof do
   begin
     m_Chk_Generados.Append;
     m_Chk_Generados_sel.AsBoolean := False;
     m_Chk_Generados_documento.AsInteger  := DataModulo1.chequesGeneradosdocumento.AsInteger;
     m_Chk_Generados_fecha.AsDateTime     := DataModulo1.chequesGeneradosfecha_doc.AsDateTime ;
     m_Chk_Generados_aNombreDe.AsInteger  := DataModulo1.chequesGeneradosanombrede.AsInteger;
     m_Chk_Generados_monto.AsFloat        := DataModulo1.chequesGeneradosMonto.asFloat;
     m_Chk_Generados_documento.AsInteger  := DataModulo1.chequesGeneradosdocumento.AsInteger ;
     m_Chk_Generados_impreso.asinteger    := DataModulo1.chequesGeneradosimpreso.asinteger;

     if Length(trim(DataModulo1.chequesGeneradosBenef1.AsString)) > 0 then
     begin
        m_Chk_Generados_beneficiario.AsString := trim(DataModulo1.chequesGeneradosBenef1.AsString);
     end
     else
       if Length(trim(DataModulo1.chequesGeneradosBenef2.AsString)) > 0  then
       begin
         m_Chk_Generados_beneficiario.AsString := trim(DataModulo1.chequesGeneradosBenef2.AsString);
       end;

     DataModulo1.chequesgenerados.next;
   end;
 end;

end;

procedure TfrmCheques.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  DBGrid1.Options := DBGrid1.Options - [dgEditing];

  if (mTransaccionimputable.AsBoolean = true) then
  begin
    if   (DBGrid1.SelectedField.FieldName   = 'Efectivo') or
         (DBGrid1.SelectedField.FieldName   = 'nombreCuentafull') or
         (DBGrid1.SelectedField.FieldName   = 'Naturaleza')  then
    begin
      DBGrid1.Options := DBGrid1.Options + [dgEditing];  // Adds dbEditing option
    end;
  end;
end;

procedure TfrmCheques.DBGrid1ColEnter(Sender: TObject);
begin
  inherited;
 if   (DBGrid1.SelectedField.FieldName   = 'Efectivo') or
      (DBGrid1.SelectedField.FieldName   = 'Naturaleza')  then
      Begin
         DBGrid1.Options := DBGrid1.Options + [dgEditing];
      End
      Else
       DBGrid1.Options := DBGrid1.Options - [dgEditing];

end;

procedure TfrmCheques.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if Column.Field.Dataset.FieldbyName('imputable').AsBoolean then
  begin
     if   (DBGrid1.Columns[DataCol].FieldName = 'Efectivo')
       or (DBGrid1.Columns[DataCol].FieldName = 'Naturaleza') then
         //--- cambia al color verde money
         DBGrid1.Canvas.Brush.color := clMoneyGreen
     else
     begin
     //    DBGrid1.Canvas.Brush.Color := clGray ;
     end;
  End;

  DBGrid1.DefaultDrawColumnCell(rect,DataCol,Column,State);
end;

procedure TfrmCheques.DBGrid1KeyPress(Sender: TObject; var Key: Char);
var
 _index : integer;
begin
  inherited;

  _guidtrx := mTransaccionguid.AsString;
  if (DBGRid1.DataSource.DataSet.FieldByName('Imputable').asBoolean) and
     (not varisnull(mTransaccionNum_Cuenta.AsString)) then
  begin
    //--- Verifica si se esta editando la columand de efectivo
    if (DBGrid1.SelectedField.FieldName   = 'Efectivo') then
    begin
     DBGrid1.Options := DBGrid1.Options + [dgEditing];
      if not (Key in [#8, '0'..'9','.',#13,#9]) then
      begin
        Key := #0;
        DBGrid1.Options := DBGrid1.Options - [dgEditing];
      end;

    end // Fin Efectivo
    Else
    begin
      if (DBGrid1.SelectedField.FieldName  = 'Naturaleza') then
      begin

        Key := UpCase(Key) ;
        if not (Key in [#8, 'D','C',#13,#9]) then
        begin
          Key := #0;
          DBGrid1.Options := DBGrid1.Options - [dgEditing];
        end
        Else
        if key in ['D','C'] then
        begin
          mTransaccion.Edit;
          mTransaccionNaturaleza.AsString := Key;
        end
        Else
             DBGrid1.Options := DBGrid1.Options - [dgEditing];
      End  // Fin Naturaleza
      Else
       key := #0;
    end;

    if (key = #13) or (key = #9) then
    begin
      mTransaccion.Edit;
      mTransaccionMonto.AsFloat := mTransaccionEfectivo.AsFloat;
      if key = #9 then
      begin
//        key := #0;
//        DBGrid1.Options := DBGrid1.Options - [dgEditing];
      end;

      if Key = #13 then                                                 { if it's an enter key }
        if not (ActiveControl is TDBGrid) then
        begin       { if not on a TDBGrid }
           Key := #0;                                                        { eat enter key }
           Perform(WM_NEXTDLGCTL, 0, 0);                 { move to next control }
        end
        else
        if (ActiveControl is TDBGrid) then                { if it is a TDBGrid }
         with TDBGrid(ActiveControl) do
         if selectedindex < (fieldcount -1) then             { increment the field }
           selectedindex := selectedindex +1
         else
           selectedindex := 0;



      ValidarMontos;
      AplicaDeposito;
      DBGrid1.SelectedIndex := 4;  // Columna de Efectivo
      DBGrid1.SelectedField.FocusControl;

    end;

  end;


 //   ValidarMontos;

end;

procedure TfrmCheques.dbg_chk_generadosCellClick(Column: TColumn);
begin
  inherited;
  dbg_chk_generados.Options := dbg_chk_generados.Options - [dgEditing];

  if (dbg_chk_generados.SelectedIndex  = 0 )  then
  begin
   m_Chk_Generados .Edit;

   if m_Chk_Generados_Sel.AsBoolean  then
      m_Chk_Generados_Sel.VAlue  := false
   else
      m_Chk_Generados_Sel.VAlue  := true;

   m_Chk_Generados.Post
  end;

  //--- Cheque Impreso
  if m_Chk_Generados_impreso.AsInteger  = 1 then
  begin
    tb_chk_enc.Enabled := False;
    tb_chk_det.Enabled := False;
    btn_chk_imprimir.Visible := false;
  end
  else
  begin
    tb_chk_enc.Enabled := true;
    tb_chk_det.Enabled := true;
    btn_chk_imprimir.Visible := true;
  end;

  _documento := m_Chk_Generados_documento.AsInteger;
  _fechaTrx  := m_Chk_Generados_fecha.AsDateTime ;
  mTransaccion.Close;
  mTransaccion.Open;
  CargarCheque;

end;

procedure TfrmCheques.dbg_chk_generadosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Bmp: TBitmap;
  L, T: Integer;

begin
  inherited;
 //  Si es la columna donde deseas poner la imagen...
  if DataCol = 0 then
  begin
    // Seleccionas la imagen a usar según el valor del campo
    if m_Chk_Generados.FieldByName('_Sel').asBoolean then
      Bmp := bmpON.Picture.Bitmap
    else
      Bmp := bmpOff.Picture.Bitmap;


    // Calculas las coordenadas para que la imagen quede centrada en la celda
    L := Rect.Left + (Rect.Right - Rect.Left - Bmp.Width) div 2;
    T := Rect.Top  + (Rect.Bottom - Rect.Top - Bmp.Height) div 2;
    dbg_chk_generados.Canvas.StretchDraw(Rect,BMP );
  end
  else
    dbg_chk_generados.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TfrmCheques.dbl_chk_BeneficiarioEnter(Sender: TObject);

begin
  inherited;
  pnl_chk_beneficiarios.left  :=  panel2.Left +  PageControl1.left + ts_Cheque_Confeccion.left  +
    grp_chk_enc.left + dbl_chk_Beneficiario.left;

  pnl_chk_beneficiarios.top  :=  PageControl1.Top + ts_Cheque_Confeccion.top  +
    grp_chk_enc.top + dbl_chk_Beneficiario.top - 3;

  ed_chk_beneficiario.Text       := dbl_chk_Beneficiario.Text;
  pnl_chk_beneficiarios.Visible  := true;
  pnl_chk_beneficiarios.Width    := 280;
  pnl_chk_beneficiarios.Height := 170;

  ed_chk_beneficiario.SetFocus;

end;

procedure TfrmCheques.dbl_chk_BeneficiarioExit(Sender: TObject);
begin
  inherited;
//  pnl_chk_beneficiarios.Visible := false;
end;

procedure TfrmCheques.dbl_chk_cuentaClick(Sender: TObject);
var
 _cuenta,_guid : string;

begin
  inherited;

  _cuenta := DataModulo1.CuentasChequeracuenta.AsString ;

  //----- Obtiene el Consecutivo de Cheque dependiendo del No de Chequera - Cuenta Corriente
  DataModulo1.Generico.Close;
  DataModulo1.Generico.SQL.Clear;
  DataModulo1.Generico.SQL.Add('Select  seq_chq  as cheque, banco from chq_cuenta ');
  DataModulo1.Generico.SQL.Add(' where no_cuenta = ' +
     quotedStr(DataModulo1.CuentasChequerano_cuenta.AsString));
  DataModulo1.Generico.Open;


  if DataModulo1.Generico.FieldByName('Cheque').AsInteger > 0 then
  begin
    _documento := DataModulo1.Generico.FieldByName('Cheque').AsInteger + 1;
    _Banco     := DataModulo1.Generico.FieldByName('Banco').AsString;
    _chequeraNo:= DataModulo1.CuentasChequerano_cuenta.AsString
  end
  else
    _documento := 1;

  DataModulo1.cheque_encdocumento.AsInteger := _documento;

  _guid := mTransaccionguid.AsString ;
  if mTransaccion.Locate ('TipoCuenta','T',[])  then
  begin
    mTransaccion.delete;
   end;

  mTransaccion.First;
  mTransaccion.Insert;

  mTransaccionFECHA.AsDateTime    := _fechaSistema;
  mTransaccionDocumento.AsInteger := 0;      ;//AsInteger :=  ;  //;_documento;
  mTransaccionCuenta.AsString     := _cuenta;
  mTransaccionimputable.AsBoolean := False;
  mTransaccionOrden.AsString      := 'P';
  mTransacciontipoCuenta.AsString := 'T';
  mTransaccionNaturaleza.AsString := 'C';
  mTransaccionTipoDoc.AsString    := 'CHQ';
  mTransaccionEfectivo.AsFloat    := DataModulo1.cheque_encmonto_gral.AsFloat;
  mTransaccionMonto.AsFloat       := DataModulo1.cheque_encmonto_gral.AsFloat;
  mTransaccionguid.AsString       := DataModulo1._guid();
  ValidarMontos;
  DBGrid1.Refresh;

end;


procedure TfrmCheques.dtsChequeEncDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if DataModulo1.chequeImpresionEncanulado.AsInteger = 1 then
  begin
    grp_chk_enc.Enabled := false;
//    tb_Chk_Enc.Enabled  := False;
  end;
end;

procedure TfrmCheques.btn_chk_lista_buscarClick(Sender: TObject);
begin
  inherited;
  CargarCheques;
end;

procedure TfrmCheques.btn_chk_NuevoClick(Sender: TObject);
begin
  inherited;
  //--- Inicializa la data
  DataModulo1.cheque_enc.Close;
  DataModulo1.cheque_enc.open;
  mTransaccion.Close;
  mTransaccion.Open;
  DBGrid1.Refresh;

  DataModulo1.cheque_enc.append;
  DataModulo1.cheque_encfecha_doc.AsDateTime := _fechaSistema ;

  //--- Activa los controles
  grp_chk_Detalle.Enabled   := true;
  grp_chk_enc.Enabled       := true;
  btn_chk_Salvar.Enabled    := True;
  btn_chk_Nuevo.Enabled     := False;
  btn_chk_Undo_Enca.Enabled := true;
  btn_chk_imprimir.Visible  := false;
  dbl_chk_cuenta.SetFocus ;

end;

procedure TfrmCheques.ed_chk_beneficiarioChange(Sender: TObject);
begin
  inherited;
  CargarBeneficiarios;
end;

procedure TfrmCheques.ed_chk_benefRightButtonClick(Sender: TObject);
begin
  inherited;
  ed_chk_benef.Clear;
end;



procedure TfrmCheques.ed_chk_MontoClick(Sender: TObject);
begin
//
end;

procedure TfrmCheques.ed_chk_MontoEnter(Sender: TObject);
begin
  inherited;
  ed_chk_Monto.Clear;
  ed_chk_Monto.SelectAll;
end;

procedure TfrmCheques.ed_chk_MontoExit(Sender: TObject);
begin
  inherited;
   if not VarIsNull (DataModulo1.cheque_encnCuentaCheque.AsString)  then
  begin
    if mTransaccion.Locate('TipoCuenta','T',[]) then
    begin
      mTransaccion.Edit;
      mTransaccionEfectivo.AsFloat := DataModulo1.cheque_encmonto_gral.AsFloat;
      mTransaccionMonto.AsFloat    := DataModulo1.cheque_encmonto_gral.AsFloat;
      ValidarMontos;
    end;
  end;
end;

procedure TfrmCheques.ed_chk_MontoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (Key in [#8, '0'..'9','.',#13,#9]) then
  begin
         Key := #0;
  end;

  if (key = #13) or (key = #9) then
  begin

    if key = #9 then
       DBGrid1.Options := DBGrid1.Options - [dgEditing];
    ValidarMontos;
  end;

end;

procedure TfrmCheques.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfrmCheques.FormDestroy(Sender: TObject);
begin
  inherited;
  DataModulo1.chequesCuenta.Close;
  DataModulo1.cheque_ListaBeneficiario.Close;
  mTransaccion.Close;
  DataModulo1.transacciontrx.Close;
  DataModulo1.chequesgenerados.Close;

end;

procedure TfrmCheques.FormShow(Sender: TObject);
begin
  inherited;

  //CargarChequesNoImpresos
  DataModulo1.cheque_enc.Close;
  DataModulo1.cheque_enc.Open;
  //--
  DataModulo1.chequesCuenta.Close;
  DataModulo1.chequesCuenta.Open;


  //--- Lista de Beneficiarios para combo Box
  DataModulo1.cheque_ListaBeneficiario.Close;
  DataModulo1.cheque_ListaBeneficiario.Open;

  //--- Desactiva los controles de edicion
  grp_chk_Detalle.Enabled := False;
  grp_chk_enc.Enabled     := False;
  btn_chk_Salvar.Enabled  := False;
  btn_chk_Nuevo.Enabled   := True;
  btn_chk_Undo_Enca.Enabled := False;
  btn_chk_imprimir.Visible  := false;
  //--- Fecha del Sistema

  ed_chk_fecha.Text := FormatDateTime('dd/MMM/yyy',_fechaSistema);

  mTransaccion.close ;
  mTransaccion.Open ;

  _fechaSistema := DataModulo1.FechaSistema (); // optiene la fecha del sistema (SQL-Server)

  dp_desde.Date := IncMonth(_fechaSistema, -3); // Busca 3 meses hacia atras

  DecodeDate(_fechaSistema ,_a,_m,_d);
  DecodeTime(now,_h1,_m1,_s1,_m2);
  dp_hasta.DateTime := EncodeDateTime (_a,_m,_d,23,59,59,999);

  btn_chk_imprimir.Visible := False;

end;


procedure TfrmCheques.frxTIFFExport1BeginExport(Sender: TObject);
begin
  inherited;

end;

{$Region '********** Mostrar Panel de Beneficiario ***************************************'}
procedure TfrmCheques.lv_beneficiariosClick(Sender: TObject);
var
 _item : Integer;
begin
  inherited;
  _item := strToInt(lv_beneficiarios.Selected.caption);
  DataModulo1.cheque_encanombrede.AsInteger := _item;
  _beneficiarionombre := lv_beneficiarios.Selected.SubItems[0];

  pnl_chk_beneficiarios.Visible := False;
end;
{$Endregion}

{$Region '********** Ocultar el Panel de Beneficiario ************************************'}
procedure TfrmCheques.SpeedButton1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  inherited;
  pnl_chk_beneficiarios.Visible := false;
end;
procedure TfrmCheques.pnl_chk_beneficiariosExit(Sender: TObject);
begin
  inherited;
  pnl_chk_beneficiarios.Visible := false;
end;

procedure TfrmCheques.pnl_chk_beneficiariosMouseLeave(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmCheques.tb_chk_detMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  inherited;
  pnl_chk_beneficiarios.Visible := false;
end;

procedure TfrmCheques.tb_Chk_EncMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  inherited;
  pnl_chk_beneficiarios.Visible := false;
end;
procedure TfrmCheques.ToolButton1Click(Sender: TObject);
begin

  inherited;
  frxReport2.PrepareReport;
  frxPDFExport1.FileName  := 'c:\test.pdf';
  frxReport2.Export(frxPDFExport1);

end;

{$EndRegion}

{$Region '********** Ordenar Beneficiaro *************************************************'}
procedure TfrmCheques.lv_beneficiariosColumnClick(Sender: TObject;
  Column: TListColumn);
begin
  inherited;
  ColumnToSort := Column.Index;
  (Sender as TCustomListView).AlphaSort;
end;

procedure TfrmCheques.lv_beneficiariosCompare(Sender: TObject; Item1,
  Item2: TListItem; Data: Integer; var Compare: Integer);
var
  ix: Integer;
begin
 inherited;
 if ColumnToSort = 0 then
   Compare := CompareText(Item1.Caption,Item2.Caption)
 else
 begin
  ix := ColumnToSort - 1;
  Compare := CompareText(Item1.SubItems[ix],Item2.SubItems[ix]);
 end;
end;
{$EndRegion}

{$REGION '********** Salvar Cheque *******************************************************'}

procedure TfrmCheques.btn_chk_SalvarClick(Sender: TObject);
begin
  inherited;

  if DataModulo1.chequeImpresionEncdocumento.AsInteger  = 0 then
  Begin

    if ed_chk_diferencia.text = '0.00'  then
    begin
      try
        if SalvarCheque() then
        Begin
          DataModulo1.chequeImpresionEncdocumento.AsInteger := _documento ;
          btn_chk_Salvar.Enabled    := false;
          btn_chk_Nuevo.Enabled     := True;
          btn_chk_Undo_Enca.Enabled := False;
          btn_chk_imprimir.Visible  := True;
        End;
        Except
          showMessage(' Fallo en la Actualizacion de Datos...');
      end;
    end
    Else
      ShowMessage('Comprobante Descuadrado...');
  end;

end;
//------------------------------------------------------------------------------
//
//
//-------------- Salvar Cheque -------------------------------------------------
Function TfrmCheques.SalvarCheque() : Boolean;
var
 _salvarDetalle : Boolean;
 _Commit    : boolean;
begin
 DecodeDate(_fechaSistema ,_a,_m,_d);
 DecodeTime(now,_h1,_m1,_s1,_m2);
 mTransaccion.first;
 _fechaTrx := EncodeDateTime (_a,_m,_d,_h1,_m1,_s1,_m2);
 if not mTransaccion.eof then
 begin
  if mTransaccionDocumento.AsInteger = 0 then // Transaccion Aun no procesada ...cheque Nuevo
  Begin

   //--- Inicia la Transaccion SQL ----
   if not DataModulo1.cnn2.InTransaction  then
     DataModulo1.cnn2.StartTransaction ;

   _Numrec := _Documento;
   //  SalvarChequeNuevo();
   //---------------------------------------------------------------------------
   //  Crea el registro de encabezado de transaccion en TRANSACCION_ENC
   //---------------------------------------------------------------------------

   //-----  script de Actualizacion de secuencial de Cheque -----=--------------
   DataModulo1.actualizaCheque.close;
   DataModulo1.actualizaCheque.SQL.Clear;
   DataModulo1.actualizaCheque.SQL.Add('Update chq_cuenta set seq_chq = '  +
                                          IntToStr(_Documento) +
                                        ' Where no_cuenta = ' + coma + _chequeraNo  + Coma );

   //------ Script Para Insertar el Encabezado ( Transaccion_Enc ) -------------
   DataModulo1.actualiza.close;
   DataModulo1.actualiza.SQL.Clear;
   DataModulo1.actualiza.SQL.Add('Insert Into transaccion_enc (');

   //----- Seccion de Campos
   DataModulo1.actualiza.SQL.Add(' Tipo_Documento');
   DataModulo1.actualiza.SQL.Add(',Documento');
   DataModulo1.actualiza.SQL.Add(',Anulado');
   DataModulo1.actualiza.SQL.Add(',Fecha_Doc');
   DataModulo1.actualiza.SQL.Add(',Monto_Gral');
   DataModulo1.actualiza.SQL.Add(',Estado');
   DataModulo1.actualiza.SQL.Add(',Fecha_Aud');
   DataModulo1.actualiza.SQL.Add(',Usuario');
   DataModulo1.actualiza.SQL.Add(',anombrede');
   DataModulo1.actualiza.SQL.Add(',observacion');
   DataModulo1.actualiza.SQL.Add(',Pagare');
   DataModulo1.actualiza.SQL.Add(',nCuenta');
   DataModulo1.actualiza.SQL.Add(',banco )');

   //----Seccion de Data
   DataModulo1.actualiza.SQL.Add('Values (');
   DataModulo1.actualiza.SQL.Add(QuotedStr('CHQ'));
   DataModulo1.actualiza.SQL.Add(',' + coma + IntToStr(_Numrec) + coma );
   DataModulo1.actualiza.SQL.Add(',' + coma + '0'               + coma );
   DataModulo1.actualiza.SQL.Add(',' + coma + FormatDateTime('yyyy-mm-dd hh:nn:ss',_FechaTrx)    + coma );
   DataModulo1.actualiza.SQL.Add(',' + DataModulo1.cheque_encmonto_gral.Asstring );
   DataModulo1.actualiza.SQL.Add(',' + Coma + '1'               + coma );
   DataModulo1.actualiza.SQL.Add(',' + coma + FormatDateTime('yyyy-mm-dd hh:nn:ss',now)   + coma );
   DataModulo1.actualiza.SQL.Add(',' + coma + usuario           + coma ) ;
   DataModulo1.actualiza.SQL.Add(',' + DataModulo1.cheque_encanombrede.AsString  ) ;
   DataModulo1.actualiza.SQL.Add(',' + coma + DataModulo1.cheque_encobservacion.AsString + coma ) ;
   DataModulo1.actualiza.SQL.Add(',' + coma + DataModulo1.cheque_encpagare.AsString + coma ) ;
   DataModulo1.actualiza.SQL.Add(',' + coma + _chequeraNo       + coma ) ;
   DataModulo1.actualiza.SQL.Add(',' + coma + _banco            + coma +  ')' );


   //--------------------------------------------------------------------------
   //  Crea  registros de Detalle  de transaccion en TRANSACCION_DET
   //--------------------------------------------------------------------------
   _salvarDetalle := True;
   while not mTransaccion.eof do
   begin
    _Monto := Roundto(mTransaccionMonto.AsFloat,-2) ;
    if _Monto > 0.00 then
    begin
     if (mTransaccionOrden.AsString = 'P') or (mTransacciontipoCuenta.AsString = 'T')  then //  la cuenta principal de cheque
     begin

      _cuenta        := mTransaccionCuenta.AsString ;
      _naturaleza    := mTransaccionNaturaleza.AsString ;
      _salvarDetalle := InsertarDetalle(_monto);

     end
     Else //
     Begin
      //--- filtra los registro enlazados ----
      Datamodulo1.transacciontrx.close;
      Datamodulo1.transacciontrx.sql.clear;
      Datamodulo1.transacciontrx.sql.add('select M.Naturaleza as MDC, p.dc cd, p.*');
      Datamodulo1.transacciontrx.sql.add('from productotrx P Inner Join maescont M on P.cuenta = M.cuenta');
      Datamodulo1.transacciontrx.sql.add(' where ');
      Datamodulo1.transacciontrx.sql.add(' (p.tipoCuenta = (Select top 1 tipoCuenta from ProductoTRX x where X.Cuenta = ' + quotedStr(mTransaccionCuenta.AsString));
      Datamodulo1.transacciontrx.sql.add(' and x.idProducto = (Select subcuenta from maes_aux where num_cuenta = ' +QuotedStr( mTransaccionNum_Cuenta.AsString ) +')))');
      Datamodulo1.transacciontrx.sql.add(' and  idproducto = (Select subcuenta from maes_aux where num_cuenta = ' + quotedStr( mTransaccionNum_Cuenta.AsString ) +')');
      Datamodulo1.transacciontrx.sql.add(' and tipoTrx = ' + QuotedStr('D') );
      Datamodulo1.transacciontrx.sql.add(' and (esCaja = 1)');
      Datamodulo1.transacciontrx.Open;
      Clipboard.AsText := Datamodulo1.transacciontrx.SQL.Text ;

      _naturaleza := mTransaccionNaturaleza.AsString;

      if not DataModulo1.transacciontrx.eof then
      begin
       DataModulo1.transacciontrx.First;
       while not DataModulo1.transacciontrx.eof do
       Begin
        // Adiciona los registros del asiento definido en ProductoTrx
        // de acuerdo a que se esta afectando Mora , Interes o Capital

         _naturaleza := DataModulo1.transaccionTrxdc.AsString;
         _cuenta     := DataModulo1.transaccionTrxcuenta.AsString ;

         //--- Para los casos en que el usuario cambia la nuturaleza en la transaccion
         //
         if (mTransaccionNaturaleza.AsString <> DataModulo1.transaccionTrxdc.AsString) then
           _naturaleza := mTransaccionNaturaleza.AsString
         else
           _naturaleza := DataModulo1.transaccionTrxdc.AsString;

        //------ manejo de los Intereses
        if DataModulo1.transaccionTrxesInteres.AsBoolean  then
        begin
          if DataModulo1.transaccionTrxcampo.AsString = 'Pagado' then
            _monto := mTransaccionMonto.AsFloat;

          if DataModulo1.transaccionTrxcampo.AsString = 'Calculado' then
            _monto := mTransaccionmontoInteres.AsFloat;
        end;

      //  _monto := _monto;
        _salvarDetalle := InsertarDetalle(_Monto);

        DataModulo1.transacciontrx.Next;
       End;
      end;
     End;
    End;
    mTransaccion.Next;
   end;
  end;

  //--- Cierre de la transaccion SQL ----
  if not _salvarDetalle then
    _Commit := False
  else
    _commit := true;

  try
    DataModulo1.actualizaCheque.ExecSQL;
    TRY
      DataModulo1.Actualiza.ExecSQL ;
    Except
      _commit := false;
    END;
  Except
    _commit := false;
  End;

  if _commit then
  begin
    DataModulo1.cnn2.CommitRetaining;
    SalvarCheque:=true;
  end
  else
  Begin
    DataModulo1.cnn2.RollbackRetaining;
    SalvarCheque:=true;
  End;

 end;
end;


{$REGION '*****************Salvar Detalle Cheque*****************'}
function TfrmCheques.InsertarDetalle(_monto: double): boolean;
begin
//
 if _Monto > 0.0000 then
 Begin

   DataModulo1.actualiza2.close;
   DataModulo1.actualiza2.SQL.Clear;
   DataModulo1.actualiza2.SQL.Add('Insert Into transaccion_det (');
   //----- Seccion de Campos
   DataModulo1.actualiza2.SQL.Add(' Tipo_Documento');
   DataModulo1.actualiza2.SQL.Add(',Documento'     );
   DataModulo1.actualiza2.SQL.Add(',Fecha_Doc'     );
   DataModulo1.actualiza2.SQL.Add(',num_cuenta'    );
   DataModulo1.actualiza2.SQL.Add(',cuenta'        );
   DataModulo1.actualiza2.SQL.Add(',naturaleza'    );
   DataModulo1.actualiza2.SQL.Add(',monto'         );
   DataModulo1.actualiza2.SQL.Add(',Efectivo'      );
   DataModulo1.actualiza2.SQL.Add(',Cheque'        );
   DataModulo1.actualiza2.SQL.Add(',Banco'         );
   DataModulo1.actualiza2.SQL.Add(',NumCheque'     );
   DataModulo1.actualiza2.SQL.Add(',fecha_aud'     );
   DataModulo1.actualiza2.SQL.Add(',guid     '     );
   DataModulo1.actualiza2.SQL.Add(',guidPadre'     );
   DataModulo1.actualiza2.SQL.Add(',Usuario )  '   );

   //----Seccion de Data
   DataModulo1.actualiza2.SQL.Add('Values (');
   DataModulo1.actualiza2.SQL.Add(QuotedStr('CHQ'));
   DataModulo1.actualiza2.SQL.Add(',' + Coma + IntToStr(_Numrec) + Coma );
   DataModulo1.actualiza2.SQL.Add(',' + Coma + FormatDateTime('yyyy-mm-dd hh:nn:ss',_FechaTrx) + Coma );
   DataModulo1.actualiza2.SQL.Add(',' + Coma + mTransaccionNum_Cuenta.AsString   + Coma );
   DataModulo1.actualiza2.SQL.Add(',' + Coma + _cuenta                           + Coma );
   DataModulo1.actualiza2.SQL.Add(',' + Coma + _naturaleza                       + Coma );
   DataModulo1.actualiza2.SQL.Add(',' + Coma + FloatToStr(_Monto)                + Coma );
   DataModulo1.actualiza2.SQL.Add(',' + Coma + mTransaccionEfectivo.AsString     + Coma );
   DataModulo1.actualiza2.SQL.Add(',' + Coma + mTransaccionCheque.AsString       + Coma );
   DataModulo1.actualiza2.SQL.Add(',' + Coma + _Banco                            + Coma );
   DataModulo1.actualiza2.SQL.Add(',' + Coma + mTransaccionNumCheque.AsString    + Coma );
   DataModulo1.actualiza2.SQL.Add(',' + Coma + FormatDateTime('yyyy-mm-dd hh:nn:ss',now) + Coma );
   DataModulo1.actualiza2.SQL.Add(',' + Coma + mTransaccionguid.AsString         + Coma );
   DataModulo1.actualiza2.SQL.Add(',' + Coma + mTransaccionguiPadre.AsString     + Coma );
   DataModulo1.actualiza2.SQL.Add(',' + Coma + usuario                    + Coma +  ')' );
   Clipboard.AsText :=  DataModulo1.actualiza2.SQL.text;
   Try
      DataModulo1.actualiza2.ExecSQL;
      InsertarDetalle := True;
   Except
      InsertarDetalle := false;
   End;

   mTransaccion.Edit;
   mTransaccionTipoDoc.AsString    := 'CHQ';
   mTransaccionDocumento.AsInteger := _Numrec;
 End

end;
{$ENDREGION  '**************Detalle Cheque **********************}
{$ENDREGION}

{$Region '********** Aplicar el Deposito *************************************************'}
//------------------------------------------------------------------------------
//                          Aplicar Depositos
//------------------------------------------------------------------------------
procedure TfrmCheques.AplicaDeposito;
var
 _numCuenta  : string;
 _deposito   : Double;
 _prestamo_SN: string;
 _guid       : string;
 _naturelza  : String;
 _TipoOperacion : string  ;
begin

 _guid        := DBGRid1.DataSource.DataSet.FieldByName('guid').AsString ;
 _prestamo_SN := DBGRid1.DataSource.DataSet.FieldByName('Prestamo_SN').AsString ;
 _numCuenta   := DBGRid1.DataSource.DataSet.FieldByName('Num_Cuenta').AsString ;
 _deposito    := RoundTo(DBGRid1.DataSource.DataSet.FieldByName('Efectivo').AsFloat +
                 DBGRid1.DataSource.DataSet.FieldByName('Cheque').asFloat,-2) ;

// if _prestamo_SN = 'S' then
// Begin
//   if _deposito >= 0 then
//   Begin
//     _deposito := AplicaDepositoDetalle(_numCuenta,_deposito,'M');
//   end;
//   if _deposito >= 0 then
//   Begin
//     _deposito := AplicaDepositoDetalle(_numCuenta,_deposito,'I');
//   end;
//   if _deposito >= 0 then
//   Begin
//     _deposito := AplicaDepositoDetalle(_numCuenta,_deposito,'C');
//     if _deposito > 0  then
//     begin
//      if mTransaccion.Locate('guid',_guidTrx ,[]) then
//      Begin
//     //         if mTransaccion.Locate('imputable',true,[]) then
//       if mTransaccionCuentaOrden.AsString <> mTransaccionNaturaleza.asstring then
//       begin
//         mTransaccion.Edit;
//         mTransaccionSaldo.AsFloat := _deposito * -1 ;//0.00;
//       end
//       Else
//       Begin
//        mTransaccion.Edit;
//        mTransaccionSaldo.AsFloat := _deposito  ;//0.00;
//       End;
//      end;
//     end;
//   end
// End
// Else
 Begin
   mTransaccion.locate('guid',_guid,[]);
   mTransaccion.Edit;
   mTransaccionMonto.AsFloat := _deposito;

   if mTransaccionNaturaleza.AsString = mTransaccionCuentaOrden.AsString then
   begin
       mTransaccionSaldo.AsFloat := mTransaccionSaldoO.AsFloat + _deposito;
   end
   Else
   Begin
//       if _deposito > mTransaccionSaldo.AsFloat then
//       begin
//         ShowMessage('Fondos Insuficientes...');
//         mTransaccionSaldo.AsFloat := mTransaccionSaldoO.AsFloat ;
//         mTransaccionEfectivo.AsFloat := 0.00;
//         mTransaccionMonto.AsFloat    := 0.00;
//         _deposito := 0.00;
//       end
//       Else
       begin
         mTransaccionSaldo.AsFloat    := mTransaccionSaldoO.AsFloat - _deposito;
       end;
   End;
 end;
 mTransaccion.Locate('guid',_guidTrx ,[]);
 //DBGrid1.Column[2].Field.FocusControl;

 End;
 {$EndRegion}

{$Region '********** Aplicar el Deposito (Detalle TRX)************************************'}
function TfrmCheques.AplicaDepositoDetalle(_numCuenta: String;
  _deposito: Double; _orden: String): Double;
begin
//---
 mTransaccion.First;
 while not mTransaccion.eof do
 Begin
   if (mTransaccionNum_Cuenta.AsString  = _numCuenta) and
      (mTransaccionOrden.AsString       = _orden) then
   Begin
     if  (mTransaccionSaldoO.AsFloat)  <= _deposito then
     Begin

        _deposito := _deposito - mTransaccionSaldoO.AsFloat;
        mTransaccion.Edit;
        mTransaccionMonto.AsFloat :=  mTransaccionSaldoO.AsFloat;
        mTransaccionSaldo.AsFloat := 0.00;

     End
     Else
     Begin

        mTransaccion.Edit;
        mTransaccionMonto.AsFloat :=  _deposito;
        mTransaccionSaldo.AsFloat := mTransaccionSaldoO.AsFloat - _deposito;
        _deposito := 0.00;

     End;
   End;
   mTransaccion.next;
 End;

 Result := _deposito;

 end;
 {$EndRegion}

{$Region '********** Borrar Reglon en la Transaccion *************************************'}
procedure TfrmCheques.btn_chk_anularClick(Sender: TObject);
begin
  inherited;

 if m_chk_Generados_documento.AsInteger > 0  then
 begin
  If (MessageDlg('¿Esta Seguro(a) de Anular el Comprobante ?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    DataModulo1.Generico.Close;
    DataModulo1.Generico.SQL.Clear;
    DataModulo1.Generico.SQL.Add('Update Transaccion_enc ');
    DataModulo1.Generico.SQL.Add('Set Anulado = 1 ');
    DataModulo1.Generico.SQL.Add(' ,usuario   = '   + quotedstr(Usuario) );
    DataModulo1.Generico.SQL.Add(' ,fecha_aud = '   + quotedStr(formatDatetime('yyyy-mm-dd hh:nn:ss' , Now)));
    DataModulo1.Generico.SQL.Add('Where Documento = '       + m_chk_Generados_documento.Asstring);
    DataModulo1.Generico.SQL.Add('   and tipo_documento = ' + QuotedStr('CHQ'));
    Clipboard.AsText := DataModulo1.Generico.SQL.Text ;

    try
      DataModulo1.Generico.ExecSQL;
      lbl_anulado.Visible := true;
    Except
      ShowMessage('No logro anular el Cheque ');
    end;

  end;
 end;
end;

procedure TfrmCheques.btn_chk_asientoClick(Sender: TObject);
var
 _Registros : Integer;
begin
  inherited;

  DataModulo1.comprobante_ENC.Close;
  DataModulo1.comprobante_ENC.Params [0].AsInteger := DataModulo1.cheque_encdocumento.AsInteger ;
  DataModulo1.comprobante_ENC.Params [1].AsString  := 'CHQ';
  DataModulo1.comprobante_ENC.Open;

  DataModulo1.comprobante_DET.Close;
  DataModulo1.comprobante_DET.Params [0].AsInteger := DataModulo1.cheque_encdocumento.AsInteger ;
  DataModulo1.comprobante_DET.Params [1].AsString  := 'CHQ';
  DataModulo1.comprobante_DET.Open;

  if  Not DataModulo1.comprobante_DET.eof then
  begin
    _Registros := DataModulo1.comprobante_DET.RecordCount ;
    frxComprobante.Variables['Registros']    := QuotedStr(intToStr(_Registros + 1));
    frxComprobante.ShowReport();
  end;



end;

procedure TfrmCheques.btn_chk_det_borrarClick(Sender: TObject);
var
 _guidPadre : String;
begin

  inherited;

//  if mTransaccionimputable.AsBoolean then
//  Begin
//    _guidPadre := mTransaccionguiPadre.AsString ;
//    mTransaccion.First;
//    while not mTransaccion.eof  do
//    begin
//      if mTransaccionguiPadre.AsString  = _guidPadre then
        mTransaccion.Delete;
//      else
//        mTransaccion.Next;
//    end;
//    mTransaccion.First;
//  End;

  ValidarMontos;

end;
{$EndRegion}

{$region '********** Insertar Cuenta de Catalogo Contable ********************************'}
procedure TfrmCheques.btn_chk_det_InsertarCuentaClick(Sender: TObject);
begin
  inherited;
  //--- Validar si se ha seleccionado cuenta corriente y se ha establecido monto
  if (DataModulo1.cheque_encnCuentaCheque.AsString <> '')
     and (DataModulo1.cheque_encmonto_gral.AsFloat > 0) then
  Begin

  //---Aqui debe adicionar una cuenta del catalogo contable.
  //---hacer llamado a ventana de cuentas.

    Application.CreateForm(TfrmCatalogoContable, frmCatalogoContable);
    try
      if frmCatalogoContable.ShowModal = mrOk then
      begin

        DataModulo1.catalogo.Locate('cuenta',catalogoContable._Cuenta,[]);

        mTransaccion.Append;
        mTransaccionFECHA.AsDateTime    := _fechaSistema ;
        mTransaccionDocumento.AsInteger := 0; //_documento;
        mTransaccionTipoDoc.AsString    := 'CHQ';
        mTransaccionCuenta.AsString     := DataModulo1.catalogo.FieldByName('cuenta').AsString ;
        mTransaccionimputable.AsBoolean := True;
        mTransaccionOrden.AsString      := 'P';
        mTransaccionCuentaOrden.AsString:= DataModulo1.catalogo.FieldByName('Naturaleza').AsString ;
        mTransaccionguid.AsString       := DataModulo1._guid();
        mTransaccionMonto.AsFloat       := mTransaccionEfectivo.AsFloat;
      //  mTransaccionNaturaleza.AsString := CatalogoContable._DC;

      end;

    finally
      frmCatalogoContable.Free;
    end;
  End;
end;
{$EndRegion}

{$Region '********** Seleccion de la cuenta del Asociado *********************************'}
procedure TfrmCheques.btn_chk_det_socioClick(Sender: TObject);
var
 _seguir : boolean;
begin
  inherited;
  _seguir := True;

  if (DataModulo1.cheque_encimpreso.AsInteger  = 1) then
  begin
    ShowMessage (' Cheque YA Impreso...');
    _seguir := false;
  end;
  if (DataModulo1.cheque_encanulado .AsInteger = 1)  then
  begin
    ShowMessage(' Cheque ANULADO');
    _seguir := false;
  end;

  if _seguir then
  Begin
    Application.CreateForm(TfrmSocioCuentas , frmSociocuentas);
    if frmSociocuentas.ShowModal = mrOk then
    Begin
     //---agregar aqui el codigo para cuenta de asociado
     _ArrastrarCuenta ;
    End;
  End;

end;

procedure TfrmCheques.btn_chk_det_socioDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  Accept := _accept ;
end;
{$EndRegion}

{$Region '********** Arrastrar Cuenta Socio **********************************************'}
procedure TfrmCheques._ArrastrarCuenta;
var
_append         : Boolean ;
_cuentaInteres  : String;
_cuentaCapital  : string;
_NumCuenta      : String;
_interesSobre   : String;
_SaldoO, _Saldo : Double;
_Orden          : String;
_esPrestamo     : string;
_AgregaTrx      : boolean;
_guidPadre      : string;
_subCuenta      : Integer;

begin

  _cuentaCapital  := DataModulo1.socioCuentas.FieldByName('Cuenta').AsString;
  _InteresSobre   := DataModulo1.socioCuentas.FieldByName('InteresSobre').AsString;
  _NumCuenta      := DataModulo1.socioCuentas.FieldByName('num_Cuenta').AsString;
  _esPrestamo     := DataModulo1.socioCuentas.FieldByName('Prestamo_S_N').AsString;
  _subCuenta      := DataModulo1.socioCuentas.FieldByName('subCuenta').AsInteger ;
  _AgregaTrx      := True;

  DataModulo1.productoTrx2.Close;
  Datamodulo1.productoTrx2.Params [0].AsInteger := _subCuenta;
  DataModulo1.productoTrx2.Params [1].AsString := 'D';
  DataModulo1.productoTrx2.Open;

  if Length(trim(_NumCuenta)) >= 10 then
    if mTransaccion.Locate ('Num_Cuenta',_NumCuenta,[]) then
    begin
       _AgregaTrx := False;  // Si encuentra el prestamo , no agrega las lineas de interes,mora
       _Orden     := 'P';
       _esPrestamo:= '';
    end;

    //--- Validar contra el productoTRX las cuentas que se ven afectadas
    //--- Se debe mostrar Intereses y Mora

  if not DataModulo1.productoTrx2.eof  then
  Begin
    DataModulo1.productoTrx2.first;
    _guidPadre := DataModulo1._guid ();
    while not DataModulo1.productoTrx2.eof do
    Begin

        montoInteres := 0.00; montoMora := 0.00;
       _SaldoO := 0.00 ; _Saldo := 0.00;


       //--- Agrega  solo las que se veran en el cheque/Transferencia
       if (DataModulo1.productoTrx2verChk_Tran.AsBoolean)  then
       begin

         //---- por defecto el registro se debe agregar a la transaccion
         //     No se agregara dependiendo de las condiciones de mora e interes
         _append :=  false;

         //---Valida si la linea calcula Intereses (productoTRX.esInteres)
         if (DataModulo1.productoTrx2.FieldByName('esInteres').AsBoolean) and _AgregaTrx  then
         begin

             DataModulo1.cuentaSaldoInteres.close;
             DataModulo1.cuentaSaldoInteres.Params [0].AsInteger := _subCuenta;
             DataModulo1.cuentaSaldoInteres.Open;

             _cuentaInteres  := DataModulo1.cuentaSaldoInteres.FieldByName('cuenta').AsString;

            //-- CalculoDeIntereses;
            _cuenta                   := DataModulo1.productoTrx2cuenta.AsString;
            montoInteres              := CalculaInteres(_NumCuenta, _cuenta, _cuentaCapital , _InteresSobre);
            _SaldoO                   := montoInteres + DataModulo1.CalculaSaldoActual(_NumCuenta , _cuenta);
            _saldo                    := _SaldoO;
            _Orden                    := 'I';
            if _saldoO > 0.00 then
               _append := true;
         end;

         //---Valida si la linea calcula mora (productoTRX.esMora)
         if (DataModulo1.productoTrx2.FieldByName('esMora').AsBoolean) and _AgregaTrx  then
         begin
            _cuenta                    := DataModulo1.productoTrx2cuenta.AsString;
            montoMora                  := DataModulo1.SalodMora(_NumCuenta);
            _saldoO                    := montoMora;
            _Saldo                     := _SaldoO;
            _Orden                     := 'M';
            if _saldoO  > 0.00 then
               _append := true;
         end;

         //------------Principal
         if DataModulo1.productoTrx2.FieldByName('Principal').AsBoolean then
         begin

            _cuenta                    := DataModulo1.productoTrx2cuenta.AsString;
            _saldoO                    := DataModulo1.CalculaSaldoActual(_NumCuenta , _cuenta);
            _Saldo                     := _SaldoO;
            _Orden                     := 'C';
            _append := True;

         end;

         if _append then
         Begin

           mTransaccion.Append;
           mTransaccionFECHA.AsDateTime     := _fechaSistema ;
           mTransaccionDocumento.AsInteger  := 0; //_documento;
           mTransaccionCuenta.AsString      := DataModulo1.productoTrx2cuenta.AsString;
           mTransaccionTipoDoc.AsString     := 'CHQ';
           mTransaccionNum_Cuenta.AsString  := DataModulo1.sociocuentas.FieldByName('num_cuenta').AsString ;
           mTransaccionPrestamo_SN.AsString := _esPrestamo;
           mTransaccionimputable.AsBoolean  := true; //DataModulo1.productoTrx2esImputable.AsBoolean ;
           mTransaccionOrden.AsString       := _Orden;
           mTransaccionguid.AsString        := DataModulo1._guid();
           mTransaccionguiPadre.AsString    := _guidPadre;
           mTransaccionNaturaleza.AsString  := DataModulo1.productoTrx2DC.AsString;
           mTransaccionCuentaOrden.AsString := DataModulo1.productoTrx2Naturaleza.AsString;
           mTransaccionmontoInteres.AsFloat := montoInteres;
           mTransaccionMonto.AsFloat        := 0.00; //mTransaccionEfectivo.AsFloat ;
           mTransaccionEfectivo.AsFloat     := 0.00;
           mTransaccionSaldoO.AsFloat       := _SaldoO;
           mTransaccionSaldo.AsFloat        := mTransaccionSaldoO.AsFloat ;

         End;
       end;
       DataModulo1.productoTrx2.next
    End;
  end;
end;
{$EndRegion}

{$Region '********** Impresion de Cheque (Click)******************************************'}
procedure TfrmCheques.btn_chk_imprimirClick(Sender: TObject);
var

 _Monto : string;
 _Incluir : boolean;
 _fechaImpresion1  : string;
 _fechaImpresion2  : string;
 _beneficiario     : string;
  I: Integer;
begin
  inherited;

  _fechaImpresion1 := FormatDateTime('DDMMYYYY',_fechaTrx );

  _fechaImpresion2 := '';

  for I := 1 to 8 do
  Begin
     _fechaImpresion2 := _fechaImpresion2 + '' + copy(_fechaImpresion1,i,1);
  End;

  DataModulo1.chequeImpresionenc.Close;
  DataModulo1.chequeImpresionenc.Params [0].AsInteger  := _documento;
  DataModulo1.chequeImpresionenc.Params [1].AsString   := 'CHQ';
  DataModulo1.chequeImpresionenc.Params [2].AsDateTime := _fechaTrx  ;
  DataModulo1.chequeImpresionenc.Open;

  DataModulo1.chequeImpresion.Close;
  DataModulo1.chequeImpresion.Params [0].AsInteger  := _documento;
  DataModulo1.chequeImpresion.Params [1].AsString   := 'CHQ';
  DataModulo1.chequeImpresion.Params [2].AsDateTime := _fechaTrx  ;
  DataModulo1.chequeImpresion.Open;

  mChequeImpresion.Close;
  mChequeImpresion.Open;

  //---- Agrega primero la columnas Debito
  if not DataModulo1.chequeImpresion.eof then
  begin
    DataModulo1.chequeImpresion.First ;
    while not DataModulo1.chequeImpresion.eof do
    begin
      _Incluir := false;
      // Verificacion de inclucion
      if length(DataModulo1.chequeImpresionnum_cuenta.AsString) >= 10 then  //Corresponde a un producto
      begin
         _Incluir:= _incluirRegistro(DataModulo1.chequeImpresioncuenta.asstring,
                                     DataModulo1.chequeImpresionidproducto.asstring,
                                     DataModulo1.chequeImpresionnaturaleza.asstring);
      end
      Else
      Begin
        // se debe incluir...
        _Incluir := true;
      End;

      if (DataModulo1.chequeImpresiondebito.AsFloat > 0.00)  and (_Incluir) then
      begin
          mChequeImpresion.Append;
          mChequeImpresion_dcuenta.AsString := DataModulo1.chequeImpresioncuenta.AsString;
          mChequeImpresion_dNombre.AsString := upperCase(DataModulo1.chequeImpresionnombre.AsString);
          mChequeImpresion_dMonto.AsFloat   := DataModulo1.chequeImpresiondebito.AsFloat;
      end;

      DataModulo1.chequeImpresion.next
    end;

    //--- Agregando las columnas Creditos
    DataModulo1.chequeImpresion.First ;
    mChequeImpresion.First;
    while not DataModulo1.chequeImpresion.eof do
    begin
      //--- en caso de que tenga numero de cuenta de asociado (producto)
      if DataModulo1.chequeImpresionnum_cuenta.AsString <> '' then
      begin
         _Incluir:= _incluirRegistro(DataModulo1.chequeImpresioncuenta.asstring,
                                     DataModulo1.chequeImpresionidproducto.asstring,
                                     DataModulo1.chequeImpresionnaturaleza.asstring);
      end
      Else
      Begin
        _Incluir := true;
      End;

      if (DataModulo1.chequeImpresionCredito.AsFloat  > 0.00) and (_incluir)then
      begin

        //--- En caso de que existan mas registros creditos que debitos...
        if mChequeImpresion.eof then
          mChequeImpresion.Append
        else
          mChequeImpresion.Edit;

        mChequeImpresion_ccuenta.AsString := DataModulo1.chequeImpresioncuenta.AsString;
        mChequeImpresion_cNombre.AsString := DataModulo1.chequeImpresionnombre.AsString;
        mChequeImpresion_cMonto.AsFloat   := DataModulo1.chequeImpresionCredito.AsFloat;
        mChequeImpresion.Next;
      end;
      DataModulo1.chequeImpresion.next;
    end;

  end;

  _monto := DataModulo1.NumToLetras(DataModulo1.chequeImpresionEncmonto_gral.AsFloat);
  _beneficiario := UpperCase(trim(DataModulo1.chequeImpresionEncNombreCompleto.AsString));

  frxReport2.Variables['MontoLetra']   := quotedstr('***'+lowerCase(trim(_monto)+'***'));
  frxReport2.Variables['Beneficiario'] := quotedstr('***'+_beneficiario+'***');
  frxReport2.Variables['xxx']          := quotedStr(_fechaImpresion2);

 // frxReport2.ShowReport();
 // frxReport2.ShowPreparedReport;
  frxReport2.ShowReport();
//  frxPreview1.Report := Nil;
//  frxPreview1.Report := frxReport2;
//  frxPreview1.Show;
end;
{$Endregion}

{$region '********** Impresion de Cheque (Inclusion de Registro TRX)**********************'}
function TfrmCheques._incluirRegistro(iCuenta, iProducto: String;
  iDC: String): Boolean;
begin
   DataModulo1.Generico.Close;
   DataModulo1.Generico.SQL.Clear;
   DataModulo1.Generico.SQL.Add('Select cuenta , DC , verchk_tran ');
   DataModulo1.Generico.SQL.Add('From productoTrx ');
   DataModulo1.Generico.SQL.Add('where idProducto = ' + iProducto );
   DataModulo1.Generico.SQL.Add(' and cuenta = ' + quotedStr(iCuenta));
   DataModulo1.Generico.SQL.Add(' and DC = '     + quotedStr(iDC));
   Clipboard.AsText := DataModulo1.Generico.SQL.text;
   DataModulo1.Generico.Open;

   if not DataModulo1.Generico.eof  then
   begin
     if DataModulo1.Generico.FieldByName ('verchk_tran').AsBoolean  then
     begin
       // Se debe incluir
       _IncluirRegistro := True;
     end
     Else
     Begin
       _IncluirRegistro := false;
       // No se debe incluir
     End;
   end;
end;
{$EndRegion}

{$Region '********** Validar Montos ******************************************************'}
procedure TfrmCheques.ValidarMontos;
var
  _Diferencia : Double;
  _Debito,_Credito : Double;
  _guid       : string;

begin
//---

 _guid        := mTransaccionguid.AsString;
 _diferencia  := 0.00;

 mTransaccion.First;
 while not mTransaccion.Eof do
 Begin

   if mTransaccionNaturaleza.asstring = 'D' then
     _Debito  := _Debito  + mTransaccionEfectivo.AsFloat
   else
     _Credito := _Credito + mTransaccionEfectivo.AsFloat;

  _Diferencia := _Debito - _Credito;
  mTransaccion.Next;
 End;

 ed_chk_diferencia.Text  := FormatFloat('#,##0.00',_diferencia);

 mTransaccion.Locate('guid',_guid,[]);

end;
{$EndRegion}

end.
