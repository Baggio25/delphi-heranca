unit untCdsIte0;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untMdlCds0, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, System.ImageList,
  Vcl.ImgList, Vcl.Imaging.pngimage, MetroTile, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, untConstantes;

type
  TfrmCdsIte0 = class(TfrmMdlCds0)
    cdsPrincipalIDITEM: TIntegerField;
    cdsPrincipalNOMEPRO: TStringField;
    cdsPrincipalCODBARRA: TStringField;
    cdsPrincipalIDMARCA: TIntegerField;
    cdsPrincipalIDSECAO: TIntegerField;
    cdsPrincipalPRECO: TFMTBCDField;
    cdsPrincipalSTATUS: TStringField;
    Label1: TLabel;
    fldIDITEM: TDBEdit;
    Label2: TLabel;
    fldNOMEPRO: TDBEdit;
    Label3: TLabel;
    fldCODBARRA: TDBEdit;
    Label4: TLabel;
    fldIDMARCA: TDBEdit;
    Label5: TLabel;
    fldIDSECAO: TDBEdit;
    Label6: TLabel;
    fldPRECO: TDBEdit;
    chbStatus: TDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure btnMetroNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCdsIte0: TfrmCdsIte0;

implementation

{$R *.dfm}

procedure TfrmCdsIte0.btnMetroNovoClick(Sender: TObject);
begin
   inherited;
   cdsPrincipalSTATUS.AsString := 'A';
end;

procedure TfrmCdsIte0.FormCreate(Sender: TObject);
begin
   inherited;
   CaptionForm := 'Cadastro de Item';
   TableName   := TBL_CDSITE0;
   FieldID     := ID_CDSITE0;
   EditID      := fldIDITEM;
   EditDesc    := fldNOMEPRO;
end;

end.
