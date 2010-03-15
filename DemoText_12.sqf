if(time < 2) then
{
waituntil{time > 1};

_text = format["
[Editor-Gruppen im DAC einbinden]
\n\nNun zeige ich Dir, wie Du Editor-gesetzte Gruppen in den DAC einbinden kannst, bzw. die eingebundenen Gruppen auch wieder entfernen kannst.
\n\nWarte zunaechst, bis der DAC initialisiert wurde, und oeffne dann die Karte ...
"];
"DAC V3.0 Demonstration - Teil 12" hintC [_text];

sleep 1;
hintsilent "";
waituntil {(DAC_Basic_Value > 0)};
sleep 5;

_text = format["
[Editor-Gruppen im DAC einbinden]
\n\nOk, Du siehst nun eine DAC-Zone, in der sich einige DAC-Gruppen bewegen.
\n\nOberhalb dieser Zone siehst Du eine Editor-gesetzte Gruppe, der ich einige Wegpunkte gegeben habe.
\n\nUnterhalb der DAC-Zone befindet sich ebenfalls eine Editor-gesetzte Gruppe, allerdings ohne Wegpunkte.
\n\nUm eine der beiden Gruppen in das DAC-System zu integrieren, links-klick auf eine beliebige Einheit aus der entsprechenden Gruppe.
\n\nKurze Zeit spaeter siehst Du, dass die Gruppe Wegpunkte aus der DAC-Zone bekommt. Damit ist sie im DAC eingebunden.
\n\nUm die Gruppe wieder aus dem DAC zu entlassen, links-klick ein weiteres Mal auf eine Einheit der Gruppe. Die Gruppe wird dann wieder ihre Editor-Wegpunkte aufnehmen, oder an ihre Startposition zurueckkehren. 
"];
"DAC V3.0 Demonstration - Teil 12" hintC [_text];

sleep 0.05;
hint "Erweiterte Info verfuegbar";
player sidechat "Erweiterte Info verfuegbar";
dHint = player addaction ["Erweiterte Info","DemoText.sqf",[1]];
}
else
{
_text = format["
[Editor-Gruppen im DAC einbinden]
\n\nWichtiger Hinweis:
\n\nEs gibt eine Einschraenkungen bezueglich der eingebundenen Editor-Gruppen ...
\n\nEine solche Gruppe kann, wenn sie zerstoert wurde,
\nnicht wieder durch ein DAC-Camp respawnd werden.
\n\nMit anderen Worten: Wenn die Gruppe ""down"" ist, bleibt sie es auch.
"];
"DAC V3.0 Demonstration - Teil 12" hintC [_text];
player removeAction dHint;
};