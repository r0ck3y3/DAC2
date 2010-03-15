if(time < 2) then
{
onMapSingleClick "player setpos _pos";

waituntil{time > 1};

_text = format["
[Waypoint-Zones]
\n\nIn Coherence with the two linked zones, we will now focus on waypoint-zones.
\n\nWaypoint-zones are zones, which do not generate small groups, but waypoints.In this respect, waypoint-zones only make sense if they're linked with the so-called Master-zones. 
\n\nThere are 2 constellations of waypoint-zones in this tutorial.
\n\nThree waypoint-zones are placed outside of the Master-zone, while 3 wp-zones are placed inside.
\n\nThe conclusion for both cases is the same. The units of the Master-zone ""can"" have waypoints within their three waypoint-zones...
"];
"DAC V3.0 Demonstration - Part 6" hintC [_text];

sleep 1;
hintsilent "";
waituntil {(DAC_Basic_Value > 0)};
sleep 1;

_text = format["
[Waypoint-Zones]
\n\nEvery group in this demo will receive 10 random waypoints.  
\n\nYou can view the waypoints of the groups by opening the map screen.
\n\nThis will change with every mission start. It's totally random ;-).
"];
"DAC V3.0 Demonstration - Part 6" hintC [_text];

sleep 0.05;
hint "More Information available";
player sidechat "More Information available";
dHint = player addaction ["More Information","DemoText.sqf",[1]];
}
else
{
_text = format["
[Waypoint-Zones]
\n\nThis example shows you how to increase the possibility of units popping up around a specific area.
\n\nOn the other hand, you can see that waypoint zones can be placed outside of a Master-Zone.
\n\nNobody will know where, how many, for how long and what kind of units will be present at this area. Der Effekt ist dann, dass Niemand weiss wann dort Einheiten eintreffen, wieviele Einheiten dort eintreffen, welche Einheiten dort eintreffen, wie lange sich die Einheiten dort aufhalten usw.
\n\nCool, isn't it?
"];
"DAC V3.0 Demonstration - Part 6" hintC [_text];
player removeAction dHint;
player sidechat "A simple left click on the map screen will teleport you somewhere else."; 
};