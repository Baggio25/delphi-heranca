unit untCdsCid0;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untMdlCds0, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, System.ImageList,
  Vcl.ImgList, Vcl.Imaging.pngimage, MetroTile, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, untConstantes, untCnsCid0,
  untDtmDados, untDados;

type
  TfrmCdsCid0 = class(TfrmMdlCds0)
    cdsPrincipalIDCIDADE: TIntegerField;
    cdsPrincipalCIDADE: TStringField;
    cdsPrincipalUF: TStringField;
    cdsPrincipalCODIGOIBGE: TIntegerField;
    cdsPrincipalPOPULACAO: TIntegerField;
    cdsPrincipalIDPAIS: TIntegerField;
    Label1: TLabel;
    fldIDCIDADE: TDBEdit;
    Label2: TLabel;
    fldCIDADE: TDBEdit;
    Label3: TLabel;
    fldUF: TDBEdit;
    Label4: TLabel;
    fldPOPULACAO: TDBEdit;
    Label5: TLabel;
    fldIDPAIS: TDBEdit;
    Label6: TLabel;
    fldCODIGOIBGE: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnMetroProcurarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    procedure ExibeConsulta;
    function ValidaPais : Boolean;
  public
    function ValidaDados : Boolean; override;
  end;

var
  frmCdsCid0: TfrmCdsCid0;

implementation

{$R *.dfm}

procedure TfrmCdsCid0.btnMetroProcurarClick(Sender: TObject);
begin
   inherited;
   ExibeConsulta
end;

procedure TfrmCdsCid0.ExibeConsulta;
begin
   with TfrmCnsCid0.Create(Application) do ShowModal;
end;

procedure TfrmCdsCid0.FormCreate(Sender: TObject);
begin
   inherited;
   CaptionForm := 'Cadastro de Cidade';
   TableName   := TBL_CDSCID0;
   FieldID     := ID_CDSCID0;
   EditID      := fldIDCIDADE;
   EditDesc    := fldCIDADE;
end;

procedure TfrmCdsCid0.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
   if key = VK_F5 then begin
      key := 0;
      ExibeConsulta;
   end;
end;

function TfrmCdsCid0.ValidaDados: Boolean;
var bResult : Boolean;
begin
   bResult := True;
   if cdsPrincipalCIDADE.AsString = '' then begin
      bResult := False;
      ShowMessage('Campo cidade é obrigatório');

      if fldCIDADE.CanFocus then fldCIDADE.SetFocus;
   end;

   if bResult then begin
      if cdsPrincipalUF.AsString = '' then begin
         bResult := False;
         ShowMessage('Campo UF é obrigatório');

         if fldUF.CanFocus then fldUF.SetFocus;
      end;
   end;

   if bResult then begin
      if cdsPrincipalCODIGOIBGE.AsString = '' then begin
         bResult := False;
         ShowMessage('Campo IBGE é obrigatório');

         if fldCODIGOIBGE.CanFocus then fldCODIGOIBGE.SetFocus;
      end;
   end;

   if bResult then begin  
      bResult := ValidaPais;

      if not bResult then fldIDPAIS.SetFocus;
   end;     

   Result := bResult;
end;

function TfrmCdsCid0.ValidaPais: Boolean;
var bResult : Boolean;
begin

   bResult := True;
   if cdsPrincipalIDPAIS.AsString = '' then begin
      bResult := False;
      ShowMessage('Campo País é obrigatório');
   end;
   
   if bResult then begin

      if SearchRecordDados('IDPAIS', 'TBLCDSPAI0', 'WHERE IDPAIS = ' + IntToStr(cdsPrincipalIDPAIS.AsInteger) ) = '' then begin
         bResult := False;
         ShowMessage('País não encontrado');
      end;                                  

   end;

   Result := bResult;   
end;

end.
