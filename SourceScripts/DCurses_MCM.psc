;THIS SCRIPT IS AUTO GENERATED
Scriptname DCurses_MCM extends SKI_ConfigBase

function UpdateSKSE() global Native
function OnMCMOpened() global Native
bool function CheckSTNG() global Native
bool function CheckLM() global Native

bool function WearingOppressiveDevice() global Native

int function GetExternalEventCount() global native
string function GetExternalEventId(int index) global native
string function GetExternalEventName(int index) global native
float function GetExternalEventWeightAt(int index) global native

String Property LastPage = "Main" Auto Hidden

Function RegisterModEvents()
	RegisterForModEvent("HookAnimationStart", "OnSexStart")
	RegisterForModEvent("HookAnimationEnd", "OnSexEnd")
	RegisterForModEvent("DeviceActorOrgasmExp", "OnDDOrgasm")
	RegisterForModEvent("DeviceActorOrgasmEx", "OnDDOrgasm")
	RegisterForModEvent("dhlp-Suspend", "OnDhlpSuspend")
	RegisterForModEvent("dhlp-Resume", "OnDhlpResume")
EndFunction

Event OnSexEnd(int tid, bool HasPlayer)
	If HasPlayer
		SexLabFramework sexlab = Game.GetFormFromFile(0x0d62, "SexLab.esm") as SexLabFramework
		sslThreadController thread = sexlab.GetController(tid)
		Actor[] positions = thread.positions
		DCursesLib.SexEnded(positions)
	EndIf
EndEvent

Event OnSexStart(int tid, bool HasPlayer)
	If HasPlayer
		SexLabFramework sexlab = Game.GetFormFromFile(0x0d62, "SexLab.esm") as SexLabFramework
		sslThreadController thread = sexlab.GetController(tid)
		Actor[] positions = thread.positions
		DCursesLib.SexStarted(positions)
	EndIf
EndEvent

Event OnDDOrgasm(Form akSource, Form akFormActor, Int aiSetArousal)
	Actor akActor = akFormActor as Actor
	If akActor == Game.GetPlayer()
		DCursesLib.DDPlayerOrgasm()
	EndIf
EndEvent

;dhlp event handlers
Event OnDhlpSuspend( string eventName, string strArg, float numArg, Form sender )
	ModSuspended = True
EndEvent

Event OnDhlpResume( string eventName, string strArg, float numArg, Form sender )
	ModSuspended = False
EndEvent

Event OnGameReload()
	Parent.OnGameReload()
	SendModEvent("DCurses_RequestEvents", "refresh")
EndEvent


Int Property minGoldRequired = 20 Auto
Int minGoldRequiredOID
Int Property eventScalingMod = 15 Auto
Int eventScalingModOID
Int Property minRestraints = 1 Auto
Int minRestraintsOID
Int Property maxRestraints = 3 Auto
Int maxRestraintsOID
Int Property bossAditionalRestraints = 2 Auto
Int bossAditionalRestraintsOID
Int Property restraintCap = 7 Auto
Int restraintCapOID
Int Property minArousal = 10 Auto
Int minArousalOID
Int Property beltWeight = 40 Auto
Int beltWeightOID
Int Property chastityPiercingWeight = 20 Auto
Int chastityPiercingWeightOID
Int Property braWeight = 30 Auto
Int braWeightOID
Int Property plugsWeight = 50 Auto
Int plugsWeightOID
Int Property lockingPlugsWeight = 30 Auto
Int lockingPlugsWeightOID
Int Property inflatablePlugsWeight = 15 Auto
Int inflatablePlugsWeightOID
Int Property nipplePiercingsWeight = 50 Auto
Int nipplePiercingsWeightOID
Int Property vaginalPiercingsWeight = 50 Auto
Int vaginalPiercingsWeightOID
Int Property corsetWeight = 40 Auto
Int corsetWeightOID
Int Property beltedCorsetsWeight = 30 Auto
Int beltedCorsetsWeightOID
Int Property slaveHarnessWeight = 50 Auto
Int slaveHarnessWeightOID
Int Property chastityHarnessWeight = 40 Auto
Int chastityHarnessWeightOID
Int Property armbinderWeight = 30 Auto
Int armbinderWeightOID
Int Property elbowbinderWeight = 20 Auto
Int elbowbinderWeightOID
Int Property yokeWeight = 10 Auto
Int yokeWeightOID
Int Property shacklesWeight = 20 Auto
Int shacklesWeightOID
Int Property straitjacketWeight = 30 Auto
Int straitjacketWeightOID
Int Property straitjacketLegbinderWeight = 15 Auto
Int straitjacketLegbinderWeightOID
Int Property petSuitWeight = 10 Auto
Int petSuitWeightOID
Int Property collarWeight = 60 Auto
Int collarWeightOID
Int Property armCuffsWeight = 60 Auto
Int armCuffsWeightOID
Int Property legCuffsWeight = 60 Auto
Int legCuffsWeightOID
Int Property gagWeight = 35 Auto
Int gagWeightOID
Int Property ringGagWeight = 45 Auto
Int ringGagWeightOID
Int Property largeGagWeight = 30 Auto
Int largeGagWeightOID
Int Property largeRingGagWeight = 30 Auto
Int largeRingGagWeightOID
Int Property blindfoldWeight = 20 Auto
Int blindfoldWeightOID
Int Property hoodBothWeight = 20 Auto
Int hoodBothWeightOID
Int Property hoodGagWeight = 20 Auto
Int hoodGagWeightOID
Int Property hoodBlindWeight = 20 Auto
Int hoodBlindWeightOID
Int Property hoodNoneWeight = 20 Auto
Int hoodNoneWeightOID
Int Property catsuitWeight = 30 Auto
Int catsuitWeightOID
Int Property hobbleSkirtWeight = 20 Auto
Int hobbleSkirtWeightOID
Int Property hobbleSkirtDifficulty = 50 Auto
Int hobbleSkirtDifficultyOID
Int Property bootsWeight = 30 Auto
Int bootsWeightOID
Int Property glovesWeight = 30 Auto
Int glovesWeightOID
Int Property mittensWeight = 0 Auto
Int mittensWeightOID
Int Property minKeysLooted = 1 Auto
Int minKeysLootedOID
Int Property maxKeysLooted = 1 Auto
Int maxKeysLootedOID
Int Property maxHeldKeys = 3 Auto
Int maxHeldKeysOID
Int Property restraintsKeyWeight = 80 Auto
Int restraintsKeyWeightOID
Int Property chastityKeyWeight = 50 Auto
Int chastityKeyWeightOID
Int Property piercingToolWeight = 20 Auto
Int piercingToolWeightOID
Int Property eventStandardWeight = 100 Auto
Int eventStandardWeightOID
Int Property eventStandardBossReduction = 20 Auto
Int eventStandardBossReductionOID
Int Property eventOppressiveWeight = 15 Auto
Int eventOppressiveWeightOID
Int Property eventContraptionWeight = 25 Auto
Int eventContraptionWeightOID
Int Property eventContDeviceOverride = 0 Auto
Int eventContDeviceOverrideOID
Int Property eventWickedWeight = 15 Auto
Int eventWickedWeightOID
Int Property eventTattooWeight = 15 Auto
Int eventTattooWeightOID
Int Property eventTattooMin = 1 Auto
Int eventTattooMinOID
Int Property eventTattooMax = 3 Auto
Int eventTattooMaxOID
Int Property eventTattooCap = 8 Auto
Int eventTattooCapOID
Int Property eventLewdMarkWeight = 10 Auto
Int eventLewdMarkWeightOID
Int Property eventSimpleSlaveryWeight = 0 Auto
Int eventSimpleSlaveryWeightOID
Int Property eventSSMinRestraints = 6 Auto
Int eventSSMinRestraintsOID
Int Property eventAbadonWeight = 5 Auto
Int eventAbadonWeightOID
Int Property eventAbadonWarriorWeight = 10 Auto
Int eventAbadonWarriorWeightOID
Int Property eventAbadonWarriorCount = 5 Auto
Int eventAbadonWarriorCountOID
Int Property eventAbadonScoutWeight = 10 Auto
Int eventAbadonScoutWeightOID
Int Property eventAbadonScoutCount = 5 Auto
Int eventAbadonScoutCountOID
Int Property eventAbadonWitchWeight = 10 Auto
Int eventAbadonWitchWeightOID
Int Property eventAbadonWitchCount = 5 Auto
Int eventAbadonWitchCountOID
Int Property followerDeviceModifier = 0 Auto
Int followerDeviceModifierOID
Int Property LMAllureWeight = 10 Auto
Int LMAllureWeightOID
Int Property LMAllureMod = 5 Auto
Int LMAllureModOID
Int Property LMAllureSex = 25 Auto
Int LMAllureSexOID
Int Property LMHeatWeight = 10 Auto
Int LMHeatWeightOID
Int Property LMHeatMod = 30 Auto
Int LMHeatModOID
Int Property LMHeatContainerCount = 50 Auto
Int LMHeatContainerCountOID
Int Property LMBrandingWeight = 10 Auto
Int LMBrandingWeightOID
Int Property LMBrandingTotal = 12 Auto
Int LMBrandingTotalOID
Int Property LMHealslutWeight = 5 Auto
Int LMHealslutWeightOID
Int Property LMHealslutHealing = 4000 Auto
Int LMHealslutHealingOID
Int Property LMHealslutArousal = 90 Auto
Int LMHealslutArousalOID
Int Property LMHealslutDuration = 300 Auto
Int LMHealslutDurationOID
Int Property LMBondageWeight = 5 Auto
Int LMBondageWeightOID
Int Property LMBondageDeviceCapAdd = 3 Auto
Int LMBondageDeviceCapAddOID
Int Property LMBondageDeviceCount = 25 Auto
Int LMBondageDeviceCountOID
Int Property LMNudityWeight = 15 Auto
Int LMNudityWeightOID
Int Property LMNudityTalkTimes = 35 Auto
Int LMNudityTalkTimesOID
Int Property LMPainslutWeight = 10 Auto
Int LMPainslutWeightOID
Int Property LMPainslutMod = 5 Auto
Int LMPainslutModOID
Int Property LMPainslutCount = 25 Auto
Int LMPainslutCountOID
Int Property LMPainslutArousal = 90 Auto
Int LMPainslutArousalOID
Int Property oppSummonerCollarWeight = 20 Auto
Int oppSummonerCollarWeightOID
Int Property oppSummonerSexCount = 15 Auto
Int oppSummonerSexCountOID
Int Property oppDwarvenCuirassWeight = 15 Auto
Int oppDwarvenCuirassWeightOID
Int Property oppDwarvenValueNeeded = 200 Auto
Int oppDwarvenValueNeededOID
Int Property oppDwarvenArousal = 25 Auto
Int oppDwarvenArousalOID
Int Property oppNocturnalWeight = 10 Auto
Int oppNocturnalWeightOID
Int Property oppNocturnalSexCount = 3 Auto
Int oppNocturnalSexCountOID
Int Property oppNocturnalPeople = 7 Auto
Int oppNocturnalPeopleOID
Int Property oppNocturnalArousal = 35 Auto
Int oppNocturnalArousalOID
Int Property oppLivingLatexWeight = 20 Auto
Int oppLivingLatexWeightOID
Int Property oppLivingLatexStartTime = 5 Auto
Int oppLivingLatexStartTimeOID
Int Property oppMadnessPlugWeight = 25 Auto
Int oppMadnessPlugWeightOID
Int Property oppMadnessPlugIterations = 5 Auto
Int oppMadnessPlugIterationsOID
Int Property oppMadnessplugOrgasms = 6 Auto
Int oppMadnessplugOrgasmsOID
Int Property consScanRadius = 650 Auto
Int consScanRadiusOID
Int Property consScanInterval = 5 Auto
Int consScanIntervalOID
Int Property consFineForSex = 250 Auto
Int consFineForSexOID
Int Property consFineForNudity = 100 Auto
Int consFineForNudityOID
Int Property consFineForRestraints = 100 Auto
Int consFineForRestraintsOID
Int Property consFineForTattoos = 100 Auto
Int consFineForTattoosOID
Int Property consRestrainedCount = 5 Auto
Int consRestrainedCountOID
Int Property consTattooCount = 8 Auto
Int consTattooCountOID
Int Property consSexWeight = 15 Auto
Int consSexWeightOID
Int Property consRandomBondageWeight = 10 Auto
Int consRandomBondageWeightOID
Int Property consTattooWeight = 10 Auto
Int consTattooWeightOID
Int Property consMercyWeight = 5 Auto
Int consMercyWeightOID
Int Property sexCooldown = 60 Auto
Int sexCooldownOID
Int Property sexArousalModifierCutoff = 80 Auto
Int sexArousalModifierCutoffOID
Int Property sexScalingModifier = 5 Auto
Int sexScalingModifierOID
Int Property sexSearchRadius = 2000 Auto
Int sexSearchRadiusOID
Int Property sexSearchInterval = 15 Auto
Int sexSearchIntervalOID
Int Property sexRequiredPlayerBindings = 2 Auto
Int sexRequiredPlayerBindingsOID
Int Property sexRequiredPlayerArousal = 85 Auto
Int sexRequiredPlayerArousalOID
Int Property sexRequiredPlayerTattoos = -1 Auto
Int sexRequiredPlayerTattoosOID
Int Property sexRequiredNPCBindings = -1 Auto
Int sexRequiredNPCBindingsOID
Int Property sexRequiredNPCArousal = 85 Auto
Int sexRequiredNPCArousalOID
Int Property sexRequiredNPCTattoos = -1 Auto
Int sexRequiredNPCTattoosOID
Int Property sexRequiredCreatureArousal = 75 Auto
Int sexRequiredCreatureArousalOID
Float Property baseChance = 6.5 Auto
Int baseChanceOID
Float Property containerModifier = 1.0 Auto
Int containerModifierOID
Float Property bossContainerModifier = 2.0 Auto
Int bossContainerModifierOID
Float Property deadBodyModifier = 1.3 Auto
Int deadBodyModifierOID
Float Property pickpocketModifier = 1.3 Auto
Int pickpocketModifierOID
Float Property doorModifier = 1.0 Auto
Int doorModifierOID
Float Property lockedModifier = 2.0 Auto
Int lockedModifierOID
Float Property lockDifficultyModifier = 1.3 Auto
Int lockDifficultyModifierOID
Float Property arousalModifier = 1.4 Auto
Int arousalModifierOID
Float Property keyLossChance = 80.0 Auto
Int keyLossChanceOID
Float Property keyChance = 7.0 Auto
Int keyChanceOID
Float Property keyBonus = 1.0 Auto
Int keyBonusOID
Float Property keyPickpocketBonus = 2.0 Auto
Int keyPickpocketBonusOID
Float Property magicKeyChance = 20.0 Auto
Int magicKeyChanceOID
Float Property keyLuckyBonus = 1.75 Auto
Int keyLuckyBonusOID
Float Property eventContraptionTime = 4.0 Auto
Int eventContraptionTimeOID
Float Property followerDeviceMult = 0.75 Auto
Int followerDeviceMultOID
Float Property LMBrandingChance = 1.5 Auto
Int LMBrandingChanceOID
Float Property LMBondageModifier = 5.0 Auto
Int LMBondageModifierOID
Float Property LMPainslutSexChance = 15.0 Auto
Int LMPainslutSexChanceOID
Float Property oppSummonChance = 1.5 Auto
Int oppSummonChanceOID
Float Property oppSummonSexChance = 25.0 Auto
Int oppSummonSexChanceOID
Float Property oppNocturnalHandChance = 3.5 Auto
Int oppNocturnalHandChanceOID
Float Property oppNocturnalRecastChance = 33.3 Auto
Int oppNocturnalRecastChanceOID
Float Property oppLivingLatexGem = 6.0 Auto
Int oppLivingLatexGemOID
Float Property oppLivingLatexMore = 0.0 Auto
Int oppLivingLatexMoreOID
Float Property oppMadnessMultiplier = 1.0 Auto
Int oppMadnessMultiplierOID
Float Property lockedLocationBypass = 0.6 Auto
Int lockedLocationBypassOID
Float Property theftLocationBypass = 1.1 Auto
Int theftLocationBypassOID
Float Property playerHomeModifier = 0.0 Auto
Int playerHomeModifierOID
Float Property cityModifier = 0.0 Auto
Int cityModifierOID
Float Property townModifier = 0.0 Auto
Int townModifierOID
Float Property banditModifier = 1.1 Auto
Int banditModifierOID
Float Property draugrModifier = 1.2 Auto
Int draugrModifierOID
Float Property soulCairnModifier = 1.5 Auto
Int soulCairnModifierOID
Float Property dwarvenModifier = 1.2 Auto
Int dwarvenModifierOID
Float Property falmerModifier = 1.3 Auto
Int falmerModifierOID
Float Property forswornModifier = 1.1 Auto
Int forswornModifierOID
Float Property vampireModifier = 1.5 Auto
Int vampireModifierOID
Float Property warlockModifier = 1.5 Auto
Int warlockModifierOID
Float Property dragonLairModifier = 2.0 Auto
Int dragonLairModifierOID
Float Property apocryphaModifier = 2.0 Auto
Int apocryphaModifierOID
Float Property wildernessModifier = 0.9 Auto
Int wildernessModifierOID
Float Property rDeviceBaseChance = 1.5 Auto
Int rDeviceBaseChanceOID
Float Property rDeviceLuckyBonus = 2.5 Auto
Int rDeviceLuckyBonusOID
Float Property wardingCharmChance = 0.5 Auto
Int wardingCharmChanceOID
Float Property tatSolventChance = 0.5 Auto
Int tatSolventChanceOID
Float Property arousalPotionChance = 5.0 Auto
Int arousalPotionChanceOID
Float Property arousalPotionLibido = 10.0 Auto
Int arousalPotionLibidoOID
Float Property consTalkNude = 35.0 Auto
Int consTalkNudeOID
Float Property consTalkRestrained = 10.0 Auto
Int consTalkRestrainedOID
Float Property consTalkHeavy = 50.0 Auto
Int consTalkHeavyOID
Float Property consTalkTattoo = 25.0 Auto
Int consTalkTattooOID
Float Property consScanSex = 25.0 Auto
Int consScanSexOID
Float Property consScanNude = 10.0 Auto
Int consScanNudeOID
Float Property consScanRestrained = 0.0 Auto
Int consScanRestrainedOID
Float Property consScanHeavy = 25.0 Auto
Int consScanHeavyOID
Float Property consScanTattoo = 5.0 Auto
Int consScanTattooOID
Float Property consScanTrespass = 100.0 Auto
Int consScanTrespassOID
Float Property consGuardScanSex = 50.0 Auto
Int consGuardScanSexOID
Float Property consGuardScanNude = 0.0 Auto
Int consGuardScanNudeOID
Float Property consGuardScanRestrained = 0.0 Auto
Int consGuardScanRestrainedOID
Float Property consGuardScanTattoo = 0.0 Auto
Int consGuardScanTattooOID
Float Property consGuardTalkMult = 5.0 Auto
Int consGuardTalkMultOID
Float Property consGaggedMultiplier = 1.2 Auto
Int consGaggedMultiplierOID
Float Property sexBaseChance = 1.0 Auto
Int sexBaseChanceOID
Float Property sexCreatureModifier = 0.9 Auto
Int sexCreatureModifierOID
Float Property sexFollowerModifier = 1.0 Auto
Int sexFollowerModifierOID
Float Property sexSummonModifier = 2.0 Auto
Int sexSummonModifierOID
Float Property sexRestraintsModifier = 1.1 Auto
Int sexRestraintsModifierOID
Float Property sexSafeLocationModifier = 1.3 Auto
Int sexSafeLocationModifierOID
Float Property sexUnsafeLocationModifier = 0.1 Auto
Int sexUnsafeLocationModifierOID
Float Property sexPlayerNudityModifier = 2.0 Auto
Int sexPlayerNudityModifierOID
Float Property sexNPCNudityModifier = 2.0 Auto
Int sexNPCNudityModifierOID
Float Property sexPlayerArousalModifier = 2.5 Auto
Int sexPlayerArousalModifierOID
Float Property sexNPCArousalModifier = 2.5 Auto
Int sexNPCArousalModifierOID
Float Property sexAllureModifier = 5.0 Auto
Int sexAllureModifierOID
Float Property sexSummonerModifier = 7.5 Auto
Int sexSummonerModifierOID
Bool Property onlyLockedDoors = true Auto
Int onlyLockedDoorsOID
Bool Property eventScaling = true Auto
Int eventScalingOID
Bool Property bossOnlyHeavy = true Auto
Int bossOnlyHeavyOID
Bool Property stripPlayerOnEvent = true Auto
Int stripPlayerOnEventOID
Bool Property stripOnlyKeywords = true Auto
Int stripOnlyKeywordsOID
Bool Property beltPlugs = true Auto
Int beltPlugsOID
Bool Property useGenderedChastity = true Auto
Int useGenderedChastityOID
Bool Property plugsDontCount = true Auto
Int plugsDontCountOID
Bool Property useGenderedPlugs = false Auto
Int useGenderedPlugsOID
Bool Property allowLegShackles = false Auto
Int allowLegShacklesOID
Bool Property keyForgiveness = true Auto
Int keyForgivenessOID
Bool Property magicKeyOppressive = false Auto
Int magicKeyOppressiveOID
Bool Property preferRelevantKeys = true Auto
Int preferRelevantKeysOID
Bool Property vanishingKeys = true Auto
Int vanishingKeysOID
Bool Property eventContDevices = true Auto
Int eventContDevicesOID
Bool Property eventContAllDevices = false Auto
Int eventContAllDevicesOID
Bool Property followerBondageEvent = false Auto
Int followerBondageEventOID
Bool Property followerTattooEvent = false Auto
Int followerTattooEventOID
Bool Property onlyFemaleFollowers = true Auto
Int onlyFemaleFollowersOID
Bool Property followerHeavyRestraints = false Auto
Int followerHeavyRestraintsOID
Bool Property followerGags = false Auto
Int followerGagsOID
Bool Property onlyUseUnforgivingDevices = true Auto
Int onlyUseUnforgivingDevicesOID
Bool Property udUseAbadon = false Auto
Int udUseAbadonOID
Bool Property udUseAbadonSets = false Auto
Int udUseAbadonSetsOID
Bool Property udUseMisc = true Auto
Int udUseMiscOID
Bool Property LMAllureSkipRequirements = true Auto
Int LMAllureSkipRequirementsOID
Bool Property LMBrandingPunish = true Auto
Int LMBrandingPunishOID
Bool Property LMNudityChestOnly = false Auto
Int LMNudityChestOnlyOID
Bool Property LMNuditySkipGagged = true Auto
Int LMNuditySkipGaggedOID
Bool Property oppOneAtATime = true Auto
Int oppOneAtATimeOID
Bool Property oppSCollarDrainsMagicka = true Auto
Int oppSCollarDrainsMagickaOID
Bool Property oppSCollarAutoRemove = true Auto
Int oppSCollarAutoRemoveOID
Bool Property oppDwarvenHeavyRestraint = false Auto
Int oppDwarvenHeavyRestraintOID
Bool Property oppDwarvenRequireLoc = true Auto
Int oppDwarvenRequireLocOID
Bool Property oppLivingLatexGemAll = false Auto
Int oppLivingLatexGemAllOID
Bool Property oppLivingLatexHeavy = false Auto
Int oppLivingLatexHeavyOID
Bool Property oppLivingLatexRequireRem = true Auto
Int oppLivingLatexRequireRemOID
Bool Property oppLivingLatexOpen = false Auto
Int oppLivingLatexOpenOID
Bool Property oppMadnessOnlyDevices = true Auto
Int oppMadnessOnlyDevicesOID
Bool Property oppMadnessBeltFilter = true Auto
Int oppMadnessBeltFilterOID
Bool Property oppMadnessChaos = false Auto
Int oppMadnessChaosOID
Bool Property enableQuestInteractions = true Auto
Int enableQuestInteractionsOID
Bool Property enableQIMalkoran = true Auto
Int enableQIMalkoranOID
Bool Property enableQISanguine = true Auto
Int enableQISanguineOID
Bool Property enableQIBlackStar = true Auto
Int enableQIBlackStarOID
Bool Property enableQIMindOfMadness = true Auto
Int enableQIMindOfMadnessOID
Bool Property enableQILaidToRest = true Auto
Int enableQILaidToRestOID
Bool Property enableQICriedWolf = true Auto
Int enableQICriedWolfOID
Bool Property enableQIDelivery = true Auto
Int enableQIDeliveryOID
Bool Property enableQIBarenziah = true Auto
Int enableQIBarenziahOID
Bool Property enableQIProvingHonor = true Auto
Int enableQIProvingHonorOID
Bool Property enableQISaarthal = true Auto
Int enableQISaarthalOID
Bool Property enableQIBrelyna = true Auto
Int enableQIBrelynaOID
Bool Property enableQIDwemerMuseum = true Auto
Int enableQIDwemerMuseumOID
Bool Property enableQITrinityRestored = true Auto
Int enableQITrinityRestoredOID
Bool Property enableQIThalmorEmbassy = true Auto
Int enableQIThalmorEmbassyOID
Bool Property enableQIRingmaker = true Auto
Int enableQIRingmakerOID
Bool Property oppDeviceAntiCheat = true Auto
Int oppDeviceAntiCheatOID
Bool Property generalDeviceAntiCheat = false Auto
Int generalDeviceAntiCheatOID
Bool Property noMessageBoxes = false Auto
Int noMessageBoxesOID
Bool Property eventVisualEffects = true Auto
Int eventVisualEffectsOID
Bool Property surpriseMode = false Auto
Int surpriseModeOID
Bool Property dragonHoard = true Auto
Int dragonHoardOID
Bool Property bossExtraGold = true Auto
Int bossExtraGoldOID
Bool Property useThemes = false Auto
Int useThemesOID
Bool Property disableForce3rdPerson = true Auto
Int disableForce3rdPersonOID
Bool Property enableSlowStrip = false Auto
Int enableSlowStripOID
Bool Property restrictFastTravel = true Auto
Int restrictFastTravelOID
Bool Property restrictFastTravelPart = false Auto
Int restrictFastTravelPartOID
Bool Property restrictFastTravelFull = false Auto
Int restrictFastTravelFullOID
Bool Property useDeviceNamesInThemes = true Auto
Int useDeviceNamesInThemesOID
Bool Property saveDependentSettings = false Auto
Int saveDependentSettingsOID
Bool Property ANDSexTopless = true Auto
Int ANDSexToplessOID
Bool Property ANDSexBottomless = true Auto
Int ANDSexBottomlessOID
Bool Property ANDSexShowingChest = true Auto
Int ANDSexShowingChestOID
Bool Property ANDSexShowingGenitals = true Auto
Int ANDSexShowingGenitalsOID
Bool Property ANDSexShowingAss = false Auto
Int ANDSexShowingAssOID
Bool Property ANDSexShowingBra = false Auto
Int ANDSexShowingBraOID
Bool Property ANDSexShowingUnderwear = false Auto
Int ANDSexShowingUnderwearOID
Bool Property ANDConsTopless = true Auto
Int ANDConsToplessOID
Bool Property ANDConsBottomless = true Auto
Int ANDConsBottomlessOID
Bool Property ANDConsShowingChest = true Auto
Int ANDConsShowingChestOID
Bool Property ANDConsShowingGenitals = true Auto
Int ANDConsShowingGenitalsOID
Bool Property ANDConsShowingAss = false Auto
Int ANDConsShowingAssOID
Bool Property ANDConsShowingBra = false Auto
Int ANDConsShowingBraOID
Bool Property ANDConsShowingUnderwear = false Auto
Int ANDConsShowingUnderwearOID
Bool Property consEnable = true Auto
Int consEnableOID
Bool Property consGuardNormal = false Auto
Int consGuardNormalOID
Bool Property consFineGuardFaction = true Auto
Int consFineGuardFactionOID
Bool Property consFallthrough = false Auto
Int consFallthroughOID
Bool Property consAllowFollowers = false Auto
Int consAllowFollowersOID
Bool Property consFollowersBlock = false Auto
Int consFollowersBlockOID
Bool Property consTolerableChastity = true Auto
Int consTolerableChastityOID
Bool Property consUseRelationships = true Auto
Int consUseRelationshipsOID
Bool Property consRelationBondage = false Auto
Int consRelationBondageOID
Bool Property consRandomHeavyBondage = false Auto
Int consRandomHeavyBondageOID
Bool Property consBondageIgnoreMax = false Auto
Int consBondageIgnoreMaxOID
Bool Property consTattooCurseNumbers = false Auto
Int consTattooCurseNumbersOID
Bool Property sexEnabled = true Auto
Int sexEnabledOID
Bool Property sexAggressiveAnims = false Auto
Int sexAggressiveAnimsOID
Bool Property sexFilterDevices = true Auto
Int sexFilterDevicesOID
Bool Property sexFilterFuta = true Auto
Int sexFilterFutaOID
Bool Property sexRandomEnabled = false Auto
Int sexRandomEnabledOID
Bool Property sexRandAllowFollowers = true Auto
Int sexRandAllowFollowersOID
Bool Property sexRandAllowNPCs = false Auto
Int sexRandAllowNPCsOID
Bool Property sexRandAllowSummons = true Auto
Int sexRandAllowSummonsOID
Bool Property sexRandAllowCreatures = false Auto
Int sexRandAllowCreaturesOID
Bool Property sexAllowMale = true Auto
Int sexAllowMaleOID
Bool Property sexAllowFemale = true Auto
Int sexAllowFemaleOID
Bool Property sexAllowFuta = true Auto
Int sexAllowFutaOID
Bool Property sexAllowCreature = false Auto
Int sexAllowCreatureOID
Bool Property sexAllowFarmAnimals = false Auto
Int sexAllowFarmAnimalsOID
Bool Property sexRequireAllPlayer = false Auto
Int sexRequireAllPlayerOID
Bool Property sexRequirePlayerCollar = false Auto
Int sexRequirePlayerCollarOID
Bool Property sexRequirePlayerHeavy = false Auto
Int sexRequirePlayerHeavyOID
Bool Property sexRequirePlayerNude = true Auto
Int sexRequirePlayerNudeOID
Bool Property sexRequireAllNPC = false Auto
Int sexRequireAllNPCOID
Bool Property sexRequireNPCCollar = false Auto
Int sexRequireNPCCollarOID
Bool Property sexRequireNPCNude = true Auto
Int sexRequireNPCNudeOID
Bool Property sexRequireBoth = true Auto
Int sexRequireBothOID
Bool Property sexFollowerBypassPlayer = false Auto
Int sexFollowerBypassPlayerOID
Bool Property sexFollowerBypassNPC = true Auto
Int sexFollowerBypassNPCOID
Bool Property sexSpouseBypassPlayer = true Auto
Int sexSpouseBypassPlayerOID
Bool Property sexSpouseBypassNPC = true Auto
Int sexSpouseBypassNPCOID
Bool Property sexSummonBypassPlayer = false Auto
Int sexSummonBypassPlayerOID
Bool Property sexSummonBypassNPC = false Auto
Int sexSummonBypassNPCOID
Bool Property ModSuspended = false Auto
Int ModSuspendedOID
Bool Property setAllDefaultSettings = false Auto
Int setAllDefaultSettingsOID
Bool Property helpSlaveTatsNGInstalled = false Auto
Int helpSlaveTatsNGInstalledOID
Bool Property helpLewdMarksInstalled = false Auto
Int helpLewdMarksInstalledOID
Bool Property helpRapeTattoosInstalled = false Auto
Int helpRapeTattoosInstalledOID
Bool Property helpOSLArousedInstalled = false Auto
Int helpOSLArousedInstalledOID
Bool Property helpUDInstalled = false Auto
Int helpUDInstalledOID
Bool Property helpQuickLootInstalled = false Auto
Int helpQuickLootInstalledOID
Bool Property helpDWDInstalled = false Auto
Int helpDWDInstalledOID
Bool Property helpANDInstalled = false Auto
Int helpANDInstalledOID
Bool Property helpCockCagesWorking = false Auto
Int helpCockCagesWorkingOID
Int Property LMAllureColor = 0xcf11c5 Auto
Int LMAllureColorOID
Int Property LMHeatColor = 0xe3143a Auto
Int LMHeatColorOID
Int Property LMBrandingColor = 0x220022 Auto
Int LMBrandingColorOID
Int Property LMHealslutColor = 0xffbb45 Auto
Int LMHealslutColorOID
Int Property LMBondageColor = 0x7908cf Auto
Int LMBondageColorOID
Int Property LMNudityColor = 0xd676cb Auto
Int LMNudityColorOID
Int Property LMPainslutColor = 0x911300 Auto
Int LMPainslutColorOID
String Property excludedFollowers = "" Auto
Int excludedFollowersOID
String Property followerOverrideTheme = "" Auto
Int followerOverrideThemeOID
String Property followerSkipKeywords = "" Auto
Int followerSkipKeywordsOID
String Property LMNudityAditionalForms = "" Auto
Int LMNudityAditionalFormsOID
Int Property setDebugKey = -1 Auto
Int setDebugKeyOID
Int Property oppSummonerNPC = 0 Auto
String[] Property oppSummonerNPCList Auto
Int oppSummonerNPCOID

Function Initialize()
	Pages = new String[16]
	Pages[0] = "$DCURSES_PAGE_Main"
	Pages[1] = "$DCURSES_PAGE_Devices"
	Pages[2] = "$DCURSES_PAGE_Keys"
	Pages[3] = "$DCURSES_PAGE_Events"
	Pages[4] = "$DCURSES_PAGE_Followers"
	Pages[5] = "$DCURSES_PAGE_UnforgivingDevices"
	Pages[6] = "$DCURSES_PAGE_LewdMarks"
	Pages[7] = "$DCURSES_PAGE_OppressiveDevices"
	Pages[8] = "$DCURSES_PAGE_Locations"
	Pages[9] = "$DCURSES_PAGE_QuestInteractions"
	Pages[10] = "$DCURSES_PAGE_Misc"
	Pages[11] = "$DCURSES_PAGE_AdvancedNudityDetection"
	Pages[12] = "$DCURSES_PAGE_Consequences"
	Pages[13] = "$DCURSES_PAGE_Sex"
	Pages[14] = "$DCURSES_PAGE_Help"
	Pages[15] = "External Events"
EndFunction

	Event OnConfigInit()
		Initialize()
		SetupMenuStrings()
	EndEvent

	Event OnConfigOpen()
		OnMCMOpened()
		Initialize()
		SetupMenuStrings()
	EndEvent
	

	Event OnConfigClose()
		UpdateSKSE()
	EndEvent
	

