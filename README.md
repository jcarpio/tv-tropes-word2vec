# tv-tropes-word2vec
TV Tropes and Word2vec paper

To obtain file tvtropes_less_than_10.json

./tvtropes.pl tvtropes.json

(with DEBUG = 0) To obtain set of tropes in films with less than 10 tropes

./tvtropes.pl tvtropes_less_than_10.json > tropes_set.txt

To obtain number of films with less than 10 tropes

wc -l tvtropes_less_than_10.txt

To obtain number of tropes in set of tropes from films with less than 10 tropes

wc -l tropes_set.txt

tvtropes.json example:

{
   "ABBATheMovie": ["ActuallyPrettyFunny", "Adorkable", "AlmostKiss", "AsHimself", "BigHeroicRun", "ButNowIMustGo", "ButtMonkey", "CelebCrush", "ContrivedCoincidence", "CreatorCameo", "DayInTheLife", "DeadpanSnarker", "DirtyOldMan", "DoubleEntendre", "EveryoneIsJesusInPurgatory", "GettingCrapPastTheRadar", "InsistentTerminology", "Instrumentals", "LandingGearShot", "LifeEmbellished", "ManipulativeEditing", "MsFanservice", "MythologyGag", "NonActorVehicle", "Paparazzi", "RaceAgainstTheClock", "RealityHasNoSubtitles", "ReluctantFanserviceGirl", "SexyDiscretionShot", "SilentSnarker", "Squee", "TheCameo", "TheIngenue", "ThemeMusicPowerUp", "ThemeTuneCameo", "ThreeWaySex", "VoxPops", "WardrobeMalfunction", "WardrobeMalfunction", "WhoWearsShortShorts"], 

"ABCsOfDeath2": ["AbusiveParents", "AirVentPassageway", "AirVentPassageway", "AllWomenAreLustful", "AndIMustScream", "AndIMustScream", "AnimalisticAbomination", "ArcWords", "AssShove", "AssShove", "AssholeVictim", "BeCarefulWhatYouWishFor", "BerserkButton", "BittersweetEnding", "BittersweetEnding", "BlackComedy", "BlackComedy", "BloodyHilarious", "BodyHorror", "BodyHorror", "BodyHorror", "BrainTransplant", "BringMyBrownPants", "BuryYourGays", "BuryYourGays", "CallBack", "ChekhovsGun", "CoconutMeetsCranium", "ColdBloodedTorture", "CosmicHorrorStory", "CrapsackWorld", "CreatorCameo", "CreatorCameo", "CreepyGood", "CureYourGays", "CureYourGays", "DaylightHorror", "DaylightHorror", "DaylightHorror", "DeathByChildbirth", "DeathByChildbirth", "DeathOfAChild", "DeathOfAChild", "DeathOfAChild", "DeathOfAChild", "Deconstruction", "DeconstructiveParody", "DerangedAnimation", "DesertedIsland", "DirtyCoward", "DoubleMeaningTitle", "DownerEnding", "DownerEnding", "DownerEnding", "DownerEnding", "DramaticStutter", "DropTheHammer", "DrugsAreBad", "EarAche", "EarnYourHappyEnding", "EldritchAbomination", "EldritchAbomination", "ElectricTorture", "EmpathyDollShot", "EvilOldFolks", "EvilOldFolks", "FacialHorror", "FlippingTheBird", "ForcedToWatch", "Foreshadowing", "FoundFootage", "FoundFootage", "FridgeHorror", "FromBadToWorse", "GayAesop", "GenreShift", "GirlOnGirlIsHot", "GoneHorriblyRight", "GreenEyedMonster", "HalfTheManHeUsedToBe", "HangingJudge", "HatePlague", "HeManWomanHater", "Homage", "Homage", "HumanoidAbomination", "HyperlinkStory", "HyperlinkStory", "IdiotBall", "ImAHumanitarian", "ImmortalityInducer", "ItTastesLikeFeet", "Jerkass", "JokerJury", "KangarooCourt", "KillItWithFire", "KillerRabbit", "LoveTriangle", "MadeOfPlasticine", "MadeOfPlasticine", "ManBitesMan", "ManOnFire", "MaybeMagicMaybeMundane", "MercyKill", "MurderByCremation", "OffWithHerHead", "OffWithHisHead", "OffWithHisHead", "OffingTheOffspring", "OffingTheOffspring", "OffingTheOffspring", "OneManArmy", "ParachuteInATree", "PlayedForLaughs", "PleaseDontLeaveMe", "PowerFantasy", "PublicExecution", "PyrrhicVictory", "RealLife", "RealityWarping", "RearWindowWitness", "RearWindowWitness", "ReliablyUnreliableGuns", "ReliablyUnreliableGuns", "ReligiousHorror", "ReusableLighterToss", "ReversePsychology", "RoaringRampageOfRevenge", "RussianRoulette", "ScrewThisImOuttaHere", "ShoutOut", "ShoutOut", "SmugSnake", "SpiritualSuccessor", "StraightManAndWiseGuy", "StrappedToAnOperatingTable", "StupidSacrifice", "SubvertedKidsShow", "SuddenlyVoiced", "SurpriseIncest", "SurrealHorror", "SurrealHumor", "TakeAThirdOption", "TheAgeless", "TheBadGuyWins", "TheBadGuyWins", "TheBadGuyWins", "TheDogBitesBack", "TheMeanBrit", "TheReveal", "TheReveal", "ThroughTheEyesOfMadness", "TitleDrop", "TragicMistake", "TrappedInTVLand", "UndeadChild", "UtopiaJustifiesTheMeans", "WarIsHell", "WarIsHell", "WhamShot", "WordOfGod", "WouldHurtAChild", "YourCheatingHeart", "ZombieApocalypse", "ZombieApocalypse"]
}
