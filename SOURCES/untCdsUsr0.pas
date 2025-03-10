unit untCdsUsr0;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untMdlCds0, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, System.ImageList,
  Vcl.ImgList, Vcl.Imaging.pngimage, MetroTile, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, untConstantes, untDados, Vcl.Buttons, untClassCnsUsr0,
  untClassCnsCid0;

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
    btnIDCIDADE: TSpeedButton;
    lblIDCIDADE: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnMetroNovoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnMetroSalvarClick(Sender: TObject);
    procedure fldIDCIDADEChange(Sender: TObject);
    procedure btnIDCIDADEClick(Sender: TObject);
  private
    function ValidaCidade : Boolean;
  public
    function ValidaDados : Boolean; override;
  end;

var
  frmCdsUsr0: TfrmCdsUsr0;

implementation

{$R *.dfm}

procedure TfrmCdsUsr0.btnIDCIDADEClick(Sender: TObject);
begin
   inherited;
   SearchId( tCnsCid0.Create(Self), fldIDCIDADE, ID_CDSCID0 );
end;

procedure TfrmCdsUsr0.btnMetroNovoClick(Sender: TObject);
begin
  inherited;
   cdsPrincipalSTATUS.AsString := 'A';
   cdsPrincipalADM.AsInteger   := 0;
end;

procedure TfrmCdsUsr0.btnMetroSalvarClick(Sender: TObject);
begin

  if cdsPrincipalADM.AsInteger <> 1 then cdsPrincipalADM.AsInteger := 0;

  inherited;

end;

procedure TfrmCdsUsr0.fldIDCIDADEChange(Sender: TObject);
begin
   inherited;

   LoadCaptionID(TBL_CDSCID0, ID_CDSCID0, DE_CDSCID0, fldIDCIDADE, lblIDCIDADE);
end;

procedure TfrmCdsUsr0.FormCreate(Sender: TObject);
begin
  inherited;
   CaptionForm    := 'Cadastro de Usu�rio';
   TableName      := TBL_CDSUSR0;
   FieldID        := ID_CDSUSR0;
   EditID         := fldIDUSUARIO;
   EditDesc       := fldUSUARIO;
   Generator      := GEN_TBLCDSUSR0;
   ClasseConsulta := tCnsUsr0.Create(Self);
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
   if (SearchRecordDados('IDCIDADE', 'TBLCDSCID0', 'WHERE IDCIDADE = ' + IntToStr(cdsPrincipalIDCIDADE.AsInteger) ) = '') and
      (cdsPrincipalIDCIDADE.AsInteger <> 0) then begin

      bResult := False;
      ShowMessage('Cidade n�o encontrada');
   end;

   Result := bResult;
end;

function TfrmCdsUsr0.ValidaDados: Boolean;
var bResult : Boolean;
begin

   bResult := True;
   if cdsPrincipalUSUARIO.AsString = '' then begin
      bResult := False;
      ShowMessage('O campo usu�rio � obrigat�rio');

      if fldUSUARIO.CanFocus then fldUSUARIO.SetFocus;
   end;

   if bResult then begin
      if cdsPrincipalLOGIN.AsString = '' then begin
         bResult := False;
         ShowMessage('O campo login � obrigat�rio');

         if fldLOGIN.CanFocus then fldLOGIN.SetFocus;
      end;
   end;

   if bResult then begin
      if cdsPrincipalSENHA.AsString = '' then begin
         bResult := False;
         ShowMessage('O campo senha � obrigat�rio');

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
