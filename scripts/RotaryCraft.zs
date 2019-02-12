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