Event OnPageReset(string page)
	If page == ""
		page = LastPage
	Else
		LastPage = page
	EndIf
	If DCursesLib.NumDevicesEquipped(Game.GetPlayer()) > 0 && generalDeviceAntiCheat && page != "$DCURSES_PAGE_Help"
		page = "$DCURSES_PAGE_LOCKED"
	EndIf
	int flag_SlaveTats = 1
	If CheckSTNG()
		flag_SlaveTats = 0
	EndIf
	int flag_LewdMarks = 1
	If CheckLM() && CheckSTNG()
		flag_LewdMarks = 0
	EndIf
	int flag_RapeTats = 1
	If Game.GetModByName("RapeTattoos.esp") != 255 && CheckSTNG()
		flag_RapeTats = 0
	EndIf
	int flag_RT_LM = 1
	If Game.GetModByName("RapeTattoos.esp") != 255 && CheckSTNG() && CheckLM()
		flag_RT_LM = 0
	EndIf
	int flag_SimpleSlavery = 1
	If Game.GetModByName("SimpleSlavery.esp") != 255
		flag_SimpleSlavery = 0
	EndIf
	int flag_UnforgivingDevices = 1
	If Game.GetModByName("UnforgivingDevices.esp") != 255
		flag_UnforgivingDevices = 0
	EndIf
	int flag_SGO = 1
	If Game.GetModByName("Sgo4IF.esp") != 255
		flag_SGO = 0
	EndIf
	int flag_LockOppDevice_Menu = 1
	If !oppDeviceAntiCheat || !WearingOppressiveDevice()
		flag_LockOppDevice_Menu = 0
	EndIf
	int flag_WickedDevices = 1
	If Game.GetModByName("Devious Wicked Devices.esp") != 255
		flag_WickedDevices = 0
	EndIf
	int flag_AND = 1
	If Game.GetModByName("Advanced Nudity Detection.esp") != 255
		flag_AND = 0
	EndIf
	SetCursorFillMode(TOP_TO_BOTTOM)
	If page == "$DCURSES_PAGE_Main"
		AddHeaderOption("$DCURSES_HEADER_Chances")
		baseChanceOID = AddSliderOption("$DCURSES_baseChance", baseChance, "{1}%", 0)
		containerModifierOID = AddSliderOption("$DCURSES_containerModifier", containerModifier, "{1}x", 0)
		bossContainerModifierOID = AddSliderOption("$DCURSES_bossContainerModifier", bossContainerModifier, "{1}x", 0)
		deadBodyModifierOID = AddSliderOption("$DCURSES_deadBodyModifier", deadBodyModifier, "{1}x", 0)
		pickpocketModifierOID = AddSliderOption("$DCURSES_pickpocketModifier", pickpocketModifier, "{1}x", 0)
		doorModifierOID = AddSliderOption("$DCURSES_doorModifier", doorModifier, "{1}x", 0)
		onlyLockedDoorsOID = AddToggleOption("$DCURSES_onlyLockedDoors", onlyLockedDoors, 0)
		lockedModifierOID = AddSliderOption("$DCURSES_lockedModifier", lockedModifier, "{1}x", 0)
		lockDifficultyModifierOID = AddSliderOption("$DCURSES_lockDifficultyModifier", lockDifficultyModifier, "{1}", 0)
		minGoldRequiredOID = AddSliderOption("$DCURSES_minGoldRequired", minGoldRequired, "{0}", 0)
		eventScalingOID = AddToggleOption("$DCURSES_eventScaling", eventScaling, 0)
		eventScalingModOID = AddSliderOption("$DCURSES_eventScalingMod", eventScalingMod, "{0}", 0)
		SetCursorPosition(1)
		AddHeaderOption("$DCURSES_HEADER_Parameters")
		minRestraintsOID = AddSliderOption("$DCURSES_minRestraints", minRestraints, "{0}", 0)
		maxRestraintsOID = AddSliderOption("$DCURSES_maxRestraints", maxRestraints, "{0}", 0)
		bossAditionalRestraintsOID = AddSliderOption("$DCURSES_bossAditionalRestraints", bossAditionalRestraints, "{0}", 0)
		bossOnlyHeavyOID = AddToggleOption("$DCURSES_bossOnlyHeavy", bossOnlyHeavy, 0)
		restraintCapOID = AddSliderOption("$DCURSES_restraintCap", restraintCap, "{0}", 0)
		stripPlayerOnEventOID = AddToggleOption("$DCURSES_stripPlayerOnEvent", stripPlayerOnEvent, 0)
		stripOnlyKeywordsOID = AddToggleOption("$DCURSES_stripOnlyKeywords", stripOnlyKeywords, 0)
		AddHeaderOption("$DCURSES_HEADER_Arousal")
		arousalModifierOID = AddSliderOption("$DCURSES_arousalModifier", arousalModifier, "{1}", 0)
		minArousalOID = AddSliderOption("$DCURSES_minArousal", minArousal, "{0}", 0)
	Elseif page == "$DCURSES_PAGE_Devices"
		AddHeaderOption("$DCURSES_HEADER_Chastity")
		beltWeightOID = AddSliderOption("$DCURSES_beltWeight", beltWeight, "{0}", 0)
		beltPlugsOID = AddToggleOption("$DCURSES_beltPlugs", beltPlugs, 0)
		chastityPiercingWeightOID = AddSliderOption("$DCURSES_chastityPiercingWeight", chastityPiercingWeight, "{0}", 0)
		useGenderedChastityOID = AddToggleOption("$DCURSES_useGenderedChastity", useGenderedChastity, 0)
		braWeightOID = AddSliderOption("$DCURSES_braWeight", braWeight, "{0}", 0)
		plugsWeightOID = AddSliderOption("$DCURSES_plugsWeight", plugsWeight, "{0}", 0)
		lockingPlugsWeightOID = AddSliderOption("$DCURSES_lockingPlugsWeight", lockingPlugsWeight, "{0}", 0)
		inflatablePlugsWeightOID = AddSliderOption("$DCURSES_inflatablePlugsWeight", inflatablePlugsWeight, "{0}", 0)
		plugsDontCountOID = AddToggleOption("$DCURSES_plugsDontCount", plugsDontCount, 0)
		useGenderedPlugsOID = AddToggleOption("$DCURSES_useGenderedPlugs", useGenderedPlugs, 0)
		AddHeaderOption("$DCURSES_HEADER_Piercings")
		nipplePiercingsWeightOID = AddSliderOption("$DCURSES_nipplePiercingsWeight", nipplePiercingsWeight, "{0}", 0)
		vaginalPiercingsWeightOID = AddSliderOption("$DCURSES_vaginalPiercingsWeight", vaginalPiercingsWeight, "{0}", 0)
		AddHeaderOption("$DCURSES_HEADER_Corsets&Harnesses")
		corsetWeightOID = AddSliderOption("$DCURSES_corsetWeight", corsetWeight, "{0}", 0)
		beltedCorsetsWeightOID = AddSliderOption("$DCURSES_beltedCorsetsWeight", beltedCorsetsWeight, "{0}", 0)
		slaveHarnessWeightOID = AddSliderOption("$DCURSES_slaveHarnessWeight", slaveHarnessWeight, "{0}", 0)
		chastityHarnessWeightOID = AddSliderOption("$DCURSES_chastityHarnessWeight", chastityHarnessWeight, "{0}", 0)
		AddHeaderOption("$DCURSES_HEADER_HeavyBondage")
		armbinderWeightOID = AddSliderOption("$DCURSES_armbinderWeight", armbinderWeight, "{0}", 0)
		elbowbinderWeightOID = AddSliderOption("$DCURSES_elbowbinderWeight", elbowbinderWeight, "{0}", 0)
		yokeWeightOID = AddSliderOption("$DCURSES_yokeWeight", yokeWeight, "{0}", 0)
		shacklesWeightOID = AddSliderOption("$DCURSES_shacklesWeight", shacklesWeight, "{0}", 0)
		straitjacketWeightOID = AddSliderOption("$DCURSES_straitjacketWeight", straitjacketWeight, "{0}", 0)
		straitjacketLegbinderWeightOID = AddSliderOption("$DCURSES_straitjacketLegbinderWeight", straitjacketLegbinderWeight, "{0}", 0)
		petSuitWeightOID = AddSliderOption("$DCURSES_petSuitWeight", petSuitWeight, "{0}", 0)
		SetCursorPosition(1)
		AddHeaderOption("$DCURSES_HEADER_Collars&Cuffs")
		collarWeightOID = AddSliderOption("$DCURSES_collarWeight", collarWeight, "{0}", 0)
		armCuffsWeightOID = AddSliderOption("$DCURSES_armCuffsWeight", armCuffsWeight, "{0}", 0)
		legCuffsWeightOID = AddSliderOption("$DCURSES_legCuffsWeight", legCuffsWeight, "{0}", 0)
		allowLegShacklesOID = AddToggleOption("$DCURSES_allowLegShackles", allowLegShackles, 0)
		AddHeaderOption("$DCURSES_HEADER_Gags&Blindfolds")
		gagWeightOID = AddSliderOption("$DCURSES_gagWeight", gagWeight, "{0}", 0)
		ringGagWeightOID = AddSliderOption("$DCURSES_ringGagWeight", ringGagWeight, "{0}", 0)
		largeGagWeightOID = AddSliderOption("$DCURSES_largeGagWeight", largeGagWeight, "{0}", 0)
		largeRingGagWeightOID = AddSliderOption("$DCURSES_largeRingGagWeight", largeRingGagWeight, "{0}", 0)
		blindfoldWeightOID = AddSliderOption("$DCURSES_blindfoldWeight", blindfoldWeight, "{0}", 0)
		hoodBothWeightOID = AddSliderOption("$DCURSES_hoodBothWeight", hoodBothWeight, "{0}", 0)
		hoodGagWeightOID = AddSliderOption("$DCURSES_hoodGagWeight", hoodGagWeight, "{0}", 0)
		hoodBlindWeightOID = AddSliderOption("$DCURSES_hoodBlindWeight", hoodBlindWeight, "{0}", 0)
		hoodNoneWeightOID = AddSliderOption("$DCURSES_hoodNoneWeight", hoodNoneWeight, "{0}", 0)
		AddHeaderOption("$DCURSES_HEADER_Body")
		catsuitWeightOID = AddSliderOption("$DCURSES_catsuitWeight", catsuitWeight, "{0}", 0)
		hobbleSkirtWeightOID = AddSliderOption("$DCURSES_hobbleSkirtWeight", hobbleSkirtWeight, "{0}", 0)
		hobbleSkirtDifficultyOID = AddSliderOption("$DCURSES_hobbleSkirtDifficulty", hobbleSkirtDifficulty, "{0}", 0)
		bootsWeightOID = AddSliderOption("$DCURSES_bootsWeight", bootsWeight, "{0}", 0)
		glovesWeightOID = AddSliderOption("$DCURSES_glovesWeight", glovesWeight, "{0}", 0)
		mittensWeightOID = AddSliderOption("$DCURSES_mittensWeight", mittensWeight, "{0}", 0)
	Elseif page == "$DCURSES_PAGE_Keys"
		keyLossChanceOID = AddSliderOption("$DCURSES_keyLossChance", keyLossChance, "{1}%", 0)
		keyChanceOID = AddSliderOption("$DCURSES_keyChance", keyChance, "{1}%", 0)
		minKeysLootedOID = AddSliderOption("$DCURSES_minKeysLooted", minKeysLooted, "{0}", 0)
		maxKeysLootedOID = AddSliderOption("$DCURSES_maxKeysLooted", maxKeysLooted, "{0}", 0)
		keyBonusOID = AddSliderOption("$DCURSES_keyBonus", keyBonus, "{1}%", 0)
		keyForgivenessOID = AddToggleOption("$DCURSES_keyForgiveness", keyForgiveness, 0)
		keyPickpocketBonusOID = AddSliderOption("$DCURSES_keyPickpocketBonus", keyPickpocketBonus, "{1}x", 0)
		maxHeldKeysOID = AddSliderOption("$DCURSES_maxHeldKeys", maxHeldKeys, "{0}", 0)
		SetCursorPosition(1)
		restraintsKeyWeightOID = AddSliderOption("$DCURSES_restraintsKeyWeight", restraintsKeyWeight, "{0}", 0)
		chastityKeyWeightOID = AddSliderOption("$DCURSES_chastityKeyWeight", chastityKeyWeight, "{0}", 0)
		piercingToolWeightOID = AddSliderOption("$DCURSES_piercingToolWeight", piercingToolWeight, "{0}", 0)
		AddEmptyOption()
		magicKeyChanceOID = AddSliderOption("$DCURSES_magicKeyChance", magicKeyChance, "{1}", 0)
		magicKeyOppressiveOID = AddToggleOption("$DCURSES_magicKeyOppressive", magicKeyOppressive, 0)
		preferRelevantKeysOID = AddToggleOption("$DCURSES_preferRelevantKeys", preferRelevantKeys, 0)
		vanishingKeysOID = AddToggleOption("$DCURSES_vanishingKeys", vanishingKeys, 0)
		keyLuckyBonusOID = AddSliderOption("$DCURSES_keyLuckyBonus", keyLuckyBonus, "{2}", 0)
	Elseif page == "$DCURSES_PAGE_Events"
		AddHeaderOption("$DCURSES_HEADER_BondageCurse")
		eventStandardWeightOID = AddSliderOption("$DCURSES_eventStandardWeight", eventStandardWeight, "{0}", 0)
		eventStandardBossReductionOID = AddSliderOption("$DCURSES_eventStandardBossReduction", eventStandardBossReduction, "{0}", 0)
		AddHeaderOption("$DCURSES_HEADER_OppresiveCurse")
		eventOppressiveWeightOID = AddSliderOption("$DCURSES_eventOppressiveWeight", eventOppressiveWeight, "{0}", 0)
		AddHeaderOption("$DCURSES_HEADER_ContraptionCurse")
		eventContraptionWeightOID = AddSliderOption("$DCURSES_eventContraptionWeight", eventContraptionWeight, "{0}", 0)
		eventContraptionTimeOID = AddSliderOption("$DCURSES_eventContraptionTime", eventContraptionTime, "{1}", 0)
		eventContDevicesOID = AddToggleOption("$DCURSES_eventContDevices", eventContDevices, 0)
		eventContAllDevicesOID = AddToggleOption("$DCURSES_eventContAllDevices", eventContAllDevices, 0)
		eventContDeviceOverrideOID = AddSliderOption("$DCURSES_eventContDeviceOverride", eventContDeviceOverride, "{0}", 0)
		AddHeaderOption("$DCURSES_HEADER_WickedCurse")
		eventWickedWeightOID = AddSliderOption("$DCURSES_eventWickedWeight", eventWickedWeight, "{0}", flag_WickedDevices)
		AddHeaderOption("$DCURSES_HEADER_TattooCurse")
		eventTattooWeightOID = AddSliderOption("$DCURSES_eventTattooWeight", eventTattooWeight, "{0}", flag_RapeTats)
		eventTattooMinOID = AddSliderOption("$DCURSES_eventTattooMin", eventTattooMin, "{0}", flag_RapeTats)
		eventTattooMaxOID = AddSliderOption("$DCURSES_eventTattooMax", eventTattooMax, "{0}", flag_RapeTats)
		eventTattooCapOID = AddSliderOption("$DCURSES_eventTattooCap", eventTattooCap, "{0}", flag_RapeTats)
		SetCursorPosition(1)
		AddHeaderOption("$DCURSES_HEADER_MarkCurse")
		eventLewdMarkWeightOID = AddSliderOption("$DCURSES_eventLewdMarkWeight", eventLewdMarkWeight, "{0}", flag_LewdMarks)
		AddHeaderOption("$DCURSES_HEADER_SlaveryCurse")
		eventSimpleSlaveryWeightOID = AddSliderOption("$DCURSES_eventSimpleSlaveryWeight", eventSimpleSlaveryWeight, "{0}", flag_SimpleSlavery)
		eventSSMinRestraintsOID = AddSliderOption("$DCURSES_eventSSMinRestraints", eventSSMinRestraints, "{0}", flag_SimpleSlavery)
		AddHeaderOption("$DCURSES_HEADER_AbadonCurse")
		eventAbadonWeightOID = AddSliderOption("$DCURSES_eventAbadonWeight", eventAbadonWeight, "{0}", flag_UnforgivingDevices)
		AddHeaderOption("$DCURSES_HEADER_AbadonSets")
		eventAbadonWarriorWeightOID = AddSliderOption("$DCURSES_eventAbadonWarriorWeight", eventAbadonWarriorWeight, "{0}", flag_UnforgivingDevices)
		eventAbadonWarriorCountOID = AddSliderOption("$DCURSES_eventAbadonWarriorCount", eventAbadonWarriorCount, "{0}", flag_UnforgivingDevices)
		eventAbadonScoutWeightOID = AddSliderOption("$DCURSES_eventAbadonScoutWeight", eventAbadonScoutWeight, "{0}", flag_UnforgivingDevices)
		eventAbadonScoutCountOID = AddSliderOption("$DCURSES_eventAbadonScoutCount", eventAbadonScoutCount, "{0}", flag_UnforgivingDevices)
		eventAbadonWitchWeightOID = AddSliderOption("$DCURSES_eventAbadonWitchWeight", eventAbadonWitchWeight, "{0}", flag_UnforgivingDevices)
		eventAbadonWitchCountOID = AddSliderOption("$DCURSES_eventAbadonWitchCount", eventAbadonWitchCount, "{0}", flag_UnforgivingDevices)
	Elseif page == "$DCURSES_PAGE_Followers"
		followerBondageEventOID = AddToggleOption("$DCURSES_followerBondageEvent", followerBondageEvent, 0)
		followerTattooEventOID = AddToggleOption("$DCURSES_followerTattooEvent", followerTattooEvent, 0)
		onlyFemaleFollowersOID = AddToggleOption("$DCURSES_onlyFemaleFollowers", onlyFemaleFollowers, 0)
		excludedFollowersOID = AddInputOption("$DCURSES_excludedFollowers", excludedFollowers, 0)
		followerOverrideThemeOID = AddInputOption("$DCURSES_followerOverrideTheme", followerOverrideTheme, 0)
		followerSkipKeywordsOID = AddInputOption("$DCURSES_followerSkipKeywords", followerSkipKeywords, 0)
		SetCursorPosition(1)
		followerHeavyRestraintsOID = AddToggleOption("$DCURSES_followerHeavyRestraints", followerHeavyRestraints, 0)
		followerGagsOID = AddToggleOption("$DCURSES_followerGags", followerGags, 0)
		followerDeviceMultOID = AddSliderOption("$DCURSES_followerDeviceMult", followerDeviceMult, "{2}", 0)
		followerDeviceModifierOID = AddSliderOption("$DCURSES_followerDeviceModifier", followerDeviceModifier, "{0}", 0)
	Elseif page == "$DCURSES_PAGE_UnforgivingDevices"
		onlyUseUnforgivingDevicesOID = AddToggleOption("$DCURSES_onlyUseUnforgivingDevices", onlyUseUnforgivingDevices, flag_UnforgivingDevices)
		udUseAbadonOID = AddToggleOption("$DCURSES_udUseAbadon", udUseAbadon, flag_UnforgivingDevices)
		udUseAbadonSetsOID = AddToggleOption("$DCURSES_udUseAbadonSets", udUseAbadonSets, flag_UnforgivingDevices)
		udUseMiscOID = AddToggleOption("$DCURSES_udUseMisc", udUseMisc, flag_UnforgivingDevices)
	Elseif page == "$DCURSES_PAGE_LewdMarks"
		AddHeaderOption("$DCURSES_HEADER_Allure")
		LMAllureWeightOID = AddSliderOption("$DCURSES_LMAllureWeight", LMAllureWeight, "{0}", flag_LewdMarks)
		LMAllureModOID = AddSliderOption("$DCURSES_LMAllureMod", LMAllureMod, "{0}", flag_LewdMarks)
		LMAllureSexOID = AddSliderOption("$DCURSES_LMAllureSex", LMAllureSex, "{0}", flag_LewdMarks)
		LMAllureSkipRequirementsOID = AddToggleOption("$DCURSES_LMAllureSkipRequirements", LMAllureSkipRequirements, flag_LewdMarks)
		LMAllureColorOID = AddColorOption("$DCURSES_LMAllureColor", LMAllureColor, flag_LewdMarks)
		AddHeaderOption("$DCURSES_HEADER_Heat")
		LMHeatWeightOID = AddSliderOption("$DCURSES_LMHeatWeight", LMHeatWeight, "{0}", flag_LewdMarks)
		LMHeatModOID = AddSliderOption("$DCURSES_LMHeatMod", LMHeatMod, "{0}", flag_LewdMarks)
		LMHeatContainerCountOID = AddSliderOption("$DCURSES_LMHeatContainerCount", LMHeatContainerCount, "{0}", flag_LewdMarks)
		LMHeatColorOID = AddColorOption("$DCURSES_LMHeatColor", LMHeatColor, flag_LewdMarks)
		AddHeaderOption("$DCURSES_HEADER_Branding")
		LMBrandingWeightOID = AddSliderOption("$DCURSES_LMBrandingWeight", LMBrandingWeight, "{0}", flag_RT_LM)
		LMBrandingChanceOID = AddSliderOption("$DCURSES_LMBrandingChance", LMBrandingChance, "{1}%", flag_RT_LM)
		LMBrandingTotalOID = AddSliderOption("$DCURSES_LMBrandingTotal", LMBrandingTotal, "{0}", flag_RT_LM)
		LMBrandingPunishOID = AddToggleOption("$DCURSES_LMBrandingPunish", LMBrandingPunish, flag_RT_LM)
		LMBrandingColorOID = AddColorOption("$DCURSES_LMBrandingColor", LMBrandingColor, flag_RT_LM)
		AddHeaderOption("$DCURSES_HEADER_Healslut")
		LMHealslutWeightOID = AddSliderOption("$DCURSES_LMHealslutWeight", LMHealslutWeight, "{0}", flag_LewdMarks)
		LMHealslutHealingOID = AddSliderOption("$DCURSES_LMHealslutHealing", LMHealslutHealing, "{0}", flag_LewdMarks)
		LMHealslutArousalOID = AddSliderOption("$DCURSES_LMHealslutArousal", LMHealslutArousal, "{0}", flag_LewdMarks)
		LMHealslutDurationOID = AddSliderOption("$DCURSES_LMHealslutDuration", LMHealslutDuration, "{0}", flag_LewdMarks)
		LMHealslutColorOID = AddColorOption("$DCURSES_LMHealslutColor", LMHealslutColor, flag_LewdMarks)
		SetCursorPosition(1)
		AddHeaderOption("$DCURSES_HEADER_Bondage")
		LMBondageWeightOID = AddSliderOption("$DCURSES_LMBondageWeight", LMBondageWeight, "{0}", flag_LewdMarks)
		LMBondageModifierOID = AddSliderOption("$DCURSES_LMBondageModifier", LMBondageModifier, "{1}X", flag_LewdMarks)
		LMBondageDeviceCapAddOID = AddSliderOption("$DCURSES_LMBondageDeviceCapAdd", LMBondageDeviceCapAdd, "{0}", flag_LewdMarks)
		LMBondageDeviceCountOID = AddSliderOption("$DCURSES_LMBondageDeviceCount", LMBondageDeviceCount, "{0}", flag_LewdMarks)
		LMBondageColorOID = AddColorOption("$DCURSES_LMBondageColor", LMBondageColor, flag_LewdMarks)
		AddHeaderOption("$DCURSES_HEADER_Nudity")
		int flag_LMStripBody = 1
		If LMNudityChestOnly && flag_LewdMarks == 0
			flag_LMStripBody = 0
		EndIf
		LMNudityWeightOID = AddSliderOption("$DCURSES_LMNudityWeight", LMNudityWeight, "{0}", flag_LewdMarks)
		LMNudityChestOnlyOID = AddToggleOption("$DCURSES_LMNudityChestOnly", LMNudityChestOnly, flag_LewdMarks)
		LMNudityAditionalFormsOID = AddInputOption("$DCURSES_LMNudityAditionalForms", LMNudityAditionalForms, flag_LMStripBody)
		LMNudityTalkTimesOID = AddSliderOption("$DCURSES_LMNudityTalkTimes", LMNudityTalkTimes, "{0}", flag_LewdMarks)
		LMNuditySkipGaggedOID = AddToggleOption("$DCURSES_LMNuditySkipGagged", LMNuditySkipGagged, flag_LewdMarks)
		LMNudityColorOID = AddColorOption("$DCURSES_LMNudityColor", LMNudityColor, flag_LewdMarks)
		AddHeaderOption("$DCURSES_HEADER_Painslut")
		LMPainslutWeightOID = AddSliderOption("$DCURSES_LMPainslutWeight", LMPainslutWeight, "{0}", flag_LewdMarks)
		LMPainslutModOID = AddSliderOption("$DCURSES_LMPainslutMod", LMPainslutMod, "{0}", flag_LewdMarks)
		LMPainslutCountOID = AddSliderOption("$DCURSES_LMPainslutCount", LMPainslutCount, "{0}", flag_LewdMarks)
		LMPainslutSexChanceOID = AddSliderOption("$DCURSES_LMPainslutSexChance", LMPainslutSexChance, "{1}", flag_LewdMarks)
		LMPainslutArousalOID = AddSliderOption("$DCURSES_LMPainslutArousal", LMPainslutArousal, "{0}", flag_LewdMarks)
		LMPainslutColorOID = AddColorOption("$DCURSES_LMPainslutColor", LMPainslutColor, flag_LewdMarks)
	Elseif page == "$DCURSES_PAGE_OppressiveDevices"
		oppOneAtATimeOID = AddToggleOption("$DCURSES_oppOneAtATime", oppOneAtATime, 0)
		AddHeaderOption("$DCURSES_HEADER_SummonerCollar")
		oppSummonerCollarWeightOID = AddSliderOption("$DCURSES_oppSummonerCollarWeight", oppSummonerCollarWeight, "{0}", 0)
		oppSummonerSexCountOID = AddSliderOption("$DCURSES_oppSummonerSexCount", oppSummonerSexCount, "{0}", 0)
		oppSummonerNPCOID = AddMenuOption("$DCURSES_oppSummonerNPC", oppSummonerNPCList[oppSummonerNPC], 0)
		oppSCollarDrainsMagickaOID = AddToggleOption("$DCURSES_oppSCollarDrainsMagicka", oppSCollarDrainsMagicka, 0)
		oppSCollarAutoRemoveOID = AddToggleOption("$DCURSES_oppSCollarAutoRemove", oppSCollarAutoRemove, 0)
		oppSummonChanceOID = AddSliderOption("$DCURSES_oppSummonChance", oppSummonChance, "{1}%", 0)
		oppSummonSexChanceOID = AddSliderOption("$DCURSES_oppSummonSexChance", oppSummonSexChance, "{1}%", 0)
		AddHeaderOption("$DCURSES_HEADER_DwarvenCuirass")
		oppDwarvenCuirassWeightOID = AddSliderOption("$DCURSES_oppDwarvenCuirassWeight", oppDwarvenCuirassWeight, "{0}", 0)
		oppDwarvenValueNeededOID = AddSliderOption("$DCURSES_oppDwarvenValueNeeded", oppDwarvenValueNeeded, "{0}", 0)
		oppDwarvenHeavyRestraintOID = AddToggleOption("$DCURSES_oppDwarvenHeavyRestraint", oppDwarvenHeavyRestraint, 0)
		oppDwarvenRequireLocOID = AddToggleOption("$DCURSES_oppDwarvenRequireLoc", oppDwarvenRequireLoc, 0)
		oppDwarvenArousalOID = AddSliderOption("$DCURSES_oppDwarvenArousal", oppDwarvenArousal, "{0}", 0)
		AddHeaderOption("$DCURSES_HEADER_NocturnalPiercings")
		oppNocturnalWeightOID = AddSliderOption("$DCURSES_oppNocturnalWeight", oppNocturnalWeight, "{0}", 0)
		oppNocturnalSexCountOID = AddSliderOption("$DCURSES_oppNocturnalSexCount", oppNocturnalSexCount, "{0}", 0)
		oppNocturnalPeopleOID = AddSliderOption("$DCURSES_oppNocturnalPeople", oppNocturnalPeople, "{0}", 0)
		oppNocturnalArousalOID = AddSliderOption("$DCURSES_oppNocturnalArousal", oppNocturnalArousal, "{0}", 0)
		oppNocturnalHandChanceOID = AddSliderOption("$DCURSES_oppNocturnalHandChance", oppNocturnalHandChance, "{1}%", 0)
		oppNocturnalRecastChanceOID = AddSliderOption("$DCURSES_oppNocturnalRecastChance", oppNocturnalRecastChance, "{1}%", 0)
		SetCursorPosition(1)
		AddEmptyOption()
		AddHeaderOption("$DCURSES_HEADER_LivingLatex")
		oppLivingLatexWeightOID = AddSliderOption("$DCURSES_oppLivingLatexWeight", oppLivingLatexWeight, "{0}", 0)
		oppLivingLatexStartTimeOID = AddSliderOption("$DCURSES_oppLivingLatexStartTime", oppLivingLatexStartTime, "{0}", 0)
		oppLivingLatexGemOID = AddSliderOption("$DCURSES_oppLivingLatexGem", oppLivingLatexGem, "{1}", 0)
		oppLivingLatexGemAllOID = AddToggleOption("$DCURSES_oppLivingLatexGemAll", oppLivingLatexGemAll, 0)
		oppLivingLatexHeavyOID = AddToggleOption("$DCURSES_oppLivingLatexHeavy", oppLivingLatexHeavy, 0)
		oppLivingLatexMoreOID = AddSliderOption("$DCURSES_oppLivingLatexMore", oppLivingLatexMore, "{1}", 0)
		oppLivingLatexRequireRemOID = AddToggleOption("$DCURSES_oppLivingLatexRequireRem", oppLivingLatexRequireRem, 0)
		oppLivingLatexOpenOID = AddToggleOption("$DCURSES_oppLivingLatexOpen", oppLivingLatexOpen, 0)
		AddHeaderOption("$DCURSES_HEADER_MadnessPlug")
		oppMadnessPlugWeightOID = AddSliderOption("$DCURSES_oppMadnessPlugWeight", oppMadnessPlugWeight, "{0}", 0)
		oppMadnessPlugIterationsOID = AddSliderOption("$DCURSES_oppMadnessPlugIterations", oppMadnessPlugIterations, "{0}", 0)
		oppMadnessplugOrgasmsOID = AddSliderOption("$DCURSES_oppMadnessplugOrgasms", oppMadnessplugOrgasms, "{0}", 0)
		oppMadnessOnlyDevicesOID = AddToggleOption("$DCURSES_oppMadnessOnlyDevices", oppMadnessOnlyDevices, 0)
		oppMadnessBeltFilterOID = AddToggleOption("$DCURSES_oppMadnessBeltFilter", oppMadnessBeltFilter, 0)
		oppMadnessMultiplierOID = AddSliderOption("$DCURSES_oppMadnessMultiplier", oppMadnessMultiplier, "{2}", 0)
		oppMadnessChaosOID = AddToggleOption("$DCURSES_oppMadnessChaos", oppMadnessChaos, 0)
	Elseif page == "$DCURSES_PAGE_Locations"
		lockedLocationBypassOID = AddSliderOption("$DCURSES_lockedLocationBypass", lockedLocationBypass, "{1}x", 0)
		theftLocationBypassOID = AddSliderOption("$DCURSES_theftLocationBypass", theftLocationBypass, "{1}x", 0)
		AddEmptyOption()
		playerHomeModifierOID = AddSliderOption("$DCURSES_playerHomeModifier", playerHomeModifier, "{1}x", 0)
		cityModifierOID = AddSliderOption("$DCURSES_cityModifier", cityModifier, "{1}x", 0)
		townModifierOID = AddSliderOption("$DCURSES_townModifier", townModifier, "{1}x", 0)
		banditModifierOID = AddSliderOption("$DCURSES_banditModifier", banditModifier, "{1}x", 0)
		draugrModifierOID = AddSliderOption("$DCURSES_draugrModifier", draugrModifier, "{1}x", 0)
		soulCairnModifierOID = AddSliderOption("$DCURSES_soulCairnModifier", soulCairnModifier, "{1}x", 0)
		SetCursorPosition(1)
		AddEmptyOption()
		AddEmptyOption()
		AddEmptyOption()
		dwarvenModifierOID = AddSliderOption("$DCURSES_dwarvenModifier", dwarvenModifier, "{1}x", 0)
		falmerModifierOID = AddSliderOption("$DCURSES_falmerModifier", falmerModifier, "{1}x", 0)
		forswornModifierOID = AddSliderOption("$DCURSES_forswornModifier", forswornModifier, "{1}x", 0)
		vampireModifierOID = AddSliderOption("$DCURSES_vampireModifier", vampireModifier, "{1}x", 0)
		warlockModifierOID = AddSliderOption("$DCURSES_warlockModifier", warlockModifier, "{1}x", 0)
		dragonLairModifierOID = AddSliderOption("$DCURSES_dragonLairModifier", dragonLairModifier, "{1}x", 0)
		apocryphaModifierOID = AddSliderOption("$DCURSES_apocryphaModifier", apocryphaModifier, "{1}x", 0)
		wildernessModifierOID = AddSliderOption("$DCURSES_wildernessModifier", wildernessModifier, "{1}x", 0)
	Elseif page == "$DCURSES_PAGE_QuestInteractions"
		int flag_enable_qi = 1
		If enableQuestInteractions
			flag_enable_qi = 0
		EndIf
		enableQuestInteractionsOID = AddToggleOption("$DCURSES_enableQuestInteractions", enableQuestInteractions, 0)
		AddHeaderOption("$DCURSES_HEADER_QuestToggles")
		enableQIMalkoranOID = AddToggleOption("$DCURSES_enableQIMalkoran", enableQIMalkoran, flag_enable_qi)
		enableQISanguineOID = AddToggleOption("$DCURSES_enableQISanguine", enableQISanguine, flag_enable_qi)
		enableQIBlackStarOID = AddToggleOption("$DCURSES_enableQIBlackStar", enableQIBlackStar, flag_enable_qi)
		enableQIMindOfMadnessOID = AddToggleOption("$DCURSES_enableQIMindOfMadness", enableQIMindOfMadness, flag_enable_qi)
		enableQILaidToRestOID = AddToggleOption("$DCURSES_enableQILaidToRest", enableQILaidToRest, flag_enable_qi)
		enableQICriedWolfOID = AddToggleOption("$DCURSES_enableQICriedWolf", enableQICriedWolf, flag_enable_qi)
		enableQIDeliveryOID = AddToggleOption("$DCURSES_enableQIDelivery", enableQIDelivery, flag_enable_qi)
		enableQIBarenziahOID = AddToggleOption("$DCURSES_enableQIBarenziah", enableQIBarenziah, flag_enable_qi)
		SetCursorPosition(1)
		AddEmptyOption()
		AddEmptyOption()
		enableQIProvingHonorOID = AddToggleOption("$DCURSES_enableQIProvingHonor", enableQIProvingHonor, flag_enable_qi)
		enableQISaarthalOID = AddToggleOption("$DCURSES_enableQISaarthal", enableQISaarthal, flag_enable_qi)
		enableQIBrelynaOID = AddToggleOption("$DCURSES_enableQIBrelyna", enableQIBrelyna, flag_enable_qi)
		enableQIDwemerMuseumOID = AddToggleOption("$DCURSES_enableQIDwemerMuseum", enableQIDwemerMuseum, flag_enable_qi)
		enableQITrinityRestoredOID = AddToggleOption("$DCURSES_enableQITrinityRestored", enableQITrinityRestored, flag_enable_qi)
		enableQIThalmorEmbassyOID = AddToggleOption("$DCURSES_enableQIThalmorEmbassy", enableQIThalmorEmbassy, flag_enable_qi)
		enableQIRingmakerOID = AddToggleOption("$DCURSES_enableQIRingmaker", enableQIRingmaker, flag_enable_qi)
	Elseif page == "$DCURSES_PAGE_Misc"
		int flag_ft_restricted = 1
		If restrictFastTravel
			flag_ft_restricted = 0
		EndIf
		int flag_wearingOppDevice = 1
		If !WearingOppressiveDevice()
			flag_wearingOppDevice = 0
		EndIf
		oppDeviceAntiCheatOID = AddToggleOption("$DCURSES_oppDeviceAntiCheat", oppDeviceAntiCheat, flag_wearingOppDevice)
		generalDeviceAntiCheatOID = AddToggleOption("$DCURSES_generalDeviceAntiCheat", generalDeviceAntiCheat, 0)
		noMessageBoxesOID = AddToggleOption("$DCURSES_noMessageBoxes", noMessageBoxes, 0)
		eventVisualEffectsOID = AddToggleOption("$DCURSES_eventVisualEffects", eventVisualEffects, 0)
		surpriseModeOID = AddToggleOption("$DCURSES_surpriseMode", surpriseMode, 0)
		rDeviceBaseChanceOID = AddSliderOption("$DCURSES_rDeviceBaseChance", rDeviceBaseChance, "{1}%", 0)
		rDeviceLuckyBonusOID = AddSliderOption("$DCURSES_rDeviceLuckyBonus", rDeviceLuckyBonus, "{1}", 0)
		wardingCharmChanceOID = AddSliderOption("$DCURSES_wardingCharmChance", wardingCharmChance, "{2}%", 0)
		dragonHoardOID = AddToggleOption("$DCURSES_dragonHoard", dragonHoard, 0)
		bossExtraGoldOID = AddToggleOption("$DCURSES_bossExtraGold", bossExtraGold, 0)
		useThemesOID = AddToggleOption("$DCURSES_useThemes", useThemes, 0)
		SetCursorPosition(1)
		setDebugKeyOID = AddKeyMapOption("$DCURSES_setDebugKey", setDebugKey, 0)
		disableForce3rdPersonOID = AddToggleOption("$DCURSES_disableForce3rdPerson", disableForce3rdPerson, 0)
		enableSlowStripOID = AddToggleOption("$DCURSES_enableSlowStrip", enableSlowStrip, 0)
		tatSolventChanceOID = AddSliderOption("$DCURSES_tatSolventChance", tatSolventChance, "{2}%", 0)
		arousalPotionChanceOID = AddSliderOption("$DCURSES_arousalPotionChance", arousalPotionChance, "{2}%", 0)
		arousalPotionLibidoOID = AddSliderOption("$DCURSES_arousalPotionLibido", arousalPotionLibido, "{1}", 0)
		restrictFastTravelOID = AddToggleOption("$DCURSES_restrictFastTravel", restrictFastTravel, 0)
		restrictFastTravelPartOID = AddToggleOption("$DCURSES_restrictFastTravelPart", restrictFastTravelPart, flag_ft_restricted)
		restrictFastTravelFullOID = AddToggleOption("$DCURSES_restrictFastTravelFull", restrictFastTravelFull, flag_ft_restricted)
		useDeviceNamesInThemesOID = AddToggleOption("$DCURSES_useDeviceNamesInThemes", useDeviceNamesInThemes, 0)
		saveDependentSettingsOID = AddToggleOption("$DCURSES_saveDependentSettings", saveDependentSettings, 0)
	Elseif page == "$DCURSES_PAGE_AdvancedNudityDetection"
		AddHeaderOption("$DCURSES_HEADER_NuditySex")
		ANDSexToplessOID = AddToggleOption("$DCURSES_ANDSexTopless", ANDSexTopless, flag_AND)
		ANDSexBottomlessOID = AddToggleOption("$DCURSES_ANDSexBottomless", ANDSexBottomless, flag_AND)
		ANDSexShowingChestOID = AddToggleOption("$DCURSES_ANDSexShowingChest", ANDSexShowingChest, flag_AND)
		ANDSexShowingGenitalsOID = AddToggleOption("$DCURSES_ANDSexShowingGenitals", ANDSexShowingGenitals, flag_AND)
		ANDSexShowingAssOID = AddToggleOption("$DCURSES_ANDSexShowingAss", ANDSexShowingAss, flag_AND)
		ANDSexShowingBraOID = AddToggleOption("$DCURSES_ANDSexShowingBra", ANDSexShowingBra, flag_AND)
		ANDSexShowingUnderwearOID = AddToggleOption("$DCURSES_ANDSexShowingUnderwear", ANDSexShowingUnderwear, flag_AND)
		SetCursorPosition(1)
		AddHeaderOption("$DCURSES_HEADER_NudityConsequence")
		ANDConsToplessOID = AddToggleOption("$DCURSES_ANDConsTopless", ANDConsTopless, flag_AND)
		ANDConsBottomlessOID = AddToggleOption("$DCURSES_ANDConsBottomless", ANDConsBottomless, flag_AND)
		ANDConsShowingChestOID = AddToggleOption("$DCURSES_ANDConsShowingChest", ANDConsShowingChest, flag_AND)
		ANDConsShowingGenitalsOID = AddToggleOption("$DCURSES_ANDConsShowingGenitals", ANDConsShowingGenitals, flag_AND)
		ANDConsShowingAssOID = AddToggleOption("$DCURSES_ANDConsShowingAss", ANDConsShowingAss, flag_AND)
		ANDConsShowingBraOID = AddToggleOption("$DCURSES_ANDConsShowingBra", ANDConsShowingBra, flag_AND)
		ANDConsShowingUnderwearOID = AddToggleOption("$DCURSES_ANDConsShowingUnderwear", ANDConsShowingUnderwear, flag_AND)
	Elseif page == "$DCURSES_PAGE_Consequences"
		int flag_enable_cons = 1
		If consEnable
			flag_enable_cons = 0
		EndIf
		int flag_enable_cons_rt = 1
		If consEnable && Game.GetModByName("RapeTattoos.esp") != 255 && CheckSTNG()
			flag_enable_cons_rt = 0
		EndIf
		consEnableOID = AddToggleOption("$DCURSES_consEnable", consEnable, 0)
		AddHeaderOption("$DCURSES_HEADER_Dialogue")
		consTalkNudeOID = AddSliderOption("$DCURSES_consTalkNude", consTalkNude, "{1}%", flag_enable_cons)
		consTalkRestrainedOID = AddSliderOption("$DCURSES_consTalkRestrained", consTalkRestrained, "{1}%", flag_enable_cons)
		consTalkHeavyOID = AddSliderOption("$DCURSES_consTalkHeavy", consTalkHeavy, "{1}%", flag_enable_cons)
		consTalkTattooOID = AddSliderOption("$DCURSES_consTalkTattoo", consTalkTattoo, "{1}%", flag_enable_cons)
		AddHeaderOption("$DCURSES_HEADER_Scans")
		consScanSexOID = AddSliderOption("$DCURSES_consScanSex", consScanSex, "{1}%", flag_enable_cons)
		consScanNudeOID = AddSliderOption("$DCURSES_consScanNude", consScanNude, "{1}%", flag_enable_cons)
		consScanRestrainedOID = AddSliderOption("$DCURSES_consScanRestrained", consScanRestrained, "{1}%", flag_enable_cons)
		consScanHeavyOID = AddSliderOption("$DCURSES_consScanHeavy", consScanHeavy, "{1}%", flag_enable_cons)
		consScanTattooOID = AddSliderOption("$DCURSES_consScanTattoo", consScanTattoo, "{1}%", flag_enable_cons)
		consScanTrespassOID = AddSliderOption("$DCURSES_consScanTrespass", consScanTrespass, "{1}%", flag_enable_cons)
		consScanRadiusOID = AddSliderOption("$DCURSES_consScanRadius", consScanRadius, "{0}", flag_enable_cons)
		consScanIntervalOID = AddSliderOption("$DCURSES_consScanInterval", consScanInterval, "{0}", flag_enable_cons)
		AddHeaderOption("$DCURSES_HEADER_Guards")
		consGuardNormalOID = AddToggleOption("$DCURSES_consGuardNormal", consGuardNormal, flag_enable_cons)
		consFineGuardFactionOID = AddToggleOption("$DCURSES_consFineGuardFaction", consFineGuardFaction, flag_enable_cons)
		consGuardScanSexOID = AddSliderOption("$DCURSES_consGuardScanSex", consGuardScanSex, "{1}%", flag_enable_cons)
		consGuardScanNudeOID = AddSliderOption("$DCURSES_consGuardScanNude", consGuardScanNude, "{1}%", flag_enable_cons)
		consGuardScanRestrainedOID = AddSliderOption("$DCURSES_consGuardScanRestrained", consGuardScanRestrained, "{1}%", flag_enable_cons)
		consGuardScanTattooOID = AddSliderOption("$DCURSES_consGuardScanTattoo", consGuardScanTattoo, "{1}%", flag_enable_cons)
		consGuardTalkMultOID = AddSliderOption("$DCURSES_consGuardTalkMult", consGuardTalkMult, "{1}", flag_enable_cons)
		consFineForSexOID = AddSliderOption("$DCURSES_consFineForSex", consFineForSex, "{0}", flag_enable_cons)
		consFineForNudityOID = AddSliderOption("$DCURSES_consFineForNudity", consFineForNudity, "{0}", flag_enable_cons)
		consFineForRestraintsOID = AddSliderOption("$DCURSES_consFineForRestraints", consFineForRestraints, "{0}", flag_enable_cons)
		consFineForTattoosOID = AddSliderOption("$DCURSES_consFineForTattoos", consFineForTattoos, "{0}", flag_enable_cons)
		SetCursorPosition(1)
		consFallthroughOID = AddToggleOption("$DCURSES_consFallthrough", consFallthrough, flag_enable_cons)
		AddHeaderOption("$DCURSES_HEADER_Toggles")
		consAllowFollowersOID = AddToggleOption("$DCURSES_consAllowFollowers", consAllowFollowers, flag_enable_cons)
		consFollowersBlockOID = AddToggleOption("$DCURSES_consFollowersBlock", consFollowersBlock, flag_enable_cons)
		consTolerableChastityOID = AddToggleOption("$DCURSES_consTolerableChastity", consTolerableChastity, flag_enable_cons)
		consUseRelationshipsOID = AddToggleOption("$DCURSES_consUseRelationships", consUseRelationships, flag_enable_cons)
		consRelationBondageOID = AddToggleOption("$DCURSES_consRelationBondage", consRelationBondage, flag_enable_cons)
		consRestrainedCountOID = AddSliderOption("$DCURSES_consRestrainedCount", consRestrainedCount, "{0}", flag_enable_cons)
		consTattooCountOID = AddSliderOption("$DCURSES_consTattooCount", consTattooCount, "{0}", flag_enable_cons)
		consGaggedMultiplierOID = AddSliderOption("$DCURSES_consGaggedMultiplier", consGaggedMultiplier, "{1}x", flag_enable_cons)
		AddHeaderOption("$DCURSES_HEADER_Results")
		consSexWeightOID = AddSliderOption("$DCURSES_consSexWeight", consSexWeight, "{0}", flag_enable_cons)
		AddEmptyOption()
		consRandomBondageWeightOID = AddSliderOption("$DCURSES_consRandomBondageWeight", consRandomBondageWeight, "{0}", flag_enable_cons)
		consRandomHeavyBondageOID = AddToggleOption("$DCURSES_consRandomHeavyBondage", consRandomHeavyBondage, flag_enable_cons)
		consBondageIgnoreMaxOID = AddToggleOption("$DCURSES_consBondageIgnoreMax", consBondageIgnoreMax, 0)
		AddEmptyOption()
		consTattooWeightOID = AddSliderOption("$DCURSES_consTattooWeight", consTattooWeight, "{0}", flag_enable_cons_rt)
		consTattooCurseNumbersOID = AddToggleOption("$DCURSES_consTattooCurseNumbers", consTattooCurseNumbers, flag_enable_cons_rt)
		AddEmptyOption()
		consMercyWeightOID = AddSliderOption("$DCURSES_consMercyWeight", consMercyWeight, "{0}", flag_enable_cons)
	Elseif page == "$DCURSES_PAGE_Sex"
		int flag_enable_sex = 1
		If sexEnabled
			flag_enable_sex = 0
		EndIf
		int flag_enable_random_sex = 1
		If sexRandomEnabled
			flag_enable_random_sex = 0
		EndIf
		int flag_sex_slave_tats = 1
		If sexRandomEnabled && CheckSTNG()
			flag_sex_slave_tats = 0
		EndIf
		AddHeaderOption("$DCURSES_HEADER_General")
		sexEnabledOID = AddToggleOption("$DCURSES_sexEnabled", sexEnabled, 0)
		sexAggressiveAnimsOID = AddToggleOption("$DCURSES_sexAggressiveAnims", sexAggressiveAnims, flag_enable_sex)
		sexFilterDevicesOID = AddToggleOption("$DCURSES_sexFilterDevices", sexFilterDevices, flag_enable_sex)
		sexFilterFutaOID = AddToggleOption("$DCURSES_sexFilterFuta", sexFilterFuta, flag_enable_sex)
		AddEmptyOption()
		AddEmptyOption()
		AddHeaderOption("$DCURSES_HEADER_RandomSex")
		sexRandomEnabledOID = AddToggleOption("$DCURSES_sexRandomEnabled", sexRandomEnabled, 0)
		sexCooldownOID = AddSliderOption("$DCURSES_sexCooldown", sexCooldown, "{0}", flag_enable_random_sex)
		sexRandAllowFollowersOID = AddToggleOption("$DCURSES_sexRandAllowFollowers", sexRandAllowFollowers, flag_enable_random_sex)
		sexRandAllowNPCsOID = AddToggleOption("$DCURSES_sexRandAllowNPCs", sexRandAllowNPCs, flag_enable_random_sex)
		sexRandAllowSummonsOID = AddToggleOption("$DCURSES_sexRandAllowSummons", sexRandAllowSummons, flag_enable_random_sex)
		sexRandAllowCreaturesOID = AddToggleOption("$DCURSES_sexRandAllowCreatures", sexRandAllowCreatures, flag_enable_random_sex)
		sexBaseChanceOID = AddSliderOption("$DCURSES_sexBaseChance", sexBaseChance, "{1}%", flag_enable_random_sex)
		AddHeaderOption("$DCURSES_HEADER_Modifiers")
		sexCreatureModifierOID = AddSliderOption("$DCURSES_sexCreatureModifier", sexCreatureModifier, "{1}", flag_enable_random_sex)
		sexFollowerModifierOID = AddSliderOption("$DCURSES_sexFollowerModifier", sexFollowerModifier, "{1}", flag_enable_random_sex)
		sexSummonModifierOID = AddSliderOption("$DCURSES_sexSummonModifier", sexSummonModifier, "{1}", flag_enable_random_sex)
		sexRestraintsModifierOID = AddSliderOption("$DCURSES_sexRestraintsModifier", sexRestraintsModifier, "{2}", flag_enable_random_sex)
		sexSafeLocationModifierOID = AddSliderOption("$DCURSES_sexSafeLocationModifier", sexSafeLocationModifier, "{1}", flag_enable_random_sex)
		sexUnsafeLocationModifierOID = AddSliderOption("$DCURSES_sexUnsafeLocationModifier", sexUnsafeLocationModifier, "{1}", flag_enable_random_sex)
		sexPlayerNudityModifierOID = AddSliderOption("$DCURSES_sexPlayerNudityModifier", sexPlayerNudityModifier, "{1}", flag_enable_random_sex)
		sexNPCNudityModifierOID = AddSliderOption("$DCURSES_sexNPCNudityModifier", sexNPCNudityModifier, "{1}", flag_enable_random_sex)
		sexPlayerArousalModifierOID = AddSliderOption("$DCURSES_sexPlayerArousalModifier", sexPlayerArousalModifier, "{1}", flag_enable_random_sex)
		sexNPCArousalModifierOID = AddSliderOption("$DCURSES_sexNPCArousalModifier", sexNPCArousalModifier, "{1}", flag_enable_random_sex)
		sexArousalModifierCutoffOID = AddSliderOption("$DCURSES_sexArousalModifierCutoff", sexArousalModifierCutoff, "{0}", flag_enable_random_sex)
		sexAllureModifierOID = AddSliderOption("$DCURSES_sexAllureModifier", sexAllureModifier, "{1}", flag_enable_random_sex)
		sexSummonerModifierOID = AddSliderOption("$DCURSES_sexSummonerModifier", sexSummonerModifier, "{1}", flag_enable_random_sex)
		AddHeaderOption("$DCURSES_HEADER_Search")
		sexScalingModifierOID = AddSliderOption("$DCURSES_sexScalingModifier", sexScalingModifier, "{0}", flag_enable_random_sex)
		sexSearchRadiusOID = AddSliderOption("$DCURSES_sexSearchRadius", sexSearchRadius, "{0}", 0)
		sexSearchIntervalOID = AddSliderOption("$DCURSES_sexSearchInterval", sexSearchInterval, "{0}", 0)
		SetCursorPosition(1)
		AddHeaderOption("$DCURSES_HEADER_AllowedActors")
		sexAllowMaleOID = AddToggleOption("$DCURSES_sexAllowMale", sexAllowMale, flag_enable_sex)
		sexAllowFemaleOID = AddToggleOption("$DCURSES_sexAllowFemale", sexAllowFemale, flag_enable_sex)
		sexAllowFutaOID = AddToggleOption("$DCURSES_sexAllowFuta", sexAllowFuta, flag_enable_sex)
		sexAllowCreatureOID = AddToggleOption("$DCURSES_sexAllowCreature", sexAllowCreature, flag_enable_sex)
		sexAllowFarmAnimalsOID = AddToggleOption("$DCURSES_sexAllowFarmAnimals", sexAllowFarmAnimals, flag_enable_sex)
		AddEmptyOption()
		AddHeaderOption("$DCURSES_HEADER_PlayerRequirements")
		sexRequireAllPlayerOID = AddToggleOption("$DCURSES_sexRequireAllPlayer", sexRequireAllPlayer, flag_enable_random_sex)
		sexRequiredPlayerBindingsOID = AddSliderOption("$DCURSES_sexRequiredPlayerBindings", sexRequiredPlayerBindings, "{0}", flag_enable_random_sex)
		sexRequirePlayerCollarOID = AddToggleOption("$DCURSES_sexRequirePlayerCollar", sexRequirePlayerCollar, flag_enable_random_sex)
		sexRequirePlayerHeavyOID = AddToggleOption("$DCURSES_sexRequirePlayerHeavy", sexRequirePlayerHeavy, flag_enable_random_sex)
		sexRequirePlayerNudeOID = AddToggleOption("$DCURSES_sexRequirePlayerNude", sexRequirePlayerNude, flag_enable_random_sex)
		sexRequiredPlayerArousalOID = AddSliderOption("$DCURSES_sexRequiredPlayerArousal", sexRequiredPlayerArousal, "{0}", flag_enable_random_sex)
		sexRequiredPlayerTattoosOID = AddSliderOption("$DCURSES_sexRequiredPlayerTattoos", sexRequiredPlayerTattoos, "{0}", flag_sex_slave_tats)
		AddHeaderOption("$DCURSES_HEADER_NPCRequirements")
		sexRequireAllNPCOID = AddToggleOption("$DCURSES_sexRequireAllNPC", sexRequireAllNPC, flag_enable_random_sex)
		sexRequiredNPCBindingsOID = AddSliderOption("$DCURSES_sexRequiredNPCBindings", sexRequiredNPCBindings, "{0}", flag_enable_random_sex)
		sexRequireNPCCollarOID = AddToggleOption("$DCURSES_sexRequireNPCCollar", sexRequireNPCCollar, flag_enable_random_sex)
		sexRequireNPCNudeOID = AddToggleOption("$DCURSES_sexRequireNPCNude", sexRequireNPCNude, flag_enable_random_sex)
		sexRequiredNPCArousalOID = AddSliderOption("$DCURSES_sexRequiredNPCArousal", sexRequiredNPCArousal, "{0}", flag_enable_random_sex)
		sexRequiredNPCTattoosOID = AddSliderOption("$DCURSES_sexRequiredNPCTattoos", sexRequiredNPCTattoos, "{0}", flag_sex_slave_tats)
		AddHeaderOption("$DCURSES_HEADER_CreatureRequirements")
		sexRequiredCreatureArousalOID = AddSliderOption("$DCURSES_sexRequiredCreatureArousal", sexRequiredCreatureArousal, "{0}", flag_enable_random_sex)
		AddHeaderOption("$DCURSES_HEADER_RequirementExceptions")
		sexRequireBothOID = AddToggleOption("$DCURSES_sexRequireBoth", sexRequireBoth, flag_enable_random_sex)
		sexFollowerBypassPlayerOID = AddToggleOption("$DCURSES_sexFollowerBypassPlayer", sexFollowerBypassPlayer, flag_enable_random_sex)
		sexFollowerBypassNPCOID = AddToggleOption("$DCURSES_sexFollowerBypassNPC", sexFollowerBypassNPC, flag_enable_random_sex)
		sexSpouseBypassPlayerOID = AddToggleOption("$DCURSES_sexSpouseBypassPlayer", sexSpouseBypassPlayer, flag_enable_random_sex)
		sexSpouseBypassNPCOID = AddToggleOption("$DCURSES_sexSpouseBypassNPC", sexSpouseBypassNPC, flag_enable_random_sex)
		sexSummonBypassPlayerOID = AddToggleOption("$DCURSES_sexSummonBypassPlayer", sexSummonBypassPlayer, flag_enable_random_sex)
		sexSummonBypassNPCOID = AddToggleOption("$DCURSES_sexSummonBypassNPC", sexSummonBypassNPC, flag_enable_random_sex)
	Elseif page == "$DCURSES_PAGE_Help"
		ModSuspendedOID = AddToggleOption("$DCURSES_ModSuspended", ModSuspended, 0)
		setAllDefaultSettingsOID = AddToggleOption("$DCURSES_setAllDefaultSettings", setAllDefaultSettings, 0)
		SetCursorPosition(1)
		AddHeaderOption("$DCURSES_HEADER_OptionalRequirementsCheck")
		AddHeaderOption("$DCURSES_HEADER_TattooRequirements")
		helpSlaveTatsNGInstalledOID = AddToggleOption("$DCURSES_helpSlaveTatsNGInstalled", helpSlaveTatsNGInstalled, 0)
		helpLewdMarksInstalledOID = AddToggleOption("$DCURSES_helpLewdMarksInstalled", helpLewdMarksInstalled, 0)
		helpRapeTattoosInstalledOID = AddToggleOption("$DCURSES_helpRapeTattoosInstalled", helpRapeTattoosInstalled, 0)
		AddHeaderOption("$DCURSES_HEADER_OtherIntegrations")
		helpOSLArousedInstalledOID = AddToggleOption("$DCURSES_helpOSLArousedInstalled", helpOSLArousedInstalled, 0)
		helpUDInstalledOID = AddToggleOption("$DCURSES_helpUDInstalled", helpUDInstalled, 0)
		helpQuickLootInstalledOID = AddToggleOption("$DCURSES_helpQuickLootInstalled", helpQuickLootInstalled, 0)
		helpDWDInstalledOID = AddToggleOption("$DCURSES_helpDWDInstalled", helpDWDInstalled, 0)
		helpANDInstalledOID = AddToggleOption("$DCURSES_helpANDInstalled", helpANDInstalled, 0)
		helpCockCagesWorkingOID = AddToggleOption("$DCURSES_helpCockCagesWorking", helpCockCagesWorking, 0)
	Elseif page == "External Events"
		AddHeaderOption("Registered event mods")
		int externalCount = GetExternalEventCount()
		If externalCount <= 0
			AddTextOption("None registered", "", 1)
		Else
			int externalIndex = 0
			While externalIndex < externalCount
				string externalName = GetExternalEventName(externalIndex)
				string externalId = GetExternalEventId(externalIndex)
				int externalWeight = GetExternalEventWeightAt(externalIndex) as int
				AddTextOption(externalName, externalId + "  " + externalWeight, 1)
				externalIndex += 1
			EndWhile
		EndIf
	Elseif page == "$DCURSES_PAGE_LOCKED"
		AddHeaderOption("$DCURSES_HEADER_MCMisLocked!")
		AddHeaderOption("$DCURSES_HEADER_Removeallofyourrestraintstounlock.")
	EndIf
