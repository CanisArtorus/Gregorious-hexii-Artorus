
/*
//  LionZXY 's addon to MT GT6 machines
// MTUtilsGT.addCustomRecipe(String fieldName, boolean aOptimize, long aEUt, long aDuration, long[] aChances,
	IItemStack[] aInputs, IItemStack... aOutputs);
// MTUtilsGT.addCustomRecipe(String fieldName, boolean aOptimize, long aEUt, long aDuration,
	long[] aChances, IItemStack[] aInputs, ILiquidStack aFluidInput, ILiquidStack aFluidOutput, IItemStack... aOutputs);
// MTUtilsGT.addCustomRecipe(String fieldName, boolean aOptimize, long aEUt, long aDuration, long[] aChances,
	IItemStack[] aInputs, ILiquidStack[] aFluidInputs, ILiquidStack[] aFluidOutputs, IItemStack... aOutputs);

// MTUtilsGT.removeRecipe(String fieldName, IItemStack[] aInputs, ILiquidStack[] aFluidInputs,
	IItemStack... output);

// MTUtilsGT.removeAllRecipes(String fieldName, IItemStack... output)

{	items in,out,min; fluids in,out,min: min total inputs
mc.recipe.furnace 			smelting				1,1,1;0,0,0
gt.recipe.microwave 		cooking					1,1,1;0,0,0
gt.recipe.byproductlist 	[fake]					6,12,1;0,0,0
gt.recipe.cruciblesmelting 	[fake]					6,6,1;0,0,0
gt.recipe.cruciblealloying 	[fake]					6,6,1;0,0,0
gt.recipe.generifier		[auto?]					1,1,0;1,1,0:1
gt.recipe.bumblequeen		bee produce				2,6,0;0,0,0:1
gt.recipe.boxinator 		crating / blocking		2,1,2;0,0,0
gt.recipe.unboxinator 		crate opening			1,2,1;0,0,0
gt.recipe.sharpener 		grind wheel				1,2,1;0,0,0
gt.recipe.sifter 			sifting					1,12,1;0,0,0
gt.recipe.hammer 			in-world crushing		1,1,1;0,0,0
gt.recipe.chisel 			in-world carving		1,1,1;0,0,0
gt.recipe.shredder 			chips to dust, recycle	1,6,1;0,0,0
gt.recipe.crusher 			block to gravel			1,4,1;0,0,0
gt.recipe.lathe 			machine sharpening		1,2,1;0,0,0
gt.recipe.cutter 			buzzsaw					1,3,1;1,0,1
gt.recipe.debarker			prep logs				1,2,1;1,0,1
gt.recipe.coagulator 		wait for solid from goo	0,1,0;1,0,1
gt.recipe.squeezer 			get all the juice		1,1,1;0,1,0
gt.recipe.juicer			hand juicing			1,1,1;0,1,0
gt.recipe.mortar			hand grinding			1,2,1;0,0,0
gt.recipe.compressor		squash things			1,1,1;0,0,0
gt.recipe.centrifuge 		spin out differences	1,6,0;1,6,0:0
gt.recipe.electrolyzer 		shock it apart			2,6,1;2,6,0:2
gt.recipe.rollingmill 		plates					1,1,1;0,0,0
gt.recipe.rollbender 		bend it					1,1,1;0,0,0
gt.recipe.rollformer 		makes track				1,1,1;0,0,0
gt.recipe.clustermill 		foil					1,1,1;0,0,0
gt.recipe.wiremill 			draw wire				1,1,1;0,0,0
gt.recipe.mixer 			stir					6,1,0;6,2,0:2
gt.recipe.burnmixer			stir in flames			6,1,0;6,2,0:2
gt.recipe.cryomixer			ice cream machine		6,1,0;6,2,0:2
gt.recipe.freezer			icy bocks				1,1,0;1,1,0:1
gt.recipe.canner 			seal in can				2,2,1;1,1,0
gt.recipe.injector			pressurized mix / fill	2,1,0;2,1,0:2
gt.recipe.calciner 			?						3,3,0;3,3,0:2
gt.recipe.roaster			oxidize (usu Sulfur)	1,3,1;1,1,1
gt.recipe.drying			water distillation		1,1,0;1,1,0:1
gt.recipe.fermenter			?						1,1,1;1,1,0
gt.recipe.distillery		brews potions / alcohol	1,2,1;1,2,1
gt.recipe.extruder 			molded					2,1,2;0,0,0
gt.recipe.polarizer 		magnetize				1,1,1;0,0,0
gt.recipe.loom				weave					6,1,1;0,0,0
gt.recipe.cooker			?						9,1,1;3,1,1
gt.recipe.press 			circuit assembly		3,1,2;0,0,0
gt.recipe.bath				soak / density pans / acid wash	6,6,1;1,3,1
gt.recipe.smelter			melts pure things		1,1,0;1,1,0:1
gt.recipe.laserengraver 	writes chips			2,1,2;0,0,0
gt.recipe.welder			welding					6,1,2;0,0,0
gt.recipe.crystallisationcrucible		silicon/redstone Boules	1,1,1;2,0,1
gt.recipe.plantalyzer		scans crops / seedlings / saplings	2,2,0;1,0,0:1
gt.recipe.bumblelyzer		scans bees				2,2,0;1,0,0:2
gt.recipe.scannervisuals	reads books / blueprints	2,2,2;0,0,0
gt.recipe.printer 			prints books / blueprints	2,1,1;6,0,1
gt.recipe.sluice			washes ore.	[fake?]		1,9,1;1,1,1
gt.recipe.magneticseparator	purifies some ores		1,6,1;,0,0,0
gt.recipe.autocrafting			separate automateable recipes 9,12,1;0,0,0
gt.recipe.massfab			decompose into plasma	1,1,0;1,2,0:1
gt.recipe.scannermolecular	electron microscope		2,1,1;0,0,0:2
gt.recipe.replicator		build pattern from plasma	3,3,1;3,3,0:2
gt.recipe.slicer 			cut food				2,2,2;0,0,0
gt.recipe.laminator			coats in foil / wax		2,1,2;0,0,0
gt.recipe.cokeoven			reduces to creosote		1,1,1;0,1,0
gt.recipe.distillationtower separate petroleum		1,3,0;1,9,0:1
gt.recipe.autoclave			steam bath 				2,3,2;1,1,1
#gt.recipe.fusionreactor	?	2,1,0;0,0,0
#gt.recipe.blastfurnace		?	2,2,1;0,0,0
#gt.recipe.implosioncompressor	?	2,2,2;0,0,0
#gt.recipe.vacuumfreezer	?	1,1,1;0,0,0
#gt.recipe.assembler		?	2,1,1;1,0,0
#gt.recipe.cncmachine		?	2,1,2;1,0,1
}
*/

