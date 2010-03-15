if(time < 2) then
{

waituntil{time > 2};

_text = format["
[Artiunterstuetzung anfordern *Beispiel*]
\n\nIn dieser Demo zeige ich Dir, wie Du als Spieler die DAC-Arti anfordern kannst, denn bis jetzt konnte das nur die KI.
\n\nBitte bedenke, dass die DAC-Arti nur ""just for fun"" ist. Die Reichweiten z.B. sind absolut unrealistisch und es werden auch keine Flugbahnen oder aehnliches berechnet.
\nWenn Dich dieser Umstand stoert, solltest Du jetzt die [ESC] Taste druecken, ansonsten viel Spass mit dieser Demo ;-)
\n\nDie Ausgangssituation ist folgende: Im Suedosten wird eine West-Zone mit 2 DAC-Camps generiert. Diese Camps stellen insgesamt 8 statische Arti-Einheiten zu Verfuegung.
\n\nZudem gibt es weiter suedoestlich, noch 4 mobile Arti-Einheiten, die in dieser Demo eine wichtige Rolle spielen werden.
"];
"DAC V3.0 Demonstration - Teil 21" hintC [_text];

sleep 0.5;

_text = format["
[Artiunterstuetzung anfordern *Beispiel*]
\n\nIm Nordwesten befindet sich eine feindliche Zone, in der sich einige Infanterie-Gruppen aufhalten werden.
\n\nAusserdem sind auf den vorgelagerten Inseln 8 Flugabwehr-Einheiten stationiert (rote Punkt-Marker),
\ndie Du bitte zerstoeren sollst.
\n\nDas Problem dabei ... sowohl die statischen Arti-Einheiten in den Camps, als auch die mobilen Arti-Einheiten, haben nicht die Reichweite, um die AA-Stellungen auszuschalten.
\n\nWenn Du aber die mobilen Arti-Einheiten gut in Stellung bringen kannst, ist das Zerstoeren der AA-Stellungen ein Kinderspiel ;-)
\n\nWie Du das anstellst, erklaere ich Dir, sobald der DAC die Situation generiert hat ...
"];
"DAC V3.0 Demonstration - Teil 21" hintC [_text];

sleep 1;
hintsilent "";
waituntil {(DAC_Basic_Value > 0)};
sleep 6;

_text = format["
[Artiunterstuetzung anfordern *Beispiel*]
\n\nZwei orange farbene Kreismarker zeigen Dir die Reichweite der statischen Arti an (die in den Camps).
\n\nDie Reichweite deckt den unteren Teil der feindlichen Zone ab. Im Prinzip kannst Du diesen Bereich direkt zu Begin der Mission unter Feuer nehmen, wenn sich dort feindliche Einheiten aufhalten.
\n\nUm die Arti-Unterstuetzung anzufordern, halte die linke Shift-Taste gedrueckt, und klick einmal mit der Maus auf eine Position Deiner Wahl.
\n\nIst Deine Arti-Anforderung erfolgreich, siehst Du entsprechende Marker auf der Position. Ausserdem erhalten auch die Einheiten, die diesen Arti-Schlag ausfuehren, eine rotierenden Marker.
\n\nJeder Arti-Schlag besteht aus 1 Salve mit 4 Schuss, die aber nur erreicht werden, wenn auch mindestens 4 Arti-Einheiten bereit sind zu feuern.
"];
"DAC V3.0 Demonstration - Teil 21" hintC [_text];

sleep 0.5;

_text = format["
[Artiunterstuetzung anfordern *Beispiel*]
\n\nUm die mobilen Arti-Einheiten zu bewegen, musst Du die Einheiten selektieren:
\n\nEin einfacher Links-Klick selektiert eine Einheit (dauert einen Augenblick). Ein weiterer Links-Klick auf eine beliebige Position, gibt der selektierten Einheit einen Wegpunkt.
\n\nDie selektierte Einheit ist durch einen blauen Marker gekennzeichnet. Ausserdem wird die Reichweite der selektierten Einheit angezeigt.
\n\nKlick einfach eine andere Einheit an, um diese zu selektieren, um dann dieser Einheit einen Wegpunkt zu geben usw.
\n\nUm die Selektion aufzuheben, einfach die selektierte Einheit nochmal anklicken.
"];
"DAC V3.0 Demonstration - Teil 21" hintC [_text];

sleep 0.05;
hint "Erweiterte Info verfuegbar";
player sidechat "Erweiterte Info verfuegbar";
dHint = player addaction ["Erweiterte Info","DemoText.sqf",[1]];
}
else
{
_text = format["
[Artiunterstuetzung anfordern *Beispiel*]
\n\nInfo:
\nDu kannst auch den Spieler selektieren. In dem Fall positionierst Du den Spieler neu, wenn Du dann eine beliebige Position auf der Map anklickst.
\n\nEs kann nicht schaden, wenn Du anrueckende Feinde, die evtl. Deine mobilen Einheiten gefaerden, mit der statischen Arti ausschaltest (wenn in Reichweite).
\n\nHinweis: Insgesamt stehen Dir 25 Arti-Anforderungen (*Klicks*) zu Verfuegung, um die Aufgabe zu loesen.
"];
"DAC V3.0 Demonstration - Teil 21" hintC [_text];
player removeAction dHint;
};