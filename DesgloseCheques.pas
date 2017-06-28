unit DesgloseCheques;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ToolWin;

type
  TfrmDesgloseCheques = class(TForm)
    dtsDesgloseCheques: TDataSource;
    DBGrid1: TDBGrid;
    btnAceptar: TButton;
    btnCancelar: TButton;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    procedure FormShow(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDesgloseCheques: TfrmDesgloseCheques;

implementation

{$R *.dfm}

uses DM1, Caja;

procedure TfrmDesgloseCheques.FormShow(Sender: TObject);
begin
  DataModulo1.DesgloseCheques.Close;
  DataModulo1.DesgloseCheques.Params[0].AsString :=
    frmCaja.mTransaccionGuid.AsString ;
  DataModulo1.DesgloseCheques.Open;

//  if DataModulo1.DesgloseCheques.Eof then
//  begin
//
//  end;


end;

procedure TfrmDesgloseCheques.ToolButton1Click(Sender: TObject);
begin
  DataModulo1.DesgloseCheques.Append;
  DataModulo1.DesgloseChequesguid.AsString := frmCaja.mTransaccionguid.asstring;
  DataModulo1.DesgloseChequesfecha_au.AsDateTime := Now();
  DataModulo1.DesgloseChequesusuario_au.AsString := Usuario;
end;

procedure TfrmDesgloseCheques.ToolButton3Click(Sender: TObject);
begin
    DataModulo1.DesgloseCheques.delete;
end;

procedure TfrmDesgloseCheques.ToolButton5Click(Sender: TObject);
begin

  if (DataModulo1.DesgloseCheques.State IN [dsInsert]) then
    DataModulo1.DesgloseChequesguid.AsString := frmCaja.mTransaccionguid.asstring
  else
   if  Not (DataModulo1.DesgloseCheques.State IN [dsEdit,dsInsert]) then
   Begin
    DataModulo1.DesgloseCheques.edit;
    DataModulo1.DesgloseChequesguid.AsString := frmCaja.mTransaccionguid.asstring;
   End;

  Try
   DataModulo1.DesgloseCheques.post;
  except
   on E:Exception do
   begin
    showMessage('Error al salvar desgloce de cheques...');
   end;
  end;

end;

end.
