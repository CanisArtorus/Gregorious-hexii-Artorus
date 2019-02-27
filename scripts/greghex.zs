
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

var treeWarning = format.red("This tree DESTROYS most ores!");
<TwilightForest:tile.TFSapling:7>.addTooltip(treeWarning);
<TwilightForest:tile.TFMagicLogSpecial:2>.addTooltip(treeWarning);

// mods.MTUtilsGT.addCustomRecipe("gt.recipe.compressor", true, 512, 512, [10000], [dustEnergium], [<gregtech:gt.multiitem.technological:21101>]);	// 6.07.08 Greg fix

// Aluminium Ore fix for other mods.
if (loadedMods in "Magneticraft") {
	// let that file do more with this loop
} else { for IEBaux in [
		<GalacticraftCore:tile.gcBlockCore:7>, 
		<GalacticraftMars:tile.asteroidsBlock:3>, 
		<ImmersiveEngineering:ore:1>, 
	] as IItemStack[] {
	<ore:oreAluminum>.remove(IEBaux);
	<ore:oreAluminium>.remove(IEBaux);
	<ore:oreNaturalAluminum>.remove(IEBaux);
	<ore:oreBauxite>.add(IEBaux);
}}
furnace.remove(<ore:ingotAluminium>);
furnace.addRecipe(<ImmersiveEngineering:metal:1>, <ore:dustAluminium>);

var diamond = <ore:diamond>;
var obsidian = <ore:obsidian>;

// option both magic books
recipes.addShaped( <minecraft:enchanting_table>, [
	[null, <arsmagica2:ArcaneCompendium>, null],
	[diamond, obsidian, diamond],
	[obsidian, obsidian, obsidian]]);

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

<ore:persulfDust>.add(<gregtech:gt.meta.dust:9822>);
<ore:persulfDust>.add(<gregtech:gt.meta.dust:8022>);
<ore:ca.spatialDisk>.add(<appliedenergistics2:item.ItemMultiMaterial:32>);
<ore:ca.spatialDisk>.add(<appliedenergistics2:item.ItemMultiMaterial:33>);
<ore:ca.spatialDisk>.add(<appliedenergistics2:item.ItemMultiMaterial:34>);
	
// Quest management
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
var meta4 = [1402, 1403, 1404, 1405, 1406, 1407, 1408, 1452, 1453, 1454, 1455, 1456, 1457, 1458] as int[];
for i in meta4 {
	<ore:liquidBurning>.add(gtTile.makeStack(i));
}
var meta5 = [1200, 1201 ,1202, 1203, 1204, 1205, 1206, 1207, 1208, 1250, 1251, 1252, 1253, 1254, 1255, 1256, 1257, 1258] as int[];
for i in meta5 {
	<ore:steamBoiler>.add(gtTile.makeStack(i));
}
var meta6 = [1512, 1515, 1518, 1522, 1525, 1527, 1528, 1529, 1530, 1531, 1535, 1538, 1540, 1545, 1548] as int[];
for i in meta6 {
	<ore:steamTurbine>.add(gtTile.makeStack(i));
}
var meta7 = [1, 2, 3 ,4] as int[];	// mechanical machine tiers
for i in meta7 {
	<ore:compressorMachine>.add(gtTile.makeStack(20100 + i));
	<ore:crusherMachine>.add(gtTile.makeStack(20020 + i));
}
var meta8 = [6999, 6998, 6997, 6996, 6995, 6994, 6993, 6992, 6991, 6990] as int[];
for i in meta8 {
	<ore:massStorage>.add(gtTile.makeStack(i));
}
var meta9 = [32754, 32753, 32752, 32742, 32734, 32733, 32719, 32718, 32717, 32716, 32715, 32714, 32008, 32009, 32010, 32016, 32017, 32018, 32019, 32020, 32021, 32022, 32023, 32024] as int[];
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

// RFlux accepting machines
var HHammer = <ore:craftingToolHardHammer>;
var Screwdriver = <ore:craftingToolScrewdriver>;
var WirCut	= <ore:craftingToolWireCutter>;
var Wrench	= <ore:craftingToolWrench>;