EndEvent

Event OnOptionHighlight(int option)
	If option == baseChanceOID
		SetInfoText("$DCURSES_DESCRIPTION_baseChance")
		Return
	Endif
	If option == containerModifierOID
		SetInfoText("$DCURSES_DESCRIPTION_containerModifier")
		Return
	Endif
	If option == bossContainerModifierOID
		SetInfoText("$DCURSES_DESCRIPTION_bossContainerModifier")
		Return
	Endif
	If option == deadBodyModifierOID
		SetInfoText("$DCURSES_DESCRIPTION_deadBodyModifier")
		Return
	Endif
	If option == pickpocketModifierOID
		SetInfoText("$DCURSES_DESCRIPTION_pickpocketModifier")
		Return
	Endif
	If option == doorModifierOID
		SetInfoText("$DCURSES_DESCRIPTION_doorModifier")
		Return
	Endif
	If option == onlyLockedDoorsOID
		SetInfoText("$DCURSES_DESCRIPTION_onlyLockedDoors")
		Return
	Endif
	If option == lockedModifierOID
		SetInfoText("$DCURSES_DESCRIPTION_lockedModifier")
		Return
	Endif
	If option == lockDifficultyModifierOID
		SetInfoText("$DCURSES_DESCRIPTION_lockDifficultyModifier")
		Return
	Endif
	If option == minGoldRequiredOID
		SetInfoText("$DCURSES_DESCRIPTION_minGoldRequired")
		Return
	Endif
	If option == eventScalingOID
		SetInfoText("$DCURSES_DESCRIPTION_eventScaling")
		Return
	Endif
	If option == eventScalingModOID
		SetInfoText("$DCURSES_DESCRIPTION_eventScalingMod")
		Return
	Endif
	If option == minRestraintsOID
		SetInfoText("$DCURSES_DESCRIPTION_minRestraints")
		Return
	Endif
	If option == maxRestraintsOID
		SetInfoText("$DCURSES_DESCRIPTION_maxRestraints")
		Return
	Endif
	If option == bossAditionalRestraintsOID
		SetInfoText("$DCURSES_DESCRIPTION_bossAditionalRestraints")
		Return
	Endif
	If option == bossOnlyHeavyOID
		SetInfoText("$DCURSES_DESCRIPTION_bossOnlyHeavy")
		Return
	Endif
	If option == restraintCapOID
		SetInfoText("$DCURSES_DESCRIPTION_restraintCap")
		Return
	Endif
	If option == stripPlayerOnEventOID
		SetInfoText("$DCURSES_DESCRIPTION_stripPlayerOnEvent")
		Return
	Endif
	If option == stripOnlyKeywordsOID
		SetInfoText("$DCURSES_DESCRIPTION_stripOnlyKeywords")
		Return
	Endif
	If option == arousalModifierOID
		SetInfoText("$DCURSES_DESCRIPTION_arousalModifier")
		Return
	Endif
	If option == minArousalOID
		SetInfoText("$DCURSES_DESCRIPTION_minArousal")
		Return
	Endif
	If option == beltWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_beltWeight")
		Return
	Endif
	If option == beltPlugsOID
		SetInfoText("$DCURSES_DESCRIPTION_beltPlugs")
		Return
	Endif
	If option == chastityPiercingWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_chastityPiercingWeight")
		Return
	Endif
	If option == useGenderedChastityOID
		SetInfoText("$DCURSES_DESCRIPTION_useGenderedChastity")
		Return
	Endif
	If option == braWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_braWeight")
		Return
	Endif
	If option == plugsWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_plugsWeight")
		Return
	Endif
	If option == lockingPlugsWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_lockingPlugsWeight")
		Return
	Endif
	If option == inflatablePlugsWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_inflatablePlugsWeight")
		Return
	Endif
	If option == plugsDontCountOID
		SetInfoText("$DCURSES_DESCRIPTION_plugsDontCount")
		Return
	Endif
	If option == useGenderedPlugsOID
		SetInfoText("$DCURSES_DESCRIPTION_useGenderedPlugs")
		Return
	Endif
	If option == nipplePiercingsWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_nipplePiercingsWeight")
		Return
	Endif
	If option == vaginalPiercingsWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_vaginalPiercingsWeight")
		Return
	Endif
	If option == corsetWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_corsetWeight")
		Return
	Endif
	If option == beltedCorsetsWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_beltedCorsetsWeight")
		Return
	Endif
	If option == slaveHarnessWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_slaveHarnessWeight")
		Return
	Endif
	If option == chastityHarnessWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_chastityHarnessWeight")
		Return
	Endif
	If option == armbinderWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_armbinderWeight")
		Return
	Endif
	If option == elbowbinderWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_elbowbinderWeight")
		Return
	Endif
	If option == yokeWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_yokeWeight")
		Return
	Endif
	If option == shacklesWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_shacklesWeight")
		Return
	Endif
	If option == straitjacketWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_straitjacketWeight")
		Return
	Endif
	If option == straitjacketLegbinderWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_straitjacketLegbinderWeight")
		Return
	Endif
	If option == petSuitWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_petSuitWeight")
		Return
	Endif
	If option == collarWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_collarWeight")
		Return
	Endif
	If option == armCuffsWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_armCuffsWeight")
		Return
	Endif
	If option == legCuffsWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_legCuffsWeight")
		Return
	Endif
	If option == allowLegShacklesOID
		SetInfoText("$DCURSES_DESCRIPTION_allowLegShackles")
		Return
	Endif
	If option == gagWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_gagWeight")
		Return
	Endif
	If option == ringGagWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_ringGagWeight")
		Return
	Endif
	If option == largeGagWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_largeGagWeight")
		Return
	Endif
	If option == largeRingGagWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_largeRingGagWeight")
		Return
	Endif
	If option == blindfoldWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_blindfoldWeight")
		Return
	Endif
	If option == hoodBothWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_hoodBothWeight")
		Return
	Endif
	If option == hoodGagWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_hoodGagWeight")
		Return
	Endif
	If option == hoodBlindWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_hoodBlindWeight")
		Return
	Endif
	If option == hoodNoneWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_hoodNoneWeight")
		Return
	Endif
	If option == catsuitWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_catsuitWeight")
		Return
	Endif
	If option == hobbleSkirtWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_hobbleSkirtWeight")
		Return
	Endif
	If option == hobbleSkirtDifficultyOID
		SetInfoText("$DCURSES_DESCRIPTION_hobbleSkirtDifficulty")
		Return
	Endif
	If option == bootsWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_bootsWeight")
		Return
	Endif
	If option == glovesWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_glovesWeight")
		Return
	Endif
	If option == mittensWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_mittensWeight")
		Return
	Endif
	If option == keyLossChanceOID
		SetInfoText("$DCURSES_DESCRIPTION_keyLossChance")
		Return
	Endif
	If option == keyChanceOID
		SetInfoText("$DCURSES_DESCRIPTION_keyChance")
		Return
	Endif
	If option == minKeysLootedOID
		SetInfoText("$DCURSES_DESCRIPTION_minKeysLooted")
		Return
	Endif
	If option == maxKeysLootedOID
		SetInfoText("$DCURSES_DESCRIPTION_maxKeysLooted")
		Return
	Endif
	If option == keyBonusOID
		SetInfoText("$DCURSES_DESCRIPTION_keyBonus")
		Return
	Endif
	If option == keyForgivenessOID
		SetInfoText("$DCURSES_DESCRIPTION_keyForgiveness")
		Return
	Endif
	If option == keyPickpocketBonusOID
		SetInfoText("$DCURSES_DESCRIPTION_keyPickpocketBonus")
		Return
	Endif
	If option == maxHeldKeysOID
		SetInfoText("$DCURSES_DESCRIPTION_maxHeldKeys")
		Return
	Endif
	If option == restraintsKeyWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_restraintsKeyWeight")
		Return
	Endif
	If option == chastityKeyWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_chastityKeyWeight")
		Return
	Endif
	If option == piercingToolWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_piercingToolWeight")
		Return
	Endif
	If option == magicKeyChanceOID
		SetInfoText("$DCURSES_DESCRIPTION_magicKeyChance")
		Return
	Endif
	If option == magicKeyOppressiveOID
		SetInfoText("$DCURSES_DESCRIPTION_magicKeyOppressive")
		Return
	Endif
	If option == preferRelevantKeysOID
		SetInfoText("$DCURSES_DESCRIPTION_preferRelevantKeys")
		Return
	Endif
	If option == vanishingKeysOID
		SetInfoText("$DCURSES_DESCRIPTION_vanishingKeys")
		Return
	Endif
	If option == keyLuckyBonusOID
		SetInfoText("$DCURSES_DESCRIPTION_keyLuckyBonus")
		Return
	Endif
	If option == eventStandardWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_eventStandardWeight")
		Return
	Endif
	If option == eventStandardBossReductionOID
		SetInfoText("$DCURSES_DESCRIPTION_eventStandardBossReduction")
		Return
	Endif
	If option == eventOppressiveWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_eventOppressiveWeight")
		Return
	Endif
	If option == eventContraptionWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_eventContraptionWeight")
		Return
	Endif
	If option == eventContraptionTimeOID
		SetInfoText("$DCURSES_DESCRIPTION_eventContraptionTime")
		Return
	Endif
	If option == eventContDevicesOID
		SetInfoText("$DCURSES_DESCRIPTION_eventContDevices")
		Return
	Endif
	If option == eventContAllDevicesOID
		SetInfoText("$DCURSES_DESCRIPTION_eventContAllDevices")
		Return
	Endif
	If option == eventContDeviceOverrideOID
		SetInfoText("$DCURSES_DESCRIPTION_eventContDeviceOverride")
		Return
	Endif
	If option == eventWickedWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_eventWickedWeight")
		Return
	Endif
	If option == eventTattooWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_eventTattooWeight")
		Return
	Endif
	If option == eventTattooMinOID
		SetInfoText("$DCURSES_DESCRIPTION_eventTattooMin")
		Return
	Endif
	If option == eventTattooMaxOID
		SetInfoText("$DCURSES_DESCRIPTION_eventTattooMax")
		Return
	Endif
	If option == eventTattooCapOID
		SetInfoText("$DCURSES_DESCRIPTION_eventTattooCap")
		Return
	Endif
	If option == eventLewdMarkWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_eventLewdMarkWeight")
		Return
	Endif
	If option == eventSimpleSlaveryWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_eventSimpleSlaveryWeight")
		Return
	Endif
	If option == eventSSMinRestraintsOID
		SetInfoText("$DCURSES_DESCRIPTION_eventSSMinRestraints")
		Return
	Endif
	If option == eventAbadonWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_eventAbadonWeight")
		Return
	Endif
	If option == eventAbadonWarriorWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_eventAbadonWarriorWeight")
		Return
	Endif
	If option == eventAbadonWarriorCountOID
		SetInfoText("$DCURSES_DESCRIPTION_eventAbadonWarriorCount")
		Return
	Endif
	If option == eventAbadonScoutWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_eventAbadonScoutWeight")
		Return
	Endif
	If option == eventAbadonScoutCountOID
		SetInfoText("$DCURSES_DESCRIPTION_eventAbadonScoutCount")
		Return
	Endif
	If option == eventAbadonWitchWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_eventAbadonWitchWeight")
		Return
	Endif
	If option == eventAbadonWitchCountOID
		SetInfoText("$DCURSES_DESCRIPTION_eventAbadonWitchCount")
		Return
	Endif
	If option == followerBondageEventOID
		SetInfoText("$DCURSES_DESCRIPTION_followerBondageEvent")
		Return
	Endif
	If option == followerTattooEventOID
		SetInfoText("$DCURSES_DESCRIPTION_followerTattooEvent")
		Return
	Endif
	If option == onlyFemaleFollowersOID
		SetInfoText("$DCURSES_DESCRIPTION_onlyFemaleFollowers")
		Return
	Endif
	If option == excludedFollowersOID
		SetInfoText("$DCURSES_DESCRIPTION_excludedFollowers")
		Return
	Endif
	If option == followerOverrideThemeOID
		SetInfoText("$DCURSES_DESCRIPTION_followerOverrideTheme")
		Return
	Endif
	If option == followerSkipKeywordsOID
		SetInfoText("$DCURSES_DESCRIPTION_followerSkipKeywords")
		Return
	Endif
	If option == followerHeavyRestraintsOID
		SetInfoText("$DCURSES_DESCRIPTION_followerHeavyRestraints")
		Return
	Endif
	If option == followerGagsOID
		SetInfoText("$DCURSES_DESCRIPTION_followerGags")
		Return
	Endif
	If option == followerDeviceMultOID
		SetInfoText("$DCURSES_DESCRIPTION_followerDeviceMult")
		Return
	Endif
	If option == followerDeviceModifierOID
		SetInfoText("$DCURSES_DESCRIPTION_followerDeviceModifier")
		Return
	Endif
	If option == onlyUseUnforgivingDevicesOID
		SetInfoText("$DCURSES_DESCRIPTION_onlyUseUnforgivingDevices")
		Return
	Endif
	If option == udUseAbadonOID
		SetInfoText("$DCURSES_DESCRIPTION_udUseAbadon")
		Return
	Endif
	If option == udUseAbadonSetsOID
		SetInfoText("$DCURSES_DESCRIPTION_udUseAbadonSets")
		Return
	Endif
	If option == udUseMiscOID
		SetInfoText("$DCURSES_DESCRIPTION_udUseMisc")
		Return
	Endif
	If option == LMAllureWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_LMAllureWeight")
		Return
	Endif
	If option == LMAllureModOID
		SetInfoText("$DCURSES_DESCRIPTION_LMAllureMod")
		Return
	Endif
	If option == LMAllureSexOID
		SetInfoText("$DCURSES_DESCRIPTION_LMAllureSex")
		Return
	Endif
	If option == LMAllureSkipRequirementsOID
		SetInfoText("$DCURSES_DESCRIPTION_LMAllureSkipRequirements")
		Return
	Endif
	If option == LMAllureColorOID
		SetInfoText("$DCURSES_DESCRIPTION_LMAllureColor")
		Return
	Endif
	If option == LMHeatWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_LMHeatWeight")
		Return
	Endif
	If option == LMHeatModOID
		SetInfoText("$DCURSES_DESCRIPTION_LMHeatMod")
		Return
	Endif
	If option == LMHeatContainerCountOID
		SetInfoText("$DCURSES_DESCRIPTION_LMHeatContainerCount")
		Return
	Endif
	If option == LMHeatColorOID
		SetInfoText("$DCURSES_DESCRIPTION_LMHeatColor")
		Return
	Endif
	If option == LMBrandingWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_LMBrandingWeight")
		Return
	Endif
	If option == LMBrandingChanceOID
		SetInfoText("$DCURSES_DESCRIPTION_LMBrandingChance")
		Return
	Endif
	If option == LMBrandingTotalOID
		SetInfoText("$DCURSES_DESCRIPTION_LMBrandingTotal")
		Return
	Endif
	If option == LMBrandingPunishOID
		SetInfoText("$DCURSES_DESCRIPTION_LMBrandingPunish")
		Return
	Endif
	If option == LMBrandingColorOID
		SetInfoText("$DCURSES_DESCRIPTION_LMBrandingColor")
		Return
	Endif
	If option == LMHealslutWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_LMHealslutWeight")
		Return
	Endif
	If option == LMHealslutHealingOID
		SetInfoText("$DCURSES_DESCRIPTION_LMHealslutHealing")
		Return
	Endif
	If option == LMHealslutArousalOID
		SetInfoText("$DCURSES_DESCRIPTION_LMHealslutArousal")
		Return
	Endif
	If option == LMHealslutDurationOID
		SetInfoText("$DCURSES_DESCRIPTION_LMHealslutDuration")
		Return
	Endif
	If option == LMHealslutColorOID
		SetInfoText("$DCURSES_DESCRIPTION_LMHealslutColor")
		Return
	Endif
	If option == LMBondageWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_LMBondageWeight")
		Return
	Endif
	If option == LMBondageModifierOID
		SetInfoText("$DCURSES_DESCRIPTION_LMBondageModifier")
		Return
	Endif
	If option == LMBondageDeviceCapAddOID
		SetInfoText("$DCURSES_DESCRIPTION_LMBondageDeviceCapAdd")
		Return
	Endif
	If option == LMBondageDeviceCountOID
		SetInfoText("$DCURSES_DESCRIPTION_LMBondageDeviceCount")
		Return
	Endif
	If option == LMBondageColorOID
		SetInfoText("$DCURSES_DESCRIPTION_LMBondageColor")
		Return
	Endif
	If option == LMNudityWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_LMNudityWeight")
		Return
	Endif
	If option == LMNudityChestOnlyOID
		SetInfoText("$DCURSES_DESCRIPTION_LMNudityChestOnly")
		Return
	Endif
	If option == LMNudityAditionalFormsOID
		SetInfoText("$DCURSES_DESCRIPTION_LMNudityAditionalForms")
		Return
	Endif
	If option == LMNudityTalkTimesOID
		SetInfoText("$DCURSES_DESCRIPTION_LMNudityTalkTimes")
		Return
	Endif
	If option == LMNuditySkipGaggedOID
		SetInfoText("$DCURSES_DESCRIPTION_LMNuditySkipGagged")
		Return
	Endif
	If option == LMNudityColorOID
		SetInfoText("$DCURSES_DESCRIPTION_LMNudityColor")
		Return
	Endif
	If option == LMPainslutWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_LMPainslutWeight")
		Return
	Endif
	If option == LMPainslutModOID
		SetInfoText("$DCURSES_DESCRIPTION_LMPainslutMod")
		Return
	Endif
	If option == LMPainslutCountOID
		SetInfoText("$DCURSES_DESCRIPTION_LMPainslutCount")
		Return
	Endif
	If option == LMPainslutSexChanceOID
		SetInfoText("$DCURSES_DESCRIPTION_LMPainslutSexChance")
		Return
	Endif
	If option == LMPainslutArousalOID
		SetInfoText("$DCURSES_DESCRIPTION_LMPainslutArousal")
		Return
	Endif
	If option == LMPainslutColorOID
		SetInfoText("$DCURSES_DESCRIPTION_LMPainslutColor")
		Return
	Endif
	If option == oppOneAtATimeOID
		SetInfoText("$DCURSES_DESCRIPTION_oppOneAtATime")
		Return
	Endif
	If option == oppSummonerCollarWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_oppSummonerCollarWeight")
		Return
	Endif
	If option == oppSummonerSexCountOID
		SetInfoText("$DCURSES_DESCRIPTION_oppSummonerSexCount")
		Return
	Endif
	If option == oppSummonerNPCOID
		SetInfoText("$DCURSES_DESCRIPTION_oppSummonerNPC")
		Return
	Endif
	If option == oppSCollarDrainsMagickaOID
		SetInfoText("$DCURSES_DESCRIPTION_oppSCollarDrainsMagicka")
		Return
	Endif
	If option == oppSCollarAutoRemoveOID
		SetInfoText("$DCURSES_DESCRIPTION_oppSCollarAutoRemove")
		Return
	Endif
	If option == oppSummonChanceOID
		SetInfoText("$DCURSES_DESCRIPTION_oppSummonChance")
		Return
	Endif
	If option == oppSummonSexChanceOID
		SetInfoText("$DCURSES_DESCRIPTION_oppSummonSexChance")
		Return
	Endif
	If option == oppDwarvenCuirassWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_oppDwarvenCuirassWeight")
		Return
	Endif
	If option == oppDwarvenValueNeededOID
		SetInfoText("$DCURSES_DESCRIPTION_oppDwarvenValueNeeded")
		Return
	Endif
	If option == oppDwarvenHeavyRestraintOID
		SetInfoText("$DCURSES_DESCRIPTION_oppDwarvenHeavyRestraint")
		Return
	Endif
	If option == oppDwarvenRequireLocOID
		SetInfoText("$DCURSES_DESCRIPTION_oppDwarvenRequireLoc")
		Return
	Endif
	If option == oppDwarvenArousalOID
		SetInfoText("$DCURSES_DESCRIPTION_oppDwarvenArousal")
		Return
	Endif
	If option == oppNocturnalWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_oppNocturnalWeight")
		Return
	Endif
	If option == oppNocturnalSexCountOID
		SetInfoText("$DCURSES_DESCRIPTION_oppNocturnalSexCount")
		Return
	Endif
	If option == oppNocturnalPeopleOID
		SetInfoText("$DCURSES_DESCRIPTION_oppNocturnalPeople")
		Return
	Endif
	If option == oppNocturnalArousalOID
		SetInfoText("$DCURSES_DESCRIPTION_oppNocturnalArousal")
		Return
	Endif
	If option == oppNocturnalHandChanceOID
		SetInfoText("$DCURSES_DESCRIPTION_oppNocturnalHandChance")
		Return
	Endif
	If option == oppNocturnalRecastChanceOID
		SetInfoText("$DCURSES_DESCRIPTION_oppNocturnalRecastChance")
		Return
	Endif
	If option == oppLivingLatexWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_oppLivingLatexWeight")
		Return
	Endif
	If option == oppLivingLatexStartTimeOID
		SetInfoText("$DCURSES_DESCRIPTION_oppLivingLatexStartTime")
		Return
	Endif
	If option == oppLivingLatexGemOID
		SetInfoText("$DCURSES_DESCRIPTION_oppLivingLatexGem")
		Return
	Endif
	If option == oppLivingLatexGemAllOID
		SetInfoText("$DCURSES_DESCRIPTION_oppLivingLatexGemAll")
		Return
	Endif
	If option == oppLivingLatexHeavyOID
		SetInfoText("$DCURSES_DESCRIPTION_oppLivingLatexHeavy")
		Return
	Endif
	If option == oppLivingLatexMoreOID
		SetInfoText("$DCURSES_DESCRIPTION_oppLivingLatexMore")
		Return
	Endif
	If option == oppLivingLatexRequireRemOID
		SetInfoText("$DCURSES_DESCRIPTION_oppLivingLatexRequireRem")
		Return
	Endif
	If option == oppLivingLatexOpenOID
		SetInfoText("$DCURSES_DESCRIPTION_oppLivingLatexOpen")
		Return
	Endif
	If option == oppMadnessPlugWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_oppMadnessPlugWeight")
		Return
	Endif
	If option == oppMadnessPlugIterationsOID
		SetInfoText("$DCURSES_DESCRIPTION_oppMadnessPlugIterations")
		Return
	Endif
	If option == oppMadnessplugOrgasmsOID
		SetInfoText("$DCURSES_DESCRIPTION_oppMadnessplugOrgasms")
		Return
	Endif
	If option == oppMadnessOnlyDevicesOID
		SetInfoText("$DCURSES_DESCRIPTION_oppMadnessOnlyDevices")
		Return
	Endif
	If option == oppMadnessBeltFilterOID
		SetInfoText("$DCURSES_DESCRIPTION_oppMadnessBeltFilter")
		Return
	Endif
	If option == oppMadnessMultiplierOID
		SetInfoText("$DCURSES_DESCRIPTION_oppMadnessMultiplier")
		Return
	Endif
	If option == oppMadnessChaosOID
		SetInfoText("$DCURSES_DESCRIPTION_oppMadnessChaos")
		Return
	Endif
	If option == lockedLocationBypassOID
		SetInfoText("$DCURSES_DESCRIPTION_lockedLocationBypass")
		Return
	Endif
	If option == theftLocationBypassOID
		SetInfoText("$DCURSES_DESCRIPTION_theftLocationBypass")
		Return
	Endif
	If option == playerHomeModifierOID
		SetInfoText("$DCURSES_DESCRIPTION_playerHomeModifier")
		Return
	Endif
	If option == cityModifierOID
		SetInfoText("$DCURSES_DESCRIPTION_cityModifier")
		Return
	Endif
	If option == townModifierOID
		SetInfoText("$DCURSES_DESCRIPTION_townModifier")
		Return
	Endif
	If option == banditModifierOID
		SetInfoText("$DCURSES_DESCRIPTION_banditModifier")
		Return
	Endif
	If option == draugrModifierOID
		SetInfoText("$DCURSES_DESCRIPTION_draugrModifier")
		Return
	Endif
	If option == soulCairnModifierOID
		SetInfoText("$DCURSES_DESCRIPTION_soulCairnModifier")
		Return
	Endif
	If option == dwarvenModifierOID
		SetInfoText("$DCURSES_DESCRIPTION_dwarvenModifier")
		Return
	Endif
	If option == falmerModifierOID
		SetInfoText("$DCURSES_DESCRIPTION_falmerModifier")
		Return
	Endif
	If option == forswornModifierOID
		SetInfoText("$DCURSES_DESCRIPTION_forswornModifier")
		Return
	Endif
	If option == vampireModifierOID
		SetInfoText("$DCURSES_DESCRIPTION_vampireModifier")
		Return
	Endif
	If option == warlockModifierOID
		SetInfoText("$DCURSES_DESCRIPTION_warlockModifier")
		Return
	Endif
	If option == dragonLairModifierOID
		SetInfoText("$DCURSES_DESCRIPTION_dragonLairModifier")
		Return
	Endif
	If option == apocryphaModifierOID
		SetInfoText("$DCURSES_DESCRIPTION_apocryphaModifier")
		Return
	Endif
	If option == wildernessModifierOID
		SetInfoText("$DCURSES_DESCRIPTION_wildernessModifier")
		Return
	Endif
	If option == enableQuestInteractionsOID
		SetInfoText("$DCURSES_DESCRIPTION_enableQuestInteractions")
		Return
	Endif
	If option == oppDeviceAntiCheatOID
		SetInfoText("$DCURSES_DESCRIPTION_oppDeviceAntiCheat")
		Return
	Endif
	If option == generalDeviceAntiCheatOID
		SetInfoText("$DCURSES_DESCRIPTION_generalDeviceAntiCheat")
		Return
	Endif
	If option == noMessageBoxesOID
		SetInfoText("$DCURSES_DESCRIPTION_noMessageBoxes")
		Return
	Endif
	If option == eventVisualEffectsOID
		SetInfoText("$DCURSES_DESCRIPTION_eventVisualEffects")
		Return
	Endif
	If option == surpriseModeOID
		SetInfoText("$DCURSES_DESCRIPTION_surpriseMode")
		Return
	Endif
	If option == rDeviceBaseChanceOID
		SetInfoText("$DCURSES_DESCRIPTION_rDeviceBaseChance")
		Return
	Endif
	If option == rDeviceLuckyBonusOID
		SetInfoText("$DCURSES_DESCRIPTION_rDeviceLuckyBonus")
		Return
	Endif
	If option == wardingCharmChanceOID
		SetInfoText("$DCURSES_DESCRIPTION_wardingCharmChance")
		Return
	Endif
	If option == dragonHoardOID
		SetInfoText("$DCURSES_DESCRIPTION_dragonHoard")
		Return
	Endif
	If option == bossExtraGoldOID
		SetInfoText("$DCURSES_DESCRIPTION_bossExtraGold")
		Return
	Endif
	If option == useThemesOID
		SetInfoText("$DCURSES_DESCRIPTION_useThemes")
		Return
	Endif
	If option == disableForce3rdPersonOID
		SetInfoText("$DCURSES_DESCRIPTION_disableForce3rdPerson")
		Return
	Endif
	If option == enableSlowStripOID
		SetInfoText("$DCURSES_DESCRIPTION_enableSlowStrip")
		Return
	Endif
	If option == tatSolventChanceOID
		SetInfoText("$DCURSES_DESCRIPTION_tatSolventChance")
		Return
	Endif
	If option == arousalPotionChanceOID
		SetInfoText("$DCURSES_DESCRIPTION_arousalPotionChance")
		Return
	Endif
	If option == arousalPotionLibidoOID
		SetInfoText("$DCURSES_DESCRIPTION_arousalPotionLibido")
		Return
	Endif
	If option == restrictFastTravelOID
		SetInfoText("$DCURSES_DESCRIPTION_restrictFastTravel")
		Return
	Endif
	If option == restrictFastTravelPartOID
		SetInfoText("$DCURSES_DESCRIPTION_restrictFastTravelPart")
		Return
	Endif
	If option == restrictFastTravelFullOID
		SetInfoText("$DCURSES_DESCRIPTION_restrictFastTravelFull")
		Return
	Endif
	If option == useDeviceNamesInThemesOID
		SetInfoText("$DCURSES_DESCRIPTION_useDeviceNamesInThemes")
		Return
	Endif
	If option == saveDependentSettingsOID
		SetInfoText("$DCURSES_DESCRIPTION_saveDependentSettings")
		Return
	Endif
	If option == ANDSexToplessOID
		SetInfoText("$DCURSES_DESCRIPTION_ANDSexTopless")
		Return
	Endif
	If option == ANDSexBottomlessOID
		SetInfoText("$DCURSES_DESCRIPTION_ANDSexBottomless")
		Return
	Endif
	If option == ANDSexShowingChestOID
		SetInfoText("$DCURSES_DESCRIPTION_ANDSexShowingChest")
		Return
	Endif
	If option == ANDSexShowingGenitalsOID
		SetInfoText("$DCURSES_DESCRIPTION_ANDSexShowingGenitals")
		Return
	Endif
	If option == ANDSexShowingAssOID
		SetInfoText("$DCURSES_DESCRIPTION_ANDSexShowingAss")
		Return
	Endif
	If option == ANDSexShowingBraOID
		SetInfoText("$DCURSES_DESCRIPTION_ANDSexShowingBra")
		Return
	Endif
	If option == ANDSexShowingUnderwearOID
		SetInfoText("$DCURSES_DESCRIPTION_ANDSexShowingUnderwear")
		Return
	Endif
	If option == ANDConsToplessOID
		SetInfoText("$DCURSES_DESCRIPTION_ANDConsTopless")
		Return
	Endif
	If option == ANDConsBottomlessOID
		SetInfoText("$DCURSES_DESCRIPTION_ANDConsBottomless")
		Return
	Endif
	If option == ANDConsShowingChestOID
		SetInfoText("$DCURSES_DESCRIPTION_ANDConsShowingChest")
		Return
	Endif
	If option == ANDConsShowingGenitalsOID
		SetInfoText("$DCURSES_DESCRIPTION_ANDConsShowingGenitals")
		Return
	Endif
	If option == ANDConsShowingAssOID
		SetInfoText("$DCURSES_DESCRIPTION_ANDConsShowingAss")
		Return
	Endif
	If option == ANDConsShowingBraOID
		SetInfoText("$DCURSES_DESCRIPTION_ANDConsShowingBra")
		Return
	Endif
	If option == ANDConsShowingUnderwearOID
		SetInfoText("$DCURSES_DESCRIPTION_ANDConsShowingUnderwear")
		Return
	Endif
	If option == consEnableOID
		SetInfoText("$DCURSES_DESCRIPTION_consEnable")
		Return
	Endif
	If option == consTalkNudeOID
		SetInfoText("$DCURSES_DESCRIPTION_consTalkNude")
		Return
	Endif
	If option == consTalkRestrainedOID
		SetInfoText("$DCURSES_DESCRIPTION_consTalkRestrained")
		Return
	Endif
	If option == consTalkHeavyOID
		SetInfoText("$DCURSES_DESCRIPTION_consTalkHeavy")
		Return
	Endif
	If option == consTalkTattooOID
		SetInfoText("$DCURSES_DESCRIPTION_consTalkTattoo")
		Return
	Endif
	If option == consScanSexOID
		SetInfoText("$DCURSES_DESCRIPTION_consScanSex")
		Return
	Endif
	If option == consScanNudeOID
		SetInfoText("$DCURSES_DESCRIPTION_consScanNude")
		Return
	Endif
	If option == consScanRestrainedOID
		SetInfoText("$DCURSES_DESCRIPTION_consScanRestrained")
		Return
	Endif
	If option == consScanHeavyOID
		SetInfoText("$DCURSES_DESCRIPTION_consScanHeavy")
		Return
	Endif
	If option == consScanTattooOID
		SetInfoText("$DCURSES_DESCRIPTION_consScanTattoo")
		Return
	Endif
	If option == consScanTrespassOID
		SetInfoText("$DCURSES_DESCRIPTION_consScanTrespass")
		Return
	Endif
	If option == consScanRadiusOID
		SetInfoText("$DCURSES_DESCRIPTION_consScanRadius")
		Return
	Endif
	If option == consScanIntervalOID
		SetInfoText("$DCURSES_DESCRIPTION_consScanInterval")
		Return
	Endif
	If option == consGuardNormalOID
		SetInfoText("$DCURSES_DESCRIPTION_consGuardNormal")
		Return
	Endif
	If option == consFineGuardFactionOID
		SetInfoText("$DCURSES_DESCRIPTION_consFineGuardFaction")
		Return
	Endif
	If option == consGuardScanSexOID
		SetInfoText("$DCURSES_DESCRIPTION_consGuardScanSex")
		Return
	Endif
	If option == consGuardScanNudeOID
		SetInfoText("$DCURSES_DESCRIPTION_consGuardScanNude")
		Return
	Endif
	If option == consGuardScanRestrainedOID
		SetInfoText("$DCURSES_DESCRIPTION_consGuardScanRestrained")
		Return
	Endif
	If option == consGuardScanTattooOID
		SetInfoText("$DCURSES_DESCRIPTION_consGuardScanTattoo")
		Return
	Endif
	If option == consGuardTalkMultOID
		SetInfoText("$DCURSES_DESCRIPTION_consGuardTalkMult")
		Return
	Endif
	If option == consFineForSexOID
		SetInfoText("$DCURSES_DESCRIPTION_consFineForSex")
		Return
	Endif
	If option == consFineForNudityOID
		SetInfoText("$DCURSES_DESCRIPTION_consFineForNudity")
		Return
	Endif
	If option == consFineForRestraintsOID
		SetInfoText("$DCURSES_DESCRIPTION_consFineForRestraints")
		Return
	Endif
	If option == consFineForTattoosOID
		SetInfoText("$DCURSES_DESCRIPTION_consFineForTattoos")
		Return
	Endif
	If option == consFallthroughOID
		SetInfoText("$DCURSES_DESCRIPTION_consFallthrough")
		Return
	Endif
	If option == consAllowFollowersOID
		SetInfoText("$DCURSES_DESCRIPTION_consAllowFollowers")
		Return
	Endif
	If option == consFollowersBlockOID
		SetInfoText("$DCURSES_DESCRIPTION_consFollowersBlock")
		Return
	Endif
	If option == consTolerableChastityOID
		SetInfoText("$DCURSES_DESCRIPTION_consTolerableChastity")
		Return
	Endif
	If option == consUseRelationshipsOID
		SetInfoText("$DCURSES_DESCRIPTION_consUseRelationships")
		Return
	Endif
	If option == consRelationBondageOID
		SetInfoText("$DCURSES_DESCRIPTION_consRelationBondage")
		Return
	Endif
	If option == consRestrainedCountOID
		SetInfoText("$DCURSES_DESCRIPTION_consRestrainedCount")
		Return
	Endif
	If option == consTattooCountOID
		SetInfoText("$DCURSES_DESCRIPTION_consTattooCount")
		Return
	Endif
	If option == consGaggedMultiplierOID
		SetInfoText("$DCURSES_DESCRIPTION_consGaggedMultiplier")
		Return
	Endif
	If option == consSexWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_consSexWeight")
		Return
	Endif
	If option == consRandomBondageWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_consRandomBondageWeight")
		Return
	Endif
	If option == consRandomHeavyBondageOID
		SetInfoText("$DCURSES_DESCRIPTION_consRandomHeavyBondage")
		Return
	Endif
	If option == consBondageIgnoreMaxOID
		SetInfoText("$DCURSES_DESCRIPTION_consBondageIgnoreMax")
		Return
	Endif
	If option == consTattooWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_consTattooWeight")
		Return
	Endif
	If option == consTattooCurseNumbersOID
		SetInfoText("$DCURSES_DESCRIPTION_consTattooCurseNumbers")
		Return
	Endif
	If option == consMercyWeightOID
		SetInfoText("$DCURSES_DESCRIPTION_consMercyWeight")
		Return
	Endif
	If option == sexEnabledOID
		SetInfoText("$DCURSES_DESCRIPTION_sexEnabled")
		Return
	Endif
	If option == sexAggressiveAnimsOID
		SetInfoText("$DCURSES_DESCRIPTION_sexAggressiveAnims")
		Return
	Endif
	If option == sexFilterDevicesOID
		SetInfoText("$DCURSES_DESCRIPTION_sexFilterDevices")
		Return
	Endif
	If option == sexFilterFutaOID
		SetInfoText("$DCURSES_DESCRIPTION_sexFilterFuta")
		Return
	Endif
	If option == sexRandomEnabledOID
		SetInfoText("$DCURSES_DESCRIPTION_sexRandomEnabled")
		Return
	Endif
	If option == sexCooldownOID
		SetInfoText("$DCURSES_DESCRIPTION_sexCooldown")
		Return
	Endif
	If option == sexRandAllowFollowersOID
		SetInfoText("$DCURSES_DESCRIPTION_sexRandAllowFollowers")
		Return
	Endif
	If option == sexRandAllowNPCsOID
		SetInfoText("$DCURSES_DESCRIPTION_sexRandAllowNPCs")
		Return
	Endif
	If option == sexRandAllowSummonsOID
		SetInfoText("$DCURSES_DESCRIPTION_sexRandAllowSummons")
		Return
	Endif
	If option == sexRandAllowCreaturesOID
		SetInfoText("$DCURSES_DESCRIPTION_sexRandAllowCreatures")
		Return
	Endif
	If option == sexBaseChanceOID
		SetInfoText("$DCURSES_DESCRIPTION_sexBaseChance")
		Return
	Endif
	If option == sexCreatureModifierOID
		SetInfoText("$DCURSES_DESCRIPTION_sexCreatureModifier")
		Return
	Endif
	If option == sexFollowerModifierOID
		SetInfoText("$DCURSES_DESCRIPTION_sexFollowerModifier")
		Return
	Endif
	If option == sexSummonModifierOID
		SetInfoText("$DCURSES_DESCRIPTION_sexSummonModifier")
		Return
	Endif
	If option == sexRestraintsModifierOID
		SetInfoText("$DCURSES_DESCRIPTION_sexRestraintsModifier")
		Return
	Endif
	If option == sexSafeLocationModifierOID
		SetInfoText("$DCURSES_DESCRIPTION_sexSafeLocationModifier")
		Return
	Endif
	If option == sexUnsafeLocationModifierOID
		SetInfoText("$DCURSES_DESCRIPTION_sexUnsafeLocationModifier")
		Return
	Endif
	If option == sexPlayerNudityModifierOID
		SetInfoText("$DCURSES_DESCRIPTION_sexPlayerNudityModifier")
		Return
	Endif
	If option == sexNPCNudityModifierOID
		SetInfoText("$DCURSES_DESCRIPTION_sexNPCNudityModifier")
		Return
	Endif
	If option == sexPlayerArousalModifierOID
		SetInfoText("$DCURSES_DESCRIPTION_sexPlayerArousalModifier")
		Return
	Endif
	If option == sexNPCArousalModifierOID
		SetInfoText("$DCURSES_DESCRIPTION_sexNPCArousalModifier")
		Return
	Endif
	If option == sexArousalModifierCutoffOID
		SetInfoText("$DCURSES_DESCRIPTION_sexArousalModifierCutoff")
		Return
	Endif
	If option == sexAllureModifierOID
		SetInfoText("$DCURSES_DESCRIPTION_sexAllureModifier")
		Return
	Endif
	If option == sexSummonerModifierOID
		SetInfoText("$DCURSES_DESCRIPTION_sexSummonerModifier")
		Return
	Endif
	If option == sexScalingModifierOID
		SetInfoText("$DCURSES_DESCRIPTION_sexScalingModifier")
		Return
	Endif
	If option == sexSearchRadiusOID
		SetInfoText("$DCURSES_DESCRIPTION_sexSearchRadius")
		Return
	Endif
	If option == sexSearchIntervalOID
		SetInfoText("$DCURSES_DESCRIPTION_sexSearchInterval")
		Return
	Endif
	If option == sexAllowMaleOID
		SetInfoText("$DCURSES_DESCRIPTION_sexAllowMale")
		Return
	Endif
	If option == sexAllowFemaleOID
		SetInfoText("$DCURSES_DESCRIPTION_sexAllowFemale")
		Return
	Endif
	If option == sexAllowFutaOID
		SetInfoText("$DCURSES_DESCRIPTION_sexAllowFuta")
		Return
	Endif
	If option == sexAllowCreatureOID
		SetInfoText("$DCURSES_DESCRIPTION_sexAllowCreature")
		Return
	Endif
	If option == sexAllowFarmAnimalsOID
		SetInfoText("$DCURSES_DESCRIPTION_sexAllowFarmAnimals")
		Return
	Endif
	If option == sexRequireAllPlayerOID
		SetInfoText("$DCURSES_DESCRIPTION_sexRequireAllPlayer")
		Return
	Endif
	If option == sexRequiredPlayerBindingsOID
		SetInfoText("$DCURSES_DESCRIPTION_sexRequiredPlayerBindings")
		Return
	Endif
	If option == sexRequirePlayerCollarOID
		SetInfoText("$DCURSES_DESCRIPTION_sexRequirePlayerCollar")
		Return
	Endif
	If option == sexRequirePlayerHeavyOID
		SetInfoText("$DCURSES_DESCRIPTION_sexRequirePlayerHeavy")
		Return
	Endif
	If option == sexRequirePlayerNudeOID
		SetInfoText("$DCURSES_DESCRIPTION_sexRequirePlayerNude")
		Return
	Endif
	If option == sexRequiredPlayerArousalOID
		SetInfoText("$DCURSES_DESCRIPTION_sexRequiredPlayerArousal")
		Return
	Endif
	If option == sexRequiredPlayerTattoosOID
		SetInfoText("$DCURSES_DESCRIPTION_sexRequiredPlayerTattoos")
		Return
	Endif
	If option == sexRequireAllNPCOID
		SetInfoText("$DCURSES_DESCRIPTION_sexRequireAllNPC")
		Return
	Endif
	If option == sexRequiredNPCBindingsOID
		SetInfoText("$DCURSES_DESCRIPTION_sexRequiredNPCBindings")
		Return
	Endif
	If option == sexRequireNPCCollarOID
		SetInfoText("$DCURSES_DESCRIPTION_sexRequireNPCCollar")
		Return
	Endif
	If option == sexRequireNPCNudeOID
		SetInfoText("$DCURSES_DESCRIPTION_sexRequireNPCNude")
		Return
	Endif
	If option == sexRequiredNPCArousalOID
		SetInfoText("$DCURSES_DESCRIPTION_sexRequiredNPCArousal")
		Return
	Endif
	If option == sexRequiredNPCTattoosOID
		SetInfoText("$DCURSES_DESCRIPTION_sexRequiredNPCTattoos")
		Return
	Endif
	If option == sexRequiredCreatureArousalOID
		SetInfoText("$DCURSES_DESCRIPTION_sexRequiredCreatureArousal")
		Return
	Endif
	If option == sexRequireBothOID
		SetInfoText("$DCURSES_DESCRIPTION_sexRequireBoth")
		Return
	Endif
	If option == sexFollowerBypassPlayerOID
		SetInfoText("$DCURSES_DESCRIPTION_sexFollowerBypassPlayer")
		Return
	Endif
	If option == sexFollowerBypassNPCOID
		SetInfoText("$DCURSES_DESCRIPTION_sexFollowerBypassNPC")
		Return
	Endif
	If option == sexSpouseBypassPlayerOID
		SetInfoText("$DCURSES_DESCRIPTION_sexSpouseBypassPlayer")
		Return
	Endif
	If option == sexSpouseBypassNPCOID
		SetInfoText("$DCURSES_DESCRIPTION_sexSpouseBypassNPC")
		Return
	Endif
	If option == sexSummonBypassPlayerOID
		SetInfoText("$DCURSES_DESCRIPTION_sexSummonBypassPlayer")
		Return
	Endif
	If option == sexSummonBypassNPCOID
		SetInfoText("$DCURSES_DESCRIPTION_sexSummonBypassNPC")
		Return
	Endif
	If option == ModSuspendedOID
		SetInfoText("$DCURSES_DESCRIPTION_ModSuspended")
		Return
	Endif
	If option == setAllDefaultSettingsOID
		SetInfoText("$DCURSES_DESCRIPTION_setAllDefaultSettings")
		Return
	Endif
	If option == helpSlaveTatsNGInstalledOID
		SetInfoText("$DCURSES_DESCRIPTION_helpSlaveTatsNGInstalled")
		Return
	Endif
	If option == helpLewdMarksInstalledOID
		SetInfoText("$DCURSES_DESCRIPTION_helpLewdMarksInstalled")
		Return
	Endif
	If option == helpRapeTattoosInstalledOID
		SetInfoText("$DCURSES_DESCRIPTION_helpRapeTattoosInstalled")
		Return
	Endif
	If option == helpOSLArousedInstalledOID
		SetInfoText("$DCURSES_DESCRIPTION_helpOSLArousedInstalled")
		Return
	Endif
	If option == helpUDInstalledOID
		SetInfoText("$DCURSES_DESCRIPTION_helpUDInstalled")
		Return
	Endif
	If option == helpQuickLootInstalledOID
		SetInfoText("$DCURSES_DESCRIPTION_helpQuickLootInstalled")
		Return
	Endif
	If option == helpDWDInstalledOID
		SetInfoText("$DCURSES_DESCRIPTION_helpDWDInstalled")
		Return
	Endif
	If option == helpANDInstalledOID
		SetInfoText("$DCURSES_DESCRIPTION_helpANDInstalled")
		Return
	Endif
	If option == helpCockCagesWorkingOID
		SetInfoText("$DCURSES_DESCRIPTION_helpCockCagesWorking")
		Return
	Endif
