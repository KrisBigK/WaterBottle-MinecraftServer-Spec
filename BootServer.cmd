cd /d %~dp0

set serverJar=spigot-1.12.2.jar
set minMem=8G
set maxMem=10G

:boot
java -Dfile.encoding=UTF-8 -Xms%minMem% -Xmx%maxMem% -d64 -jar "%serverJar%" nogui

@echo Restart server after 15 seconds.
@timeout /t 15

goto boot

exit