import minetweaker.item.IItemStack;
import minetweaker.item.IItemDefinition;
import minetweaker.liquid.ILiquidStack;
import minetweaker.item.IIngredient;

// var dustEnergium = <ElectriCraft:electricraft_item_crafting:3>;
val steam = <liquid:steam>;

// Thaumic Clusters
mods.MTUtilsGT.addCustomRecipe("gt.recipe.autoclave", false, 0, 640, [10000], [<gregtech:gt.meta.dust:8352> * 4, <Thaumcraft:ItemShard:0>], steam * 1228800, null, [<Thaumcraft:blockCrystal:0>]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.autoclave", false, 0, 640, [10000], [<gregtech:gt.meta.dust:8353> * 4, <Thaumcraft:ItemShard:1>], steam * 1228800, null, [<Thaumcraft:blockCrystal:1>]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.autoclave", false, 0, 640, [10000], [<gregtech:gt.meta.dust:8355> * 4, <Thaumcraft:ItemShard:2>], steam * 1228800, null, [<Thaumcraft:blockCrystal:2>]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.autoclave", false, 0, 640, [10000], [<gregtech:gt.meta.dust:8354> * 4, <Thaumcraft:ItemShard:3>], steam * 1228800, null, [<Thaumcraft:blockCrystal:3>]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.autoclave", false, 0, 640, [10000], [<gregtech:gt.meta.dust:8357> * 4, <Thaumcraft:ItemShard:4>], steam * 1228800, null, [<Thaumcraft:blockCrystal:4>]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.autoclave", false, 0, 640, [10000], [<gregtech:gt.meta.dust:8356> * 4, <Thaumcraft:ItemShard:5>], steam * 1228800, null, [<Thaumcraft:blockCrystal:5>]);

// Miner's Tree and Ore Magnet expect block ores - hence the special GT stuff in TF.
var treeWarning = format.red("This DESTROYS most ores!\nUse only in the Twilight Forest!");
<TwilightForest:tile.TFSapling:7>.addTooltip(treeWarning);
<TwilightForest:tile.TFMagicLogSpecial:2>.addTooltip(treeWarning);
<TwilightForest:item.oreMagnet>.addTooltip(treeWarning);

// mods.MTUtilsGT.addCustomRecipe("gt.recipe.compressor", true, 512, 512, [10000], [dustEnergium], [<gregtech:gt.multiitem.technological:21101>]);	// 6.07.08 Greg fix

// Aluminium Ore fix for other mods.
if (loadedMods in "Magneticraft") {
	// let that file do more with this loop
} else { for IEBaux in [
		<GalacticraftCore:tile.gcBlockCore:7>,
		<GalacticraftMars:tile.asteroidsBlock:3>,
		<ImmersiveEngineering:ore:1>,
		<libVulpes:libVulpesore0:9>,
		<GalaxySpace:marsoresblocks:5>,
		<GalaxySpace:europablocks:5>
		// <ElectriCraft:electricraft_block_ore:4>
	] as IItemStack[] {
	<ore:oreAluminum>.remove(IEBaux);
	<ore:oreAluminium>.remove(IEBaux);
	<ore:oreNaturalAluminum>.remove(IEBaux);
	<ore:oreBauxite>.add(IEBaux);
}}
furnace.remove(<ore:ingotAluminium>);
furnace.addRecipe(<ImmersiveEngineering:metal:1>, <ore:dustAluminium>);

<ore:barsIron>.add(<gregtech:gt.block.bars.steel>);

var diamond = <ore:diamond>;
var obsidian = <ore:obsidian>;
var plateObsidian = <ore:plateObsidian>;

// option both magic books
recipes.addShaped( <minecraft:enchanting_table>, [
	[null, <arsmagica2:ArcaneCompendium>, null],
	[diamond, obsidian, diamond],
	[obsidian, obsidian, obsidian]]);

// Miner's trash, option from the Hunter's trash
recipes.addShaped(<gregtech:gt.multitileentity:32709>,[
	[plateObsidian, plateObsidian, plateObsidian],
	[plateObsidian, <ore:container1000lava>, plateObsidian],
	[<ore:plateAnyIronOrSteel>, <ore:dustInfusedEntropy>, <ore:plateAnyIronOrSteel>]]);

// Let the Dict of Ores commence
var gtTile = <gregtech:gt.multitileentity>.definition;
var metalMeta = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23 ,24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45] as int[];

