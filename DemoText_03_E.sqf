if(time < 2) then
{
onMapSingleClick "player setpos _pos";

waituntil{time > 1};

_text = format["
[Simple vehicle-zones]
\n\nIn this tutorial DAC will create two zones with vehicles. The upper zone creates tracked vehicles.
\n\nThe lower zone creates light vehicles like trucks or jeeps.
\n\nThe light vehicles are usually able to carry additional passangers. 
\n\nNote: DAC can create up to four vehicles per group.
"];
"DAC V3.0 Demonstration - Part 3" hintC [_text];

sleep 1;
hintsilent "";
waituntil {(DAC_Basic_Value > 0)};
sleep 1;

_text = format["
[Simple vehicle-zones]
\n\nLight vehicles have a special feature in DAC: 
\nThe crew of a vehicle will disembark at their waypoint and patrol the surrounding for a certain time.
\n\nThe gunner position will be manned during this time.
\n\nInfo: Groups which happen to be on the move with a single light vehicle will be reduced like normal infantry groups if they are out of visibility range. 
\n\nPlease note that every Demo-mission contains additional information, which can be called via the Action-menu.
"];
"DAC V3.0 Demonstration - Part 3" hintC [_text];

sleep 0.05;
hint "More information available";
player sidechat "More information available";
dHint = player addaction ["More information available","DemoText.sqf",[1]];
}
else
{
_text = format["
[Simple vehicle-zones]
\n\nUnits within their DAC zone will not move into other zones, since they are not ""synced"" (this will be explained in another tutorial :-)) with each other.
\n\nThere is a possibility though, that some unis might leave the zone in order to avoid a forest.

"];
"DAC V3.0 Demonstration - Part 3" hintC [_text];
player removeAction dHint;
player sidechat "A simple left click on the map will teleport your unit somewhere else."; 
};