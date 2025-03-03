unit untCdsCli0;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untMdlCds0, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, System.ImageList,
  Vcl.ImgList, Vcl.Imaging.pngimage, MetroTile, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, untConstantes, Vcl.Buttons,
  untDados, Vcl.Imaging.jpeg;

type
  TfrmCdsCli0 = class(TfrmMdlCds0)
    pgcCliente: TPageControl;
    tbsCliente: TTabSheet;
    tbsInfoCliente: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    cdsPrincipalIDCLIENTE: TIntegerField;
    cdsPrincipalRAZAO: TStringField;
    cdsPrincipalFANTASIA: TStringField;
    cdsPrincipalCNPJ: TStringField;
    cdsPrincipalCEI: TStringField;
    cdsPrincipalISENTOCEI: TIntegerField;
    cdsPrincipalCEIPRODRURAL: TStringField;
    cdsPrincipalSUFRAMA: TIntegerField;
    cdsPrincipalINSCSUFRAMA: TStringField;
    cdsPrincipalDOCESTRANG: TStringField;
    cdsPrincipalSTATUS: TStringField;
    cdsPrincipalMEI: TIntegerField;
    cdsPrincipalMEIREVEND: TIntegerField;
    cdsPrincipalCPF: TStringField;
    cdsPrincipalENDERECO: TStringField;
    cdsPrincipalBAIRRO: TStringField;
    cdsPrincipalCEP: TStringField;
    cdsPrincipalNUMERO: TStringField;
    cdsPrincipalIDCIDADE: TIntegerField;
    cdsPrincipalEMAIL: TStringField;
    cdsPrincipalPROXIMOA: TStringField;
    cdsPrincipalCOMPLEMENTO: TStringField;
    cdsPrincipalFONE: TStringField;
    cdsPrincipalFAX: TStringField;
    cdsPrincipalCELULAR: TStringField;
    cdsPrincipalCELULAR2: TStringField;
    cdsPrincipalCELULAR3: TStringField;
    cdsPrincipalOPERADORA: TStringField;
    cdsPrincipalOPERADORA2: TStringField;
    cdsPrincipalOPERADORA3: TStringField;
    cdsPrincipalWHATSAPP: TStringField;
    cdsPrincipalPERRECMSGWHATSAPP: TIntegerField;
    cdsPrincipalTIPOCONTRIB: TIntegerField;
    cdsPrincipalIDMEIOCOB: TIntegerField;
    cdsPrincipalIDFORMPAG: TIntegerField;
    cdsPrincipalIDTABPRECO: TIntegerField;
    Label1: TLabel;
    fldIDCLIENTE: TDBEdit;
    Label2: TLabel;
    fldRAZAO: TDBEdit;
    Label3: TLabel;
    fldCNPJ: TDBEdit;
    Label4: TLabel;
    fldCPF: TDBEdit;
    Label5: TLabel;
    fldCEI: TDBEdit;
    chbISENTOCEI: TDBCheckBox;
    Label6: TLabel;
    fldCEIPRODRURAL: TDBEdit;
    chbSUFRAMA: TDBCheckBox;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    chbSTATUS: TDBCheckBox;
    chbMEI: TDBCheckBox;
    chbMEIREVEND: TDBCheckBox;
    Label9: TLabel;
    fldFANTASIA: TDBEdit;
    Label10: TLabel;
    DBEdit3: TDBEdit;
    Label11: TLabel;
    fldIDCIDADE: TDBEdit;
    btnIDCIDADE: TSpeedButton;
    lblIDCIDADE: TEdit;
    lblUF: TEdit;
    Label12: TLabel;
    fldENDERECO: TDBEdit;
    Label13: TLabel;
    fldNUMERO: TDBEdit;
    Label14: TLabel;
    fldBAIRRO: TDBEdit;
    Label15: TLabel;
    fldEMAIL: TDBEdit;
    Label16: TLabel;
    fldPROXIMOA: TDBEdit;
    Label17: TLabel;
    fldCOMPLEMENTO: TDBEdit;
    Label18: TLabel;
    fldFONE: TDBEdit;
    Label19: TLabel;
    fldFAX: TDBEdit;
    Label20: TLabel;
    fldCELULAR: TDBEdit;
    Label21: TLabel;
    DBEdit4: TDBEdit;
    chbPERRECMSGWHATSAPP: TDBCheckBox;
    Label22: TLabel;
    fldCELULAR2: TDBEdit;
    Label23: TLabel;
    DBEdit5: TDBEdit;
    cbxOPERADORA2: TDBComboBox;
    cbxOPERADORA3: TDBComboBox;
    cbxOPERADORA: TDBComboBox;
    fldIDMEIOCOB: TDBEdit;
    btnIDMEIOCOB: TSpeedButton;
    lblIDMEIOCOB: TEdit;
    Label24: TLabel;
    fldIDFORMPAG: TDBEdit;
    btnIDFORMAPAG: TSpeedButton;
    lblIDFORMPAG: TEdit;
    Label25: TLabel;
    fldIDTABPRECO: TDBEdit;
    btnIDTABPRE: TSpeedButton;
    lblIDTABPRECO: TEdit;
    Label26: TLabel;
    rdgTipo: TDBRadioGroup;
    imgCli: TImage;
    procedure FormCreate(Sender: TObject);
    procedure btnMetroNovoClick(Sender: TObject);
    procedure fldIDCIDADEChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnMetroSalvarClick(Sender: TObject);
  private
    procedure SetaTabCliente;
    procedure InicializaCampos;
  public
     function ValidaDados : Boolean; override;
  end;

