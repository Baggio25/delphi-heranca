unit untCdsPai0;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untMdlCds0, System.ImageList,
  Vcl.ImgList, Vcl.Imaging.pngimage, MetroTile, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, Data.FMTBcd, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, Vcl.Mask, Vcl.DBCtrls, untConstantes,
  untCnsPai0;

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
    procedure btnMetroProcurarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    procedure ExibeConsulta;
  public

  end;

var
  frmCdsPai0: TfrmCdsPai0;

implementation

{$R *.dfm}

procedure TfrmCdsPai0.btnMetroProcurarClick(Sender: TObject);
begin
   inherited;
   ExibeConsulta;
end;

procedure TfrmCdsPai0.ExibeConsulta;
begin
   with TfrmCnsPai0.Create(Application) do ShowModal;
end;

procedure TfrmCdsPai0.FormCreate(Sender: TObject);
begin
   inherited;
   CaptionForm := 'Cadastro de País';
   TableName   := TBL_CDSPAI0;
   FieldID     := ID_CDSPAI0;
   EditID      := fldIDPAIS;
   EditDesc    := fldPAIS;
end;

procedure TfrmCdsPai0.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;

   if key = VK_F5 then begin
      btnMetroProcurar.Click;
   end;
end;

end.
