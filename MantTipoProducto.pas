unit MantTipoProducto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ventana2, Vcl.ComCtrls, Data.DB,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ToolWin, Vcl.Grids,
  Vcl.DBGrids, Vcl.CheckLst;

type
  TfrmTipoProducto = class(TfrmVentana)
    dbgProfesion: TDBGrid;
    PageControl1: TPageControl;
    tsBanco: TTabSheet;
    ToolBar8: TToolBar;
    btnNuevo1: TToolButton;
    ToolButton1: TToolButton;
    btnSalvar1: TToolButton;
    Panel1: TPanel;
    dtsTipoProducto: TDataSource;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edID: TDBEdit;
    edNombre: TDBEdit;
    edAbre: TDBEdit;
    edCuenta: TDBEdit;
    edPeriodoTasa: TDBEdit;
    Panel2: TPanel;
    ToolBar1: TToolBar;
    btnNuevo2: TToolButton;
    btnBorrar2: TToolButton;
    btnSalvar2: TToolButton;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    dtscontra: TDataSource;
    edContra: TDBEdit;
    Image2: TImage;
    edAportacion: TDBEdit;
    TabSheet1: TTabSheet;
    ToolBar2: TToolBar;
    btnNuevaCuenta: TToolButton;
    btnEliminarCuenta: TToolButton;
    btnSalvarCuenta: TToolButton;
    grpTrx: TGroupBox;
    Label6: TLabel;
    dbgTrx: TDBGrid;
    dtsproductoTrx: TDataSource;
    dtsMaestroContableCombo: TDataSource;
    edCuentaTrx: TDBLookupComboBox;
    lblDC: TLabel;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    ToolButton2: TToolButton;
    btnPrueba: TToolButton;
    btnEditarTrx: TToolButton;
    ToolButton4: TToolButton;
    DBCheckBox5: TDBCheckBox;
    esPrestamo: TDBCheckBox;
    grpEsPrestamo: TGroupBox;
    chbIntSobreSaldo: TDBCheckBox;
    chbIntSobrePrestamo: TDBCheckBox;
    Label7: TLabel;
    cbGarantia: TDBCheckBox;
    cbFiador: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    Label8: TLabel;
    Shape1: TShape;
    GroupBox6: TGroupBox;
    GroupBox3: TGroupBox;
    lvDisponible: TListView;
    Button2: TButton;
    Button3: TButton;
    GroupBox4: TGroupBox;
    lvAsignados: TListView;
    cbx_calcula_mora: TDBCheckBox;
    DBRadioGroup1: TDBRadioGroup;
    Label9: TLabel;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    ed_mora: TDBEdit;
    Label11: TLabel;
    DBCheckBox4: TDBCheckBox;
    dbl_TipoCuenta: TDBLookupComboBox;
    Label13: TLabel;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    procedure FormShow(Sender: TObject);
    procedure btnNuevo1Click(Sender: TObject);
    procedure btnSalvar1Click(Sender: TObject);
    procedure dtsTipoProductoData(Sender: TObject; Field: TField);
    procedure btnNuevo2Click(Sender: TObject);
    procedure btnSalvar2Click(Sender: TObject);
    procedure btnBorrar2Click(Sender: TObject);
    procedure lvDisponibleSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btnNuevaCuentaClick(Sender: TObject);
    procedure btnSalvarCuentaClick(Sender: TObject);
    procedure dtsMaestroContableComboDataChange(Sender: TObject; Field: TField);
    procedure btnEliminarCuentaClick(Sender: TObject);
    procedure btnEditarTrxClick(Sender: TObject);
    procedure rbSaldoClick(Sender: TObject);
    procedure chbIntSobreSaldoClick(Sender: TObject);
    procedure chbIntSobrePrestamoClick(Sender: TObject);
    procedure esPrestamoClick(Sender: TObject);
    procedure dbgTrxDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgTrxKeyPress(Sender: TObject; var Key: Char);
    procedure cbx_calcula_moraClick(Sender: TObject);
    procedure edCuentaTrxClick(Sender: TObject);
    procedure DBCheckBox8Click(Sender: TObject);
    procedure edNombreEnter(Sender: TObject);
    procedure edAbreEnter(Sender: TObject);
    procedure edCuentaEnter(Sender: TObject);
    procedure edPeriodoTasaEnter(Sender: TObject);
    procedure edAportacionEnter(Sender: TObject);
    procedure esPrestamoEnter(Sender: TObject);
    procedure DBCheckBox14Click(Sender: TObject);
    procedure DBCheckBox6Enter(Sender: TObject);
    procedure DBCheckBox7Enter(Sender: TObject);
    procedure DBCheckBox15Click(Sender: TObject);
    procedure chbIntSobreSaldoEnter(Sender: TObject);
    procedure chbIntSobrePrestamoEnter(Sender: TObject);
    procedure dbgProfesionCellClick(Column: TColumn);
  private
    Function Siguiente() : Integer;
    Procedure CargaDisponibles;
    Procedure CargarTrx;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTipoProducto: TfrmTipoProducto;

