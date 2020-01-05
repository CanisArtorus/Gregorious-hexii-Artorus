#modloaded libVulpes gregapi_post

// by CanisArtorus

<ore:itemBattery>.addAll(<ore:gt:re-battery1>);
<ore:oreTitanium>.remove(<libVulpes:libVulpesore0:8>);
<ore:turfMoon>.addAll(<ore:stoneMoonTurf>);
<ore:stoneMoonTurf>.mirror(<ore:turfMoon>);

var basicStructure	= <libVulpes:blockStructureBlock>;
var advStructure	= <libVulpes:tile.advStructureMachine>;

var screen =	<advancedRocketry:miscpart:0>;

var sheetTi	=	<libVulpes:libVulpesproductsheet:7>;
var rodTi	=	<gregtech:gt.meta.stick:220>;

var steelFan =	<libVulpes:libVulpesproductfan:6>;

// Scrap in favour of GT
var riddance = format.red("This item is disabled.");
// silicon boules
<libVulpes:libVulpesproductboule:3>.addTooltip(riddance);

for thing in <ore:stoneMoonTurf>.items {
	mods.MTUtilsGT.addCustomRecipe("gt.recipe.crusher", false, 16, 8, [10000], [thing], <gregtech:gt.meta.dust:8514>);
	mods.MTUtilsGT.addCustomRecipe("gt.recipe.mortar", false, 16, 32, [10000], [thing], <gregtech:gt.meta.dust:8514>);
	mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", false, 16, 32, [10000], [thing], <gregtech:gt.meta.dust:8514>);
}

mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", false, 16, 64, [10000], [<gregtech:gt.meta.plateGemTiny:140>*2], <liquid:water>*200, null, <advancedRocketry:circuitIC:0>);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", false, 16, 48, [10000], [<gregtech:gt.meta.plateGemTiny:140>*2], <liquid:ic2distilledwater>*200, null, <advancedRocketry:circuitIC:0>);mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", false, 16, 16, [10000], [<gregtech:gt.meta.plateGemTiny:140>*2], <liquid:lubricant>*200, null, <advancedRocketry:circuitIC:0>);

// Infinitech 3 (by JasonMcRay, pyure, Agrax)

// GT the gears, plates, rods
// Greg did most
// recipes.remove(<libVulpes:libVulpesproductgear:6>);
// recipes.remove(<libVulpes:libVulpesproductgear:7>);
// recipes.remove(<advancedRocketry:advancedRocketryproductgear:0>);
// recipes.remove(<advancedRocketry:advancedRocketryproductgear:1>);

recipes.remove(<advancedRocketry:miscpart:1>);

// Structure blocks
// recipes.remove(basicStructure);
// mods.MTUtilsGT.addCustomRecipe("gt.recipe.welder", false, 512, 200, [10000], [<ore:plateStainlessSteel> *4, <ore:stickStainlessSteel> *4], basicStructure *4);
recipes.remove(advStructure);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.welder", false, 2048, 200, [10000], [sheetTi *4, rodTi *4], advStructure *4);

// disable ArcFurnace and Coal Generator
