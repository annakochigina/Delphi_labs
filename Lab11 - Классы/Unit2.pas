unit Unit2;

interface
uses classes, SysUtils;
type TStudent = class
  private
    FSurname, FName: string;
    Fexam, Ftest: array [1..10] of integer;
    Fcount_exam, Fcount_test: integer;
  public
    constructor Create(st: string; e, t: integer);
    function Output_list: TStringlist;
    function without_three: boolean;
    function All_five: boolean;
end;

implementation
  constructor TStudent.Create(st: string; e: Integer; t: Integer);
  var k, i : integer;
  begin
    Fcount_exam := e;
    Fcount_test := t;
    k := pos(' ', st);
    FSurname := copy(st, 1, k-1);
    delete(st,1,k);
    k := pos(' ', st);
    FName := copy(st, 1, k-1);
    delete(st,1,k);
    for i := 1 to Fcount_exam do begin
      k := pos(' ', st);
      Fexam[i] := StrToInt(copy(st,1,k-1));
      delete(st,1,k);
    end;
    for i := 1 to Fcount_test do begin
      k := pos(' ', st);
      Ftest[i] := StrToInt(copy(st,1,k-1));
      delete(st,1,k);
    end;
  end;

  function TStudent.Output_list: TStringList;
  var list: TStringlist;
      i: Integer;
  begin
    list := TStringlist.Create;
    list.Add(FSurname);
    list.Add(FName);
    for i := 1 to Fcount_exam do
        list.Add(IntToStr(Fexam[i]));
    for i := 1 to Fcount_test do
        list.Add(IntToStr(Ftest[i]));
    result := list;
  end;

  function TStudent.without_three: boolean;
  var i, count : integer;
  begin
    count := 0;
    for i := 1 to Fcount_exam do
      if (Fexam[i] = 3) or (Fexam[i] = 2) then
        inc(count);
    for i := 1 to Fcount_test do
      if (Ftest[i] = 3) or (Ftest[i] = 2) then
        inc(count);
    if count = 0 then
        result := True
    else
        result := False;
  end;

  function TStudent.All_five: boolean;
  var i, count : integer;
  begin
    count := 0;
    for i := 1 to Fcount_exam do
      if Fexam[i] = 5 then
        inc(count);
      if count = Fcount_exam then
        result := True
      else
        result := False;
  end;

end.
