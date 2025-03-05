unit untClassCnsCid0;

interface

uses Classes, untClassConsulta, UntTipos;

type tCnsCid0 = class ( tConsulta )

   private

   public

      constructor Create( Aowner : tComponent ); Override;
      destructor Destroy; override;

end;

implementation

{ tCnsCid0 }

constructor tCnsCid0.Create(Aowner: tComponent);
var Campo : tCampos;
begin
   inherited;
   Titulo         := 'Consulta de Cidades';

   Campo.CampoID  := 'IDCIDADE';
   Campo.CampoLeg := 'Código';
   addFieldFiltro(Campo);
   addFieldOrdem(Campo);
   addFieldColunas(Campo);

   Campo.CampoID  := 'CIDADE';
   Campo.CampoLeg := 'Cidade';
   addFieldFiltro(Campo);
   addFieldOrdem(Campo);
   addFieldColunas(Campo);

   Campo.CampoID  := 'UF';
   Campo.CampoLeg := 'Estado';
   addFieldColunas(Campo);

   ItemIndexFiltro := 1;
   ItemIndexOrdem  := 0;

   SqlCommadText   := 'SELECT IDCIDADE, CIDADE, UF FROM TBLCDSCID0';
end;

destructor tCnsCid0.Destroy;
begin

  inherited;
end;

end.
