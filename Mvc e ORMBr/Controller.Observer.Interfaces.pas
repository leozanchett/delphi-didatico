unit Controller.Observer.Interfaces;

interface

type

  TRecordItem = record
    Descricao: String;
    Valor: Currency;
    Quantidade: Currency;
  end;

  iObserverItem = interface
    ['{A3714C86-6D02-474C-93BC-FDBD1BF37314}']
    function UpdateItem(_ARecordItem: TRecordItem): iObserverItem;
  end;

  iSubjectItem = interface
    ['{5DE39239-203B-4F79-B32B-BD8C88CAED5B}']
    function Add(_AObserverItem: iObserverItem): iSubjectItem;
    function Notify(_ARecordItem: TRecordItem): iSubjectItem;
  end;

implementation

end.
