unit untClassConsulta;

interface

uses Classes, untConsulta, SysUtils, UntTipos;

type

   tConsulta = class( tComponent )

      private
         FTitulo    : String;

         LstFiltro  : array of tCampos;
         LstOrdem   : array of tCampos;
         LstColunas : array of tCampos;
         FItemIndexOrdem: Integer;
         FItemIndexFiltro: Integer;
         FSqlCommadText: String;

         procedure ZeraListas;
         procedure SetTitulo(const Value: String);
         procedure SetItemIndexFiltro(const Value: Integer);
         procedure SetItemIndexOrdem(const Value: Integer);
         procedure SetSqlCommadText(const Value: String);

      public
         property SqlCommadText       : String read FSqlCommadText write SetSqlCommadText;
         property Titulo              : String read FTitulo write SetTitulo;
         property ItemIndexFiltro     : Integer read FItemIndexFiltro write SetItemIndexFiltro;
         property ItemIndexOrdem      : Integer read FItemIndexOrdem write SetItemIndexOrdem;
         procedure addFieldFiltro( Campo: tCampos );
         procedure addFieldOrdem( Campo: tCampos );
         procedure addFieldColunas( Campo: tCampos );
         function Consultar : Integer;

         constructor Create( Aowner : tComponent ); Override;
         destructor Destroy; override;
   end;

implementation

{ tConsulta }

procedure tConsulta.addFieldColunas(Campo: tCampos);
begin
   SetLength(LstColunas, Length(LstColunas) + 1);
   LstColunas[Length(LstColunas) - 1] := Campo;
end;

procedure tConsulta.addFieldFiltro(Campo: tCampos);
begin
   SetLength(LstFiltro, Length(LstFiltro) + 1);
   LstFiltro[Length(LstFiltro) - 1] := Campo;
end;

procedure tConsulta.addFieldOrdem(Campo: tCampos);
begin
   SetLength(LstOrdem, Length(LstOrdem) + 1);
   LstOrdem[Length(LstOrdem) - 1] := Campo;
end;

function tConsulta.Consultar: Integer;
var Frm : TfrmConsulta;
    I   : Integer;
begin
   Frm             := TfrmConsulta.Create(Self);
   Frm.CaptionForm := Titulo;

   SetLength(Frm.ListaFiltro , Length(LstFiltro));
   SetLength(Frm.ListaOrdem  , Length(LstOrdem));
   SetLength(Frm.ListaColunas, Length(LstColunas));

   for I := Low(Frm.ListaFiltro) to High(Frm.ListaFiltro) do Frm.ListaFiltro[i] := LstFiltro[i];
   for I := Low(Frm.ListaOrdem) to High(Frm.ListaOrdem) do Frm.ListaOrdem[i] := LstOrdem[i];
   for I := Low(Frm.ListaColunas) to High(Frm.ListaColunas) do Frm.ListaColunas[i] := LstColunas[i];

   Frm.ItemIndexFiltro := ItemIndexFiltro;
   Frm.ItemIndexOrdem  := ItemIndexOrdem;
   Frm.SqlCommandText  := SqlCommadText;
   Frm.ShowModal;

   FreeAndNil( Frm );
end;

constructor tConsulta.Create(Aowner: tComponent);
begin
   inherited;
   ZeraListas;

   FItemIndexFiltro := -1;
   FItemIndexOrdem  := -1;
end;

destructor tConsulta.Destroy;
begin

  inherited;
end;

procedure tConsulta.SetItemIndexFiltro(const Value: Integer);
begin
  FItemIndexFiltro := Value;
end;

procedure tConsulta.SetItemIndexOrdem(const Value: Integer);
begin
  FItemIndexOrdem := Value;
end;

procedure tConsulta.SetSqlCommadText(const Value: String);
begin
  FSqlCommadText := Value;
end;

procedure tConsulta.SetTitulo(const Value: String);
begin
  FTitulo := Value;
end;

procedure tConsulta.ZeraListas;
begin
   SetLength(LstFiltro, 0);
   SetLength(LstOrdem, 0);
   SetLength(LstColunas, 0);
end;

end.
