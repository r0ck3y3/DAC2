if(time < 2) then
{
onMapSingleClick "player setpos _pos";

waituntil{time > 1};

_text = format["
[Aktivieren/Deaktivieren von DAC-Zonen]
\n\nDiese Demo zeigt Dir, wie man DAC-Zonen komplett deaktivieren bzw. auch wieder aktivieren kann.
\n\nDeaktivieren bedeutet, dass alle Gruppen aus einer bestimmten Zone geloescht werden. Die Zone bleibt dabei aber erhalten.
\n\nBeim Aktivieren wir eine deaktivierte Zone wieder komplett neu generiert.
\n\nWarte nun bis DAC initialisiert wurde ...
"];
"DAC V3.0 Demonstration - Teil 9" hintC [_text];

sleep 1;
hintsilent "";
waituntil {(DAC_Basic_Value > 0)};
sleep 1;

_text = format["
[Aktivieren/Deaktivieren von DAC-Zonen]
\n\nOk, direkt vor Dir hat DAC eine Zone mit 4 verschiedenen Einheiten-Kategorien generiert.
\n\nWarte einen Augenblick, dann wird Dir ein Action-Eintrag angezeigt, mit dem Du die Zone deaktivieren kannst
\n(alle Einheiten dieser Zone werden dann geloescht).
\n\nDu bekommst dann einen neuen Action-Eintrag, mit dem Du die Zone wieder aktivieren kannst usw.
\n\nDie Aktionen ""aktivieren/deaktivieren"" kannst Du beliebig oft wiederholen ... probiere das nun aus.
"];
"DAC V3.0 Demonstration - Teil 9" hintC [_text];

sleep 2;
pAction1 = player addaction ["Deactivate zone [z1]","Action.sqf",[2]];
}
else
{
_text = format["
[Aktivieren/Deaktivieren von DAC-Zonen]
\n\nIm Westen habe ich eine weitere Zone platziert, die von Begin an deaktiviert ist.
\n\nDas Aktivieren/Deaktivieren dieser Zone ist an einen Ausloeser gekoppelt, den ich auf der Karte mit einem roten Marker gekennzeichnet habe.
\n\nKlick Dich in diesen Ausloeser, um diese Zone zu aktivieren, bzw. klick Dich ausserhalb des Ausloesers, um die Zone wieder zu deaktivieren.
\n\n
"];
"DAC V3.0 Demonstration - Teil 9" hintC [_text];
player sidechat "Use the single mapclick to set the player to a new position"; 
};