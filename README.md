# tv-tropes-word2vec
TV Tropes and Word2vec paper

Usage: tvtropes.pl <json_file> <max_tropes> <ngram_size> 

./tvtropes.pl tvtropes.json 15 9

You will get following files:

ngrams_15_taken_9.txt  -- combinations of 15 tropes taken from 9 to 9 for each film
films_15_taken_9.txt   -- films with tropes size between 9 and 15 both inclusive
less_than_16_taken_9.json  -- json file created from original deleting films out of range [9-15]
tropes_set_15_taken_9.txt  -- tropes set of films in range [9-15]

tvtropes.json example:

{
   "ABBATheMovie": ["ActuallyPrettyFunny", "Adorkable", "AlmostKiss", "AsHimself", "BigHeroicRun", "ButNowIMustGo", "ButtMonkey", "CelebCrush", "ContrivedCoincidence", "CreatorCameo", "DayInTheLife", "DeadpanSnarker", "DirtyOldMan", "DoubleEntendre", "EveryoneIsJesusInPurgatory", "GettingCrapPastTheRadar", "InsistentTerminology", "Instrumentals", "LandingGearShot", "LifeEmbellished", "ManipulativeEditing", "MsFanservice", "MythologyGag", "NonActorVehicle", "Paparazzi", "RaceAgainstTheClock", "RealityHasNoSubtitles", "ReluctantFanserviceGirl", "SexyDiscretionShot", "SilentSnarker", "Squee", "TheCameo", "TheIngenue", "ThemeMusicPowerUp", "ThemeTuneCameo", "ThreeWaySex", "VoxPops", "WardrobeMalfunction", "WardrobeMalfunction", "WhoWearsShortShorts"], 

"ABCsOfDeath2": ["AbusiveParents", "AirVentPassageway", "AirVentPassageway", "AllWomenAreLustful", "AndIMustScream", "AndIMustScream", "AnimalisticAbomination", "ArcWords", "AssShove", "AssShove", "AssholeVictim", "BeCarefulWhatYouWishFor", "BerserkButton", "BittersweetEnding", "BittersweetEnding", "BlackComedy", "BlackComedy", "BloodyHilarious", "BodyHorror", "BodyHorror", "BodyHorror", "BrainTransplant", "BringMyBrownPants", "BuryYourGays", "BuryYourGays", "CallBack", "ChekhovsGun", "CoconutMeetsCranium", "ColdBloodedTorture", "CosmicHorrorStory", "CrapsackWorld", "CreatorCameo", "CreatorCameo", "CreepyGood", "CureYourGays", "CureYourGays", "DaylightHorror", "DaylightHorror", "DaylightHorror", "DeathByChildbirth", "DeathByChildbirth", "DeathOfAChild", "DeathOfAChild", "DeathOfAChild", "DeathOfAChild", "Deconstruction", "DeconstructiveParody", "DerangedAnimation", "DesertedIsland", "DirtyCoward", "DoubleMeaningTitle", "DownerEnding", "DownerEnding", "DownerEnding", "DownerEnding", "DramaticStutter", "DropTheHammer", "DrugsAreBad", "EarAche", "EarnYourHappyEnding", "EldritchAbomination", "EldritchAbomination", "ElectricTorture", "EmpathyDollShot", "EvilOldFolks", "EvilOldFolks", "FacialHorror", "FlippingTheBird", "ForcedToWatch", "Foreshadowing", "FoundFootage", "FoundFootage", "FridgeHorror", "FromBadToWorse", "GayAesop", "GenreShift", "GirlOnGirlIsHot", "GoneHorriblyRight", "GreenEyedMonster", "HalfTheManHeUsedToBe", "HangingJudge", "HatePlague", "HeManWomanHater", "Homage", "Homage", "HumanoidAbomination", "HyperlinkStory", "HyperlinkStory", "IdiotBall", "ImAHumanitarian", "ImmortalityInducer", "ItTastesLikeFeet", "Jerkass", "JokerJury", "KangarooCourt", "KillItWithFire", "KillerRabbit", "LoveTriangle", "MadeOfPlasticine", "MadeOfPlasticine", "ManBitesMan", "ManOnFire", "MaybeMagicMaybeMundane", "MercyKill", "MurderByCremation", "OffWithHerHead", "OffWithHisHead", "OffWithHisHead", "OffingTheOffspring", "OffingTheOffspring", "OffingTheOffspring", "OneManArmy", "ParachuteInATree", "PlayedForLaughs", "PleaseDontLeaveMe", "PowerFantasy", "PublicExecution", "PyrrhicVictory", "RealLife", "RealityWarping", "RearWindowWitness", "RearWindowWitness", "ReliablyUnreliableGuns", "ReliablyUnreliableGuns", "ReligiousHorror", "ReusableLighterToss", "ReversePsychology", "RoaringRampageOfRevenge", "RussianRoulette", "ScrewThisImOuttaHere", "ShoutOut", "ShoutOut", "SmugSnake", "SpiritualSuccessor", "StraightManAndWiseGuy", "StrappedToAnOperatingTable", "StupidSacrifice", "SubvertedKidsShow", "SuddenlyVoiced", "SurpriseIncest", "SurrealHorror", "SurrealHumor", "TakeAThirdOption", "TheAgeless", "TheBadGuyWins", "TheBadGuyWins", "TheBadGuyWins", "TheDogBitesBack", "TheMeanBrit", "TheReveal", "TheReveal", "ThroughTheEyesOfMadness", "TitleDrop", "TragicMistake", "TrappedInTVLand", "UndeadChild", "UtopiaJustifiesTheMeans", "WarIsHell", "WarIsHell", "WhamShot", "WordOfGod", "WouldHurtAChild", "YourCheatingHeart", "ZombieApocalypse", "ZombieApocalypse"]
}


word2vec vectors building model

time ./word2vec -train ngrams_15_taken_9.txt -output ngrams_15_taken_9_vectors.bin -cbow 1 -size 200 -window 8 -negative 25 -hs 0 -sample 1e-4 -threads 20 -binary 1 -iter 15



word2vec manipulation

python3 word2vec.py
