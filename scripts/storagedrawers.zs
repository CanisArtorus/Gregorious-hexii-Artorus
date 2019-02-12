#modloaded StorageDrawers gregapi_post

// --- Created by Jason McRay ---
// converted and edited by Canis Artorus

# import mods.gregtech.Assembler;

# Aliases
var drawerController = <StorageDrawers:controller>;
var sensorMV = <gregtech:gt.multiitem.technological:12142>;
// var sensorHV = <gregtech:gt.multiitem.technological:12143>; //-- <gregtech:gt.metaitem.01:32692>;
// var robotarmHV = <gregtech:gt.multiitem.technological:12083>; //-- <gregtech:gt.metaitem.01:32652>;
// var conveyorHV = <gregtech:gt.multiitem.technological:12043>; //-- <gregtech:gt.metaitem.01:32632>;
var drawerBasic = <ore:drawerBasic>;
var comparator = <minecraft:comparator>;
var plateIron = <ore:plateAnyIron>;
var drawerCompacting = <StorageDrawers:compDrawers>;
var pistonLV = <gregtech:gt.multiitem.technological:12061>;
// var pistonMV = <gregtech:gt.multiitem.technological:12062>; //-- <gregtech:gt.metaitem.01:32641>;
var plateSteel = <ore:plateAnyIronSteel>;
var plateAluminium = <ore:plateAluminium>;
var packingTape = <StorageDrawers:tape>;
var paper = <minecraft:paper>;
//var integratedCircuit13 = <gregapi:gt.integrated_circuit:13>;
//var glue = <liquid:glue>;
var drawerSlave = <StorageDrawers:controllerSlave>;

# Recipe tweaks
recipes.remove(drawerController);
/*recipes.addShaped(drawerController, [
    [plateIron, plateIron, plateIron],
    [comparator, sensorHV, comparator],
    [robotarmHV, drawerBasic, conveyorHV]]);
*/
// as automation of the new GT storage inserter - which already has the emerald and a diamond
recipes.addShaped(drawerController, [
	[null, <gregtech:gt.multitileentity:32751>, null],
	[sensorMV, <ore:craftingToolWrench>, comparator],
	[null, drawerSlave, null]]);

// make LV, not Al, tier - too extremely useful
recipes.remove(drawerCompacting);
recipes.addShaped(drawerCompacting *2, [
    [plateIron, plateSteel, plateIron],
    [pistonLV, drawerBasic, pistonLV],
    [plateIron, plateSteel, plateIron]]);

# Assembler.addRecipe(packingTape, paper * 3, integratedCircuit13, glue * 200, 100, 16);
recipes.addShaped(packingTape, [[null, <ore:craftingGlue>, null],[paper, paper, paper]]);

# Oredictionary Black/Whitelist
mods.storagedrawers.OreDictionaryBlacklist.add("craftingQuartz");
mods.storagedrawers.OreDictionaryBlacklist.add("itemNetherQuartz");
mods.storagedrawers.OreDictionaryBlacklist.add("itemCertusQuartz");

