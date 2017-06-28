unit documentoSocio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ventana2, Data.DB, Vcl.ComCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  Tfrmdoc = class(TfrmVentana)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdoc: Tfrmdoc;

implementation

{$R *.dfm}

uses DM1;

end.
