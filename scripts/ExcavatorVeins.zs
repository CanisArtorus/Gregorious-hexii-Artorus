#modloaded immersiveengineering gregapi_post

// By Canis Artorus
// custom veins for Gregorious hexii Artorus

//// Excavator ********************** ////
//MineralString, MineralWeight, FailChance, OreStringArray, OreChanceArray, #DimensionIDArray, #isBlacklist 
// mods.immersiveengineering.Excavator.addMineral("Sediment", 30, 15, ["sand", "sandstone"], [50, 15], [0, 1], false);
//MineralString
// mods.immersiveengineering.Excavator.removeMineral("Bauxite");
//MineralString + OreString, Chance
// mods.immersiveengineering.Excavator.getMineral("Magnetite").addOre("oreNickel", 0.75);
//MineralString + OreString
// mods.immersiveengineering.Excavator.getMineral("Magnetite").removeOre("oreGold");

// Silver, Galena, Bauxite, Platinum, Cassiterite, Wolframite, Coal, Lead, Iron, Pyrite, Gold, Magnetite, Lapis, Copper, Quartzite, Nickel

# These actually WORK!!!!
var bauxVein	= mods.immersiveengineering.Excavator.getMineral("Bauxite");
var casserVein	= mods.immersiveengineering.Excavator.getMineral("Cassiterite");
var coalVein	= mods.immersiveengineering.Excavator.getMineral("Coal");
var coppVein	= mods.immersiveengineering.Excavator.getMineral("Copper");
var galenaVein	= mods.immersiveengineering.Excavator.getMineral("Galena");
var goldVein	= mods.immersiveengineering.Excavator.getMineral("Gold");
var ironVein	= mods.immersiveengineering.Excavator.getMineral("Iron");
var lapVein		= mods.immersiveengineering.Excavator.getMineral("Lapis");
// var leadVein	= mods.immersiveengineering.Excavator.getMineral("Lead");
// var magVein		= mods.immersiveengineering.Excavator.getMineral("Magnetite");
var nickVein	= mods.immersiveengineering.Excavator.getMineral("Nickel");
var platVein	= mods.immersiveengineering.Excavator.getMineral("Platinum");
var pyriteVein	= mods.immersiveengineering.Excavator.getMineral("Pyrite");
var quarVein	= mods.immersiveengineering.Excavator.getMineral("Quartzite");
var silVein		= mods.immersiveengineering.Excavator.getMineral("Silver");
var uraVein		= mods.immersiveengineering.Excavator.getMineral("Uranium");	// poof? -- gT meta.ore.*.* are dicted to only "oreVanillastone*" :: 6.07.12 ; GS has uranium ore for the trigger
var wolfVein	= mods.immersiveengineering.Excavator.getMineral("Wolframite");

<ore:oreRutile>.addAll(<ore:oreBasaltRutile>);
// <ore:oreZircon>.addAll(<ore:oreVanillastoneZircon>);
<ore:oreCassiterite>.addAll(<ore:oreVanillastoneCassiterite>);
// <ore:oreHuebnerite>.addAll(<ore:oreVanillastoneHuebnerite>);
// <ore:oreAnthracite>.addAll(<ore:oreVanillastoneAnthracite>);
// <ore:oreTetrahedrite>.addAll(<ore:oreVanillastoneTetrahedrite>);
// <ore:oreStibnite>.addAll(<ore:oreVanillastoneStibnite>);
// <ore:oreChalcopyrite>.addAll(<ore:oreVanillastoneChalcopyrite>);
<ore:oreSulfur>.addAll(<ore:oreVanillastoneSulfur>);
<ore:oreGalena>.addAll(<ore:oreLimestoneGalena>);
<ore:oreMalachite>.addAll(<ore:oreLimestoneMalachite>);
<ore:oreIlmenite>.addAll(<ore:oreBasaltIlmenite>);
// <ore:oreSodalite>.addAll(<ore:oreVanillastoneSodalite>);
// <ore:oreLazurite>.addAll(<ore:oreVanillastoneLazurite>);
<ore:oreFerrovanadium>.addAll(<ore:oreVanillastoneFerrovanadium>);
// <ore:oreArsenic>.addAll(<ore:oreVanillastoneArsenic>);
// <ore:oreCobalt>.addAll(<ore:oreVanillastoneCobalt>);
<ore:oreIridium>.addAll(<ore:oreBlackgraniteIridium>);
<ore:orePyrite>.addAll(<ore:oreVanillastonePyrite>);
// <ore:oreArsenopyrite>.addAll(<ore:oreVanillastoneArsenopyrite>);
// <ore:oreSphalerite>.addAll(<ore:oreVanillastoneSphalerite>);
// <ore:oreQuartzite>.addAll(<ore:oreQuartziteQuartzite>);
// <ore:oreBarite>.addAll(<ore:oreQuartziteBarite>);
// <ore:oreBromargyrite>.addAll(<ore:oreVanillastoneBromargyrite>);
<ore:oreManganese>.addAll(<ore:oreBasaltPyrolusite>);
<ore:oreMagnetite>.addAll(<ore:oreMarsMagnetite>);
<ore:oreNickel>.addAll(<ore:oreDioriteNickel>);
<ore:orePlatinum>.addAll(<ore:oreBlackgraniteCooperite>);
// <ore:oreScheelite>.addAll(<ore:oreVanillastoneScheelite>);
// <ore:oreWolframite>.addAll(<ore:oreVanillastoneWolframite>);
// <ore:oreTungstate>.addAll(<ore:oreVanillastoneTungstate>);
// <ore:oreRussellite>.addAll(<ore:oreVanillastoneRussellite>);
// <ore:oreMolybdenum>.addAll(<ore:oreVanillastoneMolybdenum>);
// <ore:oreBastnasite>.addAll(<ore:oreVanillastoneBastnasite>);

