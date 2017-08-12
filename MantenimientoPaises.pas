unit MantenimientoPaises;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ventana2, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.ToolWin;

type
  TfrmPaises = class(TfrmVentana)
    dbgPaises: TDBGrid;
    PageControl1: TPageControl;
    tsAreas: TTabSheet;
    Image2: TImage;
    dbgArea: TDBGrid;
    GroupBox4: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    edAreaID: TDBEdit;
    edAreaNombre: TDBEdit;
    ToolBar3: TToolBar;
    btnAreaNuevo1: TToolButton;
    ToolButton5: TToolButton;
    btnAreaSalvar1: TToolButton;
    dtsPaises: TDataSource;
    tsPais: TTabSheet;
    dtsProvincias: TDataSource;
    dtsDistritos: TDataSource;
    pcPaises: TPageControl;
    tpsPais: TTabSheet;
    ToolBar4: TToolBar;
    btnNuevoPais: TToolButton;
    btnSalvarPais: TToolButton;
    ToolButton6: TToolButton;
    Image3: TImage;
    GroupBox5: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    lblIdioma: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edCodigoPais: TDBEdit;
    edDescripcion: TDBEdit;
    edNacionalidad: TDBEdit;
    tpsProvincias: TTabSheet;
    pcProvincias: TPageControl;
    tpsProvincia: TTabSheet;
    tpsDistritos: TTabSheet;
    ToolBar8: TToolBar;
    btnNuevaProvincia: TToolButton;
    btnSalvarProvincia: TToolButton;
    btnBorrarProvincia: TToolButton;
    Image1: TImage;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edIDProvincia: TDBEdit;
    edProvincia: TDBEdit;
    dbgProvincias: TDBGrid;
    pcDistritos: TPageControl;
    tpsDistrito: TTabSheet;
    ToolBar1: TToolBar;
    btnNuevoDistrito: TToolButton;
    btnSalvarDistrito: TToolButton;
    btnBorrarDistrito: TToolButton;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    edDistritoNombre: TDBEdit;
    dbgDistritos: TDBGrid;
    tpsCorregimientos: TTabSheet;
    pcCorregimientos: TPageControl;
    tpsCorregimiento: TTabSheet;
    ToolBar2: TToolBar;
    btnNuevoCorregimiento: TToolButton;
    btnBorrarCorregimiento: TToolButton;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    edCorregimiento: TDBEdit;
    dbgCorregimientos: TDBGrid;
    tpsBarrio: TTabSheet;
    DBLookupComboBox1: TDBLookupComboBox;
    dtsCorregimiento: TDataSource;
    ToolBar5: TToolBar;
    btnNuevoBarrio: TToolButton;
    btnSalvarBarrio: TToolButton;
    btnBorrarBarrio: TToolButton;
    GroupBox6: TGroupBox;
    Label11: TLabel;
    edBarrio: TDBEdit;
    dtsBarrio: TDataSource;
    btnSalvarCorregimiento: TToolButton;
    DBGrid1: TDBGrid;
    edNiveRiesgo: TDBEdit;
    Label12: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnSalvarPaisClick(Sender: TObject);
    procedure btnNuevoPaisClick(Sender: TObject);
    procedure dtsPaisesDataChange(Sender: TObject; Field: TField);
    Procedure cargarProvincias;
    procedure btnNuevaProvinciaClick(Sender: TObject);
    procedure btnSalvarProvinciaClick(Sender: TObject);
    procedure btnBorrarProvinciaClick(Sender: TObject);
    procedure btnNuevoDistritoClick(Sender: TObject);
    procedure btnSalvarDistritoClick(Sender: TObject);
    procedure dtsProvinciasDataChange(Sender: TObject; Field: TField);

    //-----
    Procedure  cargarDistritos;
    Procedure  cargarCorregimientos;
    Procedure  CargarBarrios;
    procedure btnBorrarDistritoClick(Sender: TObject);
    procedure dtsDistritosDataChange(Sender: TObject; Field: TField);
    procedure btnSalvarCorregimientoClick(Sender: TObject);
    procedure btnNuevoCorregimientoClick(Sender: TObject);
    procedure btnBorrarCorregimientoClick(Sender: TObject);
    procedure pcPaisesChange(Sender: TObject);
    procedure pcProvinciasChange(Sender: TObject);
    procedure pcDistritosChange(Sender: TObject);
    procedure dtsCorregimientoDataChange(Sender: TObject; Field: TField);
    procedure btnNuevoBarrioClick(Sender: TObject);
    procedure btnSalvarBarrioClick(Sender: TObject);
    procedure dbgCorregimientosCellClick(Column: TColumn);
    procedure dbgPaisesMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure dbgProvinciasMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPaises: TfrmPaises;

