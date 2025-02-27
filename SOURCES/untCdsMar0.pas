unit untCdsMar0;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untMdlCds0, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, System.ImageList,
  Vcl.ImgList, Vcl.Imaging.pngimage, MetroTile, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, untConstantes;

type
  TfrmCdsMar0 = class(TfrmMdlCds0)
    cdsPrincipalIDMARCA: TIntegerField;
    cdsPrincipalMARCA: TStringField;
    Label1: TLabel;
    fldIDMARCA: TDBEdit;
    Label2: TLabel;
    fldMARCA: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCdsMar0: TfrmCdsMar0;

implementation

{$R *.dfm}

procedure TfrmCdsMar0.FormCreate(Sender: TObject);
begin
   inherited;
   CaptionForm := 'Cadastro de Marca';
   TableName   := TBL_CDSMAR0;
   FieldID     := ID_CDSMAR0;
   EditID      := fldIDMARCA;
   EditDesc    := fldMARCA;
end;

end.
