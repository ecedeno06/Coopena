unit MantFiadores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ventana2, Data.DB, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin, Vcl.Grids, Vcl.DBGrids, Vcl.Mask,
  Vcl.DBCtrls;

type
  TfrmFiadores = class(TfrmVentana)
    GroupBox3: TGroupBox;
    dbgSocios: TDBGrid;
    ToolBar7: TToolBar;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    cbSocioFiltro: TComboBox;
    edFiltro: TButtonedEdit;
    btnSocioBuscar: TToolButton;
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
    Label3: TLabel;
    edID: TDBEdit;
    edNombre: TDBEdit;
    edTarifa: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFiadores: TfrmFiadores;

implementation

{$R *.dfm}

uses DM1;

end.
