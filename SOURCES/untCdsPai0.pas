unit untCdsPai0;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untMdlCds0, System.ImageList,
  Vcl.ImgList, Vcl.Imaging.pngimage, MetroTile, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, Data.FMTBcd, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, Vcl.Mask, Vcl.DBCtrls, untConstantes, untClassCnsPai0;

type
  TfrmCdsPai0 = class(TfrmMdlCds0)
    cdsPrincipalIDPAIS: TIntegerField;
    cdsPrincipalPAIS: TStringField;
    cdsPrincipalSIGLA: TStringField;
    Label1: TLabel;
    fldIDPAIS: TDBEdit;
    Label2: TLabel;
    fldPAIS: TDBEdit;
    Label3: TLabel;
    fldSIGLA: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
  public
    function ValidaDados : Boolean; override;
  end;

var
  frmCdsPai0: TfrmCdsPai0;

implementation

{$R *.dfm}

procedure TfrmCdsPai0.FormCreate(Sender: TObject);
begin
   inherited;
   CaptionForm    := 'Cadastro de País';
   TableName      := TBL_CDSPAI0;
   FieldID        := ID_CDSPAI0;
   EditID         := fldIDPAIS;
   EditDesc       := fldPAIS;
   Generator      := GEN_TBLCDSPAI0;
   ClasseConsulta := tCnsPai0.Create(Self);
end;

procedure TfrmCdsPai0.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;

   if key = VK_F5 then begin
      btnMetroProcurar.Click;
   end;
end;

function TfrmCdsPai0.ValidaDados: Boolean;
var bResult : Boolean;
begin

   bResult := True;
   if cdsPrincipalPAIS.AsString = '' then begin
      bResult := False;
      ShowMessage('Campo País é obrigatório');

      if fldPAIS.CanFocus then fldPAIS.SetFocus;
   end;

   if bResult then begin
      if cdsPrincipalSIGLA.AsString = '' then begin
         bResult := False;
         ShowMessage('Campo Sigla é obrigatório');

         if fldSIGLA.CanFocus then fldSIGLA.SetFocus;
      end;
   end;

   Result := bResult;
end;

end.
