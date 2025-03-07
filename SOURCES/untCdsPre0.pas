unit untCdsPre0;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untMdlCds0, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, System.ImageList,
  Vcl.ImgList, Vcl.Imaging.pngimage, MetroTile, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, untConstantes,
  untClassCnsPre0;

type
  TfrmCdsPre0 = class(TfrmMdlCds0)
    cdsPrincipalIDTABPRECO: TIntegerField;
    cdsPrincipalTABPRECO: TStringField;
    Label1: TLabel;
    fldIDTABPRECO: TDBEdit;
    Label2: TLabel;
    fldTABPRECO: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private

  public
    function ValidaDados : Boolean; override;
  end;

var
  frmCdsPre0: TfrmCdsPre0;

implementation

{$R *.dfm}

procedure TfrmCdsPre0.FormCreate(Sender: TObject);
begin
   inherited;
   CaptionForm    := 'Cadastro de Tabela de Preço';
   TableName      := TBL_CDSPRE0;
   FieldID        := ID_CDSPRE0;
   EditID         := fldIDTABPRECO;
   EditDesc       := fldTABPRECO;
   Generator      := GEN_TBLCDSPRE0;
   ClasseConsulta := tCnsPre0.Create(Self);
end;

procedure TfrmCdsPre0.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
   if key = VK_F5 then begin
      btnMetroProcurar.Click;
   end;
end;

function TfrmCdsPre0.ValidaDados: Boolean;
var bResult : Boolean;
begin

   bResult := True;
   if cdsPrincipalTABPRECO.AsString = '' then begin
      bResult := False;
      ShowMessage('Campo tabela de preço é obrigatório');

      if fldTABPRECO.CanFocus then fldTABPRECO.SetFocus;
   end;

   Result := bResult;
end;

end.