implementation

{$R *.dfm}

uses DM1;

procedure TfrmTipoProducto.btnBorrar2Click(Sender: TObject);
begin
  inherited;
  DataModulo1.ContraCuenta.Delete;
end;

procedure TfrmTipoProducto.btnEditarTrxClick(Sender: TObject);
begin
  inherited;
//---editar Cuenta Trx
   grpTrx.Enabled := true;

end;

procedure TfrmTipoProducto.btnEliminarCuentaClick(Sender: TObject);
begin
  inherited;
  DataModulo1.productoTrx3.Delete;
  grpTrx.Enabled := false;
end;

procedure TfrmTipoProducto.btnNuevaCuentaClick(Sender: TObject);
begin
  inherited;
  grpTrx.Enabled := true;
  edCuentaTrx.SetFocus;
  DataModulo1.productoTrx3.Append;

end;

procedure TfrmTipoProducto.btnNuevo1Click(Sender: TObject);
begin
  inherited;
  edNombre.SetFocus;
  DataModulo1.TipoProducto.Append;
  _detalleLog := '';
end;

procedure TfrmTipoProducto.btnNuevo2Click(Sender: TObject);
begin
  inherited;
//  if not DataModulo1.ContraCuenta.RecordCount > 0 then
//  begin
     edContra.SetFocus;
     DataModulo1.ContraCuenta.Append;
     DataModulo1.ContraCuentasubcuenta.Value :=
                 DataModulo1.TipoProducto.FieldByName('subCuenta').Value;
//  end;

end;

procedure TfrmTipoProducto.btnSalvar1Click(Sender: TObject);
begin
  inherited;

  if  Not (DataModulo1.TipoProducto.State IN [dsEdit,dsInsert]) then
  Begin
   DataModulo1.TipoProducto.edit;
  End;

  if (DataModulo1.TipoProducto.State IN [dsInsert]) then
  begin
    DataModulo1.TipoProducto.FieldByName('subCuenta').Value  := Siguiente + 1 ;
    _accion := 'Inserta Nuevo Producto';
  end
  else
    if DataModulo1.TipoProducto.State = dsEdit then
      _accion := 'Modifica Producto';

  _detalleLog := 'Producto ' + DataModulo1.TipoProductonombresubcuenta.AsString + _detalleLog;

  Try
   DataModulo1.TipoProducto.post;
   DataModulo1.RegistroLog(Usuario,_accion,_detalleLog );
  except
   on E:Exception do
   begin
    showMessage('Error al salvar el Tipo de Producto...' + E.Message);
    DataModulo1.RegistroLog(Usuario,'Error','Error al insertar / Moficar producto...')
   end;
  end;
end;

procedure TfrmTipoProducto.btnSalvar2Click(Sender: TObject);
begin
  inherited;

//  if  Not (DataModulo1.MantProfesiones.State IN [dsEdit,dsInsert]) then
//  Begin
   DataModulo1.ContraCuenta.edit;
//  End;

  Try
   DataModulo1.ContraCuenta.post;
  except
   on E:Exception do
   begin
    showMessage('Error al salvar la Contra Cuenta...');
   end;
  end;
end;

procedure TfrmTipoProducto.btnSalvarCuentaClick(Sender: TObject);
var
  _idtrx : integer;