// New OredDicts for Crafting
for i in metalMeta {
	<ore:craftingSafe>.add(gtTile.makeStack(2000+i));	# the Mechanical (user-only 'combination') safes
	<ore:caHopper>.add(gtTile.makeStack(8000+i));	# hoppers
	<ore:caHopper>.add(gtTile.makeStack(8200+i));	# queue hoppers
}

for i in [25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50] as int[] {
	<ore:ca.craftAnvil>.add(gtTile.makeStack(32000+i));	# ingot / plate anvil
}

// Quest management
<ore:persulfDust>.add(<gregtech:gt.meta.dust:9822>);
<ore:persulfDust>.add(<gregtech:gt.meta.dust:8022>);
<ore:ca.spatialDisk>.add(<appliedenergistics2:item.ItemMultiMaterial:32>);
<ore:ca.spatialDisk>.add(<appliedenergistics2:item.ItemMultiMaterial:33>);
<ore:ca.spatialDisk>.add(<appliedenergistics2:item.ItemMultiMaterial:34>);

var meta1 = [2000, 2100, 2200, 2300, 2400, 2500, 2600, 2700] as int[];
for i in meta1 {
	<ore:woodBuckets>.add(<gregtech:gt.multiitem.randomtools>.definition.makeStack(i) );
}
for i in metalMeta {
	<ore:advCT>.add(gtTile.makeStack(5000 + i));
	<ore:drawerLike>.add(gtTile.makeStack(4000 + i));
	<ore:massStorage>.add(gtTile.makeStack(6000 + i));
	<ore:changeLocker>.add(gtTile.makeStack(7300 + i));
	<ore:ca.plugBench>.add(gtTile.makeStack(5500 + i));
}
<ore:drawerLike>.addAll(<ore:drawerBasic>);
var meta3 = [1100, 1101, 1102, 1103] as int[];
for i in meta3 {
	<ore:solidBurning>.add(gtTile.makeStack(i) );
}
var meta4 = [1402, 1403, 1404, 1405, 1406, 1407, 1408, 1409, 1452, 1453, 1454, 1455, 1456, 1457, 1458, 1459] as int[];
for i in meta4 {
	<ore:liquidBurning>.add(gtTile.makeStack(i));
}
var meta5 = [1200, 1201 ,1202, 1203, 1204, 1205, 1206, 1207, 1208, 1250, 1251, 1252, 1253, 1254, 1255, 1256, 1257, 1258] as int[];
for i in meta5 {
	<ore:steamBoiler>.add(gtTile.makeStack(i));
	<ore:ca.fluidBurner>.add(gtTile.makeStack(i+7800));	//90yx Fluidized bed
}
<ore:ca.fluidBurner>.add(gtTile.makeStack(9009));
<ore:ca.fluidBurner>.add(gtTile.makeStack(9059));

