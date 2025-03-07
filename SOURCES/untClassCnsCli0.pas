unit untClassCnsCli0;

interface

uses Classes, untClassConsulta, UntTipos;

type tCnsCli0 = class ( tConsulta )

   private
   public
      constructor Create( Aowner : tComponent ); Override;
      destructor Destroy; override;

end;


implementation

{ tCnsCli0 }

constructor tCnsCli0.Create(Aowner: tComponent);
var Campo : tCampos;
begin
   inherited;
   Titulo         := 'Consulta de Clientes';

   Campo.CampoID  := 'IDCLIENTE';
   Campo.CampoLeg := 'Código';
   Campo.Width    := 70;
   Campo.Tipo     := tpInteiro;
   addFieldFiltro(Campo);
   addFieldOrdem(Campo);
   addFieldColunas(Campo);

   Campo.CampoID  := 'RAZAO';
   Campo.CampoLeg := 'Nome / Razão Social';
   Campo.Width    := 300;
   Campo.Tipo     := tpString;
   addFieldFiltro(Campo);
   addFieldOrdem(Campo);
   addFieldColunas(Campo);

   ItemIndexFiltro := 1;
   ItemIndexOrdem  := 0;

   SqlCommadText   := 'SELECT IDCLIENTE, RAZAO FROM TBLCDSCLI0';
end;

destructor tCnsCli0.Destroy;
begin

  inherited;
end;

end.
