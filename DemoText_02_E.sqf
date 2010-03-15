if(time < 2) then
{
onMapSingleClick "player setpos _pos";

waituntil{time > 1};

_text = format["
[Simple Infantry zone]
\n\nIn this example, DAC will generate 50 waypoints and 10 groups of Infantry within a zone. 
\n\nEvery group will receive their own waypoints out of a Waypoint-pool.
\n8 These waypoints are random.
\n\nOpen the map in order to see the creation of units. 
\n\nNote: The units and waypoints will be re-created if you choose to restart the mission. 
"];
"DAC V3.0 Demonstration - Part 2" hintC [_text];
sleep 1;
hintsilent "";
waituntil {(DAC_Basic_Value > 0)};

sleep 5;

_text = format["
[Simple Infantry zone]
\n\nSome groups will announce that they are being ""reduced"". This is a feature of DAC. 
\n\nif a unit is out of visibility range, DAC will remove every unit of this group except the Leader. 
\n\nThe deleted units will return if the Leader is in range. Valuable information like Dammage, skills and ammuniton will be kept of course.
\n\nNote: You can reposition yourself by clicking at your desired position on the map with your left mouse button. 
\n\n You can view more information via the action menu.
"];
"DAC V3.0 Demonstration - Part 2" hintC [_text];
sleep 0.05;
hint "More information available";
player sidechat "More information available";
dHint = player addaction ["More Information","DemoText.sqf",[1]];
}
else
{
_text = format["
[Simple Infantry zone]
\n\nReposition yourself by clicking on a position which is within the zone. This will cause the DAC-zone to build up the groups. Click somewhere else in order to let the DAC-zone reduce the groups.
\n\n\nYou can resize the DAC-zone in the editor or position it somewhere else if you want. Click preview to see the results.
\n\nHave fun! :-)
\n\n\nInfo: I have activated the DAC-System information. This will show what DAC is doing at the moment.
"];
"DAC V3.0 Demonstration - Part 2" hintC [_text];
player removeAction dHint;
player sidechat "A simple left click on the map will teleport your unit somewhere else."; 
};