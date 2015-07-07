PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE col (
    id              integer primary key,
    crt             integer not null,
    mod             integer not null,
    scm             integer not null,
    ver             integer not null,
    dty             integer not null,
    usn             integer not null,
    ls              integer not null,
    conf            text not null,
    models          text not null,
    decks           text not null,
    dconf           text not null,
    tags            text not null
);
INSERT INTO "col" VALUES(1,1413252000,1436304509096,1436304509008,11,0,0,0,'{"nextPos": 1, "estTimes": true, "activeDecks": [1], "sortType": "noteFld", "timeLim": 0, "sortBackwards": false, "addToCur": true, "curDeck": 1, "newBury": true, "newSpread": 0, "dueCounts": true, "curModel": "1436304509009", "collapseTime": 1200}','{"1417556227596": {"vers": [], "name": "IPA phonation-94d3f", "tags": ["ipa_phonation"], "did": 1417548274686, "usn": -1, "req": [[0, "all", [0]]], "flds": [{"name": "Name", "media": [], "sticky": false, "rtl": false, "ord": 0, "font": "Liberation Sans", "size": 12}, {"name": "Description", "media": [], "sticky": false, "rtl": false, "ord": 1, "font": "Liberation Sans", "size": 12}, {"name": "Examples", "media": [], "sticky": false, "rtl": false, "ord": 2, "font": "Liberation Sans", "size": 12}, {"name": "D example", "media": [], "sticky": false, "rtl": false, "ord": 3, "font": "Liberation Sans", "size": 40}], "sortf": 0, "latexPre": "\\documentclass[12pt]{article}\n\\special{papersize=3in,5in}\n\\usepackage[utf8]{inputenc}\n\\usepackage{amssymb,amsmath}\n\\pagestyle{empty}\n\\setlength{\\parindent}{0in}\n\\begin{document}\n", "tmpls": [{"name": "Forward", "qfmt": "{{Name}}", "did": null, "bafmt": "", "afmt": "{{FrontSide}}\n\n<hr id=answer>\n\n{{Name}}\n\n<br /><br />\n\n{{Description}}\n\n<br><br>\n\nDiacritic:<br>\n<span class=\"diacritic\">{{D example}}</span>", "ord": 0, "bqfmt": ""}], "latexPost": "\\end{document}", "type": 0, "id": 1417556227596, "css": ".card {\n font-family: arial;\n font-size: 20px;\n text-align: center;\n color: black;\n background-color: white;\n}\n\n.diacritic {\n  font-size: 30px;\n}", "mod": 1436304481}, "1414950081501": {"vers": [], "name": "IPA diacritics and suprasegmentals-94d3f", "tags": ["ipa_diacritics_nonstandard", "ipa_diacritics_phonation"], "did": 1414950159510, "usn": -1, "req": [[0, "all", [1]]], "flds": [{"name": "Note ID", "media": [], "sticky": false, "rtl": false, "ord": 0, "font": "Liberation Sans", "size": 20}, {"name": "Symbol", "media": [], "sticky": false, "rtl": false, "ord": 1, "font": "Liberation Sans", "size": 40}, {"name": "Name", "media": [], "sticky": false, "rtl": false, "ord": 2, "font": "Liberation Sans", "size": 12}, {"name": "Description", "media": [], "sticky": false, "rtl": false, "ord": 3, "font": "Liberation Sans", "size": 12}, {"name": "Examples", "media": [], "sticky": false, "rtl": false, "ord": 4, "font": "Liberation Sans", "size": 12}, {"name": "Diacritic type", "media": [], "sticky": false, "rtl": false, "ord": 5, "font": "Liberation Sans", "size": 12}], "sortf": 1, "tmpls": [{"name": "Forward", "qfmt": "{{Symbol}}", "did": null, "bafmt": "", "afmt": "{{FrontSide}}\n\n<hr id=answer>\n\n{{Name}}\n<br /><br />\n{{Description}}sdf", "ord": 0, "bqfmt": ""}], "mod": 1436304481, "latexPost": "\\end{document}", "type": 0, "id": 1414950081501, "css": ".card {\n font-family: arial;\n font-size: 20px;\n text-align: center;\n color: black;\n background-color: white;\n}\n", "latexPre": "\\documentclass[12pt]{article}\n\\special{papersize=3in,5in}\n\\usepackage[utf8]{inputenc}\n\\usepackage{amssymb,amsmath}\n\\pagestyle{empty}\n\\setlength{\\parindent}{0in}\n\\begin{document}\n"}}','{"1": {"desc": "", "name": "Default", "extendRev": 50, "usn": 0, "collapsed": false, "newToday": [0, 0], "timeToday": [0, 0], "dyn": 0, "extendNew": 10, "conf": 1, "revToday": [0, 0], "lrnToday": [0, 0], "id": 1, "mod": 1436304507}, "1436304481145": {"name": "IPA common concepts", "extendRev": 50, "usn": -1, "collapsed": false, "newToday": [266, 0], "timeToday": [266, 0], "dyn": 0, "extendNew": 10, "conf": 1, "revToday": [266, 0], "lrnToday": [266, 0], "id": 1436304481145, "mod": 1436304499, "desc": ""}}','{"1": {"name": "Default", "replayq": true, "lapse": {"leechFails": 8, "minInt": 1, "delays": [10], "leechAction": 0, "mult": 0}, "rev": {"perDay": 100, "fuzz": 0.05, "ivlFct": 1, "maxIvl": 36500, "ease4": 1.3, "bury": true, "minSpace": 1}, "timer": 0, "maxTaken": 60, "usn": 0, "new": {"perDay": 20, "delays": [1, 10], "separate": true, "ints": [1, 4, 7], "initialFactor": 2500, "bury": true, "order": 1}, "mod": 0, "id": 1, "autoplay": true}}','{}');
CREATE TABLE notes (
    id              integer primary key,   /* 0 */
    guid            text not null,         /* 1 */
    mid             integer not null,      /* 2 */
    mod             integer not null,      /* 3 */
    usn             integer not null,      /* 4 */
    tags            text not null,         /* 5 */
    flds            text not null,         /* 6 */
    sfld            integer not null,      /* 7 */
    csum            integer not null,      /* 8 */
    flags           integer not null,      /* 9 */
    data            text not null          /* 10 */
);
INSERT INTO "notes" VALUES(1414950212886,'KZ-8=ODwE>',1414950081501,1417557958,-1,' ipa_diacritics_phonation ','1414950212886l̥VoicelessVoicelessness is the property of sounds being pronounced without the larynx vibrating.&nbsp;Diacritics are typically used with letters for prototypically voiced sounds, such as vowels and sonorant consonants.<div>peculiar [pʰə̥ˈkjuːliɚ]</div>potato [pʰə̥ˈteɪtoʊ]Phonation diacritics','l̥',922339316,0,'');
INSERT INTO "notes" VALUES(1414950469494,'yO..<oPU]|',1414950081501,1417557961,-1,' ipa_diacritics_phonation ','1414950469494s̬VoicedDiacritics are typically used with letters for prototypically voiceless sounds.Phonation diacritics','s̬',2944224262,0,'');
INSERT INTO "notes" VALUES(1414950594049,'CCIuK3b9X1',1414950081501,1417557222,-1,' ipa_diacritics_consonant_release ','1414950594049tʰAspiratedIs the strong burst of air that accompanies either the release or, in the case of preaspiration, the closure of some obstruents.teck [t<sup>h</sup>ek]Consonant-release diacritics','tʰ',3231077207,0,'');
INSERT INTO "notes" VALUES(1414950663941,'n4Jyv~PTCi',1414950081501,1417557222,-1,' ipa_diacritics_coarticulation ','1414950663941tʷLabializedCo-articulation diacritics','tʷ',1285354839,0,'');
INSERT INTO "notes" VALUES(1414950679706,'K;A9PZ{!b!',1414950081501,1417557222,-1,' ipa_diacritics_coarticulation ','1414950679706tʲPalatalizedCo-articulation diacritics','tʲ',2753144738,0,'');
INSERT INTO "notes" VALUES(1414950710164,'n/bf06ZLlJ',1414950081501,1417557222,-1,' ipa_diacritics_coarticulation ','1414950710164tˠVelarizedCo-articulation diacritics','tˠ',684285682,0,'');
INSERT INTO "notes" VALUES(1414950735189,'nrz2>3}`Ll',1414950081501,1417557222,-1,' ipa_diacritics_coarticulation ','1414950735189ẽNasalizedCo-articulation diacritics','ẽ',2777189647,0,'');
INSERT INTO "notes" VALUES(1414950802965,'fOz.),9SSN',1414950081501,1417557222,-1,' ipa_suprasegmentals ','1414950802965ˈa(Primary) stress markIs the relative emphasis that may be given to certain syllables in a word.mainstream [ˈmeɪnstriːm]Suprasegmentals - Length, stress, and rhythm','ˈa',3524050437,0,'');
INSERT INTO "notes" VALUES(1414950837206,'L3T@Xxg`_,',1414950081501,1417557222,-1,' ipa_suprasegmentals ','1414950837206aːLenght markIn phonetics, length or quantity is a feature of sounds that have distinctively extended duration compared with other sounds. There are long vowels as well as long consonants (the latter are often called geminates).feet [fiːt]Suprasegmentals - Length, stress, and rhythm','aː',3201678417,0,'');
INSERT INTO "notes" VALUES(1414951146773,'uC|?ivtLZm',1414950081501,1417557222,-1,' ipa_suprasegmentals ','1414951146773ˌaSecondary stress markIs the weaker of two degrees of stress in the pronunciation of a word.pronunciation [pɹəˌnʌnsiˈeɪʃən]Suprasegmentals - Length, stress, and rhythm','ˌa',650214768,0,'');
INSERT INTO "notes" VALUES(1414951184464,'raS9&Cd2&>',1414950081501,1417557222,-1,' ipa_suprasegmentals ','1414951184464aˑHalf-length markIn phonetics, length or quantity is a feature of sounds that have distinctively extended duration compared with other sounds. There are long vowels as well as long consonants (the latter are often called geminates).police [pʰə̆ˈliˑs]Suprasegmentals - Length, stress, and rhythm','aˑ',1220844886,0,'');
INSERT INTO "notes" VALUES(1414951240270,'J5>gPb$8);',1414950081501,1417557196,-1,' ipa_diacritics_consonant_release ','1414951240270dʱBreathy-voice-aspiratedAspiration of voiced stop consonants.Consonant-release diacritics','dʱ',3915323375,0,'');
INSERT INTO "notes" VALUES(1414951264707,'B+p~`bQ<sK',1414950081501,1417557222,-1,' ipa_diacritics_coarticulation ','1414951264707tˤPharyngealizedCo-articulation diacritics','tˤ',1936610837,0,'');
INSERT INTO "notes" VALUES(1414951276403,'uYCxnFC|*+',1414950081501,1417557222,-1,' ipa_diacritics_coarticulation ','1414951276403ɝRhotacizedCo-articulation diacritics','ɝ',3030770946,0,'');
INSERT INTO "notes" VALUES(1414951646360,'F(!FrJ3!`Y',1414950081501,1417557222,-1,' ipa_diacritics_articulation ','1414951646360t̪DentalArticulation diacritics','t̪',1048964783,0,'');
INSERT INTO "notes" VALUES(1414951757892,'Bg//)r/UZ5',1414950081501,1417557222,-1,' ipa_diacritics_articulation ','1414951757892d̺ApicalArticulation diacritics','d̺',1719634547,0,'');
INSERT INTO "notes" VALUES(1414951775979,'b=Rok|3&CT',1414950081501,1417557222,-1,' ipa_diacritics_articulation ','1414951775979e̝RaisedArticulation diacritics','e̝',3316403757,0,'');
INSERT INTO "notes" VALUES(1414951789819,'d(/j*Y7`g:',1414950081501,1417557222,-1,'','1414951789819e̞LoweredArticulation diacritics','e̞',2608969409,0,'');
INSERT INTO "notes" VALUES(1414951807964,'zt=hTtCUmf',1414950081501,1417557222,-1,' ipa_diacritics_syllabicity ','1414951807964e̯Non-syllabicNot forming a syllable or the nucleus of a syllable.Syllabicity diacritics','e̯',2348765159,0,'');
INSERT INTO "notes" VALUES(1414951818910,'zA9s{g4*+`',1414950081501,1417557222,-1,' ipa_diacritics_syllabicity ','1414951818910n̩SyllabicA syllabic consonant is a consonant which either forms a syllable on its own, or is the nucleus of a syllable.even [i''vn̩] (english dialect)<div>katten [k<sup>h</sup>ad̥n̩] (danish colloquial - schwa-assimilation)</div>Syllabicity diacritics','n̩',1216184256,0,'');
INSERT INTO "notes" VALUES(1414951838989,'f~x:+fuvw6',1414950081501,1417557222,-1,' ipa_diacritics_coarticulation ','1414951838989ɫVelarized or&nbsp;pharyngealizedCo-articulation diacritics','ɫ',1600038040,0,'');
INSERT INTO "notes" VALUES(1414954451507,'G3y/Vq4b4J',1414950081501,1417557222,-1,' ipa_suprasegmentals ','1414954451507.Syllabe breakSuprasegmentals - Length, stress, and rhythm','.',3588767263,0,'');
INSERT INTO "notes" VALUES(1414954470610,'JZ&.db2jw0',1414950081501,1417557222,-1,' ipa_suprasegmentals ','1414954470610ə̆Exta shortIndicates a speech sound (usually a vowel) with less than normal or extra short duration.police [pʰə̆ˈliˑs]Suprasegmentals - Length, stress, and rhythm','ə̆',3501218338,0,'');
INSERT INTO "notes" VALUES(1414954484768,'gsQ4EAS5%Z',1414950081501,1417557222,-1,' ipa_suprasegmentals ','1414954484768s‿aLinkingLiaison is the pronunciation of a latent word-final consonant immediately before a following vowel sound.Suprasegmentals - Length, stress, and rhythm','s‿a',1113298098,0,'');
INSERT INTO "notes" VALUES(1414957353655,'OLw:g#7~b?',1414950081501,1417557968,-1,' ipa_diacritics_phonation ','1414957353655b̤Breathy voiced<div>Vocal folds vibrating weakly and inefficiently, allowing large amounts of air to escape. Also called murmured voice, soughing, or susurration.</div>Phonation diacritics','b̤',4160114325,0,'');
INSERT INTO "notes" VALUES(1414957382118,'Q!F=j`wmt#',1414950081501,1417557963,-1,' ipa_diacritics_phonation ','1414957382118b̰Creaky voiced<div>Vocal folds vibrating tensely; the front part of the vocal folds stays closed;</div><div>fundamental frequency low.</div>Phonation diacritics','b̰',580366716,0,'');
INSERT INTO "notes" VALUES(1414957458920,'H3vB[^Q>8J',1414950081501,1417557222,-1,' ipa_diacritics_coarticulation ','1414957458920ɔ̹More roundedCo-articulation diacritics','ɔ̹',1248311962,0,'');
INSERT INTO "notes" VALUES(1414957474549,'HSO`:F++3u',1414950081501,1417557222,-1,' ipa_diacritics_coarticulation ','1414957474549ɔ̜Less roundedCo-articulation diacritics','ɔ̜',3437568526,0,'');
INSERT INTO "notes" VALUES(1414957487251,'gZr]}^uM#7',1414950081501,1417557222,-1,' ipa_diacritics_coarticulation ','1414957487251tᶣLabio-palatalizedCo-articulation diacritics','tᶣ',752812117,0,'');
INSERT INTO "notes" VALUES(1414957520818,'Fz3yk9F{j1',1414950081501,1417557222,-1,' ipa_diacritics_coarticulation ','1414957520818e̘Advanced tongue rootCo-articulation diacritics','e̘',3745739899,0,'');
INSERT INTO "notes" VALUES(1414957536059,'dX#G>;jw|k',1414950081501,1417557222,-1,' ipa_diacritics_coarticulation ','1414957536059e̙Retracted tongue rootCo-articulation diacritics','e̙',2115587050,0,'');
INSERT INTO "notes" VALUES(1414958689670,'o-JH;W&WRZ',1414950081501,1417557222,-1,' ipa_diacritics_consonant_release ','1414958689670d̚No audible releaseA stop with no audible release, commonly called an unreleased stop, is a stop consonant with no release burst: no audible indication of the end of its occlusion (hold).&nbsp;<div><br /></div><div>Two consonants overlap so that the release of the first takes place during the hold of the second, masking the first consonant''s release and making it inaudible.</div>doctor [ˈdɒk̚tər]Consonant-release diacritics','d̚',3090832283,0,'');
INSERT INTO "notes" VALUES(1414958709999,'oytn$7hZA#',1414950081501,1417557222,-1,' ipa_diacritics_consonant_release ','1414958709999dⁿNasal releaseIs the release of a stop consonant into a nasal.catnip [ˈkætⁿnɪp]Consonant-release diacritics','dⁿ',595884273,0,'');
INSERT INTO "notes" VALUES(1414958724350,'QBd3>8~%fW',1414950081501,1417557222,-1,' ipa_diacritics_consonant_release ','1414958724350dˡLateral releaseIs the release of a plosive consonant into a lateral consonant.spotless [ˈspɒtˡlɨs]<div>middle [ˈmɪdˡl̩]</div>Consonant-release diacritics','dˡ',2415837069,0,'');
INSERT INTO "notes" VALUES(1414958868288,'K?h<$!(QhM',1414950081501,1417557222,-1,' ipa_diacritics_articulation ','1414958868288t̼LinguolabialArticulation diacritics','t̼',2496401542,0,'');
INSERT INTO "notes" VALUES(1414958885435,'si56KfA|c_',1414950081501,1417557222,-1,' ipa_diacritics_articulation ','1414958885435t̻LaminalArticulation diacritics','t̻',1892585193,0,'');
INSERT INTO "notes" VALUES(1414958898498,'b6tKc8>&p+',1414950081501,1417557222,-1,' ipa_diacritics_articulation ','1414958898498u̟AdvancedArticulation diacritics','u̟',1415868409,0,'');
INSERT INTO "notes" VALUES(1414958947399,'ub7!9,LnP',1414950081501,1417557222,-1,' ipa_diacritics_articulation ','1414958947399i̠RetractedArticulation diacritics','i̠',3135536518,0,'');
INSERT INTO "notes" VALUES(1414958960397,'F^-)vJ?-9X',1414950081501,1417557222,-1,' ipa_diacritics_articulation ','1414958960397ëCentralizedArticulation diacritics','ë',996623188,0,'');
INSERT INTO "notes" VALUES(1414958972251,'DzVNNYJgCQ',1414950081501,1417557222,-1,' ipa_diacritics_articulation ','1414958972251e̽Mid-centralizedArticulation diacritics','e̽',1310800058,0,'');
INSERT INTO "notes" VALUES(1417556750450,'JOUttxx;y$',1417556227596,1417556944,-1,' ipa_phonation ','VoicelessIs the property of sounds being pronounced without the larynx vibrating. Is the lack of phonation.[t][t]','Voiceless',1212188627,0,'');
INSERT INTO "notes" VALUES(1417556754462,'JOAZb~*u3,',1417556227596,1417556873,-1,' ipa_phonation ','Breathy voice[d̤]','Breathy voice',3791597211,0,'');
INSERT INTO "notes" VALUES(1417556791229,'E[<43f-Z#2',1417556227596,1417557094,-1,' ipa_phonation ','Slack voiceThe term slack voice (or lax voice) describes the pronunciation of consonant or vowels with a glottal opening slightly wider than that occurring in modal voice. Such sounds are often referred to informally as <b>lenis</b> or <b>half-voiced</b> in the case of consonants.&nbsp;[d̥]','Slack voice',1323837690,0,'');
INSERT INTO "notes" VALUES(1417556797669,'J`Y],e:)3I',1417556227596,1417556950,-1,' ipa_phonation ','Modal voice[d]','Modal voice',95276888,0,'');
INSERT INTO "notes" VALUES(1417556804092,'fz.+4]KnUh',1417556227596,1417556922,-1,' ipa_phonation ','Stiff voice[d̬]','Stiff voice',1131210198,0,'');
INSERT INTO "notes" VALUES(1417556811308,'KT~29@ks?.',1417556227596,1417556927,-1,' ipa_phonation ','Creaky voice[d̰]','Creaky voice',2386234196,0,'');
INSERT INTO "notes" VALUES(1417556816789,'v_@n=~LsYb',1417556227596,1417556844,-1,' ipa_phonation ','Glottal closure[ʔ͡t]','Glottal closure',1121616305,0,'');
INSERT INTO "notes" VALUES(1417557559839,'g<$hq|xp%]',1414950081501,1417558003,-1,' ipa_diacritics_nonstandard ipa_diacritics_phonation ','1417557272660d̥Slack voicedThis isn''t a standard IPA symbol.','d̥',1108452508,0,'');
INSERT INTO "notes" VALUES(1417557829439,'ydq-`mX@A{',1414950081501,1417557914,-1,' ipa_diacritics_nonstandard ipa_diacritics_phonation ','1417557829439b̬Stiff voice','b̬',1400699196,0,'');
CREATE TABLE cards (
    id              integer primary key,   /* 0 */
    nid             integer not null,      /* 1 */
    did             integer not null,      /* 2 */
    ord             integer not null,      /* 3 */
    mod             integer not null,      /* 4 */
    usn             integer not null,      /* 5 */
    type            integer not null,      /* 6 */
    queue           integer not null,      /* 7 */
    due             integer not null,      /* 8 */
    ivl             integer not null,      /* 9 */
    factor          integer not null,      /* 10 */
    reps            integer not null,      /* 11 */
    lapses          integer not null,      /* 12 */
    left            integer not null,      /* 13 */
    odue            integer not null,      /* 14 */
    odid            integer not null,      /* 15 */
    flags           integer not null,      /* 16 */
    data            text not null          /* 17 */
);
INSERT INTO "cards" VALUES(1414950469437,1414950212886,1436304481145,0,1436304481,-1,0,0,7,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414950594045,1414950469494,1436304481145,0,1436304481,-1,0,0,17,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414950663909,1414950594049,1436304481145,0,1436304481,-1,0,0,34,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414950679699,1414950663941,1436304481145,0,1436304481,-1,0,0,49,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414950710158,1414950679706,1436304481145,0,1436304481,-1,0,0,113,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414950735184,1414950710164,1436304481145,0,1436304481,-1,0,0,126,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414950802896,1414950735189,1436304481145,0,1436304481,-1,0,0,145,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414950837200,1414950802965,1436304481145,0,1436304481,-1,0,0,169,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414950852191,1414950837206,1436304481145,0,1436304481,-1,0,0,182,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414951184414,1414951146773,1436304481145,0,1436304481,-1,0,0,184,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414951202245,1414951184464,1436304481145,0,1436304481,-1,0,0,202,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414951264703,1414951240270,1436304481145,0,1436304481,-1,0,-1,12,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414951276396,1414951264707,1436304481145,0,1436304481,-1,0,0,272,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414951424163,1414951276403,1436304481145,0,1436304481,-1,0,0,277,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414951757887,1414951646360,1436304481145,0,1436304481,-1,0,-1,15,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414951775972,1414951757892,1436304481145,0,1436304481,-1,0,-1,16,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414951789809,1414951775979,1436304481145,0,1436304481,-1,0,0,310,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414951807959,1414951789819,1436304481145,0,1436304481,-1,0,0,312,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414951818905,1414951807964,1436304481145,0,1436304481,-1,0,0,322,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414951838984,1414951818910,1436304481145,0,1436304481,-1,0,0,339,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414951911743,1414951838989,1436304481145,0,1436304481,-1,0,0,341,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414954470508,1414954451507,1436304481145,0,1436304481,-1,0,0,360,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414954484764,1414954470610,1436304481145,0,1436304481,-1,0,0,362,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414954501534,1414954484768,1436304481145,0,1436304481,-1,0,0,375,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414957382113,1414957353655,1436304481145,0,1436304481,-1,0,-1,25,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414957395767,1414957382118,1436304481145,0,1436304481,-1,0,-1,26,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414957474528,1414957458920,1436304481145,0,1436304481,-1,0,-1,27,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414957487246,1414957474549,1436304481145,0,1436304481,-1,0,-1,28,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414957520814,1414957487251,1436304481145,0,1436304481,-1,0,-1,29,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414957536054,1414957520818,1436304481145,0,1436304481,-1,0,-1,30,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414957550283,1414957536059,1436304481145,0,1436304481,-1,0,-1,31,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414958709994,1414958689670,1436304481145,0,1436304481,-1,0,-1,32,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414958724345,1414958709999,1436304481145,0,1436304481,-1,0,-1,33,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414958739193,1414958724350,1436304481145,0,1436304481,-1,0,-1,34,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414958885430,1414958868288,1436304481145,0,1436304481,-1,0,-1,35,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414958898494,1414958885435,1436304481145,0,1436304481,-1,0,-1,36,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414958947393,1414958898498,1436304481145,0,1436304481,-1,0,-1,37,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414958960391,1414958947399,1436304481145,0,1436304481,-1,0,-1,38,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414958972246,1414958960397,1436304481145,0,1436304481,-1,0,-1,39,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1414958986859,1414958972251,1436304481145,0,1436304481,-1,0,-1,40,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1417556754456,1417556750450,1436304481145,0,1436304481,-1,0,0,438,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1417556791224,1417556754462,1436304481145,0,1436304481,-1,0,0,440,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1417556797664,1417556791229,1436304481145,0,1436304481,-1,0,0,441,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1417556804087,1417556797669,1436304481145,0,1436304481,-1,0,0,442,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1417556811304,1417556804092,1436304481145,0,1436304481,-1,0,0,443,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1417556816785,1417556811308,1436304481145,0,1436304481,-1,0,0,444,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1417556844619,1417556816789,1436304481145,0,1436304481,-1,0,0,445,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1417557681815,1417557559839,1436304481145,0,1436304481,-1,0,0,446,0,0,0,0,0,0,0,0,'');
INSERT INTO "cards" VALUES(1417557914521,1417557829439,1436304481145,0,1436304481,-1,0,0,447,0,0,0,0,0,0,0,0,'');
CREATE TABLE revlog (
    id              integer primary key,
    cid             integer not null,
    usn             integer not null,
    ease            integer not null,
    ivl             integer not null,
    lastIvl         integer not null,
    factor          integer not null,
    time            integer not null,
    type            integer not null
);
CREATE TABLE graves (
    usn             integer not null,
    oid             integer not null,
    type            integer not null
);
ANALYZE sqlite_master;
INSERT INTO "sqlite_stat1" VALUES('col',NULL,'1');
CREATE INDEX ix_notes_usn on notes (usn);
CREATE INDEX ix_cards_usn on cards (usn);
CREATE INDEX ix_revlog_usn on revlog (usn);
CREATE INDEX ix_cards_nid on cards (nid);
CREATE INDEX ix_cards_sched on cards (did, queue, due);
CREATE INDEX ix_revlog_cid on revlog (cid);
CREATE INDEX ix_notes_csum on notes (csum);
COMMIT;
