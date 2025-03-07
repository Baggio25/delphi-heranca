unit untClassCnsSec0;

interface

uses Classes, untClassConsulta, UntTipos;

type tCnsSec0 = class ( tConsulta )

   private
   public
      constructor Create( Aowner : tComponent ); Override;
      destructor Destroy; override;

end;


implementation

{ tCnsSec0 }

constructor tCnsSec0.Create(Aowner: tComponent);
var Campo : tCampos;
begin
   inherited;
   Titulo         := 'Consulta de Seções';

   Campo.CampoID  := 'IDSECAO';
   Campo.CampoLeg := 'Código';
   Campo.Width    := 70;
   Campo.Tipo     := tpInteiro;
   addFieldFiltro(Campo);
   addFieldOrdem(Campo);
   addFieldColunas(Campo);

   Campo.CampoID  := 'SECAO';
   Campo.CampoLeg := 'Seção';
   Campo.Width    := 300;
   Campo.Tipo     := tpString;
   addFieldFiltro(Campo);
   addFieldOrdem(Campo);
   addFieldColunas(Campo);

   ItemIndexFiltro := 1;
   ItemIndexOrdem  := 0;

   SqlCommadText   := 'SELECT IDSECAO, SECAO FROM TBLCDSSEC0';
end;

destructor tCnsSec0.Destroy;
begin

  inherited;
end;

end.
