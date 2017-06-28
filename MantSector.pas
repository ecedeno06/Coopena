unit MantSector;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ventana2, Vcl.ComCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.ToolWin;

type
  TfrmSector = class(TfrmVentana)
    dbgSectorEco: TDBGrid;
    PageControl1: TPageControl;
    tsBanco: TTabSheet;
    ToolBar8: TToolBar;
    btnNuevo1: TToolButton;
    btnBorrar1: TToolButton;
    btnSalvar1: TToolButton;
    Panel1: TPanel;
    Image1: TImage;
    GroupBox1: TGroupBox;
    ID: TLabel;
    Label2: TLabel;
    edID: TDBEdit;
    edNombre: TDBEdit;
    dtsSector: TDataSource;
    Label3: TLabel;
    edTarifa: TDBEdit;
    procedure edTarifaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnNuevo1Click(Sender: TObject);
    procedure btnBorrar1Click(Sender: TObject);
    procedure btnSalvar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSector: TfrmSector;

implementation

{$R *.dfm}

uses DM1, Principal;


procedure TfrmSector.btnNuevo1Click(Sender: TObject);
begin
  inherited;
  edNombre.SetFocus;
  DataModulo1.Sectores.Append;
end;

procedure TfrmSector.btnSalvar1Click(Sender: TObject);
begin
  inherited;
  if  Not (DataModulo1.Sectores.State IN [dsEdit,dsInsert]) then
  Begin
   DataModulo1.Sectores.edit;
  End;

  Try
   DataModulo1.Sectores.post;
  except
   on E:Exception do
   begin
    showMessage('Error al salvar el Sector...');
   end;
  end;
end;

procedure TfrmSector.edTarifaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in [#8,'0'..'9','.','+','-'])
   then key:=#0;

  if (key = '.' ) and (pos('.',edTarifa.Text) > 0) then
    key:=#0;

end;

procedure TfrmSector.FormShow(Sender: TObject);
begin
  inherited;
  DataModulo1.Sectores.Close;
  DataModulo1.Sectores.Open;
  DataModulo1.Sectores.First;
end;

procedure TfrmSector.btnBorrar1Click(Sender: TObject);
begin
  inherited;
    DataModulo1.Sectores.Delete;
end;

end.