var meta6 = [1512, 1515, 1518, 1522, 1525, 1527, 1528, 1529, 1530, 1531, 1535, 1538, 1540, 1545, 1548] as int[];
for i in meta6 {
	<ore:steamTurbine>.add(gtTile.makeStack(i));
}
var meta7 = [1, 2, 3 ,4] as int[];	// mechanical machine tiers
for i in meta7 {
	<ore:compressorMachine>.add(gtTile.makeStack(20100 + i));
	<ore:crusherMachine>.add(gtTile.makeStack(20020 + i));
	<ore:ca.petrolCracker>.add(gtTile.makeStack(20480+i));
	<ore:ca.petrolCracker>.add(gtTile.makeStack(20490+i));
}
var meta8 = [6999, 6998, 6997, 6996, 6995, 6994, 6993, 6992, 6991, 6990] as int[];
for i in meta8 {
	<ore:massStorage>.add(gtTile.makeStack(i));
}
var meta9 = [32754, 32753, 32752, 32742, 32734, 32733, 32719, 32718, 32717, 32716, 32715, 32714, 32008, 32009, 32010, 32016, 32017, 32018, 32019, 32020, 32021, 32022, 32023, 32024, 32063] as int[];
for i in meta9 {
	<ore:liquidDrum>.add(gtTile.makeStack(i));
}
for i in [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11] as int[] {
	<ore:steamPiston>.add(gtTile.makeStack(1300 + i));
	<ore:steamPiston>.add(gtTile.makeStack(1350 + i));
}
for i in [1, 2, 3, 4, 5] as int[] {	// electric machine tiers
	<ore:steamPiston>.add(gtTile.makeStack(10010 + i));	// electric shakers
	<ore:steamPiston>.add(gtTile.makeStack(11010 + i));	// flux shakers
	<ore:steamTurbine>.add(gtTile.makeStack(11020 + i));	// flux motors
}
for i in [3, 7, 8, 9] as int[] {	// liquid-liquid heat exchangers
	<ore:ca.heatcross>.add(gtTile.makeStack(9100 + i));
	<ore:ca.heatcross>.add(gtTile.makeStack(9150 + i));
}
for i in [75, 76, 735] as int[] {
	<ore:ca.mortar>.add(gtTile.makeStack(32000 + i));	// hand -mortar blocks
}

