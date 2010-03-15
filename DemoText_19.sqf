if(time < 2) then
{
waituntil{time > 1};

_text = format["
[Ost/West Konflikt]
\n\nIn dieser Demo generiert DAC auf ganz simple Art und Weise eine kleine Konfliktsituation.
\n\nIm Norden der Karte befinden sich 2 Master-Zonen auf Seite Ost. Im Sueden 2 Zonen der Seite West.
\n\nBeide Seiten verfuegen ueber 2 DAC-Camps, die den Nachschub sichern und gleichzeitig den Gruppen Arti-Unterstuetzung bereitstellen.
\n\nDa die beiden grossen Master-Zonen miteinander verlinkt sind, wird es kurzfristig zu einem Konflikt beider Seiten kommen, da jede Seite versuchen wird, in die Zone des Anderen vorzudringen.
\n\nDiese Demo benutzt den Parameter ""DAC_Fast_Init"". Dieser Parameter bewirkt, dass zu Begin der Mission die Sichtweite auf Minimum, und der Nebelfaktor auf Maximum gesetzt wird. Die dadurch freigegebene Prozessor-Leistung kommt der Initialisierungsphase zugute, die sich dadurch um 20-40 Prozent verkuerzt.
\n(Nur relevant im Singleplayer-Modus).
"];
"DAC V3.0 Demonstration - Teil 19" hintC [_text];

sleep 0.5;
//hintsilent "";
//waituntil {(DAC_Basic_Value > 0)};
//sleep 1;

_text = format["
[Ost/West Konflikt]
\n\nDiesen Konflikt kannst Du nicht beeinflussen. Er wird sich dynamisch ""entwickeln"", und bei jedem Neustart der Mission wird der Verlauf ein anderer sein.
\n\nDer Konflikt wird sich erst beruhigen, wenn die Respawns einer Seite aufgebraucht sind.
\n\nDa jede Gruppe einer Seite fuer sich Verstaerkung anfordern kann (dabei werden Gruppen angefordert, die keine bestimmte Aufgabe haben, die also nur ihren Wegpunkten folgen), erhaelt die Mission eine sehr hohe Dynamik.
\n\nIch habe fuer diese Demo die DAC-Systemmeldungen und die DAC-Gruppenmeldungen aktiviert. Das bedeutet, Du bist darueber informiert was der DAC gerade tut, und welche Aktivitaeten auf Gruppenebene passieren. 
"];
"DAC V3.0 Demonstration - Teil 19" hintC [_text];

sleep 1;
hintsilent "";
waituntil {(DAC_Basic_Value > 0)};
sleep 0.05;
hint "Erweiterte Info verfuegbar";
player sidechat "Erweiterte Info verfuegbar";
dHint = player addaction ["Erweiterte Info","DemoText.sqf",[1]];
}
else
{
_text = format["
[Ost/West Konflikt]
\n\nEs gibt verschiedene Markerdarstellungen, die ich Dir kurz und knapp erklaeren muss:
\n\n[Kreismarker / schwarz schraffiert]:
\n---Arti-Anforderung in diesem Bereich (erfolgreich)
\n[Kreismarker / rot schraffiert]:
\n---Arti-Anforderung in diesem Bereich (erfolglos)
\n[Gelber Linienmarker]:
\n---Gruppe befindet sich in Beobachtungs-Mission
\n[Roter Linienmarker]:
\n---Gruppe befindet sich in Angriffs-Mission
\n[Gelb animierter Linienmarker]:
\n---Gruppe befindet sich in Unterstuetzungs-Mission
\n[Gelb rotierender Balkenmarker]:
\n---Gruppe befindet sich in Such-Mission
\n[Blauer Linienmarker]:
\n---Gruppe befindet sich in Besetzungs-Mission
\n[Weisser Linienmarker]:
\n---Gruppe hat ihren Anfuehrer verloren u. ordnet sich neu
\n[Schwarz rotierender Elipsenmarker]:
\n---Gruppe patroulliert in diesem Bereich
"];
"DAC V3.0 Demonstration - Teil 19" hintC [_text];
player removeAction dHint;
};