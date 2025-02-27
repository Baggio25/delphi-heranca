unit untCnsCid0;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, untDtmDados, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr;

type
  TfrmCnsCid0 = class(TForm)
    pnlRodape: TPanel;
    pnlLeft: TPanel;
    pnlFundo: TPanel;
    Panel1: TPanel;
    dbgCid: TDBGrid;
    btnPesquisar: TButton;
    edtPesquisa: TEdit;
    Label1: TLabel;
    cmbCampoFiltrar: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    cmbTipoPesquisa: TComboBox;
    Label4: TLabel;
    cmbCampoOrdem: TComboBox;
    Label5: TLabel;
    rdgOrdem: TRadioGroup;
    sdsCid0: TSQLDataSet;
    dspCid0: TDataSetProvider;
    cdsCid0: TClientDataSet;
    dsCid0: TDataSource;
    cdsCid0IDCIDADE: TIntegerField;
    cdsCid0CIDADE: TStringField;
    cdsCid0UF: TStringField;
    cdsCid0CODIGOIBGE: TIntegerField;
    cdsCid0POPULACAO: TIntegerField;
    cdsCid0IDPAIS: TIntegerField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnPesquisarClick(Sender: TObject);
  private
    procedure ConsultaDados;
    function MontaSQL                    : string;
    function MontaWhere(sSQL : string)   : string;
    function MontaTipo(sSQL : string)    : string;
  public

  end;

var
  frmCnsCid0: TfrmCnsCid0;

implementation

{$R *.dfm}

procedure TfrmCnsCid0.btnPesquisarClick(Sender: TObject);
begin
   ConsultaDados;
end;

procedure TfrmCnsCid0.ConsultaDados;
begin
   sdsCid0.Close;
   cdsCid0.Close;

   sdsCid0.CommandText := MontaSQL;

   sdsCid0.Open;
   cdsCid0.Open;
end;

procedure TfrmCnsCid0.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then begin
      key := 0;
      Close;
   end;
end;

function TfrmCnsCid0.MontaSQL: string;
var sResult : string;
begin

   sResult := 'SELECT CID0.IDCIDADE,   ' +
              '       CID0.CIDADE,     ' +
              '       CID0.UF,         ' +
              '       CID0.CODIGOIBGE, ' +
              '       CID0.POPULACAO,  ' +
              '       CID0.IDPAIS      ' +
              'FROM TBLCDSCID0 CID0    ';

   
   if edtPesquisa.Text <> '' then begin     
      sResult := MontaWhere(sResult);   
      sResult := MontaTipo(sResult);       
   end;

   if cmbCampoOrdem.ItemIndex = 0 then begin     
      sResult := sResult + ' ORDER BY CID0.IDCIDADE '; 
   end else begin
      sResult := sResult + ' ORDER BY CID0.CIDADE ';
   end;                                   

   if rdgOrdem.ItemIndex = 1 then begin
      sResult := sResult + ' DESC'; 
   end;     

   Result := sResult;
end;

function TfrmCnsCid0.MontaTipo(sSQL : string): string;
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

function TfrmCnsCid0.MontaWhere(sSQL : string): string;
var sResult : string;
begin

   sResult := sSQL + ' WHERE';

   if cmbCampoFiltrar.ItemIndex = 0 then begin
      sResult := sResult + ' CID0.IDCIDADE ';   
   end else if cmbCampoFiltrar.ItemIndex = 1 then begin
      sResult := sResult + ' CID0.CIDADE ';
   end else begin
      sResult := sResult + ' CID0.UF ';
   end;

   Result := sResult;
end;

end.
