unit untCdsVen0;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untMdlCds0, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, System.ImageList,
  Vcl.ImgList, Vcl.Imaging.pngimage, MetroTile, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, untConstantes, untDados,
  Vcl.Buttons;

type
  TfrmCdsVen0 = class(TfrmMdlCds0)
    cdsPrincipalIDVENDEDOR: TIntegerField;
    cdsPrincipalVENDEDOR: TStringField;
    cdsPrincipalIDCIDADE: TIntegerField;
    cdsPrincipalCOMISSAOVISTA: TFMTBCDField;
    cdsPrincipalCOMISSAOPRAZO: TFMTBCDField;
    cdsPrincipalSTATUS: TStringField;
    Label1: TLabel;
    fldIDVENDEDOR: TDBEdit;
    Label2: TLabel;
    fldVENDEDOR: TDBEdit;
    Label3: TLabel;
    fldIDCIDADE: TDBEdit;
    Label4: TLabel;
    fldCOMISSAOVISTA: TDBEdit;
    Label5: TLabel;
    fldCOMISSAOPRAZO: TDBEdit;
    chbStatus: TDBCheckBox;
    btnIDCIDADE: TSpeedButton;
    lblIDCIDADE: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnMetroNovoClick(Sender: TObject);
    procedure fldIDCIDADEChange(Sender: TObject);
  private
    function ValidaCidade : Boolean;
  public
    function ValidaDados : Boolean; override;
  end;

var
  frmCdsVen0: TfrmCdsVen0;

implementation

{$R *.dfm}

procedure TfrmCdsVen0.btnMetroNovoClick(Sender: TObject);
begin
   inherited;
   cdsPrincipalSTATUS.AsString := 'A';
end;

procedure TfrmCdsVen0.fldIDCIDADEChange(Sender: TObject);
begin
   inherited;
   LoadCaptionID(TBL_CDSCID0, ID_CDSCID0, DE_CDSCID0, fldIDCIDADE, lblIDCIDADE);
end;

procedure TfrmCdsVen0.FormCreate(Sender: TObject);
begin
   inherited;
   CaptionForm := 'Cadastro de Vendedor';
   TableName   := TBL_CDSVEN0;
   FieldID     := ID_CDSVEN0;
   EditID      := fldIDVENDEDOR;
   EditDesc    := fldVENDEDOR;
end;

function TfrmCdsVen0.ValidaCidade: Boolean;
var bResult : Boolean;
begin

   bResult := True;
   if (SearchRecordDados('IDCIDADE', 'TBLCDSCID0', 'WHERE IDCIDADE = ' + IntToStr(cdsPrincipalIDCIDADE.AsInteger) ) = '') and
      (cdsPrincipalIDCIDADE.AsInteger <> 0) then begin

      bResult := False;
      ShowMessage('Cidade não foi encontrada');
   end;

   Result := bResult;
end;

function TfrmCdsVen0.ValidaDados: Boolean;
var bResult : Boolean;
begin

   bResult := True;
   if cdsPrincipalVENDEDOR.AsString = '' then begin
      bResult := False;
      ShowMessage('O campo vendedor é obrigatório');

      if fldVENDEDOR.CanFocus then fldVENDEDOR.SetFocus;
   end;

   if bResult then begin
      bResult := ValidaCidade;

      if not bResult then fldIDCIDADE.SetFocus;
   end;

   Result := bResult;
end;

end.
