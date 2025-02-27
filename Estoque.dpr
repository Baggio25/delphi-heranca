program Estoque;

uses
  Vcl.Forms,
  untMain in 'SOURCES\untMain.pas' {frmMain},
  untDtmDados in 'SOURCES\untDtmDados.pas' {dtmDados: TDataModule},
  untMdlCds0 in 'SOURCES\untMdlCds0.pas' {frmMdlCds0},
  untCdsPai0 in 'SOURCES\untCdsPai0.pas' {frmCdsPai0},
  untCdsCid0 in 'SOURCES\untCdsCid0.pas' {frmCdsCid0},
  untCdsUsr0 in 'SOURCES\untCdsUsr0.pas' {frmCdsUsr0},
  untCdsVen0 in 'SOURCES\untCdsVen0.pas' {frmCdsVen0},
  untCdsMar0 in 'SOURCES\untCdsMar0.pas' {frmCdsMar0},
  untCdsSec0 in 'SOURCES\untCdsSec0.pas' {frmCdsSec0},
  untCdsIte0 in 'SOURCES\untCdsIte0.pas' {frmCdsIte0},
  untConstantes in 'SOURCES\untConstantes.pas',
  untCnsCid0 in 'SOURCES\untCnsCid0.pas' {frmCnsCid0},
  untCnsPai0 in 'SOURCES\untCnsPai0.pas' {frmCnsPai0};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdtmDados, dtmDados);
  Application.Run;
end.
