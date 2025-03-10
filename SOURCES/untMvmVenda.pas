unit untMvmVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, System.ImageList,
  Vcl.ImgList, JvExMask, JvToolEdit, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls,
  untClassFaturamento, untDados, untConstantes, untClassCnsCli0;

type
  TfrmMvmVenda = class(TForm)
    pnlCabecalho: TPanel;
    pnlRodape: TPanel;
    dbgItems: TDBGrid;
    imgDefault: TImageList;
    imgHot: TImageList;
    imgDisable: TImageList;
    pnlTop: TPanel;
    ToolBar1: TToolBar;
    btnNovo: TToolButton;
    btnEditar: TToolButton;
    btnExcluir: TToolButton;
    btnSalvar: TToolButton;
    btnCancelar: TToolButton;
    btnSair: TToolButton;
    gpbNota: TGroupBox;
    edtSerie: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtNota: TEdit;
    gpbCliente: TGroupBox;
    edtIDCLIENTE: TEdit;
    btnIDCliente: TSpeedButton;
    lblIDCliente: TEdit;
    Label3: TLabel;
    edtDTEMISSAO: TJvDateEdit;
    lbl: TLabel;
    fldVLRTOTAL: TEdit;
    Label4: TLabel;
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnEditarClick(Sender: TObject);
    procedure edtSerieExit(Sender: TObject);
    procedure edtNotaExit(Sender: TObject);
    procedure gpbNotaEnter(Sender: TObject);
    procedure edtIDCLIENTEChange(Sender: TObject);
    procedure btnIDClienteClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure edtNotaEnter(Sender: TObject);
  private
    MovFat : tFaturamento;

    procedure ConfiguraFormulario;
    procedure BotaoNovoClick;
    procedure BotaoEditarClick;
    procedure AtivaButtons;
    procedure AtivaPainelNota( bActive : Boolean );
    procedure AtivaPainelCliente( bActive : Boolean );
    procedure CriaClasseFaturamento;
    procedure AtribuiEditsNotaToClasse;
    procedure LocalizaFaturamento;
    procedure CarregaEdits;
    procedure BotaoSalvarClick;
    procedure SaveEdits;
    procedure BotaoCancelarClick;
    procedure LimpaEdits;
    procedure LoadNextNota;
    function ValidaDados : Boolean;
    function ValidaEditsNota : Boolean;

  public
    { Public declarations }
  end;

var
  frmMvmVenda: TfrmMvmVenda;

implementation

{$R *.dfm}

procedure TfrmMvmVenda.AtivaButtons;
begin
   btnNovo.Enabled      := not btnNovo.Enabled;
   btnEditar.Enabled    := not btnEditar.Enabled;
   btnExcluir.Enabled   := not btnExcluir.Enabled;
   btnSalvar.Enabled    := not btnSalvar.Enabled;
   btnCancelar.Enabled  := not btnCancelar.Enabled;
end;

procedure TfrmMvmVenda.AtivaPainelCliente(bActive: Boolean);
begin
   gpbCliente.Enabled := bActive;
end;

procedure TfrmMvmVenda.AtivaPainelNota(bActive: Boolean);
begin
   gpbNota.Enabled := bActive;
end;

procedure TfrmMvmVenda.AtribuiEditsNotaToClasse;
begin
   MovFat.Serie      := edtSerie.Text;
   MovFat.Nota       := StrToIntDef(edtNota.Text, 0);
end;

procedure TfrmMvmVenda.BotaoCancelarClick;
begin
   AtivaButtons;
   AtivaPainelNota( False );
   AtivaPainelCliente( False );
   MovFat.StatusFat := tpSNone;
   LimpaEdits;
end;

procedure TfrmMvmVenda.BotaoEditarClick;
begin
   AtivaButtons;
   MovFat.ZeraClasse;
   MovFat.StatusFat := tpSEdit;
   LimpaEdits;
   AtivaPainelNota( True );
   if edtSerie.CanFocus then edtSerie.SetFocus;
end;

procedure TfrmMvmVenda.BotaoNovoClick;
begin
   AtivaButtons;
   MovFat.ZeraClasse;
   MovFat.StatusFat := tpSInsert;
   LimpaEdits;
   AtivaPainelNota( True );
   if edtSerie.CanFocus then edtSerie.SetFocus;
end;

procedure TfrmMvmVenda.BotaoSalvarClick;
begin
   if ValidaDados then begin
      SaveEdits;
      MovFat.PostFaturamento;
      CarregaEdits;
      AtivaButtons;
      AtivaPainelNota( False );
      AtivaPainelCliente( False );
      MovFat.StatusFat := tpSNone;
      ShowMessage('Nota: ' + FloatToStr(MovFat.Nota) + ', salva com sucesso.');
   end;
end;

procedure TfrmMvmVenda.btnCancelarClick(Sender: TObject);
begin
   BotaoCancelarClick;
end;

procedure TfrmMvmVenda.btnEditarClick(Sender: TObject);
begin
   BotaoEditarClick;
end;

