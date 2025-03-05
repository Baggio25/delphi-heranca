unit untCnsMcb0;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, untDtmDados, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr;

type
  TfrmCnsMcb0 = class(TForm)
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
    dbgMeioCob: TDBGrid;
    sdsMcb0: TSQLDataSet;
    dspMcb0: TDataSetProvider;
    cdsMcb0: TClientDataSet;
    dsMcb0: TDataSource;
    cdsMcb0IDMEIOCOB: TIntegerField;
    cdsMcb0MEIOCOB: TStringField;
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
  frmCnsMcb0: TfrmCnsMcb0;

implementation

{$R *.dfm}

{ TfrmCnsMcb0 }

procedure TfrmCnsMcb0.btnPesquisarClick(Sender: TObject);
begin
   ConsultaDados;
end;

procedure TfrmCnsMcb0.ConsultaDados;
begin
   cdsMcb0.Close;
   sdsMcb0.Close;

   sdsMcb0.CommandText := MontaSQL;

   cdsMcb0.Open;
   sdsMcb0.Open;
end;

function TfrmCnsMcb0.MontaSQL: string;
var sResult : String;
begin
   sResult := 'SELECT MCB0.IDMEIOCOB, ' +
              '       MCB0.MEIOCOB    ' +
              ' FROM TBLCDSMCB0 MCB0   ';

   if edtPesquisa.Text <> '' then begin
      sResult := MontaWhere(sResult);
      sResult := MontaTipo(sResult);
   end;

   if cmbCampoOrdem.ItemIndex = 0 then begin
      sResult := sResult + ' ORDER BY MCB0.IDMEIOCOB ';
   end else begin
      sResult := sResult + ' ORDER BY MCB0.MEIOCOB ';
   end;

   if rdgOrdem.ItemIndex = 1 then begin
      sResult := sResult + ' DESC';
   end;

   Result := sResult;
end;

function TfrmCnsMcb0.MontaTipo(sSQL: string): string;
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

function TfrmCnsMcb0.MontaWhere(sSQL: string): string;
var sResult : string;
begin
   sResult := sSQL + ' WHERE';

   if cmbCampoFiltrar.ItemIndex = 0 then begin
      sResult := sResult + ' MCB0.IDMEIOCOB ';
   end else begin
      sResult := sResult + ' MCB0.MEIOCOB ';
   end;

   Result := sResult;
end;

end.
