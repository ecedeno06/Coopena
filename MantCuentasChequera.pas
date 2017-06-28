unit MantCuentasChequera;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ventana2, Vcl.ComCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.ToolWin, Vcl.Buttons;

type
  TfrmMantCuentasChequera = class(TfrmVentana)
    PageControl1: TPageControl;
    tsBanco: TTabSheet;
    ToolBar8: TToolBar;
    btnCargoNuevo1: TToolButton;
    ToolButton1: TToolButton;
    btnCargoSalvar1: TToolButton;
    Panel1: TPanel;
    Image1: TImage;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edNombre: TDBEdit;
    dbgChequesCuenta: TDBGrid;
    dtsChequesCuenta: TDataSource;
    DBEdit1: TDBEdit;
    edTipoCuenta: TDBLookupComboBox;
    Label3: TLabel;
    dtsTipoCuenta: TDataSource;
    Label4: TLabel;
    edBanco: TDBLookupComboBox;
    dtsBancos: TDataSource;
    Label5: TLabel;
    edCuentaContable: TDBLookupComboBox;
    dtsCuentaContable: TDataSource;
    SpeedButton1: TSpeedButton;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure btnCargoNuevo1Click(Sender: TObject);
    procedure btnCargoSalvar1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMantCuentasChequera: TfrmMantCuentasChequera;

implementation

{$R *.dfm}

uses DM1, Principal;

procedure TfrmMantCuentasChequera.btnCargoNuevo1Click(Sender: TObject);
begin
  inherited;
   DataModulo1.chequesCuenta.append;
end;

procedure TfrmMantCuentasChequera.btnCargoSalvar1Click(Sender: TObject);
begin
  inherited;
  if (DataModulo1.chequesCuenta.State IN [dsInsert]) then
   // DataModulo1.tipoCuentaCheque.FieldByName('idProfesion').Value  := Siguiente + 1
  else
   if  Not (DataModulo1.chequesCuenta.State IN [dsEdit,dsInsert]) then
   Begin
    DataModulo1.chequesCuenta.edit;
   End;

  Try
   DataModulo1.chequesCuenta.post;
  except
   on E:Exception do
   begin
    showMessage('Error al salvar la Cuenta...');
   end;
  end;
end;

procedure TfrmMantCuentasChequera.FormShow(Sender: TObject);
begin
  inherited;
 DataModulo1.chequesCuenta.Open;
 DataModulo1.chequesCuenta.First;

 DataModulo1.tipoCuentaCheque.Open;
 DataModulo1.Bancos.Open;

 DataModulo1.CuentaContable.open;
end;

procedure TfrmMantCuentasChequera.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  DataModulo1.chequesCuenta.Edit;
  DataModulo1.chequesCuentacuenta.Clear;
end;

end.
