unit untCnsUsr0;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, untDtmDados, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr;

type
  TfrmCnsUsr0 = class(TForm)
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
    sdsUsr0: TSQLDataSet;
    dspUsr0: TDataSetProvider;
    cdsUsr0: TClientDataSet;
    dsUsr0: TDataSource;
    cdsUsr0ADM: TSmallintField;
    cdsUsr0IDUSUARIO: TIntegerField;
    cdsUsr0USUARIO: TStringField;
    cdsUsr0LOGIN: TStringField;
    cdsUsr0STATUS: TStringField;
    procedure btnPesquisarClick(Sender: TObject);
    procedure dbgPaisDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    procedure ConsultaDados;
    function MontaSQL                    : string;
    function MontaWhere(sSQL : string)   : string;
    function MontaTipo(sSQL : string)    : string;
  public

  end;

var
  frmCnsUsr0: TfrmCnsUsr0;

implementation

{$R *.dfm}

procedure TfrmCnsUsr0.btnPesquisarClick(Sender: TObject);
begin
   ConsultaDados
end;

procedure TfrmCnsUsr0.ConsultaDados;
begin
   sdsUsr0.Close;
   cdsUsr0.Close;

   sdsUsr0.CommandText := MontaSQL;

   sdsUsr0.Open;
   cdsUsr0.Open;
end;

procedure TfrmCnsUsr0.dbgPaisDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  lR: TRect;
  lCheck: integer;
begin
   if Assigned(cdsUsr0.FindField('ADM')) and (Column.Index = 0) then begin
      if (cdsUsr0.FieldByName('ADM').Value = 1) then
         lCheck := DFCS_BUTTONCHECK or DFCS_CHECKED
      else
         lCheck := DFCS_BUTTONCHECK;

      dbgPais.Canvas.FillRect(Rect);
      lR := Rect;
      InflateRect(lR, -2, -2);
      DrawFrameControl(dbgPais.Canvas.Handle, lR, DFC_BUTTON, lCheck);
   end else begin
      dbgPais.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;

end;

function TfrmCnsUsr0.MontaSQL: string;
var sResult : String;
begin
   sResult := 'SELECT USR0.ADM,        ' +
              '       USR0.IDUSUARIO,  ' +
              '       USR0.USUARIO,    ' +
              '       USR0.LOGIN,      ' +
              '       USR0.STATUS      ' +
              ' FROM TBLCDSUSR0 USR0   ';

   if edtPesquisa.Text <> '' then begin
      sResult := MontaWhere(sResult);
      sResult := MontaTipo(sResult);
   end;

   if cmbCampoOrdem.ItemIndex = 0 then begin
      sResult := sResult + ' ORDER BY USR0.IDUSUARIO ';
   end else if cmbCampoOrdem.ItemIndex = 1 then begin
      sResult := sResult + ' ORDER BY USR0.USUARIO ';
   end else begin
      sResult := sResult + ' ORDER BY USR0.LOGIN ';
   end;

   if rdgOrdem.ItemIndex = 1 then begin
      sResult := sResult + ' DESC';
   end;

   Result := sResult;
end;

function TfrmCnsUsr0.MontaTipo(sSQL: string): string;
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

function TfrmCnsUsr0.MontaWhere(sSQL: string): string;
var sResult : string;
begin

   sResult := sSQL + ' WHERE';

   if cmbCampoFiltrar.ItemIndex = 0 then begin
      sResult := sResult + ' USR0.IDUSUARIO ';
   end else if cmbCampoFiltrar.ItemIndex = 1 then begin
      sResult := sResult + ' USR0.USUARIO ';
   end else begin
      sResult := sResult + ' USR0.LOGIN ';
   end;

   Result := sResult;
end;

end.
