unit MantGEO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ventana2, Vcl.ComCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.ToolWin,
  Vcl.Imaging.GIFImg;

type
  TfrmGeografia = class(TfrmVentana)
    dbgBancos: TDBGrid;
    PageControl1: TPageControl;
    dtsProvincias: TDataSource;
    tsBanco: TTabSheet;
    ToolBar8: TToolBar;
    btnNuevo1: TToolButton;
    ToolButton1: TToolButton;
    btnSalvar1: TToolButton;
    Panel1: TPanel;
    Image1: TImage;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edIDProvincia: TDBEdit;
    edProvincia: TDBEdit;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    ToolBar1: TToolBar;
    btnNuevo2: TToolButton;
    ToolButton3: TToolButton;
    TabSheet2: TTabSheet;
    ToolBar2: TToolBar;
    btnNuevo3: TToolButton;
    ToolButton4: TToolButton;
    btnSalvar3: TToolButton;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    edDistritoNombre: TDBEdit;
    dbgDistritos: TDBGrid;
    dbgCorregimientos: TDBGrid;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    edCorregimiento: TDBEdit;
    dtsDistritos: TDataSource;
    btnSalvar2: TToolButton;
    dtsCorreg: TDataSource;
    tsAreas: TTabSheet;
    dbgArea: TDBGrid;
    GroupBox4: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    edAreaID: TDBEdit;
    edAreaNombre: TDBEdit;
    Image2: TImage;
    ToolBar3: TToolBar;
    btnAreaNuevo1: TToolButton;
    ToolButton5: TToolButton;
    btnAreaSalvar1: TToolButton;
    dtsAreas: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure btnNuevo1Click(Sender: TObject);
    procedure btnSalvar1Click(Sender: TObject);
    procedure btnNuevo2Click(Sender: TObject);
    procedure dtsProvinciasDataChange(Sender: TObject; Field: TField);
    procedure btnSalvar2Click(Sender: TObject);
    procedure btnSalvar3Click(Sender: TObject);
    procedure btnNuevo3Click(Sender: TObject);
    procedure dtsDistritosDataChange(Sender: TObject; Field: TField);
    procedure btnAreaNuevo1Click(Sender: TObject);
    procedure btnAreaSalvar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGeografia: TfrmGeografia;

implementation

{$R *.dfm}

uses DM1, Principal;

procedure TfrmGeografia.btnAreaNuevo1Click(Sender: TObject);
begin
  inherited;
  edAreaNombre.SetFocus;
  DataModulo1.areas.Append;
end;

procedure TfrmGeografia.btnAreaSalvar1Click(Sender: TObject);
begin
  inherited;
  if  Not (DataModulo1.Areas.State IN [dsEdit,dsInsert]) then
  Begin
   DataModulo1.Areas.edit;
  End;

  Try
   DataModulo1.Areas.post;
  except
   on E:Exception do
   begin
    showMessage('Error al salvar el Area...');
   end;
  end;
end;

procedure TfrmGeografia.btnNuevo1Click(Sender: TObject);
begin
  inherited;
//---
  edIDProvincia.SetFocus;
  DataModulo1.Provincias.Append;
end;

procedure TfrmGeografia.btnNuevo2Click(Sender: TObject);
begin
  inherited;
//---
   edDistritoNombre.SetFocus;
   DataModulo1.Distritos.Append;
   DataModulo1.DistritosidProvincia.Value := DataModulo1.Provinciasidprovincia.Value;

end;

procedure TfrmGeografia.btnNuevo3Click(Sender: TObject);
begin
  inherited;
//---
   edCorregimiento.SetFocus;
   DataModulo1.Corregimientos.Append;
   DataModulo1.CorregimientosidProvincia.Value := DataModulo1.Provinciasidprovincia.Value;
   DataModulo1.CorregimientosidDistrito.Value  := DataModulo1.DistritosidDistrito.Value;

end;

procedure TfrmGeografia.btnSalvar1Click(Sender: TObject);
var
 maximo : integer;
begin
  inherited;
  if  Not (DataModulo1.Provincias.State IN [dsEdit,dsInsert]) then
  Begin
   DataModulo1.Provincias.edit;
  End;

  Try
   DataModulo1.Provincias.post;
  except
   on E:Exception do
   begin
    showMessage('Error al salvar la Provincia...');
   end;
  end;
end;



procedure TfrmGeografia.dtsDistritosDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  DataModulo1.Corregimientos.Close;
  DataModulo1.Corregimientos.Params [0].Value := DataModulo1.Provinciasidprovincia.Value;
  DataModulo1.Corregimientos.Params [1].Value := DataModulo1.DistritosidDistrito.Value;
  DataModulo1.Corregimientos.Open;
end;

procedure TfrmGeografia.dtsProvinciasDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  DataModulo1.Distritos.Close;
  DataModulo1.Distritos.Params [0].Value := DataModulo1.Provinciasidprovincia.Value;
  DataModulo1.Distritos.Open;
end;

procedure TfrmGeografia.FormShow(Sender: TObject);
begin
  inherited;
//---

DataModulo1.Provincias.Close;
DataModulo1.Provincias.Open;
DataModulo1.Provincias.First;

DataModulo1.areas.Close;
DataModulo1.areas.Open;
DataModulo1.areas.First;

end;

procedure TfrmGeografia.btnSalvar2Click(Sender: TObject);
begin
  inherited;
  if  Not (DataModulo1.Distritos.State IN [dsEdit,dsInsert]) then
  Begin
   DataModulo1.Distritos.edit;
  End;

  Try
   DataModulo1.Distritos.post;
  except
   on E:Exception do
   begin
    showMessage('Error al salvar la Distrito...');
   end;
  end;
end;

procedure TfrmGeografia.btnSalvar3Click(Sender: TObject);
begin
  inherited;
  inherited;
  if  Not (DataModulo1.Corregimientos.State IN [dsEdit,dsInsert]) then
  Begin
   DataModulo1.Corregimientos.edit;
  End;

  Try
   DataModulo1.Corregimientos.post;
  except
   on E:Exception do
   begin
    showMessage('Error al salvar el Corregimiento...');
   end;
  end;
end;

end.


























