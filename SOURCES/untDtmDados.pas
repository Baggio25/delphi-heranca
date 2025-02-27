unit untDtmDados;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.DB, Data.SqlExpr;

type
  TdtmDados = class(TDataModule)
    cnxEstoque: TSQLConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmDados: TdtmDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
