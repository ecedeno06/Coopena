unit MantAprobacionesCheque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ventana2, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.Grids, Vcl.DBGrids;

type
  TfrmMantAprobacionesCheque = class(TfrmVentana)
    dbgTipoCheque: TDBGrid;
    PageControl1: TPageControl;
    tsBanco: TTabSheet;
    ToolBar8: TToolBar;
    btnCargoNuevo1: TToolButton;
    ToolButton1: TToolButton;
    btnCargoSalvar1: TToolButton;
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    edNivel: TDBEdit;
    edNombre: TDBEdit;
    dtsAprobaciones: TDataSource;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBCheckBox1: TDBCheckBox;
    tsAprobacionUsuario: TTabSheet;
    GroupBox2: TGroupBox;
    ToolBar1: TToolBar;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    DBGrid1: TDBGrid;
    dtsNivelAprobacionUsuario: TDataSource;
    Label4: TLabel;
    edUsuario: TDBLookupComboBox;
    dtsUsuarios: TDataSource;
    Label5: TLabel;
    edDesde: TDBEdit;
    Label6: TLabel;
    edHasta: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    procedure FormShow(Sender: TObject);
    procedure btnCargoNuevo1Click(Sender: TObject);
    procedure btnCargoSalvar1Click(Sender: TObject);
    procedure dtsAprobacionesDataChange(Sender: TObject; Field: TField);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMantAprobacionesCheque: TfrmMantAprobacionesCheque;

implementation

{$R *.dfm}

uses DM1;

procedure TfrmMantAprobacionesCheque.btnCargoNuevo1Click(Sender: TObject);
begin
  inherited;
  edNivel.SetFocus;
  DataModulo1.Aprobaciones.Append;

end;

procedure TfrmMantAprobacionesCheque.btnCargoSalvar1Click(Sender: TObject);
begin
  inherited;
  if (DataModulo1.Aprobaciones.State IN [dsInsert]) then
   // DataModulo1.tipoCuentaCheque.FieldByName('idProfesion').Value  := Siguiente + 1
  else
   if  Not (DataModulo1.Aprobaciones.State IN [dsEdit,dsInsert]) then
   Begin
    DataModulo1.Aprobaciones.edit;
   End;

  Try
   DataModulo1.Aprobaciones.post;
  except
   on E:Exception do
   begin
    showMessage('Error al salvar el Nivel...');
   end;

  end;
end;

procedure TfrmMantAprobacionesCheque.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
//      dbgTipoCheque.Columns[0].Width := DBGrid1.Width - 10;
end;

procedure TfrmMantAprobacionesCheque.dtsAprobacionesDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  DataModulo1.NivelAprobacionUsuario.Close;
  DataModulo1.NivelAprobacionUsuario.Params[0].AsInteger := DataModulo1.Aprobacionesnivel.AsInteger ;
  DataModulo1.NivelAprobacionUsuario.open;

end;

procedure TfrmMantAprobacionesCheque.FormResize(Sender: TObject);
begin
  inherited;
    DBGrid1.Columns[0].Width := DBGrid1.Width - 10;
end;

procedure TfrmMantAprobacionesCheque.FormShow(Sender: TObject);
begin
  inherited;
  DataModulo1.Aprobaciones.Open;
  DataModulo1.Aprobaciones.first;

  DataModulo1.usuariosNivel.Close;
  DataModulo1.usuariosNivel.Open;

end;

procedure TfrmMantAprobacionesCheque.ToolButton2Click(Sender: TObject);
begin
  inherited;
  DataModulo1.NivelAprobacionUsuario.append;
  DataModulo1.NivelAprobacionUsuarionivel.Value := DataModulo1.Aprobacionesnivel.AsInteger ;
  edUsuario.SetFocus ;
end;

procedure TfrmMantAprobacionesCheque.ToolButton3Click(Sender: TObject);
begin
  inherited;
   DataModulo1.NivelAprobacionUsuario.Delete;

end;

procedure TfrmMantAprobacionesCheque.ToolButton4Click(Sender: TObject);
begin
  inherited;
  if (DataModulo1.NivelAprobacionUsuario.State IN [dsInsert]) then
   // DataModulo1.tipoCuentaCheque.FieldByName('idProfesion').Value  := Siguiente + 1
  else
   if  Not (DataModulo1.NivelAprobacionUsuario.State IN [dsEdit,dsInsert]) then
   Begin
    DataModulo1.NivelAprobacionUsuario.edit;
   End;

  Try
   DataModulo1.NivelAprobacionUsuario.post;
   DataModulo1.NivelAprobacionUsuario.Close;
   DataModulo1.NivelAprobacionUsuario.Params[0].AsInteger := DataModulo1.Aprobacionesnivel.AsInteger ;
   DataModulo1.NivelAprobacionUsuario.open;
  except
   on E:Exception do
   begin
    showMessage('Error al salvar el Nivel...');
   end;

  end;

end;

end.
