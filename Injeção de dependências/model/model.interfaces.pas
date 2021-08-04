unit model.interfaces;

interface

type
  iEndereco<T> = interface
    ['{F08280DF-D0FC-4035-AD84-6CE119D1FF4B}']
    function Rua(_ANomeRua: String): iEndereco<T>; overload;
    function Rua: String; overload;
    function &End: T;
  end;

  iEmail<T> = interface
    ['{D870F21F-1D7A-463A-BF1C-F78E076C2F5C}']
    function Email(_AEmail: String): iEmail<T>; overload;
    function Email: String; overload;
    function &End: T;
  end;

  iPessoaFisica = interface
    ['{416FD216-3B84-4CAE-94AB-E3ED47030011}']
    function CPF(_AValue: String): iPessoaFisica; overload;
    function CPF: String; overload;
    function interfaceEndereco: iEndereco<iPessoaFisica>;
    function interfaceEmail: iEmail<iPessoaFisica>;
  end;

  iPessoaJuridica = interface
    ['{8FD0B66D-CB68-4847-AA2D-2752D0F21B19}']
    function CNPJ(_AValue: String): iPessoaJuridica; overload;
    function CNPJ: String; overload;
    function interfaceEndereco: iEndereco<iPessoaJuridica>;
    function interfaceEmail: iEmail<iPessoaJuridica>;
  end;
implementation

end.