var tripLead	= <ore:plateTripleLead>;
var tripInvar	= <ore:plateTripleInvar>;
var tripElect	= <ore:plateTripleElectrum>;
var tripEBase	= <ore:plateTripleEnderiumBase>;
var tripEnd		= <ore:plateTripleEnderium>;

var scrLead		= <ore:screwLead>;
var scrInvar	= <ore:screwInvar>;
var scrElect	= <ore:screwElectrum>;
var scrEBase	= <ore:screwEnderiumBase>;
var scrEnd		= <ore:screwEnderium>;

var leadDust	= <gregtech:gt.meta.dust:820>;
var invarDust	= <gregtech:gt.meta.dust:8661>;
var elecDust	= <gregtech:gt.meta.dust:8600>;
var eBasDust	= <gregtech:gt.meta.dust:8729>;
var endDust		= <gregtech:gt.meta.dust:8710>;
var cuDust	= <gregtech:gt.meta.dust:290>;
var cuNiDust	= <gregtech:gt.meta.dust:8662>;
var kanDust		= <gregtech:gt.meta.dust:8664>;
var niCrDust	= <gregtech:gt.meta.dust:8663>;

var LVstrip	= <ore:wireGt01AnyCopper>;
var MVstrip	= <ore:wireGt02AnyCopper>;
var HVstrip	= <ore:wireGt04AnnealedCopper>;
var EVstrip	= <ore:wireGt08AnnealedCopper>;
var IVstrip	= <ore:wireGt16AnnealedCopper>;

var MVhot	= <ore:wireGt02Cupronickel>;
var HVhot	= <ore:wireGt04Kanthal>;
var EVhot	= <ore:wireGt08Nichrome>;
var IVhot	= <ore:wireGt16Nichrome>;

var ironMag	= <ore:stickLongIronMagnetic>;
var steelMag	= <ore:stickLongSteelMagnetic>;
var neodymMag	= <ore:stickLongNeodymiumMagnetic>;

var ironDust	= <gregtech:gt.meta.dust:260>;
var steelDust	= <gregtech:gt.meta.dust:8630>;
var neoDust		= <gregtech:gt.meta.dust:600>;

var GoldAcceptor	= <ore:ingotGold>;
var InductAccept	= <ore:ingotGoldInductive>;	# RoC Au-rs alloy
var EnergAccpet	= <ore:ingotEnergeticAlloy>;	# EIO Au-rs-glow alloy

var goldDust	= <gregtech:gt.meta.dust:790>;
var indDust		= <gregtech:gt.meta.dust:8604>;
var EADust		= <gregtech:gt.meta.dust:8728>;
var siliDust	= <gregtech:gt.meta.dust:140>;

// Heaters
recipes.addShaped(<gregtech:gt.multitileentity:11001>, [[InductAccept, LVstrip, scrLead], 
	[LVstrip, <ore:casingMachineDoubleLead>, LVstrip], [scrLead, LVstrip, Screwdriver]]);
recipes.addShaped(<gregtech:gt.multitileentity:11002>, [[InductAccept, MVhot, scrInvar],
	[MVhot, <ore:casingMachineDoubleInvar>, MVhot], [scrInvar, MVhot, Screwdriver]]);
recipes.addShaped(<gregtech:gt.multitileentity:11003>, [[InductAccept, HVhot, scrElect],
	[HVhot, <ore:casingMachineDoubleElectrum>, HVhot], [scrElect, HVhot, Screwdriver]]);
recipes.addShaped(<gregtech:gt.multitileentity:11004>, [[EnergAccpet, EVhot, scrEBase],
	[EVhot, <ore:casingMachineDoubleEnderiumBase>, EVhot], [scrEBase, EVhot, Screwdriver]]);
recipes.addShaped(<gregtech:gt.multitileentity:11005>, [[EnergAccpet, IVhot, scrEnd],
	[IVhot, <ore:casingMachineDoubleEnderium>, IVhot], [scrEnd, IVhot, Screwdriver]]);

// Engines, pulsing
recipes.addShaped(<gregtech:gt.multitileentity:11011>, [[tripLead, HHammer, tripLead],
	[LVstrip, ironMag, LVstrip], [tripLead, GoldAcceptor, tripLead]]);
