unit untCnsFpg0;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.SqlExpr,
  Datasnap.Provider, Data.DB, Datasnap.DBClient, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, untDtmDados;

type
  TfrmCnsFpg0 = class(TForm)
    pnlRodape: TPanel;
    pnlLeft: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cmbCampoFiltrar: TComboBox;
    cmbTipoPesquisa: TComboBox;
    cmbCampoOrdem: TComboBox;
    rdgOrdem: TRadioGroup;
    dsFpg0: TDataSource;
    cdsFpg0: TClientDataSet;
    dspFpg0: TDataSetProvider;
    sdsFpg0: TSQLDataSet;
    pnlFundo: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    btnPesquisar: TButton;
    edtPesquisa: TEdit;
    dbgMeioCob: TDBGrid;
    cdsFpg0IDFORMPAG: TIntegerField;
    cdsFpg0FORMPAG: TStringField;
    procedure btnPesquisarClick(Sender: TObject);
  private
    procedure ConsultaDados;
    function MontaSQL                    : string;
    function MontaWhere(sSQL : string)   : string;
    function MontaTipo(sSQL : string)    : string;
  public
    { Public declarations }
  end;

var
  frmCnsFpg0: TfrmCnsFpg0;

implementation

{$R *.dfm}

procedure TfrmCnsFpg0.btnPesquisarClick(Sender: TObject);
begin
   ConsultaDados;
end;

procedure TfrmCnsFpg0.ConsultaDados;
begin
   cdsFpg0.Close;
   sdsFpg0.Close;

   sdsFpg0.CommandText := MontaSQL;

   cdsFpg0.Open;
   sdsFpg0.Open;
end;

function TfrmCnsFpg0.MontaSQL: string;
var sResult : String;
begin
   sResult := 'SELECT FPG0.IDFORMPAG, ' +
              '       FPG0.FORMPAG    ' +
              ' FROM TBLCDSFPG0 FPG0   ';

   if edtPesquisa.Text <> '' then begin
      sResult := MontaWhere(sResult);
      sResult := MontaTipo(sResult);
   end;

   if cmbCampoOrdem.ItemIndex = 0 then begin
      sResult := sResult + ' ORDER BY FPG0.IDFORMPAG ';
   end else begin
      sResult := sResult + ' ORDER BY FPG0.FORMPAG ';
   end;

   if rdgOrdem.ItemIndex = 1 then begin
      sResult := sResult + ' DESC';
   end;

   Result := sResult;
end;

function TfrmCnsFpg0.MontaTipo(sSQL: string): string;
var sResult, sValor : string;
begin

   sValor  := edtPesquisa.Text;
   sResult := sSQL;
   if cmbTipoPesquisa.ItemIndex = 0 then begin
      sResult := sResult + ' LIKE ' + QuotedStr(sValor + '%');
   end else if cmbTipoPesquisa.ItemIndex = 1 then begin
      sResult := sResult + ' LIKE ' + QuotedStr('%' + sValor + '%');
   end else begin
      sResult := sResult + ' = ' + QuotedStr(sValor);
   end;

   Result := sResult;
end;

function TfrmCnsFpg0.MontaWhere(sSQL: string): string;
var sResult : string;
begin
   sResult := sSQL + ' WHERE';

   if cmbCampoFiltrar.ItemIndex = 0 then begin
      sResult := sResult + ' FPG0.IDFORMPAG ';
   end else begin
      sResult := sResult + ' FPG0.FORMPAG ';
   end;

   Result := sResult;
end;

end.
