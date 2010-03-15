if(time < 2) then
{
waituntil{time > 1};

_text = format["
Benutzerdefinierte Wegpunkte
\n\nIn diesem Beispiel zeige ich Dir eine weitere Moeglichkeit, benutzerdefinierte Wegpunkte einzubinden.
\n\nUnd zwar kannst Du benutzerdefinierte Wegpunkte vordefinieren, indem Du Sie ausserhalb von irgend welchen DAC-Zonen platzierst.
\n\nDas bedeutet, diese Wegpunkte sind erstmal ohne Bedeutung. Aber sobald eine DAC-Zone diese Wegpunkte erfasst, nachdem sie versetzt wurde, werden auch die Wegpunkte erfasst und stehen den entsprechenden Gruppen zu Verfuegung.
\n\nDu kannst also im Vorfeld bestimmen, wo genau es Wegpunkte geben soll, fuer den Fall das eine Zone dort platziert wird.
\n\nDAC wird immer zuerst benutzerdefinierte Wegpunkte beruecksichtigen und den Rest, wenn noetig, mit generierten Wegpunkten auffuellen.
"];
"DAC V3.0 Beispielmission - Teil 25" hintC [_text];

sleep 0.5;

_text = format["
Benutzerdefinierte Wegpunkte
\n\nWenn Du gleich die Karte oeffnest, siehst Du ein paar von mir gesetzte Marker, an deren Positionen sich vordefinierte Wegpunkte befinden.
\n\nMit einem einfachen Linksklick kannst Du die DAC-Zone an eine beliebige Position bewegen. Klickst Du auf einen der Marker, dann siehst Du das DAC die benutzerdefinierten Wegpunkte einliest.
\n\nKlickst Du auf eine andere Position, werden zufaellige Wegpunkte generiert.
\n\nBei dem Marker ""Pos_4"" sind weniger benutzerdefinierte Wegpunkte platziert als bei den anderen Positionen. Deshalb wird DAC dort den Rest mit generierten Wegpunkten auffuellen.
\n\nOk, genug geredet ... warte nun bis der DAC seine Arbeit erledigt hat, dann kannst Du es selbst ausprobieren.
"];
"DAC V3.0 Beispielmission - Teil 25" hintC [_text];

sleep 1;
hintsilent "";
waituntil {(DAC_Basic_Value > 0)};

sleep 1;
hint "Erweiterte Info verfuegbar";
player sidechat "Erweiterte Info verfuegbar";
dHint = player addaction ["Erweiterte Info","DemoText.sqf",[1]];
}
else
{
_text = format["
Benutzerdefinierte Wegpunkte
\n\nVielleicht wird Dir aufgefallen sein, dass bei ""Pos_5"" keine benutzerdefinierten Wegpunkte eingelesen werden, obwohl es dort welche gibt.
\n\nDas hat einen einfachen Grund: es ist auch moeglich, benutzerdefinierte Wegpunkte einer ganz speziellen Zone zuzuweisen. 
\n\nIn diesem Beispiel sind die Wegpunkte von Pos_5 der DAC-Zone ""z2"" zugewiesen. Da es diese Zone aber nicht gibt, werden die Wegpunkte von unserer Zone ""z1"" auch nicht beruecksichtigt.
\n\nVerstanden? Ok ... super :-)
"];
"DAC V3.0 Beispielmission - Teil 25" hintC [_text];
player removeAction dHint;
player sidechat "Ein einfacher Links-Klick auf die Karte platziert die DAC-Zone dort hin."; 
};