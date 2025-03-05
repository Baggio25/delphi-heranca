unit untMdlCds0;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, MetroTile,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, System.ImageList,
  Vcl.ImgList, Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider,
  Data.SqlExpr, untDtmDados, Vcl.DBCtrls, untDados;

type
  TfrmMdlCds0 = class(TForm)
    imgNavigator: TImageList;
    scrRodape: TScrollBox;
    StatusBar1: TStatusBar;
    pnlToolBarNavigator: TPanel;
    lblAtalho: TLabel;
    toolBarNavigator: TToolBar;
    btnPrimeiro: TToolButton;
    btnVoltar: TToolButton;
    btnAvancar: TToolButton;
    btnUltimo: TToolButton;
    edtConsultaRapida: TEdit;
    pnlLeftButtonMetro: TScrollBox;
    pnlLeftMetro: TPanel;
    btnMetroNovo: TMetroTile;
    btnMetroEditar: TMetroTile;
    btnMetroExcluir: TMetroTile;
    btnMetroSalvar: TMetroTile;
    btnMetroCancelar: TMetroTile;
    btnMetroProcurar: TMetroTile;
    btnMetroSair: TMetroTile;
    pnlFront: TScrollBox;
    sdsPrincipal: TSQLDataSet;
    dspPrincipal: TDataSetProvider;
    cdsPrincipal: TClientDataSet;
    dsPrincipal: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnMetroSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnMetroNovoClick(Sender: TObject);
    procedure btnMetroEditarClick(Sender: TObject);
    procedure btnMetroExcluirClick(Sender: TObject);
    procedure btnMetroSalvarClick(Sender: TObject);
    procedure btnMetroCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnAvancarClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure LocateRegistro( iChaveFind : integer );
    procedure AtivaButtons;
    procedure UpdateNavigator;
    procedure AtivaCampoConsulta;
    procedure ExecutaConsultaRapida;
    procedure LoadNextCodigo;
    function CheckNextCod : integer;
    function LastID              : Integer;
    function FirstID             : Integer;
    function NextID              : Integer;
    function PriorID             : Integer;
  public
    { Public declarations }
    CaptionForm : String;
    TableName   : String;
    FieldID     : String;
    EditID      : TDBEdit;
    EditDesc    : TDBEdit;

    function ValidaDados : Boolean; Virtual;
  end;

var
  frmMdlCds0: TfrmMdlCds0;

implementation

{$R *.dfm}

procedure TfrmMdlCds0.AtivaButtons;
begin
   btnMetroNovo.Enabled     := not btnMetroNovo.Enabled;
   btnMetroEditar.Enabled   := not btnMetroEditar.Enabled;
   btnMetroExcluir.Enabled  := not btnMetroExcluir.Enabled;
   btnMetroSalvar.Enabled   := not btnMetroSalvar.Enabled;
   btnMetroCancelar.Enabled := not btnMetroCancelar.Enabled;
   btnMetroProcurar.Enabled := not btnMetroProcurar.Enabled;
   pnlFront.Enabled         := not pnlFront.Enabled;
end;

procedure TfrmMdlCds0.btnAvancarClick(Sender: TObject);
begin
   LocateRegistro(NextID);
end;

procedure TfrmMdlCds0.btnMetroCancelarClick(Sender: TObject);
begin
   cdsPrincipal.Cancel;
   AtivaButtons;
end;

procedure TfrmMdlCds0.btnMetroEditarClick(Sender: TObject);
begin
   AtivaButtons;

   if edtConsultaRapida.Visible then AtivaCampoConsulta;

   cdsPrincipal.Edit;
   EditDesc.SetFocus;
end;

procedure TfrmMdlCds0.btnMetroExcluirClick(Sender: TObject);
begin
   AtivaButtons;
end;

