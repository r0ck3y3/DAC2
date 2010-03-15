if(time < 2) then
{
waituntil{time > 1};

_text = format["
[Bewegen von DAC-Zonen]
\n\nIn dieser Demo lernst Du die Moeglichkeit kennen, eine DAC-Zone zu bewegen.
\n\nWird eine DAC-Zone bewegt, also an eine neue Position platziert, dann generiert DAC an dieser Position neue Wegpunkte fuer die Zone.
\n\nDas wiederum fuehrt dazu, das die Gruppen aus der Zone komplett neue Wegpunkte zugewiesen bekommen.
\n\nIm Prinzip ist diese Funktion eine Art
\n""globale Truppenbewegung"".
\n\nOk, warte nun bis die Initialisierung von DAC abgeschlossen ist ...
"];
"DAC V3.0 Demonstration - Teil 10" hintC [_text];

sleep 1;
hintsilent "";
waituntil {(DAC_Basic_Value > 0)};
sleep 1;

_text = format["
[Bewegen von DAC-Zonen]
\n\nOk, oeffne die Karte und Du siehst genau eine Zone die der DAC generiert hat. 
\n\nUm diese Zone zu bewegen, links-klick einfach irgendwo in die Karte um die Zone genau auf diese Position zu versetzen.
\n\nDa die DAC-Marker aktiviert sind, siehst Du wie an der neuen Position neue Wegpunkte generiert werden. Ist der Prozess abgeschlossen, werden die betroffenen Gruppen wenig spaeter melden, dass sie neue Wegpunkt-Daten bekommen haben.
\n\nDu kannst diesen Prozess jederzeit wiederholen, indem Du einfach eine andere Position auf der Karte anklickst.
"];
"DAC V3.0 Demonstration - Teil 10" hintC [_text];

sleep 0.05;
hint "Erweiterte Info verfuegbar";
player sidechat "Erweiterte Info verfuegbar";
dHint = player addaction ["Erweiterte Info","DemoText.sqf",[1]];
}
else
{
_text = format["
[Bewegen von DAC-Zonen]
\n\nDas Bewegen einer Zone laesst sich sehr gut mit dem ""Aktivieren/Deaktivieren"" einer Zone kombinieren.
\n\nBeispiel:
\n\nKlick auf den Mittelpunkt der Zone, um sie zu deaktivieren. Warte bis alle Einheiten geloescht wurden.
\nDann klick die Zone auf eine neue Position, damit neue Wegpunkte generiert werden.
\nAbschliessend noch mal auf den Mittelpunkt der Zone klicken, um die Zone an ihrer neuen Position wieder zu aktivieren.
\n\nDas waere alles ;-)
"];
"DAC V3.0 Demonstration - Teil 10" hintC [_text];
player removeAction dHint;
player sidechat "Use the single mapclick to set the player to an new position"; 
};