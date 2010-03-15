waituntil{time > 1};

_text = format["
DAC-Logik INTERN + Grundeinstellungen
\n\nUm die Grundeinstellungen vom DAC zu veraendern, gibt es die Datei ""DAC_Config_Creator"".
\n\nDiese Config-Datei musst Du nicht zwingend auslagern, um die Einstellungen zu aendern. Du kannst diese Grundparameter z.B. einfach ueber eine weitere Logik-Einheit ansprechen bzw. aendern.
\n\nAls Beispiel gilt diese Mission, in der ich einige Grundparameter einfach per Logik-Einheit anspreche.
\n\nDas hat den Vorteil, dass Du diese Einstellungen direkt im Editor vornehmen kannst und nicht den Umweg ueber eine Datei machen musst.
\n\nSchau Dir die Datei ""DAC_Config_Creator"" genau an, um zu sehen welche Eistellungen Du ueber diesen Weg vornehmen kannst.
\n\nInfo: In dieser Mission wurden nur etwa die Haelfte aller Grundeinstellungen verwendet.
"];
"DAC V3.0 Beispielmission - Teil 32" hintC [_text];