EndEvent

Event OnOptionDefault(int option)
	If option == onlyLockedDoorsOID
		onlyLockedDoors = true
		SetToggleOptionValue(onlyLockedDoorsOID, true)
		Return
	Endif
	If option == eventScalingOID
		eventScaling = true
		SetToggleOptionValue(eventScalingOID, true)
		Return
	Endif
	If option == bossOnlyHeavyOID
		bossOnlyHeavy = true
		SetToggleOptionValue(bossOnlyHeavyOID, true)
		Return
	Endif
	If option == stripPlayerOnEventOID
		stripPlayerOnEvent = true
		SetToggleOptionValue(stripPlayerOnEventOID, true)
		Return
	Endif
	If option == stripOnlyKeywordsOID
		stripOnlyKeywords = true
		SetToggleOptionValue(stripOnlyKeywordsOID, true)
		Return
	Endif
	If option == beltPlugsOID
		beltPlugs = true
		SetToggleOptionValue(beltPlugsOID, true)
		Return
	Endif
	If option == useGenderedChastityOID
		useGenderedChastity = true
		SetToggleOptionValue(useGenderedChastityOID, true)
		Return
	Endif
	If option == plugsDontCountOID
		plugsDontCount = true
		SetToggleOptionValue(plugsDontCountOID, true)
		Return
	Endif
	If option == useGenderedPlugsOID
		useGenderedPlugs = false
		SetToggleOptionValue(useGenderedPlugsOID, false)
		Return
	Endif
	If option == allowLegShacklesOID
		allowLegShackles = false
		SetToggleOptionValue(allowLegShacklesOID, false)
		Return
	Endif
	If option == keyForgivenessOID
		keyForgiveness = true
		SetToggleOptionValue(keyForgivenessOID, true)
		Return
	Endif
	If option == magicKeyOppressiveOID
		magicKeyOppressive = false
		SetToggleOptionValue(magicKeyOppressiveOID, false)
		Return
	Endif
	If option == preferRelevantKeysOID
		preferRelevantKeys = true
		SetToggleOptionValue(preferRelevantKeysOID, true)
		Return
	Endif
	If option == vanishingKeysOID
		vanishingKeys = true
		SetToggleOptionValue(vanishingKeysOID, true)
		Return
	Endif
	If option == eventContDevicesOID
		eventContDevices = true
		SetToggleOptionValue(eventContDevicesOID, true)
		Return
	Endif
	If option == eventContAllDevicesOID
		eventContAllDevices = false
		SetToggleOptionValue(eventContAllDevicesOID, false)
		Return
	Endif
	If option == followerBondageEventOID
		followerBondageEvent = false
		SetToggleOptionValue(followerBondageEventOID, false)
		Return
	Endif
	If option == followerTattooEventOID
		followerTattooEvent = false
		SetToggleOptionValue(followerTattooEventOID, false)
		Return
	Endif
	If option == onlyFemaleFollowersOID
		onlyFemaleFollowers = true
		SetToggleOptionValue(onlyFemaleFollowersOID, true)
		Return
	Endif
	If option == followerHeavyRestraintsOID
		followerHeavyRestraints = false
		SetToggleOptionValue(followerHeavyRestraintsOID, false)
		Return
	Endif
	If option == followerGagsOID
		followerGags = false
		SetToggleOptionValue(followerGagsOID, false)
		Return
	Endif
	If option == onlyUseUnforgivingDevicesOID
		onlyUseUnforgivingDevices = true
		SetToggleOptionValue(onlyUseUnforgivingDevicesOID, true)
		Return
	Endif
	If option == udUseAbadonOID
		udUseAbadon = false
		SetToggleOptionValue(udUseAbadonOID, false)
		Return
	Endif
	If option == udUseAbadonSetsOID
		udUseAbadonSets = false
		SetToggleOptionValue(udUseAbadonSetsOID, false)
		Return
	Endif
	If option == udUseMiscOID
		udUseMisc = true
		SetToggleOptionValue(udUseMiscOID, true)
		Return
	Endif
	If option == LMAllureSkipRequirementsOID
		LMAllureSkipRequirements = true
		SetToggleOptionValue(LMAllureSkipRequirementsOID, true)
		Return
	Endif
	If option == LMBrandingPunishOID
		LMBrandingPunish = true
		SetToggleOptionValue(LMBrandingPunishOID, true)
		Return
	Endif
	If option == LMNudityChestOnlyOID
		LMNudityChestOnly = false
		SetToggleOptionValue(LMNudityChestOnlyOID, false)
		Return
	Endif
	If option == LMNuditySkipGaggedOID
		LMNuditySkipGagged = true
		SetToggleOptionValue(LMNuditySkipGaggedOID, true)
		Return
	Endif
	If option == oppOneAtATimeOID
		oppOneAtATime = true
		SetToggleOptionValue(oppOneAtATimeOID, true)
		Return
	Endif
	If option == oppSCollarDrainsMagickaOID
		oppSCollarDrainsMagicka = true
		SetToggleOptionValue(oppSCollarDrainsMagickaOID, true)
		Return
	Endif
	If option == oppSCollarAutoRemoveOID
		oppSCollarAutoRemove = true
		SetToggleOptionValue(oppSCollarAutoRemoveOID, true)
		Return
	Endif
	If option == oppDwarvenHeavyRestraintOID
		oppDwarvenHeavyRestraint = false
		SetToggleOptionValue(oppDwarvenHeavyRestraintOID, false)
		Return
	Endif
	If option == oppDwarvenRequireLocOID
		oppDwarvenRequireLoc = true
		SetToggleOptionValue(oppDwarvenRequireLocOID, true)
		Return
	Endif
	If option == oppLivingLatexGemAllOID
		oppLivingLatexGemAll = false
		SetToggleOptionValue(oppLivingLatexGemAllOID, false)
		Return
	Endif
	If option == oppLivingLatexHeavyOID
		oppLivingLatexHeavy = false
		SetToggleOptionValue(oppLivingLatexHeavyOID, false)
		Return
	Endif
	If option == oppLivingLatexRequireRemOID
		oppLivingLatexRequireRem = true
		SetToggleOptionValue(oppLivingLatexRequireRemOID, true)
		Return
	Endif
	If option == oppLivingLatexOpenOID
		oppLivingLatexOpen = false
		SetToggleOptionValue(oppLivingLatexOpenOID, false)
		Return
	Endif
	If option == oppMadnessOnlyDevicesOID
		oppMadnessOnlyDevices = true
		SetToggleOptionValue(oppMadnessOnlyDevicesOID, true)
		Return
	Endif
	If option == oppMadnessBeltFilterOID
		oppMadnessBeltFilter = true
		SetToggleOptionValue(oppMadnessBeltFilterOID, true)
		Return
	Endif
	If option == oppMadnessChaosOID
		oppMadnessChaos = false
		SetToggleOptionValue(oppMadnessChaosOID, false)
		Return
	Endif
	If option == enableQuestInteractionsOID
		enableQuestInteractions = true
		SetToggleOptionValue(enableQuestInteractionsOID, true)
		Return
	Endif
	If option == enableQIMalkoranOID
		enableQIMalkoran = true
		SetToggleOptionValue(enableQIMalkoranOID, true)
		Return
	Endif
	If option == enableQISanguineOID
		enableQISanguine = true
		SetToggleOptionValue(enableQISanguineOID, true)
		Return
	Endif
	If option == enableQIBlackStarOID
		enableQIBlackStar = true
		SetToggleOptionValue(enableQIBlackStarOID, true)
		Return
	Endif
	If option == enableQIMindOfMadnessOID
		enableQIMindOfMadness = true
		SetToggleOptionValue(enableQIMindOfMadnessOID, true)
		Return
	Endif
	If option == enableQILaidToRestOID
		enableQILaidToRest = true
		SetToggleOptionValue(enableQILaidToRestOID, true)
		Return
	Endif
	If option == enableQICriedWolfOID
		enableQICriedWolf = true
		SetToggleOptionValue(enableQICriedWolfOID, true)
		Return
	Endif
	If option == enableQIDeliveryOID
		enableQIDelivery = true
		SetToggleOptionValue(enableQIDeliveryOID, true)
		Return
	Endif
	If option == enableQIBarenziahOID
		enableQIBarenziah = true
		SetToggleOptionValue(enableQIBarenziahOID, true)
		Return
	Endif
	If option == enableQIProvingHonorOID
		enableQIProvingHonor = true
		SetToggleOptionValue(enableQIProvingHonorOID, true)
		Return
	Endif
	If option == enableQISaarthalOID
		enableQISaarthal = true
		SetToggleOptionValue(enableQISaarthalOID, true)
		Return
	Endif
	If option == enableQIBrelynaOID
		enableQIBrelyna = true
		SetToggleOptionValue(enableQIBrelynaOID, true)
		Return
	Endif
	If option == enableQIDwemerMuseumOID
		enableQIDwemerMuseum = true
		SetToggleOptionValue(enableQIDwemerMuseumOID, true)
		Return
	Endif
	If option == enableQITrinityRestoredOID
		enableQITrinityRestored = true
		SetToggleOptionValue(enableQITrinityRestoredOID, true)
		Return
	Endif
	If option == enableQIThalmorEmbassyOID
		enableQIThalmorEmbassy = true
		SetToggleOptionValue(enableQIThalmorEmbassyOID, true)
		Return
	Endif
	If option == enableQIRingmakerOID
		enableQIRingmaker = true
		SetToggleOptionValue(enableQIRingmakerOID, true)
		Return
	Endif
	If option == oppDeviceAntiCheatOID
		oppDeviceAntiCheat = true
		SetToggleOptionValue(oppDeviceAntiCheatOID, true)
		Return
	Endif
	If option == generalDeviceAntiCheatOID
		generalDeviceAntiCheat = false
		SetToggleOptionValue(generalDeviceAntiCheatOID, false)
		Return
	Endif
	If option == noMessageBoxesOID
		noMessageBoxes = false
		SetToggleOptionValue(noMessageBoxesOID, false)
		Return
	Endif
	If option == eventVisualEffectsOID
		eventVisualEffects = true
		SetToggleOptionValue(eventVisualEffectsOID, true)
		Return
	Endif
	If option == surpriseModeOID
		surpriseMode = false
		SetToggleOptionValue(surpriseModeOID, false)
		Return
	Endif
	If option == dragonHoardOID
		dragonHoard = true
		SetToggleOptionValue(dragonHoardOID, true)
		Return
	Endif
	If option == bossExtraGoldOID
		bossExtraGold = true
		SetToggleOptionValue(bossExtraGoldOID, true)
		Return
	Endif
	If option == useThemesOID
		useThemes = false
		SetToggleOptionValue(useThemesOID, false)
		Return
	Endif
	If option == disableForce3rdPersonOID
		disableForce3rdPerson = true
		SetToggleOptionValue(disableForce3rdPersonOID, true)
		Return
	Endif
	If option == enableSlowStripOID
		enableSlowStrip = false
		SetToggleOptionValue(enableSlowStripOID, false)
		Return
	Endif
	If option == restrictFastTravelOID
		restrictFastTravel = true
		SetToggleOptionValue(restrictFastTravelOID, true)
		Return
	Endif
	If option == restrictFastTravelPartOID
		restrictFastTravelPart = false
		SetToggleOptionValue(restrictFastTravelPartOID, false)
		Return
	Endif
	If option == restrictFastTravelFullOID
		restrictFastTravelFull = false
		SetToggleOptionValue(restrictFastTravelFullOID, false)
		Return
	Endif
	If option == useDeviceNamesInThemesOID
		useDeviceNamesInThemes = true
		SetToggleOptionValue(useDeviceNamesInThemesOID, true)
		Return
	Endif
	If option == saveDependentSettingsOID
		saveDependentSettings = false
		SetToggleOptionValue(saveDependentSettingsOID, false)
		Return
	Endif
	If option == ANDSexToplessOID
		ANDSexTopless = true
		SetToggleOptionValue(ANDSexToplessOID, true)
		Return
	Endif
	If option == ANDSexBottomlessOID
		ANDSexBottomless = true
		SetToggleOptionValue(ANDSexBottomlessOID, true)
		Return
	Endif
	If option == ANDSexShowingChestOID
		ANDSexShowingChest = true
		SetToggleOptionValue(ANDSexShowingChestOID, true)
		Return
	Endif
	If option == ANDSexShowingGenitalsOID
		ANDSexShowingGenitals = true
		SetToggleOptionValue(ANDSexShowingGenitalsOID, true)
		Return
	Endif
	If option == ANDSexShowingAssOID
		ANDSexShowingAss = false
		SetToggleOptionValue(ANDSexShowingAssOID, false)
		Return
	Endif
	If option == ANDSexShowingBraOID
		ANDSexShowingBra = false
		SetToggleOptionValue(ANDSexShowingBraOID, false)
		Return
	Endif
	If option == ANDSexShowingUnderwearOID
		ANDSexShowingUnderwear = false
		SetToggleOptionValue(ANDSexShowingUnderwearOID, false)
		Return
	Endif
	If option == ANDConsToplessOID
		ANDConsTopless = true
		SetToggleOptionValue(ANDConsToplessOID, true)
		Return
	Endif
	If option == ANDConsBottomlessOID
		ANDConsBottomless = true
		SetToggleOptionValue(ANDConsBottomlessOID, true)
		Return
	Endif
	If option == ANDConsShowingChestOID
		ANDConsShowingChest = true
		SetToggleOptionValue(ANDConsShowingChestOID, true)
		Return
	Endif
	If option == ANDConsShowingGenitalsOID
		ANDConsShowingGenitals = true
		SetToggleOptionValue(ANDConsShowingGenitalsOID, true)
		Return
	Endif
	If option == ANDConsShowingAssOID
		ANDConsShowingAss = false
		SetToggleOptionValue(ANDConsShowingAssOID, false)
		Return
	Endif
	If option == ANDConsShowingBraOID
		ANDConsShowingBra = false
		SetToggleOptionValue(ANDConsShowingBraOID, false)
		Return
	Endif
	If option == ANDConsShowingUnderwearOID
		ANDConsShowingUnderwear = false
		SetToggleOptionValue(ANDConsShowingUnderwearOID, false)
		Return
	Endif
	If option == consEnableOID
		consEnable = true
		SetToggleOptionValue(consEnableOID, true)
		Return
	Endif
	If option == consGuardNormalOID
		consGuardNormal = false
		SetToggleOptionValue(consGuardNormalOID, false)
		Return
	Endif
	If option == consFineGuardFactionOID
		consFineGuardFaction = true
		SetToggleOptionValue(consFineGuardFactionOID, true)
		Return
	Endif
	If option == consFallthroughOID
		consFallthrough = false
		SetToggleOptionValue(consFallthroughOID, false)
		Return
	Endif
	If option == consAllowFollowersOID
		consAllowFollowers = false
		SetToggleOptionValue(consAllowFollowersOID, false)
		Return
	Endif
	If option == consFollowersBlockOID
		consFollowersBlock = false
		SetToggleOptionValue(consFollowersBlockOID, false)
		Return
	Endif
	If option == consTolerableChastityOID
		consTolerableChastity = true
		SetToggleOptionValue(consTolerableChastityOID, true)
		Return
	Endif
	If option == consUseRelationshipsOID
		consUseRelationships = true
		SetToggleOptionValue(consUseRelationshipsOID, true)
		Return
	Endif
	If option == consRelationBondageOID
		consRelationBondage = false
		SetToggleOptionValue(consRelationBondageOID, false)
		Return
	Endif
	If option == consRandomHeavyBondageOID
		consRandomHeavyBondage = false
		SetToggleOptionValue(consRandomHeavyBondageOID, false)
		Return
	Endif
	If option == consBondageIgnoreMaxOID
		consBondageIgnoreMax = false
		SetToggleOptionValue(consBondageIgnoreMaxOID, false)
		Return
	Endif
	If option == consTattooCurseNumbersOID
		consTattooCurseNumbers = false
		SetToggleOptionValue(consTattooCurseNumbersOID, false)
		Return
	Endif
	If option == sexEnabledOID
		sexEnabled = true
		SetToggleOptionValue(sexEnabledOID, true)
		Return
	Endif
	If option == sexAggressiveAnimsOID
		sexAggressiveAnims = false
		SetToggleOptionValue(sexAggressiveAnimsOID, false)
		Return
	Endif
	If option == sexFilterDevicesOID
		sexFilterDevices = true
		SetToggleOptionValue(sexFilterDevicesOID, true)
		Return
	Endif
	If option == sexFilterFutaOID
		sexFilterFuta = true
		SetToggleOptionValue(sexFilterFutaOID, true)
		Return
	Endif
	If option == sexRandomEnabledOID
		sexRandomEnabled = false
		SetToggleOptionValue(sexRandomEnabledOID, false)
		Return
	Endif
	If option == sexRandAllowFollowersOID
		sexRandAllowFollowers = true
		SetToggleOptionValue(sexRandAllowFollowersOID, true)
		Return
	Endif
	If option == sexRandAllowNPCsOID
		sexRandAllowNPCs = false
		SetToggleOptionValue(sexRandAllowNPCsOID, false)
		Return
	Endif
	If option == sexRandAllowSummonsOID
		sexRandAllowSummons = true
		SetToggleOptionValue(sexRandAllowSummonsOID, true)
		Return
	Endif
	If option == sexRandAllowCreaturesOID
		sexRandAllowCreatures = false
		SetToggleOptionValue(sexRandAllowCreaturesOID, false)
		Return
	Endif
	If option == sexAllowMaleOID
		sexAllowMale = true
		SetToggleOptionValue(sexAllowMaleOID, true)
		Return
	Endif
	If option == sexAllowFemaleOID
		sexAllowFemale = true
		SetToggleOptionValue(sexAllowFemaleOID, true)
		Return
	Endif
	If option == sexAllowFutaOID
		sexAllowFuta = true
		SetToggleOptionValue(sexAllowFutaOID, true)
		Return
	Endif
	If option == sexAllowCreatureOID
		sexAllowCreature = false
		SetToggleOptionValue(sexAllowCreatureOID, false)
		Return
	Endif
	If option == sexAllowFarmAnimalsOID
		sexAllowFarmAnimals = false
		SetToggleOptionValue(sexAllowFarmAnimalsOID, false)
		Return
	Endif
	If option == sexRequireAllPlayerOID
		sexRequireAllPlayer = false
		SetToggleOptionValue(sexRequireAllPlayerOID, false)
		Return
	Endif
	If option == sexRequirePlayerCollarOID
		sexRequirePlayerCollar = false
		SetToggleOptionValue(sexRequirePlayerCollarOID, false)
		Return
	Endif
	If option == sexRequirePlayerHeavyOID
		sexRequirePlayerHeavy = false
		SetToggleOptionValue(sexRequirePlayerHeavyOID, false)
		Return
	Endif
	If option == sexRequirePlayerNudeOID
		sexRequirePlayerNude = true
		SetToggleOptionValue(sexRequirePlayerNudeOID, true)
		Return
	Endif
	If option == sexRequireAllNPCOID
		sexRequireAllNPC = false
		SetToggleOptionValue(sexRequireAllNPCOID, false)
		Return
	Endif
	If option == sexRequireNPCCollarOID
		sexRequireNPCCollar = false
		SetToggleOptionValue(sexRequireNPCCollarOID, false)
		Return
	Endif
	If option == sexRequireNPCNudeOID
		sexRequireNPCNude = true
		SetToggleOptionValue(sexRequireNPCNudeOID, true)
		Return
	Endif
	If option == sexRequireBothOID
		sexRequireBoth = true
		SetToggleOptionValue(sexRequireBothOID, true)
		Return
	Endif
	If option == sexFollowerBypassPlayerOID
		sexFollowerBypassPlayer = false
		SetToggleOptionValue(sexFollowerBypassPlayerOID, false)
		Return
	Endif
	If option == sexFollowerBypassNPCOID
		sexFollowerBypassNPC = true
		SetToggleOptionValue(sexFollowerBypassNPCOID, true)
		Return
	Endif
	If option == sexSpouseBypassPlayerOID
		sexSpouseBypassPlayer = true
		SetToggleOptionValue(sexSpouseBypassPlayerOID, true)
		Return
	Endif
	If option == sexSpouseBypassNPCOID
		sexSpouseBypassNPC = true
		SetToggleOptionValue(sexSpouseBypassNPCOID, true)
		Return
	Endif
	If option == sexSummonBypassPlayerOID
		sexSummonBypassPlayer = false
		SetToggleOptionValue(sexSummonBypassPlayerOID, false)
		Return
	Endif
	If option == sexSummonBypassNPCOID
		sexSummonBypassNPC = false
		SetToggleOptionValue(sexSummonBypassNPCOID, false)
		Return
	Endif
	If option == ModSuspendedOID
		ModSuspended = false
		SetToggleOptionValue(ModSuspendedOID, false)
		Return
	Endif
	If option == setAllDefaultSettingsOID
		setAllDefaultSettings = false
		SetToggleOptionValue(setAllDefaultSettingsOID, false)
		Return
	Endif
	If option == helpSlaveTatsNGInstalledOID
		helpSlaveTatsNGInstalled = false
		SetToggleOptionValue(helpSlaveTatsNGInstalledOID, false)
		Return
	Endif
	If option == helpLewdMarksInstalledOID
		helpLewdMarksInstalled = false
		SetToggleOptionValue(helpLewdMarksInstalledOID, false)
		Return
	Endif
	If option == helpRapeTattoosInstalledOID
		helpRapeTattoosInstalled = false
		SetToggleOptionValue(helpRapeTattoosInstalledOID, false)
		Return
	Endif
	If option == helpOSLArousedInstalledOID
		helpOSLArousedInstalled = false
		SetToggleOptionValue(helpOSLArousedInstalledOID, false)
		Return
	Endif
	If option == helpUDInstalledOID
		helpUDInstalled = false
		SetToggleOptionValue(helpUDInstalledOID, false)
		Return
	Endif
	If option == helpQuickLootInstalledOID
		helpQuickLootInstalled = false
		SetToggleOptionValue(helpQuickLootInstalledOID, false)
		Return
	Endif
	If option == helpDWDInstalledOID
		helpDWDInstalled = false
		SetToggleOptionValue(helpDWDInstalledOID, false)
		Return
	Endif
	If option == helpANDInstalledOID
		helpANDInstalled = false
		SetToggleOptionValue(helpANDInstalledOID, false)
		Return
	Endif
	If option == helpCockCagesWorkingOID
		helpCockCagesWorking = false
		SetToggleOptionValue(helpCockCagesWorkingOID, false)
		Return
	Endif
	If option == minGoldRequiredOID
		minGoldRequired = 20
		SetSliderOptionValue(minGoldRequiredOID, 20, "{0}")
		Return
	Endif
	If option == eventScalingModOID
		eventScalingMod = 15
		SetSliderOptionValue(eventScalingModOID, 15, "{0}")
		Return
	Endif
	If option == minRestraintsOID
		minRestraints = 1
		SetSliderOptionValue(minRestraintsOID, 1, "{0}")
		Return
	Endif
	If option == maxRestraintsOID
		maxRestraints = 3
		SetSliderOptionValue(maxRestraintsOID, 3, "{0}")
		Return
	Endif
	If option == bossAditionalRestraintsOID
		bossAditionalRestraints = 2
		SetSliderOptionValue(bossAditionalRestraintsOID, 2, "{0}")
		Return
	Endif
	If option == restraintCapOID
		restraintCap = 7
		SetSliderOptionValue(restraintCapOID, 7, "{0}")
		Return
	Endif
	If option == minArousalOID
		minArousal = 10
		SetSliderOptionValue(minArousalOID, 10, "{0}")
		Return
	Endif
	If option == beltWeightOID
		beltWeight = 40
		SetSliderOptionValue(beltWeightOID, 40, "{0}")
		Return
	Endif
	If option == chastityPiercingWeightOID
		chastityPiercingWeight = 20
		SetSliderOptionValue(chastityPiercingWeightOID, 20, "{0}")
		Return
	Endif
	If option == braWeightOID
		braWeight = 30
		SetSliderOptionValue(braWeightOID, 30, "{0}")
		Return
	Endif
	If option == plugsWeightOID
		plugsWeight = 50
		SetSliderOptionValue(plugsWeightOID, 50, "{0}")
		Return
	Endif
	If option == lockingPlugsWeightOID
		lockingPlugsWeight = 30
		SetSliderOptionValue(lockingPlugsWeightOID, 30, "{0}")
		Return
	Endif
	If option == inflatablePlugsWeightOID
		inflatablePlugsWeight = 15
		SetSliderOptionValue(inflatablePlugsWeightOID, 15, "{0}")
		Return
	Endif
	If option == nipplePiercingsWeightOID
		nipplePiercingsWeight = 50
		SetSliderOptionValue(nipplePiercingsWeightOID, 50, "{0}")
		Return
	Endif
	If option == vaginalPiercingsWeightOID
		vaginalPiercingsWeight = 50
		SetSliderOptionValue(vaginalPiercingsWeightOID, 50, "{0}")
		Return
	Endif
	If option == corsetWeightOID
		corsetWeight = 40
		SetSliderOptionValue(corsetWeightOID, 40, "{0}")
		Return
	Endif
	If option == beltedCorsetsWeightOID
		beltedCorsetsWeight = 30
		SetSliderOptionValue(beltedCorsetsWeightOID, 30, "{0}")
		Return
	Endif
	If option == slaveHarnessWeightOID
		slaveHarnessWeight = 50
		SetSliderOptionValue(slaveHarnessWeightOID, 50, "{0}")
		Return
	Endif
	If option == chastityHarnessWeightOID
		chastityHarnessWeight = 40
		SetSliderOptionValue(chastityHarnessWeightOID, 40, "{0}")
		Return
	Endif
	If option == armbinderWeightOID
		armbinderWeight = 30
		SetSliderOptionValue(armbinderWeightOID, 30, "{0}")
		Return
	Endif
	If option == elbowbinderWeightOID
		elbowbinderWeight = 20
		SetSliderOptionValue(elbowbinderWeightOID, 20, "{0}")
		Return
	Endif
	If option == yokeWeightOID
		yokeWeight = 10
		SetSliderOptionValue(yokeWeightOID, 10, "{0}")
		Return
	Endif
	If option == shacklesWeightOID
		shacklesWeight = 20
		SetSliderOptionValue(shacklesWeightOID, 20, "{0}")
		Return
	Endif
	If option == straitjacketWeightOID
		straitjacketWeight = 30
		SetSliderOptionValue(straitjacketWeightOID, 30, "{0}")
		Return
	Endif
	If option == straitjacketLegbinderWeightOID
		straitjacketLegbinderWeight = 15
		SetSliderOptionValue(straitjacketLegbinderWeightOID, 15, "{0}")
		Return
	Endif
	If option == petSuitWeightOID
		petSuitWeight = 10
		SetSliderOptionValue(petSuitWeightOID, 10, "{0}")
		Return
	Endif
	If option == collarWeightOID
		collarWeight = 60
		SetSliderOptionValue(collarWeightOID, 60, "{0}")
		Return
	Endif
	If option == armCuffsWeightOID
		armCuffsWeight = 60
		SetSliderOptionValue(armCuffsWeightOID, 60, "{0}")
		Return
	Endif
	If option == legCuffsWeightOID
		legCuffsWeight = 60
		SetSliderOptionValue(legCuffsWeightOID, 60, "{0}")
		Return
	Endif
	If option == gagWeightOID
		gagWeight = 35
		SetSliderOptionValue(gagWeightOID, 35, "{0}")
		Return
	Endif
	If option == ringGagWeightOID
		ringGagWeight = 45
		SetSliderOptionValue(ringGagWeightOID, 45, "{0}")
		Return
	Endif
	If option == largeGagWeightOID
		largeGagWeight = 30
		SetSliderOptionValue(largeGagWeightOID, 30, "{0}")
		Return
	Endif
	If option == largeRingGagWeightOID
		largeRingGagWeight = 30
		SetSliderOptionValue(largeRingGagWeightOID, 30, "{0}")
		Return
	Endif
	If option == blindfoldWeightOID
		blindfoldWeight = 20
		SetSliderOptionValue(blindfoldWeightOID, 20, "{0}")
		Return
	Endif
	If option == hoodBothWeightOID
		hoodBothWeight = 20
		SetSliderOptionValue(hoodBothWeightOID, 20, "{0}")
		Return
	Endif
	If option == hoodGagWeightOID
		hoodGagWeight = 20
		SetSliderOptionValue(hoodGagWeightOID, 20, "{0}")
		Return
	Endif
	If option == hoodBlindWeightOID
		hoodBlindWeight = 20
		SetSliderOptionValue(hoodBlindWeightOID, 20, "{0}")
		Return
	Endif
	If option == hoodNoneWeightOID
		hoodNoneWeight = 20
		SetSliderOptionValue(hoodNoneWeightOID, 20, "{0}")
		Return
	Endif
	If option == catsuitWeightOID
		catsuitWeight = 30
		SetSliderOptionValue(catsuitWeightOID, 30, "{0}")
		Return
	Endif
	If option == hobbleSkirtWeightOID
		hobbleSkirtWeight = 20
		SetSliderOptionValue(hobbleSkirtWeightOID, 20, "{0}")
		Return
	Endif
	If option == hobbleSkirtDifficultyOID
		hobbleSkirtDifficulty = 50
		SetSliderOptionValue(hobbleSkirtDifficultyOID, 50, "{0}")
		Return
	Endif
	If option == bootsWeightOID
		bootsWeight = 30
		SetSliderOptionValue(bootsWeightOID, 30, "{0}")
		Return
	Endif
	If option == glovesWeightOID
		glovesWeight = 30
		SetSliderOptionValue(glovesWeightOID, 30, "{0}")
		Return
	Endif
	If option == mittensWeightOID
		mittensWeight = 0
		SetSliderOptionValue(mittensWeightOID, 0, "{0}")
		Return
	Endif
	If option == minKeysLootedOID
		minKeysLooted = 1
		SetSliderOptionValue(minKeysLootedOID, 1, "{0}")
		Return
	Endif
	If option == maxKeysLootedOID
		maxKeysLooted = 1
		SetSliderOptionValue(maxKeysLootedOID, 1, "{0}")
		Return
	Endif
	If option == maxHeldKeysOID
		maxHeldKeys = 3
		SetSliderOptionValue(maxHeldKeysOID, 3, "{0}")
		Return
	Endif
	If option == restraintsKeyWeightOID
		restraintsKeyWeight = 80
		SetSliderOptionValue(restraintsKeyWeightOID, 80, "{0}")
		Return
	Endif
	If option == chastityKeyWeightOID
		chastityKeyWeight = 50
		SetSliderOptionValue(chastityKeyWeightOID, 50, "{0}")
		Return
	Endif
	If option == piercingToolWeightOID
		piercingToolWeight = 20
		SetSliderOptionValue(piercingToolWeightOID, 20, "{0}")
		Return
	Endif
	If option == eventStandardWeightOID
		eventStandardWeight = 100
		SetSliderOptionValue(eventStandardWeightOID, 100, "{0}")
		Return
	Endif
	If option == eventStandardBossReductionOID
		eventStandardBossReduction = 20
		SetSliderOptionValue(eventStandardBossReductionOID, 20, "{0}")
		Return
	Endif
	If option == eventOppressiveWeightOID
		eventOppressiveWeight = 15
		SetSliderOptionValue(eventOppressiveWeightOID, 15, "{0}")
		Return
	Endif
	If option == eventContraptionWeightOID
		eventContraptionWeight = 25
		SetSliderOptionValue(eventContraptionWeightOID, 25, "{0}")
		Return
	Endif
	If option == eventContDeviceOverrideOID
		eventContDeviceOverride = 0
		SetSliderOptionValue(eventContDeviceOverrideOID, 0, "{0}")
		Return
	Endif
	If option == eventWickedWeightOID
		eventWickedWeight = 15
		SetSliderOptionValue(eventWickedWeightOID, 15, "{0}")
		Return
	Endif
	If option == eventTattooWeightOID
		eventTattooWeight = 15
		SetSliderOptionValue(eventTattooWeightOID, 15, "{0}")
		Return
	Endif
	If option == eventTattooMinOID
		eventTattooMin = 1
		SetSliderOptionValue(eventTattooMinOID, 1, "{0}")
		Return
	Endif
	If option == eventTattooMaxOID
		eventTattooMax = 3
		SetSliderOptionValue(eventTattooMaxOID, 3, "{0}")
		Return
	Endif
	If option == eventTattooCapOID
		eventTattooCap = 8
		SetSliderOptionValue(eventTattooCapOID, 8, "{0}")
		Return
	Endif
	If option == eventLewdMarkWeightOID
		eventLewdMarkWeight = 10
		SetSliderOptionValue(eventLewdMarkWeightOID, 10, "{0}")
		Return
	Endif
	If option == eventSimpleSlaveryWeightOID
		eventSimpleSlaveryWeight = 0
		SetSliderOptionValue(eventSimpleSlaveryWeightOID, 0, "{0}")
		Return
	Endif
	If option == eventSSMinRestraintsOID
		eventSSMinRestraints = 6
		SetSliderOptionValue(eventSSMinRestraintsOID, 6, "{0}")
		Return
	Endif
	If option == eventAbadonWeightOID
		eventAbadonWeight = 5
		SetSliderOptionValue(eventAbadonWeightOID, 5, "{0}")
		Return
	Endif
	If option == eventAbadonWarriorWeightOID
		eventAbadonWarriorWeight = 10
		SetSliderOptionValue(eventAbadonWarriorWeightOID, 10, "{0}")
		Return
	Endif
	If option == eventAbadonWarriorCountOID
		eventAbadonWarriorCount = 5
		SetSliderOptionValue(eventAbadonWarriorCountOID, 5, "{0}")
		Return
	Endif
	If option == eventAbadonScoutWeightOID
		eventAbadonScoutWeight = 10
		SetSliderOptionValue(eventAbadonScoutWeightOID, 10, "{0}")
		Return
	Endif
	If option == eventAbadonScoutCountOID
		eventAbadonScoutCount = 5
		SetSliderOptionValue(eventAbadonScoutCountOID, 5, "{0}")
		Return
	Endif
	If option == eventAbadonWitchWeightOID
		eventAbadonWitchWeight = 10
		SetSliderOptionValue(eventAbadonWitchWeightOID, 10, "{0}")
		Return
	Endif
	If option == eventAbadonWitchCountOID
		eventAbadonWitchCount = 5
		SetSliderOptionValue(eventAbadonWitchCountOID, 5, "{0}")
		Return
	Endif
	If option == followerDeviceModifierOID
		followerDeviceModifier = 0
		SetSliderOptionValue(followerDeviceModifierOID, 0, "{0}")
		Return
	Endif
	If option == LMAllureWeightOID
		LMAllureWeight = 10
		SetSliderOptionValue(LMAllureWeightOID, 10, "{0}")
		Return
	Endif
	If option == LMAllureModOID
		LMAllureMod = 5
		SetSliderOptionValue(LMAllureModOID, 5, "{0}")
		Return
	Endif
	If option == LMAllureSexOID
		LMAllureSex = 25
		SetSliderOptionValue(LMAllureSexOID, 25, "{0}")
		Return
	Endif
	If option == LMHeatWeightOID
		LMHeatWeight = 10
		SetSliderOptionValue(LMHeatWeightOID, 10, "{0}")
		Return
	Endif
	If option == LMHeatModOID
		LMHeatMod = 30
		SetSliderOptionValue(LMHeatModOID, 30, "{0}")
		Return
	Endif
	If option == LMHeatContainerCountOID
		LMHeatContainerCount = 50
		SetSliderOptionValue(LMHeatContainerCountOID, 50, "{0}")
		Return
	Endif
	If option == LMBrandingWeightOID
		LMBrandingWeight = 10
		SetSliderOptionValue(LMBrandingWeightOID, 10, "{0}")
		Return
	Endif
	If option == LMBrandingTotalOID
		LMBrandingTotal = 12
		SetSliderOptionValue(LMBrandingTotalOID, 12, "{0}")
		Return
	Endif
	If option == LMHealslutWeightOID
		LMHealslutWeight = 5
		SetSliderOptionValue(LMHealslutWeightOID, 5, "{0}")
		Return
	Endif
	If option == LMHealslutHealingOID
		LMHealslutHealing = 4000
		SetSliderOptionValue(LMHealslutHealingOID, 4000, "{0}")
		Return
	Endif
	If option == LMHealslutArousalOID
		LMHealslutArousal = 90
		SetSliderOptionValue(LMHealslutArousalOID, 90, "{0}")
		Return
	Endif
	If option == LMHealslutDurationOID
		LMHealslutDuration = 300
		SetSliderOptionValue(LMHealslutDurationOID, 300, "{0}")
		Return
	Endif
	If option == LMBondageWeightOID
		LMBondageWeight = 5
		SetSliderOptionValue(LMBondageWeightOID, 5, "{0}")
		Return
	Endif
	If option == LMBondageDeviceCapAddOID
		LMBondageDeviceCapAdd = 3
		SetSliderOptionValue(LMBondageDeviceCapAddOID, 3, "{0}")
		Return
	Endif
	If option == LMBondageDeviceCountOID
		LMBondageDeviceCount = 25
		SetSliderOptionValue(LMBondageDeviceCountOID, 25, "{0}")
		Return
	Endif
	If option == LMNudityWeightOID
		LMNudityWeight = 15
		SetSliderOptionValue(LMNudityWeightOID, 15, "{0}")
		Return
	Endif
	If option == LMNudityTalkTimesOID
		LMNudityTalkTimes = 35
		SetSliderOptionValue(LMNudityTalkTimesOID, 35, "{0}")
		Return
	Endif
	If option == LMPainslutWeightOID
		LMPainslutWeight = 10
		SetSliderOptionValue(LMPainslutWeightOID, 10, "{0}")
		Return
	Endif
	If option == LMPainslutModOID
		LMPainslutMod = 5
		SetSliderOptionValue(LMPainslutModOID, 5, "{0}")
		Return
	Endif
	If option == LMPainslutCountOID
		LMPainslutCount = 25
		SetSliderOptionValue(LMPainslutCountOID, 25, "{0}")
		Return
	Endif
	If option == LMPainslutArousalOID
		LMPainslutArousal = 90
		SetSliderOptionValue(LMPainslutArousalOID, 90, "{0}")
		Return
	Endif
	If option == oppSummonerCollarWeightOID
		oppSummonerCollarWeight = 20
		SetSliderOptionValue(oppSummonerCollarWeightOID, 20, "{0}")
		Return
	Endif
	If option == oppSummonerSexCountOID
		oppSummonerSexCount = 15
		SetSliderOptionValue(oppSummonerSexCountOID, 15, "{0}")
		Return
	Endif
	If option == oppDwarvenCuirassWeightOID
		oppDwarvenCuirassWeight = 15
		SetSliderOptionValue(oppDwarvenCuirassWeightOID, 15, "{0}")
		Return
	Endif
	If option == oppDwarvenValueNeededOID
		oppDwarvenValueNeeded = 200
		SetSliderOptionValue(oppDwarvenValueNeededOID, 200, "{0}")
		Return
	Endif
	If option == oppDwarvenArousalOID
		oppDwarvenArousal = 25
		SetSliderOptionValue(oppDwarvenArousalOID, 25, "{0}")
		Return
	Endif
	If option == oppNocturnalWeightOID
		oppNocturnalWeight = 10
		SetSliderOptionValue(oppNocturnalWeightOID, 10, "{0}")
		Return
	Endif
	If option == oppNocturnalSexCountOID
		oppNocturnalSexCount = 3
		SetSliderOptionValue(oppNocturnalSexCountOID, 3, "{0}")
		Return
	Endif
	If option == oppNocturnalPeopleOID
		oppNocturnalPeople = 7
		SetSliderOptionValue(oppNocturnalPeopleOID, 7, "{0}")
		Return
	Endif
	If option == oppNocturnalArousalOID
		oppNocturnalArousal = 35
		SetSliderOptionValue(oppNocturnalArousalOID, 35, "{0}")
		Return
	Endif
	If option == oppLivingLatexWeightOID
		oppLivingLatexWeight = 20
		SetSliderOptionValue(oppLivingLatexWeightOID, 20, "{0}")
		Return
	Endif
	If option == oppLivingLatexStartTimeOID
		oppLivingLatexStartTime = 5
		SetSliderOptionValue(oppLivingLatexStartTimeOID, 5, "{0}")
		Return
	Endif
	If option == oppMadnessPlugWeightOID
		oppMadnessPlugWeight = 25
		SetSliderOptionValue(oppMadnessPlugWeightOID, 25, "{0}")
		Return
	Endif
	If option == oppMadnessPlugIterationsOID
		oppMadnessPlugIterations = 5
		SetSliderOptionValue(oppMadnessPlugIterationsOID, 5, "{0}")
		Return
	Endif
	If option == oppMadnessplugOrgasmsOID
		oppMadnessplugOrgasms = 6
		SetSliderOptionValue(oppMadnessplugOrgasmsOID, 6, "{0}")
		Return
	Endif
	If option == consScanRadiusOID
		consScanRadius = 650
		SetSliderOptionValue(consScanRadiusOID, 650, "{0}")
		Return
	Endif
	If option == consScanIntervalOID
		consScanInterval = 5
		SetSliderOptionValue(consScanIntervalOID, 5, "{0}")
		Return
	Endif
	If option == consFineForSexOID
		consFineForSex = 250
		SetSliderOptionValue(consFineForSexOID, 250, "{0}")
		Return
	Endif
	If option == consFineForNudityOID
		consFineForNudity = 100
		SetSliderOptionValue(consFineForNudityOID, 100, "{0}")
		Return
	Endif
	If option == consFineForRestraintsOID
		consFineForRestraints = 100
		SetSliderOptionValue(consFineForRestraintsOID, 100, "{0}")
		Return
	Endif
	If option == consFineForTattoosOID
		consFineForTattoos = 100
		SetSliderOptionValue(consFineForTattoosOID, 100, "{0}")
		Return
	Endif
	If option == consRestrainedCountOID
		consRestrainedCount = 5
		SetSliderOptionValue(consRestrainedCountOID, 5, "{0}")
		Return
	Endif
	If option == consTattooCountOID
		consTattooCount = 8
		SetSliderOptionValue(consTattooCountOID, 8, "{0}")
		Return
	Endif
	If option == consSexWeightOID
		consSexWeight = 15
		SetSliderOptionValue(consSexWeightOID, 15, "{0}")
		Return
	Endif
	If option == consRandomBondageWeightOID
		consRandomBondageWeight = 10
		SetSliderOptionValue(consRandomBondageWeightOID, 10, "{0}")
		Return
	Endif
	If option == consTattooWeightOID
		consTattooWeight = 10
		SetSliderOptionValue(consTattooWeightOID, 10, "{0}")
		Return
	Endif
	If option == consMercyWeightOID
		consMercyWeight = 5
		SetSliderOptionValue(consMercyWeightOID, 5, "{0}")
		Return
	Endif
	If option == sexCooldownOID
		sexCooldown = 60
		SetSliderOptionValue(sexCooldownOID, 60, "{0}")
		Return
	Endif
	If option == sexArousalModifierCutoffOID
		sexArousalModifierCutoff = 80
		SetSliderOptionValue(sexArousalModifierCutoffOID, 80, "{0}")
		Return
	Endif
	If option == sexScalingModifierOID
		sexScalingModifier = 5
		SetSliderOptionValue(sexScalingModifierOID, 5, "{0}")
		Return
	Endif
	If option == sexSearchRadiusOID
		sexSearchRadius = 2000
		SetSliderOptionValue(sexSearchRadiusOID, 2000, "{0}")
		Return
	Endif
	If option == sexSearchIntervalOID
		sexSearchInterval = 15
		SetSliderOptionValue(sexSearchIntervalOID, 15, "{0}")
		Return
	Endif
	If option == sexRequiredPlayerBindingsOID
		sexRequiredPlayerBindings = 2
		SetSliderOptionValue(sexRequiredPlayerBindingsOID, 2, "{0}")
		Return
	Endif
	If option == sexRequiredPlayerArousalOID
		sexRequiredPlayerArousal = 85
		SetSliderOptionValue(sexRequiredPlayerArousalOID, 85, "{0}")
		Return
	Endif
	If option == sexRequiredPlayerTattoosOID
		sexRequiredPlayerTattoos = -1
		SetSliderOptionValue(sexRequiredPlayerTattoosOID, -1, "{0}")
		Return
	Endif
	If option == sexRequiredNPCBindingsOID
		sexRequiredNPCBindings = -1
		SetSliderOptionValue(sexRequiredNPCBindingsOID, -1, "{0}")
		Return
	Endif
	If option == sexRequiredNPCArousalOID
		sexRequiredNPCArousal = 85
		SetSliderOptionValue(sexRequiredNPCArousalOID, 85, "{0}")
		Return
	Endif
	If option == sexRequiredNPCTattoosOID
		sexRequiredNPCTattoos = -1
		SetSliderOptionValue(sexRequiredNPCTattoosOID, -1, "{0}")
		Return
	Endif
	If option == sexRequiredCreatureArousalOID
		sexRequiredCreatureArousal = 75
		SetSliderOptionValue(sexRequiredCreatureArousalOID, 75, "{0}")
		Return
	Endif
	If option == baseChanceOID
		baseChance = 6.5
		SetSliderOptionValue(baseChanceOID, 6.5, "{1}%")
		Return
	Endif
	If option == containerModifierOID
		containerModifier = 1.0
		SetSliderOptionValue(containerModifierOID, 1.0, "{1}x")
		Return
	Endif
	If option == bossContainerModifierOID
		bossContainerModifier = 2.0
		SetSliderOptionValue(bossContainerModifierOID, 2.0, "{1}x")
		Return
	Endif
	If option == deadBodyModifierOID
		deadBodyModifier = 1.3
		SetSliderOptionValue(deadBodyModifierOID, 1.3, "{1}x")
		Return
	Endif
	If option == pickpocketModifierOID
		pickpocketModifier = 1.3
		SetSliderOptionValue(pickpocketModifierOID, 1.3, "{1}x")
		Return
	Endif
	If option == doorModifierOID
		doorModifier = 1.0
		SetSliderOptionValue(doorModifierOID, 1.0, "{1}x")
		Return
	Endif
	If option == lockedModifierOID
		lockedModifier = 2.0
		SetSliderOptionValue(lockedModifierOID, 2.0, "{1}x")
		Return
	Endif
	If option == lockDifficultyModifierOID
		lockDifficultyModifier = 1.3
		SetSliderOptionValue(lockDifficultyModifierOID, 1.3, "{1}")
		Return
	Endif
	If option == arousalModifierOID
		arousalModifier = 1.4
		SetSliderOptionValue(arousalModifierOID, 1.4, "{1}")
		Return
	Endif
	If option == keyLossChanceOID
		keyLossChance = 80.0
		SetSliderOptionValue(keyLossChanceOID, 80.0, "{1}%")
		Return
	Endif
	If option == keyChanceOID
		keyChance = 7.0
		SetSliderOptionValue(keyChanceOID, 7.0, "{1}%")
		Return
	Endif
	If option == keyBonusOID
		keyBonus = 1.0
		SetSliderOptionValue(keyBonusOID, 1.0, "{1}%")
		Return
	Endif
	If option == keyPickpocketBonusOID
		keyPickpocketBonus = 2.0
		SetSliderOptionValue(keyPickpocketBonusOID, 2.0, "{1}x")
		Return
	Endif
	If option == magicKeyChanceOID
		magicKeyChance = 20.0
		SetSliderOptionValue(magicKeyChanceOID, 20.0, "{1}")
		Return
	Endif
	If option == keyLuckyBonusOID
		keyLuckyBonus = 1.75
		SetSliderOptionValue(keyLuckyBonusOID, 1.75, "{2}")
		Return
	Endif
	If option == eventContraptionTimeOID
		eventContraptionTime = 4.0
		SetSliderOptionValue(eventContraptionTimeOID, 4.0, "{1}")
		Return
	Endif
	If option == followerDeviceMultOID
		followerDeviceMult = 0.75
		SetSliderOptionValue(followerDeviceMultOID, 0.75, "{2}")
		Return
	Endif
	If option == LMBrandingChanceOID
		LMBrandingChance = 1.5
		SetSliderOptionValue(LMBrandingChanceOID, 1.5, "{1}%")
		Return
	Endif
	If option == LMBondageModifierOID
		LMBondageModifier = 5.0
		SetSliderOptionValue(LMBondageModifierOID, 5.0, "{1}X")
		Return
	Endif
	If option == LMPainslutSexChanceOID
		LMPainslutSexChance = 15.0
		SetSliderOptionValue(LMPainslutSexChanceOID, 15.0, "{1}")
		Return
	Endif
	If option == oppSummonChanceOID
		oppSummonChance = 1.5
		SetSliderOptionValue(oppSummonChanceOID, 1.5, "{1}%")
		Return
	Endif
	If option == oppSummonSexChanceOID
		oppSummonSexChance = 25.0
		SetSliderOptionValue(oppSummonSexChanceOID, 25.0, "{1}%")
		Return
	Endif
	If option == oppNocturnalHandChanceOID
		oppNocturnalHandChance = 3.5
		SetSliderOptionValue(oppNocturnalHandChanceOID, 3.5, "{1}%")
		Return
	Endif
	If option == oppNocturnalRecastChanceOID
		oppNocturnalRecastChance = 33.3
		SetSliderOptionValue(oppNocturnalRecastChanceOID, 33.3, "{1}%")
		Return
	Endif
	If option == oppLivingLatexGemOID
		oppLivingLatexGem = 6.0
		SetSliderOptionValue(oppLivingLatexGemOID, 6.0, "{1}")
		Return
	Endif
	If option == oppLivingLatexMoreOID
		oppLivingLatexMore = 0.0
		SetSliderOptionValue(oppLivingLatexMoreOID, 0.0, "{1}")
		Return
	Endif
	If option == oppMadnessMultiplierOID
		oppMadnessMultiplier = 1.0
		SetSliderOptionValue(oppMadnessMultiplierOID, 1.0, "{2}")
		Return
	Endif
	If option == lockedLocationBypassOID
		lockedLocationBypass = 0.6
		SetSliderOptionValue(lockedLocationBypassOID, 0.6, "{1}x")
		Return
	Endif
	If option == theftLocationBypassOID
		theftLocationBypass = 1.1
		SetSliderOptionValue(theftLocationBypassOID, 1.1, "{1}x")
		Return
	Endif
	If option == playerHomeModifierOID
		playerHomeModifier = 0.0
		SetSliderOptionValue(playerHomeModifierOID, 0.0, "{1}x")
		Return
	Endif
	If option == cityModifierOID
		cityModifier = 0.0
		SetSliderOptionValue(cityModifierOID, 0.0, "{1}x")
		Return
	Endif
	If option == townModifierOID
		townModifier = 0.0
		SetSliderOptionValue(townModifierOID, 0.0, "{1}x")
		Return
	Endif
	If option == banditModifierOID
		banditModifier = 1.1
		SetSliderOptionValue(banditModifierOID, 1.1, "{1}x")
		Return
	Endif
	If option == draugrModifierOID
		draugrModifier = 1.2
		SetSliderOptionValue(draugrModifierOID, 1.2, "{1}x")
		Return
	Endif
	If option == soulCairnModifierOID
		soulCairnModifier = 1.5
		SetSliderOptionValue(soulCairnModifierOID, 1.5, "{1}x")
		Return
	Endif
	If option == dwarvenModifierOID
		dwarvenModifier = 1.2
		SetSliderOptionValue(dwarvenModifierOID, 1.2, "{1}x")
		Return
	Endif
	If option == falmerModifierOID
		falmerModifier = 1.3
		SetSliderOptionValue(falmerModifierOID, 1.3, "{1}x")
		Return
	Endif
	If option == forswornModifierOID
		forswornModifier = 1.1
		SetSliderOptionValue(forswornModifierOID, 1.1, "{1}x")
		Return
	Endif
	If option == vampireModifierOID
		vampireModifier = 1.5
		SetSliderOptionValue(vampireModifierOID, 1.5, "{1}x")
		Return
	Endif
	If option == warlockModifierOID
		warlockModifier = 1.5
		SetSliderOptionValue(warlockModifierOID, 1.5, "{1}x")
		Return
	Endif
	If option == dragonLairModifierOID
		dragonLairModifier = 2.0
		SetSliderOptionValue(dragonLairModifierOID, 2.0, "{1}x")
		Return
	Endif
	If option == apocryphaModifierOID
		apocryphaModifier = 2.0
		SetSliderOptionValue(apocryphaModifierOID, 2.0, "{1}x")
		Return
	Endif
	If option == wildernessModifierOID
		wildernessModifier = 0.9
		SetSliderOptionValue(wildernessModifierOID, 0.9, "{1}x")
		Return
	Endif
	If option == rDeviceBaseChanceOID
		rDeviceBaseChance = 1.5
		SetSliderOptionValue(rDeviceBaseChanceOID, 1.5, "{1}%")
		Return
	Endif
	If option == rDeviceLuckyBonusOID
		rDeviceLuckyBonus = 2.5
		SetSliderOptionValue(rDeviceLuckyBonusOID, 2.5, "{1}")
		Return
	Endif
	If option == wardingCharmChanceOID
		wardingCharmChance = 0.5
		SetSliderOptionValue(wardingCharmChanceOID, 0.5, "{2}%")
		Return
	Endif
	If option == tatSolventChanceOID
		tatSolventChance = 0.5
		SetSliderOptionValue(tatSolventChanceOID, 0.5, "{2}%")
		Return
	Endif
	If option == arousalPotionChanceOID
		arousalPotionChance = 5.0
		SetSliderOptionValue(arousalPotionChanceOID, 5.0, "{2}%")
		Return
	Endif
	If option == arousalPotionLibidoOID
		arousalPotionLibido = 10.0
		SetSliderOptionValue(arousalPotionLibidoOID, 10.0, "{1}")
		Return
	Endif
	If option == consTalkNudeOID
		consTalkNude = 35.0
		SetSliderOptionValue(consTalkNudeOID, 35.0, "{1}%")
		Return
	Endif
	If option == consTalkRestrainedOID
		consTalkRestrained = 10.0
		SetSliderOptionValue(consTalkRestrainedOID, 10.0, "{1}%")
		Return
	Endif
	If option == consTalkHeavyOID
		consTalkHeavy = 50.0
		SetSliderOptionValue(consTalkHeavyOID, 50.0, "{1}%")
		Return
	Endif
	If option == consTalkTattooOID
		consTalkTattoo = 25.0
		SetSliderOptionValue(consTalkTattooOID, 25.0, "{1}%")
		Return
	Endif
	If option == consScanSexOID
		consScanSex = 25.0
		SetSliderOptionValue(consScanSexOID, 25.0, "{1}%")
		Return
	Endif
	If option == consScanNudeOID
		consScanNude = 10.0
		SetSliderOptionValue(consScanNudeOID, 10.0, "{1}%")
		Return
	Endif
	If option == consScanRestrainedOID
		consScanRestrained = 0.0
		SetSliderOptionValue(consScanRestrainedOID, 0.0, "{1}%")
		Return
	Endif
	If option == consScanHeavyOID
		consScanHeavy = 25.0
		SetSliderOptionValue(consScanHeavyOID, 25.0, "{1}%")
		Return
	Endif
	If option == consScanTattooOID
		consScanTattoo = 5.0
		SetSliderOptionValue(consScanTattooOID, 5.0, "{1}%")
		Return
	Endif
	If option == consScanTrespassOID
		consScanTrespass = 100.0
		SetSliderOptionValue(consScanTrespassOID, 100.0, "{1}%")
		Return
	Endif
	If option == consGuardScanSexOID
		consGuardScanSex = 50.0
		SetSliderOptionValue(consGuardScanSexOID, 50.0, "{1}%")
		Return
	Endif
	If option == consGuardScanNudeOID
		consGuardScanNude = 0.0
		SetSliderOptionValue(consGuardScanNudeOID, 0.0, "{1}%")
		Return
	Endif
	If option == consGuardScanRestrainedOID
		consGuardScanRestrained = 0.0
		SetSliderOptionValue(consGuardScanRestrainedOID, 0.0, "{1}%")
		Return
	Endif
	If option == consGuardScanTattooOID
		consGuardScanTattoo = 0.0
		SetSliderOptionValue(consGuardScanTattooOID, 0.0, "{1}%")
		Return
	Endif
	If option == consGuardTalkMultOID
		consGuardTalkMult = 5.0
		SetSliderOptionValue(consGuardTalkMultOID, 5.0, "{1}")
		Return
	Endif
	If option == consGaggedMultiplierOID
		consGaggedMultiplier = 1.2
		SetSliderOptionValue(consGaggedMultiplierOID, 1.2, "{1}x")
		Return
	Endif
	If option == sexBaseChanceOID
		sexBaseChance = 1.0
		SetSliderOptionValue(sexBaseChanceOID, 1.0, "{1}%")
		Return
	Endif
	If option == sexCreatureModifierOID
		sexCreatureModifier = 0.9
		SetSliderOptionValue(sexCreatureModifierOID, 0.9, "{1}")
		Return
	Endif
	If option == sexFollowerModifierOID
		sexFollowerModifier = 1.0
		SetSliderOptionValue(sexFollowerModifierOID, 1.0, "{1}")
		Return
	Endif
	If option == sexSummonModifierOID
		sexSummonModifier = 2.0
		SetSliderOptionValue(sexSummonModifierOID, 2.0, "{1}")
		Return
	Endif
	If option == sexRestraintsModifierOID
		sexRestraintsModifier = 1.1
		SetSliderOptionValue(sexRestraintsModifierOID, 1.1, "{2}")
		Return
	Endif
	If option == sexSafeLocationModifierOID
		sexSafeLocationModifier = 1.3
		SetSliderOptionValue(sexSafeLocationModifierOID, 1.3, "{1}")
		Return
	Endif
	If option == sexUnsafeLocationModifierOID
		sexUnsafeLocationModifier = 0.1
		SetSliderOptionValue(sexUnsafeLocationModifierOID, 0.1, "{1}")
		Return
	Endif
	If option == sexPlayerNudityModifierOID
		sexPlayerNudityModifier = 2.0
		SetSliderOptionValue(sexPlayerNudityModifierOID, 2.0, "{1}")
		Return
	Endif
	If option == sexNPCNudityModifierOID
		sexNPCNudityModifier = 2.0
		SetSliderOptionValue(sexNPCNudityModifierOID, 2.0, "{1}")
		Return
	Endif
	If option == sexPlayerArousalModifierOID
		sexPlayerArousalModifier = 2.5
		SetSliderOptionValue(sexPlayerArousalModifierOID, 2.5, "{1}")
		Return
	Endif
	If option == sexNPCArousalModifierOID
		sexNPCArousalModifier = 2.5
		SetSliderOptionValue(sexNPCArousalModifierOID, 2.5, "{1}")
		Return
	Endif
	If option == sexAllureModifierOID
		sexAllureModifier = 5.0
		SetSliderOptionValue(sexAllureModifierOID, 5.0, "{1}")
		Return
	Endif
	If option == sexSummonerModifierOID
		sexSummonerModifier = 7.5
		SetSliderOptionValue(sexSummonerModifierOID, 7.5, "{1}")
		Return
	Endif
	If option == LMAllureColorOID
		LMAllureColor = 0xcf11c5
		SetColorOptionValue(LMAllureColorOID, 0xcf11c5)
		Return
	Endif
	If option == LMHeatColorOID
		LMHeatColor = 0xe3143a
		SetColorOptionValue(LMHeatColorOID, 0xe3143a)
		Return
	Endif
	If option == LMBrandingColorOID
		LMBrandingColor = 0x220022
		SetColorOptionValue(LMBrandingColorOID, 0x220022)
		Return
	Endif
	If option == LMHealslutColorOID
		LMHealslutColor = 0xffbb45
		SetColorOptionValue(LMHealslutColorOID, 0xffbb45)
		Return
	Endif
	If option == LMBondageColorOID
		LMBondageColor = 0x7908cf
		SetColorOptionValue(LMBondageColorOID, 0x7908cf)
		Return
	Endif
	If option == LMNudityColorOID
		LMNudityColor = 0xd676cb
		SetColorOptionValue(LMNudityColorOID, 0xd676cb)
		Return
	Endif
	If option == LMPainslutColorOID
		LMPainslutColor = 0x911300
		SetColorOptionValue(LMPainslutColorOID, 0x911300)
		Return
	Endif
	If option == setDebugKeyOID
		setDebugKey = -1
		SetKeyMapOptionValue(setDebugKeyOID, -1)
		Return
	Endif
	If option == excludedFollowersOID
		excludedFollowers = ""
		SetInputOptionValue(excludedFollowersOID, "")
		Return
	Endif
	If option == followerOverrideThemeOID
		followerOverrideTheme = ""
		SetInputOptionValue(followerOverrideThemeOID, "")
		Return
	Endif
	If option == followerSkipKeywordsOID
		followerSkipKeywords = ""
		SetInputOptionValue(followerSkipKeywordsOID, "")
		Return
	Endif
	If option == LMNudityAditionalFormsOID
		LMNudityAditionalForms = ""
		SetInputOptionValue(LMNudityAditionalFormsOID, "")
		Return
	Endif
	If option == oppSummonerNPCOID
		oppSummonerNPC = 0
		SetMenuOptionValue(oppSummonerNPCOID, oppSummonerNPCList[0])
		Return
	Endif
