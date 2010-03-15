if(time < 2) then
{
waituntil{time > 1};

_text = format["
[Moveable Zones *Example*]
\n\nIn this little tutorial I will show you how to do some stuff with the ""DAC_fChangeZone"" function. 
\n\nNormally, this function is used to reposition a DAC-Zone in order to create more dynamic AI Movements on the map.
\n\nIt's also possible to reposition a zone every few seconds. 
\n\nNow I'll show you what it's good for ...
"];
"DAC V3.0 Example mission - Part 24" hintC [_text];

sleep 0.5;

_text = format["
[Moveable Zones *Example*]
\n\nThe mission has 2 smaller DAC-Zones. The first creates Infantry, while the second generates a few heavy vehicles.
\n\nNothing special. But...I'll give you an Action menu with which you can control the zones.
\n\nThe action-menu should be pretty self-explanatory. Note: the action menu entry ""...follow player"" means that the zone will follow you and so will the units which are created within the DAC-zones.
\n\nYou should be able to see this when you open the map and move around a bit. The Zone will reposition itself to your position every few seconds.
\n\nPlease wait until DAC finished building up the zones ...
"];
"DAC V3.0 Example mission - Part 24" hintC [_text];

sleep 1;
waituntil {(DAC_Basic_Value > 0)};
sleep 1;

_text = format["
[Moveable Zones *Example*]
\n\nOk, the units are created and now wait to get shipped to their positions. (2 markers on the map. You can ignore them).
\n\nInfo: You can only control one zone at a time. However, you can change between the zones whenever you want.
\n\nPlease note, that there may be some latency. With other words: 
\nIt takes a few seconds until the groups of a zone get their new waypoints.
\n\nHave fun and good luck!
"];
"DAC V3.0 Example mission - Part 24" hintC [_text];

sleep 2;

z1 setVariable ["zone_action", 0, false];z1 setVariable ["zone_startpos", (position z1), false];
z2 setVariable ["zone_action", 0, false];z2 setVariable ["zone_startpos", (position z2), false];

Demo_Act_1 = player addaction ["Zone [z1 - infantry] follow Player","Action_z1.sqf",[1]];
Demo_Act_2 = player addaction ["Zone [z2 - vehicles] follow Player","Action_z2.sqf",[1]];
};