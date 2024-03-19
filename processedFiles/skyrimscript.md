# Regex on Skyrim Script text

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

I'm going to be honest, once I got to here I hit a major roadblock. I wanted to try and wrap all dialogue in a element denoting the quest, but I realized that the original author of this script at some points didn't write who was currently speaking which dialogue, which meant it didn't get wrapped in a ```<dia>``` element (since ```<dia>``` matched on the name of the speaker followed by the :. As well, some of the dialogue was formatted weirdly such that even if it got tagged, the entire line of dialogue ended up being the attribute value, and nothing was contained in the element itself. I decided to try and just grab all the dialogue from dragons (as well as two characters who very commonly speak in the dragon tongue) but I can't figure out how to. This regex search ```(<dia speaker="Durnehviir">.*</dia>|<dia speaker="Paarthurnax">.*</dia>|<dia speaker="Odahviing">.*</dia>|<dia speaker="Alduin">.*</dia>|<dia speaker="Sahrotaar">.*</dia>|<dia speaker="Sahloknir">.*</dia>|<dia speaker="Mirmulnir">.*</dia>|<dia speaker="Miraak">.*</dia>|<dia speaker="Greybeards">.*</dia>)``` properly matches on all such dialogue, but I don't know how to either remove everything OTHER than whats matched, or how to match on the opposite of this expressions dialogue (if that makes sense).

The last meaningful thing I did to the document was convert it to an XML file and wrap a root element.