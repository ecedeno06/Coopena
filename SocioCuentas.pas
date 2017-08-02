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
    btn_Aceptar: TButton;
    Button2: TButton;
    mCuenta: TFDMemTable;
    mCuenta_Cuenta: TStringField;
    dts_mCuenta: TDataSource;
    ed_socioCuentas_Filtro: TButtonedEdit;
    lv_socioCuentas: TListView;
    procedure ed_socioCuentas_FiltroLeftButtonClick(Sender: TObject);
    procedure ed_socioCuentas_FiltroRightButtonClick(Sender: TObject);
    procedure ed_socioCuentas_FiltroKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure lv_socioCuentasClick(Sender: TObject);
    procedure lv_socioCuentasDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure lv_socioCuentasDrawItem(Sender: TCustomListView; Item: TListItem;
      Rect: TRect; State: TOwnerDrawState);
    procedure lv_socioCuentasDblClick(Sender: TObject);
    procedure lv_socioCuentasColumnClick(Sender: TObject; Column: TListColumn);
    procedure lv_socioCuentasCompare(Sender: TObject; Item1, Item2: TListItem;
      Data: Integer; var Compare: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSocioCuentas: TfrmSocioCuentas;
  ColumnToSort  : integer;

implementation

{$R *.dfm}

uses DM1, Cheques;

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
       _item.SubItems.Add(DataModulo1.socioCuentasnombresubCuenta.AsString);
       _item.SubItems.Add(DataModulo1.socioCuentasnombreCompleto.AsString);

       DataModulo1.socioCuentas.next;

     End;
     lv_socioCuentas.SetFocus;
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

procedure TfrmSocioCuentas.lv_socioCuentasClick(Sender: TObject);
begin
  if lv_socioCuentas.Items.Count > 0 then
    DataModulo1.socioCuentas.Locate('num_cuenta',trim(lv_socioCuentas.Selected.Caption)) ;
end;

procedure TfrmSocioCuentas.lv_socioCuentasColumnClick(Sender: TObject;
  Column: TListColumn);
begin
  ColumnToSort := Column.index;
  (Sender as TCustomListView).AlphaSort;
end;

procedure TfrmSocioCuentas.lv_socioCuentasCompare(Sender: TObject; Item1,
  Item2: TListItem; Data: Integer; var Compare: Integer);
var
ix: Integer;
begin
  if ColumnToSort = 0 then
   Compare := CompareText(Item1.Caption,Item2.Caption)
  else
  begin
   ix := ColumnToSort - 1;
   Compare := CompareText(Item1.SubItems[ix],Item2.SubItems[ix]);
  end;

end;

procedure TfrmSocioCuentas.lv_socioCuentasDblClick(Sender: TObject);
begin
 DataModulo1.socioCuentas.Locate('num_cuenta',trim(lv_socioCuentas.Selected.Caption)) ;
 ModalResult := mrOK;
end;

procedure TfrmSocioCuentas.lv_socioCuentasDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Cheques._Origen := 'Cuentas';
  cheques._accept := true;
  accept := true;
end;

procedure TfrmSocioCuentas.lv_socioCuentasDrawItem(Sender: TCustomListView;
  Item: TListItem; Rect: TRect; State: TOwnerDrawState);
begin
  Cheques._Origen := 'Cuentas';
  cheques._accept := true;
end;

end.
