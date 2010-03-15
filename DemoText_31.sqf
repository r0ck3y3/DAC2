waituntil{time > 1};

_text = format["
DAC-Logik INTERN + Config-Datei
\n\nIn diesem Beispiel wird auch wieder die DAC-Logik ""DAC_intern"" benutzt, aber zusaetzlich habe ich eine weitere Logik platziert, die folgenden Eintrag enthaelt:
\nDAC_Single_Config = [""Units"",""Marker""]
\n\nUeber diesen Parameter kannst Du einzelne Config-Dateien in Deinen Missions-Ordner auslagern, um sie an Deine Beduerfnisse anzupassen.
\n\nDie internen Config-Dateien werden dabei uebergangen und DAC erwartet diese Config-Dateien dann direkt in Deinem Missions-Ordner.
\n\nDer Parameter ""DAC_Marker = 1"" z.B. benutzt jetzt nicht die interne Marker-Config, sondern die Marker-Config aus dem Missions-Ordner, und zwar mit der Config-Nr. 1
\n\nDie Unit-Config habe ich auch noch ausgelagert.
\nAchtung: Die Unit-Config benoetigt immer die beiden Config-Nr. 0 + 1 (East + West), kann aber beliebig erweitert werden (siehe ""Liesmich"")
"];
"DAC V3.0 Beispielmission - Teil 31" hintC [_text];

sleep 0.5;

_text = format["
DAC-Logik INTERN + Config-Datei
\n\nFolgende Config-Dateien stehen Dir im DAC zu Verfuegung, um ihn an Deine Beduerfnisse anzupassen:
\n\nDAC_Config_Arti = ""Arti""
\nDAC_Config_Behaviuor = ""Behaviuor""
\nDAC_Config_Camps = ""Camps""
\nDAC_Config_Creator = ""Creator""
\nDAC_Config_Events = ""Events""
\nDAC_Config_Marker = ""Marker""
\nDAC_Config_Objects = ""Objects""
\nDAC_Config_Sound = ""Sound""
\nDAC_Config_Units = ""Units""
\nDAC_Config_Waypoints = ""Waypoints""
\nDAC_Config_Weapons = ""Weapons""
\n\nDie Namen in """" entsprechen den Namen, die Du im
\nParameter ""DAC_Single_Config"" angeben musst.
"];
"DAC V3.0 Beispielmission - Teil 31" hintC [_text];