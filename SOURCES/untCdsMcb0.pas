unit untCdsMcb0;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untMdlCds0, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, System.ImageList,
  Vcl.ImgList, Vcl.Imaging.pngimage, MetroTile, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, untConstantes;

type
  TfrmCdsMcb0 = class(TfrmMdlCds0)
    cdsPrincipalIDMEIOCOB: TIntegerField;
    cdsPrincipalMEIOCOB: TStringField;
    Label1: TLabel;
    fldIDMEIOCOB: TDBEdit;
    Label2: TLabel;
    fldMEIOCOB: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    function ValidaDados : Boolean; override;
  end;

var
  frmCdsMcb0: TfrmCdsMcb0;

implementation

{$R *.dfm}

procedure TfrmCdsMcb0.FormCreate(Sender: TObject);
begin
   inherited;
   CaptionForm := 'Cadastro de Meio de Cobrança';
   TableName   := TBL_CDSMCB0;
   FieldID     := ID_CDSMCB0;
   EditID      := fldIDMEIOCOB;
   EditDesc    := fldMEIOCOB;
end;

function TfrmCdsMcb0.ValidaDados: Boolean;
var bResult : Boolean;
begin

   bResult := True;
   if cdsPrincipalMEIOCOB.AsString = '' then begin
      bResult := False;
      ShowMessage('Campo meio de cobrança é obrigatório');

      if fldMEIOCOB.CanFocus then fldMEIOCOB.SetFocus;      
   end;

   Result := bResult;
end;

end.
