unit MantenimientoFrecuenciaPagos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ventana2, Vcl.ComCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.ToolWin;

type
  TfrmFrecuenciaPagos = class(TfrmVentana)
    ToolBar8: TToolBar;
    btnNuevo: TToolButton;
    btnBorrar: TToolButton;
    btnSalvar: TToolButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    dbgAsociaciones: TDBGrid;
    Label2: TLabel;
    edDias: TDBEdit;
    Label3: TLabel;
    DBCheckBox1: TDBCheckBox;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    edLetra: TDBEdit;
    edDescripcion: TDBEdit;
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
  frmFrecuenciaPagos: TfrmFrecuenciaPagos;

implementation

{$R *.dfm}

uses DM1, DTS;

procedure TfrmFrecuenciaPagos.btnBorrarClick(Sender: TObject);
begin
  inherited;
  if not ds.frecuenciaPagos.eof then
    ds.frecuenciaPagos.Delete;
end;

procedure TfrmFrecuenciaPagos.btnNuevoClick(Sender: TObject);
begin
  inherited;
  edDescripcion.SetFocus;
  DataModulo1.frecuenciaPagos.Append;
//  ds.frecuenciaPagos.AsString := ds._guid();
end;

procedure TfrmFrecuenciaPagos.btnSalvarClick(Sender: TObject);
var
_guid : string;

begin
  inherited;
  if  Not (DataModulo1 .frecuenciaPagos.State IN [dsEdit,dsInsert]) then
  Begin
    DataModulo1.frecuenciaPagos.edit;
  End;

   Try
    if DataModulo1.frecuenciaPagosguid.AsString = '' then
       DataModulo1.frecuenciaPagosguid.AsString := DataModulo1._guid;

     _guid :=   DataModulo1.frecuenciaPagosguid.AsString;

     DataModulo1.frecuenciaPagos.post;
//
//     ds.frecuenciaPagos.Close;
//     ds.frecuenciaPagos.Open;

     DataModulo1.frecuenciaPagos.Locate('guid',_guid,[]);


   except
     on E:Exception do
     begin
       showMessage('Error al salvar la forma de Pago...');
     End;
   End;

end;

procedure TfrmFrecuenciaPagos.FormShow(Sender: TObject);
begin
  inherited;
  DataModulo1.frecuenciaPagos.Open;
end;

end.
