unit MantCompanias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ventana2, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin, Vcl.Grids,
  Vcl.DBGrids;

type
  TfrmCompanias = class(TfrmVentana)
    dbgProfesion: TDBGrid;
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
    dtsCompany: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure btnNuevo1Click(Sender: TObject);
    procedure btnSalvar1Click(Sender: TObject);
  private
    Function Siguiente ():Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCompanias: TfrmCompanias;

implementation

{$R *.dfm}

uses DM1;

procedure TfrmCompanias.btnNuevo1Click(Sender: TObject);
begin
  inherited;
  edNombre.SetFocus;
  DataModulo1.MantCompany.Append;

end;

procedure TfrmCompanias.btnSalvar1Click(Sender: TObject);
begin
  inherited;
  if  (DataModulo1.MantCompany.State IN [dsInsert]) then
    DataModulo1.MantCompany.FieldByName('compania').Value  := Siguiente + 1
  else
   if  Not (DataModulo1.MantCompany.State IN [dsEdit,dsInsert]) then
   Begin
    DataModulo1.MantCompany.edit;
   End;

  Try

   DataModulo1.MantCompany.post;
  except
   on E:Exception do
   begin
    showMessage('Error al salvar la Companía...');
   end;
  end;

end;

procedure TfrmCompanias.FormShow(Sender: TObject);
begin
  inherited;
  DataModulo1.MantCompany.Open;
  DataModulo1.MantCompany.First;
end;


//------------------------------------------------------------------------------
//                 Busca el Siguiente Numero para la Profesion
//------------------------------------------------------------------------------
function TfrmCompanias.Siguiente: Integer;

begin

  DataModulo1.Generico.Close;
  DataModulo1.Generico.Sql.Clear;
  DataModulo1.Generico.Sql.Add ('Select max(compania) as sec From compania');
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
