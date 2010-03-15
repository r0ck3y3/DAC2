if(time < 2) then
{

waituntil{time > 1};

_text = format["
[globaler DAC-Respawn]
\n\nHier nun die Demo, die Dir die Moeglichkeiten mit dem globalen DAC-Respawn zeigt.
\n\nGlobaler Respawn bedeutet beim DAC, dass egal in welcher Zone eine Gruppe ausgeloescht wird, DAC versuchen wird die Gruppe in irgend einem DAC-Camp
\nzu respawnen.
\n\nVorausetzung dafuer is wieder, dass mindestens ein DAC-Camp fuer die Seite zur Verfuegung steht.
\n\nEs spielt aber beim ""globalen Respawn"" keine Rolle, wo sich das DAC-Camp befindet, da jedes verfuegbare DAC-Camp in Frage kommt.
\n\nGibt es mehr wie ein Camp auf einer Seite, wird DAC per Zufall entscheiden, wo eine neue Gruppe generiert wird, vorausgesetzt es sind noch Respawns verfuegbar.
\n\nOk, warte nun, bis DAC das Szenario generiert hat ...
"];
"DAC V3.0 Demonstration - Teil 15" hintC [_text];

sleep 1;
hintsilent "";
waituntil {(DAC_Basic_Value > 0)};
sleep 1;

_text = format["
[globaler DAC-Respawn]
\n\nFuer diese Demo habe ich 3 groessere Master-Zonen platziert, in denen ein paar Gruppen generiert werden, und in einer dieser Zonen wird zusaetzlich ein DAC-Camp generiert.
\n\nAusserdem habe ich 3 kleine Master-Zonen gesetzt, in denen nur jeweils ein Camp generiert wird. Insgesamt stehen also 4 DAC-Camps zu Verfuegung.
\n\nWenn Du gleich wieder eine Gruppe mit einem Mausklick niederstreckst, dann wird DAC irgendwo in einem der DAC-Camps eine neue Gruppe generieren.
\n\nDiesmal sind auch schwere Fahrzeuge mit von der Partie ... also, lass es ""krachen"" ;-)
"];
"DAC V3.0 Demonstration - Teil 15" hintC [_text];

sleep 0.05;
hint "Erweiterte Info verfuegbar";
player sidechat "Erweiterte Info verfuegbar";
dHint = player addaction ["Erweiterte Info","DemoText.sqf",[1]];
}
else
{
_text = format["
[globaler DAC-Respawn]
\n\nEs gibt noch eine Besonderheit bei den DAC-Camps:
\n\nEs ist moeglich anstatt einem Camp, nur eine Respawn-Position zu definieren. Das bedeutet ... es wird weder ein richtiges Camp generiert, noch die dazugehoerige Gruppe, die das Camp bewacht, sondern nur eine Position, an der die neuen Gruppen respawnen.
\n\nIn dieser Demo ist das mittlere Camp (was kein Camp ist) eine solche Respawn-Position, die ich genau in das Hangar-Gebaude platziert habe.
\n\nAusserdem habe ich fuer diese Respawn-Position nur ""Infanterie"" definiert. Es koennen an dieser Position also keine Fahrzeuge respawnd werden.
"];
"DAC V3.0 Demonstration - Teil 15" hintC [_text];
player removeAction dHint;
};