unit untCdsSec0;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untMdlCds0, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, System.ImageList,
  Vcl.ImgList, Vcl.Imaging.pngimage, MetroTile, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, untConstantes;

type
  TfrmCdsSec0 = class(TfrmMdlCds0)
    cdsPrincipalIDSECAO: TIntegerField;
    cdsPrincipalSECAO: TStringField;
    Label1: TLabel;
    fldIDSECAO: TDBEdit;
    Label2: TLabel;
    fldSECAO: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    function ValidaDados : Boolean; override;
  end;

var
  frmCdsSec0: TfrmCdsSec0;

implementation

{$R *.dfm}

procedure TfrmCdsSec0.FormCreate(Sender: TObject);
begin
   inherited;
   CaptionForm := 'Cadastro de Seção';
   TableName   := TBL_CDSSEC0;
   FieldID     := ID_CDSSEC0;
   EditID      := fldIDSECAO;
   EditDesc    := fldSECAO;
end;

function TfrmCdsSec0.ValidaDados: Boolean;
var bResult : Boolean;
begin

   bResult := True;
   if cdsPrincipalSECAO.AsString = '' then begin
      bResult := False;
      ShowMessage('Campo seção é obrigatório');

      if fldSECAO.CanFocus then fldSECAO.SetFocus;
   end;

   Result := bResult;
end;

end.
