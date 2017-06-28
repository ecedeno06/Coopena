unit Asociaciones;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ventana2, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmAsociaciones = class(TfrmVentana)
    ToolBar8: TToolBar;
    btnNuevo: TToolButton;
    btnBorrar: TToolButton;
    btnSalvar: TToolButton;
    GroupBox1: TGroupBox;
    dbgAsociaciones: TDBGrid;
    Label1: TLabel;
    edAsociacion: TDBEdit;
    dtsAsociaciones: TDataSource;
    DBCheckBox1: TDBCheckBox;
    procedure btnNuevoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAsociaciones: TfrmAsociaciones;

implementation

{$R *.dfm}

uses DM1;

procedure TfrmAsociaciones.btnNuevoClick(Sender: TObject);
begin
  inherited;
  edAsociacion.SetFocus;
  DataModulo1.Asociaciones.Append;

end;

procedure TfrmAsociaciones.btnSalvarClick(Sender: TObject);
var
_guid : string;

begin
  inherited;
  if  Not (DataModulo1.Asociaciones.State IN [dsEdit,dsInsert]) then
  Begin
    DataModulo1.Asociaciones.edit;
  End;

   Try
    if DataModulo1.Asociacionesguid.AsString = '' then
       DataModulo1.Asociacionesguid.AsString := DataModulo1._guid;

     _guid :=   DataModulo1.Asociacionesguid.AsString;

     DataModulo1.Asociaciones.post;

     DataModulo1.Asociaciones.Locate('guid',_guid,[]);


   except
     on E:Exception do
     begin
       showMessage('Error al salvar el Cargo...');
     End;
   End;
end;

procedure TfrmAsociaciones.FormShow(Sender: TObject);
begin
  inherited;
  DataModulo1.Asociaciones.Open;

end;

end.