procedure TfrmMdlCds0.btnMetroNovoClick(Sender: TObject);
begin
   AtivaButtons;

   if edtConsultaRapida.Visible then AtivaCampoConsulta;

   cdsPrincipal.Append;
   LoadNextCodigo;
   EditDesc.SetFocus;
end;

procedure TfrmMdlCds0.btnMetroSairClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmMdlCds0.btnMetroSalvarClick(Sender: TObject);
begin
   SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);

   if ValidaDados then begin
      if dsPrincipal.State = dsInsert then CheckNextCod;

      cdsPrincipal.Post;
      cdsPrincipal.ApplyUpdates(-1);
      AtivaButtons;
      UpdateNavigator;
   end;
end;

procedure TfrmMdlCds0.btnPrimeiroClick(Sender: TObject);
begin
   LocateRegistro(FirstID);
end;

procedure TfrmMdlCds0.btnUltimoClick(Sender: TObject);
begin
   LocateRegistro(LastID);
end;

procedure TfrmMdlCds0.btnVoltarClick(Sender: TObject);
begin
   LocateRegistro(PriorID);
end;

function TfrmMdlCds0.CheckNextCod: integer;
var qrySel : TSQLQuery;
    bVazio : Boolean;
begin
   qrySel               := TSQLQuery.Create(Self);
   qrySel.SQLConnection := dtmDados.cnxEstoque;

   repeat
      with qrySel do begin
         close;
         sql.Clear;
         sql.Add('SELECT ' + FieldID + ' FROM ' + TableName);
         sql.Add('WHERE ' + FieldID + ' = ' + IntToStr(cdsPrincipal.FieldByName(FieldID).AsInteger) ) ;

         open;
         bVazio := isEmpty;
         close;
      end;
      if not bVazio then LoadNextCodigo;

   until bVazio;

   qrySel.Close;
   FreeAndNil(qrySel);
end;

procedure TfrmMdlCds0.ExecutaConsultaRapida;
var iCodigo : Integer;
begin
   iCodigo := StrToIntDef(edtConsultaRapida.Text, 0);
   if iCodigo > 0 then LocateRegistro(iCodigo);
   edtConsultaRapida.SelectAll;
end;

procedure TfrmMdlCds0.AtivaCampoConsulta;
begin
   edtConsultaRapida.Visible := not edtConsultaRapida.Visible; 

   if edtConsultaRapida.CanFocus then edtConsultaRapida.SetFocus;
end;

function TfrmMdlCds0.FirstID: integer;
var qrySel : TSQLQuery;
begin
   qrySel               := TSQLQuery.Create(Self);
   qrySel.SQLConnection := dtmDados.cnxEstoque;

   with qrySel do begin
      close;
      sQL.Clear;
      sQL.Add( 'SELECT MIN('+ FieldID +') MINCOD FROM ' + TableName );
      open;
      Result := qrySel.FieldByName('MINCOD').AsInteger;
      close;
   end;

   FreeAndNil(qrySel);
end;

procedure TfrmMdlCds0.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmMdlCds0.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = VK_ESCAPE then begin
      key := 0;
      if edtConsultaRapida.Visible then begin
         AtivaCampoConsulta;
      end else if btnMetroCancelar.Enabled then begin
         btnMetroCancelar.Click;
      end else begin
         btnMetroSair.Click;
      end;
   end else if key = VK_F2 then begin
      if btnMetroEditar.Enabled then begin
         key := 0;
         btnMetroEditar.Click;
      end;
   end else if key = VK_F4 then begin
      if not (dsPrincipal.State in [dsInsert, dsEdit]) then begin
         AtivaCampoConsulta;
         key := 0;
      end;
   end else if key = VK_F9 then begin
      if btnMetroSalvar.Enabled then begin
         key := 0;
         btnMetroSalvar.Click;
      end;
   end else if key = VK_INSERT then begin
      if btnMetroNovo.Enabled then begin
         key := 0;
         btnMetroNovo.Click;
      end;
   end else if key = VK_DELETE then begin
      if btnMetroExcluir.Enabled then begin
         key := 0;
         btnMetroExcluir.Click;
      end;
   end else if key = VK_RETURN then begin
      key := 0;
      SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
   end;
