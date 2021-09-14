unit uGeradorBoleto.Intf;

interface

type
   iGeradorBoleto = interface
      ['{9C31BC20-45B7-4835-BEE0-CFEB51425143}']
      function GerarBoleto(const _ABoleto: iBoleto): String;
   end;

implementation

end.
