unit MantenimientoTipoIngresos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ventana2, Vcl.ComCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ToolWin,
  Vcl.ExtCtrls;

type
  TfrmTipoIngreso = class(TfrmVentana)
    ToolBar8: TToolBar;
    btnNuevo: TToolButton;
    btnBorrar: TToolButton;
    btnSalvar: TToolButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    dbgTiposIngresos: TDBGrid;
    edDescripcion: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTipoIngreso: TfrmTipoIngreso;

implementation

{$R *.dfm}

uses DTS;

procedure TfrmTipoIngreso.btnNuevoClick(Sender: TObject);
begin
  inherited;
  edDescripcion.SetFocus;
  ds.fuentesIngresos.Append;
end;

procedure TfrmTipoIngreso.btnSalvarClick(Sender: TObject);
var
_guid : string;
begin
  inherited;
  if  Not (ds.fuentesIngresos .State IN [dsEdit,dsInsert]) then
  Begin
    ds.fuentesIngresos.edit;
  End;

   Try
    if ds.fuentesIngresosguid.AsString = '' then
       ds.fuentesIngresosguid.AsString := ds._guid;

     ds.fuentesIngresos.post;
   except
     on E:Exception do
     begin
       showMessage('Error al salvar el Tipo de Ingreso...');
     End;
   End;

end;

procedure TfrmTipoIngreso.FormShow(Sender: TObject);
begin
  inherited;
  ds.fuentesIngresos.Open;
end;

end.
