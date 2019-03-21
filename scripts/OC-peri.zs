// Created by Canis Artorus

#modloaded gregapi_post OpenComputers

var chisel = <ore:craftingToolChisel>;
var CuWire	= <ore:wireFineAnyCopper>;
var cupPlastic = <ore:casingSmallPlastic>;
var cupStainless = <ore:casingSmallStainlessSteel>;
var gtAuPCB = <gregtech:gt.multiitem.technological:30004>;
var gtChip1 = <gregtech:gt.multiitem.technological:30301>;
var gtChip2 = <gregtech:gt.multiitem.technological:30302>;
var gtChip3 = <gregtech:gt.multiitem.technological:30303>;
var gtChip4 = <gregtech:gt.multiitem.technological:30304>;
var gtChip5 = <gregtech:gt.multiitem.technological:30305>;
var gtChip6 = <gregtech:gt.multiitem.technological:30306>;
var gtCuPCB = <gregtech:gt.multiitem.technological:30002>;
var gtHDDset = <gregtech:gt.multitileentity:19001>;
var gtULVPump = <gregtech:gt.multiitem.technological:12020>;
//var portaScanner = <gregtech:gt.multiitem.randomtools:9002>;
var screwdriver = <ore:craftingToolScrewdriver>;

var ocALU = <OpenComputers:item:27>;
var ocCable = <OpenComputers:cable>;
var ocChip1 = <OpenComputers:item:24>;
var ocChip2 = <OpenComputers:item:25>;
var ocChip3 = <OpenComputers:item:26>;
var ocCU = <OpenComputers:item:28>;
var ocInkEmpty = <OpenComputers:item:94>;
var ocInkFull = <OpenComputers:item:95>;
var ocRaid = <OpenComputers:raid>;
var ocRam1 = <OpenComputers:item:1>;
var ocRam3 = <OpenComputers:item:2>;
var ocRam5 = <OpenComputers:item:38>;
var transistor = <OpenComputers:item:23>;

var duckEars = <OpenPeripheral:generic>;
var remoteKeyboard = <OpenPeripheral:keyboard>;


// oredict GT things into the OC recipes
// <ore:oc:analyzer>.add(portaScanner);
<ore:oc:materialCircuitBoardPrinted>.add(gtAuPCB);
<ore:oc:materialCircuitBoardPrinted>.remove(<OpenComputers:item:32>);
<ore:oc:hdd1>.addAll(<ore:gt:usbdrive1>);
<ore:oc:hdd2>.addAll(<ore:gt:usbdrive2>);
<ore:oc:hdd3>.addAll(<ore:gt:usbdrive3>);
<ore:oc:solarGeneratorUpgrade>.add(<StevesCarts:ModuleComponents:44>);

recipes.addShapedMirrored(ocInkEmpty, [
	[cupStainless, cupStainless, cupStainless],
	[transistor, cupStainless, transistor],
	[screwdriver, gtULVPump, chisel]]);
recipes.addShapedMirrored(ocInkEmpty, [
	[cupPlastic, cupPlastic, cupPlastic],
	[transistor, cupPlastic, transistor],
	[screwdriver, gtULVPump, chisel]]);
recipes.addShapeless(ocRaid, [gtHDDset, <ore:oc:cpu3>]);

recipes.addShaped(<OpenComputers:wrench>, [[<ore:plateAnyIron>, null, <ore:plateAnyIron>],
	[null, ocChip1, null],[null, <ore:toolHeadScrewdriverAnyIron>, null]]);
recipes.addShaped(ocCable *6, [[CuWire, CuWire, CuWire], [CuWire, <ore:dustGlass>, CuWire], [CuWire, CuWire, CuWire]]);

mods.MTUtilsGT.addCustomRecipe("gt.recipe.press", false, 32, 250, [10000], 
	[gtCuPCB, ocChip1 *3], 
	[ocRam1]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.press", false, 40, 250, [10000], 
	[gtAuPCB, ocChip2 *3, gtChip4], 
	[ocRam3]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.press", false, 40, 260, [10000], 
	[gtAuPCB, ocChip2, gtChip5], 
	[ocRam3]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.press", false, 44, 300, [10000], 
	[gtAuPCB, ocChip2 *3, gtChip6], 
	[ocRam3 * 2]);
