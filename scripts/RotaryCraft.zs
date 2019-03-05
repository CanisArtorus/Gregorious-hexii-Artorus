#modloaded RotaryCraft ReactorCraft gregapi_post

// By Canis Artorus

var aluminumFoil = <gregtech:gt.meta.foil:130>;
var ballBearings = <RotaryCraft:rotarycraft_item_borecraft:10>;
var DUplate = <NuclearCraft:parts:8>;
val floodLamp = <RotaryCraft:rotarycraft_item_machine:8>;
var glassPlate = <gregtech:gt.meta.plateGem:8001>;
//val HSLAingot = <RotaryCraft:rotarycraft_item_shaftcraft:1>;
//val HSLAplate = <RotaryCraft:rotarycraft_item_shaftcraft:0>;
val impellor = <RotaryCraft:rotarycraft_item_enginecraft:0>;
var leather = <ore:craftingLeather>;
var lensWhite = <ore:lensWhite>;
var lumiumTwinPlate = <ore:plateDoubleLumium>;
var magnetCheap = <ReactorCraft:reactorcraft_item_magnet:0>;
var magentNd = <ReactorCraft:reactorcraft_item_magnet:4>;	# quarter Tesla
var RCMirror = <RotaryCraft:rotarycraft_item_misccraft:7>;
var RCMount = <RotaryCraft:rotarycraft_item_shaftcraft:3>;
val obsidian = <minecraft:obsidian>;
var PbFoil = <ore:foilLead>;
var PbPlate = <ore:plateLead>;
var plank = <ore:plankWood>;
val RoCScrew = <RotaryCraft:rotarycraft_item_screwdriver>;
var rubberSheet = <ore:plateRubber>;
// var shaftAnySteel = <ore:stickLongAnyIronSteel>;
var shaftBearing = <RotaryCraft:rotarycraft_item_borecraft:8>;
var silverFoil = <gregtech:gt.meta.foil:470>;
var wireStirling = <ore:wireFineStirlingSilver>;

// un-exploit wheat flour. It's 2 dough, not 1/4 flour.	#NCD?
// furnace.remove(<minecraft:bread>);
// furnace.addRecipe(<minecraft:bread>, <gregtech:gt.multiitem.food:6000>);

// de-conflict with Harvestcraft
recipes.addShaped(RoCScrew, [[null, <gregtech:gt.meta.toolHeadScrewdriver:8637>],
	[plank, null]] );

// --- gregify select components ---

recipes.addShapeless(impellor, [<ore:rotorHSLA>]);
recipes.addShapeless(impellor, [<ore:rotorTinAlloy>, RoCScrew.reuse()]);
recipes.addShapeless(impellor, [<ore:rotorAnyIronOrSteel>, RoCScrew.reuse()]);

// rad suit material
recipes.addShaped(<ReactorCraft:reactorcraft_item_crafting:15> * 2, [
	[rubberSheet, rubberSheet, rubberSheet],
	[PbPlate, PbFoil, PbPlate],
	[leather, leather, leather] ]);
recipes.addShaped(<ReactorCraft:reactorcraft_item_crafting:15> *4, [
	[rubberSheet, DUplate, leather],
	[rubberSheet, PbFoil, leather],
	[rubberSheet, DUplate, leather]]);
	
recipes.addShaped(RCMount, [[<ore:ringTin>, null, <ore:ringTin>],[<ore:ingotTin>, <ore:plateHSLA>, <ore:ingotTin>]]);
recipes.addShaped(RCMount, [[<ore:ringTin>, null, <ore:ringTin>],[<ore:ingotAnyIronOrSteel>, <ore:plateHSLA>, <ore:ingotAnyIronOrSteel>]]);
recipes.addShaped(RCMount, [[<ore:ringTin>, null, <ore:ringTin>],[<ore:ingotTinAlloy>, <ore:plateHSLA>, <ore:ingotTinAlloy>]]);
recipes.addShaped(RCMount, [[<ore:ringTinAlloy>, null, <ore:ringTinAlloy>],[<ore:ingotTinAlloy>, <ore:plateHSLA>, <ore:ingotTinAlloy>]]);
recipes.addShaped(RCMount, [[<ore:ringTinAlloy>, null, <ore:ringTinAlloy>],[<ore:ingotAnyIronOrSteel>, <ore:plateHSLA>, <ore:ingotAnyIronOrSteel>]]);

