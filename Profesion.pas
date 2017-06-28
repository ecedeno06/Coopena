unit Profesion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin, Vcl.Grids, Vcl.DBGrids;

type
  TfrmProfesion = class(TForm)
    dbgProfesion: TDBGrid;
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
    edID: TDBEdit;
    edNombre: TDBEdit;
    dtsProfesiones: TDataSource;
    Image1: TImage;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    procedure btnCargoNuevo1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCargoSalvar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    Function Siguiente ():Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProfesion: TfrmProfesion;

implementation

{$R *.dfm}

uses DM1, Principal;

procedure TfrmProfesion.btnCargoNuevo1Click(Sender: TObject);
begin
 edNombre.SetFocus;
 DataModulo1.MantProfesiones.Append;
end;

procedure TfrmProfesion.btnCargoSalvar1Click(Sender: TObject);

begin
  if (DataModulo1.MantProfesiones.State IN [dsInsert]) then
    DataModulo1.MantProfesiones.FieldByName('idProfesion').Value  := Siguiente + 1
  else
   if  Not (DataModulo1.MantProfesiones.State IN [dsEdit,dsInsert]) then
   Begin
    DataModulo1.MantProfesiones.edit;
   End;

  Try
   DataModulo1.MantProfesiones.post;
  except
   on E:Exception do
   begin
    showMessage('Error al salvar el Cargo...');
   end;
  end;

end;

procedure TfrmProfesion.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmProfesion.FormDestroy(Sender: TObject);
begin
 self := nil;
end;

procedure TfrmProfesion.FormShow(Sender: TObject);
begin
 DataModulo1.MantProfesiones.Open;
 DataModulo1.MantProfesiones.First;
end;


//------------------------------------------------------------------------------
//                 Busca el Siguiente Numero para la Profesion
//------------------------------------------------------------------------------
function TfrmProfesion.Siguiente: Integer;

begin

  DataModulo1.Generico.Close;
  DataModulo1.Generico.Sql.Clear;
  DataModulo1.Generico.Sql.Add ('Select max(idProfesion) as sec From profesion');
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
