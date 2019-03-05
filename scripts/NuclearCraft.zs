#modloaded NuclearCraft gregapi_post

// NuclearCraft adaptations to GregTech6
// by Canis Artorus

import minetweaker.item.IItemStack;

var CfRTG 	= <NuclearCraft:fuel:140>;
var HEC7 	= <NuclearCraft:fuel:88>;
var HEUox 	= <NuclearCraft:fuel:52>;
var LEA 	= <NuclearCraft:fuel:81>;
var PuRTG 	= <NuclearCraft:fuel:46>;
var advPlate	= <NuclearCraft:parts:9>;
var duPlate		= <NuclearCraft:parts:8>;
var ncCapsule	= <NuclearCraft:fuel:48>;
var reactant	= <NuclearCraft:parts:4>;
var toughAlloy	= <NuclearCraft:material:7>;

// NuclearCraft - GregTech pairing
<ore:tinyU235Base>.add(<gregtech:gt.meta.dustTiny:921>);
<ore:tinyU235Base>.add(<gregtech:gt.meta.nugget:921>);
<ore:tinyU235>.addAll(<ore:tinyU235Base>);
<ore:dustTinyUranium235>.add(<NuclearCraft:material:27>);
<ore:U235Base>.add(<gregtech:gt.meta.dust:921>);
<ore:U235>.add(<gregtech:gt.meta.dust:921>);
<ore:dustUranium235>.add(<NuclearCraft:material:26>);

<ore:tinyPu241Base>.add(<gregtech:gt.meta.dustTiny:943>);
<ore:tinyPu241Base>.add(<gregtech:gt.meta.nugget:943>);
<ore:tinyPu241>.addAll(<ore:tinyPu241Base>);
<ore:dustTinyPlutonium241>.add(<NuclearCraft:material:37>);
<ore:Pu241Base>.add(<gregtech:gt.meta.dust:943>);
<ore:Pu241>.add(<gregtech:gt.meta.dust:943>);
<ore:dustPlutonium241>.add(<NuclearCraft:material:36>);

<ore:tinyPu239Base>.add(<gregtech:gt.meta.dustTiny:945>);
<ore:tinyPu239Base>.add(<gregtech:gt.meta.nugget:945>);
<ore:tinyPu239>.addAll(<ore:tinyPu239Base>);
<ore:dustTinyPlutonium243>.add(<NuclearCraft:material:33>);
<ore:Pu239Base>.add(<gregtech:gt.meta.dust:945>);
<ore:Pu239>.add(<gregtech:gt.meta.dust:945>);
<ore:dustPlutonium243>.add(<NuclearCraft:material:32>);

<ore:tinyAm241Base>.add(<gregtech:gt.meta.dustTiny:951>);
<ore:tinyAm241Base>.add(<gregtech:gt.meta.nugget:951>);
<ore:tinyAm241>.addAll(<ore:tinyAm241Base>);
<ore:dustTinyAmericium241>.add(<NuclearCraft:material:91>);
<ore:Am241Base>.add(<gregtech:gt.meta.dust:951>);
<ore:Am241>.add(<gregtech:gt.meta.dust:951>);
<ore:dustAmericium241>.add(<NuclearCraft:material:90>);

<ore:tinyLi6>.add(<gregtech:gt.meta.dustTiny:31>);
<ore:dustTinyLithium6>.add(<NuclearCraft:material:69>);
<ore:Li6>.add(<gregtech:gt.meta.dust:31>);
<ore:dustLithium6>.add(<NuclearCraft:material:46>);

<ore:blockMagnesium>.addAll(<ore:blockIngotMagnesium>);
<ore:blockMagnesium>.addAll(<ore:blockSolidMagnesium>);

// Naquadah Enriched nuclear fuels
mods.MTUtilsGT.addCustomRecipe("gt.recipe.canner", true, 64, 400, [10000], [ncCapsule, <gregtech:gt.meta.dust:1741> *3], CfRTG);
recipes.addShapeless(HEUox, [<ore:U238>, <ore:U238>, <ore:U238>, <ore:U235>, <ore:U235>, <gregtech:gt.meta.dustTiny:1740>, <ore:dustLead>, <ore:dustLead>]);
recipes.addShapeless(LEA, [<ore:Am243>, <ore:Am243>, <ore:Am243>, <ore:Am243>, <ore:Am242Base>, <gregtech:gt.meta.dustTiny:1741>, <ore:dustLead>, <ore:dustLead>]);
recipes.addShapeless(HEC7, [<gregtech:gt.meta.dust:1740>, <gregtech:gt.meta.dust:1740>, <gregtech:gt.meta.dust:1741>, <ore:dustLead>, <ore:dustLead>]);
recipes.addShaped(<NuclearCraft:nuke>, [[null, duPlate, null],[duPlate, <gregtech:gt.meta.dust:1741>, duPlate],[null, duPlate,null]]);
recipes.addShaped(<NuclearCraft:antimatterBomb>, [[advPlate, advPlate, advPlate],[advPlate, <gregtech:gt.meta.dust:1742>, advPlate],[advPlate, advPlate,advPlate]]);

// Dust Mixing by Machine
for lapis in [<gregtech:gt.meta.dust:8332>, <NuclearCraft:material:10>] as IItemStack[] {	// <ore:dustLapis>.items {
	mods.MTUtilsGT.addCustomRecipe("gt.recipe.mixer", true, 16, 32, [10000], [lapis, <minecraft:redstone>, <minecraft:sugar>], reactant *3);
}
// Tough Alloy	- make steel level (by power requirements), stainless by machine required
for soot in <ore:dustAnyCarbon>.items {
  for argent in <ore:dustSilver>.items {
    for plumb in <ore:dustLead>.items {
	  for arnDust in <ore:dustAnyIron>.items {
		mods.MTUtilsGT.addCustomRecipe("gt.recipe.mixer", false, 128, 64, [10000], [soot *2, argent *2, plumb *2, arnDust *2, reactant], <NuclearCraft:material:22> *4);
	  }
	}
  }
  mods.MTUtilsGT.addCustomRecipe("gt.recipe.mixer", true, 72, 200, [10000], [soot *2, reactant], [<liquid:molten.lead> *288, <liquid:molten.iron> *288, <liquid:molten.silver> *288, <liquid:water> *500], [<liquid:steam> *20000], toughAlloy);
}

recipes.remove(<NuclearCraft:material:22>);
// recipes.removeShapeless(<NuclearCraft:material:7>, [reactant, <ore:dustCoal>, <ore:dustCoal>, <ore:ingotIron>, <ore:ingotIron>, <ore:ingotLead>, <ore:ingotLead>, <ore:ingotSilver>, <ore:ingotSilver>]);
recipes.remove(toughAlloy);
recipes.addShapeless(toughAlloy *25, [<NuclearCraft:blockBlock:7>]);

// Bullets
recipes.addShapeless(<NuclearCraft:dUBullet>, [<gregtech:gt.meta.bulletGtMedium:920>, <gregtech:gt.meta.bulletGtMedium:920>]);
recipes.addShapeless(<ImmersiveEngineering:bullet:3> *2, [<NuclearCraft:dUBullet>]);
recipes.addShapeless(<gregtech:gt.meta.bulletGtMedium:920> *4, [<NuclearCraft:dUBullet>, <NuclearCraft:dUBullet>]);