procedure TfrmMvmVenda.btnIDClienteClick(Sender: TObject);
begin
   SearchId( tCnsCli0.Create(Self), edtIDCLIENTE, ID_CDSCLI0 );
end;

procedure TfrmMvmVenda.btnNovoClick(Sender: TObject);
begin
   BotaoNovoClick;
end;

procedure TfrmMvmVenda.btnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmMvmVenda.btnSalvarClick(Sender: TObject);
begin
   BotaoSalvarClick;
end;

procedure TfrmMvmVenda.CarregaEdits;
begin
   edtIDCLIENTE.Text := '';
   if MovFat.IdCliente > 0 then edtIDCLIENTE.Text := IntToStr(MovFat.IdCliente);

   edtDTEMISSAO.Date := MovFat.DtEmissao;
   edtSerie.Text     := MovFat.Serie;
   edtNota.Text      := IntToStr(MovFat.Nota);
end;

procedure TfrmMvmVenda.ConfiguraFormulario;
begin
//   Configura groupbox e paineis
   gpbNota.Enabled      := False;
   gpbCliente.Enabled   := False;
   dbgItems.Enabled     := False;
   pnlRodape.Enabled    := False;

// Configura barra de botoes
   btnNovo.Enabled      := True;
   btnEditar.Enabled    := True;
   btnExcluir.Enabled   := True;

   btnSalvar.Enabled    := False;
   btnCancelar.Enabled  := False;

   btnSair.Enabled      := True;
end;

procedure TfrmMvmVenda.CriaClasseFaturamento;
begin
   MovFat := tFaturamento.Create(Self);
end;

procedure TfrmMvmVenda.edtIDCLIENTEChange(Sender: TObject);
begin
   LoadCaptionID(TBL_CDSCLI0, ID_CDSCLI0, DE_CDSCLI0, edtIDCLIENTE, lblIDCliente);
end;

procedure TfrmMvmVenda.edtNotaEnter(Sender: TObject);
begin
   edtNota.ReadOnly := ( MovFat.StatusFat = tpSInsert );
end;

procedure TfrmMvmVenda.edtNotaExit(Sender: TObject);
begin
   AtribuiEditsNotaToClasse;
   LocalizaFaturamento;
end;

procedure TfrmMvmVenda.edtSerieExit(Sender: TObject);
begin
   if MovFat.StatusFat = tpSInsert then LoadNextNota;
   AtribuiEditsNotaToClasse;
end;

procedure TfrmMvmVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil(MovFat);
   Action := caFree;
end;

procedure TfrmMvmVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = VK_ESCAPE then begin
      key := 0;
      btnSair.Click;
   end else if key = VK_RETURN then begin
      key := 0;
      SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
   end else if key = VK_F5 then begin
      key := 0;
      if MovFat.StatusFat in [tpSInsert, tpSEdit] then begin
         btnIDCliente.Click;
      end;
   end else if key = VK_F9 then begin
      key := 0;
      btnSalvar.Click;
   end;
end;

procedure TfrmMvmVenda.FormShow(Sender: TObject);
begin
   ConfiguraFormulario;
   CriaClasseFaturamento;
end;

procedure TfrmMvmVenda.gpbNotaEnter(Sender: TObject);
begin
   AtivaPainelCliente(False);
end;

procedure TfrmMvmVenda.LimpaEdits;
begin
   edtSerie.Text      := '';
   edtNota.Text       := '';
   edtIDCLIENTE.Text  := '';
   edtDTEMISSAO.Clear;
end;

procedure TfrmMvmVenda.LoadNextNota;
begin
   edtNota.Text := IntToStr( GetNextGenerator(GEN_TBLMVMFAT0_NOTA, False) + 1 );
end;

procedure TfrmMvmVenda.LocalizaFaturamento;
begin
   if ValidaEditsNota then begin
      if MovFat.LocateFaturamento then begin
         AtivaPainelCliente( True );
         CarregaEdits;
         if edtIDCLIENTE.CanFocus then edtIDCLIENTE.SetFocus;
      end else begin
         if edtSerie.CanFocus then edtSerie.SetFocus;
      end;
   end else begin
      if edtSerie.CanFocus then edtSerie.SetFocus;
   end;
end;

procedure TfrmMvmVenda.SaveEdits;
begin
   MovFat.Serie      := edtSerie.Text;
   MovFat.Nota       := StrToInt(edtNota.Text);
   MovFat.IdCliente  := StrToInt(edtIDCLIENTE.Text);
   MovFat.DtEmissao  := edtDTEMISSAO.Date;
   MovFat.VlrTotal   := 150;
end;

function TfrmMvmVenda.ValidaDados: Boolean;
var bResult : Boolean;
begin
   Result := True;
end;

function TfrmMvmVenda.ValidaEditsNota: Boolean;
var bResult : Boolean;
begin

   bResult := True;
   if Trim(edtSerie.Text) = '' then begin
      bResult := False;
      ShowMessage('Serie não informada.');
   end;

   if bResult then begin
      if StrToIntDef(edtNota.Text, 0) = 0 then begin
         bResult := False;
         ShowMessage('Nota não informada.');
      end;
   end;

   Result := bResult;
end;

end.
