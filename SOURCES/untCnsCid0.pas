unit untCnsCid0;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls;

type
  TfrmCnsCid0 = class(TForm)
    pnlRodape: TPanel;
    pnlLeft: TPanel;
    pnlFundo: TPanel;
    Panel1: TPanel;
    dbgCid: TDBGrid;
    btnPesquisar: TButton;
    edtPesquisa: TEdit;
    Label1: TLabel;
    cmbCampoFiltrar: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    cmbTipoPesquisa: TComboBox;
    Label4: TLabel;
    cmbCampoOrdem: TComboBox;
    Label5: TLabel;
    rdgOrdem: TRadioGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCnsCid0: TfrmCnsCid0;

implementation

{$R *.dfm}

end.
