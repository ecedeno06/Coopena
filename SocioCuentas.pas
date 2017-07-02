unit SocioCuentas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfrmSocioCuentas = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    mCuenta: TFDMemTable;
    mCuenta_Cuenta: TStringField;
    dts_mCuenta: TDataSource;
    ed_socioCuentas_Filtro: TButtonedEdit;
    lv_socioCuentas: TListView;
    procedure ed_socioCuentas_FiltroChange(Sender: TObject);
    procedure ed_socioCuentas_FiltroLeftButtonClick(Sender: TObject);
    procedure ed_socioCuentas_FiltroRightButtonClick(Sender: TObject);
    procedure ed_socioCuentas_FiltroKeyPress(Sender: TObject; var Key: Char);
    procedure ed_socioCuentas_FiltroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSocioCuentas: TfrmSocioCuentas;

implementation

{$R *.dfm}

uses DM1;

procedure TfrmSocioCuentas.ed_socioCuentas_FiltroChange(Sender: TObject);

begin
 //---ejecutar query socioCuentas
 // Luego cargar en el ListView
end;

procedure TfrmSocioCuentas.ed_socioCuentas_FiltroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  _k : char;
begin
  _k := char(key);
end;

procedure TfrmSocioCuentas.ed_socioCuentas_FiltroKeyPress(Sender: TObject;
  var Key: Char);
  var
   _k : char;
begin
  if key = #13 then
  Begin
    _k := Char(key);
    ed_socioCuentas_Filtro.OnLeftButtonClick (sender);

  End;
end;

procedure TfrmSocioCuentas.ed_socioCuentas_FiltroLeftButtonClick(
  Sender: TObject);
var
 _item : TListItem;
begin

 if ed_socioCuentas_Filtro.Text <> ''  then
 begin

   lv_socioCuentas.Clear;
   DataModulo1.socioCuentas.Close;
   DataModulo1.socioCuentas.PArams[0].AsString := ed_socioCuentas_Filtro.Text ;
   DataModulo1.socioCuentas.open;

   if not DataModulo1.socioCuentas.eof then
   begin
     DataModulo1.socioCuentas.first;
     While not DataModulo1.socioCuentas.eof do
     Begin

       _item := lv_socioCuentas.Items.Add;
       _item.Caption := (DataModulo1.socioCuentasnum_cuenta.AsString);
       _item.SubItems.Add(DataModulo1.socioCuentasnombreCompleto.AsString);

       DataModulo1.socioCuentas.next;

     End;
   end;
 end;

end;

procedure TfrmSocioCuentas.ed_socioCuentas_FiltroRightButtonClick(
  Sender: TObject);
begin
  ed_socioCuentas_Filtro.Clear;
end;

procedure TfrmSocioCuentas.FormShow(Sender: TObject);
begin
  ed_socioCuentas_Filtro.SetFocus;
end;

end.
