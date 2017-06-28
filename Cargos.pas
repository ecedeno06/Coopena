unit Cargos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCargos = class(TForm)
    dbgBancos: TDBGrid;
    PageControl1: TPageControl;
    tsBanco: TTabSheet;
    ToolBar8: TToolBar;
    btnCargoNuevo1: TToolButton;
    ToolButton1: TToolButton;
    btnCargoSalvar1: TToolButton;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edIDCargo: TDBEdit;
    edCargoNombre: TDBEdit;
    dtsCargos: TDataSource;
    Image1: TImage;
    DBCheckBox1: TDBCheckBox;
    procedure btnCargoNuevo1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCargoSalvar1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
  //----------------------------------------------------------------------------
  //----------------------------------------------------------------------------
   Function SiguienteCargo() : Integer;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCargos: TfrmCargos;

implementation

{$R *.dfm}

uses DM1, DTS;

procedure TfrmCargos.btnCargoNuevo1Click(Sender: TObject);
begin
  edCargoNombre.SetFocus;
  DataModulo1.MantCargos.Append;
end;

procedure TfrmCargos.btnCargoSalvar1Click(Sender: TObject);

begin
  if  (DataModulo1.MantCargos.State IN [dsInsert]) then
    DataModulo1.MantCargos.FieldByName('IDCargo').Value  := SiguienteCargo + 1
  else
   if  Not (DataModulo1.MantCargos.State IN [dsEdit,dsInsert]) then
   Begin
    DataModulo1.MantCargos.edit;
   End;

  Try

   if (DataModulo1.Mantcargosguid.asstring = '') or
       varisnull(DataModulo1.Mantcargosguid.asstring) then
      DataModulo1.Mantcargosguid.asstring := ds._guid();


   DataModulo1.MantCargos.post;
  except
   on E:Exception do
   begin
    showMessage('Error al salvar el Cargo...');
   end;
  end;

end;

procedure TfrmCargos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
end;

procedure TfrmCargos.FormDestroy(Sender: TObject);
begin
 self := nil;
end;

procedure TfrmCargos.FormShow(Sender: TObject);
begin
  DataModulo1.MantCargos.Open;
  DataModulo1.MantCargos.First;
end;




//------------------------------------------------------------------------------
//                          Busca el Siguiente Numero para el cargo
//------------------------------------------------------------------------------
function TfrmCargos.SiguienteCargo: Integer;

begin

  DataModulo1.Generico.Close;
  DataModulo1.Generico.Sql.Clear;
  DataModulo1.Generico.Sql.Add ('Select max(idCargo) as sec From Cargo');
  DataModulo1.Generico.Open;

  if Not DataModulo1.Generico.eof then
  begin
    if DataModulo1.Generico.FieldByName('sec').Value > 0 then
     result:= DataModulo1.Generico.FieldByName('sec').Value
    else
     Result := 0;
  end;
end;

end.
