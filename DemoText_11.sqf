if(time < 2) then
{
waituntil{time > 1};

_text = format["
[Dynamisches erzeugen von DAC-Zonen]
\n\nJetzt demonstriere ich Dir, wie Du DAC-Zonen waehrend einer Mission erzeugen kannst. Diese Funktion ist neu und sehr weitreichend ;-)
\n\nNormalerweise benoetigt DAC mindestens eine Zone, damit er sich initialisieren kann. Da es zu Begin dieser Demo aber keine Zone gibt (die wollen wir ja erst noch erzeugen), benutzen wir folgenden DAC-Parameter:
\nDAC_Direct_Start = true
\n\nDieser Parameter bewirkt, dass sich DAC ohne eine Zone initialisieren kann.
"];
"DAC V3.0 Demonstration - Teil 11" hintC [_text];

sleep 1;
hintsilent "";
waituntil {(DAC_Basic_Value > 0)};
sleep 1;

_text = format["
[Dynamisches erzeugen von DAC-Zonen]
\n\nOk, es kann losgehen ...
\n\nOeffne wieder die Karte und links-klick auf eine Position Deiner Wahl. DAC wird umgehend an dieser Position eine neue DAC-Zone generieren. 
\n\nDie Groesse, die Form und auch die Rotation der neuen Zone, wird in einem gewissen Rahmen zufaellig erzeugt. Die Seite der Zone (West oder Ost) wird mit jeder neuen Zone wechseln.
\n\nDiese Einstellungen sind nur fuer die Demo so gewaehlt. Selbstverstaendlich kannst Du die Zonen, die erzeugt werden sollen, ganz individuell einstellen.
\n\nBitte beachte auch die erweiterte Info !!
"];
"DAC V3.0 Demonstration - Teil 11" hintC [_text];

sleep 0.05;
hint "Erweiterte Info verfuegbar";
player sidechat "Erweiterte Info verfuegbar";
dHint = player addaction ["Erweiterte Info","DemoText.sqf",[1]];
}
else
{
_text = format["
[Dynamisches erzeugen von DAC-Zonen]
\n\nDie dynamisch generierten Zonen kannst Du wieder loeschen, in dem Du den Mittelpunkt der jeweiligen Zone anklickst. 
\n\nMoechtest Du alle Zonen mit einer einzelnen Aktion loeschen, dann klick auf den Marker der Spieler-Einheit.
\n\nWichtiger Hinweis:
\n\nBitte bedenke, dass jede Zone die Du generierst, egal ob sie beim Start initialisiert wird, oder waehrend der laufenden Mission erzeugt wird, entsprechende Ressourcen verbraucht.
\n\nAnalog dazu, werden wieder Ressourcen freigegeben, wenn Du eine Zone deaktivierst oder gar loeschst.
"];
"DAC V3.0 Demonstration - Teil 11" hintC [_text];
player removeAction dHint;
player sidechat "Use the single mapclick to create a new DAC zone"; 
};