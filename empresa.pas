unit empresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ventana2, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin, Data.DB, Vcl.Grids,
  Vcl.DBGrids;

type
  TfrmEmpresa = class(TfrmVentana)
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
    Label3: TLabel;
    edID: TDBEdit;
    edNombre: TDBEdit;
    DBEdit1: TDBEdit;
    TabSheet1: TTabSheet;
    ToolBar1: TToolBar;
    btnNuevo1: TToolButton;
    ToolButton3: TToolButton;
    btnSalvar1: TToolButton;
    GroupBox2: TGroupBox;
    dbgProfesion: TDBGrid;
    Image2: TImage;
    dtsSecuencial: TDataSource;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnSalvar1Click(Sender: TObject);
    procedure btnNuevo1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmpresa: TfrmEmpresa;

implementation

{$R *.dfm}

uses DM1, Principal;

procedure TfrmEmpresa.btnNuevo1Click(Sender: TObject);
begin
  inherited;
  DataModulo1.SocioSecuencial.Append;
  DataModulo1.SocioSecuencialfecha_Aud.AsDateTime := now;
  DataModulo1.SocioSecuencialusuario.AsString     := Usuario;
end;

procedure TfrmEmpresa.btnSalvar1Click(Sender: TObject);
begin
  inherited;
  if  Not (DataModulo1.SocioSecuencial.State IN [dsEdit,dsInsert]) then
   Begin
    DataModulo1.SocioSecuencial.edit;
   End;

  Try
   DataModulo1.SocioSecuencial.post;
  except
   on E:Exception do
   begin
    showMessage('Error al salvar el Control...');
   end;
  end;

end;

procedure TfrmEmpresa.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if not( key in ['0'..'9',#8]) then
   key := #0;
end;

procedure TfrmEmpresa.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not( key in ['0'..'9',#8]) then
   key := #0;
end;

procedure TfrmEmpresa.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not( key in ['0'..'9',#8]) then
   key := #0;
end;

procedure TfrmEmpresa.FormShow(Sender: TObject);
begin
  inherited;
  DataModulo1.SocioSecuencial.Close;
  DataModulo1.SocioSecuencial.Open;
end;

end.






