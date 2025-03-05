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
  untCnsPai0 in 'SOURCES\untCnsPai0.pas' {frmCnsPai0},
  untCnsUsr0 in 'SOURCES\untCnsUsr0.pas' {frmCnsUsr0},
  untDados in 'SOURCES\untDados.pas',
  untCdsMcb0 in 'SOURCES\untCdsMcb0.pas' {frmCdsMcb0},
  untCdsFpg0 in 'SOURCES\untCdsFpg0.pas' {frmCdsFpg0},
  untCdsPre0 in 'SOURCES\untCdsPre0.pas' {frmCdsPre0},
  untCdsCli0 in 'SOURCES\untCdsCli0.pas' {frmCdsCli0},
  untCnsPre0 in 'SOURCES\untCnsPre0.pas' {frmCnsPre0},
  untCnsMcb0 in 'SOURCES\untCnsMcb0.pas' {frmCnsMcb0},
  untCnsFpg0 in 'SOURCES\untCnsFpg0.pas' {frmCnsFpg0},
  untCnsCli0 in 'SOURCES\untCnsCli0.pas' {frmCnsCli0};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdtmDados, dtmDados);
  Application.Run;
end.
