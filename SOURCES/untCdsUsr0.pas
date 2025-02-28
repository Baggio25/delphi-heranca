unit untCdsUsr0;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untMdlCds0, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, System.ImageList,
  Vcl.ImgList, Vcl.Imaging.pngimage, MetroTile, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, untConstantes, untCnsUsr0,
  untDados;

type
  TfrmCdsUsr0 = class(TfrmMdlCds0)
    cdsPrincipalIDUSUARIO: TIntegerField;
    cdsPrincipalUSUARIO: TStringField;
    cdsPrincipalFONE: TStringField;
    cdsPrincipalCELULAR: TStringField;
    cdsPrincipalIDCIDADE: TIntegerField;
    cdsPrincipalENDERECO: TStringField;
    cdsPrincipalNUMERO: TStringField;
    cdsPrincipalBAIRRO: TStringField;
    cdsPrincipalCEP: TStringField;
    cdsPrincipalCPF: TStringField;
    cdsPrincipalCNPJ: TStringField;
    cdsPrincipalLOGIN: TStringField;
    cdsPrincipalSENHA: TStringField;
    cdsPrincipalSTATUS: TStringField;
    cdsPrincipalADM: TSmallintField;
    Label1: TLabel;
    fldIDUSUARIO: TDBEdit;
    Label2: TLabel;
    fldUSUARIO: TDBEdit;
    Label3: TLabel;
    fldLOGIN: TDBEdit;
    Label4: TLabel;
    fldSENHA: TDBEdit;
    Label5: TLabel;
    fldIDCIDADE: TDBEdit;
    Label6: TLabel;
    fldENDERECO: TDBEdit;
    Label7: TLabel;
    fldNUMERO: TDBEdit;
    Label8: TLabel;
    fldBAIRRO: TDBEdit;
    Label9: TLabel;
    fldCEP: TDBEdit;
    Label10: TLabel;
    fldCPF: TDBEdit;
    Label11: TLabel;
    fldCNPJ: TDBEdit;
    chbAdm: TDBCheckBox;
    chbStatus: TDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure btnMetroNovoClick(Sender: TObject);
    procedure btnMetroProcurarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnMetroSalvarClick(Sender: TObject);
  private
    procedure ExibeConsulta;
  public
    function ValidaDados : Boolean; override;
    function ValidaCidade : Boolean;
  end;

var
  frmCdsUsr0: TfrmCdsUsr0;

implementation

{$R *.dfm}

procedure TfrmCdsUsr0.btnMetroNovoClick(Sender: TObject);
begin
  inherited;
   cdsPrincipalSTATUS.AsString := 'A';
   cdsPrincipalADM.AsInteger   := 0;
end;

procedure TfrmCdsUsr0.btnMetroProcurarClick(Sender: TObject);
begin
  inherited;
  ExibeConsulta;
end;

procedure TfrmCdsUsr0.btnMetroSalvarClick(Sender: TObject);
begin

  if cdsPrincipalADM.AsInteger <> 1 then cdsPrincipalADM.AsInteger := 0;
  
  inherited;

end;

procedure TfrmCdsUsr0.ExibeConsulta;
begin
   with TfrmCnsUsr0.Create(Application) do ShowModal;
end;

procedure TfrmCdsUsr0.FormCreate(Sender: TObject);
begin
  inherited;
   CaptionForm := 'Cadastro de Usuário';
   TableName   := TBL_CDSUSR0;
   FieldID     := ID_CDSUSR0;
   EditID      := fldIDUSUARIO;
   EditDesc    := fldUSUARIO;
end;

procedure TfrmCdsUsr0.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;

   if key = VK_F5 then begin
      btnMetroProcurar.Click;
   end;
end;

function TfrmCdsUsr0.ValidaCidade: Boolean;
var bResult : Boolean;
begin

   bResult := True;
   if SearchRecordDados('IDCIDADE', 'TBLCDSCID0', 'WHERE IDCIDADE = ' + IntToStr(cdsPrincipalIDCIDADE.AsInteger) ) = '' then begin
      bResult := False;
      ShowMessage('Cidade não encontrada');
   end;

   Result := bResult;
end;

function TfrmCdsUsr0.ValidaDados: Boolean;
var bResult : Boolean;
begin

   bResult := True;
   if cdsPrincipalUSUARIO.AsString = '' then begin
      bResult := False;
      ShowMessage('O campo usuário é obrigatório');

      if fldUSUARIO.CanFocus then fldUSUARIO.SetFocus;
   end;

   if bResult then begin
      if cdsPrincipalLOGIN.AsString = '' then begin
         bResult := False;
         ShowMessage('O campo login é obrigatório');

         if fldLOGIN.CanFocus then fldLOGIN.SetFocus;
      end;
   end;

   if bResult then begin
      if cdsPrincipalSENHA.AsString = '' then begin
         bResult := False;
         ShowMessage('O campo senha é obrigatório');

         if fldSENHA.CanFocus then fldSENHA.SetFocus;
      end;
   end;

   if bResult then begin
      bResult := ValidaCidade;

      if not bResult then fldIDCIDADE.SetFocus;      
   end;

   Result := bResult;
end;

end.
