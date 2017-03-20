@echo off
e:
if _%1==_ goto bp
bpc -B c:\bp %1 %2 %3 %4 %5 %6 %7 %8 %9
goto end
:bp
bp
:end
