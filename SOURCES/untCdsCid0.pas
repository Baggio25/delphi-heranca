unit untCdsCid0;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untMdlCds0, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, System.ImageList,
  Vcl.ImgList, Vcl.Imaging.pngimage, MetroTile, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, untConstantes;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCdsCid0: TfrmCdsCid0;

implementation

{$R *.dfm}

procedure TfrmCdsCid0.FormCreate(Sender: TObject);
begin
   inherited;
   CaptionForm := 'Cadastro de Cidade';
   TableName   := TBL_CDSCID0;
   FieldID     := ID_CDSCID0;
   EditID      := fldIDCIDADE;
   EditDesc    := fldCIDADE;
end;

end.