recipes.addShaped(<gregtech:gt.multitileentity:11012>, [[tripInvar, HHammer, tripInvar],
	[MVstrip, steelMag, MVstrip], [tripInvar, GoldAcceptor, tripInvar]]);
recipes.addShaped(<gregtech:gt.multitileentity:11013>, [[tripElect, HHammer, tripElect],
	[HVstrip, steelMag, HVstrip], [tripElect, GoldAcceptor, tripElect]]);
recipes.addShaped(<gregtech:gt.multitileentity:11014>, [[tripEBase, HHammer, tripEBase],
	[EVstrip, neodymMag, EVstrip], [tripEBase, InductAccept, tripEBase]]);
recipes.addShaped(<gregtech:gt.multitileentity:11015>, [[tripEnd, HHammer, tripEnd],
	[IVstrip, neodymMag, IVstrip], [tripEnd, InductAccept, tripEnd]]);

// Motors, rotary
recipes.addShaped(<gregtech:gt.multitileentity:11021>, [[GoldAcceptor, ironMag, scrLead],
	[LVstrip, <ore:casingMachineDoubleLead>, LVstrip], [scrLead, <ore:gearGtLead>, Screwdriver]]);
recipes.addShaped(<gregtech:gt.multitileentity:11022>, [[GoldAcceptor, steelMag, scrInvar],
	[MVstrip, <ore:casingMachineDoubleInvar>, MVstrip], [scrInvar, <ore:gearGtInvar>, Screwdriver]]);
recipes.addShaped(<gregtech:gt.multitileentity:11023>, [[GoldAcceptor, steelMag, scrElect],
	[HVstrip, <ore:casingMachineDoubleElectrum>, HVstrip], [scrElect, <ore:gearGtElectrum>, Screwdriver]]);
recipes.addShaped(<gregtech:gt.multitileentity:11024>, [[InductAccept, neodymMag, scrEBase],
	[EVstrip, <ore:casingMachineDoubleEnderiumBase> ,EVstrip], [scrEBase, <ore:gearGtEnderiumBase>, Screwdriver]]);
recipes.addShaped(<gregtech:gt.multitileentity:11025>, [[InductAccept, neodymMag, scrEnd],
	[IVstrip, <ore:casingMachineDoubleEnderium>, IVstrip], [scrEnd, <ore:gearGtEnderium>, Screwdriver]]);
	
// Magnets
recipes.addShaped(<gregtech:gt.multitileentity:11031>, [[LVstrip, WirCut, LVstrip],
	[LVstrip, <ore:casingMachineLead>, LVstrip], [LVstrip, Wrench, LVstrip]]);
recipes.addShaped(<gregtech:gt.multitileentity:11032>, [[MVstrip, WirCut, MVstrip],
	[MVstrip, <ore:casingMachineInvar>, MVstrip], [MVstrip, Wrench, MVstrip]]);
recipes.addShaped(<gregtech:gt.multitileentity:11033>, [[HVstrip, WirCut, HVstrip],
	[HVstrip, <ore:casingMachineElectrum>, HVstrip] ,[HVstrip, Wrench, HVstrip]]);
recipes.addShaped(<gregtech:gt.multitileentity:11034>, [[EVstrip, WirCut, EVstrip],
	[EVstrip, <ore:casingMachineEnderiumBase>, EVstrip] ,[EVstrip, Wrench, EVstrip]]);
recipes.addShaped(<gregtech:gt.multitileentity:11035>, [[IVstrip, WirCut, IVstrip],
	[IVstrip, <ore:casingMachineEnderium>, IVstrip], [IVstrip, Wrench, IVstrip]]);
	
// Laser emitters
# 1110x N/A

// Dynamo, RF from RU
# 1111x N/A

// Cooler, heat pump
recipes.addShaped(<gregtech:gt.multitileentity:11161>, [	// LV wire connector
	[<ImmersiveEngineering:metalDevice:0>, <ore:plateSilicon>, Wrench], 
	[<ore:plateAnyCopper>, <ore:casingMachineLead>, <ore:plateAnyCopper>],
	[WirCut, <ore:plateSilicon>, <ImmersiveEngineering:metalDevice:0>]]);
