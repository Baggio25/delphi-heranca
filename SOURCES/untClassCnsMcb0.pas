unit untClassCnsMcb0;

interface

uses Classes, untClassConsulta, UntTipos;

type tCnsMcb0 = class ( tConsulta )

   private
   public
      constructor Create( Aowner : tComponent ); Override;
      destructor Destroy; override;

end;


implementation

{ tCnsSec0 }

constructor tCnsMcb0.Create(Aowner: tComponent);
var Campo : tCampos;
begin
   inherited;
   Titulo         := 'Consulta de Meios de Cobrança';

   Campo.CampoID  := 'IDMEIOCOB';
   Campo.CampoLeg := 'Código';
   Campo.Width    := 70;
   Campo.Tipo     := tpInteiro;
   addFieldFiltro(Campo);
   addFieldOrdem(Campo);
   addFieldColunas(Campo);

   Campo.CampoID  := 'MEIOCOB';
   Campo.CampoLeg := 'Meio de Cobrança';
   Campo.Width    := 300;
   Campo.Tipo     := tpString;
   addFieldFiltro(Campo);
   addFieldOrdem(Campo);
   addFieldColunas(Campo);

   ItemIndexFiltro := 1;
   ItemIndexOrdem  := 0;

   SqlCommadText   := 'SELECT IDMEIOCOB, MEIOCOB FROM TBLCDSMCB0';

end;

destructor tCnsMcb0.Destroy;
begin

  inherited;
end;

end.
