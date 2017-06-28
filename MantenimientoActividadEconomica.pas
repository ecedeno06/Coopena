unit MantenimientoActividadEconomica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ventana2, Vcl.ComCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ToolWin;

type
  TfrmActividadEconimca = class(TfrmVentana)
    ToolBar8: TToolBar;
    btnNuevo: TToolButton;
    btnBorrar: TToolButton;
    btnSalvar: TToolButton;
    dbgTiposIngresos: TDBGrid;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edDescripcion: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnBorrarClick(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmActividadEconimca: TfrmActividadEconimca;

implementation

{$R *.dfm}

uses DTS;

procedure TfrmActividadEconimca.btnBorrarClick(Sender: TObject);
begin
  inherited;
  if not ds.actividadEconomica.eof then
     ds.actividadEconomica.Delete;
end;

procedure TfrmActividadEconimca.btnNuevoClick(Sender: TObject);
begin
  inherited;
  edDescripcion.SetFocus;
  ds.actividadEconomica.Append;
end;

procedure TfrmActividadEconimca.btnSalvarClick(Sender: TObject);
var
_guid : string;
begin
  inherited;
  if  Not (ds.actividadEconomica .State IN [dsEdit,dsInsert]) then
  Begin
    ds.actividadEconomica.edit;
  End;

   Try
    if ds.actividadEconomicaguid.AsString = '' then
       ds.actividadEconomicaguid.AsString := ds._guid;

     ds.actividadEconomica.post;
   except
     on E:Exception do
     begin
       showMessage('Error al salvar el Tipo de Ingreso...');
     End;
   End;

end;

procedure TfrmActividadEconimca.FormActivate(Sender: TObject);
begin
  inherited;
//  ds.sectorEconomico.Close;
//  ds.sectorEconomico.Open;
end;

procedure TfrmActividadEconimca.FormShow(Sender: TObject);
begin
  inherited;
  edDescripcion.SetFocus;
  ds.actividadEconomica.open;

end;

end.
