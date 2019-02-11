

// var vinteumOre		= <arsmagica2:vinteumOre:0>;	# 8316
// var vinteumDust		= <arsmagica2:itemOre:0>;
var chimeriteOre	= <arsmagica2:vinteumOre:1>;
var chimeriteGem	= <arsmagica2:itemOre:4>;
var moonstoneOre	= <arsmagica2:vinteumOre:3>;
var moonstoneGem	= <arsmagica2:itemOre:7>;
var sunstoneOre		= <arsmagica2:vinteumOre:4>;
var sunsoneGem		= <arsmagica2:itemOre:6>;
var witchPlank		= <arsmagica2:planksWitchwood>;
var witchSlab		= <arsmagica2:witchwoodSingleSlab>;

// fix mis-diagnoses by GregTech parsing.
<ore:oreMoonAnyStone>.remove(moonstoneOre);
<ore:oreMoonMoonstone>.add(moonstoneOre);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.crusher", false, 16, 64, [7500, 10000], [moonstoneOre *1], [moonstoneGem *2, <gregtech:gt.meta.dust:8513>]);	# moon rock

// add missing compatibility
mods.MTUtilsGT.addCustomRecipe("gt.recipe.crusher", false, 16, 64, [7500, 10000], [chimeriteOre *1], [chimeriteGem*2, <gregtech:gt.meta.dust:8500>]);	# stone
mods.MTUtilsGT.addCustomRecipe("gt.recipe.crusher", false, 16, 64, [7500, 10000], [sunstoneOre *1], [sunsoneGem*2, <gregtech:gt.meta.dust:8502>]);	# netherrack

recipes.remove(<arsmagica2:stairsWitchwood>);
recipes.addShapedMirrored(<arsmagica2:stairsWitchwood>*4, [
[<ore:craftingToolSaw>, witchPlank],
[witchPlank, witchPlank]]);
recipes.addShapedMirrored(<arsmagica2:stairsWitchwood>*2, [
[<ore:craftingToolSaw>, witchSlab],
[witchSlab, witchSlab]]);
