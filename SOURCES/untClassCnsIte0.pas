unit untClassCnsIte0;

interface

uses Classes, untClassConsulta, UntTipos;

type tCnsIte0 = class ( tConsulta )

   private
   public
      constructor Create( Aowner : tComponent ); Override;
      destructor Destroy; override;

end;


implementation

{ tCnsIte0 }

constructor tCnsIte0.Create(Aowner: tComponent);
var Campo : tCampos;
begin
   inherited;
   Titulo         := 'Consulta de Itens';

   Campo.CampoID  := 'IDITEM';
   Campo.CampoLeg := 'Código';
   Campo.Width    := 70;
   Campo.Tipo     := tpInteiro;
   addFieldFiltro(Campo);
   addFieldOrdem(Campo);
   addFieldColunas(Campo);

   Campo.CampoID  := 'NOMEPRO';
   Campo.CampoLeg := 'Produto';
   Campo.Width    := 300;
   Campo.Tipo     := tpString;
   addFieldFiltro(Campo);
   addFieldOrdem(Campo);
   addFieldColunas(Campo);

   Campo.CampoID  := 'CODBARRA';
   Campo.CampoLeg := 'Código de Barras';
   Campo.Width    := 300;
   Campo.Tipo     := tpString;
   addFieldFiltro(Campo);
   addFieldOrdem(Campo);
   addFieldColunas(Campo);

   Campo.CampoID       := 'PRECO';
   Campo.CampoLeg      := 'Preço';
   Campo.Width         := 150;
   Campo.Tipo          := tpString;
   Campo.DisplayFormat := '#####0.00';
   addFieldFiltro(Campo);
   addFieldOrdem(Campo);
   addFieldColunas(Campo);

   ItemIndexFiltro := 1;
   ItemIndexOrdem  := 0;

   SqlCommadText   := 'SELECT IDITEM, NOMEPRO, CODBARRA, PRECO FROM TBLCDSITE0';

end;

destructor tCnsIte0.Destroy;
begin

  inherited;
end;

end.
