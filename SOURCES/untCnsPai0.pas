unit untCnsPai0;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider,
  Data.SqlExpr, untDtmDados;

type
  TfrmCnsPai0 = class(TForm)
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
    dbgPais: TDBGrid;
    sdsPai0: TSQLDataSet;
    dspPai0: TDataSetProvider;
    cdsPai0: TClientDataSet;
    dsPai0: TDataSource;
    cdsPai0IDPAIS: TIntegerField;
    cdsPai0PAIS: TStringField;
    cdsPai0SIGLA: TStringField;
    procedure btnPesquisarClick(Sender: TObject);
  private
    procedure ConsultaDados;
    function MontaSQL                    : string;
    function MontaWhere(sSQL : string)   : string;
    function MontaTipo(sSQL : string)    : string;
  public

  end;

var
  frmCnsPai0: TfrmCnsPai0;

implementation

{$R *.dfm}

procedure TfrmCnsPai0.btnPesquisarClick(Sender: TObject);
begin
   ConsultaDados;
end;

procedure TfrmCnsPai0.ConsultaDados;
begin
   cdsPai0.Close;
   sdsPai0.Close;

   sdsPai0.CommandText := MontaSQL;

   cdsPai0.Open;
   sdsPai0.Open;
end;

function TfrmCnsPai0.MontaSQL: string;
var sResult : String;
begin
   sResult := 'SELECT PAI0.IDPAIS,  ' +
              '       PAI0.PAIS,    ' +
              '       PAI0.SIGLA    ' +
              'FROM TBLCDSPAI0 PAI0';

   if edtPesquisa.Text <> '' then begin
      sResult := MontaWhere(sResult);
      sResult := MontaTipo(sResult);
   end;

   if cmbCampoOrdem.ItemIndex = 0 then begin
      sResult := sResult + ' ORDER BY PAI0.IDPAIS ';
   end else begin
      sResult := sResult + ' ORDER BY PAI0.PAIS ';
   end;

   if rdgOrdem.ItemIndex = 1 then begin
      sResult := sResult + ' DESC';
   end;

   Result := sResult;
end;

function TfrmCnsPai0.MontaTipo(sSQL: string): string;
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

function TfrmCnsPai0.MontaWhere(sSQL: string): string;
var sResult : string;
begin

   sResult := sSQL + ' WHERE';

   if cmbCampoFiltrar.ItemIndex = 0 then begin
      sResult := sResult + ' PAI0.IDPAIS ';
   end else if cmbCampoFiltrar.ItemIndex = 1 then begin
      sResult := sResult + ' PAI0.PAIS ';
   end else begin
      sResult := sResult + ' PAI0.SIGLA ';
   end;

   Result := sResult;
end;

end.
