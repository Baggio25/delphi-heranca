unit UntTipos;

interface

uses Classes;

type

   tTipoCampo = ( tpString, tpInteiro, tpNumerico, tpBoolean, tpDate, tpTime );

   tCampos = record
      CampoID   : String;
      CampoLeg  : String;
      Width     : Integer;
      Tipo      : tTipoCampo;
   end;

implementation

end.
