unit untMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList, Vcl.Menus,
  Vcl.ComCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.OleCtrls, SHDocVw,
  Vcl.ToolWin, System.ImageList, Vcl.ImgList, untDtmDados, untCdsPai0,
  untCdsCid0, untCdsUsr0, untCdsVen0, untCdsMar0, untCdsSec0, untCdsIte0,
  untCdsMcb0, untCdsFpg0, untCdsPre0, untCdsCli0, untMvmVenda;

type
  TfrmMain = class(TForm)
    imgBotes: TImageList;
    Panel1: TPanel;
    tbAtalhos: TToolBar;
    tbtnCadCli: TToolButton;
    tbtnCadCliRes: TToolButton;
    tbtnCnsSPC: TToolButton;
    tbtnCadIte: TToolButton;
    tbtnVenOrcBal: TToolButton;
    tbtnVenRpd: TToolButton;
    tbtnOrdServ: TToolButton;
    tbtnCadAgd: TToolButton;
    tbtnCtaRcb: TToolButton;
    tbtnCtaPag: TToolButton;
    tbtnMvtoFin: TToolButton;
    tbtnChqRec: TToolButton;
    tbtnChqPag: TToolButton;
    tbtnAltPre: TToolButton;
    tbtnAgenda: TToolButton;
    tbtnCtrlRel: TToolButton;
    tbtnLibSol: TToolButton;
    tbtnLibUsr: TToolButton;
    tbtnSairSist: TToolButton;
    imgFundo: TImage;
    stsRodape: TStatusBar;
    mnuPrincipal: TMainMenu;
    mnuiAtendimento: TMenuItem;
    mnuiCadastros: TMenuItem;
    mnuiPais: TMenuItem;
    N1: TMenuItem;
    mnuiSair: TMenuItem;
    mnuiCidade: TMenuItem;
    mnuiUsuario: TMenuItem;
    Vendedores1: TMenuItem;
    Marcas1: TMenuItem;
    Sees1: TMenuItem;
    Itens1: TMenuItem;
    MeiosdeCobrana1: TMenuItem;
    FormasdePagamento1: TMenuItem;
    abeladePreo1: TMenuItem;
    CadastrodeClientes1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure ConectaDabase;
    procedure DesconectaDatabase;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbtnSairSistClick(Sender: TObject);
    procedure mnuiPaisClick(Sender: TObject);
    procedure mnuiCidadeClick(Sender: TObject);
    procedure mnuiUsuarioClick(Sender: TObject);
    procedure Vendedores1Click(Sender: TObject);
    procedure Marcas1Click(Sender: TObject);
    procedure Sees1Click(Sender: TObject);
    procedure Itens1Click(Sender: TObject);
    procedure MeiosdeCobrana1Click(Sender: TObject);
    procedure FormasdePagamento1Click(Sender: TObject);
    procedure abeladePreo1Click(Sender: TObject);
    procedure CadastrodeClientes1Click(Sender: TObject);
    procedure tbtnCadCliClick(Sender: TObject);
    procedure tbtnVenOrcBalClick(Sender: TObject);
  private
    procedure AbreCadastroCliente;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.mnuiCidadeClick(Sender: TObject);
begin
   with TfrmCdsCid0.Create(Application) do Show;
end;

procedure TfrmMain.abeladePreo1Click(Sender: TObject);
begin
   with TfrmCdsPre0.Create(Application) do Show;
end;

procedure TfrmMain.AbreCadastroCliente;
begin
   with TfrmCdsCli0.Create(Application) do Show;
end;

procedure TfrmMain.CadastrodeClientes1Click(Sender: TObject);
begin
   AbreCadastroCliente;
end;

procedure TfrmMain.ConectaDabase;
begin
   dtmDados.cnxEstoque.Connected := True;
end;

procedure TfrmMain.DesconectaDatabase;
begin
   dtmDados.cnxEstoque.Connected := False;
end;

procedure TfrmMain.FormasdePagamento1Click(Sender: TObject);
begin
   with TfrmCdsFpg0.Create(Application) do Show;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   DesconectaDatabase;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
   ConectaDabase;
end;

procedure TfrmMain.Itens1Click(Sender: TObject);
begin
   with TfrmCdsIte0.Create(Application) do Show;
end;

procedure TfrmMain.Marcas1Click(Sender: TObject);
begin
   with TfrmCdsMar0.Create(Application) do Show;
end;

procedure TfrmMain.MeiosdeCobrana1Click(Sender: TObject);
begin
   with TfrmCdsMcb0.Create(Application) do Show;
end;

procedure TfrmMain.mnuiPaisClick(Sender: TObject);
begin
   with TfrmCdsPai0.Create(Application) do Show;
end;

procedure TfrmMain.mnuiUsuarioClick(Sender: TObject);
begin
   with TfrmCdsUsr0.Create(Application) do Show;
end;

procedure TfrmMain.Sees1Click(Sender: TObject);
begin
   with TfrmCdsSec0.Create(Application) do Show;
end;

procedure TfrmMain.tbtnCadCliClick(Sender: TObject);
begin
   AbreCadastroCliente;
end;

procedure TfrmMain.tbtnSairSistClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmMain.tbtnVenOrcBalClick(Sender: TObject);
begin
   with TfrmMvmVenda.Create(Application) do Show;
end;

procedure TfrmMain.Vendedores1Click(Sender: TObject);
begin
   with TfrmCdsVen0.Create(Application) do Show;
end;

end.
