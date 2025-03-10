unit untMvmVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, System.ImageList,
  Vcl.ImgList, JvExMask, JvToolEdit, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls,
  untClassFaturamento, untDados, untConstantes, untClassCnsCli0,
  Datasnap.DBClient, UdfLib, untClassIte0;

type
  TfrmMvmVenda = class(TForm)
    pnlCabecalho: TPanel;
    pnlRodape: TPanel;
    dbgMVI: TDBGrid;
    imgDefault: TImageList;
    imgHot: TImageList;
    imgDisable: TImageList;
    pnlTop: TPanel;
    tlbBotoes: TToolBar;
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
    Label4: TLabel;
    cdsMVI: TClientDataSet;
    cdsMVICODBARRA: TStringField;
    cdsMVIIDITEM: TIntegerField;
    cdsMVINOMEPRO: TStringField;
    cdsMVIQTDE: TFloatField;
    cdsMVIVLRUNIT: TFloatField;
    cdsMVIVLRTOTAL: TFloatField;
    dsMVI: TDataSource;
    cdsMVIUNIDADE: TStringField;
    cdsMVISOMAVLRTOTAL: TAggregateField;
    edtVALORTOTAL: TEdit;
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
    procedure dbgMVIColExit(Sender: TObject);
    procedure dbgMVIColEnter(Sender: TObject);
    procedure dsMVIStateChange(Sender: TObject);
    procedure cdsMVIAfterDelete(DataSet: TDataSet);
  private
    iColSel : Integer;
    MovFat  : tFaturamento;

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
    procedure CarregaGrid;
    procedure ProcessaTeclasGrid( var key: Word; Shift: TShiftState );
    procedure CalculaTotalMvi;
    procedure TotalNota;
    function ValidaDados           : Boolean;
    function ValidaEditsNota       : Boolean;
    function ValidaColunaAnterior  : Boolean;
    function ValidaQtde            : Boolean;
    function ValidaCodigo          : Boolean;
  public
    { Public declarations }
  end;

var
  frmMvmVenda: TfrmMvmVenda;

implementation

const
   CL_CODBARRA = 0;
   CL_NOMEPRO  = 1;
   CL_UNIDADE  = 2;
   CL_QTDE     = 3;
   CL_VLRUNIT  = 4;
   CL_VLRTOTAL = 5;

   CL_ULTIMACOL = 5;

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
   dbgMVI.Enabled     := bActive;
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
   cdsMVI.Close;
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

procedure TfrmMvmVenda.CalculaTotalMvi;
begin
   cdsMVIVLRTOTAL.AsFloat := RoundVal(cdsMVIQTDE.AsFloat * cdsMVIVLRUNIT.AsFloat, 2);
end;

procedure TfrmMvmVenda.CarregaEdits;
begin
   edtIDCLIENTE.Text := '';
   if MovFat.IdCliente > 0 then edtIDCLIENTE.Text := IntToStr(MovFat.IdCliente);

   edtDTEMISSAO.Date := MovFat.DtEmissao;
   edtSerie.Text     := MovFat.Serie;
   edtNota.Text      := IntToStr(MovFat.Nota);

   CarregaGrid;
end;

procedure TfrmMvmVenda.CarregaGrid;
begin
   cdsMVI.Close;
   cdsMVI.CreateDataSet;

   iColSel := 0;
end;

procedure TfrmMvmVenda.cdsMVIAfterDelete(DataSet: TDataSet);
begin
   TotalNota;
end;

procedure TfrmMvmVenda.ConfiguraFormulario;
begin
//   Configura groupbox e paineis
   gpbNota.Enabled      := False;
   gpbCliente.Enabled   := False;
   dbgMVI.Enabled       := False;
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

procedure TfrmMvmVenda.dbgMVIColEnter(Sender: TObject);
begin

   if dsMVI.State in [dsInsert, dsEdit] then begin
      if not ValidaColunaAnterior then begin
         dbgMVI.SelectedIndex := iColSel;
      end;
   end;

end;

procedure TfrmMvmVenda.dbgMVIColExit(Sender: TObject);
begin
   iColSel := dbgMVI.SelectedIndex;
end;

procedure TfrmMvmVenda.dsMVIStateChange(Sender: TObject);
begin
   TotalNota;
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
   end else if ( Self.ActiveControl is TDBGrid ) then begin
      ProcessaTeclasGrid(key, Shift);
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
      if btnSalvar.Enabled then btnSalvar.Click;
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

procedure TfrmMvmVenda.ProcessaTeclasGrid( var key: Word; Shift: TShiftState );
begin
   if key = VK_RETURN then begin

      with TDBGrid(ActiveControl) do begin
         if SelectedIndex = CL_ULTIMACOL then begin
            cdsMVI.Next;
            if cdsMVI.Eof then cdsMVI.Append;
         end;

         if SelectedIndex < ( FieldCount - 1 ) then begin
            SelectedIndex := SelectedIndex + 1;
         end else begin
            SelectedIndex := 0;
         end;

         if SelectedIndex = CL_NOMEPRO then SelectedIndex := SelectedIndex + 1;
         if SelectedIndex = CL_UNIDADE then SelectedIndex := SelectedIndex + 1;
      end;

      key := 0;
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

procedure TfrmMvmVenda.TotalNota;
var nSoma : Real;
begin
   nSoma := 0;
   if cdsMVI.Active then begin
      nSoma := StrToFloatDef(cdsMVISOMAVLRTOTAL.AsString, 0);
   end;

   edtVALORTOTAL.Text := FormatCurr('######0.00', nSoma);
end;

function TfrmMvmVenda.ValidaCodigo: Boolean;
var bResult : Boolean;
    sCodigo : String;
    CadIte  : tItens;
begin
   bResult := True;

   if cdsMVICODBARRA.AsString = '' then begin
      bResult := False;
      ShowMessage('Produto não informado');
   end;

   if bResult then begin
      CadIte := tItens.Create(cdsMVICODBARRA.AsString);

      if CadIte.IdItem = 0 then begin
         bResult := False;
         ShowMessage('Produto não cadastrado');
      end else begin
         cdsMVINOMEPRO.AsString := CadIte.NomePro;
         cdsMVIUNIDADE.AsString := CadIte.Unidade;

         if dsMVI.State = dsInsert then begin
            cdsMVIVLRUNIT.AsFloat  := CadIte.Preco;
            cdsMVIQTDE.AsInteger   := 1;           
         end;                           
      end;

      FreeAndNil(CadIte);
   end;

   Result := bResult;
end;

function TfrmMvmVenda.ValidaColunaAnterior: Boolean;
var bResult : Boolean;
begin
   bResult := True;

   if iColSel = CL_CODBARRA then begin
      bResult := ValidaCodigo;
      CalculaTotalMvi;
   end else if iColSel = CL_QTDE then begin
      bResult := ValidaQtde;
      CalculaTotalMvi;
   end else if iColSel = CL_VLRUNIT then begin
      CalculaTotalMvi;
   end;

   Result := bResult;
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

function TfrmMvmVenda.ValidaQtde: Boolean;
var bResult : Boolean;
begin

   bResult := True;
   if cdsMVIQTDE.AsFloat <= 0 then begin
      bResult := False;
      ShowMessage('Quantidade deve ser maior que zero.');
   end;

   if bResult then begin
      if cdsMVIQTDE.AsFloat > 99999 then begin
         bResult := False;
         ShowMessage('Quantidade máxima permitida para venda: 99999.');
      end;
   end;

   Result := bResult;
end;

end.