implementation

{$R *.dfm}

uses DM1;

procedure TfrmPaises.btnBorrarCorregimientoClick(Sender: TObject);
begin
  inherited;
  DataModulo1.corregimiento.Delete;
end;

procedure TfrmPaises.btnBorrarDistritoClick(Sender: TObject);
begin
  inherited;
  DataModulo1.Distritos.Delete;
end;

procedure TfrmPaises.btnBorrarProvinciaClick(Sender: TObject);
begin
  inherited;
  DataModulo1.Provincias.delete;
end;

//------------------------------------------------------------------------------
//    BOTONES DE NUEVO
//------------------------------------------------------------------------------
procedure TfrmPaises.btnNuevoPaisClick(Sender: TObject);
begin
  inherited;
  edCodigoPais.SetFocus;
  DataModulo1.paises2.Append;
end;


procedure TfrmPaises.btnNuevaProvinciaClick(Sender: TObject);
begin
  inherited;
  edIDProvincia.SetFocus;
  DataModulo1.Provincias.Append;
  DataModulo1.ProvinciasidPais.AsString :=
     DataModulo1.paises2codigoPais.AsString;
  DataModulo1.ProvinciasguidProvincia.AsString :=
     DataModulo1._guid();
end;

procedure TfrmPaises.btnNuevoDistritoClick(Sender: TObject);
begin
  inherited;
  edDistritoNombre.SetFocus;
  DataModulo1.Distritos.Append;
  DataModulo1.DistritosidPais.AsString  := DataModulo1.paises2codigoPais.Asstring;
  DataModulo1.DistritosidProvincia.AsInteger :=
                                    DataModulo1.Provinciasidprovincia.AsInteger;
  DataModulo1.DistritosguidProvincia.AsString:=
                                   DataModulo1.ProvinciasguidProvincia.AsString;
//  DataModulo1.DistritosguidDistrito.AsString := DataModulo1._guid();
end;



procedure TfrmPaises.btnNuevoCorregimientoClick(Sender: TObject);
begin

  inherited;
  edCorregimiento.SetFocus;
  DataModulo1.corregimiento.Append;

  DataModulo1.corregimientoidPais.AsString :=         // Pais
      DataModulo1.paises2codigoPais.AsString;
  DataModulo1.corregimientoidProvincia.AsInteger :=   // Provincia
      DataModulo1.Provinciasidprovincia.AsInteger ;
  DataModulo1.corregimientoidDistrito.AsInteger :=    // Distrito
      DataModulo1.DistritosidDistrito.AsInteger ;

end;

procedure TfrmPaises.btnNuevoBarrioClick(Sender: TObject);
begin
  inherited;
  edBarrio.SetFocus;
  DataModulo1.Barrios.Append;

end;


procedure TfrmPaises.btnSalvarBarrioClick(Sender: TObject);
var
 _guid : string;
begin
  inherited;
  if  Not (DataModulo1.Barrios.State IN [dsEdit,dsInsert]) then
  Begin
   DataModulo1.Barrios.edit;
  End;

  Try
   if DataModulo1.BarriosguidBarrio.AsString = '' then
      DataModulo1.BarriosguidBarrio.AsString :=
                  DataModulo1._guid();

    _guid := DataModulo1.BarriosguidBarrio.AsString ;

   //--- Asigna el guid de distrito


   DataModulo1.Barriosidpais.AsString  := DataModulo1.paises2codigoPais.AsString;
   DataModulo1.Barriosidprovincia.value:= DataModulo1.Provinciasidprovincia.value;
   DataModulo1.Barriosiddistrito.value := DataModulo1.DistritosidDistrito.Value;
   DataModulo1.BarriosidCorregimiento.value := DataModulo1.corregimientoidCorregimiento.Value;
   DataModulo1.BarriosguidCorregimiento.value  := DataModulo1.corregimientoguidCorregimiento.value;

   DataModulo1.Barrios.post;
   DataModulo1.Barrios.close;
   DataModulo1.Barrios.Open;
   DataModulo1.Barrios.Locate('guidBarrio',_guid,[]);
  except
   on E:Exception do
   begin
    showMessage('Error al salvar el Corregimiento...');
   end;
  end;
