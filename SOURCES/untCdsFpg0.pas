unit untCdsFpg0;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untMdlCds0, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, System.ImageList,
  Vcl.ImgList, Vcl.Imaging.pngimage, MetroTile, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, untConstantes,
  untClassCnsFpg0;

type
  TfrmCdsFpg0 = class(TfrmMdlCds0)
    cdsPrincipalIDFORMPAG: TIntegerField;
    cdsPrincipalFORMPAG: TStringField;
    Label1: TLabel;
    fldIDFORMAPAG: TDBEdit;
    Label2: TLabel;
    fldFORMPAG: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private

  public
    function ValidaDados : Boolean; override;
  end;

var
  frmCdsFpg0: TfrmCdsFpg0;

implementation

{$R *.dfm}

{ TfrmCdsFpg0 }

procedure TfrmCdsFpg0.FormCreate(Sender: TObject);
begin
  inherited;
   CaptionForm    := 'Cadastro de Forma de Pagamento';
   TableName      := TBL_CDSFPG0;
   FieldID        := ID_CDSFPG0;
   EditID         := fldIDFORMAPAG;
   EditDesc       := fldFORMPAG;
   Generator      := GEN_TBLCDSFPG0;
   ClasseConsulta := tCnsFpg0.Create(Self);
end;

procedure TfrmCdsFpg0.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;

   if key = VK_F5 then begin
      btnMetroProcurar.Click;
   end;
end;

function TfrmCdsFpg0.ValidaDados: Boolean;
var bResult : Boolean;
begin

   bResult := True;
   if cdsPrincipalFORMPAG.AsString = '' then begin
      bResult := False;
      ShowMessage('Campo forma de pagamento � obrigat�rio');

      if fldFORMPAG.CanFocus then fldFORMPAG.SetFocus;
   end;

   Result := bResult;
end;


end.