begin
  inherited;

  DataModulo1.productoTrx3.edit;

  Try

   DataModulo1.productoTrx3idProducto.Value :=
               DataModulo1.TipoProducto.FieldByName('subCuenta').Value;
   _idtrx := DataModulo1.productoTrx3idProducto.AsInteger ;

   DataModulo1.productoTrx3.post;
   CargarTrx;
   DataModulo1.productoTrx3.Locate('idTrx',_idTrx,[]);



  except
   on E:Exception do
   begin
    showMessage('Error al salvar el Tipo de Producto...');
   end;
  end;

  grpTrx.Enabled := false;
end;

procedure TfrmTipoProducto.Button2Click(Sender: TObject);
Var
i : integer;

begin

  for i := 0 to lvDisponible.Items.Count - 1 do
  begin
    if lvDisponible.Items[i].Checked then
    begin
      DataModulo1.Generico.Close;
      DataModulo1.Generico.SQL.Clear;
      DataModulo1.Generico.SQL.Add('Insert Into ProductoCliente (');
      DataModulo1.Generico.SQL.Add('SubCuenta,TipoCliente ');
      DataModulo1.Generico.SQL.Add(') Values (');
      DataModulo1.Generico.SQL.Add( DataModulo1.TipoProductosubcuenta.AsString );
      DataModulo1.Generico.SQL.Add( ', ' + lvDisponible.Items[i].SubItems[0] + ')' );
      DataModulo1.Generico.ExecSQL;
    end;
  end;

  CargaDisponibles;

end;


procedure TfrmTipoProducto.Button3Click(Sender: TObject);
var
 i : Integer;
begin
  inherited;
  for i := 0 to lvAsignados.Items.Count - 1 do
  begin
    if lvAsignados.Items[i].Checked then
    begin
      DataModulo1.Generico.Close;
      DataModulo1.Generico.SQL.Clear;
      DataModulo1.Generico.SQL.Add('Delete from ProductoCliente ');
      DataModulo1.Generico.SQL.Add(' Where ');
      DataModulo1.Generico.SQL.Add(' SubCuenta = '
                              + DataModulo1.TipoProductosubcuenta.AsString );
      DataModulo1.Generico.SQL.Add(' and tipoCliente = '
                              + lvAsignados.Items[i].SubItems[0] );
      DataModulo1.Generico.ExecSQL;
    end;
  end;

  CargaDisponibles;
end;

procedure TfrmTipoProducto.CargaDisponibles;
var
  Itm: TListItem;
begin
  lvDisponible.Clear;
  DataModulo1.Disponible.Close;
  DataModulo1.Disponible.Params [0].Value := DataModulo1.TipoProductosubcuenta.Value ;
  DataModulo1.Disponible.Open;
  if not DataModulo1.Disponible.Eof  then
  Begin
    DataModulo1.Disponible.First;
    lvDisponible.ViewStyle := vsReport;
//    lvDisponible.Checkboxes :=
    while Not DataModulo1.Disponible.Eof  do
    Begin
      Itm := lvDisponible.Items.Add;

      Itm.Caption := (DataModulo1.DisponibleDescripcion.AsString);
      Itm.SubItems.Add(DataModulo1.Disponibleid.AsString);

      DataModulo1.Disponible.Next;
    End;
  End;

  lvAsignados.Clear;
  DataModulo1.Asignados.Close;
  DataModulo1.Asignados.Params [0].Value := DataModulo1.TipoProductosubcuenta.Value ;
  DataModulo1.Asignados.Open;

  if not DataModulo1.Asignados.Eof  then
  Begin
    DataModulo1.Asignados.First;
    lvAsignados.ViewStyle := vsReport;
    while Not DataModulo1.Asignados.Eof  do
    Begin
      Itm := lvAsignados.Items.Add;

      Itm.Caption :=  (DataModulo1.Asignados.FieldByName('Descripcion').AsString);
      Itm.SubItems.Add(DataModulo1.Asignados.FieldByName('ID').AsString);

      DataModulo1.Asignados.Next;
    End;
  End;



end;


procedure TfrmTipoProducto.CargarTrx;
begin
  DataModulo1.productoTrx3.Close;
  DataModulo1.productoTrx3.Params[0].Value := DataModulo1.TipoProductosubcuenta.Value ;
  DataModulo1.productoTrx3.open;
  DataModulo1.productoTrx3.First;
end;

