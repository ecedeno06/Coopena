unit MantParentezcos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ventana2, Vcl.ComCtrls, Data.DB,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ToolWin, Vcl.Grids,
  Vcl.DBGrids;

type
  TfrmParentezcos = class(TfrmVentana)
    PageControl1: TPageControl;
    tsAreas: TTabSheet;
    Image2: TImage;
    GroupBox4: TGroupBox;
    Label6: TLabel;
    ToolBar3: TToolBar;
    btnAreaNuevo1: TToolButton;
    ToolButton5: TToolButton;
    btnAreaSalvar1: TToolButton;
    dtsParentezcos: TDataSource;
    DBEdit1: TDBEdit;
    dbgParentezcos: TDBGrid;
    procedure btnAreaNuevo1Click(Sender: TObject);
    procedure btnAreaSalvar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    Function Siguiente : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmParentezcos: TfrmParentezcos;

implementation

{$R *.dfm}

uses DM1, Login, Principal;

{ TfrmParentezcos }


procedure TfrmParentezcos.btnAreaNuevo1Click(Sender: TObject);
begin
  inherited;
 DBEdit1.SetFocus;
 DataModulo1.Parentezcos.Append;
end;

procedure TfrmParentezcos.btnAreaSalvar1Click(Sender: TObject);
begin
  inherited;
  if (DataModulo1.Parentezcos .State IN [dsInsert]) then
    DataModulo1.Parentezcos.FieldByName('idParentezco').Value  := Siguiente + 1
  else
   if  Not (DataModulo1.Parentezcos.State IN [dsEdit,dsInsert]) then
   Begin
    DataModulo1.Parentezcos.edit;
   End;

  Try
   DataModulo1.Parentezcos.post;
  except
   on E:Exception do
   begin
    showMessage('Error al salvar el Parentezco...');
   end;
  end;
end;

procedure TfrmParentezcos.FormShow(Sender: TObject);
begin

  inherited;
  DataModulo1.Parentezcos.Close;
  DataModulo1.Parentezcos.Open;
  DataModulo1.Parentezcos.First;


end;


//------------------------------------------------------------------------------
//                 Busca el Siguiente Numero de Parentezco
//------------------------------------------------------------------------------

function TfrmParentezcos.Siguiente: Integer;
begin
  DataModulo1.Generico.Close;
  DataModulo1.Generico.Sql.Clear;
  DataModulo1.Generico.Sql.Add ('Select max(idParentezco) as sec From Parentezco  ');
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
