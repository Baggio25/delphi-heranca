unit untClassCnsFpg0;

interface

uses Classes, untClassConsulta, UntTipos;

type tCnsFpg0 = class ( tConsulta )

   private
   public
      constructor Create( Aowner : tComponent ); Override;
      destructor Destroy; override;

end;

implementation

{ tCnsFpg0 }

constructor tCnsFpg0.Create(Aowner: tComponent);
var Campo : tCampos;
begin
   inherited;
   Titulo         := 'Consulta de Formas de Pagamento';

   Campo.CampoID  := 'IDFORMPAG';
   Campo.CampoLeg := 'Código';
   Campo.Width    := 70;
   Campo.Tipo     := tpInteiro;
   addFieldFiltro(Campo);
   addFieldOrdem(Campo);
   addFieldColunas(Campo);

   Campo.CampoID  := 'FORMPAG';
   Campo.CampoLeg := 'Forma de Pgto';
   Campo.Width    := 300;
   Campo.Tipo     := tpString;
   addFieldFiltro(Campo);
   addFieldOrdem(Campo);
   addFieldColunas(Campo);

   ItemIndexFiltro := 1;
   ItemIndexOrdem  := 0;

   SqlCommadText   := 'SELECT IDFORMPAG, FORMPAG FROM TBLCDSFPG0';
end;

destructor tCnsFpg0.Destroy;
begin

  inherited;
end;

end.
