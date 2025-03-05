unit untCnsCli0;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Data.FMTBcd, Data.SqlExpr, Datasnap.Provider,
  Datasnap.DBClient, untDtmDados;

type
  TfrmCnsCli0 = class(TForm)
    pnlLeft: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cmbCampoFiltrar: TComboBox;
    cmbTipoPesquisa: TComboBox;
    cmbCampoOrdem: TComboBox;
    rdgOrdem: TRadioGroup;
    pnlRodape: TPanel;
    pnlFundo: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    btnPesquisar: TButton;
    edtPesquisa: TEdit;
    dbgMeioCob: TDBGrid;
    dsCli0: TDataSource;
    cdsCli0: TClientDataSet;
    dspCli0: TDataSetProvider;
    sdsCli0: TSQLDataSet;
    cdsCli0IDCLIENTE: TIntegerField;
    cdsCli0RAZAO: TStringField;
    cdsCli0FANTASIA: TStringField;
    cdsCli0STATUS: TStringField;
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
  frmCnsCli0: TfrmCnsCli0;

implementation

{$R *.dfm}

procedure TfrmCnsCli0.btnPesquisarClick(Sender: TObject);
begin
   ConsultaDados;
end;

procedure TfrmCnsCli0.ConsultaDados;
begin
   cdsCli0.Close;
   sdsCli0.Close;

   sdsCli0.CommandText := MontaSQL;

   cdsCli0.Open;
   sdsCli0.Open;
end;

function TfrmCnsCli0.MontaSQL: string;
var sResult : String;
begin
   sResult := 'SELECT CLI0.IDCLIENTE, ' +
              '       CLI0.RAZAO,     ' +
              '       CLI0.FANTASIA,  ' +
              '       CLI0.STATUS     ' +
              ' FROM TBLCDSCLI0 CLI0  ';

   if edtPesquisa.Text <> '' then begin
      sResult := MontaWhere(sResult);
      sResult := MontaTipo(sResult);
   end;

   if cmbCampoOrdem.ItemIndex = 0 then begin
      sResult := sResult + ' ORDER BY CLI0.IDCLIENTE ';
   end else if cmbCampoOrdem.ItemIndex = 1 then begin
      sResult := sResult + ' ORDER BY CLI0.RAZAO ';
   end else begin
      sResult := sResult + ' ORDER BY CLI0.FANTASIA ';
   end;

   if rdgOrdem.ItemIndex = 1 then begin
      sResult := sResult + ' DESC';
   end;

   Result := sResult;

end;

function TfrmCnsCli0.MontaTipo(sSQL: string): string;
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

function TfrmCnsCli0.MontaWhere(sSQL: string): string;
var sResult : string;
begin
   sResult := sSQL + ' WHERE';

   if cmbCampoFiltrar.ItemIndex = 0 then begin
      sResult := sResult + ' CLI0.IDCLIENTE ';
   end else if cmbCampoFiltrar.ItemIndex = 1 then begin
      sResult := sResult + ' CLI0.RAZAO ';
   end else begin
      sResult := sResult + ' CLI0.FANTASIA ';
   end;

   Result := sResult;

end;

end.