bauxVein.removeOre("oreAluminum");
bauxVein.removeOre("oreAluminium");
bauxVein.removeOre("oreTitanium");
bauxVein.addOre("oreBauxite", 0.90);
bauxVein.addOre("oreRutile", 0.08);
bauxVein.addOre("oreBlackgraniteZircon", 0.02);

casserVein.addOre("oreCassiterite", 1);
casserVein.addOre("oreLimestoneHuebnerite", 0.2);

coalVein.addOre("oreLignite", 0.40);
// coalVein.addOre("oreAnthracite", 0.10);
coalVein.addOre("oreOilshale", 0.10);

coppVein.addOre("oreMarbleTetrahedrite", 0.6);
coppVein.addOre("oreLimestoneStibnite", 0.20);
coppVein.addOre("oreMarbleChalcopyrite", 0.15);

galenaVein.addOre("oreGalena", 0.9);

goldVein.addOre("oreRedstone", 0.05);

ironVein.addOre("oreMalachite", 0.15);
ironVein.addOre("oreIlmenite", 0.10);

lapVein.removeOre("oreSulfur");
lapVein.removeOre("oreSulphur");
lapVein.addOre("oreVanillastoneSodalite", 0.2);
lapVein.addOre("oreVanillastoneLazurite", 0.2);

nickVein.addOre("oreDioriteArsenic", 0.05);
nickVein.addOre("oreDioriteCobalt", 0.05);

platVein.addOre("oreVanillastoneOsmiumElemental", 0.1);
platVein.addOre("oreVanillastonePlatinumGroupSludge", 0.1);

pyriteVein.addOre("orePyrite", 1);
pyriteVein.addOre("oreLimestoneArsenopyrite", 0.3);
pyriteVein.addOre("oreMarbleChalcopyrite", 0.4);
pyriteVein.addOre("oreMarbleSphalerite", 0.3);

quarVein.addOre("oreQuartziteQuartzite", 0.2);
quarVein.addOre("oreQuartziteBarite", 0.1);

silVein.addOre("oreAndesiteBromargyrite", 0.05);

//mods.immersiveengineering.Excavator.addMineral("Uranite", 10, 50, ["orePitchblende", "oreUranium", "oreLead", "oreThorium", "oreVanillastonePlutonium"], [0.80, 0.55, 0.30, 0.25, 0.10]);
uraVein.addOre("oreRedgranitePitchblende", 0.8);
uraVein.addOre("oreThorium", 0.25);

wolfVein.removeOre("oreTungsten");
wolfVein.addOre("oreLimestoneScheelite", 0.20);
wolfVein.addOre("oreLimestoneWolframite", 0.10);
wolfVein.addOre("oreLimestoneTungstate", 0.10);
wolfVein.addOre("oreVanillastoneRussellite", 0.10);
wolfVein.addOre("oreLimestoneMolybdenite", 0.025);
wolfVein.addOre("oreBasaltBastnasite", 0.025);

mods.immersiveengineering.Excavator.addMineral("Suffering", 100, 20, ["oreNetherQuartz", "stoneNetherrack", "soulsand", "oreNetherrackArsenopyrite", "oreNetherrackSphalerite", "oreNetherrackCelestine", "oreNetherrackVyroxeres", "oreNetherrackVulcanite", "oreNetherrackThulium", "oreNetherrackTechnetium", "oreNetherrackPotassiumNitrate", "glowstone", "oreNetherrackShadowIron", "blockDustAshVolcanic"], [0.15, 0.20, 0.20, 0.05, 0.05, 0.075, 0.01, 0.01, 0.02, 0.05, 0.05, 0.10, 0.02, 0.015], [-1012, -1006, -1, 126, 129], false);
// [-1013, -1006, -31, -16, -15, -14, -1], false);

