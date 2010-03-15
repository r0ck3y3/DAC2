onMapSingleClick "player setpos _pos";DemoValue = 0;

waituntil{time > 1};

_text = format["
[Creation of objects]
\n\nIn this tutorial i will show you that DAC can accomplish more than "just" generating units. It is also possible to generate objects within a DAC-zone.
\n\nThis must be done via a seperate zone. It is not possible to generate units and objects with the same trigger. 
\n\nPlease note, that the creation of objects will happen randomized, but can be altered to a certain degree. 
\n\nOk, I will show you 6 different examples. You will be able to select these with your action menu (Please select them in order!)
\n\nThe ""Readme"" contains everything you need to know about this topic. Well, there is nothing more i could tell you ;-)
"];
"DAC V3.0 Demonstration - Part 22" hintC [_text];

waituntil{DemoValue == 6};
sleep 3;

onMapSingleClick "_fun = [_pos,_shift] execVM ""MapClick.sqf""";
_text = format["
[Creation of objects]
\n\nGood, you're done and I hope I could give you some inspiration.
\n\nAlright, you can now create objects by simply clicking on the map. 
\n\nKeep the shift key pressed and click in order to position yourself somewhere else.
\n\nHave Fun !
"];
"DAC V3.0 Demonstration - Part 22" hintC [_text];
sleep 1;
hintsilent "";