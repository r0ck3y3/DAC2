if(time < 2) then
{
onMapSingleClick "player setpos _pos";

waituntil{time > 1};

_text = format["
[Linking DAC-zones]
\n\nIf zones are linked together, they act as one big zone. (Assumed both zones have the same waypoint type)
\n\nThat means that groups from both zones can adapt waypoints from both zones.
\n\nGroups will be generated in their home-zones, but will move between linked zones. This makes movements of those groups more chaotic and unpredictable.
\n\nThe parameter which links zones together is in the script-call of the zone.
\n\nHint: You can link as much zones together as you like. You can even link Blufor and Opfor zones together.
"];
"DAC V3.0 Demonstration - Part 5" hintC [_text];

sleep 1;
hintsilent "";
waituntil {(DAC_Basic_Value > 0)};
sleep 1;

_text = format["
[Linking DAC-zones]
\n\nOpen the map and have a look at the zones: There are two blufor zones in the east linked together. (For this demo, there is a line connecting both zones.)
\n\nGroups of both zones should move between those zones.
\n\nIn the west part of the map there are three opfor zones linked together. The groups of those zones are moving in those three zones as well.
"];
"DAC V3.0 Demonstration - Part 5" hintC [_text];

sleep 0.05;
hint "Additional information avaible";
player sidechat "Additional information avaible";
dHint = player addaction ["Additional info","DemoText.sqf",[1]];
}
else
{
_text = format["
[Linking von DAC-zones]
\n\nHint:
\n\nIt makes no sense to link zones with diffrent waypoint types.
\n\nPossible waypoint types are:
\n[ Infantery, light vehicles, heavy vehicles ]
\n\nOnce again: You can't link zones with diffrent waypoint types.
\n\nOkay, actually you can link them together, but it'll be wasted efford, because infantry will not pick any waypoints wich are meant for tanks. :)
"];
"DAC V3.0 Demonstration - Part 5" hintC [_text];
player removeAction dHint;
player sidechat "A single map-click will teleport you to that position."; 
};