

// var vinteumOre		= <arsmagica2:vinteumOre:0>;	# 8316
// var vinteumDust		= <arsmagica2:itemOre:0>;
var arcAsh			= <ore:dustArcaneAsh>;
var chimeriteOre	= <arsmagica2:vinteumOre:1>;
var chimeriteGem	= <arsmagica2:itemOre:4>;
var moonstoneOre	= <arsmagica2:vinteumOre:3>;
var moonstoneGem	= <arsmagica2:itemOre:7>;
var obs				= <ore:obsidian>;
var plank			= <ore:plankAnyWood>;
var sunstoneOre		= <arsmagica2:vinteumOre:4>;
var sunsoneGem		= <arsmagica2:itemOre:6>;
var witchPlank		= <arsmagica2:planksWitchwood>;
var witchSlab		= <arsmagica2:witchwoodSingleSlab>;

// Less expensive Essence
recipes.addShaped(<arsmagica2:essenceRefiner>, [[plank, <ore:gemZircon>, plank], [obs, arcAsh, obs], [plank, plank, plank]]);
// More expensive Deconstructor
recipes.remove(<arsmagica2:deficitCrystal>);

// fix mis-diagnoses by GregTech parsing.
<ore:oreMoonAnyStone>.remove(moonstoneOre);
<ore:oreMoonMoonstone>.add(moonstoneOre);
mods.MTUtilsGT.removeRecipe("gt.recipe.crusher", [moonstoneOre], [null as ILiquidStack], [<gregtech:gt.meta.crushed:8500>*2, <gregtech:gt.meta.dust:8513>]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.crusher", false, 16, 64, [7500, 10000], [moonstoneOre *1], [moonstoneGem *2, <gregtech:gt.meta.dust:8513>]);	# moon rock

// add missing compatibility # until GT 6.13.01
// mods.MTUtilsGT.addCustomRecipe("gt.recipe.crusher", false, 16, 64, [7500, 10000], [chimeriteOre *1], [chimeriteGem*2, <gregtech:gt.meta.dust:8500>]);	# stone
// mods.MTUtilsGT.addCustomRecipe("gt.recipe.crusher", false, 16, 64, [7500, 10000], [sunstoneOre *1], [sunsoneGem*2, <gregtech:gt.meta.dust:8502>]);	# netherrack

recipes.remove(<arsmagica2:stairsWitchwood>);
recipes.addShapedMirrored(<arsmagica2:stairsWitchwood>*4, [
[<ore:craftingToolSawAxe>, witchPlank],
[witchPlank, witchPlank]]);
recipes.addShapedMirrored(<arsmagica2:stairsWitchwood>*2, [
[<ore:craftingToolSawAxe>, witchSlab],
[witchSlab, witchSlab]]);

<ore:caEssenceIce>.add(<arsmagica2:essence:6>);
