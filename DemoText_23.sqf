if(time < 2) then
{
waituntil{time > 1};

_text = format["
[Unbekannter Feind]
\n\nBis jetzt waren bei jeder Demo die DAC-Marker aktiv, und und Du konntest genau feststellen, was DAC generiert hat. Die DAC-Marker sind primaer dafuer gedacht, Dir bei der Missionserstellung soviel DAC-Daten wie moeglich zu liefern.
\n\nDu siehst immer, wo und was auf welcher Seite generiert wird, und Du kannst sehen welche Routen die KI verarbeitet usw.
\n\nIn der Endversion einer Mission sollten deshalb die DAC-Marker unbedingt deaktiviert werden.
\n\nUnd genau das tun wir jetzt ... wir starten eine Mission ohne DAC-Marker, bzw. die DAC-Marker werden direkt nach der DAC-Initialisierung deaktiviert.
"];
"DAC V3.0 Beispielmission - Teil 23" hintC [_text];

sleep 0.5;
//hintsilent "";
//waituntil {(DAC_Basic_Value > 0)};
//sleep 1;

_text = format["
[Unbekannter Feind]
\n\nZum Ausgleich habe ich Dir die Moeglichkeit eingebaut, einen von 4 Schwierigkeitsgraden auszuwaehlen. Daran gekoppelt ist die Anzahl der Gruppen, die DAC generieren wird.
\n\nDiese Moeglichkeit ist nur ein kleines Beispiel, wie so etwas umgesetzt werden kann. 
\n\nNachdem Du Dich fuer einen Schwierigkeitsgrad entschieden hast, beginnt DAC mit der Initialisierung. 
\n\nEs ist schon ein komisches Gefuehl, wenn man nicht genau weiss was generiert wird. Du wirst sozusagen bei jedem Neustart der Mission wieder in's ""kalte Wasser"" geworfen ;-)
\n\nOk, Du bist dran. Genaueres zu der Mission erzaehle ich Dir gleich ...
"];
"DAC V3.0 Beispielmission - Teil 23" hintC [_text];

sleep 1;
hintsilent "";
Demo_Act_1 = player addaction ["Schwierigkeitsgrad 1","Action.sqf",[1]];
Demo_Act_2 = player addaction ["Schwierigkeitsgrad 2","Action.sqf",[2]];
Demo_Act_3 = player addaction ["Schwierigkeitsgrad 3","Action.sqf",[3]];
Demo_Act_4 = player addaction ["Schwierigkeitsgrad 4","Action.sqf",[4]];
sleep 1;
waituntil {(DAC_Basic_Value > 0)};
sleep 1;
{player removeAction _x}foreach [Demo_Act_1,Demo_Act_2,Demo_Act_3,Demo_Act_4];

_text = format["
[Unbekannter Feind]
\n\nDein Plan fuer diese Mission sieht wie folgt aus:
\nDu bist zu Begin der Mission ganz allein auf Dich gestellt. Dein erstes Ziel ist es, den Hangar am Fluhafen zu erreichen. Daduch werden einige West-Einheiten freigespielt, die ihren Einsatz im Norden der Insel beginnen und sich langsam nach Sueden vorarbeiten.
\n\nDiese Truppenbewegungen fuehren sehr wahrscheinlich zu Kampfhandlungen, die den Feind ablenken. Nutze diese Situation, um nach Norden auszubrechen.
\n\nDort steht ein Boot fuer Dich bereit, mit dem Du den gruenen Kreismarker ganz im Norden erreichen kannst. Die Mission ist dann zu Ende.
\n\nBitte beachte die erweiterte Info, die noch eine kleine Erklaerung fuer Dich bereit haelt ...
"];
"DAC V3.0 Beispielmission - Teil 23" hintC [_text];

sleep 1;
hint "Erweiterte Info verfuegbar";
player sidechat "Erweiterte Info verfuegbar";
dHint = player addaction ["Erweiterte Info","DemoText.sqf",[1]];
}
else
{
_text = format["
[Unbekannter Feind]
\n\nIch habe Dir ein paar ""Hot Spots"" eingerichtet, die Du an den blauen Kreismarkern erkennen kannst.
\n\nSobald Du in den Bereich von so einem ""Hot Spot"" kommst, werden die DAC-Marker aktiviert, und Du kannst sehen, wo sich der Feind aufhaelt.
\n\nDiese Info sollte Dir dabei helfen, eine optimale Route zum Hangar zu finden. Wenn Du den Bereich wieder verlaesst, werden auch die DAC-Marker wieder deaktiviert und Du musst Dich allein auf Deine Sinne verlassen.
\n\nIn den Bereichen der ""Hot Spots"" befinden sich jeweils mehrere Waffenkisten und je ein Sani-Zelt, nur damit Du versorgt bist ;-)
\n\nOk, dann viel Glueck !
"];
"DAC V3.0 Beispielmission - Teil 23" hintC [_text];
player removeAction dHint;
};