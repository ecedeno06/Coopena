unit MantenimientoFormaPago;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ventana2, Vcl.ComCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.ToolWin;

type
  TfrmFormaPago = class(TfrmVentana)
    ToolBar8: TToolBar;
    btnNuevo: TToolButton;
    btnBorrar: TToolButton;
    btnSalvar: TToolButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    dbgAsociaciones: TDBGrid;
    edDescripcion: TDBEdit;
    Label2: TLabel;
    edDias: TDBEdit;
    procedure btnNuevoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnBorrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFormaPago: TfrmFormaPago;

implementation

{$R *.dfm}

uses DM1, DTS;

procedure TfrmFormaPago.btnBorrarClick(Sender: TObject);
begin
  inherited;
  if not ds.formaPago.eof then
    ds.formaPago.Delete;
end;

procedure TfrmFormaPago.btnNuevoClick(Sender: TObject);
begin
  inherited;
  edDescripcion.SetFocus;
  ds.formaPago.Append;
  ds.formaPagoguid.AsString := ds._guid();
end;

procedure TfrmFormaPago.btnSalvarClick(Sender: TObject);
var
_guid : string;

begin
  inherited;
  if  Not (ds.formaPago.State IN [dsEdit,dsInsert]) then
  Begin
    ds.formaPago.edit;
  End;

   Try
    if ds.formaPagoguid.AsString = '' then
       ds.formaPagoguid.AsString := DataModulo1._guid;

     _guid :=   ds.formaPagoguid.AsString;

     ds.formaPago.post;

     ds.formaPago.Locate('guid',_guid,[]);


   except
     on E:Exception do
     begin
       showMessage('Error al salvar la forma de Pago...');
     End;
   End;

end;

procedure TfrmFormaPago.FormShow(Sender: TObject);
begin
  inherited;
  ds.formaPago.Open;
end;

end.
