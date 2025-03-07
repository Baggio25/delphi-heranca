unit untMvmVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, System.ImageList,
  Vcl.ImgList, JvExMask, JvToolEdit, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmMvmVenda = class(TForm)
    pnlCabecalho: TPanel;
    pnlRodape: TPanel;
    dbgItems: TDBGrid;
    imgDefault: TImageList;
    imgHot: TImageList;
    imgDisable: TImageList;
    pnlTop: TPanel;
    ToolBar1: TToolBar;
    btnNovo: TToolButton;
    btnEditar: TToolButton;
    btnExcluir: TToolButton;
    btnSalvar: TToolButton;
    btnCancelar: TToolButton;
    btnSair: TToolButton;
    gpbNota: TGroupBox;
    fldSerie: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    fldNota: TEdit;
    gpbCliente: TGroupBox;
    edtCliente: TEdit;
    btnIDCliente: TSpeedButton;
    lblIDCliente: TEdit;
    Label3: TLabel;
    edtDTEMISSAO: TJvDateEdit;
    lbl: TLabel;
    fldVLRTOTAL: TEdit;
    Label4: TLabel;
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    procedure ConfiguraFormulario;
  public
    { Public declarations }
  end;

var
  frmMvmVenda: TfrmMvmVenda;

implementation

{$R *.dfm}

procedure TfrmMvmVenda.btnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmMvmVenda.ConfiguraFormulario;
begin
//   Configura groupbox e paineis
   gpbNota.Enabled      := False;
   gpbCliente.Enabled   := False;
   dbgItems.Enabled     := False;
   pnlRodape.Enabled    := False;

//   Configura barra de botoes
   btnNovo.Enabled      := True;
   btnEditar.Enabled    := True;
   btnExcluir.Enabled   := True;

   btnSalvar.Enabled    := False;
   btnCancelar.Enabled  := False;

   btnSair.Enabled      := True;
end;

procedure TfrmMvmVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmMvmVenda.FormShow(Sender: TObject);
begin
   ConfiguraFormulario;
end;

end.
