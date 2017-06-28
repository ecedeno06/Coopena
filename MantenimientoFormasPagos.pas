unit MantenimientoFormasPagos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ventana2, Vcl.ComCtrls, Vcl.ToolWin,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TfrmFormasPagos = class(TfrmVentana)
    ToolBar8: TToolBar;
    btnNuevo: TToolButton;
    btnBorrar: TToolButton;
    btnSalvar: TToolButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    dbgAsociaciones: TDBGrid;
    edDescripcion: TDBEdit;
    Label2: TLabel;
    edsiglas: TDBEdit;
    procedure btnNuevoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFormasPagos: TfrmFormasPagos;

implementation

{$R *.dfm}

uses DM1, DTS;

procedure TfrmFormasPagos.btnNuevoClick(Sender: TObject);
begin
  inherited;
  ds.formasPagos.Append;
end;

procedure TfrmFormasPagos.btnSalvarClick(Sender: TObject);
var
_guid : string;

begin
  inherited;
  if  Not (ds.formasPagos.State IN [dsEdit,dsInsert]) then
  Begin
    ds.formasPagos.edit;
  End;

   Try
    if ds.formasPagosguid.AsString = '' then
       ds.formasPagosguid.AsString := DataModulo1._guid;

     _guid :=   ds.formasPagosguid.AsString;

     ds.formasPagos.post;

  //   DataModulo1.Asociaciones.Locate('guid',_guid,[]);


   except
     on E:Exception do
     begin
       showMessage('Error al salvar el Cargo...');
     End;
   End;

end;

procedure TfrmFormasPagos.FormShow(Sender: TObject);
begin
  inherited;
  ds.formasPagos.Open;
end;

end.
