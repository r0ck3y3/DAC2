waituntil{time > 1};

_text = format["
DAC-Logic EXTERN
\n\nThis last example shows you, how to get easy access to the DAC-Config files, without being forced to store them one by one. 
\n\nFor this, you will just need to use the DAC-Logic ""DAC_extern"", which will store all important config files in your mission folder.
\n\nIn this case, you will need to copy the ""DAC"" folder into your mission folder.
\n\nThe DAC folder contains all DAC-Config files, which you can change/modify.
\n\nDAC will avoid the standard configuration which is stored in the addon folder and use the external DAC config files instead.
"];
"DAC V3.0 Demonstration - Part 33" hintC [_text];

sleep 0.5;

_text = format["
DAC-Logic EXTERN
\n\nWell, that's it! You can find more information in the ""Readme"" file ;-).
\n\nI hope this demonstration was fun and helped you to better understand DAC and it's possibilities.
\n\nPlease leave some feedback in the official forums. 
\n\nThanks for your interest and have fun!
"];
"DAC V3.0 Demonstration - Part 33" hintC [_text];