<ore:ca.ZPMdias>.add(<gregtech:gt.multitileentity:11170>);
<ore:ca.ZPMdias>.add(<gregtech:gt.multitileentity:11171>);

// RFlux accepting machines		until 6.10.08
var HHammer = <ore:craftingToolHardHammer>;
var SHammer = <ore:craftingToolSoftHammer>;
var Screwdriver = <ore:craftingToolScrewdriver>;
var WirCut	= <ore:craftingToolWireCutter>;
var Wrench	= <ore:craftingToolWrench>;

// Stupid rare materials	until 6.11.25

// Irritating cobble stairs	// Until 6.11.12
var kimber = <gregtech:gt.stone.kimberlite:1>;
recipes.addShaped(<erebus:umbercobbleStairs1> *4, [[null, kimber],[kimber, kimber]]);

/*	Rocks are 9 times as much material (6.14.15), much more useful to keep
val gRock = <gregtech:gt.meta.rockGt>.definition;
    recipes.addShapeless(<minecraft:flint>*2, [gRock.makeStack(9180), gRock.makeStack(9180), gRock.makeStack(9180), gRock.makeStack(9180)]);
    recipes.addShapeless(<minecraft:flint>*5, [gRock.makeStack(8518), gRock.makeStack(8518), gRock.makeStack(8518), gRock.makeStack(8518)]);
for mId in [9177, 9176, 8505] as int[] {
    recipes.addShapeless(<gregtech:gt.meta.rockGt:9218>*4, [gRock.makeStack(mId), gRock.makeStack(mId), gRock.makeStack(mId), gRock.makeStack(mId)]);
}
    recipes.addShapeless(<gregtech:gt.meta.rockGt:8507>*4, [gRock.makeStack(8508), gRock.makeStack(8508), gRock.makeStack(8508), gRock.makeStack(8508)]);
    recipes.addShapeless(<minecraft:flint>*3, [gRock.makeStack(9186), gRock.makeStack(9186), gRock.makeStack(9186), gRock.makeStack(9186)]);
for mId in [8501, 8502, 8503, 8504, 8509, 8511, 9161, 9162, 9163, 9164, 9165, 9166, 9167, 9168, 9169, 9171, 9172, 9173, 9178, 9179, 9181, 9182, 9183, 9184, 9185, 9187, 9188, 9190, 9191] as int[] {
    recipes.addShapeless(<gregtech:gt.meta.rockGt:8500>*4, [gRock.makeStack(mId), gRock.makeStack(mId), gRock.makeStack(mId), gRock.makeStack(mId)]);
}
recipes.addShapeless(<minecraft:flint>*3, [<gregtech:gt.meta.rockGt:8002>, <gregtech:gt.meta.rockGt:8002>, <gregtech:gt.meta.rockGt:8002>, <gregtech:gt.meta.rockGt:8002>]);
// elemental samples
for mId in [900, 830, 820, 790, 780, 770, 760, 740, 600, 500, 470, 460, 420, 400, 320, 290, 280, 270, 260, 250, 240, 220, 130, 40,
8300, 8301, 8302, 8303, 8304, 8305, 8306, 8307, 8308, 8309, 8310, 8311, 8312, 8313, 8314, 8315, 8316, 8317, 8321, 8322, 8323, 8324, 8325, 8326, 8327, 8328, 8330, 8331, 8332, 8333, 8338, 8341, 8342, 8346, 8347, 8348, 8352, 8353, 8354, 8355, 8356, 8357, 8383, 8384, 8385, 8386, 8387, 8388, 8389, 9101, 9102, 9103, 9104, 9105, 9106, 9107, 9108, 9110, 9111, 9112, 9113, 9114, 9115, 9116, 9117, 9118, 9119, 9120, 9121, 9122, 9123, 9124, 9125, 9126, 9127, 9128, 9129, 9130, 9131, 9132, 9133, 9134, 9135, 9136, 9137, 9138, 9139, 9140, 9141, 9143, 9144, 9145, 9146, 9147, 9148, 9149, 9150, 9152, 9153, 9154, 9155, 9156, 9157, 9158, 9159, 9160, 9192, 9193, 9194, 9195, 9196, 9197, 9198, 9204, 9210, 9211, 9212, 9213, 9214, 9215, 9216, 9217] as int[] {
  recipes.addShapeless(<gregtech:gt.meta.rockGt:8518>*2, [gRock.makeStack(mId), gRock.makeStack(mId), gRock.makeStack(mId), gRock.makeStack(mId)]);
}
*/
// Stairs fixes, 6.08.04	- until 6.09.01
var saw = <ore:craftingToolSaw>;