recipes.addShapeless(magnetCheap, [<ore:ingotIronMagnetic>, <ore:ingotIronMagnetic>, <ore:ingotIronMagnetic>, <ore:ingotIronMagnetic>, <ore:craftingToolHardHammer>]);
recipes.addShapeless(magnetCheap, [<ore:ingotSteelMagnetic>, <ore:ingotSteelMagnetic>, <ore:plateCurvedSteelMagnetic>, <ore:craftingToolHardHammer>]);
recipes.addShapeless(magentNd, [<ore:ingotNeodymiumMagnetic>, <ore:ingotNeodymiumMagnetic>, <ore:plateCurvedNeodymiumMagnetic>, <ore:craftingToolHardHammer>]);

recipes.addShaped(shaftBearing, [[<ore:plateCurvedHSLA>, ballBearings, <ore:craftingToolWrench>],[ballBearings, <ore:ringHSLA>, ballBearings],[<ore:craftingToolHardHammer>, ballBearings, <ore:plateCurvedHSLA>]]);
recipes.addShapeless(ballBearings *2, [<ore:roundHSLA>, <ore:roundHSLA>, <ore:roundHSLA>, <ore:roundHSLA>]);
recipes.addShaped(RCMirror, [[glassPlate, glassPlate, glassPlate],[aluminumFoil, aluminumFoil, aluminumFoil]]);
recipes.addShaped(RCMirror, [[glassPlate, glassPlate, glassPlate],[silverFoil, silverFoil, silverFoil]]);
recipes.addShaped(RCMirror, [[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],[silverFoil, silverFoil, silverFoil]]);

// --- and a few machine recipes ---
// Floodlamp
recipes.remove(floodLamp);
recipes.addShaped(floodLamp, [
	[null, <ore:ingotHSLA>, plank],
	[lensWhite, lumiumTwinPlate, wireStirling],
	[obsidian, <ore:plateHSLA>, RoCScrew.reuse()]]);

// use Dry Ice in the Cryotic excavator
<ore:caLiqNitrogen>.add(<RotaryCraft:rotarycraft_item_powders:11>);

// A bit more chemical re-usability
# dry ice smelting

// ### Quarantine zone
mods.immersiveengineering.BlastFurnace.addFuel(<RotaryCraft:rotarycraft_item_compacts:8>, 3200);
mods.railcraft.BlastFurnace.addFuel(<RotaryCraft:rotarycraft_item_compacts:8>);

recipes.remove(stargatePowerRF);
recipes.addShaped(stargatePowerRF, [
[<Forestry:chipsets:3>, <NuclearCraft:parts:9>, <ImmersiveEngineering:metalDevice:7>],	# intricate board, advanced plate
[<ore:wireGt02Aluminum>, <ElectriCraft:electricraft_item_crystal:4>, <ore:wireGt02Steel>],	
[<ImmersiveEngineering:metalDevice:7>, <RotaryCraft:rotarycraft_item_compacts:6>, <ore:oc:circuitChip2>]]);	# inductive alloy

recipes.addShapeless(<OpenBlocks:fan> * 4, [<RotaryCraft:rotarycraft_item_enginecraft:0>, ULVmotor, <minecraft:stone_slab:*>]);

<ore:craftingGeothermalGenerator>.add(<ReactorCraft:reactorcraft_item_placer:20>);	# fluid heat exchange machine

//Modifying Rotarycraft research
//Bedrock Helmet of Revealing
Research.moveResearch("BEDREVEAL", "ARTIFICE", 4, -1);
Research.clearPrereqs("BEDREVEAL");
Research.addPrereq("BEDREVEAL", "GOGGLES", false);
//Tab Removal
Research.removeTab("rotarycraft");