EndEvent

Event OnOptionSelect(int option)
	If option == onlyLockedDoorsOID
		onlyLockedDoors = !onlyLockedDoors
		SetToggleOptionValue(onlyLockedDoorsOID, onlyLockedDoors)
		Return
	Endif
	If option == eventScalingOID
		eventScaling = !eventScaling
		SetToggleOptionValue(eventScalingOID, eventScaling)
		Return
	Endif
	If option == bossOnlyHeavyOID
		bossOnlyHeavy = !bossOnlyHeavy
		SetToggleOptionValue(bossOnlyHeavyOID, bossOnlyHeavy)
		Return
	Endif
	If option == stripPlayerOnEventOID
		stripPlayerOnEvent = !stripPlayerOnEvent
		SetToggleOptionValue(stripPlayerOnEventOID, stripPlayerOnEvent)
		Return
	Endif
	If option == stripOnlyKeywordsOID
		stripOnlyKeywords = !stripOnlyKeywords
		SetToggleOptionValue(stripOnlyKeywordsOID, stripOnlyKeywords)
		Return
	Endif
	If option == beltPlugsOID
		beltPlugs = !beltPlugs
		SetToggleOptionValue(beltPlugsOID, beltPlugs)
		Return
	Endif
	If option == useGenderedChastityOID
		useGenderedChastity = !useGenderedChastity
		SetToggleOptionValue(useGenderedChastityOID, useGenderedChastity)
		Return
	Endif
	If option == plugsDontCountOID
		plugsDontCount = !plugsDontCount
		SetToggleOptionValue(plugsDontCountOID, plugsDontCount)
		Return
	Endif
	If option == useGenderedPlugsOID
		useGenderedPlugs = !useGenderedPlugs
		SetToggleOptionValue(useGenderedPlugsOID, useGenderedPlugs)
		Return
	Endif
	If option == allowLegShacklesOID
		allowLegShackles = !allowLegShackles
		SetToggleOptionValue(allowLegShacklesOID, allowLegShackles)
		Return
	Endif
	If option == keyForgivenessOID
		keyForgiveness = !keyForgiveness
		SetToggleOptionValue(keyForgivenessOID, keyForgiveness)
		Return
	Endif
	If option == magicKeyOppressiveOID
		magicKeyOppressive = !magicKeyOppressive
		SetToggleOptionValue(magicKeyOppressiveOID, magicKeyOppressive)
		Return
	Endif
	If option == preferRelevantKeysOID
		preferRelevantKeys = !preferRelevantKeys
		SetToggleOptionValue(preferRelevantKeysOID, preferRelevantKeys)
		Return
	Endif
	If option == vanishingKeysOID
		vanishingKeys = !vanishingKeys
		SetToggleOptionValue(vanishingKeysOID, vanishingKeys)
		Return
	Endif
	If option == eventContDevicesOID
		eventContDevices = !eventContDevices
		SetToggleOptionValue(eventContDevicesOID, eventContDevices)
		Return
	Endif
	If option == eventContAllDevicesOID
		eventContAllDevices = !eventContAllDevices
		SetToggleOptionValue(eventContAllDevicesOID, eventContAllDevices)
		Return
	Endif
	If option == followerBondageEventOID
		followerBondageEvent = !followerBondageEvent
		SetToggleOptionValue(followerBondageEventOID, followerBondageEvent)
		Return
	Endif
	If option == followerTattooEventOID
		followerTattooEvent = !followerTattooEvent
		SetToggleOptionValue(followerTattooEventOID, followerTattooEvent)
		Return
	Endif
	If option == onlyFemaleFollowersOID
		onlyFemaleFollowers = !onlyFemaleFollowers
		SetToggleOptionValue(onlyFemaleFollowersOID, onlyFemaleFollowers)
		Return
	Endif
	If option == followerHeavyRestraintsOID
		followerHeavyRestraints = !followerHeavyRestraints
		SetToggleOptionValue(followerHeavyRestraintsOID, followerHeavyRestraints)
		Return
	Endif
	If option == followerGagsOID
		followerGags = !followerGags
		SetToggleOptionValue(followerGagsOID, followerGags)
		Return
	Endif
	If option == onlyUseUnforgivingDevicesOID
		onlyUseUnforgivingDevices = !onlyUseUnforgivingDevices
		SetToggleOptionValue(onlyUseUnforgivingDevicesOID, onlyUseUnforgivingDevices)
		Return
	Endif
	If option == udUseAbadonOID
		udUseAbadon = !udUseAbadon
		SetToggleOptionValue(udUseAbadonOID, udUseAbadon)
		Return
	Endif
	If option == udUseAbadonSetsOID
		udUseAbadonSets = !udUseAbadonSets
		SetToggleOptionValue(udUseAbadonSetsOID, udUseAbadonSets)
		Return
	Endif
	If option == udUseMiscOID
		udUseMisc = !udUseMisc
		SetToggleOptionValue(udUseMiscOID, udUseMisc)
		Return
	Endif
	If option == LMAllureSkipRequirementsOID
		LMAllureSkipRequirements = !LMAllureSkipRequirements
		SetToggleOptionValue(LMAllureSkipRequirementsOID, LMAllureSkipRequirements)
		Return
	Endif
	If option == LMBrandingPunishOID
		LMBrandingPunish = !LMBrandingPunish
		SetToggleOptionValue(LMBrandingPunishOID, LMBrandingPunish)
		Return
	Endif
	If option == LMNudityChestOnlyOID
		LMNudityChestOnly = !LMNudityChestOnly
		SetToggleOptionValue(LMNudityChestOnlyOID, LMNudityChestOnly)
		ForcePageReset()
		Return
	Endif
	If option == LMNuditySkipGaggedOID
		LMNuditySkipGagged = !LMNuditySkipGagged
		SetToggleOptionValue(LMNuditySkipGaggedOID, LMNuditySkipGagged)
		Return
	Endif
	If option == oppOneAtATimeOID
		oppOneAtATime = !oppOneAtATime
		SetToggleOptionValue(oppOneAtATimeOID, oppOneAtATime)
		Return
	Endif
	If option == oppSCollarDrainsMagickaOID
		oppSCollarDrainsMagicka = !oppSCollarDrainsMagicka
		SetToggleOptionValue(oppSCollarDrainsMagickaOID, oppSCollarDrainsMagicka)
		Return
	Endif
	If option == oppSCollarAutoRemoveOID
		oppSCollarAutoRemove = !oppSCollarAutoRemove
		SetToggleOptionValue(oppSCollarAutoRemoveOID, oppSCollarAutoRemove)
		Return
	Endif
	If option == oppDwarvenHeavyRestraintOID
		oppDwarvenHeavyRestraint = !oppDwarvenHeavyRestraint
		SetToggleOptionValue(oppDwarvenHeavyRestraintOID, oppDwarvenHeavyRestraint)
		Return
	Endif
	If option == oppDwarvenRequireLocOID
		oppDwarvenRequireLoc = !oppDwarvenRequireLoc
		SetToggleOptionValue(oppDwarvenRequireLocOID, oppDwarvenRequireLoc)
		Return
	Endif
	If option == oppLivingLatexGemAllOID
		oppLivingLatexGemAll = !oppLivingLatexGemAll
		SetToggleOptionValue(oppLivingLatexGemAllOID, oppLivingLatexGemAll)
		Return
	Endif
	If option == oppLivingLatexHeavyOID
		oppLivingLatexHeavy = !oppLivingLatexHeavy
		SetToggleOptionValue(oppLivingLatexHeavyOID, oppLivingLatexHeavy)
		Return
	Endif
	If option == oppLivingLatexRequireRemOID
		oppLivingLatexRequireRem = !oppLivingLatexRequireRem
		SetToggleOptionValue(oppLivingLatexRequireRemOID, oppLivingLatexRequireRem)
		Return
	Endif
	If option == oppLivingLatexOpenOID
		oppLivingLatexOpen = !oppLivingLatexOpen
		SetToggleOptionValue(oppLivingLatexOpenOID, oppLivingLatexOpen)
		Return
	Endif
	If option == oppMadnessOnlyDevicesOID
		oppMadnessOnlyDevices = !oppMadnessOnlyDevices
		SetToggleOptionValue(oppMadnessOnlyDevicesOID, oppMadnessOnlyDevices)
		Return
	Endif
	If option == oppMadnessBeltFilterOID
		oppMadnessBeltFilter = !oppMadnessBeltFilter
		SetToggleOptionValue(oppMadnessBeltFilterOID, oppMadnessBeltFilter)
		Return
	Endif
	If option == oppMadnessChaosOID
		oppMadnessChaos = !oppMadnessChaos
		SetToggleOptionValue(oppMadnessChaosOID, oppMadnessChaos)
		Return
	Endif
	If option == enableQuestInteractionsOID
		enableQuestInteractions = !enableQuestInteractions
		SetToggleOptionValue(enableQuestInteractionsOID, enableQuestInteractions)
		ForcePageReset()
		Return
	Endif
	If option == enableQIMalkoranOID
		enableQIMalkoran = !enableQIMalkoran
		SetToggleOptionValue(enableQIMalkoranOID, enableQIMalkoran)
		Return
	Endif
	If option == enableQISanguineOID
		enableQISanguine = !enableQISanguine
		SetToggleOptionValue(enableQISanguineOID, enableQISanguine)
		Return
	Endif
	If option == enableQIBlackStarOID
		enableQIBlackStar = !enableQIBlackStar
		SetToggleOptionValue(enableQIBlackStarOID, enableQIBlackStar)
		Return
	Endif
	If option == enableQIMindOfMadnessOID
		enableQIMindOfMadness = !enableQIMindOfMadness
		SetToggleOptionValue(enableQIMindOfMadnessOID, enableQIMindOfMadness)
		Return
	Endif
	If option == enableQILaidToRestOID
		enableQILaidToRest = !enableQILaidToRest
		SetToggleOptionValue(enableQILaidToRestOID, enableQILaidToRest)
		Return
	Endif
	If option == enableQICriedWolfOID
		enableQICriedWolf = !enableQICriedWolf
		SetToggleOptionValue(enableQICriedWolfOID, enableQICriedWolf)
		Return
	Endif
	If option == enableQIDeliveryOID
		enableQIDelivery = !enableQIDelivery
		SetToggleOptionValue(enableQIDeliveryOID, enableQIDelivery)
		Return
	Endif
	If option == enableQIBarenziahOID
		enableQIBarenziah = !enableQIBarenziah
		SetToggleOptionValue(enableQIBarenziahOID, enableQIBarenziah)
		Return
	Endif
	If option == enableQIProvingHonorOID
		enableQIProvingHonor = !enableQIProvingHonor
		SetToggleOptionValue(enableQIProvingHonorOID, enableQIProvingHonor)
		Return
	Endif
	If option == enableQISaarthalOID
		enableQISaarthal = !enableQISaarthal
		SetToggleOptionValue(enableQISaarthalOID, enableQISaarthal)
		Return
	Endif
	If option == enableQIBrelynaOID
		enableQIBrelyna = !enableQIBrelyna
		SetToggleOptionValue(enableQIBrelynaOID, enableQIBrelyna)
		Return
	Endif
	If option == enableQIDwemerMuseumOID
		enableQIDwemerMuseum = !enableQIDwemerMuseum
		SetToggleOptionValue(enableQIDwemerMuseumOID, enableQIDwemerMuseum)
		Return
	Endif
	If option == enableQITrinityRestoredOID
		enableQITrinityRestored = !enableQITrinityRestored
		SetToggleOptionValue(enableQITrinityRestoredOID, enableQITrinityRestored)
		Return
	Endif
	If option == enableQIThalmorEmbassyOID
		enableQIThalmorEmbassy = !enableQIThalmorEmbassy
		SetToggleOptionValue(enableQIThalmorEmbassyOID, enableQIThalmorEmbassy)
		Return
	Endif
	If option == enableQIRingmakerOID
		enableQIRingmaker = !enableQIRingmaker
		SetToggleOptionValue(enableQIRingmakerOID, enableQIRingmaker)
		Return
	Endif
	If option == oppDeviceAntiCheatOID
		oppDeviceAntiCheat = !oppDeviceAntiCheat
		SetToggleOptionValue(oppDeviceAntiCheatOID, oppDeviceAntiCheat)
		Return
	Endif
	If option == generalDeviceAntiCheatOID
		generalDeviceAntiCheat = !generalDeviceAntiCheat
		SetToggleOptionValue(generalDeviceAntiCheatOID, generalDeviceAntiCheat)
		Return
	Endif
	If option == noMessageBoxesOID
		noMessageBoxes = !noMessageBoxes
		SetToggleOptionValue(noMessageBoxesOID, noMessageBoxes)
		Return
	Endif
	If option == eventVisualEffectsOID
		eventVisualEffects = !eventVisualEffects
		SetToggleOptionValue(eventVisualEffectsOID, eventVisualEffects)
		Return
	Endif
	If option == surpriseModeOID
		surpriseMode = !surpriseMode
		SetToggleOptionValue(surpriseModeOID, surpriseMode)
		Return
	Endif
	If option == dragonHoardOID
		dragonHoard = !dragonHoard
		SetToggleOptionValue(dragonHoardOID, dragonHoard)
		Return
	Endif
	If option == bossExtraGoldOID
		bossExtraGold = !bossExtraGold
		SetToggleOptionValue(bossExtraGoldOID, bossExtraGold)
		Return
	Endif
	If option == useThemesOID
		useThemes = !useThemes
		SetToggleOptionValue(useThemesOID, useThemes)
		Return
	Endif
	If option == disableForce3rdPersonOID
		disableForce3rdPerson = !disableForce3rdPerson
		SetToggleOptionValue(disableForce3rdPersonOID, disableForce3rdPerson)
		Return
	Endif
	If option == enableSlowStripOID
		enableSlowStrip = !enableSlowStrip
		SetToggleOptionValue(enableSlowStripOID, enableSlowStrip)
		Return
	Endif
	If option == restrictFastTravelOID
		restrictFastTravel = !restrictFastTravel
		SetToggleOptionValue(restrictFastTravelOID, restrictFastTravel)
		ForcePageReset()
		Return
	Endif
	If option == restrictFastTravelPartOID
		restrictFastTravelPart = !restrictFastTravelPart
		SetToggleOptionValue(restrictFastTravelPartOID, restrictFastTravelPart)
		Return
	Endif
	If option == restrictFastTravelFullOID
		restrictFastTravelFull = !restrictFastTravelFull
		SetToggleOptionValue(restrictFastTravelFullOID, restrictFastTravelFull)
		Return
	Endif
	If option == useDeviceNamesInThemesOID
		useDeviceNamesInThemes = !useDeviceNamesInThemes
		SetToggleOptionValue(useDeviceNamesInThemesOID, useDeviceNamesInThemes)
		Return
	Endif
	If option == saveDependentSettingsOID
		saveDependentSettings = !saveDependentSettings
		SetToggleOptionValue(saveDependentSettingsOID, saveDependentSettings)
		Return
	Endif
	If option == ANDSexToplessOID
		ANDSexTopless = !ANDSexTopless
		SetToggleOptionValue(ANDSexToplessOID, ANDSexTopless)
		Return
	Endif
	If option == ANDSexBottomlessOID
		ANDSexBottomless = !ANDSexBottomless
		SetToggleOptionValue(ANDSexBottomlessOID, ANDSexBottomless)
		Return
	Endif
	If option == ANDSexShowingChestOID
		ANDSexShowingChest = !ANDSexShowingChest
		SetToggleOptionValue(ANDSexShowingChestOID, ANDSexShowingChest)
		Return
	Endif
	If option == ANDSexShowingGenitalsOID
		ANDSexShowingGenitals = !ANDSexShowingGenitals
		SetToggleOptionValue(ANDSexShowingGenitalsOID, ANDSexShowingGenitals)
		Return
	Endif
	If option == ANDSexShowingAssOID
		ANDSexShowingAss = !ANDSexShowingAss
		SetToggleOptionValue(ANDSexShowingAssOID, ANDSexShowingAss)
		Return
	Endif
	If option == ANDSexShowingBraOID
		ANDSexShowingBra = !ANDSexShowingBra
		SetToggleOptionValue(ANDSexShowingBraOID, ANDSexShowingBra)
		Return
	Endif
	If option == ANDSexShowingUnderwearOID
		ANDSexShowingUnderwear = !ANDSexShowingUnderwear
		SetToggleOptionValue(ANDSexShowingUnderwearOID, ANDSexShowingUnderwear)
		Return
	Endif
	If option == ANDConsToplessOID
		ANDConsTopless = !ANDConsTopless
		SetToggleOptionValue(ANDConsToplessOID, ANDConsTopless)
		Return
	Endif
	If option == ANDConsBottomlessOID
		ANDConsBottomless = !ANDConsBottomless
		SetToggleOptionValue(ANDConsBottomlessOID, ANDConsBottomless)
		Return
	Endif
	If option == ANDConsShowingChestOID
		ANDConsShowingChest = !ANDConsShowingChest
		SetToggleOptionValue(ANDConsShowingChestOID, ANDConsShowingChest)
		Return
	Endif
	If option == ANDConsShowingGenitalsOID
		ANDConsShowingGenitals = !ANDConsShowingGenitals
		SetToggleOptionValue(ANDConsShowingGenitalsOID, ANDConsShowingGenitals)
		Return
	Endif
	If option == ANDConsShowingAssOID
		ANDConsShowingAss = !ANDConsShowingAss
		SetToggleOptionValue(ANDConsShowingAssOID, ANDConsShowingAss)
		Return
	Endif
	If option == ANDConsShowingBraOID
		ANDConsShowingBra = !ANDConsShowingBra
		SetToggleOptionValue(ANDConsShowingBraOID, ANDConsShowingBra)
		Return
	Endif
	If option == ANDConsShowingUnderwearOID
		ANDConsShowingUnderwear = !ANDConsShowingUnderwear
		SetToggleOptionValue(ANDConsShowingUnderwearOID, ANDConsShowingUnderwear)
		Return
	Endif
	If option == consEnableOID
		consEnable = !consEnable
		SetToggleOptionValue(consEnableOID, consEnable)
		ForcePageReset()
		Return
	Endif
	If option == consGuardNormalOID
		consGuardNormal = !consGuardNormal
		SetToggleOptionValue(consGuardNormalOID, consGuardNormal)
		Return
	Endif
	If option == consFineGuardFactionOID
		consFineGuardFaction = !consFineGuardFaction
		SetToggleOptionValue(consFineGuardFactionOID, consFineGuardFaction)
		Return
	Endif
	If option == consFallthroughOID
		consFallthrough = !consFallthrough
		SetToggleOptionValue(consFallthroughOID, consFallthrough)
		Return
	Endif
	If option == consAllowFollowersOID
		consAllowFollowers = !consAllowFollowers
		SetToggleOptionValue(consAllowFollowersOID, consAllowFollowers)
		Return
	Endif
	If option == consFollowersBlockOID
		consFollowersBlock = !consFollowersBlock
		SetToggleOptionValue(consFollowersBlockOID, consFollowersBlock)
		Return
	Endif
	If option == consTolerableChastityOID
		consTolerableChastity = !consTolerableChastity
		SetToggleOptionValue(consTolerableChastityOID, consTolerableChastity)
		Return
	Endif
	If option == consUseRelationshipsOID
		consUseRelationships = !consUseRelationships
		SetToggleOptionValue(consUseRelationshipsOID, consUseRelationships)
		Return
	Endif
	If option == consRelationBondageOID
		consRelationBondage = !consRelationBondage
		SetToggleOptionValue(consRelationBondageOID, consRelationBondage)
		Return
	Endif
	If option == consRandomHeavyBondageOID
		consRandomHeavyBondage = !consRandomHeavyBondage
		SetToggleOptionValue(consRandomHeavyBondageOID, consRandomHeavyBondage)
		Return
	Endif
	If option == consBondageIgnoreMaxOID
		consBondageIgnoreMax = !consBondageIgnoreMax
		SetToggleOptionValue(consBondageIgnoreMaxOID, consBondageIgnoreMax)
		Return
	Endif
	If option == consTattooCurseNumbersOID
		consTattooCurseNumbers = !consTattooCurseNumbers
		SetToggleOptionValue(consTattooCurseNumbersOID, consTattooCurseNumbers)
		Return
	Endif
	If option == sexEnabledOID
		sexEnabled = !sexEnabled
		SetToggleOptionValue(sexEnabledOID, sexEnabled)
		ForcePageReset()
		Return
	Endif
	If option == sexAggressiveAnimsOID
		sexAggressiveAnims = !sexAggressiveAnims
		SetToggleOptionValue(sexAggressiveAnimsOID, sexAggressiveAnims)
		Return
	Endif
	If option == sexFilterDevicesOID
		sexFilterDevices = !sexFilterDevices
		SetToggleOptionValue(sexFilterDevicesOID, sexFilterDevices)
		Return
	Endif
	If option == sexFilterFutaOID
		sexFilterFuta = !sexFilterFuta
		SetToggleOptionValue(sexFilterFutaOID, sexFilterFuta)
		Return
	Endif
	If option == sexRandomEnabledOID
		sexRandomEnabled = !sexRandomEnabled
		SetToggleOptionValue(sexRandomEnabledOID, sexRandomEnabled)
		ForcePageReset()
		Return
	Endif
	If option == sexRandAllowFollowersOID
		sexRandAllowFollowers = !sexRandAllowFollowers
		SetToggleOptionValue(sexRandAllowFollowersOID, sexRandAllowFollowers)
		Return
	Endif
	If option == sexRandAllowNPCsOID
		sexRandAllowNPCs = !sexRandAllowNPCs
		SetToggleOptionValue(sexRandAllowNPCsOID, sexRandAllowNPCs)
		Return
	Endif
	If option == sexRandAllowSummonsOID
		sexRandAllowSummons = !sexRandAllowSummons
		SetToggleOptionValue(sexRandAllowSummonsOID, sexRandAllowSummons)
		Return
	Endif
	If option == sexRandAllowCreaturesOID
		sexRandAllowCreatures = !sexRandAllowCreatures
		SetToggleOptionValue(sexRandAllowCreaturesOID, sexRandAllowCreatures)
		Return
	Endif
	If option == sexAllowMaleOID
		sexAllowMale = !sexAllowMale
		SetToggleOptionValue(sexAllowMaleOID, sexAllowMale)
		Return
	Endif
	If option == sexAllowFemaleOID
		sexAllowFemale = !sexAllowFemale
		SetToggleOptionValue(sexAllowFemaleOID, sexAllowFemale)
		Return
	Endif
	If option == sexAllowFutaOID
		sexAllowFuta = !sexAllowFuta
		SetToggleOptionValue(sexAllowFutaOID, sexAllowFuta)
		Return
	Endif
	If option == sexAllowCreatureOID
		sexAllowCreature = !sexAllowCreature
		SetToggleOptionValue(sexAllowCreatureOID, sexAllowCreature)
		Return
	Endif
	If option == sexAllowFarmAnimalsOID
		sexAllowFarmAnimals = !sexAllowFarmAnimals
		SetToggleOptionValue(sexAllowFarmAnimalsOID, sexAllowFarmAnimals)
		Return
	Endif
	If option == sexRequireAllPlayerOID
		sexRequireAllPlayer = !sexRequireAllPlayer
		SetToggleOptionValue(sexRequireAllPlayerOID, sexRequireAllPlayer)
		Return
	Endif
	If option == sexRequirePlayerCollarOID
		sexRequirePlayerCollar = !sexRequirePlayerCollar
		SetToggleOptionValue(sexRequirePlayerCollarOID, sexRequirePlayerCollar)
		Return
	Endif
	If option == sexRequirePlayerHeavyOID
		sexRequirePlayerHeavy = !sexRequirePlayerHeavy
		SetToggleOptionValue(sexRequirePlayerHeavyOID, sexRequirePlayerHeavy)
		Return
	Endif
	If option == sexRequirePlayerNudeOID
		sexRequirePlayerNude = !sexRequirePlayerNude
		SetToggleOptionValue(sexRequirePlayerNudeOID, sexRequirePlayerNude)
		Return
	Endif
	If option == sexRequireAllNPCOID
		sexRequireAllNPC = !sexRequireAllNPC
		SetToggleOptionValue(sexRequireAllNPCOID, sexRequireAllNPC)
		Return
	Endif
	If option == sexRequireNPCCollarOID
		sexRequireNPCCollar = !sexRequireNPCCollar
		SetToggleOptionValue(sexRequireNPCCollarOID, sexRequireNPCCollar)
		Return
	Endif
	If option == sexRequireNPCNudeOID
		sexRequireNPCNude = !sexRequireNPCNude
		SetToggleOptionValue(sexRequireNPCNudeOID, sexRequireNPCNude)
		Return
	Endif
	If option == sexRequireBothOID
		sexRequireBoth = !sexRequireBoth
		SetToggleOptionValue(sexRequireBothOID, sexRequireBoth)
		Return
	Endif
	If option == sexFollowerBypassPlayerOID
		sexFollowerBypassPlayer = !sexFollowerBypassPlayer
		SetToggleOptionValue(sexFollowerBypassPlayerOID, sexFollowerBypassPlayer)
		Return
	Endif
	If option == sexFollowerBypassNPCOID
		sexFollowerBypassNPC = !sexFollowerBypassNPC
		SetToggleOptionValue(sexFollowerBypassNPCOID, sexFollowerBypassNPC)
		Return
	Endif
	If option == sexSpouseBypassPlayerOID
		sexSpouseBypassPlayer = !sexSpouseBypassPlayer
		SetToggleOptionValue(sexSpouseBypassPlayerOID, sexSpouseBypassPlayer)
		Return
	Endif
	If option == sexSpouseBypassNPCOID
		sexSpouseBypassNPC = !sexSpouseBypassNPC
		SetToggleOptionValue(sexSpouseBypassNPCOID, sexSpouseBypassNPC)
		Return
	Endif
	If option == sexSummonBypassPlayerOID
		sexSummonBypassPlayer = !sexSummonBypassPlayer
		SetToggleOptionValue(sexSummonBypassPlayerOID, sexSummonBypassPlayer)
		Return
	Endif
	If option == sexSummonBypassNPCOID
		sexSummonBypassNPC = !sexSummonBypassNPC
		SetToggleOptionValue(sexSummonBypassNPCOID, sexSummonBypassNPC)
		Return
	Endif
	If option == ModSuspendedOID
		ModSuspended = !ModSuspended
		SetToggleOptionValue(ModSuspendedOID, ModSuspended)
		Return
	Endif
	If option == setAllDefaultSettingsOID
		setAllDefaultSettings = !setAllDefaultSettings
		SetToggleOptionValue(setAllDefaultSettingsOID, setAllDefaultSettings)
		Return
	Endif