// 30006 = platinum PCB
mods.MTUtilsGT.addCustomRecipe("gt.recipe.press", false, 48, 250, [10000], 
	[<gregtech:gt.multiitem.technological:30006>, ocChip3 *3, gtChip6], 
	[ocRam5]);
// 8668 = Battery Alloy
mods.MTUtilsGT.addCustomRecipe("gt.recipe.press", false, 16, 500, [10000],
	[<minecraft:redstone>, <gregtech:gt.meta.stick:8668> * 3],
	[transistor * 6]);
// 8333 = redstone vanilla
mods.MTUtilsGT.addCustomRecipe("gt.recipe.press", false, 16, 250, [10000],
	[<gregtech:gt.meta.dustSmall:8333> * 2, <gregtech:gt.meta.bolt:8668> * 3],
	[transistor * 3]);
// mods.MTUtilsGT.addCustomRecipe("gt.recipe.press", false, 25, 480, [10000],
//	[<IC2:itemPartCircuit>, transistor * 4],
//	[ocChip1 * 4]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.press", false, 25, 480, [10000],
	[gtChip1, transistor * 4],
	[ocChip1 * 4]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.press", false, 25, 600, [10000],
	[gtChip2, transistor * 6],
	[ocChip1 * 6]);
// mods.MTUtilsGT.addCustomRecipe("gt.recipe.press", false, 25, 640, [10000],
//	[<IC2:itemPartCircuitAdv>, transistor * 8],
//	[ocChip2 * 4]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.press", false, 25, 640, [10000],
	[gtChip3, transistor * 8],
	[ocChip2 * 4]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.press", false, 25, 720, [10000],
	[gtChip4, transistor * 12],
	[ocChip2 * 6]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.press", false, 25, 800, [10000],
	[gtChip5, transistor * 16],
	[ocChip3 * 4]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.press", false, 26, 900, [10000],
	[gtChip6, transistor * 24],
	[ocChip3 * 6]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.press", false, 24, 500, [10000],
	[gtCuPCB, transistor * 3, <minecraft:comparator>],
	[ocALU]);
// 30315 = Signalum circuit chip
mods.MTUtilsGT.addCustomRecipe("gt.recipe.press", false, 32, 750, [10000],
	[<gregtech:gt.multiitem.technological:30315>, transistor * 6],
	[ocCU * 3]);
for fill in <ore:dustAnySiliconDioxide>.items {
	// 290 = copper
	mods.MTUtilsGT.addCustomRecipe("gt.recipe.loom", false, 32, 64, [10000],
		[<gregtech:gt.meta.wireFine:290> * 8, fill],
		[ocCable * 8]);
	// 8640 = annealed copper
	mods.MTUtilsGT.addCustomRecipe("gt.recipe.loom", false, 32, 64, [10000],
		[<gregtech:gt.meta.wireFine:8640> * 8, fill],
		[ocCable * 9]);
}
// for fill in <ore:dustTinyAnySiliconDioxide>.items {
	// copper MV = 1
//	mods.MTUtilsGT.addCustomRecipe("gt.recipe.loom", false, 32, 10, [10000],
//		[<IC2:itemCable:1>, fill],
//		[ocCable]);
// }
// mods.MTUtilsGT.addCustomRecipe("gt.recipe.injector", false, 8, 80, [10000],	//???
	// [ocInkEmpty], 
	// [<liquid:dye.chemical.cyan> * 1000, <liquid:dye.chemical.magenta> * 1000, <liquid:dye.chemical.yellow> * 1000,  <liquid:dye.chemical.black> * 1000],
	// null, [ocInkFull]);

# // --- OpenPeripheral --- // #

recipes.remove(remoteKeyboard);
recipes.addShaped(remoteKeyboard, [
	[<ore:screwAnyCopper>, duckEars, <minecraft:ender_pearl>],
	[<gregtech:gt.multiitem.technological:1027>, <ore:oc:materialButtonGroup>, screwdriver],
	[<ore:plateTinAlloy>, <ore:oc:materialArrowKey>, <ore:oc:materialNumPad>]]);
recipes.addShaped(remoteKeyboard, [
	[duckEars, <minecraft:ender_pearl>],
	[<ore:screwAnyCopper>, screwdriver],
	[<OpenComputers:keyboard>, null]]);
