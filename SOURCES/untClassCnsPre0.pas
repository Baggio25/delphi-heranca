unit untClassCnsPre0;

interface

uses Classes, untClassConsulta, UntTipos;

type tCnsPre0 = class ( tConsulta )

   private
   public
      constructor Create( Aowner : tComponent ); Override;
      destructor Destroy; override;

end;

implementation

{ tCnsPre0 }

constructor tCnsPre0.Create(Aowner: tComponent);
var Campo : tCampos;
begin
   inherited;
   Titulo         := 'Consulta de Tabelas de Preço';

   Campo.CampoID  := 'IDTABPRECO';
   Campo.CampoLeg := 'Código';
   Campo.Width    := 70;
   Campo.Tipo     := tpInteiro;
   addFieldFiltro(Campo);
   addFieldOrdem(Campo);
   addFieldColunas(Campo);

   Campo.CampoID  := 'TABPRECO';
   Campo.CampoLeg := 'Tabela de Preço';
   Campo.Width    := 300;
   Campo.Tipo     := tpString;
   addFieldFiltro(Campo);
   addFieldOrdem(Campo);
   addFieldColunas(Campo);

   ItemIndexFiltro := 1;
   ItemIndexOrdem  := 0;

   SqlCommadText   := 'SELECT IDTABPRECO, TABPRECO FROM TBLCDSPre0';

end;

destructor tCnsPre0.Destroy;
begin

  inherited;
end;

end.