EndEvent

Event OnOptionSliderOpen(int option)
	If option == minGoldRequiredOID
		SetSliderDialogStartValue(minGoldRequired)
		SetSliderDialogDefaultValue(20)
		SetSliderDialogRange(0, 5000)
		SetSliderDialogInterval(10)
		Return
	Endif
	If option == eventScalingModOID
		SetSliderDialogStartValue(eventScalingMod)
		SetSliderDialogDefaultValue(15)
		SetSliderDialogRange(1, 50)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == minRestraintsOID
		SetSliderDialogStartValue(minRestraints)
		SetSliderDialogDefaultValue(1)
		SetSliderDialogRange(1, 20)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == maxRestraintsOID
		SetSliderDialogStartValue(maxRestraints)
		SetSliderDialogDefaultValue(3)
		SetSliderDialogRange(1, 20)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == bossAditionalRestraintsOID
		SetSliderDialogStartValue(bossAditionalRestraints)
		SetSliderDialogDefaultValue(2)
		SetSliderDialogRange(0, 10)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == restraintCapOID
		SetSliderDialogStartValue(restraintCap)
		SetSliderDialogDefaultValue(7)
		SetSliderDialogRange(1, 20)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == minArousalOID
		SetSliderDialogStartValue(minArousal)
		SetSliderDialogDefaultValue(10)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == beltWeightOID
		SetSliderDialogStartValue(beltWeight)
		SetSliderDialogDefaultValue(40)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == chastityPiercingWeightOID
		SetSliderDialogStartValue(chastityPiercingWeight)
		SetSliderDialogDefaultValue(20)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == braWeightOID
		SetSliderDialogStartValue(braWeight)
		SetSliderDialogDefaultValue(30)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == plugsWeightOID
		SetSliderDialogStartValue(plugsWeight)
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == lockingPlugsWeightOID
		SetSliderDialogStartValue(lockingPlugsWeight)
		SetSliderDialogDefaultValue(30)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == inflatablePlugsWeightOID
		SetSliderDialogStartValue(inflatablePlugsWeight)
		SetSliderDialogDefaultValue(15)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == nipplePiercingsWeightOID
		SetSliderDialogStartValue(nipplePiercingsWeight)
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == vaginalPiercingsWeightOID
		SetSliderDialogStartValue(vaginalPiercingsWeight)
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == corsetWeightOID
		SetSliderDialogStartValue(corsetWeight)
		SetSliderDialogDefaultValue(40)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == beltedCorsetsWeightOID
		SetSliderDialogStartValue(beltedCorsetsWeight)
		SetSliderDialogDefaultValue(30)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == slaveHarnessWeightOID
		SetSliderDialogStartValue(slaveHarnessWeight)
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == chastityHarnessWeightOID
		SetSliderDialogStartValue(chastityHarnessWeight)
		SetSliderDialogDefaultValue(40)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == armbinderWeightOID
		SetSliderDialogStartValue(armbinderWeight)
		SetSliderDialogDefaultValue(30)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == elbowbinderWeightOID
		SetSliderDialogStartValue(elbowbinderWeight)
		SetSliderDialogDefaultValue(20)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == yokeWeightOID
		SetSliderDialogStartValue(yokeWeight)
		SetSliderDialogDefaultValue(10)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == shacklesWeightOID
		SetSliderDialogStartValue(shacklesWeight)
		SetSliderDialogDefaultValue(20)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == straitjacketWeightOID
		SetSliderDialogStartValue(straitjacketWeight)
		SetSliderDialogDefaultValue(30)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == straitjacketLegbinderWeightOID
		SetSliderDialogStartValue(straitjacketLegbinderWeight)
		SetSliderDialogDefaultValue(15)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == petSuitWeightOID
		SetSliderDialogStartValue(petSuitWeight)
		SetSliderDialogDefaultValue(10)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == collarWeightOID
		SetSliderDialogStartValue(collarWeight)
		SetSliderDialogDefaultValue(60)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == armCuffsWeightOID
		SetSliderDialogStartValue(armCuffsWeight)
		SetSliderDialogDefaultValue(60)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == legCuffsWeightOID
		SetSliderDialogStartValue(legCuffsWeight)
		SetSliderDialogDefaultValue(60)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == gagWeightOID
		SetSliderDialogStartValue(gagWeight)
		SetSliderDialogDefaultValue(35)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == ringGagWeightOID
		SetSliderDialogStartValue(ringGagWeight)
		SetSliderDialogDefaultValue(45)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == largeGagWeightOID
		SetSliderDialogStartValue(largeGagWeight)
		SetSliderDialogDefaultValue(30)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == largeRingGagWeightOID
		SetSliderDialogStartValue(largeRingGagWeight)
		SetSliderDialogDefaultValue(30)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == blindfoldWeightOID
		SetSliderDialogStartValue(blindfoldWeight)
		SetSliderDialogDefaultValue(20)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == hoodBothWeightOID
		SetSliderDialogStartValue(hoodBothWeight)
		SetSliderDialogDefaultValue(20)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == hoodGagWeightOID
		SetSliderDialogStartValue(hoodGagWeight)
		SetSliderDialogDefaultValue(20)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == hoodBlindWeightOID
		SetSliderDialogStartValue(hoodBlindWeight)
		SetSliderDialogDefaultValue(20)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == hoodNoneWeightOID
		SetSliderDialogStartValue(hoodNoneWeight)
		SetSliderDialogDefaultValue(20)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == catsuitWeightOID
		SetSliderDialogStartValue(catsuitWeight)
		SetSliderDialogDefaultValue(30)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == hobbleSkirtWeightOID
		SetSliderDialogStartValue(hobbleSkirtWeight)
		SetSliderDialogDefaultValue(20)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == hobbleSkirtDifficultyOID
		SetSliderDialogStartValue(hobbleSkirtDifficulty)
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == bootsWeightOID
		SetSliderDialogStartValue(bootsWeight)
		SetSliderDialogDefaultValue(30)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == glovesWeightOID
		SetSliderDialogStartValue(glovesWeight)
		SetSliderDialogDefaultValue(30)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == mittensWeightOID
		SetSliderDialogStartValue(mittensWeight)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == minKeysLootedOID
		SetSliderDialogStartValue(minKeysLooted)
		SetSliderDialogDefaultValue(1)
		SetSliderDialogRange(1, 10)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == maxKeysLootedOID
		SetSliderDialogStartValue(maxKeysLooted)
		SetSliderDialogDefaultValue(1)
		SetSliderDialogRange(1, 10)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == maxHeldKeysOID
		SetSliderDialogStartValue(maxHeldKeys)
		SetSliderDialogDefaultValue(3)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == restraintsKeyWeightOID
		SetSliderDialogStartValue(restraintsKeyWeight)
		SetSliderDialogDefaultValue(80)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == chastityKeyWeightOID
		SetSliderDialogStartValue(chastityKeyWeight)
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == piercingToolWeightOID
		SetSliderDialogStartValue(piercingToolWeight)
		SetSliderDialogDefaultValue(20)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == eventStandardWeightOID
		SetSliderDialogStartValue(eventStandardWeight)
		SetSliderDialogDefaultValue(100)
		SetSliderDialogRange(0, 500)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == eventStandardBossReductionOID
		SetSliderDialogStartValue(eventStandardBossReduction)
		SetSliderDialogDefaultValue(20)
		SetSliderDialogRange(0, 500)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == eventOppressiveWeightOID
		SetSliderDialogStartValue(eventOppressiveWeight)
		SetSliderDialogDefaultValue(15)
		SetSliderDialogRange(0, 500)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == eventContraptionWeightOID
		SetSliderDialogStartValue(eventContraptionWeight)
		SetSliderDialogDefaultValue(25)
		SetSliderDialogRange(0, 500)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == eventContDeviceOverrideOID
		SetSliderDialogStartValue(eventContDeviceOverride)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(0, 10)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == eventWickedWeightOID
		SetSliderDialogStartValue(eventWickedWeight)
		SetSliderDialogDefaultValue(15)
		SetSliderDialogRange(0, 500)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == eventTattooWeightOID
		SetSliderDialogStartValue(eventTattooWeight)
		SetSliderDialogDefaultValue(15)
		SetSliderDialogRange(0, 500)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == eventTattooMinOID
		SetSliderDialogStartValue(eventTattooMin)
		SetSliderDialogDefaultValue(1)
		SetSliderDialogRange(1, 10)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == eventTattooMaxOID
		SetSliderDialogStartValue(eventTattooMax)
		SetSliderDialogDefaultValue(3)
		SetSliderDialogRange(1, 10)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == eventTattooCapOID
		SetSliderDialogStartValue(eventTattooCap)
		SetSliderDialogDefaultValue(8)
		SetSliderDialogRange(0, 20)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == eventLewdMarkWeightOID
		SetSliderDialogStartValue(eventLewdMarkWeight)
		SetSliderDialogDefaultValue(10)
		SetSliderDialogRange(0, 500)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == eventSimpleSlaveryWeightOID
		SetSliderDialogStartValue(eventSimpleSlaveryWeight)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(0, 500)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == eventSSMinRestraintsOID
		SetSliderDialogStartValue(eventSSMinRestraints)
		SetSliderDialogDefaultValue(6)
		SetSliderDialogRange(0, 10)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == eventAbadonWeightOID
		SetSliderDialogStartValue(eventAbadonWeight)
		SetSliderDialogDefaultValue(5)
		SetSliderDialogRange(0, 500)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == eventAbadonWarriorWeightOID
		SetSliderDialogStartValue(eventAbadonWarriorWeight)
		SetSliderDialogDefaultValue(10)
		SetSliderDialogRange(0, 500)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == eventAbadonWarriorCountOID
		SetSliderDialogStartValue(eventAbadonWarriorCount)
		SetSliderDialogDefaultValue(5)
		SetSliderDialogRange(1, 10)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == eventAbadonScoutWeightOID
		SetSliderDialogStartValue(eventAbadonScoutWeight)
		SetSliderDialogDefaultValue(10)
		SetSliderDialogRange(0, 500)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == eventAbadonScoutCountOID
		SetSliderDialogStartValue(eventAbadonScoutCount)
		SetSliderDialogDefaultValue(5)
		SetSliderDialogRange(1, 10)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == eventAbadonWitchWeightOID
		SetSliderDialogStartValue(eventAbadonWitchWeight)
		SetSliderDialogDefaultValue(10)
		SetSliderDialogRange(0, 500)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == eventAbadonWitchCountOID
		SetSliderDialogStartValue(eventAbadonWitchCount)
		SetSliderDialogDefaultValue(5)
		SetSliderDialogRange(1, 10)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == followerDeviceModifierOID
		SetSliderDialogStartValue(followerDeviceModifier)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(-10, 10)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == LMAllureWeightOID
		SetSliderDialogStartValue(LMAllureWeight)
		SetSliderDialogDefaultValue(10)
		SetSliderDialogRange(0, 500)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == LMAllureModOID
		SetSliderDialogStartValue(LMAllureMod)
		SetSliderDialogDefaultValue(5)
		SetSliderDialogRange(0, 200)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == LMAllureSexOID
		SetSliderDialogStartValue(LMAllureSex)
		SetSliderDialogDefaultValue(25)
		SetSliderDialogRange(3, 500)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == LMHeatWeightOID
		SetSliderDialogStartValue(LMHeatWeight)
		SetSliderDialogDefaultValue(10)
		SetSliderDialogRange(0, 500)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == LMHeatModOID
		SetSliderDialogStartValue(LMHeatMod)
		SetSliderDialogDefaultValue(30)
		SetSliderDialogRange(0, 200)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == LMHeatContainerCountOID
		SetSliderDialogStartValue(LMHeatContainerCount)
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(10, 1000)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == LMBrandingWeightOID
		SetSliderDialogStartValue(LMBrandingWeight)
		SetSliderDialogDefaultValue(10)
		SetSliderDialogRange(0, 500)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == LMBrandingTotalOID
		SetSliderDialogStartValue(LMBrandingTotal)
		SetSliderDialogDefaultValue(12)
		SetSliderDialogRange(1, 20)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == LMHealslutWeightOID
		SetSliderDialogStartValue(LMHealslutWeight)
		SetSliderDialogDefaultValue(5)
		SetSliderDialogRange(0, 500)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == LMHealslutHealingOID
		SetSliderDialogStartValue(LMHealslutHealing)
		SetSliderDialogDefaultValue(4000)
		SetSliderDialogRange(100, 100000)
		SetSliderDialogInterval(100)
		Return
	Endif
	If option == LMHealslutArousalOID
		SetSliderDialogStartValue(LMHealslutArousal)
		SetSliderDialogDefaultValue(90)
		SetSliderDialogRange(0, 101)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == LMHealslutDurationOID
		SetSliderDialogStartValue(LMHealslutDuration)
		SetSliderDialogDefaultValue(300)
		SetSliderDialogRange(30, 600)
		SetSliderDialogInterval(10)
		Return
	Endif
	If option == LMBondageWeightOID
		SetSliderDialogStartValue(LMBondageWeight)
		SetSliderDialogDefaultValue(5)
		SetSliderDialogRange(0, 500)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == LMBondageDeviceCapAddOID
		SetSliderDialogStartValue(LMBondageDeviceCapAdd)
		SetSliderDialogDefaultValue(3)
		SetSliderDialogRange(0, 10)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == LMBondageDeviceCountOID
		SetSliderDialogStartValue(LMBondageDeviceCount)
		SetSliderDialogDefaultValue(25)
		SetSliderDialogRange(1, 2000)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == LMNudityWeightOID
		SetSliderDialogStartValue(LMNudityWeight)
		SetSliderDialogDefaultValue(15)
		SetSliderDialogRange(0, 500)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == LMNudityTalkTimesOID
		SetSliderDialogStartValue(LMNudityTalkTimes)
		SetSliderDialogDefaultValue(35)
		SetSliderDialogRange(3, 500)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == LMPainslutWeightOID
		SetSliderDialogStartValue(LMPainslutWeight)
		SetSliderDialogDefaultValue(10)
		SetSliderDialogRange(0, 500)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == LMPainslutModOID
		SetSliderDialogStartValue(LMPainslutMod)
		SetSliderDialogDefaultValue(5)
		SetSliderDialogRange(1, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == LMPainslutCountOID
		SetSliderDialogStartValue(LMPainslutCount)
		SetSliderDialogDefaultValue(25)
		SetSliderDialogRange(1, 1000)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == LMPainslutArousalOID
		SetSliderDialogStartValue(LMPainslutArousal)
		SetSliderDialogDefaultValue(90)
		SetSliderDialogRange(1, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == oppSummonerCollarWeightOID
		SetSliderDialogStartValue(oppSummonerCollarWeight)
		SetSliderDialogDefaultValue(20)
		SetSliderDialogRange(0, 500)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == oppSummonerSexCountOID
		SetSliderDialogStartValue(oppSummonerSexCount)
		SetSliderDialogDefaultValue(15)
		SetSliderDialogRange(1, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == oppDwarvenCuirassWeightOID
		SetSliderDialogStartValue(oppDwarvenCuirassWeight)
		SetSliderDialogDefaultValue(15)
		SetSliderDialogRange(0, 500)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == oppDwarvenValueNeededOID
		SetSliderDialogStartValue(oppDwarvenValueNeeded)
		SetSliderDialogDefaultValue(200)
		SetSliderDialogRange(30, 2000)
		SetSliderDialogInterval(10)
		Return
	Endif
	If option == oppDwarvenArousalOID
		SetSliderDialogStartValue(oppDwarvenArousal)
		SetSliderDialogDefaultValue(25)
		SetSliderDialogRange(10, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == oppNocturnalWeightOID
		SetSliderDialogStartValue(oppNocturnalWeight)
		SetSliderDialogDefaultValue(10)
		SetSliderDialogRange(0, 500)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == oppNocturnalSexCountOID
		SetSliderDialogStartValue(oppNocturnalSexCount)
		SetSliderDialogDefaultValue(3)
		SetSliderDialogRange(1, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == oppNocturnalPeopleOID
		SetSliderDialogStartValue(oppNocturnalPeople)
		SetSliderDialogDefaultValue(7)
		SetSliderDialogRange(2, 15)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == oppNocturnalArousalOID
		SetSliderDialogStartValue(oppNocturnalArousal)
		SetSliderDialogDefaultValue(35)
		SetSliderDialogRange(10, 95)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == oppLivingLatexWeightOID
		SetSliderDialogStartValue(oppLivingLatexWeight)
		SetSliderDialogDefaultValue(20)
		SetSliderDialogRange(0, 500)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == oppLivingLatexStartTimeOID
		SetSliderDialogStartValue(oppLivingLatexStartTime)
		SetSliderDialogDefaultValue(5)
		SetSliderDialogRange(1, 60)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == oppMadnessPlugWeightOID
		SetSliderDialogStartValue(oppMadnessPlugWeight)
		SetSliderDialogDefaultValue(25)
		SetSliderDialogRange(0, 500)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == oppMadnessPlugIterationsOID
		SetSliderDialogStartValue(oppMadnessPlugIterations)
		SetSliderDialogDefaultValue(5)
		SetSliderDialogRange(1, 20)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == oppMadnessplugOrgasmsOID
		SetSliderDialogStartValue(oppMadnessplugOrgasms)
		SetSliderDialogDefaultValue(6)
		SetSliderDialogRange(1, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == consScanRadiusOID
		SetSliderDialogStartValue(consScanRadius)
		SetSliderDialogDefaultValue(650)
		SetSliderDialogRange(100, 5000)
		SetSliderDialogInterval(50)
		Return
	Endif
	If option == consScanIntervalOID
		SetSliderDialogStartValue(consScanInterval)
		SetSliderDialogDefaultValue(5)
		SetSliderDialogRange(1, 120)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == consFineForSexOID
		SetSliderDialogStartValue(consFineForSex)
		SetSliderDialogDefaultValue(250)
		SetSliderDialogRange(50, 1000)
		SetSliderDialogInterval(10)
		Return
	Endif
	If option == consFineForNudityOID
		SetSliderDialogStartValue(consFineForNudity)
		SetSliderDialogDefaultValue(100)
		SetSliderDialogRange(50, 1000)
		SetSliderDialogInterval(10)
		Return
	Endif
	If option == consFineForRestraintsOID
		SetSliderDialogStartValue(consFineForRestraints)
		SetSliderDialogDefaultValue(100)
		SetSliderDialogRange(50, 1000)
		SetSliderDialogInterval(10)
		Return
	Endif
	If option == consFineForTattoosOID
		SetSliderDialogStartValue(consFineForTattoos)
		SetSliderDialogDefaultValue(100)
		SetSliderDialogRange(50, 1000)
		SetSliderDialogInterval(10)
		Return
	Endif
	If option == consRestrainedCountOID
		SetSliderDialogStartValue(consRestrainedCount)
		SetSliderDialogDefaultValue(5)
		SetSliderDialogRange(1, 10)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == consTattooCountOID
		SetSliderDialogStartValue(consTattooCount)
		SetSliderDialogDefaultValue(8)
		SetSliderDialogRange(1, 10)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == consSexWeightOID
		SetSliderDialogStartValue(consSexWeight)
		SetSliderDialogDefaultValue(15)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == consRandomBondageWeightOID
		SetSliderDialogStartValue(consRandomBondageWeight)
		SetSliderDialogDefaultValue(10)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == consTattooWeightOID
		SetSliderDialogStartValue(consTattooWeight)
		SetSliderDialogDefaultValue(10)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == consMercyWeightOID
		SetSliderDialogStartValue(consMercyWeight)
		SetSliderDialogDefaultValue(5)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == sexCooldownOID
		SetSliderDialogStartValue(sexCooldown)
		SetSliderDialogDefaultValue(60)
		SetSliderDialogRange(5, 1000)
		SetSliderDialogInterval(5)
		Return
	Endif
	If option == sexArousalModifierCutoffOID
		SetSliderDialogStartValue(sexArousalModifierCutoff)
		SetSliderDialogDefaultValue(80)
		SetSliderDialogRange(0, 99)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == sexScalingModifierOID
		SetSliderDialogStartValue(sexScalingModifier)
		SetSliderDialogDefaultValue(5)
		SetSliderDialogRange(0, 20)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == sexSearchRadiusOID
		SetSliderDialogStartValue(sexSearchRadius)
		SetSliderDialogDefaultValue(2000)
		SetSliderDialogRange(100, 10000)
		SetSliderDialogInterval(100)
		Return
	Endif
	If option == sexSearchIntervalOID
		SetSliderDialogStartValue(sexSearchInterval)
		SetSliderDialogDefaultValue(15)
		SetSliderDialogRange(5, 120)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == sexRequiredPlayerBindingsOID
		SetSliderDialogStartValue(sexRequiredPlayerBindings)
		SetSliderDialogDefaultValue(2)
		SetSliderDialogRange(-1, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == sexRequiredPlayerArousalOID
		SetSliderDialogStartValue(sexRequiredPlayerArousal)
		SetSliderDialogDefaultValue(85)
		SetSliderDialogRange(-1, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == sexRequiredPlayerTattoosOID
		SetSliderDialogStartValue(sexRequiredPlayerTattoos)
		SetSliderDialogDefaultValue(-1)
		SetSliderDialogRange(-1, 20)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == sexRequiredNPCBindingsOID
		SetSliderDialogStartValue(sexRequiredNPCBindings)
		SetSliderDialogDefaultValue(-1)
		SetSliderDialogRange(-1, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == sexRequiredNPCArousalOID
		SetSliderDialogStartValue(sexRequiredNPCArousal)
		SetSliderDialogDefaultValue(85)
		SetSliderDialogRange(-1, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == sexRequiredNPCTattoosOID
		SetSliderDialogStartValue(sexRequiredNPCTattoos)
		SetSliderDialogDefaultValue(-1)
		SetSliderDialogRange(-1, 20)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == sexRequiredCreatureArousalOID
		SetSliderDialogStartValue(sexRequiredCreatureArousal)
		SetSliderDialogDefaultValue(75)
		SetSliderDialogRange(-1, 100)
		SetSliderDialogInterval(1)
		Return
	Endif
	If option == baseChanceOID
		SetSliderDialogStartValue(baseChance)
		SetSliderDialogDefaultValue(6.5)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == containerModifierOID
		SetSliderDialogStartValue(containerModifier)
		SetSliderDialogDefaultValue(1.0)
		SetSliderDialogRange(0, 10)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == bossContainerModifierOID
		SetSliderDialogStartValue(bossContainerModifier)
		SetSliderDialogDefaultValue(2.0)
		SetSliderDialogRange(0, 10)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == deadBodyModifierOID
		SetSliderDialogStartValue(deadBodyModifier)
		SetSliderDialogDefaultValue(1.3)
		SetSliderDialogRange(0, 10)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == pickpocketModifierOID
		SetSliderDialogStartValue(pickpocketModifier)
		SetSliderDialogDefaultValue(1.3)
		SetSliderDialogRange(0, 10)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == doorModifierOID
		SetSliderDialogStartValue(doorModifier)
		SetSliderDialogDefaultValue(1.0)
		SetSliderDialogRange(0, 10)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == lockedModifierOID
		SetSliderDialogStartValue(lockedModifier)
		SetSliderDialogDefaultValue(2.0)
		SetSliderDialogRange(0, 10)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == lockDifficultyModifierOID
		SetSliderDialogStartValue(lockDifficultyModifier)
		SetSliderDialogDefaultValue(1.3)
		SetSliderDialogRange(1, 10)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == arousalModifierOID
		SetSliderDialogStartValue(arousalModifier)
		SetSliderDialogDefaultValue(1.4)
		SetSliderDialogRange(1, 10)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == keyLossChanceOID
		SetSliderDialogStartValue(keyLossChance)
		SetSliderDialogDefaultValue(80.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == keyChanceOID
		SetSliderDialogStartValue(keyChance)
		SetSliderDialogDefaultValue(7.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == keyBonusOID
		SetSliderDialogStartValue(keyBonus)
		SetSliderDialogDefaultValue(1.0)
		SetSliderDialogRange(0, 10)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == keyPickpocketBonusOID
		SetSliderDialogStartValue(keyPickpocketBonus)
		SetSliderDialogDefaultValue(2.0)
		SetSliderDialogRange(0, 10)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == magicKeyChanceOID
		SetSliderDialogStartValue(magicKeyChance)
		SetSliderDialogDefaultValue(20.0)
		SetSliderDialogRange(0, 50)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == keyLuckyBonusOID
		SetSliderDialogStartValue(keyLuckyBonus)
		SetSliderDialogDefaultValue(1.75)
		SetSliderDialogRange(1, 10)
		SetSliderDialogInterval(0.01)
		Return
	Endif
	If option == eventContraptionTimeOID
		SetSliderDialogStartValue(eventContraptionTime)
		SetSliderDialogDefaultValue(4.0)
		SetSliderDialogRange(0, 24)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == followerDeviceMultOID
		SetSliderDialogStartValue(followerDeviceMult)
		SetSliderDialogDefaultValue(0.75)
		SetSliderDialogRange(0, 3)
		SetSliderDialogInterval(0.02)
		Return
	Endif
	If option == LMBrandingChanceOID
		SetSliderDialogStartValue(LMBrandingChance)
		SetSliderDialogDefaultValue(1.5)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == LMBondageModifierOID
		SetSliderDialogStartValue(LMBondageModifier)
		SetSliderDialogDefaultValue(5.0)
		SetSliderDialogRange(1, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == LMPainslutSexChanceOID
		SetSliderDialogStartValue(LMPainslutSexChance)
		SetSliderDialogDefaultValue(15.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == oppSummonChanceOID
		SetSliderDialogStartValue(oppSummonChance)
		SetSliderDialogDefaultValue(1.5)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == oppSummonSexChanceOID
		SetSliderDialogStartValue(oppSummonSexChance)
		SetSliderDialogDefaultValue(25.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == oppNocturnalHandChanceOID
		SetSliderDialogStartValue(oppNocturnalHandChance)
		SetSliderDialogDefaultValue(3.5)
		SetSliderDialogRange(0, 50)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == oppNocturnalRecastChanceOID
		SetSliderDialogStartValue(oppNocturnalRecastChance)
		SetSliderDialogDefaultValue(33.3)
		SetSliderDialogRange(10, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == oppLivingLatexGemOID
		SetSliderDialogStartValue(oppLivingLatexGem)
		SetSliderDialogDefaultValue(6.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == oppLivingLatexMoreOID
		SetSliderDialogStartValue(oppLivingLatexMore)
		SetSliderDialogDefaultValue(0.0)
		SetSliderDialogRange(0, 10)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == oppMadnessMultiplierOID
		SetSliderDialogStartValue(oppMadnessMultiplier)
		SetSliderDialogDefaultValue(1.0)
		SetSliderDialogRange(0, 10)
		SetSliderDialogInterval(0.01)
		Return
	Endif
	If option == lockedLocationBypassOID
		SetSliderDialogStartValue(lockedLocationBypass)
		SetSliderDialogDefaultValue(0.6)
		SetSliderDialogRange(0, 10)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == theftLocationBypassOID
		SetSliderDialogStartValue(theftLocationBypass)
		SetSliderDialogDefaultValue(1.1)
		SetSliderDialogRange(0, 10)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == playerHomeModifierOID
		SetSliderDialogStartValue(playerHomeModifier)
		SetSliderDialogDefaultValue(0.0)
		SetSliderDialogRange(0, 10)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == cityModifierOID
		SetSliderDialogStartValue(cityModifier)
		SetSliderDialogDefaultValue(0.0)
		SetSliderDialogRange(0, 10)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == townModifierOID
		SetSliderDialogStartValue(townModifier)
		SetSliderDialogDefaultValue(0.0)
		SetSliderDialogRange(0, 10)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == banditModifierOID
		SetSliderDialogStartValue(banditModifier)
		SetSliderDialogDefaultValue(1.1)
		SetSliderDialogRange(0, 10)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == draugrModifierOID
		SetSliderDialogStartValue(draugrModifier)
		SetSliderDialogDefaultValue(1.2)
		SetSliderDialogRange(0, 10)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == soulCairnModifierOID
		SetSliderDialogStartValue(soulCairnModifier)
		SetSliderDialogDefaultValue(1.5)
		SetSliderDialogRange(0, 10)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == dwarvenModifierOID
		SetSliderDialogStartValue(dwarvenModifier)
		SetSliderDialogDefaultValue(1.2)
		SetSliderDialogRange(0, 10)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == falmerModifierOID
		SetSliderDialogStartValue(falmerModifier)
		SetSliderDialogDefaultValue(1.3)
		SetSliderDialogRange(0, 10)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == forswornModifierOID
		SetSliderDialogStartValue(forswornModifier)
		SetSliderDialogDefaultValue(1.1)
		SetSliderDialogRange(0, 10)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == vampireModifierOID
		SetSliderDialogStartValue(vampireModifier)
		SetSliderDialogDefaultValue(1.5)
		SetSliderDialogRange(0, 10)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == warlockModifierOID
		SetSliderDialogStartValue(warlockModifier)
		SetSliderDialogDefaultValue(1.5)
		SetSliderDialogRange(0, 10)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == dragonLairModifierOID
		SetSliderDialogStartValue(dragonLairModifier)
		SetSliderDialogDefaultValue(2.0)
		SetSliderDialogRange(0, 10)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == apocryphaModifierOID
		SetSliderDialogStartValue(apocryphaModifier)
		SetSliderDialogDefaultValue(2.0)
		SetSliderDialogRange(0, 10)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == wildernessModifierOID
		SetSliderDialogStartValue(wildernessModifier)
		SetSliderDialogDefaultValue(0.9)
		SetSliderDialogRange(0, 10)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == rDeviceBaseChanceOID
		SetSliderDialogStartValue(rDeviceBaseChance)
		SetSliderDialogDefaultValue(1.5)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == rDeviceLuckyBonusOID
		SetSliderDialogStartValue(rDeviceLuckyBonus)
		SetSliderDialogDefaultValue(2.5)
		SetSliderDialogRange(1, 10)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == wardingCharmChanceOID
		SetSliderDialogStartValue(wardingCharmChance)
		SetSliderDialogDefaultValue(0.5)
		SetSliderDialogRange(0, 10)
		SetSliderDialogInterval(0.01)
		Return
	Endif
	If option == tatSolventChanceOID
		SetSliderDialogStartValue(tatSolventChance)
		SetSliderDialogDefaultValue(0.5)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.01)
		Return
	Endif
	If option == arousalPotionChanceOID
		SetSliderDialogStartValue(arousalPotionChance)
		SetSliderDialogDefaultValue(5.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.01)
		Return
	Endif
	If option == arousalPotionLibidoOID
		SetSliderDialogStartValue(arousalPotionLibido)
		SetSliderDialogDefaultValue(10.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == consTalkNudeOID
		SetSliderDialogStartValue(consTalkNude)
		SetSliderDialogDefaultValue(35.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == consTalkRestrainedOID
		SetSliderDialogStartValue(consTalkRestrained)
		SetSliderDialogDefaultValue(10.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == consTalkHeavyOID
		SetSliderDialogStartValue(consTalkHeavy)
		SetSliderDialogDefaultValue(50.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == consTalkTattooOID
		SetSliderDialogStartValue(consTalkTattoo)
		SetSliderDialogDefaultValue(25.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == consScanSexOID
		SetSliderDialogStartValue(consScanSex)
		SetSliderDialogDefaultValue(25.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == consScanNudeOID
		SetSliderDialogStartValue(consScanNude)
		SetSliderDialogDefaultValue(10.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == consScanRestrainedOID
		SetSliderDialogStartValue(consScanRestrained)
		SetSliderDialogDefaultValue(0.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == consScanHeavyOID
		SetSliderDialogStartValue(consScanHeavy)
		SetSliderDialogDefaultValue(25.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == consScanTattooOID
		SetSliderDialogStartValue(consScanTattoo)
		SetSliderDialogDefaultValue(5.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == consScanTrespassOID
		SetSliderDialogStartValue(consScanTrespass)
		SetSliderDialogDefaultValue(100.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == consGuardScanSexOID
		SetSliderDialogStartValue(consGuardScanSex)
		SetSliderDialogDefaultValue(50.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == consGuardScanNudeOID
		SetSliderDialogStartValue(consGuardScanNude)
		SetSliderDialogDefaultValue(0.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == consGuardScanRestrainedOID
		SetSliderDialogStartValue(consGuardScanRestrained)
		SetSliderDialogDefaultValue(0.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == consGuardScanTattooOID
		SetSliderDialogStartValue(consGuardScanTattoo)
		SetSliderDialogDefaultValue(0.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == consGuardTalkMultOID
		SetSliderDialogStartValue(consGuardTalkMult)
		SetSliderDialogDefaultValue(5.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == consGaggedMultiplierOID
		SetSliderDialogStartValue(consGaggedMultiplier)
		SetSliderDialogDefaultValue(1.2)
		SetSliderDialogRange(0, 5)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == sexBaseChanceOID
		SetSliderDialogStartValue(sexBaseChance)
		SetSliderDialogDefaultValue(1.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == sexCreatureModifierOID
		SetSliderDialogStartValue(sexCreatureModifier)
		SetSliderDialogDefaultValue(0.9)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == sexFollowerModifierOID
		SetSliderDialogStartValue(sexFollowerModifier)
		SetSliderDialogDefaultValue(1.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == sexSummonModifierOID
		SetSliderDialogStartValue(sexSummonModifier)
		SetSliderDialogDefaultValue(2.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == sexRestraintsModifierOID
		SetSliderDialogStartValue(sexRestraintsModifier)
		SetSliderDialogDefaultValue(1.1)
		SetSliderDialogRange(0, 2)
		SetSliderDialogInterval(0.01)
		Return
	Endif
	If option == sexSafeLocationModifierOID
		SetSliderDialogStartValue(sexSafeLocationModifier)
		SetSliderDialogDefaultValue(1.3)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == sexUnsafeLocationModifierOID
		SetSliderDialogStartValue(sexUnsafeLocationModifier)
		SetSliderDialogDefaultValue(0.1)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == sexPlayerNudityModifierOID
		SetSliderDialogStartValue(sexPlayerNudityModifier)
		SetSliderDialogDefaultValue(2.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == sexNPCNudityModifierOID
		SetSliderDialogStartValue(sexNPCNudityModifier)
		SetSliderDialogDefaultValue(2.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == sexPlayerArousalModifierOID
		SetSliderDialogStartValue(sexPlayerArousalModifier)
		SetSliderDialogDefaultValue(2.5)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == sexNPCArousalModifierOID
		SetSliderDialogStartValue(sexNPCArousalModifier)
		SetSliderDialogDefaultValue(2.5)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == sexAllureModifierOID
		SetSliderDialogStartValue(sexAllureModifier)
		SetSliderDialogDefaultValue(5.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
	If option == sexSummonerModifierOID
		SetSliderDialogStartValue(sexSummonerModifier)
		SetSliderDialogDefaultValue(7.5)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.1)
		Return
	Endif
EndEvent

Event OnOptionSliderAccept(int option, float value)
	
	If option == minGoldRequiredOID
		minGoldRequired = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == eventScalingModOID
		eventScalingMod = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == minRestraintsOID
		minRestraints = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == maxRestraintsOID
		maxRestraints = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == bossAditionalRestraintsOID
		bossAditionalRestraints = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == restraintCapOID
		restraintCap = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == minArousalOID
		minArousal = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == beltWeightOID
		beltWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == chastityPiercingWeightOID
		chastityPiercingWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == braWeightOID
		braWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == plugsWeightOID
		plugsWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == lockingPlugsWeightOID
		lockingPlugsWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == inflatablePlugsWeightOID
		inflatablePlugsWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == nipplePiercingsWeightOID
		nipplePiercingsWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == vaginalPiercingsWeightOID
		vaginalPiercingsWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == corsetWeightOID
		corsetWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == beltedCorsetsWeightOID
		beltedCorsetsWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == slaveHarnessWeightOID
		slaveHarnessWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == chastityHarnessWeightOID
		chastityHarnessWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == armbinderWeightOID
		armbinderWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == elbowbinderWeightOID
		elbowbinderWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == yokeWeightOID
		yokeWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == shacklesWeightOID
		shacklesWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == straitjacketWeightOID
		straitjacketWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == straitjacketLegbinderWeightOID
		straitjacketLegbinderWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == petSuitWeightOID
		petSuitWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == collarWeightOID
		collarWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == armCuffsWeightOID
		armCuffsWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == legCuffsWeightOID
		legCuffsWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == gagWeightOID
		gagWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == ringGagWeightOID
		ringGagWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == largeGagWeightOID
		largeGagWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == largeRingGagWeightOID
		largeRingGagWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == blindfoldWeightOID
		blindfoldWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == hoodBothWeightOID
		hoodBothWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == hoodGagWeightOID
		hoodGagWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == hoodBlindWeightOID
		hoodBlindWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == hoodNoneWeightOID
		hoodNoneWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == catsuitWeightOID
		catsuitWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == hobbleSkirtWeightOID
		hobbleSkirtWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == hobbleSkirtDifficultyOID
		hobbleSkirtDifficulty = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == bootsWeightOID
		bootsWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == glovesWeightOID
		glovesWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == mittensWeightOID
		mittensWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == minKeysLootedOID
		minKeysLooted = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == maxKeysLootedOID
		maxKeysLooted = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == maxHeldKeysOID
		maxHeldKeys = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == restraintsKeyWeightOID
		restraintsKeyWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == chastityKeyWeightOID
		chastityKeyWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == piercingToolWeightOID
		piercingToolWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == eventStandardWeightOID
		eventStandardWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == eventStandardBossReductionOID
		eventStandardBossReduction = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == eventOppressiveWeightOID
		eventOppressiveWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == eventContraptionWeightOID
		eventContraptionWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == eventContDeviceOverrideOID
		eventContDeviceOverride = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == eventWickedWeightOID
		eventWickedWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == eventTattooWeightOID
		eventTattooWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == eventTattooMinOID
		eventTattooMin = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == eventTattooMaxOID
		eventTattooMax = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == eventTattooCapOID
		eventTattooCap = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == eventLewdMarkWeightOID
		eventLewdMarkWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == eventSimpleSlaveryWeightOID
		eventSimpleSlaveryWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		ForcePageReset()
		Return
	Endif
	If option == eventSSMinRestraintsOID
		eventSSMinRestraints = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == eventAbadonWeightOID
		eventAbadonWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == eventAbadonWarriorWeightOID
		eventAbadonWarriorWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == eventAbadonWarriorCountOID
		eventAbadonWarriorCount = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == eventAbadonScoutWeightOID
		eventAbadonScoutWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == eventAbadonScoutCountOID
		eventAbadonScoutCount = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == eventAbadonWitchWeightOID
		eventAbadonWitchWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == eventAbadonWitchCountOID
		eventAbadonWitchCount = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == followerDeviceModifierOID
		followerDeviceModifier = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == LMAllureWeightOID
		LMAllureWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == LMAllureModOID
		LMAllureMod = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == LMAllureSexOID
		LMAllureSex = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == LMHeatWeightOID
		LMHeatWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == LMHeatModOID
		LMHeatMod = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == LMHeatContainerCountOID
		LMHeatContainerCount = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == LMBrandingWeightOID
		LMBrandingWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == LMBrandingTotalOID
		LMBrandingTotal = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == LMHealslutWeightOID
		LMHealslutWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == LMHealslutHealingOID
		LMHealslutHealing = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == LMHealslutArousalOID
		LMHealslutArousal = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == LMHealslutDurationOID
		LMHealslutDuration = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == LMBondageWeightOID
		LMBondageWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == LMBondageDeviceCapAddOID
		LMBondageDeviceCapAdd = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == LMBondageDeviceCountOID
		LMBondageDeviceCount = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == LMNudityWeightOID
		LMNudityWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == LMNudityTalkTimesOID
		LMNudityTalkTimes = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == LMPainslutWeightOID
		LMPainslutWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == LMPainslutModOID
		LMPainslutMod = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == LMPainslutCountOID
		LMPainslutCount = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == LMPainslutArousalOID
		LMPainslutArousal = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == oppSummonerCollarWeightOID
		oppSummonerCollarWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == oppSummonerSexCountOID
		oppSummonerSexCount = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == oppDwarvenCuirassWeightOID
		oppDwarvenCuirassWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == oppDwarvenValueNeededOID
		oppDwarvenValueNeeded = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == oppDwarvenArousalOID
		oppDwarvenArousal = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == oppNocturnalWeightOID
		oppNocturnalWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == oppNocturnalSexCountOID
		oppNocturnalSexCount = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == oppNocturnalPeopleOID
		oppNocturnalPeople = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == oppNocturnalArousalOID
		oppNocturnalArousal = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == oppLivingLatexWeightOID
		oppLivingLatexWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == oppLivingLatexStartTimeOID
		oppLivingLatexStartTime = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == oppMadnessPlugWeightOID
		oppMadnessPlugWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == oppMadnessPlugIterationsOID
		oppMadnessPlugIterations = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == oppMadnessplugOrgasmsOID
		oppMadnessplugOrgasms = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == consScanRadiusOID
		consScanRadius = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == consScanIntervalOID
		consScanInterval = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == consFineForSexOID
		consFineForSex = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == consFineForNudityOID
		consFineForNudity = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == consFineForRestraintsOID
		consFineForRestraints = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == consFineForTattoosOID
		consFineForTattoos = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == consRestrainedCountOID
		consRestrainedCount = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == consTattooCountOID
		consTattooCount = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == consSexWeightOID
		consSexWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == consRandomBondageWeightOID
		consRandomBondageWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == consTattooWeightOID
		consTattooWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == consMercyWeightOID
		consMercyWeight = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == sexCooldownOID
		sexCooldown = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == sexArousalModifierCutoffOID
		sexArousalModifierCutoff = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == sexScalingModifierOID
		sexScalingModifier = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == sexSearchRadiusOID
		sexSearchRadius = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == sexSearchIntervalOID
		sexSearchInterval = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == sexRequiredPlayerBindingsOID
		sexRequiredPlayerBindings = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == sexRequiredPlayerArousalOID
		sexRequiredPlayerArousal = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == sexRequiredPlayerTattoosOID
		sexRequiredPlayerTattoos = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == sexRequiredNPCBindingsOID
		sexRequiredNPCBindings = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == sexRequiredNPCArousalOID
		sexRequiredNPCArousal = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == sexRequiredNPCTattoosOID
		sexRequiredNPCTattoos = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == sexRequiredCreatureArousalOID
		sexRequiredCreatureArousal = value as int
		SetSliderOptionValue(option, value, "{0}")
		
		Return
	Endif
	If option == baseChanceOID
		baseChance = value
		SetSliderOptionValue(option, value, "{1}%")
		Return
	Endif
	If option == containerModifierOID
		containerModifier = value
		SetSliderOptionValue(option, value, "{1}x")
		Return
	Endif
	If option == bossContainerModifierOID
		bossContainerModifier = value
		SetSliderOptionValue(option, value, "{1}x")
		Return
	Endif
	If option == deadBodyModifierOID
		deadBodyModifier = value
		SetSliderOptionValue(option, value, "{1}x")
		Return
	Endif
	If option == pickpocketModifierOID
		pickpocketModifier = value
		SetSliderOptionValue(option, value, "{1}x")
		Return
	Endif
	If option == doorModifierOID
		doorModifier = value
		SetSliderOptionValue(option, value, "{1}x")
		Return
	Endif
	If option == lockedModifierOID
		lockedModifier = value
		SetSliderOptionValue(option, value, "{1}x")
		Return
	Endif
	If option == lockDifficultyModifierOID
		lockDifficultyModifier = value
		SetSliderOptionValue(option, value, "{1}")
		Return
	Endif
	If option == arousalModifierOID
		arousalModifier = value
		SetSliderOptionValue(option, value, "{1}")
		Return
	Endif
	If option == keyLossChanceOID
		keyLossChance = value
		SetSliderOptionValue(option, value, "{1}%")
		Return
	Endif
	If option == keyChanceOID
		keyChance = value
		SetSliderOptionValue(option, value, "{1}%")
		Return
	Endif
	If option == keyBonusOID
		keyBonus = value
		SetSliderOptionValue(option, value, "{1}%")
		Return
	Endif
	If option == keyPickpocketBonusOID
		keyPickpocketBonus = value
		SetSliderOptionValue(option, value, "{1}x")
		Return
	Endif
	If option == magicKeyChanceOID
		magicKeyChance = value
		SetSliderOptionValue(option, value, "{1}")
		Return
	Endif
	If option == keyLuckyBonusOID
		keyLuckyBonus = value
		SetSliderOptionValue(option, value, "{2}")
		Return
	Endif
	If option == eventContraptionTimeOID
		eventContraptionTime = value
		SetSliderOptionValue(option, value, "{1}")
		Return
	Endif
	If option == followerDeviceMultOID
		followerDeviceMult = value
		SetSliderOptionValue(option, value, "{2}")
		Return
	Endif
	If option == LMBrandingChanceOID
		LMBrandingChance = value
		SetSliderOptionValue(option, value, "{1}%")
		Return
	Endif
	If option == LMBondageModifierOID
		LMBondageModifier = value
		SetSliderOptionValue(option, value, "{1}X")
		Return
	Endif
	If option == LMPainslutSexChanceOID
		LMPainslutSexChance = value
		SetSliderOptionValue(option, value, "{1}")
		Return
	Endif
	If option == oppSummonChanceOID
		oppSummonChance = value
		SetSliderOptionValue(option, value, "{1}%")
		Return
	Endif
	If option == oppSummonSexChanceOID
		oppSummonSexChance = value
		SetSliderOptionValue(option, value, "{1}%")
		Return
	Endif
	If option == oppNocturnalHandChanceOID
		oppNocturnalHandChance = value
		SetSliderOptionValue(option, value, "{1}%")
		Return
	Endif
	If option == oppNocturnalRecastChanceOID
		oppNocturnalRecastChance = value
		SetSliderOptionValue(option, value, "{1}%")
		Return
	Endif
	If option == oppLivingLatexGemOID
		oppLivingLatexGem = value
		SetSliderOptionValue(option, value, "{1}")
		Return
	Endif
	If option == oppLivingLatexMoreOID
		oppLivingLatexMore = value
		SetSliderOptionValue(option, value, "{1}")
		Return
	Endif
	If option == oppMadnessMultiplierOID
		oppMadnessMultiplier = value
		SetSliderOptionValue(option, value, "{2}")
		Return
	Endif
	If option == lockedLocationBypassOID
		lockedLocationBypass = value
		SetSliderOptionValue(option, value, "{1}x")
		Return
	Endif
	If option == theftLocationBypassOID
		theftLocationBypass = value
		SetSliderOptionValue(option, value, "{1}x")
		Return
	Endif
	If option == playerHomeModifierOID
		playerHomeModifier = value
		SetSliderOptionValue(option, value, "{1}x")
		Return
	Endif
	If option == cityModifierOID
		cityModifier = value
		SetSliderOptionValue(option, value, "{1}x")
		Return
	Endif
	If option == townModifierOID
		townModifier = value
		SetSliderOptionValue(option, value, "{1}x")
		Return
	Endif
	If option == banditModifierOID
		banditModifier = value
		SetSliderOptionValue(option, value, "{1}x")
		Return
	Endif
	If option == draugrModifierOID
		draugrModifier = value
		SetSliderOptionValue(option, value, "{1}x")
		Return
	Endif
	If option == soulCairnModifierOID
		soulCairnModifier = value
		SetSliderOptionValue(option, value, "{1}x")
		Return
	Endif
	If option == dwarvenModifierOID
		dwarvenModifier = value
		SetSliderOptionValue(option, value, "{1}x")
		Return
	Endif
	If option == falmerModifierOID
		falmerModifier = value
		SetSliderOptionValue(option, value, "{1}x")
		Return
	Endif
	If option == forswornModifierOID
		forswornModifier = value
		SetSliderOptionValue(option, value, "{1}x")
		Return
	Endif
	If option == vampireModifierOID
		vampireModifier = value
		SetSliderOptionValue(option, value, "{1}x")
		Return
	Endif
	If option == warlockModifierOID
		warlockModifier = value
		SetSliderOptionValue(option, value, "{1}x")
		Return
	Endif
	If option == dragonLairModifierOID
		dragonLairModifier = value
		SetSliderOptionValue(option, value, "{1}x")
		Return
	Endif
	If option == apocryphaModifierOID
		apocryphaModifier = value
		SetSliderOptionValue(option, value, "{1}x")
		Return
	Endif
	If option == wildernessModifierOID
		wildernessModifier = value
		SetSliderOptionValue(option, value, "{1}x")
		Return
	Endif
	If option == rDeviceBaseChanceOID
		rDeviceBaseChance = value
		SetSliderOptionValue(option, value, "{1}%")
		Return
	Endif
	If option == rDeviceLuckyBonusOID
		rDeviceLuckyBonus = value
		SetSliderOptionValue(option, value, "{1}")
		Return
	Endif
	If option == wardingCharmChanceOID
		wardingCharmChance = value
		SetSliderOptionValue(option, value, "{2}%")
		Return
	Endif
	If option == tatSolventChanceOID
		tatSolventChance = value
		SetSliderOptionValue(option, value, "{2}%")
		Return
	Endif
	If option == arousalPotionChanceOID
		arousalPotionChance = value
		SetSliderOptionValue(option, value, "{2}%")
		Return
	Endif
	If option == arousalPotionLibidoOID
		arousalPotionLibido = value
		SetSliderOptionValue(option, value, "{1}")
		Return
	Endif
	If option == consTalkNudeOID
		consTalkNude = value
		SetSliderOptionValue(option, value, "{1}%")
		Return
	Endif
	If option == consTalkRestrainedOID
		consTalkRestrained = value
		SetSliderOptionValue(option, value, "{1}%")
		Return
	Endif
	If option == consTalkHeavyOID
		consTalkHeavy = value
		SetSliderOptionValue(option, value, "{1}%")
		Return
	Endif
	If option == consTalkTattooOID
		consTalkTattoo = value
		SetSliderOptionValue(option, value, "{1}%")
		Return
	Endif
	If option == consScanSexOID
		consScanSex = value
		SetSliderOptionValue(option, value, "{1}%")
		Return
	Endif
	If option == consScanNudeOID
		consScanNude = value
		SetSliderOptionValue(option, value, "{1}%")
		Return
	Endif
	If option == consScanRestrainedOID
		consScanRestrained = value
		SetSliderOptionValue(option, value, "{1}%")
		Return
	Endif
	If option == consScanHeavyOID
		consScanHeavy = value
		SetSliderOptionValue(option, value, "{1}%")
		Return
	Endif
	If option == consScanTattooOID
		consScanTattoo = value
		SetSliderOptionValue(option, value, "{1}%")
		Return
	Endif
	If option == consScanTrespassOID
		consScanTrespass = value
		SetSliderOptionValue(option, value, "{1}%")
		Return
	Endif
	If option == consGuardScanSexOID
		consGuardScanSex = value
		SetSliderOptionValue(option, value, "{1}%")
		Return
	Endif
	If option == consGuardScanNudeOID
		consGuardScanNude = value
		SetSliderOptionValue(option, value, "{1}%")
		Return
	Endif
	If option == consGuardScanRestrainedOID
		consGuardScanRestrained = value
		SetSliderOptionValue(option, value, "{1}%")
		Return
	Endif
	If option == consGuardScanTattooOID
		consGuardScanTattoo = value
		SetSliderOptionValue(option, value, "{1}%")
		Return
	Endif
	If option == consGuardTalkMultOID
		consGuardTalkMult = value
		SetSliderOptionValue(option, value, "{1}")
		Return
	Endif
	If option == consGaggedMultiplierOID
		consGaggedMultiplier = value
		SetSliderOptionValue(option, value, "{1}x")
		Return
	Endif
	If option == sexBaseChanceOID
		sexBaseChance = value
		SetSliderOptionValue(option, value, "{1}%")
		Return
	Endif
	If option == sexCreatureModifierOID
		sexCreatureModifier = value
		SetSliderOptionValue(option, value, "{1}")
		Return
	Endif
	If option == sexFollowerModifierOID
		sexFollowerModifier = value
		SetSliderOptionValue(option, value, "{1}")
		Return
	Endif
	If option == sexSummonModifierOID
		sexSummonModifier = value
		SetSliderOptionValue(option, value, "{1}")
		Return
	Endif
	If option == sexRestraintsModifierOID
		sexRestraintsModifier = value
		SetSliderOptionValue(option, value, "{2}")
		Return
	Endif
	If option == sexSafeLocationModifierOID
		sexSafeLocationModifier = value
		SetSliderOptionValue(option, value, "{1}")
		Return
	Endif
	If option == sexUnsafeLocationModifierOID
		sexUnsafeLocationModifier = value
		SetSliderOptionValue(option, value, "{1}")
		Return
	Endif
	If option == sexPlayerNudityModifierOID
		sexPlayerNudityModifier = value
		SetSliderOptionValue(option, value, "{1}")
		Return
	Endif
	If option == sexNPCNudityModifierOID
		sexNPCNudityModifier = value
		SetSliderOptionValue(option, value, "{1}")
		Return
	Endif
	If option == sexPlayerArousalModifierOID
		sexPlayerArousalModifier = value
		SetSliderOptionValue(option, value, "{1}")
		Return
	Endif
	If option == sexNPCArousalModifierOID
		sexNPCArousalModifier = value
		SetSliderOptionValue(option, value, "{1}")
		Return
	Endif
	If option == sexAllureModifierOID
		sexAllureModifier = value
		SetSliderOptionValue(option, value, "{1}")
		Return
	Endif
	If option == sexSummonerModifierOID
		sexSummonerModifier = value
		SetSliderOptionValue(option, value, "{1}")
		Return
	Endif
EndEvent

Event OnOptionInputOpen(int option)
	If option == excludedFollowersOID
		SetInputDialogStartText(excludedFollowers)
		Return
	Endif
	If option == followerOverrideThemeOID
		SetInputDialogStartText(followerOverrideTheme)
		Return
	Endif
	If option == followerSkipKeywordsOID
		SetInputDialogStartText(followerSkipKeywords)
		Return
	Endif
	If option == LMNudityAditionalFormsOID
		SetInputDialogStartText(LMNudityAditionalForms)
		Return
	Endif
EndEvent

Event OnOptionInputAccept(int option, string value)
	
	If option == excludedFollowersOID
		excludedFollowers = value
		SetInputOptionValue(option, value)
		Return
	Endif
	If option == followerOverrideThemeOID
		followerOverrideTheme = value
		SetInputOptionValue(option, value)
		Return
	Endif
	If option == followerSkipKeywordsOID
		followerSkipKeywords = value
		SetInputOptionValue(option, value)
		Return
	Endif
	If option == LMNudityAditionalFormsOID
		LMNudityAditionalForms = value
		SetInputOptionValue(option, value)
		Return
	Endif
EndEvent

Event OnOptionColorOpen(int option)
	If option == LMAllureColorOID
		SetColorDialogStartColor(LMAllureColor)
		SetColorDialogDefaultColor(0xcf11c5)
		Return
	Endif
	If option == LMHeatColorOID
		SetColorDialogStartColor(LMHeatColor)
		SetColorDialogDefaultColor(0xe3143a)
		Return
	Endif
	If option == LMBrandingColorOID
		SetColorDialogStartColor(LMBrandingColor)
		SetColorDialogDefaultColor(0x220022)
		Return
	Endif
	If option == LMHealslutColorOID
		SetColorDialogStartColor(LMHealslutColor)
		SetColorDialogDefaultColor(0xffbb45)
		Return
	Endif
	If option == LMBondageColorOID
		SetColorDialogStartColor(LMBondageColor)
		SetColorDialogDefaultColor(0x7908cf)
		Return
	Endif
	If option == LMNudityColorOID
		SetColorDialogStartColor(LMNudityColor)
		SetColorDialogDefaultColor(0xd676cb)
		Return
	Endif
	If option == LMPainslutColorOID
		SetColorDialogStartColor(LMPainslutColor)
		SetColorDialogDefaultColor(0x911300)
		Return
	Endif
EndEvent

Event OnOptionColorAccept(int option, int color)
	If option == LMAllureColorOID
		LMAllureColor = color as int
		SetColorOptionValue(option, color)
		Return
	Endif
	If option == LMHeatColorOID
		LMHeatColor = color as int
		SetColorOptionValue(option, color)
		Return
	Endif
	If option == LMBrandingColorOID
		LMBrandingColor = color as int
		SetColorOptionValue(option, color)
		Return
	Endif
	If option == LMHealslutColorOID
		LMHealslutColor = color as int
		SetColorOptionValue(option, color)
		Return
	Endif
	If option == LMBondageColorOID
		LMBondageColor = color as int
		SetColorOptionValue(option, color)
		Return
	Endif
	If option == LMNudityColorOID
		LMNudityColor = color as int
		SetColorOptionValue(option, color)
		Return
	Endif
	If option == LMPainslutColorOID
		LMPainslutColor = color as int
		SetColorOptionValue(option, color)
		Return
	Endif
EndEvent

Event OnOptionKeyMapChange(int option, int keycode, string conflictControl, string conflictName)
	If keycode == 1
		keycode = -1
	EndIf
	If option == setDebugKeyOID
		setDebugKey = keycode as int
		SetKeyMapOptionValue(option, keycode)
		Return
	Endif
EndEvent

Function SetupMenuStrings()
	oppSummonerNPCList = new String[7]
	oppSummonerNPCList[0] = "Familiar"
	oppSummonerNPCList[1] = "Flame Atronach"
	oppSummonerNPCList[2] = "Frost Atronach"
	oppSummonerNPCList[3] = "Storm Atronach"
	oppSummonerNPCList[4] = "Dremora Lord"
	oppSummonerNPCList[5] = "Random Atronach"
	oppSummonerNPCList[6] = "Random"
EndFunction

Event OnOptionMenuOpen(int option)
	If option == oppSummonerNPCOID
		SetMenuDialogOptions(oppSummonerNPCList)
		SetMenuDialogStartIndex(oppSummonerNPC)
		SetMenuDialogDefaultIndex(0)
		Return
	Endif
EndEvent

Event OnOptionMenuAccept(int option, int index)
	If option == oppSummonerNPCOID
		oppSummonerNPC = index
		SetMenuOptionValue(oppSummonerNPCOID, oppSummonerNPCList[oppSummonerNPC])
		Return
	Endif
EndEvent