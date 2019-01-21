@echo off

if %1.==. if %2.==. goto END

if not %1.==. if not %2.==. goto OK
if not %1.==. if %2.==. goto NoNEO
if %1.==. goto NoC

:NoC
    echo No Compiller found
    goto END

:OK
    %1 -c -std=%2 utils/tools.cpp -o toolsJSON.o
    %1 -c -std=%2 JSON.cpp toolsJSON.o -o neoJSON.o
    goto END
:NoNEO
    %1 -c -std=%2 utils/tools.cpp -o toolsJSON.o
    %1 -c JSON.cpp -o oldJSON.o
    goto END
:END