if(time < 2) then
{
onMapSingleClick "player setpos _pos";

waituntil{time > 1};

_text = format["
[Custom waypoints]
\n\nUm die Wegpunkte innerhalb einer Zone nicht ganz dem Zufall zu ueberlassen, bietet Dir DAC die Moeglichkeit, benutzerdefinierte Wegpunkte einzubinden.
\n\nDas sind also Wegpunkte, die von Dir vorgegeben werden.
\n\nIn dieser Demo habe ich 2 Zonen platziert, die jeweils 22 Wegpunkte generieren sollen. In der unteren Zone habe ich exakt 22 benutzerdefinierte Wegpunkte eingebaut. DAC wird demnach in dieser Zone keine Wegpunkte generieren muessen.
\n\nIn der oberen Zone habe ich nur 11 benutzerdefinierte Wegpunkte eingebaut. DAC wird also weitere 11 Wegpunkte generieren muessen, damit die Gesamtzahl von 22 Wegpunkten erreicht wird.
\n\nDAC wird immer erst versuchen, benutzerdefinierte Wegpunkte innerhalb einer Zone zu finden, um diese dann zu verwenden.
"];
"DAC V3.0 Demonstration - Teil 7" hintC [_text];

sleep 1;
hintsilent "";
waituntil {(DAC_Basic_Value > 0)};
sleep 1;

_text = format["
[Benutzerdefinierte Wegpunkte]
\n\nUm benutzerdefinierte Wegpunkte innerhalb einer Zone zu verwenden, musst Du dort nur eine Logik-Einheit platzieren und dieser Logik entsprechend viele Wegpunkte hinzufuegen und an Positionen Deiner Wahl platzieren.
\n\nDann nur noch einen kleinen Eintrag in die Init-Zeile der Logik eintragen, um den Wegpunkttyp festzulegen ... das war's.
\n\nDiese Methode ist sehr einfach, wie ich finde, und gleichzeitig auch sehr effektiv :-)
\n\nHinweis: Benutzerdefinierte Wegpunkte erkennst Du an den Markern ohne Fuellung ... natuerlich nur wenn die DAC_Marker aktiviert sind.
"];
"DAC V3.0 Demonstration - Teil 7" hintC [_text];

sleep 0.05;
hint "Erweiterte Info verfuegbar";
player sidechat "Erweiterte Info verfuegbar";
dHint = player addaction ["Erweiterte Info","DemoText.sqf",[1]];
}
else
{
_text = format["
[Benutzerdefinierte Wegpunkte]
\n\nWichtiger Hinweis:
\nDie Logik-Einheit und deren Wegpunkte, muessen unbedingt immer innerhalb der Zone platziert sein !!
\n\nDa die benutzerdefinierten Wegpunkte nicht ""generiert"" werden muessen, weil die Position ja bekannt ist, verkuerzt sich daduch auch die Initialisierungs-Phase vom DAC etwas. 
\n\nSollte DAC mal Probleme haben, in einem bestimmten Gebiet, einen bestimmten Wegpunkttyp zu generieren, z.B. wegen zu hoher Objektdichte, waere das auch ein typischer Fall fuer benutzerdefinierte Wegpunkte.
"];
"DAC V3.0 Demonstration - Teil 7" hintC [_text];
player removeAction dHint;
player sidechat "Ein einfacher Links-Klick auf die Karte platziert Deine Spielfigur dort hin."; 
};