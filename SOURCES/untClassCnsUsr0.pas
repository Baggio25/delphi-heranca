unit untClassCnsUsr0;

interface

uses Classes, untClassConsulta, UntTipos;

type tCnsUsr0 = class ( tConsulta )

   private
   public
      constructor Create( Aowner : tComponent ); Override;
      destructor Destroy; override;

end;


implementation

{ tCnsUsr0 }

constructor tCnsUsr0.Create(Aowner: tComponent);
var Campo : tCampos;
begin
   inherited;
   Titulo := 'Consulta de Usuários';

   Campo.CampoID  := 'IDUSUARIO';
   Campo.CampoLeg := 'Código';
   Campo.Width    := 70;
   Campo.Tipo     := tpInteiro;
   addFieldFiltro(Campo);
   addFieldOrdem(Campo);
   addFieldColunas(Campo);

   Campo.CampoID  := 'USUARIO';
   Campo.CampoLeg := 'Usuário';
   Campo.Width    := 330;
   Campo.Tipo     := tpString;
   addFieldFiltro(Campo);
   addFieldOrdem(Campo);
   addFieldColunas(Campo);

   Campo.CampoID  := 'LOGIN';
   Campo.CampoLeg := 'Login';
   Campo.Width    := 330;
   Campo.Tipo     := tpString;
   addFieldFiltro(Campo);
   addFieldOrdem(Campo);
   addFieldColunas(Campo);

   Campo.CampoID  := 'STATUS';
   Campo.CampoLeg := 'Ativo';
   Campo.Width    := 40;
   Campo.Tipo     := tpString;
   addFieldColunas(Campo);

   Campo.CampoID  := 'ADM';
   Campo.CampoLeg := 'Adm';
   Campo.Width    := 45;
   Campo.Tipo     := tpBoolean;
   addFieldColunas(Campo);

   ItemIndexFiltro := 1;
   ItemIndexOrdem  := 0;

   SqlCommadText := 'SELECT USR0.IDUSUARIO, ' +
                    '       USR0.USUARIO,   ' +
                    '       USR0.LOGIN,     ' +
                    '       USR0.STATUS,    ' +
                    '       USR0.ADM        ' +
                    'FROM TBLCDSUSR0 USR0 ';
end;

destructor tCnsUsr0.Destroy;
begin

  inherited;
end;

end.
