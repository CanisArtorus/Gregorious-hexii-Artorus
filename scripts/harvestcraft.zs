// --- Created by Jason McRay --- 

import mods.nei.NEI;
// import mods.gregtech.Centrifuge;
import minetweaker.item.IItemStack;

# Aliases
var piston = <minecraft:piston>;
var plateSteel = <ore:plateAnyIronSteel>;
var presser = <harvestcraft:presser>;
var sink = <harvestcraft:sink:*>;
var waterFresh = <harvestcraft:freshwaterItem>;
var cotton = <harvestcraft:wovencottonItem>;
var saltPHC = <harvestcraft:saltItem>;
var saltGT = <gregtech:gt.meta.dust:8204>;	//--item.01:2817>;
var foodSalt = <ore:foodSalt>;
var itemSalt = <ore:itemSalt>;
var dustSalt = <ore:dustSalt>;
var rawRabbit = <harvestcraft:rabbitrawItem>;
var rawVenison = <harvestcraft:venisonrawItem>;
var cookedRabbit = <harvestcraft:rabbitcookedItem>;
var cookedVenison = <harvestcraft:venisoncookedItem>;
var fishingtrapBait = <harvestcraft:fishtrapbaitItem>;
var mcstring = <minecraft:string>;
var fishBait = <ore:listAllFishBait>;

// var cookedMeat = [cookedRabbit, cookedVenison] as IItemStack[];
// var rawMeat = [rawRabbit, rawVenison] as IItemStack[];

var disTt = format.red(format.bold("This item is DISABLED!"));
# Blocks/Items Removal
recipes.remove(sink);
sink.addTooltip(disTt);
recipes.remove(saltPHC);
saltPHC.addTooltip(disTt);
<harvestcraft:mortarandpestleItem>.addTooltip(disTt);

# Recipe Tweaks
recipes.remove(presser);
recipes.addShaped(presser, [
	[plateSteel, piston, plateSteel],
	[plateSteel, null, plateSteel],
	[plateSteel, piston, plateSteel]]);
    
# Recipe Fixes
recipes.remove(cotton);
recipes.addShapeless(cotton, [mcstring, mcstring, mcstring]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.loom", false, 16, 16, [10000], [<gregapi:gt.integrated_circuit:2> *0, mcstring * 2], [cotton]);

# Salt is already easy, pot salt was for infinite water
foodSalt.remove(saltPHC);
itemSalt.remove(saltPHC);
dustSalt.remove(saltPHC);
<ore:dustAnySalt>.remove(saltPHC);
// itemSalt.remove(saltGT);
// dustSalt.remove(saltGT);
foodSalt.addAll(<ore:dustTinySalt>);
foodSalt.addAll(<ore:dustTinyRockSalt>);
furnace.addRecipe(<gregtech:gt.meta.dustTiny:8204>, <ore:container1000water>);

# Cooking Food
furnace.addRecipe(cookedRabbit, rawRabbit);
furnace.addRecipe(cookedVenison, rawVenison);
    
# Grub as fish bait
fishBait.addAll(<ore:listAllfishraw>);
fishBait.addAll(<ore:grubBee>);
fishBait.addAll(<ore:foodChum>);
fishBait.addAll(<ore:dustFishRaw>);
recipes.remove(fishingtrapBait);
recipes.addShapeless(fishingtrapBait * 4, [<minecraft:string>, fishBait, fishBait, fishBait]);

// ----------------------------------------
// And Cooking fro Blockheads
// by Canis Artorus

var counter		= <cookingbook:cookingtable>;
var glassPlate	= <gregtech:gt.meta.plateGem:8001>;
var ironPlate	= <ore:plateAnyIronOrSteel>;
var log			= <ore:logWood>;
var ring		= <ore:ringAnyIronOrSteel>;
var slab		= <ore:slabWood>;

recipes.remove(<harvestcraft:oven>);
recipes.addShaped(<harvestcraft:oven>, [[null, <minecraft:iron_bars>, null],[ironPlate, <minecraft:furnace>, ironPlate],[null, ironPlate, null]]);
recipes.remove(<cookingbook:cookingoven>);
recipes.addShaped(<cookingbook:cookingoven>, [[ironPlate, glassPlate, ironPlate],
	[<minecraft:furnace>, glassPlate, <minecraft:furnace>],
	[<ore:craftingToolScrewdriver>, ironPlate, <ore:screwAnyIronOrSteel>]]);
	
recipes.remove(<cookingbook:sink>);
recipes.addShaped(<cookingbook:sink>, 
	[[<ore:craftingToolMonkeyWrench>, <gregtech:gt.multitileentity:32728>, <ore:craftingToolWrench>],
	[log, <minecraft:bucket>, log],[log, <ore:pipeSmallAnyCopper>, log]]);
	
recipes.addShaped(<cookingbook:toolrack>, [[slab, slab, slab],[ring, null, ring],[ring, null, ring]]);
	
recipes.remove(counter);
for counterTop in [<minecraft:stained_hardened_clay:15>, <gregtech:gt.stone.granite.slab.0:7>, <gregtech:gt.stone.granite.black.slab.0:7>, <gregtech:gt.stone.granite.red.slab.0:7>, <gregtech:gt.stone.marble.slab.0:7>, <chisel:granite:1>] as IItemStack[] {
	recipes.addShaped(counter, [[counterTop, <cookingbook:recipebook:*>, counterTop],[log, <minecraft:crafting_table>, log],[log,<ore:craftingToolSaw>,log]]);
}