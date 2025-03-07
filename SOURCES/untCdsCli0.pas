unit untCdsCli0;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untMdlCds0, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, System.ImageList,
  Vcl.ImgList, Vcl.Imaging.pngimage, MetroTile, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, untConstantes, Vcl.Buttons,
  untDados, Vcl.Imaging.jpeg, untClassCnsCli0, untClassCnsCid0, untClassCnsMcb0,
  untClassCnsFpg0, untClassCnsPre0;

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
    btnIDFORMPAG: TSpeedButton;
    lblIDFORMPAG: TEdit;
    Label25: TLabel;
    fldIDTABPRECO: TDBEdit;
    btnIDTABPRECO: TSpeedButton;
    lblIDTABPRECO: TEdit;
    Label26: TLabel;
    rdgTipo: TDBRadioGroup;
    imgCli: TImage;
    procedure FormCreate(Sender: TObject);
    procedure btnMetroNovoClick(Sender: TObject);
    procedure fldIDCIDADEChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnMetroSalvarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnIDCIDADEClick(Sender: TObject);
    procedure btnIDMEIOCOBClick(Sender: TObject);
    procedure btnIDFORMPAGClick(Sender: TObject);
    procedure btnIDTABPRECOClick(Sender: TObject);
  private
    procedure SetaTabCliente;
    procedure SetaTabInfCliente;
    procedure InicializaCampos;
    function ValidaCidade       : Boolean;
    function ValidaMeioCobranca : Boolean;
    function ValidaFormaPagto   : Boolean;
    function ValidaTabPreco     : Boolean;
  public
     function ValidaDados : Boolean; override;
  end;

var
  frmCdsCli0: TfrmCdsCli0;

implementation

{$R *.dfm}

procedure TfrmCdsCli0.btnIDCIDADEClick(Sender: TObject);
begin
   inherited;
   SearchId( tCnsCid0.Create(Self), fldIDCIDADE, ID_CDSCID0 );
end;

procedure TfrmCdsCli0.btnIDFORMPAGClick(Sender: TObject);
begin
   inherited;
   SearchId( tCnsFpg0.Create(Self), fldIDFORMPAG, ID_CDSFPG0 );
end;

procedure TfrmCdsCli0.btnIDMEIOCOBClick(Sender: TObject);
begin
   inherited;
   SearchId( tCnsMcb0.Create(Self), fldIDMEIOCOB, ID_CDSMCB0 );
end;

procedure TfrmCdsCli0.btnIDTABPRECOClick(Sender: TObject);
begin
   inherited;
   SearchId( tCnsPre0.Create(Self), fldIDTABPRECO, ID_CDSPRE0 );
end;

procedure TfrmCdsCli0.btnMetroNovoClick(Sender: TObject);
begin
   inherited;
   InicializaCampos;
   fldCNPJ.SetFocus;
end;

procedure TfrmCdsCli0.btnMetroSalvarClick(Sender: TObject);
begin
   SetaTabCliente;
   inherited;
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
   Generator         := GEN_TBLCDSCLI0;
   ClasseConsulta    := tCnsCli0.Create(Self);
end;

procedure TfrmCdsCli0.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;

   if key = VK_F5 then begin
      btnMetroProcurar.Click;
   end;
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

procedure TfrmCdsCli0.SetaTabInfCliente;
begin
   pgcCliente.ActivePage := tbsInfoCliente;
end;

function TfrmCdsCli0.ValidaCidade: Boolean;
var bResult : Boolean;
begin
   bResult := True;
   if (SearchRecordDados('IDCIDADE', 'TBLCDSCID0', 'WHERE IDCIDADE = ' + IntToStr(cdsPrincipalIDCIDADE.AsInteger) ) = '') and
      (cdsPrincipalIDCIDADE.AsInteger <> 0) then begin

      bResult := False;
      ShowMessage('Cidade não encontrada');
   end;

   Result := bResult;
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

   if bResult then begin
      bResult := ValidaCidade;

      if not bResult then fldIDCIDADE.SetFocus;
   end;

   if bResult then begin
      if cdsPrincipalENDERECO.AsString = '' then begin
         bResult := False;
         ShowMessage('Campo endereço é obrigatório');

         if fldENDERECO.CanFocus then fldENDERECO.SetFocus;
      end;
   end;

   if bResult then begin
      bResult := ValidaMeioCobranca;

      if not bResult then begin
         SetaTabInfCliente;
         fldIDMEIOCOB.SetFocus;
      end;
   end;

   if bResult then begin
      bResult := ValidaFormaPagto;

      if not bResult then begin
         SetaTabInfCliente;
         fldIDFORMPAG.SetFocus;
      end;
   end;

   if bResult then begin
      bResult := ValidaTabPreco;

      if not bResult then begin
         SetaTabInfCliente;
         fldIDTABPRECO.SetFocus;
      end;
   end;

   Result := bResult;
end;

function TfrmCdsCli0.ValidaFormaPagto: Boolean;
var bResult : Boolean;
begin
   bResult := True;
   if (SearchRecordDados('IDFORMPAG', 'TBLCDSFPG0', 'WHERE IDFORMPAG = ' + IntToStr(cdsPrincipalIDFORMPAG.AsInteger) ) = '') and
      (cdsPrincipalIDFORMPAG.AsInteger <> 0) then begin

      bResult := False;
      ShowMessage('Forma de Pagamento não encontrada');
   end;

   Result := bResult;
end;


function TfrmCdsCli0.ValidaMeioCobranca: Boolean;
var bResult : Boolean;
begin
   bResult := True;
   if (SearchRecordDados('IDMEIOCOB', 'TBLCDSMCB0', 'WHERE IDMEIOCOB = ' + IntToStr(cdsPrincipalIDMEIOCOB.AsInteger) ) = '') and
      (cdsPrincipalIDMEIOCOB.AsInteger <> 0) then begin

      bResult := False;
      ShowMessage('Meio de Cobrança não encontrado');
   end;

   Result := bResult;
end;

function TfrmCdsCli0.ValidaTabPreco: Boolean;
var bResult : Boolean;
begin
   bResult := True;
   if (SearchRecordDados('IDTABPRECO', 'TBLCDSPRE0', 'WHERE IDTABPRECO = ' + IntToStr(cdsPrincipalIDTABPRECO.AsInteger) ) = '') and
      (cdsPrincipalIDTABPRECO.AsInteger <> 0) then begin

      bResult := False;
      ShowMessage('Meio de Cobrança não encontrado');
   end;

   Result := bResult;
end;

end.
