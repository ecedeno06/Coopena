unit MantTipoDocumentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ventana2, Data.DB, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TfrmTipoDocumentos = class(TfrmVentana)
    dbgParentezcos: TDBGrid;
    PageControl1: TPageControl;
    tsAreas: TTabSheet;
    Image2: TImage;
    GroupBox4: TGroupBox;
    Label6: TLabel;
    edNombre: TDBEdit;
    ToolBar3: TToolBar;
    btnAreaNuevo1: TToolButton;
    ToolButton5: TToolButton;
    btnAreaSalvar1: TToolButton;
    dtsTipoDoc: TDataSource;
    Label1: TLabel;
    edID: TDBEdit;
    Label2: TLabel;
    edSecuencia: TDBEdit;
    Label3: TLabel;
    edIncremento: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure btnAreaNuevo1Click(Sender: TObject);
    procedure btnAreaSalvar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTipoDocumentos: TfrmTipoDocumentos;

implementation

{$R *.dfm}

uses DM1;

procedure TfrmTipoDocumentos.btnAreaNuevo1Click(Sender: TObject);
begin
  inherited;
  edID.SetFocus;
  DataModulo1.TipoDocumentos.Append;
end;

procedure TfrmTipoDocumentos.btnAreaSalvar1Click(Sender: TObject);
begin
  inherited;

   if  Not (DataModulo1.TipoDocumentos.State IN [dsEdit,dsInsert]) then
   Begin
    DataModulo1.TipoDocumentos.edit;
   End;

  Try
   DataModulo1.TipoDocumentos.post;
  except
   on E:Exception do
   begin
    showMessage('Error al salvar el Tipo de Documento...');
   end;
  end;
end;

procedure TfrmTipoDocumentos.FormShow(Sender: TObject);
begin
  inherited;
  DataModulo1.TipoDocumentos.close;
  DataModulo1.TipoDocumentos.Open;
  DataModulo1.TipoDocumentos.First;
end;

end.
