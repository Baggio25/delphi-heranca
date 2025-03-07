unit untClassCnsPai0;

interface

uses Classes, untClassConsulta, UntTipos;

type tCnsPai0 = class ( tConsulta )

   private
   public
      constructor Create( Aowner : tComponent ); Override;
      destructor Destroy; override;

end;


implementation

{ tCnsPai0 }

constructor tCnsPai0.Create(Aowner: tComponent);
var Campo : tCampos;
begin
   inherited;
   Titulo := 'Consulta de Países';

   Campo.CampoID  := 'IDPAIS';
   Campo.CampoLeg := 'Código';
   Campo.Width    := 70;
   Campo.Tipo     := tpInteiro;
   addFieldFiltro(Campo);
   addFieldOrdem(Campo);
   addFieldColunas(Campo);

   Campo.CampoID  := 'PAIS';
   Campo.CampoLeg := 'País';
   Campo.Width    := 300;
   Campo.Tipo     := tpString;
   addFieldFiltro(Campo);
   addFieldOrdem(Campo);
   addFieldColunas(Campo);

   Campo.CampoID  := 'SIGLA';
   Campo.CampoLeg := 'Sigla';
   Campo.Width    := 60;
   Campo.Tipo     := tpString;
   addFieldFiltro(Campo);
   addFieldOrdem(Campo);
   addFieldColunas(Campo);

   ItemIndexFiltro := 1;
   ItemIndexOrdem  := 0;

   SqlCommadText := 'SELECT PAI0.IDPAIS, PAI0.PAIS, PAI0.SIGLA FROM TBLCDSPAI0 PAI0';

end;

destructor tCnsPai0.Destroy;
begin

  inherited;
end;

end.
