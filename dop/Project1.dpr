﻿program dop2;
uses
  System.SysUtils,Math;

var x,znam,y: Extended;
k:integer;
begin
  x:=0.5;
  writeln('|    x    |    y    |');
  writeln('|---------|---------|');
  while x<=0.80000001 do
  begin
    k:=2;
    znam:=Power(x,1/k);
  	while k<=10 do
  	begin
     y:=Power(x,k)*(x-k)/znam;
     znam:=y+Power(x,1/(k+1)) ;
     k:=k+1;
  	end;
  writeln('|',x:7:2,'|':3,y:7:4,'|':3);
  writeln('|---------|---------|');
  x:=x+0.05;
  end;

  readln;
end.
