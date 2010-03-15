if(time < 2) then
{

waituntil{time > 1};

_text = format["
[global DAC-respawn]
\n\nThis demo will show you the options of the global DAC-respawn.
\n\nGlobal respawn means that a group wich was deleted from a zone will respawn in another DAC-camp as long as there is at least one DAC-camp for the given faction. It does not matter where that camp is, because global respawn will pick a random camp as long as respawns are avaible.
\n\nNow wait until DAC has processed the scenario for you ...
"];
"DAC V3.0 Demonstration - Part 15" hintC [_text];

sleep 1;
hintsilent "";
waituntil {(DAC_Basic_Value > 0)};
sleep 1;

_text = format["
[global DAC-respawn]
\n\nFor this demonstration there are three big master-zones. In each zone there will be a few groups and a DAC-camp will be placed in one zone.
\n\nIn addition to that there are three smaller master-zones wich contain one DAC-camp each but no AI.
\n\nIf you are going to kill one of these groups with a click on your mouse, DAC will generate a new group at a random DAC-camp.
\n\nThis time there are heavy vehicles. Let's rock it!
"];
"DAC V3.0 Demonstration - Part 15" hintC [_text];

sleep 0.05;
hint "Additional information avaible";
player sidechat "Additional information avaible";
dHint = player addaction ["Additional info","DemoText.sqf",[1]];
}
else
{
_text = format["
[global DAC-respawn]
\n\nThere is one special thing about DAC-camps:
\n\nIt's possible to create a respawn position instead of a camp. That means that there will be no physical camp with tents, guards and so on, but only a place where AI units can respawn.
\n\nIn this demonstration the camp in the middle is a pure respawn position that is placed inside the hangar.
\n\nThis respawn location has the ""infantry only"" option. It's not possible to spawn vehicles in it.
"];
"DAC V3.0 Demonstration - Part 15" hintC [_text];
player removeAction dHint;
};