procedure TfrmTipoProducto.cbx_calcula_moraClick(Sender: TObject);
begin
  inherited;
  if cbx_calcula_mora.Checked  then
     ed_mora.Enabled := true
  else
  begin
     ed_mora.Enabled := false;
     DataModulo1.TipoProducto.edit;
     DataModulo1.TipoProductomora.Clear;
  end;
end;

procedure TfrmTipoProducto.chbIntSobrePrestamoClick(Sender: TObject);
begin
  inherited;
  if chbIntSobrePrestamo.Checked  then
  begin
    chbIntSobreSaldo.Checked := False;
  end;
end;

procedure TfrmTipoProducto.chbIntSobrePrestamoEnter(Sender: TObject);
begin
  inherited;
  _detalleLog := _detalleLog + '...Intereses Sobre Prestamo...';
end;

procedure TfrmTipoProducto.chbIntSobreSaldoClick(Sender: TObject);
begin
  inherited;
  if chbIntSobreSaldo.Checked  then
  begin
    chbIntSobrePrestamo.Checked := False;
  end;

end;

procedure TfrmTipoProducto.chbIntSobreSaldoEnter(Sender: TObject);
begin
  inherited;
  _detalleLog := _detalleLog + '...Intereses Sobre Saldo...';
end;

procedure TfrmTipoProducto.DBCheckBox14Click(Sender: TObject);
begin
  inherited;
  _detalleLog := _detalleLog + '...Es Ahorro...';
end;

procedure TfrmTipoProducto.DBCheckBox15Click(Sender: TObject);
begin
  inherited;
    _detalleLog := _detalleLog + '...Calcula Interes...';
end;

procedure TfrmTipoProducto.DBCheckBox6Enter(Sender: TObject);
begin
  inherited;
    _detalleLog := _detalleLog + '...Es Deposito...';
end;

procedure TfrmTipoProducto.DBCheckBox7Enter(Sender: TObject);
begin
  inherited;
  _detalleLog := _detalleLog + '...Es Retiro...';
end;

procedure TfrmTipoProducto.DBCheckBox8Click(Sender: TObject);
begin
  inherited;
  if DBCheckBox8.Checked  then
  begin
   // DataModulo1.productotrx3.Edit;

  end;
end;

procedure TfrmTipoProducto.dbgProfesionCellClick(Column: TColumn);
begin
  inherited;
  _detalleLog := '';
end;

procedure TfrmTipoProducto.dbgTrxDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
//  if (Column.Index = 0) then
    if dbgTrx.Columns[4].Field.AsBoolean = true  then
    begin
      dbgTrx.Canvas.Font.Color := clRed;
    end
    else
      dbgTrx.Canvas.Font.Color := clBlack;

    dbgTrx.DefaultDrawColumnCell(rect,DataCol,Column,State);

end;


procedure TfrmTipoProducto.dbgTrxKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    if   (dbgTrx.SelectedField.FieldName   = 'DC') then
      if not (Key in ['D','C','d','c']) then
      begin
         Key := #0;
      end;

    if   (dbgTrx.SelectedField.FieldName   = 'signo') then
      if not (Key in ['+','-']) then
      begin
         Key := #0;
      end;



end;

procedure TfrmTipoProducto.edAbreEnter(Sender: TObject);
begin
  inherited;
  _detalleLog := _detalleLog + '...abreviatura...';
end;

procedure TfrmTipoProducto.edAportacionEnter(Sender: TObject);
begin
  inherited;
  _detalleLog := _detalleLog + '...Aportacion...';
end;

procedure TfrmTipoProducto.edCuentaEnter(Sender: TObject);
begin
  inherited;
  _detalleLog := _detalleLog + '...Cuenta Principal...';
end;

procedure TfrmTipoProducto.edCuentaTrxClick(Sender: TObject);
begin
  inherited;
  DataModulo1.productoTrx3.FieldByName('descripcion').AsString :=
       DataModulo1.maestroContableCombo.FieldByName('Nombre').AsString ;
//---
end;

procedure TfrmTipoProducto.edNombreEnter(Sender: TObject);
begin
  inherited;
  _detalleLog := _detalleLog + '...Nombre...';
end;

procedure TfrmTipoProducto.edPeriodoTasaEnter(Sender: TObject);
begin
  inherited;
  _detalleLog := _detalleLog + '...Periodo tasa...';