recipes.addShaped(<gregtech:gt.multitileentity:11162>, [		// MV wire connector
	[<ImmersiveEngineering:metalDevice:2>, <ore:plateDoubleSilicon>, Wrench],
	[<ore:plateDoubleAnyCopper>, <ore:casingMachineInvar>, <ore:plateDoubleAnyCopper>],
	[WirCut, <ore:plateDoubleSilicon>, <ImmersiveEngineering:metalDevice:2>]]);
recipes.addShaped(<gregtech:gt.multitileentity:11163>, [	// HV wire relay
	[<ImmersiveEngineering:metalDevice:5>, <ore:plateTripleSilicon>, Wrench],
	[<ore:plateTripleAnyCopper>, <ore:casingMachineElectrum>, <ore:plateTripleAnyCopper>],
	[WirCut, <ore:plateTripleSilicon>, <ImmersiveEngineering:metalDevice:5>]]);
recipes.addShaped(<gregtech:gt.multitileentity:11164>, [
	[<ore:cableGt01Naquadah>, <ore:plateQuadrupleSilicon>, Wrench],
	[<ore:plateQuadrupleAnyCopper>, <ore:casingMachineEnderiumBase>, <ore:plateQuadrupleAnyCopper>],
	[WirCut, <ore:plateQuadrupleSilicon>, <ore:cableGt01Naquadah>]]);
recipes.addShaped(<gregtech:gt.multitileentity:11165>, [
	[<ore:cableGt02Naquadah>, <ore:plateQuintupleSilicon>, Wrench],
	[<ore:plateQuintupleAnyCopper>, <ore:casingMachineEnderium>, <ore:plateQuintupleAnyCopper>],
	[WirCut, <ore:plateQuintupleSilicon>, <ore:cableGt02Naquadah>]]);

// Recyling Them
mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", false, 16, 11520, [10000, 10000, 10000], [<gregtech:gt.multitileentity:11001>], [leadDust *14, cuDust *2, indDust]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", false, 16, 13040, [10000, 10000, 10000], [<gregtech:gt.multitileentity:11002>], [invarDust*14, cuNiDust *4, indDust]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", false, 16, 17140, [10000, 10000, 10000], [<gregtech:gt.multitileentity:11003>], [elecDust *14, kanDust *8, indDust]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", false, 16, 26960, [10000, 10000, 10000], [<gregtech:gt.multitileentity:11004>], [eBasDust *14, niCrDust *16, EADust]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", false, 16, 38400, [10000, 10000, 10000], [<gregtech:gt.multitileentity:11005>], [endDust *14, niCrDust *32, EADust]);

mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", false, 16, 10240, [10000, 10000, 10000, 10000], [<gregtech:gt.multitileentity:11011>], [leadDust *12, cuDust, goldDust, ironDust]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", false, 16, 10480, [10000, 10000, 10000, 10000], [<gregtech:gt.multitileentity:11012>], [invarDust*12, cuDust *2, goldDust, steelDust]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", false, 16, 11000, [10000, 10000, 10000, 10000], [<gregtech:gt.multitileentity:11013>], [elecDust *12, cuDust *4, goldDust, steelDust]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", false, 16, 15360, [10000, 10000, 10000, 10000], [<gregtech:gt.multitileentity:11014>], [eBasDust *12, cuDust *8, indDust, neoDust]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", false, 16, 17400, [10000, 10000, 10000, 10000], [<gregtech:gt.multitileentity:11015>], [endDust *12, cuDust *16, indDust, neoDust]);

mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", false, 16, 15100, [10000, 10000, 10000, 10000], [<gregtech:gt.multitileentity:11021>], [leadDust *18, cuDust, goldDust, ironDust]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", false, 16, 15360, [10000, 10000, 10000, 10000], [<gregtech:gt.multitileentity:11022>], [invarDust*18, cuDust *2, goldDust, steelDust]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", false, 16, 15840, [10000, 10000, 10000, 10000], [<gregtech:gt.multitileentity:11023>], [elecDust *18, cuDust *4, goldDust, steelDust]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", false, 16, 21840, [10000, 10000, 10000, 10000], [<gregtech:gt.multitileentity:11024>], [eBasDust *18, cuDust *8, indDust, neoDust]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", false, 16, 23880, [10000, 10000, 10000, 10000], [<gregtech:gt.multitileentity:11025>], [endDust *18, cuDust *16, indDust, neoDust]);

mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", false, 16, 6900, [10000, 10000], [<gregtech:gt.multitileentity:11031>], [leadDust *8, cuDust *3]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", false, 16, 7680, [10000, 10000], [<gregtech:gt.multitileentity:11032>], [invarDust*8, cuDust *6]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", false, 16, 9200, [10000, 10000], [<gregtech:gt.multitileentity:11033>], [elecDust *8, cuDust *12]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", false, 16, 14320, [10000, 10000], [<gregtech:gt.multitileentity:11034>], [eBasDust *8, cuDust *24]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", false, 16, 20480, [10000, 10000], [<gregtech:gt.multitileentity:11035>], [endDust *8, cuDust *48]);

mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", false, 16, 4920, [10000, 10000, 10000, 10000], [<gregtech:gt.multitileentity:11161>], [leadDust *8, <gregtech:gt.meta.dustSmall:290> *11, siliDust *2, <gregtech:gt.meta.dust:8225>]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", false, 16, 8960, [10000, 10000, 10000, 10000, 10000], [<gregtech:gt.multitileentity:11162>], [invarDust*8, cuDust *4, siliDust *4, <gregtech:gt.meta.dust:8225>, <gregtech:gt.meta.dustSmall:8600> *3]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", false, 16, 10480, [10000, 10000, 10000, 10000, 10000], [<gregtech:gt.multitileentity:11163>], [elecDust *8, cuDust *6, siliDust *6, <gregtech:gt.meta.dust:8001>, <gregtech:gt.meta.dustSmall:8630> *3]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", false, 16, 13560, [10000, 10000, 10000, 10000, 10000], [<gregtech:gt.multitileentity:11164>], [eBasDust *8, cuDust *8, siliDust *8, <gregtech:gt.meta.dust:1740>, <gregtech:gt.meta.dust:8217> *2]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", false, 16, 14580, [10000, 10000, 10000, 10000, 10000, 10000], [<gregtech:gt.multitileentity:11165>], [endDust *8, cuDust *10, siliDust *10,<gregtech:gt.meta.dust:1740> *2, <gregtech:gt.meta.dust:8217>*2]);


// Stupid rare materials
var VbDust	= <gregtech:gt.meta.dust:1520>;
// Vibramantium Vb.1, Ad.3	5281K
mods.MTUtilsGT.addCustomRecipe("gt.recipe.mixer", true, 1024, 256, [10000], [VbDust, <gregtech:gt.meta.dust:2220> *3], <gregtech:gt.meta.dust:8706> *4);
// Vibranium Silver 1:3	2138K
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 8, 12000, [10000], [VbDust], [<liquid:molten.silver> *432], [null] as ILiquidStack[], [<gregtech:gt.meta.dust:8705> *4]);
// Vibranium Steel 1:3	2747K
mods.MTUtilsGT.addCustomRecipe("gt.recipe.mixer", true, 256, 640, [10000], [VbDust], [<liquid:molten.steel> *432], [null] as ILiquidStack[], [<gregtech:gt.meta.dust:8704> *4]);


// Irritating cobble stairs
for cobS in [<gregtech:gt.stone.quartzite:1>, <gregtech:gt.stone.greenschist:1>, <gregtech:gt.stone.komatiite:1>, <gregtech:gt.stone.granite:1>, <gregtech:gt.stone.diorite:1>, <gregtech:gt.stone.andesite:1>] as IIngredient[] {
  recipes.addShaped(<minecraft:stone_stairs> *4, [[cobS, null, null], [cobS, cobS, null], [cobS, cobS, cobS]]);
}

var kimber = <gregtech:gt.stone.kimberlite:1>;
recipes.addShaped(<erebus:umbercobbleStairs1> *4, [[kimber, null, null],[kimber, kimber, null],[kimber, kimber, kimber]]);

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

