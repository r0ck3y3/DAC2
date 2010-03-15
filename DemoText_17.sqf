if(time < 2) then
{
onMapSingleClick "player setpos _pos";

waituntil{time > 1};

_text = format["
[Logik einer Zone zuweisen + DAC_SavePos]
\n\nIn dieser Demo habe ich gleich 2 Features verpackt ;-)
\nDa waere einmal die Moeglichkeit, Logiken eindeutig einer Zone zuzuweisen.
\n\nDieser Schritt ist immer dann notwendig, wenn mehrere Zonen ueberlappen bzw. ineinander platziert sind, und sich in diesen Zonen Logiken befinden, die spezielle DAC-Eigenschaften haben.
\n\nIm Suedosten der Karte befinden sich z.B. 4 Zonen, die wie oben beschrieben, ineinader platziert wurden. Jede dieser Zonen besitzt eine Logik, die etwas bewirkt:
\n\nein Standort fuer ein Camp, benutzerdefinierte Wegpunkte, 2 Zonen als Polygon definiert.
\n\nDiese Zonen-Konstellation funktioniert nur, weil ich die Logiken an die jeweilige Zone gekoppelt habe:
\n\nNameDerLogik setvariable [""Link"", NameDerZone, false]
"];
"DAC V3.0 Demonstration - Teil 17" hintC [_text];

sleep 0.5;

_text = format["
[Logik einer Zone zuweisen + DAC_SavePos]
\n\nAusserdem befindet sich im Nordwesten eine weitere Zone, in der vom DAC massenhaft Wegpunkte generiert werden (nur zu Demo-Zwecken).
\n\nDas besondere an dieser Zone ist, dass ich innerhalb des Zonenbereichs 3 Positionen definiert habe, in deren Umfeld vom 100m keine Wegpunkte auftauchen duerfen, und somit auch keine Einheiten in diesen Bereichen generiert werden.
\n\nDefiniert wird das Ganze dann wie folgt (Beispiel):
\n\nDAC_SaveDistance = [100,[""Logik_1"",""Logik_2"",""Logik_3""]]
\n\n\nMehr gibt's in dieser Demo nicht zu sagen ;-)
"];
"DAC V3.0 Demonstration - Teil 17" hintC [_text];

sleep 1;
hintsilent "";
};