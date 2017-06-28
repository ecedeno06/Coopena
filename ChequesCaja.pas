unit ChequesCaja;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TfrmChequesCaja = class(TForm)
    DBGrid1: TDBGrid;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    DataSource1: TDataSource;
    btnAceptar: TButton;
    btnCancelar: TButton;
    ToolButton5: TToolButton;
    ToolButton4: TToolButton;
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmChequesCaja: TfrmChequesCaja;

implementation

{$R *.dfm}

uses DM1, Caja;

procedure TfrmChequesCaja.btnAceptarClick(Sender: TObject);
begin
 if  Not (DataModulo1.ChequesCaja.State IN [dsEdit,dsInsert]) then
 Begin
  DataModulo1.ChequesCaja.edit;
 End;

 Try
   DataModulo1.ChequesCaja.post;
 except
   on E:Exception do
   begin
     showMessage('Error al salvar Cheques...');
   end;
 end;


end;

procedure TfrmChequesCaja.FormShow(Sender: TObject);
begin
  //---Coloca el nombre de la cuenta
//  frmChequesCaja.Caption := frmCaja.DBGrid1.SelectedField ('cuenta').AsString;
  DataModulo1.ChequesCaja.close;
  DataModulo1.ChequesCaja.params[0].AsString := frmCaja.mTransaccionGuid.AsString;
  DataModulo1.ChequesCaja.open;
  if DataModulo1.ChequesCaja.eof then
  begin
    DataModulo1.ChequesCaja.Append;
    DataModulo1.ChequesCajaguid.AsString := frmCaja.mTransaccionGuid.AsString;// Edit1.Text ;
  end;
end;

procedure TfrmChequesCaja.ToolButton1Click(Sender: TObject);
begin
  DataModulo1.ChequesCaja.Append;
  DataModulo1.ChequesCajaguid.AsString := frmCaja.mTransaccionGuid.AsString;// Edit1.Text ;

end;

procedure TfrmChequesCaja.ToolButton3Click(Sender: TObject);
begin
   if  Not (DataModulo1.ChequesCaja.State IN [dsEdit,dsInsert]) then
   Begin
     DataModulo1.ChequesCaja.edit;
   End;

   Try
     DataModulo1.ChequesCaja.post;
   except
     on E:Exception do
     begin
       showMessage('Error al salvar Cheques...');
     end;
   end;

end;

procedure TfrmChequesCaja.ToolButton5Click(Sender: TObject);
begin
  if not DataModulo1.ChequesCaja.Eof   then
    DataModulo1.ChequesCaja.delete;
end;

end.