end;

procedure TfrmTipoProducto.esPrestamoClick(Sender: TObject);
begin
  inherited;
  if not esPrestamo.Checked  then
  begin
     grpEsPrestamo.Enabled := false;
     DataModulo1.TipoProducto.Edit;
     DataModulo1.TipoProductofiador.Clear ;
     DataModulo1.TipoProductogarantia.Clear;
     DataModulo1.TipoProductofinalidad.Clear;
     DataModulo1.TipoProductocalculaMora.Clear;
     DataModulo1.TipoProductofinalidad.Clear;
     DataModulo1.TipoProductocalulaInteres.Clear;
     DataModulo1.TipoProductointeresSobre.Clear;
  End
  Else
    grpEsPrestamo.Enabled:=true;

end;

procedure TfrmTipoProducto.esPrestamoEnter(Sender: TObject);
begin
  inherited;
    _detalleLog := _detalleLog + '...Es Prestamo...';
end;

procedure TfrmTipoProducto.dtsMaestroContableComboDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  lblDC.Caption := DataModulo1.maestroContableCombo.FieldByName('Naturaleza').AsString ;
 // grpTrx.Enabled := false;
//  DataModulo1.productoTrxdescripcion.AsString := DataModulo1.maestroContableCombo.FieldByName('Nombre').AsString
//  DataModulo1.productoTrxcuenta.AsString := DataModulo1.maestroContableCombocuenta.AsString ;
end;

procedure TfrmTipoProducto.dtsTipoProductoData(Sender: TObject;
  Field: TField);
begin
  inherited;
  DataModulo1.ContraCuenta.Close;
  DataModulo1.ContraCuenta.Params[0].Value := DataModulo1.TipoProductosubcuenta.Value ;
  DataModulo1.ContraCuenta.open;


  //--- Verifica si es Prestamo, para activar el grupo de prestamo.
//  if DataModulo1.TipoProductoprestamo_s_n.AsString  = 'S' then
//    grpEsPrestamo.Enabled := true
//  else
//    grpEsPrestamo.Enabled := false;




  DataModulo1.productoTrx3.Close;
  DataModulo1.ProductoTrx3.Params[0].Value := DataModulo1.TipoProductosubcuenta.Value ;
  DataModulo1.ProductoTrx3.open;
  DataModulo1.ProductoTrx3.First;


  CargaDisponibles;


  if DataModulo1.ContraCuenta.RecordCount > 0 then
   btnNuevo2.Enabled := False
  else
   btnNuevo2.Enabled := True;
end;

procedure TfrmTipoProducto.FormShow(Sender: TObject);
begin
  inherited;
 StatusBar1.Panels[0].Text := 'MantTipoProducto.pas';
 StatusBar1.Font.Size := 8;

 DataModulo1.TipoProducto.Close;
 DataModulo1.TipoProducto.Open;
 DataModulo1.TipoProducto.First;

 DataModulo1.maestroContableCombo.Close;
 DataModulo1.maestroContableCombo.Open;

 DataModulo1.TipoCuenta.Close;
 DataModulo1.TipoCuenta.Open;

 end;


procedure TfrmTipoProducto.lvDisponibleSelectItem(Sender: TObject;
  Item: TListItem; Selected: Boolean);
  var
  sitem : String;
begin
  inherited;
//  sitem :=  Item.SubItems.Strings[0];
//  ShowMessage(sitem);
end;

procedure TfrmTipoProducto.rbSaldoClick(Sender: TObject);
begin
  inherited;
//  if rbSaldo.Checked  then
//  begin
//    //---
//
//  end;
end;

//---- Siguiente Consecutivo
function TfrmTipoProducto.Siguiente: Integer;
begin

  DataModulo1.Generico.Close;
  DataModulo1.Generico.Sql.Clear;
  DataModulo1.Generico.Sql.Add ('Select max(subCuenta) as sec From SubCuenta');
  DataModulo1.Generico.Open;

  if Not DataModulo1.Generico.eof then
  begin
    if DataModulo1.Generico.FieldByName('sec').Value > 0 then
     result:= DataModulo1.Generico.FieldByName('sec').Value
    else
     Result := 0;
  end;
end;

end.
