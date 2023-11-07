var k,s,length,i,sum : integer; ff : boolean;
A: array of integer;
begin
  ff := False;
  write('Введите длину массива А: ');
  readln(length);
  SetLength(A, length);
  writeln('Введите элементы массива А:');
  for i := 0 to length-1 do begin
    readln(A[i]);
  end;
  write('Введите число s: ');
  readln(s);
  while sum <= s do begin
    sum := sum + A[k];
    k := k + 1;
    if (k = length-1) and (sum <= s) then begin
      ff := True;
      break;
    end;
  end;
  if ff = False then writeln('Количество элементов, нужное чтобы их сумма была больше заданного числа s = ', k, '.')
  else writeln('Нет стольких элементов, чтобы их сумма была больше чем s.');
end.