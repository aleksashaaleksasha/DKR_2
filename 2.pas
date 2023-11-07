var s,c: string; i,j,cnt,k,cntmax : integer;
A : array of string;
begin
  writeln('Введите слова через пробел:');
  readln(s);
  SetLength(A,length(s));
  for i := 1 to length(s) do if not (s[i] = ' ') then A[k] := A[k] + s[i] else  k := k + 1;
  //writeln(A);
  for j := 1 to length(A)-1 do begin
    //Ыwriteln(A.CountOf(A[j]));
    if (cntmax < A.CountOf(A[j])) and (A[j] <> '') then begin
    cntmax := A.CountOf(A[j]);
    c := A[j];
    end;
  end;
  writeln('Наибольшее встречающееся слово в строке – это "', c, '". Кол-во повторений равно ', cntmax,'.');
end.