end;

procedure TfrmPaises.btnSalvarCorregimientoClick(Sender: TObject);
var
 _guid : string;
begin
  inherited;
  if  Not (DataModulo1.corregimiento.State IN [dsEdit,dsInsert]) then
  Begin
   DataModulo1.corregimiento.edit;
  End;

  Try
   if DataModulo1.corregimientoguidCorregimiento.AsString = '' then
      DataModulo1.corregimientoguidCorregimiento.AsString :=
                  DataModulo1._guid();

    _guid := DataModulo1.corregimientoguidCorregimiento.AsString ;

   //--- Asigna el guid de distrito
   DataModulo1.corregimientoguidDistrito.AsString  :=
               DataModulo1.DistritosguidDistrito.AsString;

   DataModulo1.corregimiento.post;
   DataModulo1.corregimiento.close;
   DataModulo1.corregimiento.Open;
   DataModulo1.corregimiento.Locate('guidCorregimiento',_guid,[]);
  except
   on E:Exception do
   begin
    showMessage('Error al salvar el Corregimiento...');
   end;
  end;
end;

procedure TfrmPaises.btnSalvarDistritoClick(Sender: TObject);
var
  _guid : string;
begin
  inherited;
  if  Not (DataModulo1.Distritos.State IN [dsEdit,dsInsert]) then
  Begin
   DataModulo1.Distritos.edit;
  End;

  Try
   if DataModulo1.DistritosguidDistrito.AsString = '' then
      DataModulo1.DistritosguidDistrito.AsString := DataModulo1._guid();

   _guid := DataModulo1.DistritosguidDistrito.AsString ;
   DataModulo1.DistritosguidProvincia.AsString  :=
               DataModulo1.ProvinciasguidProvincia.AsString;
   DataModulo1.Distritosfecha_au.AsDateTime := now;
   DataModulo1.Distritosusuario_au.AsString := usuario;

   DataModulo1.Distritos.post;
   DataModulo1.Distritos.close;
   DataModulo1.Distritos.Open;
   DataModulo1.Distritos.Locate('guidDistrito',_guid,[]);
  except
   on E:Exception do
   begin
    showMessage('Error al salvar el Distrito...');
   end;
  end;
end;

procedure TfrmPaises.btnSalvarPaisClick(Sender: TObject);
var
 _pais : string;
begin
  inherited;
  if  Not (DataModulo1.paises2.State IN [dsEdit,dsInsert]) then
  Begin
   DataModulo1.paises2.edit;
  End;

  Try
   _pais := edCodigoPais.Text ;
   DataModulo1.paises2idPais.AsString := DataModulo1.paises2codigoPais.AsString;
   DataModulo1.paises2.post;
   DataModulo1.paises2.close;
   DataModulo1.paises2.Open;
   DataModulo1.paises2.Locate('codigoPais',_pais,[]);
  except
   on E:Exception do
   begin
    showMessage('Error al salvar Paises...');
   end;
  end;
end;

procedure TfrmPaises.btnSalvarProvinciaClick(Sender: TObject);
var
 _guid : string;
begin
  inherited;
  if  Not (DataModulo1.Provincias.State IN [dsEdit,dsInsert]) then
  Begin
   DataModulo1.Provincias.edit;
  End;

  Try
   _guid := DataModulo1.ProvinciasguidProvincia.AsString ;
   DataModulo1.provinciasfecha_au.AsDateTime := now();
   DataModulo1.Provinciasusuario_au.AsString := usuario;
   DataModulo1.Provincias.post;
   DataModulo1.Provincias.close;
   DataModulo1.Provincias.Open;
   DataModulo1.Provincias.Locate('guidProvincia',_guid,[]);
  except
   on E:Exception do
   begin
    showMessage('Error al salvar la Provincia...');
   end;
  end;
end;

