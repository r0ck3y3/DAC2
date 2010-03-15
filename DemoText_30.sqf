waituntil{time > 1};

_text = format["
DAC-Logik INTERN
\n\nDie folgenden 4 Beispiele sind auch gleichzeitig die letzten Beispiele.
\n\nAnhand dieser Beispiele zeige ich Dir nochmal die Grundeinstellungen bzw. die Konfigurationsmoeglichkeiten.
\n\nDiese Mission z.B. zeigt Dir die einfachste Art u. Weise, den DAC zu starten bzw. zu initialisieren.
\n\nHast Du die Addons installiert, benoetigst Du in Deiner Mission nur die DAC-Logik ""intern"" und natuerlich eine DAC-Zone.
\n\nDein Missionsordner bleibt dabei frei von jeglichen DAC-Dateien.
\n\nVerwendet werden dann die DAC-internen Konfigurations-Dateien, die einen gewissen Standard enthalten, um z.B. eine Testmission aufzubauen.
\n\nAuf welche Standard-Einstellungen Du Zugriff hast, entnimmst Du bitte der ""Liesmich"".
"];
"DAC V3.0 Beispielmission - Teil 30" hintC [_text];

sleep 0.5;

_text = format["
DAC-Logik INTERN
\n\nNormalerweise wuerden nicht mal Marker angezeigt, da diese in der Grundeinstellung deaktiviert sind.
\n\nDamit Du aber siehst, dass der DAC auch was generiert hat, habe ich die DAC-Marker per Parameter aktiviert.
\n\nSchau Dir die Init-Zeile der DAC-Logik an. Dort findest Du folgenden Eintrag: DAC_Marker = 3
\n\nDas bedeutet, das der DAC die interne Marker-Konfiguration 3 benutzt.
\n\nUm die DAC-Marker zu deaktivieren, musst Du entweder den Init-Eintrag loeschen, oder Du schreibst:
\nDAC_Marker = 0 ... dass hat den gleichen Effekt.
\n\nOder probier einfach mal den Eintrag:
\nDAC_Marker = 5
"];
"DAC V3.0 Beispielmission - Teil 30" hintC [_text];