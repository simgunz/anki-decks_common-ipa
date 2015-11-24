IPA common concepts deck
========================

This deck contains all the common symbols of the IPA (diacritics, pauses, etc.). It doesn't contain the sounds of the IPA,
because it's better to learn them for each language since the IPA is usually adapted for each language.

THIS DECK IS NOT YET COMPLETE.

Building the deck
=================

The deck can be quickly built by executing the script:

    build-deck.sh

This script creates the SQLite3 binary database from the database dump and compresses all the files (a part from
the database dump) in a zip archive with extension '.apkg' that can be directly imported into anki.

Under Windows the script can't be used, but the previous two operations can be easily done manually.

Version control
===============

This deck is managed by git to keep track of all the changes. To update the deck in git you should proceed as follows:

* Export the deck from anki without including the scheduling information
* Extract the .apkg file into the _deck_ folder (under the git root directory)
* Execute the script

    update-dump.sh

The last operation dumps the SQLite3 binary database (collection.anki2) to a text file and remove the binary one,
in order to make it easier to manage the database with git.

Under Windows the script can't be used, but the previous operation can be easily done manually.

Author
======

Simone Gaiarin (simgunz@gmail.com)

License
=======

This deck is released under the [CreativeCommon BY-NC-SA license](https://creativecommons.org/licenses/by-nc-sa/4.0/legalcode).

References
==========

- [simgunz's Blog](http://simgunz.org/projects)
- [Fluent forever](http://fluent-forever.com)
