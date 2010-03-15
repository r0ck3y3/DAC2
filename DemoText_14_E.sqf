if(time < 2) then
{
waituntil{time > 1};

_text = format["
[local DAC-respawn]
\n\nThe DAC-respawn is a main part of the DAC. It re-generates killed groups after a while.
\n\nThere is a special thing about it. ""New"" groups will automaticly addopt the waypoints of the previous group. That will throw the group into the fight again, soon.
\n\nIn order to have a working respawn, you need at least one DAC-camp on the according side.
\n\nAs a limitation only the following three basic categories can be respawned:
\n\n[ Infantery, light vehicles, heavy vehicles ]
\n\nThere are a lot of options that will not be covered here, but I want you to go trough the three diffrent variants of respawn: [local, global, exact] ...
"];
"DAC V3.0 Demonstration - Part 14" hintC [_text];
 
sleep 0.5;
 
_text = format["
[local DAC-respawn]
\n\nLets start with the local respawn:
\n\nAs mentioned before there has to be at least one DAC-camp in order to have a working respawn. =)
\n\nIf the respawn is marked as ""local"", it can respawn groups that have been generated in the respawns zone, only.
\n\nIf there is no DAC-camp in the zone, it's impossible to generate new units.
\n\nTo demonstrate the local respawn, I have placed two zones. The zone in the bottom has a DAC-camp, the zone in the top has none.
\n\nWait until DAC has generated the zones ...
"];
"DAC V3.0 Demonstration - Part 14" hintC [_text];
 
sleep 1;
hintsilent "";
waituntil {(DAC_Basic_Value > 0)};
sleep 3;

_text = format["
[local DAC-respawn]
\n\nIf you open the map, you can see the two zones and the DAC-camp. In addition to that you can see how much respawns are avaible at the given camp.
\nIn order to trigger a respawn, you have to kill one group. =)
\n\nIn this demonstration it's quiet easy. Just click on a random unit of the group to eliminate the whole group.
\n\nIf you do that to the group in the upper box, nothing happens. DAC can't respawn the group, because it has no DAC-camp avaible for this zone, and will delete the dead units after a while.
\n\nIf you eliminate the group from the box at the bottom, DAC will create a new group with the waypoints of the previous group after a short period of time.
"];
"DAC V3.0 Demonstration - Part 14" hintC [_text];

sleep 0.05;
hint "Additional information avaible";
player sidechat "Additional information avaible";
dHint = player addaction ["Additional info","DemoText.sqf",[1]];
}
else
{
_text = format["
[local DAC-respawn]
\n\nPleas note: If a group has fallen under a certain strengh, it may join another group that's near by. If that's the case, DAC will act like the group was killed and create a new one.
\n\There are two numbers you can see at a DAC-camp. It shows you the avaible respawns of this camp and the number of respawns that are in the respawn process.
\n\nSind die Respawns in dem Camp aufgebraucht, wird die dort stationierte Gruppe das Camp aufgeben, und sich der naechstgelegenen Gruppe anschliessen.
\n\nIf there are no respawns left at the camp, the guarding group will left it and gather up with the nearest group.
\n\nHint: If a new group is created it will not be exactly like the old one. The group will differ, but it will have the same waypoints.
"];
"DAC V3.0 Demonstration - Teil 14" hintC [_text];
player removeAction dHint;
};