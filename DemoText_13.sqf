if(time < 2) then
{
waituntil{time > 1};

_text = format["
[DAC-Gruppen aus dem DAC-System entfernen]
\n\nIn dieser Demonstration kannst Du alle Gruppen einer DAC-Zone mit einem ""Klick"" aus dem DAC-System entfernen.
\n\nDiese Funktion ist dafuer gemacht, um z.B. die ""entlassenen"" DAC-Gruppen an ein anderes KI-System uebergeben zu koennen.
\n\nSelbstverstaendlich ist es moeglich, die entlassenen DAC-Gruppen wieder in das DAC-System einzubinden.
\n\nWarte kurz, bis DAC initialisiert wurde ...
"];
"DAC V3.0 Demonstration - Teil 13" hintC [_text];

sleep 1;
hintsilent "";
waituntil {(DAC_Basic_Value > 0)};
sleep 1;

_text = format["
[DAC-Gruppen aus dem DAC-System entfernen]
\n\nAuf der Karte siehst Du eine Master-Zone in der DAC-Gruppen generiert wurden, und etwas weiter unten eine Wegpunkt-Zone, die wir fuer diese Demo ebenfalls brauchen.
\n\nUm nun alle Gruppen der Master-Zone aus dem DAC-System zu entlassen, links-klick einfach auf eine beliebige Einheit in der Zone.
\n\nDie entlassenen Gruppen werden dann kurze Zeit spaeter zum stehen kommen, da sie keinerlei Wegpunkte mehr haben. Ausserdem wurden alle DAC-Merkmale wie ""Reduzierung, Respawn, Loeschen, Verhalten usw."" geloescht.
\n\nMoechtest Du die Gruppen wieder in das DAC-System einbinden, links-klick einfach nochmal auf eine der Einheiten.
\n\nInfo: Wird eine reduzierte Gruppe entlassen, wird diese Gruppe erst wieder komplett aufgebaut, bevor sie den DAC verlaesst.
"];
"DAC V3.0 Demonstration - Teil 13" hintC [_text];

sleep 0.05;
hint "Erweiterte Info verfuegbar";
player sidechat "Erweiterte Info verfuegbar";
dHint = player addaction ["Erweiterte Info","DemoText.sqf",[1]];
}
else
{
_text = format["
[DAC-Gruppen aus dem DAC-System entfernen]
\n\nEs gibt optional die Moeglichkeit, den entlassenen Gruppen ein paar Wegpunkte einer beliebigen DAC-Zone mitzugeben.
\n\nDadurch bleiben die Gruppen in Bewegung, sind aber komplett aus dem DAC-System entfernt (es laeuft dann nur noch ein simples ""Move-Skript"").
\n\nUm diese Funktion in dieser Demo zu benutzen, halte einfach die Shift-Taste gedrueckt, wenn Du die DAC-Gruppen aus dem System entfernst.
\n\nDu kannst dann beobachten, wie sich die Gruppen in Richtung Wegpunkt-Zone bewegen.
"];
"DAC V3.0 Demonstration - Teil 13" hintC [_text];
player removeAction dHint;
};