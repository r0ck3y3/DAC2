if(time < 2) then
{
onMapSingleClick "player setpos _pos";

waituntil{time > 1};

_text = format["
[Custom waypoints]
\n\nThis demo shows you how to use custom waypoints to define positions for DAC-Camps and Rotor choppers.
\n\nBesonders diese beiden DAC-Kategorien sind in bestimmten Gebieten etwas problematisch, wenn DAC dafuer Standorte generieren soll, denn fuer einen solchen Standort muss das Gelaende relativ flach sein und es duerfen nur sehr wenig (kleine) Objekte vorhanden sein.
"];
"DAC V3.0 Demonstration - Part 8" hintC [_text];

sleep 1;
hintsilent "";
waituntil {(DAC_Basic_Value > 0)};
sleep 1;

_text = format["
[Custom waypoints]
\n\nWie Du siehst, habe ich die Heli-Standorte auf dem Flughafengelaende platziert. Die Standorte fuer die 3 Camps habe ich an geeignete Positionen gelegt.
\n\nMit einem Links-Klick auf die Karte kannst Du Dir diese Standorte gerne aus der Naehe ansehen ;-)
\n\nAnsonsten gibt es zu dieser Demo nicht mehr zu sagen.
"];
"DAC V3.0 Demonstration - Part 8" hintC [_text];

sleep 0.05;
hint "keine erweiterte Info verfuegbar";
player sidechat "keine erweiterte Info verfuegbar";
};