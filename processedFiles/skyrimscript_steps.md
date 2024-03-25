# Title

1. Firstly, I removed the logo and the table of contents from the top of the document.
1. ```&``` replaced with ```&amp;```
1. No angle brackets were found
1. ```_*``` to highlight all underscore characters, replaced with nothing to remove them
1. ```¯*``` to highlight all upperscore (not sure what the actual name is) characters, replace with nothing to remove them
1. ```^\n$``` to grab and remove the huge blocks of newlines
1. ```\h{2,}``` to select 2 or more "horizontal whitespaces" to eliminate all the space characters in front of many lines of dialogue
1. ```#.*$``` to grab the headers that are marked with ####### and eliminate them
1. ```\h\($``` to finish cleaning up the ##### headers
1. ```(.*)``` replaced with ``` \1``` to add spaces (needed for the next step).
1. ```(.+)\n``` to eliminate the newlines ```\1```
1. ```^\h``` replaced with nothing, to eliminate the whitespace at the beginning of each line
1. ```\|*``` to grab all the random vertical bar characters for removal.
1. ```(.*):(.*)``` replaced with ```<dia speaker="\1">\2</dia>``` to capture dialogue
1. ```\[.+?\.\]``` to grab all "stage directions" since we only care about the script, replaced with nothing to remove them
1. ```^\n$``` to eliminate the empty lines that were created
1. ```(\d+).*\[OPTIONAL\].*\[MQ[0-9]+\]``` to find the two optional main quests, replaced with ```<quest type="main" num="\1" req="optional"/>```
1. ```<(quest .+)/>(\n(.)+)(<quest.+?>)``` replaced with ```<\1>\2</quest>\4```
1. ```(\d+).*\[MQ[0-9]+\]``` to highlight all main quest numberings, replaced by ```<quest type="main" num="\1" req="required"/>```
1. ```\[DR([0-9]+)\].*\n``` to highlight quests from the Dragonborn DLC, replaced by ```<quest type="dlc" num="\1" req="dlc"/>```
1. ```\[CMP([0-9]+)\].*\n``` to highlight all quests from the Companions, replaced with ```<quest type="companions" num="\1" req="no"/>```
1. ```\[CW([0-9]+)\].*\n``` to highlight all quests from the College of Winterhold, replace with ```<quest type="college" num="\1" req="no"/>```
1. ```\[DQ([0-9]+)\].*\n``` to highlight all quests from Daedra, replaced with ```<quest type="daedra" num="\1" req="no"/>```
1. ```\[DW([0-9]+)\].*\n``` to highlight all quests from the Dawnguard DLC, replaced with ```<quest type="dawnguard" num="\1" req="dlc"/>```
1. ```\[DW([0-9]+[a-z])\].*\n``` to highlight Dawnguard quest branches, replaced with ```<quest type="dawnguard" num="\1" req="dlc"/>```
1. ```\[DB([0-9]+)\].*\n``` to highlight all quests from the Dark Brotherhood, replaced with ```<quest type="darkBrotherhood" num="\1" req="no"/>```
1. ```\[TH([0-9]+)\].*\n``` to highlight all quests from the Thieve's Guild, replaced with ```<quest type="thievesGuild" num="\1" req="no"/>```
1. ```\[MP([0-9]+)\].*\n``` to highlight all quests from the Imperial side of the Civil War, replaced with ```<quest type="civilWar" num="\1" faction="imperial" req="no"/>```
1. ```\[ST([0-9]+)\].*\n``` to highlight all quests from the Stormcloak side of the Civil War, replaced with ```<quest type="civilWar" num="\1" faction="stormcloak" req="no"/>```

<dia speaker="Durnehviir">|<dia speaker="Paarthurnax">|<dia speaker="Odahviing"><dia speaker="Alduin">|<dia speaker="Sahrotaar">|<dia speaker="Sahloknir">|<dia speaker="Mirmulnir">|<dia speaker="Miraak">|<dia speaker="Greybeards">

