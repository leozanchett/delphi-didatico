unit ClassCliente;

interface

uses
  ClassLinkControlToField;

type
  TCliente = class
    private
      FCodigo: integer;
      FNome: String;
      FEndereco: String;
    public
      [CustomLinkControlToField('codigo', 'edtCodigo', 'abs')]
      property Codigo: integer read FCodigo write FCodigo;
      [CustomLinkControlToField('nomes', 'edtNome', 'abs')]
      property Nomes: String read FNome write FNome;
      [CustomLinkControlToField('endereco', 'edtEndereco', 'abs')]
      property Endereco: String read FEndereco write FEndereco;
  end;

implementation


end.
