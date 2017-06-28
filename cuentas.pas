unit cuentas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCuentas = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    dtsCuentas: TDataSource;
    edCuenta: TDBLookupComboBox;
    Button1: TButton;
    Button2: TButton;
    esDebito: TRadioButton;
    esCredito: TRadioButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCuentas: TfrmCuentas;

implementation

{$R *.dfm}

uses DM1, Caja;

end.