// Stairs fixes, 6.08.04	- until 6.09.01
var saw = <ore:craftingToolSaw>;
// var plankAsper =	<erebus:planks:4>;
// var plankBamboo =	<erebus:planks:8>;
// var plankBaobab =	<erebus:planks:0>;
// var plankCypress =	<erebus:planks:5>;
// var plankEucalyptus=<erebus:planks:1>;
// var plankMahogany =	<erebus:planks:2>;
// var plankMarshwood =<erebus:planks:10>;
// var plankMossbark =	<erebus:planks:3>;
// var plankRotten =	<erebus:planks:9>;
// var plankBalsam =	<erebus:planks:6>;
// var plankScorched =	<erebus:planks_scorched>;
// var plankVarnished =<erebus:planks_varnished>;
// var plankWhite =	<erebus:planks:7>;
/*
val erebusSlabs = [<erebus:slabPlanksBaobab>, <erebus:slabPlanksEucalyptus>, <erebus:slabPlanksMahogany>,
<erebus:slabPlanksMossbark>, <erebus:slabPlanksAsper>, <erebus:slabPlanksCypress>, <erebus:slabPlanksSap>, 
<erebus:slabPlanksWhite>, <erebus:slabPlanksBamboo>, <erebus:slabPlanksRotten>, <erebus:slabPlanksMarshwood>] as IItemStack[];

val erebusStairs = [<erebus:plankStairBaobab>, <erebus:plankStairEucalyptus>, <erebus:plankStairMahogany>, <erebus:plankStairMossbark>, <erebus:plankStairAsper>, <erebus:plankStairCypress>, <erebus:plankStairSap>, <erebus:plankStairWhite>, <erebus:plankStairBamboo>, <erebus:plankStairRotten>, <erebus:plankStairMarshwood>] as IItemStack[];

for i in [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10] as int[] {
  var erePlank = <erebus:planks>.definition.makeStack(i);
  recipes.remove(erebusStairs[i]);
  recipes.addShaped(erebusStairs[i]*4, [[saw, erePlank],[erePlank, erePlank]]);
  recipes.addShaped(erebusStairs[i]*2, [[saw, erebusSlabs[i]], [erebusSlabs[i], erebusSlabs[i]]]);
}
*/

/* a temporary mixup by GregT	6.08.04 - 6.09.04
var spruce	= <minecraft:planks:1>;
var birch	= <minecraft:planks:2>;
var spr_slab= <minecraft:wooden_slab:1>;
var brch_slb= <minecraft:wooden_slab:2>;
var chsl_spr= <chisel:spruce_planks:*>;
var chs_brch= <chisel:birch_planks:*>;
var birchStair = <minecraft:birch_stairs>;
recipes.remove(<minecraft:spruce_stairs>);
recipes.addShaped(<minecraft:spruce_stairs>*4, [[saw, spruce], [spruce, spruce]]);
recipes.addShaped(<minecraft:spruce_stairs>*2, [[saw, spr_slab], [spr_slab, spr_slab]]);
recipes.addShaped(<minecraft:spruce_stairs>*4, [[saw, chsl_spr], [chsl_spr, chsl_spr]]);
recipes.remove(birchStair);
recipes.addShaped(birchStair*4, [[saw, birch], [birch, birch]]);
recipes.addShaped(birchStair*2, [[saw, brch_slb], [brch_slb, brch_slb]]);
recipes.addShaped(birchStair*4, [[saw, chs_brch], [chs_brch, chs_brch]]);
*/

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
var plateDiamond = <ore:plateDiamond>;
var plateObsidian = <ore:plateObsidian>;
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

# Diamond Armor change
recipes.remove(diamondHelm);
recipes.addShaped(diamondHelm, [
    [plateDiamond, plateDiamond, plateDiamond],
    [plateDiamond, HHammer, plateDiamond]]);
recipes.remove(diamondChestplate);
recipes.addShaped(diamondChestplate, [
    [plateDiamond, HHammer, plateDiamond],
    [plateDiamond, plateDiamond, plateDiamond],
    [plateDiamond, plateDiamond, plateDiamond]]);
recipes.remove(diamondLeggings);
recipes.addShaped(diamondLeggings, [
    [plateDiamond, plateDiamond, plateDiamond],
    [plateDiamond, HHammer, plateDiamond],
    [plateDiamond, null, plateDiamond]]);
recipes.remove(diamondBoots);
recipes.addShaped(diamondBoots, [
    [plateDiamond, null, plateDiamond],
    [plateDiamond, HHammer, plateDiamond]]);

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