mods.immersiveengineering.Excavator.addMineral("Chalk", 10, 5, ["oreLimestoneAsbestos", "oreLimestoneSoapstone", "oreLimestoneTalc", "oreLimestoneGypsum", "oreLimestoneGlauconite", "oreLimestoneBentonite", "oreLimestoneMagnesite", "oreLimestoneZeolite", "oreLimestoneBorax", "oreLimestoneIodineSalt", "oreLimestoneChalk", "oreLimestoneKaolinite", "oreLimestoneVermiculite"], [0.05, 0.10, 0.05, 0.05, 0.10, 0.05, 0.05, 0.10, 0.08, 0.05, 0.12, 0.10, 0.10], [-1030, -1015, -1014, -29, 0, 7, 17, 66, 102, 121], false);
// [-1029, -1024, -1020, -1017, -1016, -1013, -1009, -1008, -1005, -45, -44, -42, -41, -40, -30, -28, -27, -26, -19, -1, 1], true);
// [-1030, -1028, -1027, -1026, -1023, -1022, -1021, -1015, -1014, -1007, -1006, -39, -38, -34, -29, -22, -20, -14, 0, 7, 17, 66], false);
// [-1029, -1025, -1024, -1020, -1019, -1018, -1017, -1016, -1013, -1012, -1011, -1010, -1009, -1008, -1005, -142, -119, -81, -80, -79, -78, -77, -76, -75, -74, -73, -72, -71, -70, -69, -68, -67, -66, -65, -64, -63, -62, -61, -60, -45, -44, -43, -42, -41, -40, -37, -36, -35, -33, -31, -30, -28, -27, -26, -21, -19, -18, -17, -16, -15, -13, -1, 1], true);

mods.immersiveengineering.Excavator.addMineral("Magic1", 10, 25, ["oreAmber", "oreChimerite", "oreCinnabar", "oreInfusedAir", "oreInfusedEarth", "oreInfusedEntropy", "oreInfusedFire", "oreInfusedOrder", "oreInfusedWater", "oreMoonstone", "oreSunstone"], [0.19, 0.10, 0.15, 0.08, 0.08, 0.08, 0.08, 0.08, 0.08, 0.04, 0.04], [-1009, -39, -21, -1, 2, 17, 66, 118, 122, 134], false);
mods.immersiveengineering.Excavator.addMineral("Magic2", 10, 25, ["oreAmber", "oreChimerite", "oreCinnabar", "oreInfusedAir", "oreInfusedEarth", "oreInfusedEntropy", "oreInfusedFire", "oreInfusedOrder", "oreInfusedWater", "oreMoonstone", "oreSunstone"], [0.07, 0.10, 0.09, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.08, 0.06], [-42, -28, -19, 1, 7, 124, 219], false);
// [-1025, -1019, -1018, -1010, -1009, -142, -42, -41, -39, -28, -21, -19, -16, -15, -1, 1, 7, 17, 66], false); 

mods.immersiveengineering.Excavator.addMineral("Animeyese", 5, 30, ["oreCheese", "oreEndstoneDilithium", "oreEndstoneDuraniumHexaastatide", "oreEndstoneLemurite", "oreEndstoneMeteoricIron", "oreEndstoneNaquadah", "oreEndstoneOrichalcum", "oreEndstoneSelenium", "oreEndstoneTrinium", "oreEndstoneTritaniumHexaiodide", "oreEndstoneVibranium"], [0.15, 0.05, 0.10, 0.15, 0.10, 0.05, 0.05, 0.10, 0.05, 0.10, 0.005], [-1030, -1017, -1015, -1006, -43, -42, -30, -29, 1, 7, 17, 107, 108, 136], false);
// [-1030, -1028, -1021, -1017, -1015, -1008, -1007, -1006, -119, -42, -40, -38, -30, -29, -20, -18, -14, 1, 7, 17], false);

mods.immersiveengineering.Excavator.addMineral("Adamant", 10, 50, ["oreKimberliteIlmenite", "oreKimberliteDiamond", "oreKimberliteAdamantine", "oreKimberliteFerberite", "oreKimberliteTantalite", "oreKimberliteAtlarus", "oreKimberliteDraconium", "oreKimberliteGraphene"], [0.25, 0.05, 0.10, 0.25, 0.15, 0.05, 0.05, 0.10], [-1020, -42, -29, -19, 1, 66, 102, 123, 128], false);
// [-1020, -1012, -1011, -42, -36, -35, -33, -29, -19, 1, 66], false);

mods.immersiveengineering.Excavator.addMineral("Cryotic", 25, 10, ["oreSpaceOureclase", "oreSpaceFrozenIron", "oreSpaceCeruclase", "oreInfusedWater", "oreInfusedEntropy", "blockDustBlizz", "dustCryotheum", "blockDustGlowstonePluto", "blockIce", "blockDustMethaneIce", "caEssenceIce", "caLiqNitrogen"], [0.05, 0.10, 0.05, 0.10, 0.05, 0.09, 0.01, 0.05, 0.15, 0.30, 0.10, 0.25], [-1020, -1009, -43, -42, 1, 118, 125, 135], false);
// [-1020, -1018, -1017, -1009, -42, -41, -40, -36, -18, -17, 1], false);
