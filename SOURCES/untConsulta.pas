unit untConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, untDtmDados, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, UntTipos;

type
  TfrmConsulta = class(TForm)
    pnlLeft: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cmbCampoFiltrar: TComboBox;
    cmbTipoPesquisa: TComboBox;
    cmbCampoOrdem: TComboBox;
    rdgOrdem: TRadioGroup;
    pnlFundo: TPanel;
    pnlTopo: TPanel;
    Label1: TLabel;
    btnPesquisar: TButton;
    edtPesquisa: TEdit;
    dbgDados: TDBGrid;
    sdsDados: TSQLDataSet;
    dspDados: TDataSetProvider;
    cdsDados: TClientDataSet;
    dsDados: TDataSource;
    pnlRodape: TPanel;
    btnConcluir: TButton;
    btnCancelar: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnConcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure dbgDadosDblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    procedure ConfiguraTelaConsulta;
    procedure ConfiguraComboBox;
    procedure ConfiguraGrid;
    procedure ConsultaDados;
    function MontaSql : string;
    function ValidaDados : Boolean;
  public
    idResult        : Integer;
    SqlCommandText  : String;
    ItemIndexFiltro : Integer;
    ItemIndexOrdem  : Integer;
    CaptionForm     : String;
    ListaOrdem      : array of tCampos;
    ListaFiltro     : array of tCampos;
    ListaColunas    : array of tCampos;
  end;

var
  frmConsulta: TfrmConsulta;

implementation

{$R *.dfm}

procedure TfrmConsulta.btnCancelarClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmConsulta.btnConcluirClick(Sender: TObject);
begin
   if cdsDados.Active then begin
      idResult := cdsDados.Fields[0].AsInteger;
   end;

   ModalResult := mrOk;
end;

procedure TfrmConsulta.btnPesquisarClick(Sender: TObject);
begin
   if ValidaDados then begin
      ConsultaDados;
      dbgDados.SetFocus;
   end;
end;

procedure TfrmConsulta.ConfiguraComboBox;
var iCont : Integer;
begin
   cmbCampoFiltrar.Items.Clear;
   for iCont := Low(ListaFiltro) to High(ListaFiltro) do begin
      cmbCampoFiltrar.Items.Add(ListaFiltro[iCont].CampoLeg);
   end;
   cmbCampoFiltrar.ItemIndex := ItemIndexFiltro;

   cmbCampoOrdem.Items.Clear;
   for iCont := Low(ListaOrdem) to High(ListaOrdem) do begin
      cmbCampoOrdem.Items.Add(ListaOrdem[iCont].CampoLeg);
   end;
   cmbCampoOrdem.ItemIndex := ItemIndexOrdem;
end;

procedure TfrmConsulta.ConfiguraGrid;
var i       : Integer;
    Campo   : tCampos;
begin
   dbgDados.Columns.Clear;

   for i := Low(ListaColunas) to High(ListaColunas) do begin
      Campo := ListaColunas[i];

      dbgDados.Columns.Add;
      dbgDados.Columns[i].FieldName          := Campo.CampoID;
      dbgDados.Columns[i].Title.Caption      := Campo.CampoLeg;
      dbgDados.Columns[i].Title.Font.Style   := [fsBold];
      dbgDados.Columns[i].Width              := Campo.Width;

//      if Campo.DisplayFormat <> '' then begin
//         cdsDados.FieldByName(Campo.CampoID).EditMask := Campo.DisplayFormat;
//      end;

   end;

end;

procedure TfrmConsulta.ConfiguraTelaConsulta;
begin
   Caption := CaptionForm;
   ConfiguraComboBox;
   ConfiguraGrid;

   if edtPesquisa.CanFocus then edtPesquisa.SetFocus;   
end;

procedure TfrmConsulta.ConsultaDados;
begin
   sdsDados.Close;
   cdsDados.Close;

   sdsDados.CommandText := MontaSql;

   sdsDados.Open;
   cdsDados.Open;
end;

procedure TfrmConsulta.dbgDadosDblClick(Sender: TObject);
begin
   if btnConcluir.Enabled then btnConcluir.Click;
   
end;

procedure TfrmConsulta.FormCreate(Sender: TObject);
begin
   idResult        := 0;
   ItemIndexFiltro := -1;
   ItemIndexOrdem  := -1;
end;

procedure TfrmConsulta.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then begin
      if edtPesquisa.Focused then begin
         if btnPesquisar.Enabled then begin
            key := #0;
            btnPesquisar.Click;
         end;
      end else if dbgDados.Focused then begin
         if btnConcluir.Enabled then begin
            key := #0;
            btnConcluir.Click;
         end;
      end;
   end;

   if key = #27 then begin
      key := #0;
      if btnCancelar.Enabled then btnCancelar.Click;      
   end;
end;

procedure TfrmConsulta.FormShow(Sender: TObject);
begin
   ConfiguraTelaConsulta;
end;

function TfrmConsulta.MontaSql: string;
var sSelect, sWhere, sOrderBy, sDesc : string;
begin
   sSelect  := SqlCommandText;

   sWhere   := '';
   if edtPesquisa.Text <> '' then begin
      sWhere := ' WHERE ' + ListaOrdem[cmbCampoFiltrar.ItemIndex].CampoID;

      if cmbTipoPesquisa.ItemIndex = 0 then begin
         sWhere := sWhere + ' LIKE ' + QuotedStr(edtPesquisa.Text + '%');
      end else if cmbTipoPesquisa.ItemIndex = 1 then begin
         sWhere := sWhere + ' LIKE ' + QuotedStr('%' + edtPesquisa.Text + '%');
      end else if cmbTipoPesquisa.ItemIndex = 2 then begin
         sWhere := sWhere + ' = ' + QuotedStr(edtPesquisa.Text);
      end;

   end;

   sOrderBy := ' ORDER BY ' + ListaOrdem[cmbCampoOrdem.ItemIndex].CampoID;

   if rdgOrdem.ItemIndex = 0 then begin
      sDesc := 'ASC'
   end else begin
      sDesc := 'DESC'
   end;

   Result := sSelect + ' ' + sWhere + ' ' + sOrderBy + ' ' + sDesc;
end;

function TfrmConsulta.ValidaDados: Boolean;
var bResult : Boolean;
begin

   bResult := True;
   if edtPesquisa.Text <> '' then begin
      if cmbTipoPesquisa.ItemIndex = 2 then begin //Consulta Exata
         if ListaFiltro[cmbCampoFiltrar.ItemIndex].Tipo = tpInteiro then begin
            if StrToIntDef(edtPesquisa.Text, 0) = 0 then begin
               bResult := False;
               ShowMessage('Argumento para pesquisa inválido');
            end;
         end;
      end;
   end;

   Result := bResult;
end;

end.
