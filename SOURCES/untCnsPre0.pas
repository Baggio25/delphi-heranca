unit untCnsPre0;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, untDtmDados, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr;

type
  TfrmCnsPre0 = class(TForm)
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
    pnlFundo: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    btnPesquisar: TButton;
    edtPesquisa: TEdit;
    dbgTabPRe: TDBGrid;
    sdsPre0: TSQLDataSet;
    dspPre0: TDataSetProvider;
    cdsPre0: TClientDataSet;
    dsPre0: TDataSource;
    cdsPre0IDTABPRECO: TIntegerField;
    cdsPre0TABPRECO: TStringField;
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
  frmCnsPre0: TfrmCnsPre0;

implementation

{$R *.dfm}

{ TfrmCnsPre0 }

procedure TfrmCnsPre0.btnPesquisarClick(Sender: TObject);
begin
   ConsultaDados;
end;

procedure TfrmCnsPre0.ConsultaDados;
begin
   cdsPre0.Close;
   sdsPre0.Close;

   sdsPre0.CommandText := MontaSQL;

   cdsPre0.Open;
   sdsPre0.Open;
end;

function TfrmCnsPre0.MontaSQL: string;
var sResult : String;
begin
   sResult := 'SELECT PRE0.IDTABPRECO, ' +
              '       PRE0.TABPRECO    ' +
              ' FROM TBLCDSPRE0 PRE0   ';

   if edtPesquisa.Text <> '' then begin
      sResult := MontaWhere(sResult);
      sResult := MontaTipo(sResult);
   end;

   if cmbCampoOrdem.ItemIndex = 0 then begin
      sResult := sResult + ' ORDER BY PRE0.IDTABPRECO ';
   end else begin
      sResult := sResult + ' ORDER BY PRE0.TABPRECO ';
   end;

   if rdgOrdem.ItemIndex = 1 then begin
      sResult := sResult + ' DESC';
   end;

   Result := sResult;
end;

function TfrmCnsPre0.MontaTipo(sSQL: string): string;
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

function TfrmCnsPre0.MontaWhere(sSQL: string): string;
var sResult : string;
begin
   sResult := sSQL + ' WHERE';

   if cmbCampoFiltrar.ItemIndex = 0 then begin
      sResult := sResult + ' PRE0.IDTABPRECO ';
   end else begin
      sResult := sResult + ' PRE0.TABPRECO ';
   end;

   Result := sResult;
end;

end.
