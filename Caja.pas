unit Caja;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ventana2, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Imaging.jpeg, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Mask,
  Vcl.Samples.Spin, FireDAC.Stan.Async, FireDAC.DApt, Vcl.DBCtrls;

type
  TfrmCaja = class(TfrmVentana)
    dtsCuentas: TDataSource;
    dtstransaccion: TDataSource;
    dtsRecientes: TDataSource;
    dtsBancos: TDataSource;
    Panel6: TPanel;
    Panel4: TPanel;
    cpPrincipal: TCategoryPanelGroup;
    cpImagenes: TCategoryPanel;
    ToolBar2: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    ToolButton3: TToolButton;
    ListView1: TListView;
    pnRecientes: TCategoryPanel;
    tvHist: TTreeView;
    cpCuentas: TCategoryPanel;
    tvHB: TTreeView;
    cpSocio: TCategoryPanel;
    Panel2: TPanel;
    Image1: TImage;
    Panel5: TPanel;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    btnBuscar: TSpeedButton;
    Label2: TLabel;
    rbNsocio: TRadioButton;
    rbNombre: TRadioButton;
    rbCuenta: TRadioButton;
    pnFiltro1: TPanel;
    edFiltro
    : TButtonedEdit;
    pnFiltro2: TPanel;
    ced1: TMaskEdit;
    ced2: TMaskEdit;
    ced3: TMaskEdit;
    rbCedula: TRadioButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel3: TPanel;
    GroupBox4: TGroupBox;
    Memo2: TMemo;
    GroupBox3: TGroupBox;
    dpFecha: TDateTimePicker;
    ToolBar3: TToolBar;
    btnNuevo: TToolButton;
    btnSalvar: TToolButton;
    btnEliminar: TToolButton;
    btnImprimir: TToolButton;
    pnTotal: TPanel;
    Label3: TLabel;
    edMontoTotal: TEdit;
    Memo1: TMemo;
    ToolButton5: TToolButton;
    btnReversar: TToolButton;
    Panel7: TPanel;
    Label1: TLabel;
    spDias: TSpinEdit;
    pnlGridTrx: TPanel;
    DBGrid1: TDBGrid;
    btnInsertarLinea: TToolButton;
    ToolButton10: TToolButton;
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
    TabSheet2: TTabSheet;
    Panel8: TPanel;
    dbgPlanPago: TDBGrid;
    mPlanPago: TFDMemTable;
    mPlanPagofechaPago: TDateField;
    mPlanPagonPago: TIntegerField;
    mPlanPagosaldoInicial: TFloatField;
    mPlanPagoletra: TFloatField;
    mPlanPagosaldoFinal: TFloatField;
    dtsPlanPago: TDataSource;
    rbDeposito: TRadioButton;
    rbRetiro: TRadioButton;
    TabSheet3: TTabSheet;
    Panel10: TPanel;
    pnlMivimientos: TPanel;
    DBGrid2: TDBGrid;
    dtsMovimientos: TDataSource;
    mMovimientos: TFDMemTable;
    mMovimientostipo_documento: TWideStringField;
    mMovimientosdocumento: TIntegerField;
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
    calculo: TFDQuery;
    calculocalculo: TIntegerField;
    Label4: TLabel;
    mMovimientosnombreDoc: TWideStringField;
    lblNumCuenta: TEdit;
    mMovimientosfecha_doc: TDateField;
    ToolButton7: TToolButton;
    dtsCuentasContables: TDataSource;
    mTransaccionCuentaContable: TStringField;
    dtsTipoTransaccion: TDataSource;
    dtsTrx: TDataSource;
    mTransaccionguid: TStringField;
    mTransaccionnombreCuentafull: TStringField;
    mTransacciontipoCuenta: TStringField;
    rbPasaporteRuc: TRadioButton;
    mPlanPagoPago: TFloatField;
    mPlanPagoSaldo: TFloatField;
    Panel9: TPanel;
    Label5: TLabel;
    lbl_PPP_Cuenta: TEdit;
    procedure edFiltroRightButtonClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    Procedure CargarVista;
    procedure rbNsocioClick(Sender: TObject);
    procedure rbNombreClick(Sender: TObject);
    procedure rbCuentaClick(Sender: TObject);
    procedure edFiltroKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
    procedure dtstransaccionDataChange(Sender: TObject; Field: TField);//--- carga la informacion del cliente en el panel
    Procedure CalculaTotal;
    procedure edMontoTotalChange(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    Procedure Buscar;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    Function SigNumeroRecibo(): Integer;
    procedure btnNuevoClick(Sender: TObject);
    procedure recientes;
    procedure DBGrid1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
//    procedure tvHistEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure tvHBDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure tvHistDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure DBGrid1DragDrop(Sender, Source: TObject; X, Y: Integer);
    Procedure _ArrastrarDocumento;
    Procedure _ArrastrarCuenta;
    procedure ced1Change(Sender: TObject);
    procedure rbCedulaClick(Sender: TObject);
    procedure spDiasChange(Sender: TObject);
    //---------
    Function CalculaSaldoActual(NumCuenta: String; cuenta: String) : double;
    Function CalculaMora(Cuenta: String; calculaMora: Boolean) : double ;
    Function CalculaInteres(NumCuenta: String; cuenta: String; interesSobre: String ) : double ;
    Procedure AsientoTrx(_numCuenta : String ; _cuenta : String ; _idProducto : string ;
              campo: String ; Valor : Double; _orden : String );
    Function AplicarDeposito(_numCuenta : String ; _deposito : Double; _orden : String ) : Double;
    Procedure AplicaDeposito;
    procedure DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure tvHBClick(Sender: TObject);
    procedure planPago;
    Procedure movimientos;
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure c(Sender: TCustomTreeView; Node: TTreeNode;
      State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure rbDepositoClick(Sender: TObject);
    procedure rbRetiroClick(Sender: TObject);
    procedure rbPagoClick(Sender: TObject);
    procedure btnInsertarLineaClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure dtstransaccionUpdateData(Sender: TObject);
    procedure edFiltroExit(Sender: TObject);
    procedure edFiltroClick(Sender: TObject);
    procedure btnReversarClick(Sender: TObject);

    //-------------------------------------------------
    Function Pagos (Num_Cuenta : string) : double ;


//    Function insertarDetalleTrx(
  private
    { Private declarations }
  public
    { Public declarations }
  end;



var
  frmCaja: TfrmCaja;
 _montoTotal : double;
 _target     : string;
 _NumCuenta  : string;
 _accept     : boolean;
 _pagos      : Double;
 //---------------------------------------
 //  Variables fijas de calculos
 //
 montoDeposito    : Double;
 montoInteres     : Double;
 montoInteresAcum : Double;
 montoMora        : Double;
 montoCapital     : Double;

 _tipoOperacion   : string;

implementation

{$R *.dfm}

uses DM1, cuentas, DesgloseCheques, ChequesCaja;

//------------------------------------------------------------------------------
//                      Boton btnBuscar Click
//...edw:
//------------------------------------------------------------------------------

procedure TfrmCaja.btnBuscarClick(Sender: TObject);
begin
  inherited;
  edMontoTotal.Text := '0.00';
  // LLamado al procedimiento de busqueda
  Buscar;

end;

//------------------------------------------------------------------------------
//                      Boton Eliminar Registro Transaccion
//...edw:
//------------------------------------------------------------------------------
procedure TfrmCaja.btnEliminarClick(Sender: TObject);
//var
 // _numCuenta : string ;
begin
  inherited;
//
//  if (DBGRid1.DataSource.DataSet.FieldByName('Imputable').asBoolean) then
//  begin
//    _numCuenta := DBGRid1.DataSource.DataSet.FieldByName('num_Cuenta').AsString;
//
//    mTransaccion.first;
//    while not mTransaccion.eof  do
//    Begin
//      if mTransaccionNum_Cuenta.AsString = _numCuenta then
//         mTransaccion.Delete
//      else
//         mTransaccion.next;
//    end;
//  end;


  mTransaccion.Delete;

//  mTransaccion.First;
  if mTransaccion.Eof then
  begin
    rbDeposito.Enabled := true;
    rbRetiro.Enabled   := true;
  end;

end;

procedure TfrmCaja.btnNuevoClick(Sender: TObject);
begin
  inherited;

  mTransaccion.Close;
  mTransaccion.Open;
  edMontoTotal.Text := '0.00';
  tvHB.Enabled := True;

  //------
  montoDeposito    := 0.00;
  montoInteres     := 0.00;
  montoInteresAcum := 0.00;
  montoMora        := 0.00;
  montoCapital     := 0.00;

//  rbDeposito.Enabled := true;
//  rbRetiro.Enabled   := true;

end;

procedure TfrmCaja.btnReversarClick(Sender: TObject);
begin
  inherited;
  mTransaccion.Close;
  mTransaccion.Open;
  rbDeposito.Enabled := True;
  rbRetiro.Enabled   := true;
end;

//------------------------------------------------------------------------------
//                      Boton Salvar Transaccion
//...edw:
//------------------------------------------------------------------------------
procedure TfrmCaja.btnSalvarClick(Sender: TObject);
 var
  _Numrec : Integer;
  _total,_Monto  : Double;
  montoDeposito  : double;
begin
  inherited;
//---

 if not mTransaccion.eof then
 begin
   mTransaccion.first;
   if mTransaccionDocumento.AsString = '' then // Transaccion Aun no procesada
   Begin
     _Numrec := SigNumeroRecibo();
    //---------------------------------------------------------------------------
    //  Crea el registro de encabezado de transaccion en TRANSACCION_ENC
    //---------------------------------------------------------------------------
        DataModulo1.actualiza.close;
        DataModulo1.actualiza.SQL.Clear;
        DataModulo1.actualiza.SQL.Add('Insert Into transaccion_enc (');

        //----- Seccion de Campos
        DataModulo1.actualiza.SQL.Add(' Tipo_Documento');
        DataModulo1.actualiza.SQL.Add(',Documento');
        DataModulo1.actualiza.SQL.Add(',Fecha_Doc');
        DataModulo1.actualiza.SQL.Add(',Estado');
        DataModulo1.actualiza.SQL.Add(',Fecha_Aud');
        DataModulo1.actualiza.SQL.Add(',Usuario ) ');

        //----Seccion de Data
        DataModulo1.actualiza.SQL.Add('Values (');
        DataModulo1.actualiza.SQL.Add(QuotedStr('REC'));
        DataModulo1.actualiza.SQL.Add(',' + coma + IntToStr(_Numrec) + coma );
        DataModulo1.actualiza.SQL.Add(',' + coma + FormatDateTime('yyyy-mm-dd hh:nn:ss',now)    + coma );
        DataModulo1.actualiza.SQL.Add(',' + Coma + '1'               + coma );
        DataModulo1.actualiza.SQL.Add(',' + coma + FormatDateTime('yyyy-mm-dd hh:nn:ss',now)   + coma );
        DataModulo1.actualiza.SQL.Add(',' + coma + usuario           + coma + ')' );
        Memo1.Text :=     DataModulo1.actualiza.SQL.text ;
        //abort;
        DataModulo1.actualiza.ExecSQL;

    //--------------------------------------------------------------------------
    //  Crea  registros de Detalle  de transaccion en TRANSACCION_DET
    //--------------------------------------------------------------------------
    _Total        := 0.00;
    montoDeposito := 0.00;

    while not mTransaccion.eof do
    begin

      _Monto := mTransaccionEfectivo.Value +
               mTransaccionCheque.Value ;

     if (_Monto <> 0.00) and
        (mTransaccion.FieldByName ('Documento').AsString = '') then
     begin

       montoDeposito := montoDeposito + _Monto;
       _total := _total +  _Monto ;

       DataModulo1.actualiza.close;
       DataModulo1.actualiza.SQL.Clear;
       DataModulo1.actualiza.SQL.Add('Insert Into transaccion_det (');
       //----- Seccion de Campos
       DataModulo1.actualiza.SQL.Add(' Tipo_Documento');
       DataModulo1.actualiza.SQL.Add(',Documento'     );
       DataModulo1.actualiza.SQL.Add(',Fecha_Doc'     );
       DataModulo1.actualiza.SQL.Add(',num_cuenta'    );
       DataModulo1.actualiza.SQL.Add(',cuenta'        );
       DataModulo1.actualiza.SQL.Add(',naturaleza'    );
       DataModulo1.actualiza.SQL.Add(',monto'         );
       DataModulo1.actualiza.SQL.Add(',Efectivo'      );
       DataModulo1.actualiza.SQL.Add(',Cheque'        );
       DataModulo1.actualiza.SQL.Add(',Banco'         );
       DataModulo1.actualiza.SQL.Add(',NumCheque'     );
       DataModulo1.actualiza.SQL.Add(',fecha_aud'     );
       DataModulo1.actualiza.SQL.Add(',Usuario) '     );
       //----Seccion de Data
       DataModulo1.actualiza.SQL.Add('Values (');
       DataModulo1.actualiza.SQL.Add(QuotedStr('REC'));
       DataModulo1.actualiza.SQL.Add(',' + Coma + IntToStr(_Numrec) + Coma );
       DataModulo1.actualiza.SQL.Add(',' + Coma + FormatDateTime('yyyy-mm-dd hh:nn:ss',now) + Coma );
       DataModulo1.actualiza.SQL.Add(',' + Coma + mTransaccionNum_Cuenta.AsString   + Coma );
       DataModulo1.actualiza.SQL.Add(',' + Coma + mTransaccionCuenta.AsString       + Coma );
       DataModulo1.actualiza.SQL.Add(',' + Coma + mTransaccionNaturaleza.AsString   + Coma );
       DataModulo1.actualiza.SQL.Add(',' + Coma + FloatToStr(_Monto)                + Coma );
       DataModulo1.actualiza.SQL.Add(',' + Coma + mTransaccionEfectivo.AsString     + Coma );
       DataModulo1.actualiza.SQL.Add(',' + Coma + mTransaccionCheque.AsString       + Coma );
       DataModulo1.actualiza.SQL.Add(',' + Coma + mTransaccionBanco.AsString        + Coma );
       DataModulo1.actualiza.SQL.Add(',' + Coma + mTransaccionNumCheque.AsString        + Coma );

       DataModulo1.actualiza.SQL.Add(',' + Coma + FormatDateTime('yyyy-mm-dd hh:nn:ss',now) + Coma );
       DataModulo1.actualiza.SQL.Add(',' + Coma + usuario           + Coma          +  ' )' );
       DataModulo1.actualiza.ExecSQL;

       mTransaccion.Edit;
       mTransaccionTipoDoc.AsString    := 'REC';
       mTransaccionDocumento.AsInteger := _Numrec;

       mTransaccion.Next;

     end;
    end;

    //---------------------------------------------------------------------------
    //  Inserta el Registro de Caja General
    //---------------------------------------------------------------------------
    if montoDeposito <> 0.00  then
    Begin
     //---  Determina la cuenta de Caja General ...
     // edw ... Aqui debe recorrer la tabla de productoTrx y comparar
     //  en las columnas debito,credito la palabra montoDeposito
     //  y las cuenta asociada , debe afectar por el lado en que encuentra
     //insertarDetalleTrx
    {
     DataModulo1.productoTrx.close;
//     DataModulo1.productoTrx.Params [0].Value := ;

     DataModulo1.Generico.Close;
     DataModulo1.Generico.Sql.Clear;


     DataModulo1.Generico.Sql.Add('SELECT valor_string Cuenta , M.naturaleza  ' +
                                  'FROM Parametros P '                            +
                                  'Inner Join maescont M On P.valor_string = M.cuenta ');
     DataModulo1.Generico.Sql.Add('Where Aplicacion = ' + QuotedStr('CC') );
     DataModulo1.Generico.Sql.Add('and   Codigo     = ' + QuotedStr('4') );
     DataModulo1.Generico.Open;

     DataModulo1.actualiza.Close;
     DataModulo1.actualiza.Sql.Clear;
     DataModulo1.actualiza.SQL.Add('Insert Into transaccion_det (');

     //----- Seccion de Campos
     DataModulo1.actualiza.SQL.Add(' Tipo_Documento');
     DataModulo1.actualiza.SQL.Add(',Documento'     );
     DataModulo1.actualiza.SQL.Add(',Fecha_Doc'     );
     DataModulo1.actualiza.SQL.Add(',num_cuenta'    );
     DataModulo1.actualiza.SQL.Add(',cuenta'        );
     DataModulo1.actualiza.SQL.Add(',naturaleza'    );
     DataModulo1.actualiza.SQL.Add(',monto'         );
     DataModulo1.actualiza.SQL.Add(',fecha_aud'     );
     DataModulo1.actualiza.SQL.Add(',Usuario) '     );

     //----Seccion de Data
     DataModulo1.actualiza.SQL.Add('Values (');
     DataModulo1.actualiza.SQL.Add(QuotedStr('REC'));
     DataModulo1.actualiza.SQL.Add(',' + Coma + IntToStr(_Numrec) + Coma );
     DataModulo1.actualiza.SQL.Add(',' + Coma + FormatDateTime('yyyy-mm-dd hh:nn:ss',now) + Coma );
     DataModulo1.actualiza.SQL.Add(',' + coma + '0'               + Coma );
     DataModulo1.actualiza.SQL.Add(',' + Coma + DataModulo1.Generico.FieldByName('Cuenta').AsString     +  Coma );
     DataModulo1.actualiza.SQL.Add(',' + Coma + DataModulo1.Generico.FieldByName('Naturaleza').AsString +  Coma );
     DataModulo1.actualiza.SQL.Add(',' + Coma + FormatFloat('#0.00',_Total) + Coma );
     DataModulo1.actualiza.SQL.Add(',' + Coma + FormatDateTime('yyyy-mm-dd hh:nn:ss',now) + Coma );
     DataModulo1.actualiza.SQL.Add(',' + Coma + usuario           + Coma + ')' );
     DataModulo1.actualiza.ExecSQL;

     tvHB.Enabled := False;
                              }
     _tipoOperacion   := '';
      rbDeposito.Enabled := true;
      rbRetiro.Enabled   := true;
//      rbPago.Enabled     := true;

     //------------ Actualiza el TreeVeiw de Transacciones recientes -------------------
     recientes;

    End;
   end;
  end;

  mTransaccion.Close;
  mTransaccion.Open;
  rbDeposito.Enabled := true;
  rbRetiro.Enabled   := true;
end;

//------------------------------------------------------------------------------
//                        Siguiente Numero de Recibo   (SigNumeroRecibo)
//...edw: 2017-01-08
//------------------------------------------------------------------------------
function TfrmCaja.SigNumeroRecibo: Integer;
begin
//--
  DataModulo1.Generico.Close;
  DataModulo1.Generico.Sql.Clear;
  DataModulo1.Generico.sql.Add('Select Max(Documento) + 1  NumRec from transaccion_enc');
  DataModulo1.Generico.open;

  if not DataModulo1.Generico.Eof  then
    Result :=   DataModulo1.Generico.FieldbyName('NumRec').Value
  Else
    Result :=   1;

end;

procedure TfrmCaja.spDiasChange(Sender: TObject);
begin
  inherited;
  recientes;
end;

//==============================================================================
//                             Nombre btnInsertarLineaClick
// Descripcion:  Inserta lineas indivudales para trx
// LLamado Por:
//------------------------------------------------------------------------------
// Elavorado Por : Edwin Cedeño   |Fecha:                |Hora:
//==============================================================================
procedure TfrmCaja.btnInsertarLineaClick(Sender: TObject);
var
 _fechaTrx     : TDateTime;
begin
  inherited;
  if (rbDeposito.Checked) or (rbRetiro.Checked) then
  begin
    Application.CreateForm(Tfrmcuentas, frmcuentas);
    if frmcuentas.ShowModal = mrOk then
    begin
      mTransaccion.Append;
      mTransaccionFECHA.AsDateTime    := _fechaTrx;
      mTransaccionCuenta.AsString     := DataModulo1.CuentaContableFull.FieldByName('cuenta').AsString ;
      mTransaccionimputable.AsBoolean := True;

      if frmCuentas.esDebito.Checked  then
         mTransaccionNaturaleza.AsString := 'D';

      if frmCuentas.esCredito.checked  then
           mTransaccionNaturaleza.AsString := 'C';

      rbDeposito.Enabled := False;
      rbRetiro.Enabled   := false;
    end;
   end;



//   if DataModulo1.tblSociosfecha_nacimiento.AsString <> '' then
//     // frmcuentas.Fechas.Date := DataModulo1.tblSociosfecha_nacimiento.AsDateTime
//   else
//      frmCalendario.Fechas.Date := Date;
//
//   if frmCalendario.ShowModal = mrOk then
//   begin
//      DataModulo1.tblSocios.Edit;
//      DataModulo1.tblSociosfecha_nacimiento.AsDateTime  := frmCalendario.Fechas.Date;
//      lbEdad.Caption:=CalculaEdadCompleta(DataModulo1.tblSociosfecha_nacimiento.AsDateTime);
//   end;


end;

procedure TfrmCaja.tvHBClick(Sender: TObject);
begin
  inherited;
  DataModulo1.SPC.first;
  if not DataModulo1.SPC.Eof then
  Begin

    if (tvHB.Selected.Level = 2 ) then
    begin
      _target := 'tvHB';
      planPago;
      movimientos;
      pnlMivimientos.Height := pnlMivimientos.Height + 1;
      pnlMivimientos.Height := pnlMivimientos.Height - 1;

      _NumCuenta := Trim(tvHB.Selected.text); // este es el seleccionado del treeview
      if DataModulo1.SPC.Locate(upperCase('num_cuenta'),_numCuenta,[]) then
      begin

        //--- Validar de que no exista ya en la transaccion
        if mTransaccion.Locate ('num_cuenta',_numCuenta,[]) then
        begin
          _accept := false;
        end
        Else
        //--- No se ha agregado a la transaccion, por lo que se puede arrastrar
        Begin
          if (DataModulo1.SPC.FieldByName('prestamo_S_N').asstring = 'N') then
          begin
            if _tipoOperacion = 'D' then
              _accept := true;

            if _tipoOperacion = 'R' then
              _accept := true;
//
//          if _tipoOperacion = 'P' then
//             _accept := false;
          end
          else
          Begin
            if _tipoOperacion <> 'D' then
             _accept := false
            else
             _accept := true;
          End;
        end;
      end;
    end;
  End;

end;

procedure TfrmCaja.tvHBDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  inherited;
//  _target := 'tvHB';
end;


//------------------------------------------------------------------------------
//                        Procedimiento de Buscar
//...edw:
//------------------------------------------------------------------------------
procedure TfrmCaja.Buscar;
begin
  mTransaccion.Close;
  mTransaccion.Open;

  mMovimientos.Close;
  mMovimientos.open;

  DataModulo1.SPC.Close;
  DataModulo1.SPC.SQL.Clear;
  //--- Busqueda por No. de Socio.

  DataModulo1.SPC.SQL.Add('Select m.* ' +
              ', s.nombresubcuenta NombreProducto'     +
              ', S.Fiador '                            +
              ', S.prestamo_S_N'                       +
              ', S.ActivePage '                        +
              ', S.Cuenta '                            +
              ', S.InteresSobre '                      +
              ', S.calculaMora '                       +
              ', C.Apellido + ' + Quotedstr(', ')      +
              ' + C.Nombre NombreSocio'                +
              ', (c.ced1 + ' + quotedStr('-')          +
              ' + CAST(c.ced2 AS char(5)) + ' + quotedStr('-')+
              ' + CAST(c.ced3 AS char(5))) Cedula '    +
              ', I.Cuenta CuentaInt '                  +
              ', MC.Naturaleza'                        +
              ', MC.nombre');
  DataModulo1.SPC.SQL.Add('from maes_aux M ');
  DataModulo1.SPC.SQL.Add('Inner Join SubCuenta    S  on M.subcuenta = S.subcuenta ');
  DataModulo1.SPC.SQL.Add('Left  Join SubCuentaInt I  on M.subcuenta = I.SubCuenta and I.interes = ' + Quotedstr('S'));
  DataModulo1.SPC.SQL.Add('Inner Join Socios       C  on M.Socio     = C.Socio ');
  DataModulo1.SPC.SQL.Add('Inner Join maescont     MC on S.Cuenta    = MC.Cuenta ');

  if rbNsocio.Checked  then
  begin
    DataModulo1.SPC.SQL.Add('where M.Socio = ' + edFiltro.Text);
    DataModulo1.SPC.SQL.Add(' order by m.socio,subCuenta ');
  end;

  //--- Busqueda por Nombre del cliente
  if rbNombre.Checked  then
  begin
    DataModulo1.SPC.SQL.Add('where c.Nombre + ' + ' ' + 'c.Apellido Like ' + Quotedstr('%'+edFiltro.Text+'%'));
    DataModulo1.SPC.SQL.Add(' order by nombreSocio,subCuenta ');
  end;

  //--- Busqueda por Numero de Cuenta
  if rbCuenta.Checked  then
  begin
    DataModulo1.SPC.SQL.Add('where m.num_cuenta Like ' + Quotedstr(edFiltro.Text+'%'));
    DataModulo1.SPC.SQL.Add(' order by m.socio,m.subCuenta ');
  end;

  //--- Busqueda por Numero de Pasaporte Ruc
  if rbCuenta.Checked  then
  begin
    DataModulo1.SPC.SQL.Add('where m.pasaporteRuc Like ' + Quotedstr(edFiltro.Text+'%'));
    DataModulo1.SPC.SQL.Add(' order by m.socio,m.subCuenta ');
  end;

  //--- Busqueda por Cedula
  if rbCedula.Checked  then
  begin
    DataModulo1.SPC.SQL.Add('where C.Ced1 = ' + QuotedStr(ced1.Text) );
    DataModulo1.SPC.SQL.Add('and C.Ced2 = ' + ced2.Text );
    DataModulo1.SPC.SQL.Add('and C.Ced3 = ' + ced3.Text );
    DataModulo1.SPC.SQL.Add(' order by m.socio,m.subCuenta ');
  end;


  Memo1.Text := DataModulo1.SPC.SQL.text;
  DataModulo1.SPC.Open;

  if  Not DataModulo1.SPC.eof then
  Begin

    CargarVista;
  End
  Else
   tvHB.Items.Clear ;
end;

procedure TfrmCaja.c(Sender: TCustomTreeView; Node: TTreeNode;
  State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  inherited;

end;

//------------------------------------------------------------------------------
//                      CargarVista
//
//...edw:2017-01-05
//------------------------------------------------------------------------------
procedure TfrmCaja.CargarVista;
var
 Socio,TipoCuenta : string;
 N  : TTreeNode;
 ND : TTreeNode;
 NC : TTreeNode;

begin
//---
 //  tvHB.cl
   tvhb.Items.Clear;
   DataModulo1.SPC.First;
   if Not DataModulo1.SPC.eof then
   Begin
     Socio      := '' ; //Data1.cuentasSocioSocio.AsString ;
     TipoCuenta := '';
     DataModulo1.SPC.First;
     while Not DataModulo1.SPC.eof do
     Begin

       if Socio <> DataModulo1.SPC.FieldByName('Socio').AsString then
       Begin
         N  := tvHB.items.AddFirst(nil,
                  formatFloat('000000',
                  DataModulo1.SPC.FieldByName('Socio').AsInteger) +  ' - ' +
                  DataModulo1.SPC.FieldByName('NombreSocio').AsString +
                 ' [' + DataModulo1.SPC.FieldByName('Cedula').AsString +']' ) ;

         Socio := DataModulo1.SPC.FieldByName('Socio').AsString;
         TipoCuenta := '';
       End;
//
       if TipoCuenta <> DataModulo1.SPC.FieldByName('subcuenta').AsString then
       Begin
         NC  := tvHB.items.AddChild(N,'['                                 +
            DataModulo1.SPC.fieldbyName('subcuenta').AsString + '] '      +
            DataModulo1.SPC.fieldbyName('NombreProducto').AsString );
         TipoCuenta := DataModulo1.SPC.fieldbyName('subcuenta').AsString;
       End;

       ND := tvHB.items.AddChild(NC,DataModulo1.SPC.FieldByName('num_cuenta').AsString) ;

       DataModulo1.SPC.Next;
     End;
     tvHB.Enabled := True;
   End;

end;

procedure TfrmCaja.ced1Change(Sender: TObject);
begin
  inherited;

end;

//------------------------------------------------------------------------------
//                         Transacciones recientes
//...edw:
// esto carga el grid de transacciones receintes (tvHist)  por el usuario que
// ingresó.
//------------------------------------------------------------------------------
procedure TfrmCaja.recientes;
var
  dia : TDateTime ;
  N   : TTreeNode;
  ND  : TTreeNode;
  NC  : TTreeNode;
begin

  tvHist.Items.Clear;
  DataModulo1.recientes.Close;
  DataModulo1.recientes.Sql.Clear;
  DataModulo1.recientes.Sql.Add ('Select max(documento) documento ') ;
  DataModulo1.recientes.Sql.Add (',day(fecha_doc) dia') ;
  DataModulo1.recientes.Sql.Add (',MONTH(fecha_doc) mes');
  DataModulo1.recientes.Sql.Add (',year(fecha_doc) anio');
  DataModulo1.recientes.Sql.Add (',m.socio,s.Apellido,s.Nombre');
  DataModulo1.recientes.Sql.Add (',cast(t.fecha_doc as date) Fecha');
  DataModulo1.recientes.Sql.Add (',Cast(t.Fecha_Doc as Time) Hora');
  DataModulo1.recientes.Sql.Add ('from transaccion_det t');
  DataModulo1.recientes.Sql.Add ('inner Join maes_aux M on t.num_cuenta = M.num_cuenta');
  DataModulo1.recientes.Sql.Add ('inner join Socios S on m.Socio = s.Socio');
  DataModulo1.recientes.Sql.Add ('Where upper(t.usuario) = ' + QuotedStr(usuario) + ' and t.num_cuenta <> ' + quotedstr('0'));
  DataModulo1.recientes.Sql.Add (' and fecha_doc >=  GETDATE() - ' + spDias.Text);
  DataModulo1.recientes.Sql.Add ('  Group By t.fecha_doc,t.Documento ,year(fecha_doc)');
  DataModulo1.recientes.Sql.Add (',MONTH(fecha_doc),day(fecha_doc),m.socio,s.apellido,s.nombre');
  DataModulo1.recientes.Sql.Add (' Order by t.Fecha_doc desc , t.documento desc');
  DataModulo1.recientes.Open;

  if Not DataModulo1.recientes.eof then
  Begin
    DataModulo1.recientes.first;
    dia := StrToDateTime('01/01/1900');

    while Not DataModulo1.recientes.eof  do
    Begin

      if dia <> DataModulo1.recientesFecha.AsDateTime  then
      begin
         dia := DataModulo1.recientesFecha.AsDateTime;
         N  := tvHist.items.AddFirst(nil,FormatDateTime('dd-mmm',dia));
      end;

      NC := tvHist.items.AddChild(N,DataModulo1.recientesdocumento.AsString +' - ' +
            DataModulo1.recientesHora.AsString       );
      ND := tvHist.items.AddChild(NC,
            trim(DataModulo1.recientesNombre.AsString) + ' ' +
            trim(DataModulo1.recientesApellido.AsString) );

      DataModulo1.recientes.Next
    End;
  End;
end;

//------------------------------------------------------------------------------
//                         DBGrid1 CellClick
//...edw:
//------------------------------------------------------------------------------
procedure TfrmCaja.DBGrid1CellClick(Column: TColumn);
begin
  inherited;

  DBGrid1.Options := DBGrid1.Options - [dgEditing];

  if (mTransaccionimputable.AsBoolean = true) then
  begin
//
//  if (length(trim(mTransaccionNum_Cuenta.AsString)) > 0 ) and
//     (length(trim(mTransaccionDocumento.AsString)) = 0)   and
//     (mTransaccionimputable.AsBoolean = true) then
    if   (DBGrid1.SelectedField.FieldName   = 'Efectivo')  then
    begin
      DBGrid1.Options := DBGrid1.Options + [dgEditing];  // Adds dbEditing option
    end;

   DBGrid1.Hint := mTransaccionnombreCuenta.AsString;

   if  rbDeposito.Checked  then
   begin
    if   (DBGrid1.SelectedField.FieldName   = 'Efectivo') then
    begin
      DBGrid1.Options := DBGrid1.Options + [dgEditing];
    end;
   end;
  end;
end;

procedure TfrmCaja.DBGrid1ColExit(Sender: TObject);
begin
  inherited;

  if ((DBGrid1.SelectedField.FieldName   = 'Efectivo') or
      (DBGrid1.SelectedField.FieldName   = 'Cheque') ) and
     (DBGRid1.DataSource.DataSet.FieldByName('Orden').AsString = 'C') then
  begin
    DBGrid1.Options := DBGrid1.Options - [dgEditing];  // quita la propiedad de edicion
    AplicaDeposito;
  end;

end;



procedure TfrmCaja.DBGrid1DblClick(Sender: TObject);
var
_totalCheque : double;
_respuesta   : Integer;
begin
  inherited;
    if  (DBGrid1.SelectedField.FieldName   = 'Cheque') and
        (mTransaccionimputable.AsBoolean)              and
        ((_tipoOperacion = 'D') or (_tipoOperacion ='P')) then
    Begin
      //--- Ingresa monto por cheques
      Application.CreateForm(TfrmChequesCaja, frmChequesCaja);
      _respuesta := frmChequesCaja.ShowModal;
      _totalCheque := 0.00;
      if not DataModulo1.ChequesCaja.eof then
      begin
        DataModulo1.ChequesCaja.First ;
        while not DataModulo1.ChequesCaja.eof do
        begin
          _totalCheque := _totalCheque + DataModulo1.ChequesCajamonto.AsFloat;
          DataModulo1.ChequesCaja.next;
        end;
      end;
      mTransaccion.Edit;
      mTransaccionCheque.AsFloat := _totalCheque;

    end;
    AplicaDeposito;
    CalculaTotal;
end;

procedure TfrmCaja.DBGrid1DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  inherited;
 // showmessage(_target);

  if _target = 'tvHist' then
     _ArrastrarDocumento ;

  if _target = 'tvHB'  then
    if  _tipoOperacion <>  '' then
    begin
      rbDeposito.Enabled := false;
      rbRetiro.Enabled   := false;
      //rbPago.Enabled     := false;
      _ArrastrarCuenta;
    end
    else
       ShowMessage('Debe seleccionar una operacion ...');
end;

procedure TfrmCaja.DBGrid1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  inherited;
   Accept := _accept ;
end;

procedure TfrmCaja.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if Column.Field.Dataset.FieldbyName('imputable').AsBoolean then
  begin
     if (DBGrid1.Columns[DataCol].FieldName = 'Efectivo') or
        ((DBGrid1.Columns[DataCol].FieldName = 'Cheque')  and (_tipoOperacion <> 'R') ) then
         //--- cambia al color verde money
         DBGrid1.Canvas.Brush.color := clMoneyGreen;
  End;

  DBGrid1.DefaultDrawColumnCell(rect,DataCol,Column,State);
end;



//------------------------------------------------------------------------------
//                         DBGrid1 KeyPress
//...edw:
//------------------------------------------------------------------------------
procedure TfrmCaja.DBGrid1KeyPress(Sender: TObject; var Key: Char);
var
 _valor : String;
begin

  inherited;
  if (DBGRid1.DataSource.DataSet.FieldByName('Imputable').asBoolean)  then
  begin
    if  not length(trim(mTransaccionNum_Cuenta.AsString)) <=0  then
    begin

      if not (Key in [#8, '0'..'9','.',#13,#9]) then
      begin
         Key := #0;
      end;
    end;

    if (key = #13) or (key = #9) then
    begin

      if key = #9 then
         DBGrid1.Options := DBGrid1.Options - [dgEditing];

      AplicaDeposito;
      CalculaTotal;
    end;

  end;

end;



procedure TfrmCaja.DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    DBGrid1.Hint := mTransaccionnombreCuenta.AsString;
end;

procedure TfrmCaja.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
    if (Column.Index in [5,6,8,9,11,12]) then
    if dbgrid2.Columns [DataCol].Field.AsFloat < 0  then
//    dbgrid2.Columns[column.FieldName]
    begin
      dbgrid2.Canvas.Font.Color := clRed;
    end
    else
      dbgrid2.Canvas.Font.Color := clBlack;
    dbgrid2.DefaultDrawColumnCell(rect,DataCol,Column,State);
end;

//------------------------------------------------------------------------------
//                   dtstransaccion DataChange
//...edw:
//------------------------------------------------------------------------------
procedure TfrmCaja.dtstransaccionDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if mTransaccion.Eof then
  begin
     tvHist.Enabled     := True;
     tvHB.Enabled       := true;
     rbDeposito.Enabled := true;
     rbRetiro.Enabled   := true;
  end
  else
  begin
    rbDeposito.Enabled := false;
    rbRetiro.Enabled   := false;
  end;
  if mTransaccionDocumento.AsInteger <=0  then
     tvHist.Enabled := false
  else
  begin
   tvHist.Enabled := True;
   tvHB.Enabled   := false;
  end;
end;

procedure TfrmCaja.dtstransaccionUpdateData(Sender: TObject);
begin
  inherited;

end;

//------------------------------------------------------------------------------
//                           CalculaTotal
//...edw:
//------------------------------------------------------------------------------
procedure TfrmCaja.CalculaTotal;
var
  filas,i  : integer;
  _total : Double;
  _totalEfectivo : Double;
  _totalCheque   : Double;
  _cuenta : String;
  _guid   : string;
begin
  _cuenta := DBGRid1.DataSource.DataSet.FieldByName('Num_Cuenta').AsString ;
  _guid   := DBGRid1.DataSource.DataSet.FieldByName('guid').AsString ;

  DBGRid1.DataSource.DataSet.First ;
  _total  := 0.00;
  _totalEfectivo := 0.00;
  _totalCheque   := 0.00;
  DBGRid1.DataSource.DataSet.First ;
  while not DBGRid1.DataSource.DataSet.eof do
  begin
    if DBGRid1.DataSource.DataSet.FieldByName('Orden').AsString <> 'T'  then
    begin
      _total := _total +
              ( DBGRid1.DataSource.DataSet.FieldByName('Efectivo').AsFloat +
                DBGRid1.DataSource.DataSet.FieldByName('Cheque').AsFloat  ) ;
      _totalEfectivo := _totalEfectivo +
                         DBGRid1.DataSource.DataSet.FieldByName('Efectivo').AsFloat;
      _totalCheque   := _totalCheque +
                         DBGRid1.DataSource.DataSet.FieldByName('Cheque').AsFloat;
    end;
    DBGRid1.DataSource.DataSet.next;
  end;

  //--- actualiza la cuenta de Caja General o Rembolso de Caja
//  if _total > 0  then
//  begin
    DBGRid1.DataSource.DataSet.First ;

    while not DBGRid1.DataSource.DataSet.eof do
    begin
      if DBGRid1.DataSource.DataSet.FieldByName('Orden').AsString = 'T'  then
      begin
        mTransaccion.Edit;
        mTransaccionEfectivo.AsFloat := _totalEfectivo;
        mTransaccionCheque.AsFloat   := _totalCheque;
        mTransaccionMonto.AsFloat    := _total;
        mTransaccionSaldo.AsFloat    := mTransaccionSaldoO.AsFloat + _total;
      end;
      DBGRid1.DataSource.DataSet.next;
    end;
//  end;

  edMontoTotal.Text := FormatFloat('#,##0.00',_total);
  mTransaccion.Locate('guid',_guid,[]);


//
//  mTransaccion.Edit;
//  if mTransaccionNaturaleza.AsString = 'C' then
//     mTransaccion.FieldByName('SaldoT').AsFloat  := mTransaccionSaldo.AsFloat +
//                 ( DBGRid1.DataSource.DataSet.FieldByName('Efectivo').AsFloat +
//                   DBGRid1.DataSource.DataSet.FieldByName('Cheque').AsFloat   ) ;
//
//  if mTransaccionNaturaleza.AsString = 'D' then
//     mTransaccion.FieldByName('SaldoT').AsFloat  := mTransaccionSaldo.AsFloat -
//                  ( DBGRid1.DataSource.DataSet.FieldByName('Efectivo').AsFloat +
//                    DBGRid1.DataSource.DataSet.FieldByName('Cheque').AsFloat   ) ;

end;

//------------------------------------------------------------------------------
//                         edFiltro KeyPress
//...edw:
//------------------------------------------------------------------------------
procedure TfrmCaja.edFiltroClick(Sender: TObject);
var
_enabled : boolean;
begin
  inherited;
  _enabled := false;
  if rbNsocio.Checked  then
    _enabled := true;
  if rbNombre.Checked  then
    _enabled := true;
  if rbCuenta.Checked  then
    _enabled := true;
  if rbCedula.Checked  then
    _enabled := true;
  if rbPasaporteRuc.Checked  then
    _enabled := true;

  edFiltro.Enabled := _enabled ;




end;

procedure TfrmCaja.edFiltroExit(Sender: TObject);
begin
  inherited;
//  Buscar;

end;

procedure TfrmCaja.edFiltroKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if rbNsocio.Checked then
  begin
    //---
      if not (Key in [#8, '0'..'9',#13]) then
      begin
         Key := #0;
      end;
  end;
  if key = #13 then
    Buscar;
end;

//------------------------------------------------------------------------------
//                         edFiltro RightButtonClick
//...edw:
//------------------------------------------------------------------------------
procedure TfrmCaja.edFiltroRightButtonClick(Sender: TObject);
begin
  inherited;
  edFiltro.Clear;
end;

procedure TfrmCaja.edMontoTotalChange(Sender: TObject);
begin
  inherited;
end;

//------------------------------------------------------------------------------
//                         On show Formulario
//...edw:2017-01
//------------------------------------------------------------------------------
procedure TfrmCaja.FormShow(Sender: TObject);
begin
  inherited;
  pnFiltro1.Top  := 12;
  pnFiltro2.Top  := pnFiltro1.Top;
//pnFiltro1.Left := 427;
  pnFiltro2.Left := pnFiltro2.Left;
  pnfiltro2.Visible := false;


  mTransaccion.Close;
  mTransaccion.Open;

  DataModulo1.Bancos.Close;
  DataModulo1.Bancos.open;

  //---- LLama las transacciones recientes del usuario....
  Recientes;

  dpFecha.DateTime := now;
  memo2.Clear;
end;


//------------------------------------------------------------------------------
//  Movimientos:
//             Carga la tabla temporal de movimientos, La cual carga
//             el dbgrid2 , que muestra los movimientos en pantalla
//...edw:
//-------------------------------------------------------------
procedure TfrmCaja.movimientos;
var
  _numCuenta    : string;
  _saldoCapital : Double;
  _saldoMora    : Double;
  _saldoInteres : Double;
  i,_signo      : int32;
  _orden        : String;
begin
   _numCuenta := tvHB.Selected.Text ;
   lblNumCuenta.Text := _numCuenta;
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
     mMovimientos.ControlsDisabled;

     while Not DataModulo1.movimientosCuenta.eof do
     begin
        mMovimientos.Append;
        for I := 0 to DataModulo1.movimientosCuenta.FieldCount - 1  do
        Begin
          mMovimientos.Fields[I].Value := DataModulo1.movimientosCuenta.Fields[i].Value;
        End;

        //--- Verifica que el moviemiento tenga la misma naturaleza
        if mMovimientosnaturaleza.AsString = mMovimientos_dc.AsString  then
        begin
            //--- Mantiene el mismo signo con el que se configuro
            //    en la tabla de productosTrx (mantenimiento de productos)
            if mMovimientosSigno.AsString = '-' then
            begin
              _signo := -1
            end
            else
              _signo := 1;
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


//        if mMovimientos_dc.AsString = mMovimientosnaturaleza.AsString then
//        begin
//          _signo := 1;
//        end
//        else
//          _signo := -1;

        mMovimientosmontoCapital.Value := mMovimientosmontoCapital.Value * _signo;
        mMovimientosmontoInteres.Value := mMovimientosmontoInteres.Value * _signo;
        mMovimientosmontoMora.Value    := mMovimientosmontoMora.Value    * _signo;

        _saldoCapital := _saldoCapital + mMovimientosmontoCapital.AsFloat;
        _saldoInteres := _saldoInteres + mMovimientosmontoInteres.AsFloat;
        _saldomora    := _saldoMora    + mMovimientosmontoMora.AsFloat;


//
//        if DataModulo1.movimientosCuentanaturaleza.AsString =   'D' then
//        begin
//         _saldoCapital := _saldoCapital + DataModulo1.movimientosCuentamontoCapital.AsFloat;
//         _saldoInteres := _saldoInteres + DataModulo1.movimientosCuentamontoInteres.AsFloat;
//         _saldomora    := _saldoMora    + DataModulo1.movimientosCuentamontoMora.AsFloat;
//        end
//        else
//        Begin
//         _saldoCapital := _saldoCapital - DataModulo1.movimientosCuentamontoCapital.AsFloat;
//         _saldoInteres := _saldoInteres - DataModulo1.movimientosCuentamontoInteres.AsFloat;
//         _saldomora    := _saldoMora    - DataModulo1.movimientosCuentamontoMora.AsFloat;
//        End;
//
// //}

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

     mMovimientos.EnableControls;
//     DBGrid2.Hide;
//     DBGrid2.Show;
   end;


end;

function TfrmCaja.Pagos(Num_Cuenta: string): double;
begin
//---
  //c_numCuenta := tvHB.Selected.Text ;
  lbl_PPP_Cuenta.Text := tvHB.Selected.Text;
  DataModulo1.Pagos.Close;
  DataModulo1.Pagos.Params [0].AsString := num_cuenta;
  DataModulo1.Pagos.Open;

  if (DataModulo1.PagosPagos.AsFloat <> 0)  and
     not varisnull(DataModulo1.PagosPagos.AsFloat) then
  begin
    Result := DataModulo1.PagosPagos.AsFloat ;
  end
  Else
    Result := 0.00;


end;

procedure TfrmCaja.planPago;
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
//--
   _numCuenta := tvHB.Selected.Text ;
   mplanPago.close;
   mPlanPago.Open;
   //---------------------------------------------------------------------------
   // Aqui debe buscar en el meas_aux (SPC) con un locate por num_cuenta

   if DataModulo1.SPC.Locate('num_cuenta',_numCuenta,[]) then
   begin

     // ---- Valida si es un prestamo ----
     if DataModulo1.SPC.FieldByName('prestamo_S_N').AsString = 'S' then
     begin
       //---
       _letra       := DataModulo1.SPC.FieldByName('letra').AsFloat;
       _saldo       := DataModulo1.SPC.FieldByName('monto').AsFloat;
       _tipoTasa    := DataModulo1.SPC.FieldByName('tipo_periodo_tasa').AsInteger;
       _plazoMeses  := DataModulo1.SPC.FieldByName('plazo').AsInteger;
       _tasa        := DataModulo1.SPC.FieldByName('tasa').AsFloat;
       _inicio      := DataModulo1.SPC.FieldByName('Fecha_Inicio').AsDateTime;

       //----
       _cuotas := trunc(_plazoMeses / _tipoTasa);

       //----- Calcula los Pagos realizados (sum)
       _Pagos := Pagos(_NumCuenta) ;

       for I := 1 to _cuotas do
       begin
         mplanPago.Append;
         mPlanPagonPago.Value        := i;
         _inicio := IncMonth(_inicio, _tipoTasa);
         mPlanPagofechaPago.Value    := _inicio;
         mPlanPagoletra.Value        := _letra;

         if _letra >= _Pagos then
         begin
           mPlanPagoPago.AsFloat := _Pagos;
           _pagos := 0.00;
         end
         Else
         Begin
           _Pagos := _Pagos - _Letra;
           mPlanPagoPago.AsFloat := _Letra;
         End;
         //--- Calcula el saldo de la letra

         mPlanPagoSaldo.AsFloat :=
           mPlanPagoletra.AsFloat - mPlanPagoPago.AsFloat;

         mPlanPagosaldoInicial.Value := _saldo ;
         _Saldo := _saldo - _letra;
         mPlanPagosaldoFinal.Value   := _saldo;
       end;

     end;
   end;
end;

procedure TfrmCaja.rbCedulaClick(Sender: TObject);
begin
  inherited;
  pnFiltro1.Visible:=true;
  pnFiltro2.Visible:=false;
  edFiltro.Clear ;
  edFiltro.Enabled := true;
  edFiltro.SetFocus;
end;

procedure TfrmCaja.rbCuentaClick(Sender: TObject);
begin
  inherited;
  pnFiltro1.Visible:=true;
  pnFiltro2.Visible:=false;
  edFiltro.Clear ;
  edFiltro.Enabled := true;
  edFiltro.SetFocus;
end;



procedure TfrmCaja.rbNombreClick(Sender: TObject);
begin
  inherited;
  pnFiltro1.Visible:=true;
  pnFiltro2.Visible:=false;
  edFiltro.Clear ;
  edFiltro.Enabled := true;
  edFiltro.SetFocus;
end;

procedure TfrmCaja.rbNsocioClick(Sender: TObject);
begin
  inherited;
  pnFiltro1.Visible:=true;
  pnFiltro2.Visible:=false;
  edFiltro.Clear ;
  edFiltro.Enabled := true;
  edFiltro.SetFocus;
end;


//==============================================================================
//                             Nombre rbDepositoClick
// Descripcion:  Seleccion de Deposito o Pago
// LLamado Por:
//------------------------------------------------------------------------------
// Elavorado Por : Edwin Cedeño   |Fecha:                |Hora:
//==============================================================================
procedure TfrmCaja.rbDepositoClick(Sender: TObject);
begin
  inherited;
  if rbDeposito.Checked  then
  begin
     //--- Limpia el area de trabajo trx
     mTransaccion.close;
     mTransaccion.Open;

     _tipoOperacion := 'D';
     DataModulo1.tipoTransaccion.Close;
     DataModulo1.tipoTransaccion.Params[0].AsString  := _tipoOperacion;
     DataModulo1.tipoTransaccion.Open;

     if  not DataModulo1.tipoTransaccion.eof then
     Begin

      //--- Inserta la cuenta de Caja como primer registro de la transaccion
      //--- Validando primero si no existe ya en trx
      if not (mTransaccion.Locate('cuenta',DataModulo1.tipoTransaccioncuentaContable.AsString,[])) then
      begin
        mTransaccion.append;
        mTransaccionCuenta.AsString     := DataModulo1.tipoTransaccioncuentaContable.AsString ;
        mTransaccionNaturaleza.AsString := DataModulo1.tipoTransaccionorden.AsString ;
        mTransaccionimputable.AsBoolean := false;
        mTransaccionOrden.AsString := 'T';
      end;

     End;

  end;
end;

procedure TfrmCaja.rbPagoClick(Sender: TObject);
begin
  inherited;
//
//  if rbPago.Checked  then
//  begin
//     _tipoOperacion := 'P';
//     DataModulo1.tipoTransaccion.Close;
//     DataModulo1.tipoTransaccion.Params[0].asstring:= _tipoOperacion;
//     DataModulo1.tipoTransaccion.Open;
//  end;
end;

procedure TfrmCaja.rbRetiroClick(Sender: TObject);
begin
  inherited;
  if rbRetiro.Checked  then
  begin
     //--- Limpia  el area de trabajo
     mTransaccion.close;
     mTransaccion.Open;


     _tipoOperacion := 'R';
     DataModulo1.tipoTransaccion.Close; // busca el tipo de transaccion para determinar la cuenta de caja
     DataModulo1.tipoTransaccion.Params[0].asstring := _tipoOperacion;
     DataModulo1.tipoTransaccion.Open;

      //--- Inserta la cuenta de Caja como primer registro de la transaccion
      //--- Validando primero si no existe ya en trx
      if not (mTransaccion.Locate('cuenta',DataModulo1.tipoTransaccioncuentaContable.AsString,[])) then
      begin
        mTransaccion.append;
        mTransaccionCuenta.AsString     := DataModulo1.tipoTransaccioncuentaContable.AsString ;
        mTransaccionNaturaleza.AsString := DataModulo1.tipoTransaccionorden.AsString ;
        mTransaccionimputable.AsBoolean := false;
        mTransaccionOrden.AsString := 'T';
      end;

  end;
end;

//------------------------------------------------------------------------------
//                   doble Click en treview (Seleccion de cuenta)
//...edw: 2017-01-08
//------------------------------------------------------------------------------
procedure TfrmCaja.tvHistDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  inherited;
  _target := 'tvHist';
end;

//------------------------------------------------------------------------------
//                         Arrastrar Cuenta
//...edw:
//------------------------------------------------------------------------------
procedure TfrmCaja._ArrastrarCuenta;
var
 _NumCuenta    : String;
 _cuenta       : string;
 _InteresSobre : string;
 _subCuenta    : string;
 _tipoTrx      : String;
 _fechaTrx     : TDateTime;
// _tasa         : double;
 MyGuid0, MyGuid1 : TGUID;
 _guid         : string;

begin
  inherited;
  if tvHB.Selected.Level = 2 then
  Begin
    _NumCuenta := Trim(tvHB.Selected.text); // este es el seleccionado del treeview
    _fechatrx  := now;
    _tipoTrx   := '';

    rbDeposito.Enabled := false;
    rbRetiro.Enabled   := false;

    // Buscar por tipo de transaccion y tipo de producto en la tabla de
    // [productoTrx], para cargar en el grid
    // Se coloca en el registro correspondiente en la tabla de maes_aux
    if DataModulo1.SPC.Locate('num_cuenta',_numCuenta,[]) then
    begin

      //--- Inserta la cuenta de Caja como primer registro de la transaccion
      //--- Validando primero si no existe ya en trx
      if not (mTransaccion.Locate('cuenta',DataModulo1.tipoTransaccioncuentaContable.AsString,[])) then
      begin
        mTransaccion.append;
        mTransaccionCuenta.AsString     := DataModulo1.tipoTransaccioncuentaContable.AsString ;
        mTransaccionNaturaleza.AsString := DataModulo1.tipoTransaccionorden.AsString ;
        mTransaccionimputable.AsBoolean := false;
      end;

      //--- Selecciona los datos del asiento contable de productoTrx ---
      DataModulo1.productoTrx.Close;
      DataModulo1.productoTrx.Params[0].value := DataModulo1.SPC.FieldByName('subcuenta').AsInteger ;
      DataModulo1.productoTrx.Params[1].Value := _tipoOperacion ;
      DataModulo1.productoTrx.open;

      if not DataModulo1.productoTrx.eof then
      Begin
        DataModulo1.productoTrx.first;
        while not DataModulo1.productoTrx.eof do
        Begin
          //--- Inserta desde la plantilla de Transaccion, las cuentas en la
          //--- transaccion.
          mTransaccion.append;
          mTransaccionCuenta.AsString     := DataModulo1.productoTrxcuenta.AsString ;
          mTransaccionimputable.AsBoolean := DataModulo1.productoTrxesimputable.AsBoolean ;
          mTransaccionNum_Cuenta.AsString := _numCuenta;

          //--- Identifica si se trata de Mora
          if (DataModulo1.productoTrxdebito.AsString   = 'montoMora' ) or
             (DataModulo1.productoTrxcredito.AsString  = 'montoMora' ) then
          begin
             mTransacciontipoCuenta.AsString := 'M';
            //------ Calcular la mora
            mMovimientos.Last;
            montoMora  := mMovimientossaldoMora.AsFloat;

            mTransaccionFECHA.AsDateTime    := _fechaTrx;
            mTransaccionNum_Cuenta.AsString := _NumCuenta;
            mTransaccionSaldoO.AsFloat      := montoMora;
            mTransaccionSaldo.AsFloat       := montoMora;
            mTransaccionOrden.AsString      := 'M';
          end;

          //--- Identifica si se trata de Interes
          if (DataModulo1.productoTrxdebito.AsString   = 'montoInteres' ) or
             (DataModulo1.productoTrxcredito.AsString  = 'montoInteres' ) then
          Begin
             mTransacciontipoCuenta.AsString := 'I';
             _InteresSobre := DataModulo1.SPC.FieldByName('InteresSobre').AsString;
             montoInteres := CalculaInteres(_NumCuenta, DataModulo1.SPC.FieldByName('Cuenta').AsString, _InteresSobre);
             mTransaccionFECHA.AsDateTime    := _fechaTrx;
             mTransaccionNum_Cuenta.AsString := _NumCuenta;
             mTransaccionSaldoO.AsFloat      := montoInteres;
             mTransaccionSaldo.AsFloat       := montoInteres;
             mTransaccionOrden.AsString      := 'I';
          End;

          //--- Identifica si se trata de Capital
          if (DataModulo1.productoTrxdebito.AsString   = 'montoCapital' ) or
             (DataModulo1.productoTrxcredito.AsString  = 'montoCapital' ) then
          Begin
             mTransacciontipoCuenta.AsString := 'C';
             mTransaccionOrden.AsString      := 'C';
             //--- LLamado a la funcion de calculo de Saldo de Capital
          End;

//
//            DataModulo1._guid ();
//
//            CreateGUID(MyGUID1);
//            GUIDToString(MyGuid1);
//            _guid := GUIDToString(MyGuid1);

          mTransaccionguid.asstring       :=  DataModulo1._guid ();

          // ubica la naturaleza de la cuenta
          if DataModulo1.productoTrxdebito.AsString  <> '' then
             mTransaccionNaturaleza.AsString := 'D'
          else
            if DataModulo1.productoTrxCredito.AsString <> '' then
               mTransaccionNaturaleza.AsString := 'C';


          // Identifica la cuenta principal
          if DataModulo1.productoTrxprincipal.AsBoolean  then
          begin

            //--- Identifica que es un Prestamo
            if DataModulo1.SPC.FieldByName('Prestamo_S_N').AsString = 'S' then
            begin
              mTransaccionPrestamo_SN.AsString := DataModulo1.SPC.FieldByName('Prestamo_S_N').AsString;
            end;

            //--------------------------------------------------------------------
            // Calcula el Saldo actual
            //--------------------------------------------------------------------
            _cuenta := DataModulo1.SPC.FieldByName('Cuenta').AsString;
            DataModulo1.CuentaSaldo.Close;
            DataModulo1.CuentaSaldo.Params [0].AsString := _NumCuenta;
            DataModulo1.CuentaSaldo.Params [1].AsString := _cuenta;
            DataModulo1.CuentaSaldo.Open;

            mTransaccionSaldo.AsFloat   :=  0.00;
            mTransaccionSaldoO.AsFloat  :=  0.00;
            mTransaccionSaldoT.AsFloat  :=  0.00;

            if not DataModulo1.CuentaSaldo.eof then
            Begin

              mTransaccionSaldoO.AsFloat :=  DataModulo1.CuentaSaldoDebito.AsFloat -
                                           DataModulo1.CuentaSaldoCredito.AsFloat ;
              mTransaccionSaldo.AsFloat  :=  mTransaccionSaldoO.AsFloat;
              mTransaccionSaldoT.AsFloat :=  mTransaccionSaldoO.AsFloat;
            End;

          end;
          DataModulo1.productoTrx.Next;
            //  DataModulo1.SPC.FieldByName('Cuenta').AsString;
        End;
      End;
    end;







//
//        // Se coloca en el registro correspondiente en la tabla de maes_aux
//        if DataModulo1.SPC.Locate('num_cuenta',_numCuenta,[]) then
//        begin
//          mTransaccionCuenta.AsString       := DataModulo1.SPC.FieldByName('Cuenta').AsString;
//          mTransaccionnombreCuenta.AsString := DataModulo1.SPC.FieldByName('Cuenta').AsString + ' - ' +
//                    DataModulo1.SPC.FieldByName('nombre').AsString;
//          mTransaccionimputable.AsBoolean := True;
//          mTransaccionOrden.AsString      := 'C';
//          _cuenta                         := DataModulo1.SPC.FieldByName('Cuenta').AsString;
//          _subCuenta                      := DataModulo1.SPC.FieldByName('subCuenta').AsString;
//          mTransaccionNaturaleza.AsString := DataModulo1.SPC.FieldByName('Naturaleza').AsString;
//    //      _tasa                           := DataModulo1.SPC.FieldByName('tasa').asFloat;
//          _InteresSobre                   := DataModulo1.SPC.FieldByName('InteresSobre').AsString;
//
//          //--------------------------------------------------------------------
//          // Calcula el Saldo actual
//          //--------------------------------------------------------------------
//          DataModulo1.CuentaSaldo.Close;
//          DataModulo1.CuentaSaldo.Params [0].AsString := _NumCuenta;
//          DataModulo1.CuentaSaldo.Params [1].AsString := _cuenta;
//          DataModulo1.CuentaSaldo.Open;
//
//          mTransaccionSaldo.AsFloat   :=  0.00;
//          mTransaccionSaldoO.AsFloat  :=  0.00;
//          mTransaccionSaldoT.AsFloat  :=  0.00;
//
//          if not DataModulo1.CuentaSaldo.eof then
//          Begin
//
//            mTransaccionSaldoO.AsFloat :=  DataModulo1.CuentaSaldoDebito.AsFloat -
//                                           DataModulo1.CuentaSaldoCredito.AsFloat ;
//            mTransaccionSaldo.AsFloat  :=  mTransaccionSaldoO.AsFloat;
//            mTransaccionSaldoT.AsFloat :=  mTransaccionSaldoO.AsFloat;
//          End;
//
//
//          //----------------------------------------------------------
//          // Verifica Si es un prestamo
//          if DataModulo1.SPC.FieldByName('Prestamo_S_N').AsString = 'S' then
//          begin
//            mTransaccionPrestamo_SN.AsString := DataModulo1.SPC.FieldByName('Prestamo_S_N').AsString;
//            // LLamado a Funcion del calculo de interes
//            //   se le debe enviar como parametro
//            //   1). No. cuenta
//            //   2). tipo de interes (S=Sobre Saldo , P= Sobre Monto del Prestamo)
//            montoInteres := CalculaInteres(_NumCuenta, DataModulo1.SPC.FieldByName('Cuenta').AsString, _InteresSobre);
//
//            // Insertar Fila de Intereses
//            mTransaccion.Append;
//            mTransaccionFECHA.AsDateTime    := _fechaTrx;
//            mTransaccionNum_Cuenta.AsString := _NumCuenta;
//            mTransaccionSaldoO.AsFloat      := montoInteres;
//            mTransaccionSaldo.AsFloat       := montoInteres;
//            mTransaccionOrden.AsString      := 'I';
//
//            //------ Calcular la mora
//            mMovimientos.Last;
//            montoMora  := mMovimientossaldoMora.AsFloat;
//
//            mTransaccion.Append;
//            mTransaccionFECHA.AsDateTime    := _fechaTrx;
//            mTransaccionNum_Cuenta.AsString := _NumCuenta;
//            mTransaccionSaldoO.AsFloat      := montoMora;
//            mTransaccionSaldo.AsFloat       := montoMora;
//            mTransaccionOrden.AsString      := 'M';
//
//
//          end;
//        end;

        tvHist.Enabled := False;

  End;
End;


//------------------------------------------------------------------------------
//               Calcula Saldo Actual de la cuenta Capital(Principal)
//...edw:2017-05-19 8:51am
//------------------------------------------------------------------------------
function TfrmCaja.CalculaSaldoActual(numCuenta: String; cuenta: String): double;
begin
          DataModulo1.CuentaSaldo.Close;
          DataModulo1.CuentaSaldo.Params [0].AsString := numCuenta;
          DataModulo1.CuentaSaldo.Params [1].AsString := cuenta;
          DataModulo1.CuentaSaldo.Open;
//
          mTransaccionSaldo.AsFloat   :=  0.00;
          mTransaccionSaldoO.AsFloat  :=  0.00;
          mTransaccionSaldoT.AsFloat  :=  0.00;
//
          if not DataModulo1.CuentaSaldo.eof then
          Begin

            mTransaccionSaldoO.AsFloat :=  DataModulo1.CuentaSaldoDebito.AsFloat -
                                           DataModulo1.CuentaSaldoCredito.AsFloat ;
            mTransaccionSaldo.AsFloat  :=  mTransaccionSaldoO.AsFloat;
            mTransaccionSaldoT.AsFloat :=  mTransaccionSaldoO.AsFloat;
          End;

end;


//------------------------------------------------------------------------------
//                           Calcula Interes del Prestamo
//...edw:2017-03-04
//------------------------------------------------------------------------------
function TfrmCaja.CalculaInteres(numCuenta: String; cuenta: String; interesSobre: String): double;
var
 _tasa      : Double;
 _intereses : Double;
 _mora      : Double;
 _saldo     : Double;  // Saldo del Prestamo a la ultima fecha de pago
 _fechaPago : TDateTime;
 _dias      : Int16;
begin
 // Buscar el Interes en el  SPC
  _tasa :=  DataModulo1.SPC.FieldByName('tasa').AsFloat;

 // debe ubicar el ultimo pago realizado, esto verificando cuenta en el transaccional y
 // que el numero de cuenta sea igual a numCuenta (Cuenta Principal)

 DataModulo1.Generico.Close;
 DataModulo1.Generico.SQL.Clear;
 DataModulo1.Generico.SQL.Add('Select max(fecha_doc) as FechaPago from transaccion_det ') ;
 DataModulo1.Generico.SQL.Add(' where num_cuenta = ' + QuotedStr(numCuenta)) ;
 DataModulo1.Generico.SQL.Add(' and cuenta = '       + QuotedStr(cuenta));
 DataModulo1.Generico.Open;

 _intereses := 0.00;
 //*----------------------------------------------------------------------------
 // Calcula el saldo a la fecha del ultimo pago
 // y Calcula el Interes
 if not DataModulo1.Generico.eof  then
 Begin
   _fechaPago := DataModulo1.Generico.FieldByName('FechaPago').AsDateTime;
   _dias      := trunc(dpFecha.Date  - _fechaPago + 1 );  // se suma uno (1)
                                                          // ya que incluye el dia actual
                                                          // como parte del calculo
    DataModulo1.Generico.Close;
    DataModulo1.Generico.SQL.Clear;
    DataModulo1.Generico.SQL.Add('Select ');
    DataModulo1.Generico.SQL.Add(' Sum(Case naturaleza When ' + quotedStr('D') + ' Then monto Else 0 End) as Debito ') ;
    DataModulo1.Generico.SQL.Add(',Sum(Case naturaleza When ' + quotedStr('C') + ' Then monto Else 0 End) as Credito ') ;
    DataModulo1.Generico.SQL.Add('From Transaccion_det ') ;
    DataModulo1.Generico.SQL.Add('where num_cuenta     = '  + quotedstr(numCuenta));
    DataModulo1.Generico.SQL.Add('      and     cuenta = '  + QuotedStr(cuenta));
    DataModulo1.Generico.SQL.Add('      and     cuenta = '  + QuotedStr(cuenta));
    DataModulo1.Generico.SQL.Add('      and fecha_doc <= ' + quotedStr(FormatdateTime('yyyy-mm-dd',_fechaPago)));
    DataModulo1.Generico.Open;

    if not DataModulo1.Generico.eof  then
    begin
      //---
      _saldo := DataModulo1.Generico.FieldByName('Debito').AsFloat  -
                DataModulo1.Generico.FieldByName('Credito').AsFloat;
    end;

    //--------------------------------------------------------------------------
    // calculo del interes
    _intereses := (_saldo * ((_tasa / 360 ) / 100) * _dias );


 End; //--- Fin
 result := _intereses;
end;


procedure TfrmCaja.AplicaDeposito;
var
 _numCuenta  : string;
 _deposito   : Double;
 _prestamo_SN: string;
 _guid       : string;
begin

 _guid        := DBGRid1.DataSource.DataSet.FieldByName('guid').AsString ;
 _prestamo_SN := DBGRid1.DataSource.DataSet.FieldByName('Prestamo_SN').AsString ;
 _numCuenta   := DBGRid1.DataSource.DataSet.FieldByName('Num_Cuenta').AsString ;
 _deposito    := DBGRid1.DataSource.DataSet.FieldByName('Efectivo').AsFloat +
                 DBGRid1.DataSource.DataSet.FieldByName('Cheque').asFloat ;

 if _prestamo_SN = 'S' then
 Begin
   if _deposito >= 0 then
   Begin
     _deposito := AplicarDeposito(_numCuenta,_deposito,'M');
   end;
   if _deposito >= 0 then
   Begin
     _deposito := AplicarDeposito(_numCuenta,_deposito,'I');
   end;
   if _deposito >= 0 then
   Begin
     _deposito := AplicarDeposito(_numCuenta,_deposito,'C');
     if _deposito > 0  then
     begin
         if mTransaccion.Locate('imputable',true,[]) then
         begin
           mTransaccion.Edit;
           mTransaccionSaldo.AsFloat := _deposito * -1 ;//0.00;
         end;
     end;
   end;
 end
 Else
 Begin
  mTransaccion.locate('guid',_guid,[]);
  mTransaccion.Edit;
  mTransaccionMonto.AsFloat := _deposito;
  if _tipoOperacion = 'D' then
    mTransaccionSaldo.AsFloat := mTransaccionSaldoO.AsFloat + _deposito;

  if _tipoOperacion = 'R' then
  begin
    if _deposito > mTransaccionSaldo.AsFloat then
    begin
      ShowMessage('Fondos Insuficientes...');
      mTransaccionSaldo.AsFloat := mTransaccionSaldoO.AsFloat ;
      mTransaccionEfectivo.AsFloat := 0.00;
      mTransaccionMonto.AsFloat    := 0.00;
      _deposito := 0.00;
    end
    Else
    begin
      mTransaccionSaldo.AsFloat    := mTransaccionSaldoO.AsFloat - _deposito;
    end;
  end;
 End;


// while not mTransaccion.eof do
// Begin
//   if (mTransaccionNum_Cuenta.AsString  = _numCuenta) and
//      (mTransaccionOrden.AsString       = 'C') then
//      exit;
//   mTransaccion.next;
// End;

calculaTotal;

end;


function TfrmCaja.AplicarDeposito(_numCuenta: String; _deposito: Double; _orden : String): Double;
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


//------------------------------------------------------------------------------
//                           Asiento de la Transaccion
//------------------------------------------------------------------------------
procedure TfrmCaja.AsientoTrx(_numCuenta: string; _cuenta : string;
                             _idProducto: string; campo: String; Valor: Double;
                             _orden : string);
var
 _cuentaDB,_cuentaCR : String;
begin
//---

  DataModulo1.AsientoTrx.Close;
  DataModulo1.AsientoTrx.Sql.Clear;
  DataModulo1.AsientoTrx.Sql.add('Select P.cuenta, ');
  DataModulo1.AsientoTrx.Sql.add('MC.Nombre, ');
  DataModulo1.AsientoTrx.Sql.add('Case debito  when ' +
      quotedStr( campo ) +' then P.Cuenta else ' + QuotedStr('') + ' end  as CuentaDB, ');
  DataModulo1.AsientoTrx.Sql.add('Case credito when ' +
      quotedStr( campo ) +' then P.Cuenta else ' + QuotedStr('') + ' end  as CuentaCR  ');
  DataModulo1.AsientoTrx.Sql.add('From productotrx P ');
  DataModulo1.AsientoTrx.Sql.add('Inner Join maescont MC on P.Cuenta = MC.Cuenta ');
  DataModulo1.AsientoTrx.Sql.add('Where idProducto = ' + _idProducto ) ;
  DataModulo1.AsientoTrx.Sql.add(' and (debito  = ' + quotedStr(campo));
  DataModulo1.AsientoTrx.Sql.add(' or   credito = ' + QuotedStr(campo) + ')');
  DataModulo1.AsientoTrx.Open;

  if not DataModulo1.AsientoTrx.eof  then
  begin
      DataModulo1.AsientoTrx.First;

      while not DataModulo1.AsientoTrx.eof   do
      Begin

        mTransaccion.Append;
        mTransaccionFECHA.AsDateTime      := now;
        mTransaccionNum_Cuenta.AsString   := _numCuenta;
        mTransaccionnombreCuenta.AsString := DataModulo1.AsientoTrx.FieldByName('Cuenta').AsString + ' - ' +
                          DataModulo1.AsientoTrx.FieldByName('Nombre').AsString;
        mTransaccionOrden.AsString        := _orden;

        if DataModulo1.AsientoTrx.FieldByName ('CuentaDB').AsString <> '' then
        Begin
           mTransaccionCuenta.AsString     := DataModulo1.AsientoTrx.FieldByName ('CuentaDB').AsString;
           mTransaccionNaturaleza.AsString := 'D';
           mTransaccionSaldoO.AsFloat      := valor;
           mTransaccionSaldo.AsFloat       := valor;
        End;
        if DataModulo1.AsientoTrx.FieldByName ('CuentaCR').AsString <> '' then
        Begin
           mTransaccionCuenta.AsString     := DataModulo1.AsientoTrx.FieldByName ('CuentaCR').AsString;
           mTransaccionNaturaleza.AsString := 'C';
           mTransaccionSaldoO.AsFloat      := valor;
           mTransaccionSaldo.AsFloat       := valor;
        End;

        DataModulo1.AsientoTrx.next

      End;

  end;
end;




//------------------------------------------------------------------------------
//                           Calcula Mora
//...edw:2017-03-04
//------------------------------------------------------------------------------
function TfrmCaja.CalculaMora(Cuenta: String; calculaMora:Boolean): double;
begin
//

   result := 0.0 ;

end;


//------------------------------------------------------------------------------
//                         Arrastrar Documento
//...edw:
//------------------------------------------------------------------------------
procedure TfrmCaja._ArrastrarDocumento;
var
 _Documento : String;
 _doc : TFDQuery;
begin
  inherited;
  tvHB.Enabled := False;
  mTransaccion.Close;
  mTransaccion.Open;
  _doc := DataModulo1.DocumentoTransaccion;
  if tvHist.Selected.Level = 1 then
  Begin
    tvHB.Enabled := False;
    _Documento := copy(Trim(tvHist.Selected.text),1,pos('-',Trim(tvHist.Selected.text))-2);
    //---- Busca el detalle de la transaccion por No. De Documento----------

    DataModulo1.DocumentoTransaccion.Close;
    DataModulo1.DocumentoTransaccion.Params [0].AsInteger := strToInt(_Documento);
    DataModulo1.DocumentoTransaccion.Open;
    _Doc:= DataModulo1.DocumentoTransaccion;

    if Not DataModulo1.DocumentoTransaccion.eof then
    begin
     DataModulo1.DocumentoTransaccion.First;
     while not DataModulo1.DocumentoTransaccion.eof do
     Begin
      mTransaccion.Append;
      mTransaccionTipoDoc.AsString    := _doc.FieldByName('Tipo_Documento').AsString;
      mTransaccionDocumento.AsString  := _doc.FieldByName('Documento').AsString;
      mTransaccionFECHA.AsDateTime    := _doc.FieldByName('fecha_doc').AsDateTime;
      mTransaccionNum_Cuenta.AsString := _doc.FieldByName('Num_Cuenta').AsString;
      mTransaccionCuenta.AsString     := _doc.FieldByName('Cuenta').AsString;
      mTransaccionNaturaleza.AsString := _doc.FieldByName('Naturaleza').AsString;
      mTransaccionMonto.AsFloat       := _doc.FieldByName('Monto').AsFloat ;
      mTransaccionEfectivo.AsFloat    := _doc.FieldByName('efectivo').AsFloat;
      mTransaccionCheque.AsFloat      := _doc.FieldByName('Cheque').AsFloat;

      DataModulo1.DocumentoTransaccion.next
     End;
    end;
  End;
End;
end.


//------------------------------------------------------------------------------
//
//...edw:
//------------------------------------------------------------------------------
