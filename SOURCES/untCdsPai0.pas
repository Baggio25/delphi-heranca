unit untCdsPai0;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untMdlCds0, System.ImageList,
  Vcl.ImgList, Vcl.Imaging.pngimage, MetroTile, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, Data.FMTBcd, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, Vcl.Mask, Vcl.DBCtrls, untConstantes;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCdsPai0: TfrmCdsPai0;

implementation

{$R *.dfm}

procedure TfrmCdsPai0.FormCreate(Sender: TObject);
begin
   inherited;
   CaptionForm := 'Cadastro de Pa�s';
   TableName   := TBL_CDSPAI0;
   FieldID     := ID_CDSPAI0;
   EditID      := fldIDPAIS;
   EditDesc    := fldPAIS;
end;

end.
