unit Utils;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, Vcl.StdCtrls, Data.DB, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef;

type
  TfrmUtil = class(TForm)
    Transacciones_Pacto: TFDQuery;
    cnnPacto: TFDConnection;
    cnnCoopena: TFDConnection;
    Transacciones_Coopena: TFDQuery;
    Button1: TButton;
    Transacciones_Pactotipo_documento: TWideStringField;
    Transacciones_Pactodocumento: TIntegerField;
    Transacciones_Pactofecha_doc: TSQLTimeStampField;
    Transacciones_Pactoestado: TSingleField;
    Transacciones_Pactoobservacion: TWideStringField;
    Transacciones_Pactoanombrede: TIntegerField;
    Transacciones_Pactoimpreso: TSingleField;
    Transacciones_Pactoanulado: TSingleField;
    Transacciones_Pactocontabilidad: TSingleField;
    Transacciones_Pactoconciliado: TSingleField;
    Transacciones_Pactofecha_aud: TSQLTimeStampField;
    Transacciones_Pactousuario: TWideStringField;
    Transacciones_Pactomonto_gral: TFloatField;
    Transacciones_Pactopagare: TWideStringField;
    Transacciones_Coopenatipo_documento: TWideStringField;
    Transacciones_Coopenadocumento: TIntegerField;
    Transacciones_Coopenafecha_doc: TSQLTimeStampField;
    Transacciones_Coopenaestado: TSingleField;
    Transacciones_Coopenaobservacion: TWideStringField;
    Transacciones_Coopenaanombrede: TIntegerField;
    Transacciones_Coopenaimpreso: TSingleField;
    Transacciones_Coopenaanulado: TSingleField;
    Transacciones_Coopenacontabilidad: TSingleField;
    Transacciones_Coopenaconciliado: TSingleField;
    Transacciones_Coopenafecha_aud: TSQLTimeStampField;
    Transacciones_Coopenausuario: TWideStringField;
    Transacciones_Coopenamonto_gral: TFloatField;
    Transacciones_Coopenapagare: TWideStringField;
    Button2: TButton;
    Morosidad_hist_Coopena: TFDQuery;
    Morosidad_hist_Pacto: TFDQuery;
    Morosidad_hist_Coopenafecha_inicio: TSQLTimeStampField;
    Morosidad_hist_Coopenanum_cuenta: TWideStringField;
    Morosidad_hist_Coopenasaldo_ini: TFloatField;
    Morosidad_hist_Coopenasaldo_act: TFloatField;
    Morosidad_hist_Coopenadebe_ser: TFloatField;
    Morosidad_hist_Coopenaletra: TFloatField;
    Morosidad_hist_Coopenam1_3: TFloatField;
    Morosidad_hist_Coopenam4_6: TFloatField;
    Morosidad_hist_Coopenam7_9: TFloatField;
    Morosidad_hist_Coopenam10_12: TFloatField;
    Morosidad_hist_Coopenamas: TFloatField;
    Morosidad_hist_Coopenadepositos: TFloatField;
    Morosidad_hist_Coopenacargo: TFloatField;
    Morosidad_hist_Coopenaprocesada: TWideStringField;
    Morosidad_hist_Coopenafecha_aud: TSQLTimeStampField;
    Morosidad_hist_Coopenausuario: TWideStringField;
    Morosidad_hist_Pactofecha_inicio: TSQLTimeStampField;
    Morosidad_hist_Pactonum_cuenta: TWideStringField;
    Morosidad_hist_Pactosaldo_ini: TFloatField;
    Morosidad_hist_Pactosaldo_act: TFloatField;
    Morosidad_hist_Pactodebe_ser: TFloatField;
    Morosidad_hist_Pactoletra: TFloatField;
    Morosidad_hist_Pactom1_3: TFloatField;
    Morosidad_hist_Pactom4_6: TFloatField;
    Morosidad_hist_Pactom7_9: TFloatField;
    Morosidad_hist_Pactom10_12: TFloatField;
    Morosidad_hist_Pactomas: TFloatField;
    Morosidad_hist_Pactodepositos: TFloatField;
    Morosidad_hist_Pactocargo: TFloatField;
    Morosidad_hist_Pactoprocesada: TWideStringField;
    Morosidad_hist_Pactofecha_aud: TSQLTimeStampField;
    Morosidad_hist_Pactousuario: TWideStringField;
    trx_Det_coopena: TFDQuery;
    trx_Det_Pacto: TFDQuery;
    Button3: TButton;
    trx_Det_Pactotipo_documento: TWideStringField;
    trx_Det_Pactodocumento: TIntegerField;
    trx_Det_Pactofecha_doc: TSQLTimeStampField;
    trx_Det_Pactonum_cuenta: TWideStringField;
    trx_Det_Pactocuenta: TWideStringField;
    trx_Det_Pactonaturaleza: TWideStringField;
    trx_Det_Pactomonto: TFloatField;
    trx_Det_Pactofecha_aud: TSQLTimeStampField;
    trx_Det_Pactousuario: TWideStringField;
    trx_Det_coopenatipo_documento: TWideStringField;
    trx_Det_coopenadocumento: TIntegerField;
    trx_Det_coopenafecha_doc: TSQLTimeStampField;
    trx_Det_coopenanum_cuenta: TWideStringField;
    trx_Det_coopenacuenta: TWideStringField;
    trx_Det_coopenanaturaleza: TWideStringField;
    trx_Det_coopenamonto: TFloatField;
    trx_Det_coopenafecha_aud: TSQLTimeStampField;
    trx_Det_coopenausuario: TWideStringField;
    btnMaes_aux: TButton;
    maes_aux_coopena: TFDQuery;
    maes_aux_pacto: TFDQuery;
    Button4: TButton;
    trx_enc_coopena: TFDQuery;
    trx_enc_pacto: TFDQuery;
    trx_enc_pactotipo_documento: TWideStringField;
    trx_enc_pactodocumento: TIntegerField;
    trx_enc_pactofecha_doc: TSQLTimeStampField;
    trx_enc_pactoestado: TSingleField;
    trx_enc_pactoobservacion: TWideStringField;
    trx_enc_pactoanombrede: TIntegerField;
    trx_enc_pactoimpreso: TSingleField;
    trx_enc_pactoanulado: TSingleField;
    trx_enc_pactocontabilidad: TSingleField;
    trx_enc_pactoconciliado: TSingleField;
    trx_enc_pactofecha_aud: TSQLTimeStampField;
    trx_enc_pactousuario: TWideStringField;
    trx_enc_pactomonto_gral: TFloatField;
    trx_enc_pactopagare: TWideStringField;
    trx_enc_coopenatipo_documento: TWideStringField;
    trx_enc_coopenadocumento: TIntegerField;
    trx_enc_coopenafecha_doc: TSQLTimeStampField;
    trx_enc_coopenaestado: TSingleField;
    trx_enc_coopenaobservacion: TWideStringField;
    trx_enc_coopenaanombrede: TIntegerField;
    trx_enc_coopenaimpreso: TSingleField;
    trx_enc_coopenaanulado: TSingleField;
    trx_enc_coopenacontabilidad: TSingleField;
    trx_enc_coopenaconciliado: TSingleField;
    trx_enc_coopenafecha_aud: TSQLTimeStampField;
    trx_enc_coopenausuario: TWideStringField;
    trx_enc_coopenamonto_gral: TFloatField;
    trx_enc_coopenapagare: TWideStringField;
    maes_aux_pactonum_cuenta: TWideStringField;
    maes_aux_pactosocio: TIntegerField;
    maes_aux_pactosubcuenta: TSmallintField;
    maes_aux_pactomonto: TFloatField;
    maes_aux_pactoplazo: TFloatField;
    maes_aux_pactofinalidad: TSmallintField;
    maes_aux_pactoestado: TWideStringField;
    maes_aux_pactoletra: TFloatField;
    maes_aux_pactodesc_planilla: TFloatField;
    maes_aux_pactotasa: TFloatField;
    maes_aux_pactoperiodo_planilla: TWideStringField;
    maes_aux_pactointeres_pendiente: TFloatField;
    maes_aux_pactofecha_inicio: TSQLTimeStampField;
    maes_aux_pactoperiodo_tasa: TWideStringField;
    maes_aux_pactomonto_pignorado: TFloatField;
    maes_aux_pactotipo_periodo_tasa: TSmallintField;
    maes_aux_pactogarantias: TWideStringField;
    maes_aux_pactofecha_aud: TSQLTimeStampField;
    maes_aux_pactousuario: TWideStringField;
    maes_aux_coopenanum_cuenta: TWideStringField;
    maes_aux_coopenasocio: TIntegerField;
    maes_aux_coopenasubcuenta: TSmallintField;
    maes_aux_coopenamonto: TFloatField;
    maes_aux_coopenaplazo: TFloatField;
    maes_aux_coopenafinalidad: TSmallintField;
    maes_aux_coopenaestado: TWideStringField;
    maes_aux_coopenaletra: TFloatField;
    maes_aux_coopenadesc_planilla: TFloatField;
    maes_aux_coopenatasa: TFloatField;
    maes_aux_coopenaperiodo_planilla: TWideStringField;
    maes_aux_coopenainteres_pendiente: TFloatField;
    maes_aux_coopenafecha_inicio: TSQLTimeStampField;
    maes_aux_coopenaperiodo_tasa: TWideStringField;
    maes_aux_coopenamonto_pignorado: TFloatField;
    maes_aux_coopenatipo_periodo_tasa: TSmallintField;
    maes_aux_coopenagarantias: TMemoField;
    maes_aux_coopenafecha_aud: TSQLTimeStampField;
    maes_aux_coopenausuario: TWideStringField;
    Button5: TButton;
    Aprobaciones_Coopena: TFDQuery;
    Aprobaciones_Pacto: TFDQuery;
    Aprobaciones_Coopenanivel: TSingleField;
    Aprobaciones_Coopenanombre: TWideStringField;
    Aprobaciones_Coopenaorden: TSmallintField;
    Aprobaciones_Coopenaestado: TByteField;
    Aprobaciones_Coopenafecha_aud: TSQLTimeStampField;
    Aprobaciones_Coopenausuario: TWideStringField;
    Aprobaciones_Pactonivel: TSingleField;
    Aprobaciones_Pactonombre: TWideStringField;
    Aprobaciones_Pactoorden: TSmallintField;
    Aprobaciones_Pactoestado: TByteField;
    Aprobaciones_Pactofecha_aud: TSQLTimeStampField;
    Aprobaciones_Pactousuario: TWideStringField;
    Button6: TButton;
    Aprobacion_Usuario_Coopena: TFDQuery;
    Aprobacion_Usuario_Pacto: TFDQuery;
    Aprobacion_Usuario_Coopenanivel: TSingleField;
    Aprobacion_Usuario_Coopenausuario: TWideStringField;
    Aprobacion_Usuario_Coopenamonto_no_usar: TFloatField;
    Aprobacion_Usuario_Pactonivel: TSingleField;
    Aprobacion_Usuario_Pactousuario: TWideStringField;
    Aprobacion_Usuario_Pactomonto_no_usar: TFloatField;
    procedure Button1Click(Sender: TObject);
    procedure btnMaes_auxClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUtil: TfrmUtil;

