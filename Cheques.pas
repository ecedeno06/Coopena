unit Cheques;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ventana2, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.StdCtrls, Data.DB, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, Vcl.ExtCtrls, Vcl.Buttons;

type
  TfrmCheques = class(TfrmVentana)
    dts_ChequesCuenta: TDataSource;
    dts_cheque_enc: TDataSource;
    frxReport1: TfrxReport;
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
    Memo1: TMemo;
    SpeedButton1: TSpeedButton;
    ToolButton6: TToolButton;
    m_Chk_Generados_impreso: TIntegerField;
    Label10: TLabel;
    ed_chk_diferencia: TEdit;
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
    procedure DBGrid1ColExit(Sender: TObject);
    Procedure ValidarMontos;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure ed_chk_MontoEnter(Sender: TObject);
    procedure btn_chk_det_borrarClick(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_chk_det_socioClick(Sender: TObject);
    procedure btn_chk_det_socioDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure DBGrid1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure DBGrid1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure btn_chk_Undo_EncaClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure _ArrastrarCuenta;
  end;

var
  frmCheques: TfrmCheques;
  _documento,_cheque : integer;
   ntecla : word;
   _Origen,_Destino : String;
   _accept : boolean;
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

procedure TfrmCheques.btn_chk_SalvarClick(Sender: TObject);
begin
  inherited;
//  grp_chk_Detalle.Enabled := false;
//  grp_chk_enc.Enabled     := False;
//  btn_chk_Salvar.Enabled  := False;
  btn_chk_Nuevo.Enabled   := True;
  btn_chk_Undo_Enca.Enabled := False;
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

  cargarDetalle;

end;

procedure TfrmCheques.CargarCheques;
var
_desde,_hasta : TDateTime;

begin
 _desde := dp_desde.Date ;
 _hasta := dp_hasta.Date;

 //----------------
 DataModulo1.chequesgenerados.close;
 DataModulo1.chequesgenerados.Sql.Clear;
 DataModulo1.chequesgenerados.SQL.Add(
   'Select documento,T.aNombreDe,Fecha_Doc,Impreso,Monto_gral as Monto, ' +
   'S.NombreCompleto as Benef1,C.Nombre as Benef2 ' +
   'From Transaccion_enc T ' +
   'Left Join Socios S on T.aNombrede = S.idsocio ' +
   'Left join chq_anombrede C on T.aNombrede = C.aNombrede ' +
   'Where T.fecha_doc >= ' + QuotedStr(formatDateTime('yyyy-mm-dd',dp_desde.Date)) +
   ' and T.fecha_doc <= '  + QuotedStr(formatDateTime('yyyy-mm-dd',dp_hasta.Date)));

 //--- Si coloca beneficiario
 if Length(trim(ed_chk_benef.Text )) > 0 then
 begin
   DataModulo1.chequesGenerados.SQL.Add( ' and (( s.nombrecompleto like '                  + quotedStr('%' + trim(ed_chk_benef.Text ) + '%' ) + ')' );
   DataModulo1.chequesGenerados.SQL.Add( ' or    ( C.nombre        like '                  + quotedStr('%' + trim(ed_chk_benef.Text ) + '%' ) + ')' );
   DataModulo1.chequesGenerados.SQL.Add( ' or    ( Cast(monto_gral as varchar(max)) like ' + quotedstr('%' + trim(ed_chk_benef.Text ) + '%' ) + ')' );
   DataModulo1.chequesGenerados.SQL.Add( ' or    ( Cast(documento as varchar(max))  like ' + quotedstr('%' + trim(ed_chk_benef.Text ) + '%' ) + '))');
 end;

 Memo1.Text := DataModulo1.chequesgenerados.SQL.Text ;
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
  DataModulo1.cheque_det.sql.Add('Left Join maes_aux M on T.num_cuenta  = M.num_cuenta');
  DataModulo1.cheque_det.sql.Add('Left join productoTrx P on m.subcuenta = P.idProducto and t.cuenta = p.cuenta');
  DataModulo1.cheque_det.sql.Add('Where Tipo_documento = ' + coma + 'CHQ' + coma ) ;
  DataModulo1.cheque_det.sql.Add(' and Documento = '       + m_Chk_Generados_documento.AsString);
  Memo1.Text :=   DataModulo1.cheque_det.sql.text;
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

procedure TfrmCheques.DBGrid1ColExit(Sender: TObject);
begin
  inherited;
 // DBGrid1.Options := DBGrid1.Options - [dgEditing];

  if (mTransaccionimputable.AsBoolean = true) then
  begin
    if   (DBGrid1.SelectedField.FieldName   = 'Efectivo')  then
    begin
      ValidarMontos;
    end;
  end;

end;

procedure TfrmCheques.DBGrid1DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  inherited;
 if _origen = 'Cuentas' then
 begin
   //     _ArrastrarDocumento ;
 end;

end;

procedure TfrmCheques.DBGrid1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  inherited;
  accept := true;
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

procedure TfrmCheques.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
   xxx : TShiftState ;
   _key : char;

begin
  inherited;  _key := Char(key);
//  GetCharFromVirtualKey(Key); //key ; //#113;
 DBGrid1.OnKeypress (sender,_key);
 // dbgrid1.OnKeyPress (DBGrid1,'d');
end;

procedure TfrmCheques.DBGrid1KeyPress(Sender: TObject; var Key: Char);
var
 _index : integer;
begin
  inherited;
  //DBGrid1.Options := DBGrid1.Options - [dgEditing];
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
      if (DBGrid1.SelectedField.FieldName   = 'Naturaleza') then
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

    if (key = #13) or (key = #9) then
    begin

      if key = #9 then
      begin
        key := #0;
//        DBGrid1.Options := DBGrid1.Options - [dgEditing];
      end;
       // AplicaDeposito;
      ValidarMontos;
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

  if m_Chk_Generados_impreso.AsInteger  = 1 then
  begin
    tb_chk_enc.Enabled := False;
    tb_chk_det.Enabled := False;
  end
  else
  begin
    tb_chk_enc.Enabled := true;
    tb_chk_det.Enabled := true;
  end;

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

procedure TfrmCheques.dbl_chk_cuentaClick(Sender: TObject);
var
 _cuenta,_guid : string;

 begin
  inherited;


  _cuenta := DataModulo1.CuentasChequeracuenta.AsString ;

  //----- Obtiene el Consecutivo de Cheque dependiendo del No de Chequera - Cuenta Corriente
  DataModulo1.Generico.Close;
  DataModulo1.Generico.SQL.Clear;
  DataModulo1.Generico.SQL.Add('Select  seq_chq  as cheque from chq_cuenta ');
  DataModulo1.Generico.SQL.Add(' where no_cuenta = ' +
     quotedStr(DataModulo1.CuentasChequerano_cuenta.AsString));
  DataModulo1.Generico.Open;


  if DataModulo1.Generico.FieldByName('Cheque').AsInteger > 0 then
  begin
    _documento := DataModulo1.Generico.FieldByName('Cheque').AsInteger + 1;
  end
  else
    _documento := 1;

  DataModulo1.cheque_encdocumento.AsInteger := _documento;

  _guid := mTransaccionguid.AsString ;
  if mTransaccion.Locate ('Orden','P',[])  then
  begin
    mTransaccion.delete;
   end;

  mTransaccion.First;
  mTransaccion.Insert;

  mTransaccionFECHA.AsDateTime    := _fechaSistema;
  mTransaccionDocumento.AsInteger := _documento;
  mTransaccionCuenta.AsString     := _cuenta;
  mTransaccionimputable.AsBoolean := False;
  mTransaccionOrden.AsString      := 'P';
  mTransaccionNaturaleza.AsString := 'C';
  mTransaccionTipoDoc.AsString    := 'CHQ';
  mTransaccionEfectivo.AsFloat    := DataModulo1.cheque_encmonto_gral.AsFloat;
  mTransaccionguid.AsString       := DataModulo1._guid();
  ValidarMontos;
  DBGrid1.Refresh;

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

  grp_chk_Detalle.Enabled   := true;
  grp_chk_enc.Enabled       := true;
  btn_chk_Salvar.Enabled    := True;
  btn_chk_Nuevo.Enabled     := False;
  btn_chk_Undo_Enca.Enabled := true;
  dbl_chk_cuenta.SetFocus ;
end;

procedure TfrmCheques.ed_chk_benefRightButtonClick(Sender: TObject);
begin
  inherited;
  ed_chk_benef.Clear;
end;

procedure TfrmCheques.ed_chk_MontoClick(Sender: TObject);
begin
  inherited;
//---
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
    if mTransaccion.Locate('Orden','P',[]) then
    begin
      mTransaccion.Edit;
      mTransaccionEfectivo.AsFloat := DataModulo1.cheque_encmonto_gral.AsFloat;
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

procedure TfrmCheques.FormDestroy(Sender: TObject);
begin
  inherited;
  DataModulo1.chequesCuenta.Close;

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

  //--- Desactiva los controles de edicion
  grp_chk_Detalle.Enabled := False;
  grp_chk_enc.Enabled     := False;
  btn_chk_Salvar.Enabled  := False;
  btn_chk_Nuevo.Enabled   := True;
  btn_chk_Undo_Enca.Enabled := False;

  //--- Fecha del Sistema

  ed_chk_fecha.Text := FormatDateTime('dd/MMM/yyy',_fechaSistema);


end;

procedure TfrmCheques.btn_chk_det_borrarClick(Sender: TObject);
begin
  inherited;
 //--- Borrar La linea
// if mTransaccionOrden.AsString = 'P' then
 Begin
   mTransaccion.Delete;
   ValidarMontos;
 End;
end;

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
        mTransaccionDocumento.AsInteger := _documento;
        mTransaccionTipoDoc.AsString    := 'CHQ';
        mTransaccionCuenta.AsString     := DataModulo1.catalogo.FieldByName('cuenta').AsString ;
        mTransaccionimputable.AsBoolean := True;
        mTransaccionOrden.AsString      := 'X';
        mTransaccionguid.AsString       := DataModulo1._guid();
        mTransaccionNaturaleza.AsString := CatalogoContable._DC;

      end;

    finally
      frmCatalogoContable.Free;
    end;
  End;
end;

procedure TfrmCheques.btn_chk_det_socioClick(Sender: TObject);
begin
  inherited;
    Application.CreateForm(TfrmSocioCuentas , frmSociocuentas);
    if frmSociocuentas.ShowModal = mrOk then
    Begin
     //---agregar aqui el codigo para cuenta de asociado
     _ArrastrarCuenta ;
    End;
end;

procedure TfrmCheques.btn_chk_det_socioDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  Accept := _accept ;
end;

procedure TfrmCheques.ValidarMontos;
var
  _Diferencia : Double;
  _guid       : string;

begin
//---

 _guid        := mTransaccionguid.AsString;
 _diferencia  := 0.00;

 mTransaccion.First;
 while not mTransaccion.Eof do
 Begin
   if mTransaccionNaturaleza.asstring = 'C' then
     _diferencia := _diferencia + mTransaccionEfectivo.AsFloat
   else
     _diferencia := _diferencia - mTransaccionEfectivo.AsFloat;

  mTransaccion.Next;
 End;

 ed_chk_diferencia.Text  := FormatFloat('#,##0.00',_diferencia);

 mTransaccion.Locate('guid',_guid,[]);

end;

procedure TfrmCheques._ArrastrarCuenta;
begin
  DataModulo1.productoTrx2.Close;
  Datamodulo1.productoTrx2.Params [0].AsInteger :=
      DataModulo1.socioCuentassubcuenta.AsInteger ;
  DataModulo1.productoTrx2.Open;

//  if DataModulo1.socioCuentasprestamo_S_N.AsString = 'S' then
  begin
    //--- Validar contra el productoTRX las cuentas que se ven afectadas
    //--- Se debe mostrar Intereses y Mora

    if not DataModulo1.productoTrx2.eof  then
    Begin
      DataModulo1.productoTrx2.first;
      while not DataModulo1.productoTrx2.eof do
      Begin

       //--- Agrega  solo las que se veran en el cheque/Transferencia
       if DataModulo1.productoTrx2verChk_Tran.AsBoolean then
       begin

         mTransaccion.Append;
         mTransaccionFECHA.AsDateTime    := _fechaSistema ;
         mTransaccionDocumento.AsInteger := _documento;
         mTransaccionCuenta.AsString     := DataModulo1.productoTrx2cuenta.AsString;
         mTransaccionTipoDoc.AsString    := 'CHQ';
         mTransaccionNum_Cuenta.AsString := DataModulo1.sociocuentas.FieldByName('num_cuenta').AsString ;
         mTransaccionimputable.AsBoolean := DataModulo1.productoTrx2esImputable.AsBoolean ;
         mTransaccionOrden.AsString      := 'X';
         mTransaccionguid.AsString       := DataModulo1._guid();
         mTransaccionNaturaleza.AsString := DataModulo1.productoTrx2DC.AsString;
       end;
       DataModulo1.productoTrx2.next
      End;
    end;
  end;
end;

end.
