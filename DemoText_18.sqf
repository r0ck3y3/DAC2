if(time < 2) then
{
onMapSingleClick "player setpos _pos";

waituntil{time > 1};

_text = format["
[Erkennen von leeren Objekten]
\n\nIn dieser Demo zeige ich Dir, dass die DAC-Einheiten mehr koennen, als nur in der Gegend rumzulaufen ;-)
\n\nZum einen spueren sie leere Fahrzeuge und Helis auf, die sie dann so lange es geht, benutzen.
\n\nAuch leere Geschuetze oder MG-Stellungen bleiben nicht unendeckt.
\n\nDesweiteren werden DAC-Einheiten auch begehbare Gebeaude finden und sie durchsuchen bzw. besetzen.
\n\nDiese Merkmale sind allerdings auf die Kategorie ""Infanterie"" beschraenkt.
"];
"DAC V3.0 Demonstration - Teil 18" hintC [_text];

sleep 1;
hintsilent "";
waituntil {(DAC_Basic_Value > 0)};
sleep 1;

_text = format["
[Erkennen von leeren Objekten]
\n\nSchau Dir die Karte an, dort siehst Du 3 DAC-Zonen, und in jeder Zone haben die Einheiten einen anderen Job ;-)
\n\nIn der rechten Zone befinden sich ein paar leere Fahrzeuge, die vermutlich bald ""eingesackt"" werden.
\n\nIn der mittleren Zone stehen ein paar Gebaeude (Editor gesetzt), welche die KI nach einer gewissen Zeit durchsuchen wird.
\n\nDann ist da noch die linke Zone, in der ich ein paar leere MG's platziert habe, damit sie von den dort stationierten Einheiten besetzt werden.
\n\nDenk' dran ... mit einem Linksklick auf die Karte, kannst Du Dich ueberall hin platzieren, um das Geschehen aus der Naehe zu betrachten.
"];
"DAC V3.0 Demonstration - Teil 18" hintC [_text];

sleep 0.05;
hint "Erweiterte Info verfuegbar";
player sidechat "Erweiterte Info verfuegbar";
dHint = player addaction ["Erweiterte Info","DemoText.sqf",[1]];
}
else
{
_text = format["
[Erkennen von leeren Objekten]
\n\nDiese DAC-Merkmale lassen sich jederzeit ausschalten, oder auch individuell anpassen.
\n\nDarueber hinaus kann fuer jede Zone z.B. eine eigene Verhalten-Konfiguration geladen werden.
\n\nDas bedeutet, dass die DAC-Merkmale bei Bedarf ""lokal"" fuer jede Zone eingestellt werden koennen. 
\n\nFuer die Gebaeude gibt es auch eine Art ""Black List"", in der Gebaeudetypen hinterlegt sind, die von der KI nicht benutzt werden duerfen.
\n\nAnalog dazu, gibt es fuer Fahrzeuge eine Liste, in der alle erlaubten Fahrzeugtypen eingetragen sind, welche von der KI erkannt werden ""duerfen"".
"];
"DAC V3.0 Demonstration - Teil 18" hintC [_text];
player removeAction dHint;
player sidechat "Ein einfacher Links-Klick auf die Karte platziert Deine Spielfigur dort hin."; 
};