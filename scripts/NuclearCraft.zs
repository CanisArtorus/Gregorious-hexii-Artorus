#modloaded NuclearCraft gregapi_post

// NuclearCraft adaptations to GregTech6
// by Canis Artorus

import minetweaker.item.IItemStack;
import minetweaker.liquid.ILiquidStack;

var CfRTG 	= <NuclearCraft:fuel:140>;
var HEC7 	= <NuclearCraft:fuel:88>;
var HEUox 	= <NuclearCraft:fuel:52>;
var LEA 	= <NuclearCraft:fuel:81>;
var PuRTG 	= <NuclearCraft:fuel:46>;
var basicPlate	= <NuclearCraft:parts:0>;
var advPlate	= <NuclearCraft:parts:9>;
var duPlate		= <NuclearCraft:parts:8>;
var ncCapsule	= <NuclearCraft:fuel:48>;
var ncCan		= <NuclearCraft:fuel:45>;
var blackCell = <NuclearCraft:fuel:33>;
var reactant	= <NuclearCraft:parts:4>;
var toughAlloy	= <NuclearCraft:material:7>;
var toughDust	= <NuclearCraft:material:22>;

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
		mods.MTUtilsGT.addCustomRecipe("gt.recipe.mixer", false, 128, 64, [10000], [soot *2, argent *2, plumb *2, arnDust *2, reactant], toughDust *4);
	  }
	}
  }
  mods.MTUtilsGT.addCustomRecipe("gt.recipe.mixer", true, 72, 200, [10000], [soot *2, reactant], [<liquid:molten.lead> *288, <liquid:molten.iron> *288, <liquid:molten.silver> *288, <liquid:water> *500], [<liquid:steam> *20000], toughAlloy * 4);
}

recipes.remove(toughDust);
// recipes.removeShapeless(<NuclearCraft:material:7>, [reactant, <ore:dustCoal>, <ore:dustCoal>, <ore:ingotIron>, <ore:ingotIron>, <ore:ingotLead>, <ore:ingotLead>, <ore:ingotSilver>, <ore:ingotSilver>]);
recipes.remove(toughAlloy);
recipes.addShapeless(toughAlloy *25, [<NuclearCraft:blockBlock:7>]);

// Recycling
mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", true, 16, 320, [10000, 10000], [basicPlate], [<gregtech:gt.meta.dustSmall:820>, <gregtech:gt.meta.dustSmall:8336>]);	// lead and charcoal
mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", true, 16, 960, [10000, 10000, 10000], [<NuclearCraft:emptyCoolerBlock> *4], [<gregtech:gt.meta.dustSmall:820>*3, <gregtech:gt.meta.dustSmall:8336>*3, reactant]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", true, 16, 1600, [10000, 10000, 10000], [<NuclearCraft:parts:5> *2], [<gregtech:gt.meta.dustSmall:820> *5, <gregtech:gt.meta.dustSmall:8336> *5, reactant*2]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", true, 256, 2314, [10000, 10000, 10000, 10000], [<NuclearCraft:cellBlock>], [<gregtech:gt.meta.dust:820> *6, <gregtech:gt.meta.dust:8336> *2, toughDust *4, <gregtech:gt.meta.dust:8001>]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", true, 16, 3200, [10000, 10000, 10000, 10000], [<NuclearCraft:parts:18> *2], [<gregtech:gt.meta.dustSmall:820> *10, <gregtech:gt.meta.dustSmall:8336> *2, <minecraft:redstone>, <gregtech:gt.meta.dust:290> *2]);

mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", true, 16, 768, [10000], [toughAlloy], toughDust);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", true, 16, 1536, [10000, 10000], [<NuclearCraft:parts:3>], [toughDust*2, <gregtech:gt.meta.dustSmall:820>]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", true, 128, 2048, [10000, 10000, 10000], [duPlate], [toughDust*4, <gregtech:gt.meta.dustSmall:820> *2, <NuclearCraft:material:24> *4]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", true, 16, 1696, [10000, 10000], [<NuclearCraft:reactorBlock:0> *4], [toughDust, <gregtech:gt.meta.dustSmall:820> *3]);

mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", true, 64, 1536, [10000, 10000, 10000, 10000], [<NuclearCraft:parts:19>], [<gregtech:gt.meta.dust:260>, <gregtech:gt.meta.dust:500> *2, <gregtech:gt.meta.dust:790>, <gregtech:gt.meta.dust:8610>*2]);

mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", true, 16, 512, [10000], [<NuclearCraft:parts:12>], <gregtech:gt.meta.dust:290> *2);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", true, 16, 384, [10000], [<NuclearCraft:parts:16>], <gregtech:gt.meta.dust:8610>);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", true, 16, 512, [10000], [<NuclearCraft:parts:13>], <gregtech:gt.meta.dust:500>*2);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", true, 16, 256, [10000], [<NuclearCraft:parts:11>], <gregtech:gt.meta.dust:790>);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", true, 16, 1024, [10000], [<NuclearCraft:parts:10>], <gregtech:gt.meta.dust:260> *2);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", true, 16, 1536, [10000], [<NuclearCraft:parts:17>], <NuclearCraft:material:72> *2);	// MgB2
mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", true, 32, 1024, [10000], [<NuclearCraft:parts:7>], <gregtech:gt.meta.dust:500> *10);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.shredder", true, 16, 64, [10000], [ncCan], <gregtech:gt.meta.dustSmall:500>);

<ore:plateDoubleSilver>.add(<NuclearCraft:parts:15>);

// Plasmas
mods.MTUtilsGT.addCustomRecipe("gt.recipe.canner", true, 256, 16, [10000], [<NuclearCraft:fuel:47>], null as ILiquidStack, <liquid:neutralmatter> *2, ncCapsule);	// neutrons
mods.MTUtilsGT.addCustomRecipe("gt.recipe.canner", true, 128, 16, [10000], [<NuclearCraft:fuel:49>], null as ILiquidStack, <liquid:chargedmatter> *2, ncCapsule);	// protons

// one black cell fills two white cans at parity. four cans fills a capsule - one capsule counts as eight cans of output - each capsule reacts with a whole cell. cell holds 1.0 units of dust.
// can holds half unit; capsule holds two.

// IE conflict
recipes.remove(blackCell);
recipes.addShaped(blackCell*16, [[null, <ore:plateAnyIron>, null], [<ore:plateCurvedAnyIron>, null,<ore:plateCurvedAnyIron>],[null, <ore:plateAnyIron>, null]]);

// Bullets
recipes.addShapeless(<NuclearCraft:dUBullet>, [<gregtech:gt.meta.bulletGtMedium:920>, <gregtech:gt.meta.bulletGtMedium:920>]);
recipes.addShapeless(<ImmersiveEngineering:bullet:3> *2, [<NuclearCraft:dUBullet>]);
recipes.addShapeless(<gregtech:gt.meta.bulletGtMedium:920> *4, [<NuclearCraft:dUBullet>, <NuclearCraft:dUBullet>]);
