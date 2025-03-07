unit untClassCnsVen0;

interface

uses Classes, untClassConsulta, UntTipos;

type tCnsVen0 = class ( tConsulta )

   private
   public
      constructor Create( Aowner : tComponent ); Override;
      destructor Destroy; override;

end;


implementation

{ tCnsVen0 }

constructor tCnsVen0.Create(Aowner: tComponent);
var Campo : tCampos;
begin
   inherited;
   Titulo := 'Consulta de Vendedores';

   Campo.CampoID  := 'IDVENDEDOR';
   Campo.CampoLeg := 'Código';
   Campo.Width    := 70;
   Campo.Tipo     := tpInteiro;
   addFieldFiltro(Campo);
   addFieldOrdem(Campo);
   addFieldColunas(Campo);

   Campo.CampoID  := 'VENDEDOR';
   Campo.CampoLeg := 'Vendedor';
   Campo.Width    := 330;
   Campo.Tipo     := tpString;
   addFieldFiltro(Campo);
   addFieldOrdem(Campo);
   addFieldColunas(Campo);

   Campo.CampoID  := 'COMISSAOVISTA';
   Campo.CampoLeg := '% Com. A Vista';
   Campo.Width    := 130;
   Campo.Tipo     := tpNumerico;
   addFieldColunas(Campo);

   Campo.CampoID  := 'COMISSAOPRAZO';
   Campo.CampoLeg := '% Com. A Prazo';
   Campo.Width    := 130;
   Campo.Tipo     := tpNumerico;
   addFieldColunas(Campo);

   ItemIndexFiltro := 1;
   ItemIndexOrdem  := 0;

   SqlCommadText   := ' SELECT VEN0.IDVENDEDOR,    ' +
                      '        VEN0.VENDEDOR,      ' +
                      '        VEN0.VENDEDOR,      ' +
                      '        VEN0.COMISSAOVISTA, ' +
                      '        VEN0.COMISSAOPRAZO  ' +
                      ' FROM TBLCDSVEN0 VEN0       ';
end;

destructor tCnsVen0.Destroy;
begin

  inherited;
end;

end.
