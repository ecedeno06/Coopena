unit MantTipoCheque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ventana2, Vcl.ComCtrls, Data.DB,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ToolWin, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.pngimage;

type
  TfrmMantTipoCheque = class(TfrmVentana)
    dbgTipoCheque: TDBGrid;
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
    edID: TDBEdit;
    edNombre: TDBEdit;
    dtsTipoCuentaCheque: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure btnCargoNuevo1Click(Sender: TObject);
    procedure btnCargoSalvar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMantTipoCheque: TfrmMantTipoCheque;

implementation

{$R *.dfm}

uses DM1, Principal;

procedure TfrmMantTipoCheque.btnCargoNuevo1Click(Sender: TObject);
begin
  inherited;
 DataModulo1.tipoCuentaCheque.Append;
end;

procedure TfrmMantTipoCheque.btnCargoSalvar1Click(Sender: TObject);
begin
  inherited;
  if (DataModulo1.tipoCuentaCheque.State IN [dsInsert]) then
   // DataModulo1.tipoCuentaCheque.FieldByName('idProfesion').Value  := Siguiente + 1
  else
   if  Not (DataModulo1.tipoCuentaCheque.State IN [dsEdit,dsInsert]) then
   Begin
    DataModulo1.tipoCuentaCheque.edit;
   End;

  Try
   DataModulo1.tipoCuentaCheque.post;
  except
   on E:Exception do
   begin
    showMessage('Error al salvar el Tipo Cuenta...');
   end;
  end;
end;

procedure TfrmMantTipoCheque.FormShow(Sender: TObject);
begin
 DataModulo1.tipoCuentaCheque.Open;
 DataModulo1.tipoCuentaCheque.First;
end;

end.

