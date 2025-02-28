unit untCdsIte0;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untMdlCds0, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, System.ImageList,
  Vcl.ImgList, Vcl.Imaging.pngimage, MetroTile, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, untConstantes, untDados,
  Vcl.Buttons;

type
  TfrmCdsIte0 = class(TfrmMdlCds0)
    cdsPrincipalIDITEM: TIntegerField;
    cdsPrincipalNOMEPRO: TStringField;
    cdsPrincipalCODBARRA: TStringField;
    cdsPrincipalIDMARCA: TIntegerField;
    cdsPrincipalIDSECAO: TIntegerField;
    cdsPrincipalPRECO: TFMTBCDField;
    cdsPrincipalSTATUS: TStringField;
    Label1: TLabel;
    fldIDITEM: TDBEdit;
    Label2: TLabel;
    fldNOMEPRO: TDBEdit;
    Label3: TLabel;
    fldCODBARRA: TDBEdit;
    Label4: TLabel;
    fldIDMARCA: TDBEdit;
    Label5: TLabel;
    fldIDSECAO: TDBEdit;
    Label6: TLabel;
    fldPRECO: TDBEdit;
    chbStatus: TDBCheckBox;
    btnIDMarca: TSpeedButton;
    lblIDMARCA: TEdit;
    btnIDSecao: TSpeedButton;
    lblIDSECAO: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnMetroNovoClick(Sender: TObject);
    procedure fldIDMARCAChange(Sender: TObject);
    procedure fldIDSECAOChange(Sender: TObject);
  private
    function ValidaMarca : Boolean;
    function ValidaSecao : Boolean;
  public
    function ValidaDados : Boolean; override;
  end;

var
  frmCdsIte0: TfrmCdsIte0;

implementation

{$R *.dfm}

procedure TfrmCdsIte0.btnMetroNovoClick(Sender: TObject);
begin
   inherited;
   cdsPrincipalSTATUS.AsString := 'A';
end;

procedure TfrmCdsIte0.fldIDMARCAChange(Sender: TObject);
begin
   inherited;
   LoadCaptionID(TBL_CDSMAR0, ID_CDSMAR0, DE_CDSMAR0, fldIDMARCA, lblIDMARCA);
end;

procedure TfrmCdsIte0.fldIDSECAOChange(Sender: TObject);
begin
   inherited;
   LoadCaptionID(TBL_CDSSEC0, ID_CDSSEC0, DE_CDSSEC0, fldIDSECAO, lblIDSECAO);
end;

procedure TfrmCdsIte0.FormCreate(Sender: TObject);
begin
   inherited;
   CaptionForm := 'Cadastro de Item';
   TableName   := TBL_CDSITE0;
   FieldID     := ID_CDSITE0;
   EditID      := fldIDITEM;
   EditDesc    := fldNOMEPRO;
end;

function TfrmCdsIte0.ValidaDados: Boolean;
var bResult : Boolean;
begin

   bResult := True;
   if cdsPrincipalNOMEPRO.AsString = ''  then begin
      bResult := False;
      ShowMessage('Campo produto é obrigatório');

      if fldNOMEPRO.CanFocus then fldNOMEPRO.SetFocus;
   end;

   if bResult then begin
      bResult := ValidaMarca;

      if not bResult then fldIDMARCA.SetFocus;
   end;

   if bResult then begin
      bResult := ValidaSecao;

      if not bResult then fldIDSECAO.SetFocus;
   end;

   Result := bResult;
end;

function TfrmCdsIte0.ValidaMarca: Boolean;
var bResult : Boolean;
begin

   bResult := True;
   if (SearchRecordDados('IDMARCA', 'TBLCDSMAR0', ' WHERE IDMARCA = ' + IntToStr(cdsPrincipalIDMARCA.AsInteger)) = '') and
      (cdsPrincipalIDMARCA.AsInteger <> 0) then begin

      bResult := False;
      ShowMessage('Marca não foi encontrada.');
   end;

   Result := bResult;
end;

function TfrmCdsIte0.ValidaSecao: Boolean;
var bResult : Boolean;
begin
   bResult := True;
   if (SearchRecordDados('IDSECAO', 'TBLCDSSEC0', ' WHERE IDSECAO = ' + IntToStr(cdsPrincipalIDSECAO.AsInteger)) = '') and
      (cdsPrincipalIDSECAO.AsInteger <> 0) then begin

      bResult := False;
      ShowMessage('Seção não foi encontrada.');
   end;

   Result := bResult;
end;

end.
