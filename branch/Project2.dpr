﻿program Project2;
uses
  System.SysUtils,
  Math;

var x, sum: Double;
n,k: integer;
begin
	for n:=10 to 15 do
  begin
     x:=0.6;
     while x<=1.1000001 do
     begin
     	sum:=0;
        for k:= 1 to n do
        sum:=sum+Ln(Abs(x+k))*Ln(Abs(x+k))*Cos((x+k*k)/n);
        sum:=sum/3*Power(2,x/2);
        writeln('x=', x:6:3,'n=':5,n, 'y=':5,sum:0:3) ;
        x:=x+0.25;
     end;
  end;
  readln;
end.
