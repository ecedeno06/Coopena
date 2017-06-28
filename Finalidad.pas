unit Finalidad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ventana2, Vcl.ComCtrls, Vcl.ToolWin,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls;

type
  TfrmFinalidad = class(TfrmVentana)
    dtsFinalidad: TDataSource;
    PageControl1: TPageControl;
    tsFinalidad: TTabSheet;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edID: TDBEdit;
    edNombre: TDBEdit;
    ToolBar8: TToolBar;
    btnSocioNuevo1: TToolButton;
    ToolButton1: TToolButton;
    btnSocioSalvar1: TToolButton;
    Image1: TImage;
    dbgFinalidad: TDBGrid;
    DBCheckBox1: TDBCheckBox;
    procedure btnSocioNuevo1Click(Sender: TObject);
    procedure btnSocioSalvar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure NuevoID;
    function  SiguienteFinalidad () : Integer;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFinalidad: TfrmFinalidad;

implementation

{$R *.dfm}

uses DM1;
//******************************************************************************
//                                   INICIO
//******************************************************************************

//------------------------------------------------------------------------------
//                  NUEVO REGISTRO
//------------------------------------------------------------------------------
procedure TfrmFinalidad.btnSocioNuevo1Click(Sender: TObject);
begin
  inherited;
//---
 edNombre.SetFocus;
 dm1.DataModulo1.Finalidad.Append;

end;


//------------------------------------------------------------------------------
//                  SALVA REGISTRO
//------------------------------------------------------------------------------
procedure TfrmFinalidad.btnSocioSalvar1Click(Sender: TObject);
var
  Maximo : Integer;
begin
  inherited;

  if (DataModulo1.Finalidad.State IN [dsInsert]) then
  begin
     Maximo := SiguienteFinalidad + 1;
     DataModulo1.Finalidadfinalidad.Value := maximo ;
  end
  else
   if  Not (DataModulo1.Finalidad.State IN [dsEdit]) then
   Begin
    DataModulo1.Finalidad.edit;
   End;

  Try

   DataModulo1.Finalidad.post;
  except
   on E:Exception do
   begin
    showMessage('Error al salvar el Finalidad...');
   end;
  end;


end;

procedure TfrmFinalidad.FormShow(Sender: TObject);
begin
  inherited;
  //--- Apertar de tabla Finalidades

  DataModulo1.Finalidad.Close;
  DataModulo1.Finalidad.Open;

end;
//------------------------------------------------------------------------------
//
//------------------------------------------------------------------------------
procedure TfrmFinalidad.NuevoID;
begin
//----

end;

function TfrmFinalidad.SiguienteFinalidad: Integer;
begin
  DataModulo1.MaxFinalidad.Close;
  DataModulo1.MaxFinalidad.Open;
  if Not DataModulo1.MaxFinalidad.eof then
  begin
    if DataModulo1.MaxFinalidadmaximo.Value > 0 then
     result:= DataModulo1.MaxFinalidadmaximo.Value
    else
     Result := 0;
  end;

end;

end.