end;

procedure TfrmMdlCds0.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then begin
      key := #0;
      ExecutaConsultaRapida;
   end;
end;

procedure TfrmMdlCds0.FormShow(Sender: TObject);
begin
   lblAtalho.Caption := Self.Name;
   Caption           := CaptionForm;
   EditID.ReadOnly   := True;
   LocateRegistro(LastID);
end;

function TfrmMdlCds0.LastID: integer;
var qrySel : TSQLQuery;
begin
   qrySel               := TSQLQuery.Create(Self);
   qrySel.SQLConnection := dtmDados.cnxEstoque;

   with qrySel do begin
      close;
      sQL.Clear;
      sQL.Add( 'SELECT MAX('+ FieldID +') MAXCOD FROM ' + TableName );
      open;
      Result := qrySel.FieldByName('MAXCOD').AsInteger;
      close;
   end;

   FreeAndNil(qrySel);
end;

procedure TfrmMdlCds0.LoadNextCodigo;
begin
   cdsPrincipal.FieldByName(FieldID).AsInteger := LastID + 1;
end;

procedure TfrmMdlCds0.LocateRegistro(iChaveFind: integer);
begin
   sdsPrincipal.Close;
   cdsPrincipal.Close;

   sdsPrincipal.ParamByName('ID').AsInteger := iChaveFind;

   sdsPrincipal.Open;
   cdsPrincipal.Open;

   UpdateNavigator;
end;

function TfrmMdlCds0.NextID: Integer;
var qrySel    : TSQLQuery;
    sSQL      : string;
    iRegAtual : Integer;
begin
   iRegAtual            := cdsPrincipal.FieldByName(FieldID).AsInteger;
   qrySel               := TSQLQuery.Create(Self);
   qrySel.SQLConnection := dtmDados.cnxEstoque;      
   with qrySel do begin
      close;
      sql.Clear;
      sql.Add( 'SELECT MIN('+ FieldID +') PROXIMO FROM ' + TableName );
      sql.Add( ' WHERE ' + FieldID + ' > '+ IntToStr(iRegAtual));
      open;
      Result := qrySel.FieldByName('PROXIMO').AsInteger;
      close;
   end;

   FreeAndNil(qrySel);  
end;

function TfrmMdlCds0.PriorID: Integer;
var qrySel    : TSQLQuery;
    sSQL      : string;
    iRegAtual : Integer;
begin
   iRegAtual            := cdsPrincipal.FieldByName(FieldID).AsInteger;
   qrySel               := TSQLQuery.Create(Self);
   qrySel.SQLConnection := dtmDados.cnxEstoque;
   with qrySel do begin
      close;
      sql.Clear;
      sql.Add( 'SELECT MAX('+ FieldID +') ANTERIOR FROM ' + TableName );
      sql.Add( ' WHERE ' + FieldID + ' < '+ IntToStr(iRegAtual));
      open;
      Result := qrySel.FieldByName('ANTERIOR').AsInteger;
      close;
   end;

   FreeAndNil(qrySel);
end;

procedure TfrmMdlCds0.UpdateNavigator;
var iRegAtual, iRegLast, iRegFirst : Integer;
begin                   
   iRegFirst := FirstID;
   iRegAtual := cdsPrincipal.FieldByName(FieldID).AsInteger;
   iRegLast  := LastID;
   
   btnPrimeiro.Enabled := ( iRegAtual <> iRegFirst );   
   btnVoltar.Enabled   := ( iRegAtual <> iRegFirst );
   btnUltimo.Enabled   := ( iRegAtual <> iRegLast );
   btnAvancar.Enabled  := ( iRegAtual <> iRegLast );     
end;

function TfrmMdlCds0.ValidaDados: Boolean;
begin
end;

end.