procedure TfrmPaises.dbgCorregimientosCellClick(Column: TColumn);
begin
  inherited;
  CargarBarrios;
end;

procedure TfrmPaises.dbgPaisesMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  cargarProvincias;
end;

procedure TfrmPaises.dbgProvinciasMouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  cargarDistritos;
end;

//------------------------------------------------------------------------------
//              DTSCHANGE
//------------------------------------------------------------------------------

procedure TfrmPaises.dtsPaisesDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  tpsPais.Caption := 'Pais :' +
       DataModulo1.paises2descripcion.AsString ;

 cargarProvincias;

  tpsProvincias.Caption := 'Provincias de ' +
    uppercase(DataModulo1.paises2descripcion.AsString) +
    ' ['+IntToStr(DataModulo1.Provincias.RecordCount)+']';
end;

procedure TfrmPaises.dtsProvinciasDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  tpsProvincia.Caption := 'Provincia : ' +
        DataModulo1.ProvinciasNombre.AsString ;

  cargarDistritos;

  tpsDistritos.Caption := 'Distritos de ' +
    uppercase(DataModulo1.ProvinciasNombre.AsString) +
    ' ['+IntToStr(DataModulo1.Distritos.RecordCount)+']';

end;

procedure TfrmPaises.dtsDistritosDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  tpsDistrito.Caption := 'Distrito : ' +
      DataModulo1.DistritosNombre.AsString ;
  cargarCorregimientos;

  tpsCorregimientos.Caption := 'Corregimientos de ' +
    uppercase(DataModulo1.DistritosNombre.AsString) +
    ' ['+IntToStr(DataModulo1.corregimiento.RecordCount)+']';

end;

procedure TfrmPaises.dtsCorregimientoDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  tpsCorregimiento.Caption := 'Corregimiento : ' +
      upperCase(dataModulo1.corregimientoDescripcion.AsString) ;

 //CargarBarrios;
end;


//------------------------------------------------------------------------------

procedure TfrmPaises.cargarProvincias;
begin

  DataModulo1.Provincias.Close;
  DataModulo1.Provincias.Params[0].asstring := DataModulo1.paises2codigoPais.AsString ;
  DataModulo1.Provincias.Open;

  cargarDistritos;

end;



procedure TfrmPaises.cargarDistritos;
begin
//
  DataModulo1.Distritos.Close;
  DataModulo1.Distritos.Params[0].asstring := DataModulo1.paises2codigoPais.AsString ;
  DataModulo1.Distritos.Params[1].value    := DataModulo1.Provinciasidprovincia.value ;
  DataModulo1.Distritos.Open;

  cargarCorregimientos ;


end;


procedure TfrmPaises.cargarCorregimientos;
begin

  DataModulo1.corregimiento.Close;
  DataModulo1.corregimiento.Params[0].asstring :=
          DataModulo1.DistritosguidDistrito.AsString ;
  DataModulo1.corregimiento.Open;

  CargarBarrios;

end;

procedure TfrmPaises.CargarBarrios;
begin

  DataModulo1.barrios.Close;
  DataModulo1.barrios.Params[0].asstring := DataModulo1.corregimientoguidCorregimiento.AsString;

  DataModulo1.barrios.Open;

end;


procedure TfrmPaises.FormShow(Sender: TObject);
begin
  inherited;

  Self.WindowState := wsMaximized;

  DataModulo1.paises2.Close;
  DataModulo1.paises2.Open;
  DataModulo1.paises2.First;
 // frmPaises.WindowState
//  DataModulo1.areas.Close;
//  DataModulo1.areas.Open;
//  DataModulo1.areas.First;

end;

procedure TfrmPaises.pcDistritosChange(Sender: TObject);
begin
  inherited;
 if pcDistritos.ActivePageIndex = 1 then
   pcCorregimientos.ActivePageIndex  := 0;
end;

procedure TfrmPaises.pcPaisesChange(Sender: TObject);
begin
  inherited;
 if pcPaises.ActivePageIndex = 1 then
   pcProvincias.ActivePageIndex  := 0;

end;

procedure TfrmPaises.pcProvinciasChange(Sender: TObject);
begin
  inherited;
  if pcProvincias.ActivePageIndex = 1 then
   pcDistritos.ActivePageIndex  := 0;
end;

end.
