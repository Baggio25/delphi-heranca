unit untClassCnsMar0;

interface

uses Classes, untClassConsulta, UntTipos;

type tCnsMar0 = class ( tConsulta )

   private
   public
      constructor Create( Aowner : tComponent ); Override;
      destructor Destroy; override;

end;



implementation

{ tCnsMar0 }

constructor tCnsMar0.Create(Aowner: tComponent);
var Campo : tCampos;
begin
   inherited;
   Titulo         := 'Consulta de Marcas';

   Campo.CampoID  := 'IDMARCA';
   Campo.CampoLeg := 'Código';
   Campo.Width    := 70;
   Campo.Tipo     := tpInteiro;
   addFieldFiltro(Campo);
   addFieldOrdem(Campo);
   addFieldColunas(Campo);

   Campo.CampoID  := 'MARCA';
   Campo.CampoLeg := 'Marca';
   Campo.Width    := 300;
   Campo.Tipo     := tpString;
   addFieldFiltro(Campo);
   addFieldOrdem(Campo);
   addFieldColunas(Campo);

   ItemIndexFiltro := 1;
   ItemIndexOrdem  := 0;

   SqlCommadText   := 'SELECT IDMARCA, MARCA FROM TBLCDSMAR0';

end;

destructor tCnsMar0.Destroy;
begin

  inherited;
end;

end.
