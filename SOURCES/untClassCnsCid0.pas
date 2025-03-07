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
   Campo.Width    := 70;
   Campo.Tipo     := tpInteiro;
   addFieldFiltro(Campo);
   addFieldOrdem(Campo);
   addFieldColunas(Campo);

   Campo.CampoID  := 'CIDADE';
   Campo.CampoLeg := 'Cidade';
   Campo.Width    := 330;
   Campo.Tipo     := tpString;
   addFieldFiltro(Campo);
   addFieldOrdem(Campo);
   addFieldColunas(Campo);

   Campo.CampoID  := 'UF';
   Campo.CampoLeg := 'Estado';
   Campo.Width    := 60;
   Campo.Tipo     := tpString;
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
