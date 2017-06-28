unit Bancos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ComCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TfrmBancos = class(TForm)
    dbgBancos: TDBGrid;
    PageControl1: TPageControl;
    dtsBancos: TDataSource;
    dtsCuentas: TDataSource;
    tsBanco: TTabSheet;
    ToolBar8: TToolBar;
    btnBancoNuevo1: TToolButton;
    ToolButton1: TToolButton;
    btnBancoSalvar1: TToolButton;
    tipoCuentas: TDataSource;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edIDBanco: TDBEdit;
    edBancoNombre: TDBEdit;
    Panel2: TPanel;
    ToolBar1: TToolBar;
    btnCuentaNuevo1: TToolButton;
    ToolButton3: TToolButton;
    btnCuentaSalvar: TToolButton;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edCuenta: TDBEdit;
    edNombreCuenta: TDBEdit;
    edSiguiente: TDBEdit;
    edIncremento: TDBEdit;
    edTipoCuenta: TDBLookupComboBox;
    Panel3: TPanel;
    lbCuentas: TLabel;
    Image1: TImage;
    Image2: TImage;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure btnCuentaNuevo1Click(Sender: TObject);
    procedure btnBancoNuevo1Click(Sender: TObject);
    procedure btnBancoSalvar1Click(Sender: TObject);
    procedure dtsBancosDataChange(Sender: TObject; Field: TField);
    procedure btnCuentaSalvarClick(Sender: TObject);
    procedure GroupBox2Click(Sender: TObject);
  private
    Function SiguienteBanco():Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBancos: TfrmBancos;

implementation

{$R *.dfm}

uses DM1, Login2, Principal;

procedure TfrmBancos.btnBancoNuevo1Click(Sender: TObject);
begin


  edBancoNombre.SetFocus;
  DataModulo1.Bancos.Append;

end;

procedure TfrmBancos.btnBancoSalvar1Click(Sender: TObject);
var
 maximo : integer;
begin
  if (DataModulo1.bancos.State IN [dsInsert]) then
  begin
     Maximo := SiguienteBanco + 1;
     DataModulo1.Bancosbanco.Value := maximo ;
  end
  else
   if  Not (DataModulo1.bancos.State IN [dsEdit]) then
   Begin
    DataModulo1.bancos.edit;
   End;

  Try

   DataModulo1.bancos.post;
  except
   on E:Exception do
   begin
    showMessage('Error al salvar el Banco...');
   end;
  end;
end;

procedure TfrmBancos.btnCuentaNuevo1Click(Sender: TObject);
begin

  edCuenta.SetFocus;
  DataModulo1.BancoCuentas.Append;
  DataModulo1.BancoCuentasbanco.Value := datamodulo1.Bancosbanco.Value ;

end;

//----------------------- Salvar La Cuenta
procedure TfrmBancos.btnCuentaSalvarClick(Sender: TObject);
var
 maximo : integer;
begin

  if  Not (DataModulo1.BancoCuentas.State IN [dsEdit,dsInsert]) then
  Begin
   DataModulo1.BancoCuentas.edit;
  End;

  Try

   DataModulo1.BancoCuentas.post;
  except
   on E:Exception do
   begin
    showMessage('Error al salvar la Cuenta...');
   end;
  end;
end;

procedure TfrmBancos.dtsBancosDataChange(Sender: TObject; Field: TField);
Var
  Sec : Integer;
begin

  DataModulo1.BancoCuentas.Close;
  DataModulo1.BancoCuentas.Params [0].Value :=
                   DataModulo1.Bancosbanco.Value ;

  DataModulo1.BancoCuentas.open;
  DataModulo1.BancoCuentas.First;

  if not DataModulo1.BancoCuentas.eof then
  Begin
   lbCuentas.Caption  := 'Cuentas: ' +
                         IntToStr(DataModulo1.BancoCuentas.RecordCount);
  End
  Else
    lbCuentas.Caption  := 'Cuentas: 0';


end;
//------------------------------------------------------------------------------
//                          Cerrar Ventana
//------------------------------------------------------------------------------
procedure TfrmBancos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmBancos.FormDestroy(Sender: TObject);
begin
self := nil;
end;

procedure TfrmBancos.FormShow(Sender: TObject);
begin
  DataModulo1.Bancos.close;
  DataModulo1.Bancos.Open;
  DataModulo1.TipoCuentas.Open;
end;

procedure TfrmBancos.GroupBox2Click(Sender: TObject);
begin

end;

//------------------------------------------------------------------------------
//                          Busca el Siguiente Numero para el Banco
//------------------------------------------------------------------------------
function TfrmBancos.SiguienteBanco: Integer;
begin

  DataModulo1.SecuenciaBanco.Close;
  DataModulo1.SecuenciaBanco.Sql.Clear;
  DataModulo1.SecuenciaBanco.Sql.Add ('Select max(Banco) as sec From Chq_Bancos');
  DataModulo1.SecuenciaBanco.Open;

  if Not DataModulo1.SecuenciaBanco.eof then
  begin
    if DataModulo1.SecuenciaBanco.FieldByName('sec').Value > 0 then
     result:= DataModulo1.SecuenciaBanco.FieldByName('sec').Value
    else
     Result := 0;
  end;

end;

procedure TfrmBancos.ToolButton2Click(Sender: TObject);
begin
  DataModulo1.BancoCuentas.Prior;
end;

procedure TfrmBancos.ToolButton4Click(Sender: TObject);
begin
  DataModulo1.BancoCuentas.Next;
end;

end.
