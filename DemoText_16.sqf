if(time < 2) then
{
waituntil{time > 1};

_text = format["
[exakter DAC-Respawn]
\n\nJetzt noch die letzte Variante des Respawn-Systems:
\nder ""exakte"" DAC-Respawn.
\n\nIch nenne ihn exakt, weil Du genau bestimmen kannst, welche DAC-Camps fuer welche Zonen zustaendig sind.
\nDu musst also nicht alles dem Zufall ueberlassen ;-)
\n\nDa der DAC, wenn mehrere DAC-Camps fuer einen Respawn zu Verfuegung stehen, immer per Zufall entscheidet in welchem Camp eine Gruppe respawnd, kann es passieren, dass eine Gruppe in einem weit entfernten Camp generiert wird. 
\n\nDieser Umstand ist nicht immer gewuenscht und laesst sich durch diese Respawn-Variante einschraenken.
\n\nIn dieser Demo habe ich 4 Master-Zonen mit Einheiten, und 2 Master-Zonen mit Camps platziert, wie Du gleich sehen wirst ...
"];
"DAC V3.0 Demonstration - Teil 16" hintC [_text];

sleep 1;
hintsilent "";
waituntil {(DAC_Basic_Value > 0)};
sleep 1;

_text = format["
[exakter DAC-Respawn]
\n\nIch denke, Du hast die Karte bereits geoeffnet ;-)
\nDort siehst Du die Zonen wie angekuendigt.
\n\nDamit der DAC-Respawn ""geregelt"" verlaeuft, habe ich das noerdliche Camp auch an die noerdlichen Master-Zonen gebunden, bzw. das suedliche Camp an die suedlichen Master-Zonen gebunden.
\n\nDurch diese Kostellation wird verhindert, dass z.B. Sued-Gruppen im Norden respawnd werden.
\n\nDas Prinzip und der Vorteil dieser Variante sollte mit dieser Demo klar werden, denke ich.
\n\nGut, dann gilt jetzt das gleiche Vorgehen wie bei den anderen Respawn-Demos auch: ""Klick"" == Aua ;-)
"];
"DAC V3.0 Demonstration - Teil 16" hintC [_text];

sleep 0.05;
hint "Erweiterte Info verfuegbar";
player sidechat "Erweiterte Info verfuegbar";
dHint = player addaction ["Erweiterte Info","DemoText.sqf",[1]];
}
else
{
_text = format["
[exakter DAC-Respawn]
\n\nHinweis:
\n\nGrundsaetzlich gilt, dass ein DAC-Camp immer fuer die eigene Zone zustaendig ist, egal welche Respawn-Variante eingestellt ist.
\n\nWie Du die Zuordnung der Camps hinbekommst, kannst Du der ""Liesmich"" entnehmen, wie viele andere Dinge auch, die ich hier nicht weiter erklaert habe.
\n\nEin DAC-Camp ist uebrigens auch Voraussetzung fuer die DAC-Arti, die von der KI und vom Spieler angefordert werden kann ;-)
"];
"DAC V3.0 Demonstration - Teil 16" hintC [_text];
player removeAction dHint;
};