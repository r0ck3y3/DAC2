if(time < 2) then
{
onMapSingleClick "player setpos _pos";

waituntil{time > 1};

_text = format["
[Heli-zones and camps]
\n\nDAC can generate two more categories: Helicopters and camps.
\n\nThis demonstration will generate one zone with 6 choppers and one zone with two camps.
\n\nThose camps have some special functions. They'll bring new units to the battlefield.
\n\nI'll explain that in detail later on.
"];
"DAC V3.0 Demonstration - Part 4" hintC [_text];

sleep 1;
hintsilent "";
waituntil {(DAC_Basic_Value > 0)};
sleep 1;

_text = format["
[Heli-Zonen und Camps]
\n\nIf DAC creates a new chopper that has room for passengers, a new group wich is part of the crew will be created.
\n\nThis new group acts very similar to the group of light vehicles:
\n\nThe group will dismount and patrol the area around the chopper, if the chopper is waiting on the ground.
\n\nHint: This additional group will be dropped over enemy territory if requested. =)
"];
"DAC V3.0 Demonstration - Part 4" hintC [_text];

sleep 0.05;
hint "Additional information avaible";
player sidechat "Additional information avaible";
dHint = player addaction ["Additional info","DemoText.sqf",[1]];
}
else
{
_text = format["
[Heli-zones and camps]
\n\nA DAC2 generated chopper has no generated waypoints but a generated spawnlocation.
\n\nIf a chopper starts his patrol it will pick random waypoints from his zone.
\n\nAfter passing some waypoints the chopper will RTB to his spawnlocation and wait some time until it starts the next patrol.
\n\nHint: Camps and spawnlocations for choppers cant be generated everywhere. It's mandantory that the terrain is appropriate for those.
"];
"DAC V3.0 Demonstration - Part 4" hintC [_text];
player removeAction dHint;
player sidechat "A simple map-click will teleport you there."; 
};