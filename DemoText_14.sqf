if(time < 2) then
{
waituntil{time > 1};

_text = format["
[lokaler DAC-Respawn]
\n\nDer DAC-Respawn ist ein wichtiger Bestandteil vom DAC. Er sorgt dafuer, das verendete Gruppen nach einer gewissen Zeit wieder neu generiert werden. 
\n\nDas Besondere daran ist, dass eine ""neue"" Gruppe automatisch die Wegpunkte der alten Gruppe uebernimmt, und somit in absehbarer Zeit automatisch wieder am Kampfgeschehen teilnimmt.
\n\nVoraussetzung fuer den Respawn ist mindestens ein DAC-Camp auf der entsprechenden Seite.
\nEine Einschraenkung ist, dass nur die 3 Basis-Kategorien respawnd werden koennen:
\n\n[ Infanterie, leichte Fahrzeuge, schwere Fahrzeuge ]
\n\nAuf die vielen Einstellmoeglichkeiten moechte ich hier nicht weiter eingehen, aber auf die 3 verschiedenen Respawn-Varianten: [lokal, global, exakt] ...
"];
"DAC V3.0 Demonstration - Teil 14" hintC [_text];
 
sleep 0.5;
 
_text = format["
[lokaler DAC-Respawn]
\n\nWir beginnen mit dem ""lokalen"" Respawn.
\n\nWie ich bereits sagte, muss mindestens ein DAC-Camp generiert werden, damit der DAC-Respawn ueberhaupt seine Arbeit aufnehmen kann ;-)
\n\nIst der Respawn als ""lokal"" definiert, koennen nur Gruppen respawnd werden, in deren Zone auch ein DAC-Camp generiert wurde.
\n\nIn Zonen wo kein DAC-Camp zu Verfuegung steht, koennen demnach keine neuen Einheiten generiert werden. 
\n\nUm Dir den lokalen Respawn besser zu verdeutlichen, habe ich hier 2 Zonen platziert. In der unteren Zone wird ein DAC-Camp generiert, und die obere Zone muss ohne Camp auskommen.
\n\nWarte nun, bis DAC die Zonen generiert hat ...
"];
"DAC V3.0 Demonstration - Teil 14" hintC [_text];
 
sleep 1;
hintsilent "";
waituntil {(DAC_Basic_Value > 0)};
sleep 3;

_text = format["
[lokaler DAC-Respawn]
\n\nOk, wenn Du die Karte oeffnest, kannst Du die zwei Zonen und das DAC-Camp sehen. Ausserdem kannst Du erkennen, wieviel Respawns in dem Camp verfuegbar sind.
\nUm den Respawn auszuloesen, musst Du nur eine Gruppen ""um die Ecke"" bringen ;-)
\n\nDas ist in dieser Demo ganz einfach: klick eine beliebige Einheit einer Gruppe einmal mit der Maus an, um die ganze Gruppe auszuloeschen.
\n\nMachst Du das bei einer Gruppe aus der oberen Zone, passiert nichts weiter, ausser das die toten Einheiten nach kurzer Zeit automatisch vom DAC-System geloescht werden.
\n\nMachst Du das Gleiche bei einer Gruppe aus der unteren Zone, kannst Du beobachten wie kurze Zeit spaeter eine neue Gruppe generiert wird, die dann mit den Wegpunkten der alten Gruppe versorgt wird.
"];
"DAC V3.0 Demonstration - Teil 14" hintC [_text];

sleep 0.05;
hint "Erweiterte Info verfuegbar";
player sidechat "Erweiterte Info verfuegbar";
dHint = player addaction ["Erweiterte Info","DemoText.sqf",[1]];
}
else
{
_text = format["
[lokaler DAC-Respawn]
\n\nBitte beachte, dass wenn sich eine Gruppe wegen Unterzahl, einer anderen Gruppe anschliesst, und dadurch eine Gruppe verloren geht, der DAC auch unter diesen Umstaenden eine neue Gruppe generiert ;-)
\n\nDie beiden Werte, die Du an dem DAC-Camp ablesen kannst, sind zum einen die verfuegbaren Respawns
\n(in diesem Camp), und zum anderen die Anzahl der Respawns, die der DAC in diesem Camp ""in Auftrag"" gegeben hat, bzw. die gerade abgearbeitet werden.
\n\nSind die Respawns in dem Camp aufgebraucht, wird die dort stationierte Gruppe das Camp aufgeben, und sich der naechstgelegenen Gruppe anschliessen.
\n\nHinweis: Die ""neuen"" Gruppen entsprechen NICHT exakt den ""alten"" Gruppen, sondern variieren im vorgegebenen Rahmen :-)
"];
"DAC V3.0 Demonstration - Teil 14" hintC [_text];
player removeAction dHint;
};