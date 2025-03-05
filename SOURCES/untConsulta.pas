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
    Panel1: TPanel;
    Label1: TLabel;
    btnPesquisar: TButton;
    edtPesquisa: TEdit;
    dbgDados: TDBGrid;
    sdsDados: TSQLDataSet;
    dspDados: TDataSetProvider;
    cdsDados: TClientDataSet;
    dsDados: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    procedure ConfiguraTelaConsulta;
    procedure ConfiguraComboBox;
    procedure ConfiguraGrid;
  public
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

procedure TfrmConsulta.btnPesquisarClick(Sender: TObject);
begin
   sdsDados.Close;
   cdsDados.Close;

   sdsDados.CommandText := SqlCommandText;

   sdsDados.Open;
   cdsDados.Open;
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
   end;

end;

procedure TfrmConsulta.ConfiguraTelaConsulta;
begin
   Caption := CaptionForm;
   ConfiguraComboBox;
   ConfiguraGrid;
end;

procedure TfrmConsulta.FormCreate(Sender: TObject);
begin
   ItemIndexFiltro := -1;
   ItemIndexOrdem  := -1;
end;

procedure TfrmConsulta.FormShow(Sender: TObject);
begin
   ConfiguraTelaConsulta;
end;

end.
