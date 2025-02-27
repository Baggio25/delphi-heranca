unit untCdsVen0;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untMdlCds0, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, System.ImageList,
  Vcl.ImgList, Vcl.Imaging.pngimage, MetroTile, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, untConstantes;

type
  TfrmCdsVen0 = class(TfrmMdlCds0)
    cdsPrincipalIDVENDEDOR: TIntegerField;
    cdsPrincipalVENDEDOR: TStringField;
    cdsPrincipalIDCIDADE: TIntegerField;
    cdsPrincipalCOMISSAOVISTA: TFMTBCDField;
    cdsPrincipalCOMISSAOPRAZO: TFMTBCDField;
    cdsPrincipalSTATUS: TStringField;
    Label1: TLabel;
    fldIDVENDEDOR: TDBEdit;
    Label2: TLabel;
    fldVENDEDOR: TDBEdit;
    Label3: TLabel;
    fldIDCIDADE: TDBEdit;
    Label4: TLabel;
    fldCOMISSAOVISTA: TDBEdit;
    Label5: TLabel;
    fldCOMISSAOPRAZO: TDBEdit;
    chbStatus: TDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure btnMetroNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCdsVen0: TfrmCdsVen0;

implementation

{$R *.dfm}

procedure TfrmCdsVen0.btnMetroNovoClick(Sender: TObject);
begin
   inherited;
   cdsPrincipalSTATUS.AsString := 'A';
end;

procedure TfrmCdsVen0.FormCreate(Sender: TObject);
begin
   inherited;
   CaptionForm := 'Cadastro de Vendedor';
   TableName   := TBL_CDSVEN0;
   FieldID     := ID_CDSVEN0;
   EditID      := fldIDVENDEDOR;
   EditDesc    := fldVENDEDOR;
end;

end.
