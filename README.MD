Conker Deutsch Mod v.0.2.0 (zweiter Test-Patch)
-----------------------------------------------

Der Patch besteht aus einer einzelnen xdelta-Datei, welche von den beiligenden Patch-Skripten verwendet wird.
Mit den Patch-Skripten kann die Conker Deutsch Mod auf einfache Weise unter Linux (patch-script-linux.sh) oder Windows (patch-script--windows.bat) erstellt werden.
Dazu wird die ROM der originalen US-Version von Conker's Bad Fur Day entweder per Drag&Drop auf das jeweilige Script gezogen, oder als Parameter in der Konsole dem jeweilige Script übergeben.
Die Skripte benutzen zum Patchen das Kommandozeilenwerkzeug "xdelta3", das dem Patch ebenfalls beiliegt.
Bitte unter Linux daran denken, das Script und Binary erst als ausführbar gesetzt werden müssen:

`~$ chmod +x patch-script-linux.sh bin/xdelta3`

Es kann statt der mitgelieferten Version auch eine andere Version von "xdelta3" verwendet werden z.B. von hier:

https://github.com/jmacd/xdelta-gpl/releases/tag/v3.0.11

Der Patch wird folgendermaßen mit "xdelta3" verwendet:

`~$ xdelta3 -d -f -s "ORIGINAL-ROM" "PATCH-DATEI" "MODIFIZIERTE-ROM"`

z.B.

`~$ xdelta3 -d -f -s "cbfd-original.us.z64" "conker-deutsch.us.xdelta" "conker-deutsch.us.z64"`

Benötigt wird die originale US-Version von Conker's Bad Fur Day mit folgendem Hash:

- md5sum 00e2920665f2329b95797a7eaabc2390
- sha1sum 4cbadd3c4e0729dec46af64ad018050eada4f47a

Wer mein Projekt unterstützen möchte findet alle Informationen dazu auf meinem Kanal bei YouTube oder bei Patreon.

Youtube:
https://www.youtube.com/@conkerdeutsch

Patreon:
https://www.patreon.com/ConkerDeutsch

Schaut auch mal im SNES-Forum vorbei:
https://www.snes-projects.de

Die Übersetzung wäre nicht möglich ohne "Conker's Bad Fur Day Decompilation" und dem zugehörigen SourceCode unter:

https://github.com/mkst/conker/tree/master

Vielen Dank dafür!

Vielen Dank auch allen Helfern, die mich bei der bisherigen Umsetzung unterstützt haben!