implementation

{$R *.dfm}

uses DM1;

procedure TfrmUtil.btnMaes_auxClick(Sender: TObject);
Var
 i : integer;
begin

  maes_aux_pacto .Close;
  maes_aux_pacto .Open;

  maes_aux_coopena.close;
  maes_aux_coopena.Open;

  if Not maes_aux_pacto.eof then
  Begin
    maes_aux_pacto.first;
    while Not maes_aux_pacto.eof do
    begin
    maes_aux_coopena.Append;
    for I := 0 to maes_aux_pacto.FieldCount - 1  do
    Begin
      maes_aux_coopena.Fields[I].Value := maes_aux_pacto.Fields[i].Value;
    End;
    maes_aux_coopena.Post;
    maes_aux_pacto.Next;
    end;

  End;

end;

procedure TfrmUtil.Button1Click(Sender: TObject);

Var
 i : integer;
begin

  trx_Det_Pacto .Close;
  trx_Det_Pacto .Open;

  trx_Det_coopena.close;
  trx_Det_coopena.Open;


  trx_Det_Pacto.First;
  if Not trx_Det_Pacto.eof then
  Begin
    while Not trx_Det_Pacto.eof do
    begin
    trx_Det_coopena.Append;
    for I := 0 to trx_Det_Pacto.FieldCount - 1  do
    Begin
      trx_Det_coopena.Fields[I].Value := trx_Det_Pacto.Fields[i].Value;
    End;
    trx_Det_coopena.Post;
    trx_Det_Pacto.Next;

    end;

  End;


