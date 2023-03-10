enum NicknameEventAction { backPressed, tabChanged, selectionTap }

enum NicknamePlacement { tabBarTop }

class CategoryTab {
  ///  this will be the title of the tabBar
  final String title;

  /// These are the list of names
  final List<String> names;

  CategoryTab({required this.title, required this.names});

  ///  [defaultNames] are pre-defined names provided by this package
  static final defaultNames = [
    CategoryTab(title: 'Bad Ass Names', names: _badAssNames),
    CategoryTab(title: 'Girlz Names', names: _girlsName),
    CategoryTab(title: 'Boyz Names', names: _boysNames),
    CategoryTab(title: 'Legendary Names', names: _legendaryNames),
    CategoryTab(title: 'Popular Names', names: _popularNames),
    CategoryTab(title: 'Random Names', names: _randomNames),
    CategoryTab(title: 'Squad Names', names: _squadNames),
    CategoryTab(title: 'Rare Names', names: _rareNames),
    CategoryTab(title: 'Top Names', names: _topNames),
  ];

  static const _badAssNames = [
    'Evillious Energy',
    'Duke of Doom',
    'Eat Bullets',
    'Monstrous Michel',
    'Collateral Damage',
    'Gabriel Groomer',
    'Shoot 2 Kill',
    'Annihilator',
    'Veteran  Death',
    'Walk Alone',
    'Tonight Gamer',
    'Walking Pegasus',
    'Dead Deal',
    'Killer Romeo',
    'Overkill',
    'Best Bluster',
    ' Brute Fact',
    'Green Ghost',
    'Bloss Flop',
    'Terrific Tornado',
    'Tango Boss',
    'Accurate Arrow',
    'Kill Spree',
    'Optimal Aces',
    'Dark Knight',
    'Inimical Thugs',
    'Knuckle Duster',
    'Local Back Stabber',
    'Happy Killing',
    'Fear Butchers',
    'Guncap Slingbad',
    'Highlander Monk',
    'Left Divide',
    'Jack The Ripper',
    'Hog Butcher',
    'Psychedelic Servicemen',
    'Militaristic'
        ' Fighting Machine',
    'Keen Six',
    'Junkyard Dog',
    'Fuzzy Pack',
    'Straight Gangsters',
    'Mortified Coercion',
    'Lyrical Armed ',
    'Outrageous Dominance',
    'Brash Thugs',
    ' Complex Slayers',
    'Faulty Devils',
    'Odd Hooligans',
    'Organic Punks',
    'Hungry Admirals',
    'Cloudy Perpetrator',
    'Keen Team Six',
    'PUBJESUS',
    'Inimical Thugs',
    'Agent Hercules',
    'Metal Star',
    'Night Magnet',
    ' Headshooter',
    'Optimal Aces',
    'Alpha Returns',
    'Dancing Madman',
    'Abnormal Vigor',
    'Ball Blaster',
    'Kill Switch',
    'Pixie Soldier',
    'Pro Headshot',
    'Grave Digger',
    'Cool Shooter',
    'Dead Shot',
    'Thunderbeast',
    'Bad soldier',
    'Local Grim Reaper',
    'Captain Jack',
    'Outrageous Dominance',
    'Agent 47',
    ' Fighting Machine',
    'PUBGian',
    'Lyrical Armed Services',
    'Quarrelsome Strategy',
    'Hungry Admirals',
    'Cloudy Perpetrator',
    'Fuzzy Pack',
    'Straight Gangsters',
    'Psychedelic Servicemen',
    'Homely Sharpshooters',
    'Plain Privileg',
    'Annoyed Power',
    'Demonic Criminals',
    ' Fear Butchers',
    'Left Divide',
  ];
  static const _girlsName = [
    'Zaal????m G????rl',
    ' Chatpat???? Kud????',
    'Myx???t??r??????ux G????rl',
    '?????????? ch??r????',
    ' ????t?? ??????h??',
    ' C??oc??????Ty G????????',
    '????b?? ???? p??????????x',
    '?????????? ??????????????',
    ' n??ught?? kud??',
    'p???r???i???n???c???e???s',
    'C??C?? M??C??',
    'T????K??????? ??????????????????',
    '????s???? l???? g????r?? ch????',
    '????????h???? m????rch??',
    '???????????? ???? ????????',
    '???????? ???????? ??????????',
    '?????????? ch??r????',
    '???????? ????????',
    'C??oc??????Ty G????????',
    'I??ter??at????o??al ??w????????zx',
    '?????????????????? ??????????',
    'n??ught?? kud??',
    ' ???????????????????g?????',
    'Bakk Bakk Queen',
    'Chulbuli Chori',
    'Teekhi Mirchi',
    ' Lover Girl',
    ' Golgappa',
    ' Dilon Ki Rani',
    'Bholi Chori',
    ' Noni Pari',
    ' Chocolaty girl',
    'International Princess',
    'Stylo Babe',
    'Moms Doll',
    'Cute Bachi',
    'Innocent Princess',
    ' Spicy Girl',
    ' Dangerous Girl',
    'Baba ki Princess',
    ' Baby Doll',
    ' Attitude',
    'Sexy Item',
    ' PUBG Girl',
    'Heart Breaker',
    'Kameeni',
    'Garam Chori',
    ' Babeu',
    'Cute Doll',
    ' HearthLess Girl',
    'Naughty Kudi',
    'Ladki Beautiful',
    ' Unknown Girl',
    ' Ms Romantic',
    'Dazzling Girl',
  ];
  static const _legendaryNames = [
    '??????????????',
    'Headhunter',
    '??????????????????',
    '??????Bad???Boy??????',
    'J??O??K??E??R??',
    'Shroud',
    'B????CK??T????M',
    '????????????????????????????????????????????????????????',
    'Hydra. | dynamo',
    'SOUL???MORTAL',
    '??????sunny??????',
    '??????[???????????? ??????????????]??????',
    '??????k???C??MPER',
    '??????k ??0????',
    '???????????????????????????ll???????????',
    '????????????????????????????????????',
    '????V?????er',
    '???Who Am I???',
    'S????S??1D',
    '????????????????????????????????',
    '???D@RK???????????????BL@DE?????????',
    '???????????????????????????????????????????????????',
    '?????????S????????z?????????',
    'A??????t47',
    'M??????t?? M????????',
    'K??????s??????????',
    'C????c????????ov????',
    'D?????? P??????c??',
    'F??????t?? D??v????s',
    'Co??p????x S??????????s',
    '????pp????',
    'T????????t??W????????o??',
    'P???????? P????v??????????',
    'Z??????o??s Sq??????',
    'O??t????????o??s Do??????????c??',
    '????????????v????',
    'D??st??ct??v??v??????s',
    'F??????t??c???? T????????????',
    'G????st?????????? P????st??????',
    ' K??????s??ot',
    'C??o?????? P????p??t????to??',
    'H?????????? A????????????s',
    'Tonight Gamer',
    'Green Ghost',
    'PUBG Lover',
    'Inimical Thugs',
    'Guncap Slingbad',
    'Straight Gangsters',
    'Complex Slayers',
    'Eat Bullets',
    'Bloss Flop',
    'Highlander Monk',
    'Mortified Coercion',
    'Dead Deal',
    'Knuckle Duster',
    'Fighting Machine',
    'Faulty Devils',
    'Collateral Damage',
    'Tango Boss',
    'Left Divide',
    'Overkill',
    'Keen Team Six',
    'Odd Hooligans',
    'Married Man',
    'Alpha Returns',
    'Shoot 2 Kill',
    'Kill Spree',
    'Jack The Ripper',
    'Outrageous Dominance',
    'Agent Hercules',
    'Lowercase Guy',
    'Happy Killing',
    'Junkyard Dog',
    'Veteran of Death',
    'PUBJESUS',
    'Brute Fact',
    'Optimal Aces',
    'Fear Butchers',
    'Hog Butcher',
    'Fuzzy Pack',
    'Brash Thugs',
    'Night Magnet',
    'Bad soldier',
    'Dead Shot',
    'Chicken Lover',
    'Mortified Coercion',
    'Organic Punks',
    'LocalGrimReaper',
    'PUBGian',
    'Dancing Madman',
    'Pro Headshot',
    'Annoyed Power',
    'Hungry Admirals',
    'Captain Jack Sparrow',
    'Quarrelsome Strategy',
    'Headshooter',
    'Cloudy Perpetrator',
    'Strange Love',
    'Cloudy Perpetrator',
    'Pixie Soldier',
    'Left Divide',
    'Keen Team Six',
  ];
  static const _popularNames = [
    'Spicy Senorita',
    'Girl Royale',
    'Blade Woman',
    'Giggle Fluff',
    'Candy Cough',
    'Dexterous Queen',
    'Panda Heart',
    'Princess Pickney',
    'Magic Peach',
    'Tiger Kitty',
    'Lady Killer',
    'Dangerous Damsel',
    'Koi Diva',
    'PubgPie',
    'Auspicious Olivia',
    'Luna Star',
    'Ancient Ambrosia',
    'Curious Caroline',
    'Crazy Cinderella',
    'Tragic Girl',
    'Girls of Neptune',
    'Broken Paws',
    'Anonymous Girl',
    'Tiny Hunter',
    'Leading Light',
    ' Acid Queen',
    'Video Game Heroine',
    'Cool Whip',
    'Claudia Clouds',
    'Princess of PUBG',
    'Gun Digger',
    'TeKilla Sunrise',
    'Little Drunk Girl',
    'Digital Goddess',
    'Peanut Butter Woman',
    'Sleek Assassin',
    'Treasure Devil',
    'Lady Fantastic',
    'Opulent Gamer',
    'Wildcat Talent',
    'Pink Nightmare',
    'Miss Fix It',
    'Feral Filly',
    'Troubled Chick',
    'Freeze Queen',
    'Eye Candy Kitten',
    'Romance Princess',
    'Titanium Ladybug',
    ' Emerald Goddess',
    'Marshmallow Treat',
    'Queen Bee',
    'Microwave Chardonnay',
    'Gamer Bean',
    'Mafia Princess',
    'Woodland Beauty',
    'Darkside Hooker',
    'Saturn Extreme',
    'Battle Mistress',
    'Sassy Muffin',
    'Canary Apple Red',
    '???? ??????????????',
    '??????? ??????????? ??????????????',
    '?????? ??????????????',
    'H???????????o??',
    'A??o???? ??ov????',
    '??????????? ?????????????????',
    '????d???? P????????d??',
    'P??????c??s???o?? H??????',
    '?????????????? ????????????',
    'I??ter??at????o??al ??la??kl????st??d',
    'O????ici??l C??????i????l',
    'Sw????t Po??so??',
    '??es???? ??a??',
    'T?????? Lov??',
    'C??oco????t?? ??o??',
    ' Lover Boy',
    'Stylish Prince',
    'So???? ????c??????',
    'P??i??ce-O?? F??ce??ook',
    'M?? Romantic',
    'P??octoco?? B????c??',
    'Dangerous Khiladi',
    'Devil King',
    'Cute Kameena',
    'Supari Killer',
    'Mai Tera BF',
    'My Name is Khan',
    'Heart Hacker',
    'Awara Londa',
    'Alcoholic Chora',
    'I am Alone',
    'Alone Lover',
    'Bakk Bakk King',
    'Give Me Chicken',
    'Mr Venom',
    'Ek The Tiger',
    'Dayan',
    'Dad of Devils',
    'Nalayak Boy',
    'Badmash Londa',
    'Mai Sharabi',
    'Bhai 420',
    'Mai Hu Hero',
    'Mr Perfect',
    'Dangerous Boy',
    'Ek Villain',
    'Thanda Chora',
    'Baby Shona',
    'Cuteness Overloaded',
    'Aaj ka Hero',
    'Chamatkaari',
    'Cute Bhai',
    'Chulbul Chora',
    'Charming King',
    'Heartless Londa',
    'Spicy Girl',
    ' Silent Killer',
    'Mai Tera Hero',
    'Silencer',
    'KickAss Boy',
    'Kamino Ka Baap',
    'Stylish Londa',
    'Lone KING',
    ' Devil Inside',
    'N??l??y??k L????k??',
    'K?????? O?? ????????s',
    'Chatpata Babu',
    'Cup Hero',
    'ImurDaddy',
    'Dil Chor',
    'Devil King',
    'Dramebaaz',
    'Shareef Ladka',
    'Profes????o??al???Ed????tor',
    'B??a??ded D??v??l',
    '?????????????????? ????????????',
    '??????? ?????????',
    '???????????????',
    '?????????????? ????????????',
    '????????????????? ????????????????',
  ];
  static const _randomNames = [
    ' N??tt?? Do????????t??o??',
    'Co??p????x S??????????s',
    'F??????t?? D??v????s',
    ' Z??????o??s Sq??????',
    'R???????? Ext????????????to??s',
    'G????st?????????? P????st??????',
    'K??????s??????????',
    'T????????t??W????????o??',
    'D?????? P??????c??',
    'THE STRANGER',
    '????????????v????',
    ' ????pp????',
    'jo??????',
    'Ps??c????????????c S????v??c????????',
    'M??????t??????st??c F??????t?????? M??c????????',
    'L??????c???? A???????? S????v??c??s',
    'O??t????????o??s Do??????????c??',
    'Ho???????? S??????ps??oot????s',
    'P???????? P????v??????????',
    'Co??p????x S??????????s',
    'F??????t?? D??v????s',
    'F??????t??c???? T????????????',
    'H?????????? A????????????s',
    'C??o?????? P????p??t????to??',
    'M??????t?? M????????',
    'K??????s??ot',
    'A??????t47',
    'P??????st??????????',
    'D??st??ct??v??v??????s',
    'C????c????????ov????',
    'So???????? G????tto',
    'P????????????',
    'St??p??????o??s K????????ts',
    'N??w Ex??????',
    'P???????????? Co????c??o??',
    'R???????????? D??sc??p????????',
    'D???????? I??????s??st????????',
    'M??????c???? R????????s',
    'Sc????c?? E????????',
    'K??ow?? W????????????',
    'Fo?????? G??????',
    'T???????????? D??????????',
    'O??s????v????t Fo??c??',
    'G??????v?????? B??tc??????s',
    'Ho???????? S??????ps??oot????s',
    'A????o???????? V????o??',
    '?????????????? ????????????',
    'H??????tl??ss ??lcohol??c',
    'N??l??y??k L????k??',
    'S??????????t???? ????????',
    'K?????? K??????',
    'L????t D??v??????',
    'K????st?? D????o??',
    'G??????????t P????t??????',
    'F?????? R??v????',
    'V??x???? G??????p??',
    'B??o?????????A????????',
    'B???????????? K????????????',
    'B????T?????????? L????????t???? C??????????',
    'C??????o???c??o??o-???????? Mo?????????? J???????????????',
    'C??t-G?????? K?? C???????? Lov????',
    'B??????? O??-F???????',
    'C????tp??t???? K????????',
    'C???????????????? C??????????',
    'C?????????????? P???????c??',
    'C???????????????? ??????????',
    'C??p???C??????',
    'Coo?? L??????????',
    'S???????????? ??????????',
    'I?????????? K??????????',
    'B????t???? K??????????',
    'T?????? O?? Loos??',
    'A??o???? ??ov?????????? ??????????????',
    '??????????????',
    'M??st??????o??s',
    'Sp??????????????',
    'K?????? O?? ????????s',
    's?????????? ??????????????',
    '??hu?? ???????e',
    'Mar?? Zuc??e????e????',
    'F??????????azz',
    'T???? ?????st???? M????????',
  ];
  static const _squadNames = [
    'Aces'
        'Assassins',
    'Armada',
    'Bandits',
    'Blaze',
    'Brute Force',
    'Chaos',
    'Chosen Ones',
    'Conquerors',
    'Defenders',
    'Empire',
    'Extreme',
    'Fury',
    'Gladiators',
    'High Voltage',
    'Hitmen',
    ' Inferno',
    'Intimidators',
    'Kingsmen',
    'Lethal Weapons',
    'Mafia',
    'Matrix',
    'No Fear',
    'Outlaws',
    'Pistols',
    'Pulverizers',
    'Rage',
    'Renegades',
    'Riot',
    'Rumble',
    'Samurais',
    'Stealth',
    'Terminators',
    'Trouble Makers',
    'Unbeatable',
    'Venom',
    'Weapons of Mass Destruction',
    'Wrecking Crew',
    'Adrenaline',
    'Alliance',
    'Arsenal',
    'Badasses',
    'Blitz',
    'Brigade',
    'Calvary',
    'Collective',
    'Dothraki',
    'End Game',
    'Fuego',
    'Guardians',
    'Heathens',
    'Horsepower',
    'Impact',
    'Ironmen',
    'Keep It 100',
    'Magic',
    'Mystery',
    'No Sympathy',
    'Obliterators',
    'Phenomenon',
    'Phoenix',
    'Rampage',
    'Regulators',
    'Rough Necks',
    'Savage Joes',
    'Status Quo',
    'Thrashers',
    'Unstoppable',
    'Vicious',
    'Wild Things',
    'Your Worst Nightmare',
    'A Team Has No Name',
    'We Tried',
    'Enter Team Name Here',
    'No Shame',
    'Mediocrity At Its Best',
    'Savage and Average',
    'Wasted Potential',
    ' Best Team Name',
    'We Showed Up',
    'Mandatory Attendance',
    ' Boom Shaka Laka',
    'Newbies',
    'Mandatory Fun',
  ];
  static const _boysNames = [
    'BadBoy',
    ' Incredible',
    'Death Stroke',
    'SOUL Killer',
    'DarkStar',
    'Nalayak Ladka',
    'Branded Kameena',
    'SarPhira Londa',
    'Lofer Sahil',
    'I am Ghost',
    'Demon Hunter',
    'PHX Titan',
    'VENOM Spider',
    'Pabloz',
    'Hungry BEAST',
    'Atom Dyno',
    'Ass Kicker',
    'SOUL Iconic',
    'Monster Killer',
    'ATS Assassins',
    'MarshMellow',
    'XMen Logan',
    'Arrow Sanju',
    'Raw Sahil',
    'MG THOR',
    'The Dark Hunter',
    'HyPer Killer',
    'Legend Killer',
    'Thundering Storm',
    'The Dark Knight',
    'The PUS_Y Slayer',
    'Hunter Sky 69',
    ' Witch Hunter',
    'Call Me Daddy',
    'HeadShot Killer',
    'Barry Allen',
    'Nutty Domination',
    'Complex Slayers',
    'Faulty Devils',
    'Jealous Chora',
    'The Terminator',
    'Glistering Man',
    'KingMania',
    'Trinity Warrior',
    'Dark Prince',
    'THE STRANGER',
    'Daredevil',
    'Cute Londa',
    'Joker',
    'Psychotic',
    'Military Force',
    'Outrageous Domination',
    'Sharpshooter',
    'TheSniperMan',
    'Complex Slayer',
    'Faulty Devils',
    'Fanatic Tranny',
    'Hungry Admirals',
    'Cloudy Predator',
    'Mighty Mafia',
    'KillShot',
    'Agent47',
    'PUBG Striker',
    'Destructive Virus',
    'Chicken Lover',
    'PattSeHeadshot',
    'Pubgian',
    'StudMan',
    'NewExile',
    'ChickenDinner',
    'SimonKiller',
    'Dizzy Irresistible',
    'Medical Rebel',
  ];
  static const _rareNames = [
    'Alpha Squad',
    'Ultra Power',
    'Blade Butcher',
    'Attacking Avengers',
    'Demonic Domination',
    'Cruel Criminals',
    'Contrary Commando',
    ' Thousand of Thugs',
    'Dragon Driller',
    'Soul Stranger',
    'Faulty Devils',
    'I????????c???? T??????s',
    'F??????t??c???? T????????????',
    'Mighty Monster',
    'Gamble of Jokers',
    ' A????o?????? Pow????',
    'Quarrelsome_ St????t??????',
    'Co??p????x S??????????s',
    'K?????? T?????? S??x',
    'Team Swag',
    'Optimal Aces',
    'Soul Society',
    ' Thugs',
    'FEAR',
    'Chronicals',
    'Vigor',
    'Domination',
    'Complex Slayer',
    'Faulty Devils',
    'Psychotics',
    'Military Gang',
    'Keen Team Six',
    'Fuzzy Pack',
    'Straight Gangsters',
    'Thugs of Hindustan',
    'Hukum ke Ikke',
    'Homely SharpShooters',
    'The Escapists',
    'BRASH Thugs',
    'Annoyed Power',
    'Dragon Tamers',
    'Fanatic',
    'Holly Sh*t',
    'Organic Punks',
    'Quarrelsome Strategy',
    'Hungry Shark',
    'PreDator',
    'Mighty Raju',
    'Straight Gangsters',
    'Mortified Coercion',
    'Lyrical Armed Services',
    'Outrageous Dominance',
    'Homely Sharpshooters',
    'Plain Privilege',
    'Brash Thugs',
    'Annoyed Power',
    'Demonic Criminals',
    'NashediGang',
    'Mighty Mafia',
    'Rahulgandhi',
    'KrkFans',
    'DkBose',
    'Complex Slayers',
    'Greasy Desperado',
    'Organic Punks',
    'Quarrelsome Strategy',
    'Bahubali',
    'Foamy Gang',
    'Cloudy Perpetrator',
    'Dizzy Irresistible',
    'Nutty Domination',
    ' Observant Force',
    'Selfish Soldiers',
    'Fanatical Tyranny',
    'Grieving Butchers',
    'Long-term Occupation',
    'Plain Privilege',
    'Disagreeable Liquidators',
    'Stupendous Knights',
    'Regular Discipline',
    'Abnormal Vigor',
    'Guttural Gangsters',
    'Zealous Squad',
    'Homely Sharpshooters',
    'Odd Hooligans',
    'Ruddy Exterminators',
    'Known Warfare',
    'Purring Coercion',
    'Annoyed Power',
    'Wretched Veterans',
    'Calm Outlaws',
    'Medical Rebels',
    'Faulty Devils',
    'Glistening Prestige',
    'Hungry Admirals',
    'Championof7seas',
    'Insaneshooter',
    'Deadshot',
    'Agent47',
    'Chickenlover',
    'Pubgstriker',
    'Evildead',
    'Pubgaddictiv',
    'Gangsterpubg',
    'Hacker',
    'ProPubg',
    'Ironman',
    'Death gun',
    'Terminator x',
    'Thunderbeast',
    'Dynooo',
    'Troll',
    'Dark Warrior',
    'Assassin 007',
    'Pochinki_Chalenge',
    'Brookie',
    'Rytnix',
  ];
  static const _topNames = [
    'Aspect',
    'Kraken',
    'Bender',
    'Lynch',
    'Big Papa',
    'Mad Dog',
    'Bowser',
    'Doyle',
    'Bruise',
    'Psycho',
    'Cannon',
    'Ranger',
    'Clink',
    'Ratchet',
    'Cobra',
    'Reaper',
    'Colt',
    'Rigs',
    'Crank',
    'Ripley',
    'Creep',
    'Roadkill',
    'Daemon',
    'Ronin',
    'Decay',
    'Rubble',
    'Diablo',
    'Sasquatch',
    'Doom',
    'Scar',
    'Dracula',
    'Shiver',
    'Dragon',
    'Skinner',
    'Fender',
    'Skull Crusher',
    'Fester',
    'Slasher',
    'Fisheye',
    'Steelshot',
    'Flack',
    'Surge',
    'Gargoyle',
    'Sythe',
    'Grave',
    'Trip',
    'Gunner',
    'Trooper',
    'Hash',
    'Tweek',
    'Hashtag',
    'Vein',
    'Indominus',
    'Void',
    'Ironclad',
    'Wardon',
    'Killer',
    'Wraith',
    'Knuckles',
    'Zero',
    'Steel',
    'Kevlar',
    'Lightning',
    'Tito',
    'Bullet-Proof',
    'Fire-Bred',
    'Titanium',
    'Hurricane',
    'Ironsides',
    'Iron-Cut',
    'Tempest',
    'Iron Heart',
    'Steel Forge',
    'Pursuit',
    'Steel Foil',
    'Sick Rebellious Names',
    'Upsurge',
    'Uprising',
    'Overthrow',
    'Breaker',
    'Sabotage',
    'Dissent',
    'Subversion',
    'Rebellion',
    'Insurgent',
    'Accidental Genius',
    'Acid Gosling',
    'Admiral Tot',
    'AgentHercules',
    'Airport Hobo',
    'Alley Frog',
    'Alpha',
    'AlphaReturns',
    'Angel',
    'AngelsCreed',
    'Arsenic Coo',
    'Atomic Blastoid',
    'Automatic Slicer',
    'Baby Brown',
    'Back Bett',
    'Bad Bunny',
    'Bazooka Har-de-har',
    'Bearded Angler',
    'Beetle King',
  ];
}
