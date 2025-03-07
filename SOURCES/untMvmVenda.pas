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
    procedure LimpaCampos;
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
   MovFat.VlrTotal   := 150; // temporario.

   if gpbCliente.Enabled then begin
      MovFat.IdCliente  := StrToIntDef(edtIDCLIENTE.Text, 0);
      MovFat.DtEmissao  := StrToDate(edtDTEMISSAO.Text);
   end;
end;

procedure TfrmMvmVenda.BotaoEditarClick;
begin
   AtivaButtons;

   MovFat.ZeraClasse;
   MovFat.StatusFat := tpSEdit;

   AtivaPainelNota( True );
   if edtSerie.CanFocus then edtSerie.SetFocus;
end;

procedure TfrmMvmVenda.BotaoNovoClick;
begin
   AtivaButtons;

   MovFat.ZeraClasse;
   MovFat.StatusFat := tpSInsert;

   AtivaPainelNota( True );
   if edtSerie.CanFocus then edtSerie.SetFocus;
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

   //fazer o valida dados
   AtribuiEditsNotaToClasse;
   MovFat.GravaDados;
   LimpaCampos;
   BotaoNovoClick;
end;

procedure TfrmMvmVenda.CarregaEdits;
begin
   edtIDCLIENTE.Text := '';
   if MovFat.IdCliente > 0 then edtIDCLIENTE.Text := IntToStr(MovFat.IdCliente);

   edtDTEMISSAO.Date := MovFat.DtEmissao;
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

procedure TfrmMvmVenda.edtNotaExit(Sender: TObject);
begin
   AtribuiEditsNotaToClasse;
   LocalizaFaturamento;
end;

procedure TfrmMvmVenda.edtSerieExit(Sender: TObject);
begin
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
      if MovFat.StatusFat in [tpSInsert, tpSEdit] then begin
         btnIDCliente.Click;
      end;
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

procedure TfrmMvmVenda.LimpaCampos;
begin
   edtSerie.Text     := '';
   edtNota.Text      := '';
   edtIDCLIENTE.Text := '';
end;

procedure TfrmMvmVenda.LocalizaFaturamento;
begin
   if MovFat.LocateFaturamento then begin
      AtivaPainelCliente( True );
      CarregaEdits;
      if edtIDCLIENTE.CanFocus then edtIDCLIENTE.SetFocus;
   end else begin
      if edtSerie.CanFocus then edtSerie.SetFocus;
   end;
end;

end.
