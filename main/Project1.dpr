﻿program Project1;
uses
  System.SysUtils;
var x, sum: Double;
n,k: integer;
begin
  x:=0.6;
  while x<=1.1000001 do
  begin
     for n:=10 to 15 do
     begin
     	sum:=0;
        for k:= 1 to n do
        sum:=sum+Ln(Abs(x+k))*Ln(Abs(x+k))*Cos((x+k*k)/n);
        sum:=sum/3*exp(x/2*ln(2));
        writeln('x=', x:6:3,'n=':5,n, 'y=':5,sum:10:3)
     end;
       x:=x+0.25;
  end;
  readln;
end.