/* a temporary mixup by GregT	6.08.04 - 6.09.04
*/

// exploit patch
// recipes.remove(<gregtech:gt.multitileentity:29800>);	// graphene wire

//	----	Fluid compat section	---	//
// binnie's liquid nitrogen
mods.MTUtilsGT.addCustomRecipe("gt.recipe.freezer", false, 16, 25, [1000], [<gregapi:gt.integrated_circuit:0> *0], [<liquid:nitrogen>*100], [<liquid:liquidnitrogen>*100], [null]);
// mods.MTUtilsGT.addCustomRecipe("gt.recipe.generifier", false, 1, 1, [10000], [null], [<liquid:liquidnitrogen>], [<liquid:nitrogen>], [null]);

// He-3
// mods.MTUtilsGT.addCustomRecipe("gt.recipe.generifier", false, 1, 1, [10000], [null], <liquid:helium-3>, <liquid:helium3>, null);
// mods.MTUtilsGT.addCustomRecipe("gt.recipe.generifier", false, 1, 1, [10000], [null], <liquid:helium3>, <liquid:helium-3>, null);


//vanilla improvements
# Jason McRay

var chestEnder = <minecraft:ender_chest>;
var chestWood = <minecraft:chest>;
var diamondBoots = <minecraft:diamond_boots>;
var diamondChestplate = <minecraft:diamond_chestplate>;
var diamondHelm = <minecraft:diamond_helmet>;
var diamondLeggings = <minecraft:diamond_leggings>;
var Fence = <minecraft:fence>;
var Flint = <minecraft:flint>;
var Gate = <minecraft:fence_gate>;
var ingotEnderium = <ore:ingotEnderium>;
var logWood = <ore:logWood>;
var Plank = <ore:plankWood>;
var plateDiamond = <ore:plateGemAnyDiamond>;	// crystal, not metal, include Industrial
var Stick = <minecraft:stick>;

var IronScrew = <ore:screwAnyIron>;
var SteelScrew = <ore:screwAnyironSteel>;


# Recipes Tweaks
recipes.remove(chestEnder);
recipes.addShaped(chestEnder, [
	[plateObsidian, plateObsidian, plateObsidian],
	[ingotEnderium, <gregtech:gt.meta.lens:8318>, ingotEnderium],	# ender pearl
	[plateObsidian, plateObsidian, plateObsidian]]);