Infusion.addRecipe("HOVERHARNESS", <RotaryCraft:rotarycraft_item_jetpack>, [<Thaumcraft:BlockJarFilledItem>.withTag({Aspects: [{amount: 64, key: "potentia"}]}), <Thaumcraft:blockTube:1>, <gregtech:gt.meta.rotor:130>, <Thaumcraft:ItemShard:0>, <gregtech:gt.meta.plateDouble:8679>, <Thaumcraft:ItemShard:0>, <gregtech:gt.meta.rotor:130>, <Thaumcraft:blockTube:1>], "iter 32, machina 32, potentia 32, volatus 96", <Thaumcraft:HoverHarness>, 6);

Infusion.addRecipe("REPAIRER", <OpenBlocks:autoanvil>, [<gregtech:gt.meta.plate:8610>, <gregtech:gt.meta.plate:8630>, <gregtech:gt.meta.plate:790>, <gregtech:gt.meta.plate:8675>, <RotaryCraft:rotarycraft_item_enginecraft:13>, <chisel:ballomoss>, <harvestcraft:hardenedleatherItem>, <Thaumcraft:ItemResource:7>, <NuclearCraft:parts:3>, <gregtech:gt.meta.plate:8679>, <gregtech:gt.meta.plate:8681>, <gregtech:gt.meta.plate:8669>], "fabrico 50, instrumentum 20, ordo 15, praecantatio 20", <ThaumicTinkerer:repairer>, 8);

// NuclearCraft
// ReactorCraft tri-pairing
<ore:U238>.add(<ReactorCraft:reactorcraft_item_raw:2>);
<ore:dustUranium235>.add(<ReactorCraft:reactorcraft_item_raw:1>);
<ore:U235>.add(<ReactorCraft:reactorcraft_item_raw:1>);
<ore:U235Oxide>.add(<ReactorCraft:reactorcraft_item_raw:1>);
recipes.addShapeless(<ReactorCraft:reactorcraft_item_raw:1>, [<NuclearCraft:material:57>]);

recipes.addShapeless(<NuclearCraft:fuel:68>,[<ReactorCraft:reactorcraft_item_depleted>, <NuclearCraft:fuel:33>]);

// Terrible fluid non-compatibility
var ncCell	= <NuclearCraft:fuel:45>;
var ncO2	= <NuclearCraft:fuel:35>;
var ncD2	= <NuclearCraft:fuel:37>;
var rcCell	= <ReactorCraft:reactorcraft_item_canister:0>;
var rcO2	= <ReactorCraft:reactorcraft_item_canister:8>;
var rcD2	= <ReactorCraft:reactorcraft_item_canister:5>;

// Deuterium
mods.MTUtilsGT.addCustomRecipe("gt.recipe.canner", false, 16, 20, [10000, 10000], [ncCell, rcD2], [rcCell, ncD2]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.canner", false, 16, 20, [10000, 10000], [rcCell, ncD2], [ncCell, rcD2]);

// Tritium
mods.MTUtilsGT.addCustomRecipe("gt.recipe.canner", false, 16, 20, [10000, 10000], [ncCell, <ReactorCraft:reactorcraft_item_canister:6>], [rcCell, <NuclearCraft:fuel:38>]);
// tech requires one-way

// Oxygen
mods.MTUtilsGT.addCustomRecipe("gt.recipe.canner", false, 16, 20, [10000, 10000], [ncCell, rcO2], [rcCell, ncO2]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.canner", false, 16, 20, [10000, 10000], [rcCell, ncO2], [ncCell, rcO2]);

mods.MTUtilsGT.addCustomRecipe("gt.recipe.mixer", true, 16, 32, [10000], [<ElectriCraft:electricraft_item_crafting:0>, <minecraft:redstone>, <minecraft:sugar>], <NuclearCraft:parts:4> *3);