// Oh, the exploits to be had...
mods.storagedrawers.OreDictionaryBlacklist.add("beeComb");
mods.storagedrawers.OreDictionaryBlacklist.add("gt:bumbledrone");
mods.storagedrawers.OreDictionaryBlacklist.add("gt:bumblequeen");
mods.storagedrawers.OreDictionaryBlacklist.add("gt:bumbleprincess");
mods.storagedrawers.OreDictionaryBlacklist.add("itemstring");
mods.storagedrawers.OreDictionaryBlacklist.add("craftingPistonIngot");
mods.storagedrawers.OreDictionaryBlacklist.add("craftingGlue");
mods.storagedrawers.OreDictionaryBlacklist.add("craftingSafe");
mods.storagedrawers.OreDictionaryBlacklist.add("caHopper");
mods.storagedrawers.OreDictionaryBlacklist.add("foodSalt");
mods.storagedrawers.OreDictionaryBlacklist.add("listAllFishBait");
mods.storagedrawers.OreDictionaryBlacklist.add("ingotSteelMagnetic");
mods.storagedrawers.OreDictionaryBlacklist.add("plateSteelMagnetic");
mods.storagedrawers.OreDictionaryBlacklist.add("woodBuckets");
mods.storagedrawers.OreDictionaryBlacklist.add("advCT");
mods.storagedrawers.OreDictionaryBlacklist.add("drawerLike");
mods.storagedrawers.OreDictionaryBlacklist.add("massStorage");
mods.storagedrawers.OreDictionaryBlacklist.add("changeLocker");
mods.storagedrawers.OreDictionaryBlacklist.add("solidBurning");
mods.storagedrawers.OreDictionaryBlacklist.add("liquidBurning");
mods.storagedrawers.OreDictionaryBlacklist.add("steamBoiler");
mods.storagedrawers.OreDictionaryBlacklist.add("steamTurbine");
mods.storagedrawers.OreDictionaryBlacklist.add("compressorMachine");
mods.storagedrawers.OreDictionaryBlacklist.add("liquidDrum");
mods.storagedrawers.OreDictionaryBlacklist.add("steamPiston");
mods.storagedrawers.OreDictionaryBlacklist.add("ca.plugBench");
mods.storagedrawers.OreDictionaryBlacklist.add("ca.spatialDisk");
mods.storagedrawers.OreDictionaryBlacklist.add("ca.craftAnvil");

// and the irritations that could happen.
mods.storagedrawers.OreDictionaryBlacklist.add("beamWood");
// mods.storagedrawers.OreDictionaryBlacklist.add("gt:circuit1");
// mods.storagedrawers.OreDictionaryBlacklist.add("gt:circuit2");
// mods.storagedrawers.OreDictionaryBlacklist.add("gt:circuit3");
// mods.storagedrawers.OreDictionaryBlacklist.add("gt:circuit4");
// mods.storagedrawers.OreDictionaryBlacklist.add("gt:circuit5");
// mods.storagedrawers.OreDictionaryBlacklist.add("gt:usbcable1");
// mods.storagedrawers.OreDictionaryBlacklist.add("gt:usbcable2");
// mods.storagedrawers.OreDictionaryBlacklist.add("gt:usbcable3");
// mods.storagedrawers.OreDictionaryBlacklist.add("gt:usbdrive1");
// mods.storagedrawers.OreDictionaryBlacklist.add("gt:usbdrive2");
// mods.storagedrawers.OreDictionaryBlacklist.add("gt:usbdrive3");
// mods.storagedrawers.OreDictionaryBlacklist.add("gt:usbstick1");
// mods.storagedrawers.OreDictionaryBlacklist.add("gt:usbstick2");
// mods.storagedrawers.OreDictionaryBlacklist.add("gt:usbstick3");
mods.storagedrawers.OreDictionaryBlacklist.add("logWood");
mods.storagedrawers.OreDictionaryBlacklist.add("plankWood");
mods.storagedrawers.OreDictionaryBlacklist.add("record");
mods.storagedrawers.OreDictionaryBlacklist.add("slabWood");
mods.storagedrawers.OreDictionaryBlacklist.add("stairWood");
mods.storagedrawers.OreDictionaryBlacklist.add("treeSapling");
mods.storagedrawers.OreDictionaryBlacklist.add("cobblestone");
mods.storagedrawers.OreDictionaryBlacklist.add("stoneCobble");


/*
# Credits in Compacting Drawer
mods.storagedrawers.Compaction.add(<IC2:itemCoin>, <gregtech:gt.metaitem.01:32011>, 8);
mods.storagedrawers.Compaction.add(<gregtech:gt.metaitem.01:32013>, <IC2:itemCoin>, 8);

drawerCompacting.addTooltip("Also stores Industrial Credits");
*/