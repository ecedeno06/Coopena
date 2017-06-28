unit MantTipoCuentaContable;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ventana2, Vcl.ComCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.ToolWin;

type
  TfrmMantTipoCuentaContable = class(TfrmVentana)
    ToolBar8: TToolBar;
    btnNuevo: TToolButton;
    btnEliminar: TToolButton;
    btnSalvar: TToolButton;
    dbgBancos: TDBGrid;
    dtsTipoCuentas: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMantTipoCuentaContable: TfrmMantTipoCuentaContable;

implementation

{$R *.dfm}

uses DM1, Principal;

procedure TfrmMantTipoCuentaContable.btnEliminarClick(Sender: TObject);
begin
  inherited;
//  DataModulo1.tipoCuentasContables.Delete;
end;

procedure TfrmMantTipoCuentaContable.btnNuevoClick(Sender: TObject);
begin
  inherited;
  DataModulo1.tipoCuentasContables.Append;
end;

procedure TfrmMantTipoCuentaContable.btnSalvarClick(Sender: TObject);
begin
  inherited;
  if (DataModulo1.tipoCuentasContables.State IN [dsInsert]) then
//    DataModulo1.tipoCuentasContables.FieldByName('idProfesion').Value  := Siguiente + 1
  else
   if  Not (DataModulo1.tipoCuentasContables.State IN [dsEdit,dsInsert]) then
   Begin
    DataModulo1.tipoCuentasContables.edit;
   End;

  Try
   DataModulo1.tipoCuentasContables.post;
  except
   on E:Exception do
   begin
    showMessage('Error al salvar el Tipo...');
   end;
  end;
end;

procedure TfrmMantTipoCuentaContable.FormShow(Sender: TObject);
begin
  inherited;
  DataModulo1.tipoCuentasContables.Close;
  DataModulo1.tipoCuentasContables.Open;
end;

end.