var
  frmCdsCli0: TfrmCdsCli0;

implementation

{$R *.dfm}

procedure TfrmCdsCli0.btnMetroNovoClick(Sender: TObject);
begin
   inherited;
   InicializaCampos;
   fldCNPJ.SetFocus;
end;

procedure TfrmCdsCli0.btnMetroSalvarClick(Sender: TObject);
begin
   inherited;
   SetaTabCliente;
end;

procedure TfrmCdsCli0.fldIDCIDADEChange(Sender: TObject);
begin
   inherited;
   //Load ID Cidade
   LoadCaptionID(TBL_CDSCID0, ID_CDSCID0, DE_CDSCID0, fldIDCIDADE, lblIDCIDADE);
   LoadCaptionID(TBL_CDSCID0, ID_CDSCID0, 'UF', fldIDCIDADE, lblUF);

   //Load ID Meio de Cobrança
   LoadCaptionID(TBL_CDSMCB0, ID_CDSMCB0, DE_CDSMCB0, fldIDMEIOCOB, lblIDMEIOCOB);

   //Load ID Forma de Pagamento
   LoadCaptionID(TBL_CDSFPG0, ID_CDSFPG0, DE_CDSFPG0, fldIDFORMPAG, lblIDFORMPAG);

   //Load ID Tabela de Preços
   LoadCaptionID(TBL_CDSPRE0, ID_CDSPRE0, DE_CDSPRE0, fldIDTABPRECO, lblIDTABPRECO);
end;

procedure TfrmCdsCli0.FormCreate(Sender: TObject);
begin
   inherited;
   CaptionForm       := 'Cadastro de Cliente';
   TableName         := TBL_CDSCLI0;
   FieldID           := ID_CDSCLI0;
   EditID            := fldIDCLIENTE;
   EditDesc          := fldRAZAO;
end;

procedure TfrmCdsCli0.FormShow(Sender: TObject);
begin
   inherited;
   SetaTabCliente;
end;

procedure TfrmCdsCli0.InicializaCampos;
begin
   cdsPrincipalSTATUS.AsString              := 'A';
   cdsPrincipalISENTOCEI.AsInteger          := 0;
   cdsPrincipalSUFRAMA.AsInteger            := 0;
   cdsPrincipalMEI.AsInteger                := 0;
   cdsPrincipalMEIREVEND.AsInteger          := 0;
   cdsPrincipalPERRECMSGWHATSAPP.AsInteger  := 0;
   cdsPrincipalTIPOCONTRIB.AsInteger        := 0;
end;

procedure TfrmCdsCli0.SetaTabCliente;
begin
   pgcCliente.ActivePage := tbsCliente;
end;

function TfrmCdsCli0.ValidaDados: Boolean;
var bResult : Boolean;
begin

   bResult := True;
   if cdsPrincipalRAZAO.AsString = '' then begin
      bResult := False;
      ShowMessage('Campo cliente é obrigatório');

      if fldRAZAO.CanFocus then fldRAZAO.SetFocus;
   end;

   Result := bResult;
end;
end.