recipes.remove(chestWood * 4);
recipes.addShaped(chestWood * 2, [
    [logWood, logWood, logWood],
    [logWood, null, logWood],
    [logWood, logWood, logWood]]);
recipes.addShaped(chestWood * 3, [
	[logWood, logWood, logWood],
	[logWood, <ore:craftingToolAxe>, logWood],
	[logWood, logWood, logWood]]);
recipes.addShaped(chestWood * 4, [
    [logWood, logWood, logWood],
    [logWood, saw, logWood],
    [logWood, logWood, logWood]]);

# Diamond Armor change // change to chain-backed
recipes.remove(diamondHelm);
recipes.addShaped(diamondHelm, [
    [plateDiamond, <minecraft:chainmail_helmet>, plateDiamond],
    [plateDiamond, SHammer, plateDiamond]]);
recipes.remove(diamondChestplate);
recipes.addShaped(diamondChestplate, [
    [plateDiamond, SHammer, plateDiamond],
    [plateDiamond, <minecraft:chainmail_chestplate>, plateDiamond],
    [plateDiamond, plateDiamond, plateDiamond]]);
recipes.remove(diamondLeggings);
recipes.addShaped(diamondLeggings, [
    [plateDiamond, plateDiamond, plateDiamond],
    [plateDiamond, <minecraft:chainmail_leggings>, plateDiamond],
    [plateDiamond, SHammer, plateDiamond]]);
recipes.remove(diamondBoots);
recipes.addShaped(diamondBoots, [
    [plateDiamond, <minecraft:chainmail_boots>, plateDiamond],
    [plateDiamond, SHammer, plateDiamond]]);

// --- *error user name found* ---

recipes.remove(Gate);
recipes.remove(Fence);

recipes.addShaped(Gate, [
[Flint, null, Flint],
[Plank, Stick, Plank],
[Plank, Stick, Plank]]);
// -
recipes.addShaped(Gate * 2, [
[IronScrew, Screwdriver, IronScrew],
[Plank, Stick, Plank],
[Plank, Stick, Plank]]);
// -
recipes.addShaped(Gate * 4, [
[SteelScrew, Screwdriver, SteelScrew],
[Plank, Stick, Plank],
[Plank, Stick, Plank]]);

recipes.addShaped(Fence, [
[null, null, null],
[Stick, Plank, Stick],
[Stick, Plank, Stick]]);
// -
recipes.addShaped(Fence * 2, [
[IronScrew, Screwdriver, IronScrew],
[Stick, Plank, Stick],
[Stick, Plank, Stick]]);
// -
recipes.addShaped(Fence* 4, [
[SteelScrew, Screwdriver, SteelScrew],
[Stick, Plank, Stick],
[Stick, Plank, Stick]]);

// non-ic2 crop supporting
/*
barley - gt.multiitem.food:12006
cranberry - .food:140 , ExtraTrees:food:46
oats - .food:12005
onion - .food:30
peanut - .food:250
pineapple - .food:270
rye -.food:12004
lemon -.food:0
rice -.food:12007
tea -.plantGtBlossom:9792
blackberry -.food:180 , ET:43
blueberry -.food:110, ET:45
candleberry -.food:130
chili -.food:50, ET:55
cucumber -.food:40
grapes -.food:60,63,66,70
raspberry -.food:190, ET:44,49
strawberry -.food:200
tomato -.food:10, 20
apple - .food:210, 220, 240, ET:0
banana - .food:90, ET:28, 29
pomegranite - .food:100
cinnamon - .food:280
goosberry -.food:120, ET:48
currant ++.food:150, 160, 170; ET:41,42

grapeGreen !60
grapeWhite !63
grapePurple !70
currantsBlack !150
currantsWhite !160
currantsRed !170
appleGreen !210
appleYellow !220
appleDarkRed !240
hazelnut ++.food:260, ET:24

*/