end;

procedure TfrmUtil.Button5Click(Sender: TObject);
Var
 i : integer;
begin
  Aprobacion_Usuario_pacto  .Close;
  Aprobacion_Usuario_pacto .Open;

  Aprobacion_Usuario_Coopena.close;
  Aprobacion_Usuario_Coopena.Open;


  Aprobacion_Usuario_pacto.First;
  if Not Aprobacion_Usuario_pacto.eof then
  Begin
    while Not Aprobacion_Usuario_pacto.eof do
    begin
    Aprobacion_Usuario_Coopena.Append;
    for I := 0 to Aprobacion_Usuario_pacto.FieldCount - 1  do
    Begin
      Aprobacion_Usuario_Coopena.Fields[I].Value := Aprobacion_Usuario_pacto.Fields[i].Value;
    End;
    Aprobacion_Usuario_Coopena.Post;
    Aprobacion_Usuario_pacto.Next;

    end;

  End;
end;

procedure TfrmUtil.FormCreate(Sender: TObject);
begin
{
select
fecha_doc,
documento,
fecha_doc,
t.num_cuenta,
t.cuenta,
t.naturaleza,
t.monto,
montoCapital    = case  when TX.principal  = 1  then t.monto else 0 end,
montoInteresDR  = case  when  (TX.debito   = 'montoInteres') and tx.verAuxiliar = 1  then t.monto else 0 end,
montoInteresCR  = case  when  (TX.credito  = 'montoInteres') and tx.verAuxiliar = 1  then t.monto else 0 end,
montoMoraDR     = case  when  (TX.debito   = 'montoMora')    and tx.verAuxiliar = 1  then t.monto else 0 end,
montoMoraCR     = case  when  (TX.credito  = 'montoMora')    and tx.verAuxiliar = 1  then t.monto else 0 end
from transaccion_det T
 left OUTER  join maes_aux MA on T.num_cuenta     = MA.num_cuenta
 left OUTER join productoTrx TX on TX.idProducto = MA.subcuenta and T.Cuenta = TX.cuenta and T.naturaleza = TX.DC
where t.num_cuenta = '2800001901'
order by T.fecha_doc,tx.principal
 --and t.cuenta = '414030'









}
end;

end.
