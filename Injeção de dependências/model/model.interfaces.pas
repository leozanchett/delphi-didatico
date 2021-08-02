unit model.interfaces;

interface

type
  iPessoaFisica = interface
    ['{416FD216-3B84-4CAE-94AB-E3ED47030011}']
    function CPF(_AValue: String): iPessoaFisica; overload;
    function CPF: String; overload;
  end;

  iPessoaJuridica = interface
    ['{8FD0B66D-CB68-4847-AA2D-2752D0F21B19}']
    function CNPJ(_AValue: String): iPessoaJuridica; overload;
    function CNPJ: String; overload;
  end;
implementation

end.
