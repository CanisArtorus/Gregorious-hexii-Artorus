#modloaded Thaumcraft gregapi_post ThaumicTinkerer SGCraft Railcraft TwilightForest OpenComputers chisel

//***************************
// ITTweak - Thaumcraft
//  modified by Xavion
//	further modified by Canis Artorus
// Nearly entirely derived from KRTweak by Nono
//
//
// Change log: moved to separate file.
//***************************

import minetweaker.item.IIngredient;
import mods.nei.NEI;
import mods.thaumcraft.Arcane;
import mods.thaumcraft.Aspects;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.Infusion;
import mods.thaumcraft.Research;
import mods.thaumcraft.Warp;
// import mods.ic2.Compressor;
// import mods.ic2.Macerator;
import mods.MTUtilsGT;
import minetweaker.game.IGame;
import minetweaker.liquid.ILiquidStack;

print("Initializing Thaumcraft Changes");

//*******************
// Item declarations
//*******************

var ingotThaumium = <Thaumcraft:ItemResource:2>;
var tcLabel = <Thaumcraft:ItemResource:13>;
var salisMundus = <Thaumcraft:ItemResource:14>;
var charmPrimal = <Thaumcraft:ItemResource:15>;
var ingotVoid = <Thaumcraft:ItemResource:16>;
var lensDiamond = <gregtech:gt.meta.lens:8300>;
var rodTitanium = <gregtech:gt.meta.stick:220>;
var gemVinteum = <gregtech:gt.meta.gem:8327>;	#purified
var dustPyrotheum = <gregtech:gt.meta.dust:8212>;

var ringGold = <gregtech:gt.meta.ring:790>;
// pseudo-
var ringIchor = <gregtech:gt.meta.ring:8677>;	#Midasium
var clusterAer			= <Thaumcraft:blockCrystal:0>;
var clusterAqua			= <Thaumcraft:blockCrystal:1>;
var shardNether			= <ThaumicTinkerer:kamiResource:6>;
var shardEnder          = <ThaumicTinkerer:kamiResource:7>;
var blackholeRing       = <ThaumicTinkerer:blockTalisman>;
var focusHole           = <Thaumcraft:FocusPortableHole>;
// var focusShock          = <Thaumcraft:FocusShock>;
var focusExcavation     = <Thaumcraft:FocusExcavation>;
var pavingTravel        = <Thaumcraft:blockCosmeticSolid:2>;
var dislocator          = <ThaumicTinkerer:dislocator>;
var plateNaquadahAlloy  = <gregtech:gt.meta.plate:8684>;	//-	01:17325>;


//**************************
// Removing default recipes
//**************************

// Firestone
recipes.remove(<Railcraft:firestone.cut>);
recipes.remove(<Railcraft:firestone.refined:4999>);
// Goggles
Arcane.removeRecipe(<Thaumcraft:ItemGoggles>);
// Hungry Chest
Arcane.removeRecipe(<Thaumcraft:blockChestHungry>);
// Arcane Lamp
Arcane.removeRecipe(<Thaumcraft:blockMetalDevice:7>);
// Tallow candle
// recipes.removeShaped(<Thaumcraft:blockCandle:0>);
// Enchanted Fabric
Arcane.removeRecipe(<Thaumcraft:ItemResource:7>);
// Bone Bow
Arcane.removeRecipe(<Thaumcraft:ItemBowBone>);
// Focus Pouch
Arcane.removeRecipe(<Thaumcraft:FocusPouch>);
// Boots of the Traveller
Infusion.removeRecipe(<Thaumcraft:BootsTraveller>);
// Thaumium
Crucible.removeRecipe(ingotThaumium);
// Bellows
Arcane.removeRecipe(<Thaumcraft:blockWoodenDevice>);
// Deconstructor
Arcane.removeRecipe(<Thaumcraft:blockTable:14>);
// Golem Fetter
// Arcane.removeRecipe(<Thaumcraft:blockCosmeticSolid:9>);
// Arcane Bore
Arcane.removeRecipe(<Thaumcraft:blockWoodenDevice:4>);
Infusion.removeRecipe(<Thaumcraft:blockWoodenDevice:5>);
// Mirrors
Infusion.removeRecipe(<Thaumcraft:blockMirror:0>);
Infusion.removeRecipe(<Thaumcraft:blockMirror:6>);
Infusion.removeRecipe(<Thaumcraft:HandMirror>);
// Mirrored Glass
Arcane.removeRecipe(<Thaumcraft:ItemResource:10>);
// duplication
Crucible.removeRecipe(<minecraft:glowstone_dust>);
Crucible.removeRecipe(<minecraft:gunpowder>);
// Crucible.removeRecipe(<gregtech:gt.meta.nugget:130>); // Aluminium

// Wand Caps
recipes.remove(<Thaumcraft:WandCap>);
Arcane.removeRecipe(<Thaumcraft:WandCap:1>);
Infusion.removeRecipe(<Thaumcraft:WandCap:2>);
Arcane.removeRecipe(<Thaumcraft:WandCap:3>);
Infusion.removeRecipe(<Thaumcraft:WandCap:4>);
Arcane.removeRecipe(<Thaumcraft:WandCap:5>);
Arcane.removeRecipe(<Thaumcraft:WandCap:6>);
Infusion.removeRecipe(<Thaumcraft:WandCap:7>);
Arcane.removeRecipe(<Thaumcraft:WandCap:8>);
// Wooden Wand
recipes.remove(<Thaumcraft:WandCasting>);
// // Greatwood
// Arcane.removeRecipe(<Thaumcraft:WandRod>);
// // Silverwood
// Infusion.removeRecipe(<Thaumcraft:WandRod:2>);
// Mid-tier
Infusion.removeRecipe(<Thaumcraft:WandRod:1>); // Obsidian
Infusion.removeRecipe(<Thaumcraft:WandRod:3>); // Ice
Infusion.removeRecipe(<Thaumcraft:WandRod:4>); // Quartz
Infusion.removeRecipe(<Thaumcraft:WandRod:5>); // Reed
Infusion.removeRecipe(<Thaumcraft:WandRod:6>); // Blaze
Infusion.removeRecipe(<Thaumcraft:WandRod:7>); // Bone
// Staff Cores
Arcane.removeRecipe(<Thaumcraft:WandRod:50>);
Arcane.removeRecipe(<Thaumcraft:WandRod:51>);
Arcane.removeRecipe(<Thaumcraft:WandRod:52>);
Arcane.removeRecipe(<Thaumcraft:WandRod:53>);
Arcane.removeRecipe(<Thaumcraft:WandRod:54>);
Arcane.removeRecipe(<Thaumcraft:WandRod:55>);
Arcane.removeRecipe(<Thaumcraft:WandRod:56>);
Arcane.removeRecipe(<Thaumcraft:WandRod:57>);
// Basic Infusion Tools
Infusion.removeRecipe(<Thaumcraft:ItemPickaxeElemental>);
Infusion.removeRecipe(<Thaumcraft:ItemAxeElemental>);
Infusion.removeRecipe(<Thaumcraft:ItemSwordElemental>);
Infusion.removeRecipe(<Thaumcraft:ItemShovelElemental>);
Infusion.removeRecipe(<Thaumcraft:ItemHoeElemental>);
// Thaumostatic Harness
Infusion.removeRecipe(<Thaumcraft:HoverHarness>);
Infusion.removeRecipe(<Thaumcraft:ItemGirdleHover>);

// Golems
Arcane.removeRecipe(<Thaumcraft:ItemGolemCore:100>);
Crucible.removeRecipe(<Thaumcraft:ItemGolemPlacer:0>);
Crucible.removeRecipe(<Thaumcraft:ItemGolemPlacer:1>);
Crucible.removeRecipe(<Thaumcraft:ItemGolemPlacer:2>);
Crucible.removeRecipe(<Thaumcraft:ItemGolemPlacer:3>);
Crucible.removeRecipe(<Thaumcraft:ItemGolemPlacer:4>);
Crucible.removeRecipe(<Thaumcraft:ItemGolemPlacer:5>);
Crucible.removeRecipe(<Thaumcraft:ItemGolemPlacer:6>);
Crucible.removeRecipe(<Thaumcraft:ItemGolemPlacer:7>);
//Crucible.removeRecipe(<Thaumcraft:ItemGolemCore:0>);
//Crucible.removeRecipe(<Thaumcraft:ItemGolemCore:1>);
//Crucible.removeRecipe(<Thaumcraft:ItemGolemCore:2>);
Crucible.removeRecipe(<Thaumcraft:ItemGolemCore:3>);
Crucible.removeRecipe(<Thaumcraft:ItemGolemCore:4>);
//Crucible.removeRecipe(<Thaumcraft:ItemGolemCore:5>);
Infusion.removeRecipe(<Thaumcraft:ItemGolemCore:6>);
Infusion.removeRecipe(<Thaumcraft:ItemGolemCore:7>);
Infusion.removeRecipe(<Thaumcraft:ItemGolemCore:8>);
Crucible.removeRecipe(<Thaumcraft:ItemGolemCore:9>);
Infusion.removeRecipe(<Thaumcraft:ItemGolemCore:10>);
Infusion.removeRecipe(<Thaumcraft:ItemGolemCore:11>);

// Voidmetal
Crucible.removeRecipe(ingotVoid);
recipes.remove(<Thaumcraft:ItemShovelVoid>);
recipes.remove(<Thaumcraft:ItemPickVoid>);
recipes.remove(<Thaumcraft:ItemAxeVoid>);
recipes.remove(<Thaumcraft:ItemSwordVoid>);
recipes.remove(<Thaumcraft:ItemHoeVoid>);
recipes.remove(<Thaumcraft:ItemHelmetVoid>);
recipes.remove(<Thaumcraft:ItemLeggingsVoid>);
recipes.remove(<Thaumcraft:ItemChestplateVoid>);
recipes.remove(<Thaumcraft:ItemBootsVoid>);

// Thaumic Tinkerer
Infusion.removeRecipe(<ThaumicTinkerer:enchanter>);

// Railcraft
Arcane.removeRecipe(<Railcraft:tool.crowbar.magic>);
Arcane.removeRecipe(<Railcraft:tool.crowbar.void>);
Research.orphanResearch("RC_Crowbar");
Research.removeResearch("RC_Crowbar");
Research.orphanResearch("RC_Crowbar_Void");
Research.removeResearch("RC_Crowbar_Void");
Research.removeTab("RAILCRAFT");

// Infusion Altar
Arcane.removeRecipe(<Thaumcraft:blockStoneDevice:2>);
Arcane.removeRecipe(<Thaumcraft:blockStoneDevice:1>);

// Alchemy
Arcane.removeRecipe(<Thaumcraft:ItemResource:8>);
Arcane.removeRecipe(<Thaumcraft:blockMetalDevice:1>);
Arcane.removeRecipe(<Thaumcraft:blockTube:7>);

// Thaumic Restorer
Infusion.removeRecipe(<ThaumicTinkerer:repairer>);

// Dynamism Tablet
Arcane.removeRecipe(<ThaumicTinkerer:animationTablet>);

// Warded Arcana
Arcane.removeRecipe(<Thaumcraft:blockCosmeticOpaque:2>);
Arcane.removeRecipe(<Thaumcraft:blockWoodenDevice:2>);
Arcane.removeRecipe(<Thaumcraft:ItemArcaneDoor>);

// Magic bees
Arcane.removeRecipe(<MagicBees:item.thaumiumGrafter>);
Arcane.removeRecipe(<MagicBees:item.thaumiumScoop>);

print('TC Recipes Removed');

Research.moveResearch("JARLABEL", "ALCHEMY", 6, -3);	// Warded Jar
Research.moveResearch("GT_CRYSTALLISATION", "ALCHEMY", -8, -2);

//Modifying Rotarycraft research
//Bedrock Helmet of Revealing
//Research.moveResearch("BEDREVEAL", "ARTIFICE", 4, -1);
//Research.clearPrereqs("BEDREVEAL");
//Research.addPrereq("BEDREVEAL", "GOGGLES", false);
//Tab Removal
//Research.removeTab("rotarycraft");

// Transmutations
Research.moveResearch("GT_WOOD_TO_CHARCOAL", "ALCHEMY", 4, 0);
Research.moveResearch("GT_FILL_WATER_BUCKET", "ALCHEMY", 4, 2);
Research.moveResearch("GT_TRANSBRONZE", "ALCHEMY", 9, 11);

// Instability: 1 = Negligible, 3 = Minor, 5 = Moderate, 7 = High, 9 = Very High, 10+ = Dangerous

// Wrought Iron
Research.addResearch("IT_TRANSIRONWROUGHT", "ALCHEMY", "metallum 3, permutatio 3, ordo 1", 4, 5, 1, <gregtech:gt.meta.nugget:8643>);
game.setLocalization("tc.research_name.IT_TRANSIRONWROUGHT", "Wrought Iron Transmutation");
game.setLocalization("tc.research_text.IT_TRANSIRONWROUGHT", "[IT] Transforming iron to wrought iron");
Research.addPage("IT_TRANSIRONWROUGHT", "kirara.research_page.IT_TRANSIRONWROUGHT.1");
game.setLocalization("kirara.research_page.IT_TRANSIRONWROUGHT.1", "You have discovered a way of making iron harder by thoroughly heating its components.<BR>This method can be used to create a material called wrought iron, which is used in many non-Thaumaturgic applications.");
Research.addPrereq("IT_TRANSIRONWROUGHT", "ALUMENTUM", false);
Research.addPrereq("IT_TRANSIRONWROUGHT", "TRANSGOLD", false);
Crucible.addRecipe("IT_TRANSIRONWROUGHT", <gregtech:gt.meta.nugget:8643>, <ore:nuggetIron>, "ignis 1");
Research.addCruciblePage("IT_TRANSIRONWROUGHT", <gregtech:gt.meta.nugget:8643>);
Research.setConcealed("IT_TRANSIRONWROUGHT", true);

// Thaumium
Research.addResearch("IT_TRANSTHAUMIUM", "ALCHEMY", "metallum 3, permutatio 3, praecantatio 1", 6, 5, 2, <Thaumcraft:ItemResource:2>);
game.setLocalization("tc.research_name.IT_TRANSTHAUMIUM", "Thaumium Transmutation");
game.setLocalization("tc.research_text.IT_TRANSTHAUMIUM", "[IT] Transforming iron to thaumium");
Research.addPage("IT_TRANSTHAUMIUM", "kirara.research_page.IT_TRANSTHAUMIUM.1");
game.setLocalization("kirara.research_page.IT_TRANSTHAUMIUM.1", "As it is quite expensive to expend even slivers of shards to produce thaumium, you have devised an alternative method of manufacturing the magical metal.<BR>By exposing wrought iron to praecantatio essentia in the same fashion that you used ignis to manufacture wrought iron, you have effectively created a method to manufacture thaumium without the use of valuable crystal shards.");
Research.addPrereq("IT_TRANSTHAUMIUM", "IT_TRANSIRONWROUGHT", false);
Crucible.addRecipe("IT_TRANSTHAUMIUM", <Thaumcraft:ItemResource:2>, <ore:ingotWroughtIron>, "praecantatio 4");
Research.addCruciblePage("IT_TRANSTHAUMIUM", <Thaumcraft:ItemResource:2>);
Research.setConcealed("IT_TRANSTHAUMIUM", true);

// Steel
Research.moveResearch("GT_IRON_TO_STEEL", "ALCHEMY", 6, 7); 
Research.clearPages("GT_IRON_TO_STEEL"); 
Research.addPage("GT_IRON_TO_STEEL", "kirara.research_page.GT_IRON_TO_STEEL.1");
game.setLocalization("kirara.research_page.GT_IRON_TO_STEEL.1", "You have discovered a way of making wrought iron even harder by breaking down and reordering its components.<BR>This method seems to create a material equivalent to steel, which is produced and used in many non-Thaumaturgic applications.");
Crucible.removeRecipe(<gregtech:gt.meta.nugget:8630>);
Crucible.addRecipe("GT_IRON_TO_STEEL", <gregtech:gt.meta.nugget:8630>, <ore:nuggetWroughtIron>, "ordo 1");
Research.addCruciblePage("GT_IRON_TO_STEEL", <gregtech:gt.meta.nugget:8630>);
Research.clearPrereqs("GT_IRON_TO_STEEL"); 
Research.addPrereq("GT_IRON_TO_STEEL", "IT_TRANSIRONWROUGHT", false); 
Warp.addToResearch("GT_IRON_TO_STEEL", 2);

// Steeleaf
Research.addResearch("IT_TRANSSTEELEAF", "ALCHEMY", "metallum 3, permutatio 3, tutamen 1, lucrum 1", 8, 6, 2, <gregtech:gt.meta.nugget:8673>);
game.setLocalization("tc.research_name.IT_TRANSSTEELEAF", "Steeleaf Transmutation");
game.setLocalization("tc.research_text.IT_TRANSSTEELEAF", "[IT] Mixing life with metal");
Research.addPage("IT_TRANSSTEELEAF", "kirara.research_page.IT_TRANSSTEELEAF.1");
game.setLocalization("kirara.research_page.IT_TRANSSTEELEAF.1", "You have discovered a way of imbuing inorganic steel with praecantatio and herba essentia to create an organic alloy that has interesting magical properties.<BR>Unfortunately, this process irreversibly transmutes a significant fraction of the steel consumed in the process, rendering only one-half of the metal recoverable.");
Research.addPrereq("IT_TRANSSTEELEAF", "GT_IRON_TO_STEEL", false);
Crucible.addRecipe("IT_TRANSSTEELEAF", <gregtech:gt.meta.nugget:8673> * 5, <ore:ingotSteel>, "praecantatio 1, herba 1");
Research.addCruciblePage("IT_TRANSSTEELEAF", <gregtech:gt.meta.nugget:8673>);
Research.setConcealed("IT_TRANSSTEELEAF", true);

// Knightmetal
Research.addResearch("IT_TRANSKNIGHTMETAL", "ALCHEMY", "metallum 3, permutatio 3, tutamen 1, lucrum 1", 10, 7, 2, <TwilightForest:item.armorShards>);
game.setLocalization("tc.research_name.IT_TRANSKNIGHTMETAL", "Knightmetal Transmutation");
game.setLocalization("tc.research_text.IT_TRANSKNIGHTMETAL", "[IT] Alchemically reinforced steel");
Research.addPage("IT_TRANSKNIGHTMETAL", "kirara.research_page.IT_TRANSKNIGHTMETAL.1");
game.setLocalization("kirara.research_page.IT_TRANSKNIGHTMETAL.1", "You have discovered a way of making steel even harder by imbuing it with magic.<BR>This method creates a strange, green material that is much tougher than the base steel it originated from. Unfortunately, this process vaporizes a significant fraction of the steel consumed in the process, rendering only two-thirds of the metal recoverable.");
Research.addPrereq("IT_TRANSKNIGHTMETAL", "IT_TRANSSTEELEAF", false);
Crucible.addRecipe("IT_TRANSKNIGHTMETAL", <gregtech:gt.meta.nugget:8674> * 7, <ore:ingotSteel>, "praecantatio 1, tutamen 2");
Research.addCruciblePage("IT_TRANSKNIGHTMETAL", <gregtech:gt.meta.nugget:8674>);
Research.setConcealed("IT_TRANSKNIGHTMETAL", true);

// Fiery Steel
Research.addResearch("IT_TRANSFIERYSTEEL", "ALCHEMY", "metallum 3, permutatio 3, ignis 1, praecantatio 1", 10, 5, 3, <gregtech:gt.meta.nugget:8675>);
game.setLocalization("tc.research_name.IT_TRANSFIERYSTEEL", "Fiery Steel Transmutation");
game.setLocalization("tc.research_text.IT_TRANSFIERYSTEEL", "[IT] Enriching steel with cleansing fire");
Research.addPage("IT_TRANSFIERYSTEEL", "kirara.research_page.IT_TRANSFIERYSTEEL.1");
game.setLocalization("kirara.research_page.IT_TRANSFIERYSTEEL.1", "You theorized that altering the knightmetal transmutation recipe by based off the legends of the hyrda would produce a metal with strength unknown.<BR>As it turns out, the process was even more effective than you initially theorized, while the process does unfortunately cause the metal to crumble into dust it nevertheless radiates the power of the hyrda's breath.");
Research.addPrereq("IT_TRANSFIERYSTEEL", "IT_TRANSKNIGHTMETAL", false);
Research.addPrereq("IT_TRANSFIERYSTEEL", "IT_FIRESTONE", false);
// Crucible.addRecipe("IT_TRANSFIERYSTEEL", <gregtech:gt.meta.nugget:8675>, <ore:nuggetSteel>, "praecantatio 1, ignis 4, corpus 2");
// Research.addCruciblePage("IT_TRANSFIERYSTEEL", <gregtech:gt.meta.nugget:8675>);
// Crucible.removeRecipe(<gregtech:gt.meta.nugget:8675>);
Crucible.addRecipe("IT_TRANSFIERYSTEEL", <gregtech:gt.meta.dustTiny:8675>, <ore:nuggetSteel>, "praecantatio 1, ignis 4, corpus 2");
Research.addCruciblePage("IT_TRANSFIERYSTEEL", <gregtech:gt.meta.dustTiny:8675>);
Research.setConcealed("IT_TRANSFIERYSTEEL", true);

// Fiery Blood
Research.addResearch("IT_TRANSFIERYBLOOD", "ALCHEMY", "permutatio 3, victus 3, ignis 3, praecantatio 3", 10, 3, 3, <TwilightForest:item.fieryBlood>);
game.setLocalization("tc.research_name.IT_TRANSFIERYBLOOD", "Fiery Blood Infusion");
game.setLocalization("tc.research_text.IT_TRANSFIERYBLOOD", "[IT] 100% iron free steel");
Research.addPage("IT_TRANSFIERYBLOOD", "kirara.research_page.IT_TRANSFIERYBLOOD.1");
game.setLocalization("kirara.research_page.IT_TRANSFIERYBLOOD.1", "You long thought that there was something more to fiery steel, a way to reclaim the metal should be possible should it not? After much work you created this process, exploiting the power of infusion you have managed to remove all traces of metal within the substance, leaving only a liquid that thrums with fire unlike any other you've seen. <BR>This process uses far larger amounts of fiery steel than you initially predicted and requires the strongest beer you can produce, the legendary Dragon Blood.<BR>The potent substance is produced by fermenting dark beer, creating something to last the ages.");
Research.addPrereq("IT_TRANSFIERYBLOOD", "IT_TRANSFIERYSTEEL", false);
Research.addPrereq("IT_TRANSFIERYBLOOD", "INFUSION", true);
Infusion.addRecipe("IT_TRANSFIERYBLOOD", <minecraft:glass_bottle>, [<TwilightForest:item.fieryIngot>, <gregtech:gt.multiitem.bottles:502>, <TwilightForest:item.fieryIngot>, <Thaumcraft:ItemShard:2>, <TwilightForest:item.fieryIngot>, <gregtech:gt.multiitem.bottles:502>, <TwilightForest:item.fieryIngot>, <gregtech:gt.multiitem.bottles:502>, <TwilightForest:item.fieryIngot>, <Thaumcraft:ItemShard:2>, <TwilightForest:item.fieryIngot>, <gregtech:gt.multiitem.bottles:502>], "aqua 16, victus 16, ignis 16, ordo 16", <TwilightForest:item.fieryBlood>, 8);
Research.addInfusionPage("IT_TRANSFIERYBLOOD", <TwilightForest:item.fieryBlood>);
Research.setConcealed("IT_TRANSFIERYBLOOD", true);
Warp.addToResearch("IT_TRANSFIERYBLOOD", 3);
// Warp.addToItem(<gregtech:gt.metaitem.01:30346>, 1);

// Astral Silver
Research.addResearch("IT_TRANSASTRALSILVER", "ALCHEMY", "metallum 3, permutatio 3, ignis 1, praecantatio 1", 12, 7, 2, <gregtech:gt.meta.nugget:8676>);
game.setLocalization("tc.research_name.IT_TRANSASTRALSILVER", "Astral Silver Transmutation");
game.setLocalization("tc.research_text.IT_TRANSASTRALSILVER", "[IT] Teleporters hate this");
Research.addPage("IT_TRANSASTRALSILVER", "kirara.research_page.IT_TRANSASTRALSILVER.1");
game.setLocalization("kirara.research_page.IT_TRANSASTRALSILVER.1", "The same process used to produce knightmetal may be used to imbue silver with alienis essentia, rendering it far more effective against End-affiliated opponents.");
Research.addPrereq("IT_TRANSASTRALSILVER", "IT_TRANSKNIGHTMETAL", false);
Crucible.addRecipe("IT_TRANSASTRALSILVER", <gregtech:gt.meta.nugget:8676>, <ore:nuggetSilver>, "praecantatio 1, alienis 1, iter 1");
Research.addCruciblePage("IT_TRANSASTRALSILVER", <gregtech:gt.meta.nugget:8676>);
Research.setConcealed("IT_TRANSASTRALSILVER", true);

// Enderium
Research.addResearch("IT_TRANSENDERIUM", "ALCHEMY", "metallum 3, permutatio 3, ignis 1, praecantatio 1", 12, 5, 3, <gregtech:gt.meta.nugget:8710>);
game.setLocalization("tc.research_name.IT_TRANSENDERIUM", "Enderium Transmutation");
game.setLocalization("tc.research_text.IT_TRANSENDERIUM", "[IT] Harnessing the power of the End");
Research.addPage("IT_TRANSENDERIUM", "kirara.research_page.IT_TRANSENDERIUM.1");
game.setLocalization("kirara.research_page.IT_TRANSENDERIUM.1", "By substituting silver with platinum in the Astral Silver transmutation process, you have managed to create an exotic alloy with surprising attributes - the metal pulses as though it were an ender pearl, and possess many of its properties.");
Research.addPrereq("IT_TRANSENDERIUM", "IT_TRANSASTRALSILVER", false);
Crucible.addRecipe("IT_TRANSENDERIUM", <gregtech:gt.meta.nugget:8710>, <ore:nuggetPlatinum>, "praecantatio 1, alienis 2, iter 2, ignis 2");
Research.addCruciblePage("IT_TRANSENDERIUM", <gregtech:gt.meta.nugget:8710>);
Research.setConcealed("IT_TRANSENDERIUM", true);


// Adamantium
Research.addResearch("IT_TRANSADAMANTIUM", "ALCHEMY", "metallum 3, permutatio 3, tutamen 3, praecantatio 1, ordo 1, tempus 1, telum 1, instrumentum 1", 12, 3, 1, <gregtech:gt.meta.nugget:2220>);
game.setLocalization("tc.research_name.IT_TRANSADAMANTIUM", "Adamantium Transmutation");
game.setLocalization("tc.research_text.IT_TRANSADAMANTIUM", "[IT] Second only to the stars themselves");
Research.addPage("IT_TRANSADAMANTIUM", "kirara.research_page.IT_TRANSADAMANTIUM.1");
game.setLocalization("kirara.research_page.IT_TRANSADAMANTIUM.1", "Building off past successes with knightmetal and enderium you have managed your ultimate creation in the field of metallurgy. Unfortunately the process is far from cheap and the temperatures required to shape the metal are barely achievable even with all your power and skill leveraged to that end.<BR>This recipe, like several others, was initially transcribed incorrectly and is actually performed with only tiny amounts of dust, I really should go to that appointment...<BR>Further, the dust produced is in fact the wrong colour. You suspect is an oxide; nonetheless you have made a very powerful substance that can be worked as a metal.");
Research.addPrereq("IT_TRANSADAMANTIUM",  "IT_TRANSENDERIUM", false);
// Crucible.addRecipe("IT_TRANSADAMANTIUM", <gregtech:gt.meta.nugget:8784>, <ore:dustTinyKnightmetal>, "tutamen 4, ordo 4, nebrisum 4");
// Research.addCruciblePage("IT_TRANSADAMANTIUM", <gregtech:gt.meta.nugget:8784>);
// Crucible.removeRecipe(<gregtech:gt.meta.nugget:8784>);
Crucible.addRecipe("IT_TRANSADAMANTIUM", <gregtech:gt.meta.dustTiny:8784>, <ore:dustTinyKnightmetal>, "tutamen 4, ordo 4, nebrisum 4");
Research.addCruciblePage("IT_TRANSADAMANTIUM", <gregtech:gt.meta.dustTiny:8784>);
Research.setConcealed("IT_TRANSADAMANTIUM", true);

// Damascus Steel
Research.addResearch("IT_TRANSSTEELDAMASCUS", "ALCHEMY", "metallum 3, permutatio 3, vitreus 1, perditio 1", 13, 9, 2, <gregtech:gt.meta.nugget:8634>);
game.setLocalization("tc.research_name.IT_TRANSSTEELDAMASCUS", "Damascus Steel Transmutation");
game.setLocalization("tc.research_text.IT_TRANSSTEELDAMASCUS", "[IT] Refining steel even further");
Research.addPage("IT_TRANSSTEELDAMASCUS", "kirara.research_page.IT_TRANSSTEELDAMASCUS.1");
game.setLocalization("kirara.research_page.IT_TRANSSTEELDAMASCUS.1", "Communing with the spirits of long-dead craftsmen, you have re-discovered a way of making steel even harder by breaking down and crystallizing its components on an atomic level.<BR>This method can be used to refine an amazingly durable variant of steel resembling that of the legendary Damascus Steel normally only found in ancient ruins. Unfortunately, this process leaves the material in dust form, requiring further processing via non-Thaumaturgical means.");
Research.addPrereq("IT_TRANSSTEELDAMASCUS", "GT_IRON_TO_STEEL", false);
Crucible.addRecipe("IT_TRANSSTEELDAMASCUS", <gregtech:gt.meta.dustTiny:8634>, <ore:nuggetSteel>, "vitreus 1, ordo 1, machina 1");
Research.addCruciblePage("IT_TRANSSTEELDAMASCUS", <gregtech:gt.meta.dustTiny:8634>);
Research.setConcealed("IT_TRANSSTEELDAMASCUS", true);
Warp.addToResearch("IT_TRANSSTEELDAMASCUS", 2);

// Advanced Metallurgy
Research.clearPrereqs("GT_ADVANCEDMETALLURGY");
Research.addPrereq("GT_ADVANCEDMETALLURGY", "GT_TRANSELECTRUM", false);
Research.addPrereq("GT_ADVANCEDMETALLURGY", "GT_TRANSBRASS", false);
Research.addPrereq("GT_ADVANCEDMETALLURGY", "GT_TRANSBATTERYALLOY", false);
Research.addPrereq("GT_ADVANCEDMETALLURGY", "GT_TRANSSOLDERINGALLOY", false);
Research.addPrereq("GT_ADVANCEDMETALLURGY", "GT_TRANSINVAR", false);
Research.addPrereq("GT_ADVANCEDMETALLURGY", "GT_TRANSCUPRONICKEL", false);
Research.addPrereq("GT_ADVANCEDMETALLURGY", "GT_TRANSBISMUTH", false);
Research.addPrereq("GT_ADVANCEDMETALLURGY", "IT_TRANSSTEELDAMASCUS", false);
Research.setSpikey("GT_ADVANCEDMETALLURGY", true);
Research.setRound("GT_ADVANCEDMETALLURGY", true);
Research.clearPages("GT_ADVANCEDMETALLURGY"); 
Research.addPage("GT_ADVANCEDMETALLURGY", "kirara.research_page.GT_ADVANCEDMETALLURGY.1");
game.setLocalization("kirara.research_page.GT_ADVANCEDMETALLURGY.1", "Through utilizing the knowledge you have obtained when discovering all the basic metals, you have gained significant insight towards the creation of far more advanced metals using raw essentia.<BR>Despite the malevolent derision from your fellow peers, you are certain that this transgression into the realms of forbidden metallurgy will have no foreseeable consequences.");
Warp.addToResearch("GT_ADVANCEDMETALLURGY", 2);

// Platinum
Research.addResearch("IT_TRANSPLATINUM", "ALCHEMY", "metallum 5, nebrisum 3, permutatio 3, ordo 3, lucrum 3", 19, 15, 2, <gregtech:gt.meta.nugget:780>);
game.setLocalization("tc.research_name.IT_TRANSPLATINUM", "Platinum Transmutation");
game.setLocalization("tc.research_text.IT_TRANSPLATINUM", "[IT] Transformation of metals to Platinum");
Research.addPage("IT_TRANSPLATINUM", "kirara.research_page.IT_TRANSPLATINUM.1");
game.setLocalization("kirara.research_page.IT_TRANSPLATINUM.1", "You have discovered a way to multiply Platinum by steeping Platinum nuggets in metallum harvested from other metals.<BR>This transmutation is quite costly, requiring a whole ingot of platinum's worth in nebrisum to create a mere nugget of the same metal. Perhaps if you could discover an alternative source for this essentia...");
Crucible.addRecipe("IT_TRANSPLATINUM", <gregtech:gt.meta.nugget:780> * 3, <gregtech:gt.meta.nugget:780>, "nebrisum 1, lucrum 2, metallum 2");
Research.addCruciblePage("IT_TRANSPLATINUM", <gregtech:gt.meta.nugget:780>);
Research.addPrereq("IT_TRANSPLATINUM", "GT_ADVANCEDMETALLURGY", false); 
Research.addPrereq("IT_TRANSPLATINUM", "GT_TRANSALUMINIUM", true); 
Research.setConcealed("IT_TRANSPLATINUM", true);

// Iridium
Research.addResearch("IT_TRANSIRIDIUM", "ALCHEMY", "metallum 5, machina 3, permutatio 3, tutamen 3, electrum 3", 21, 15, 3, <gregtech:gt.meta.nugget:770>);
game.setLocalization("tc.research_name.IT_TRANSIRIDIUM", "Iridium Transmutation");
game.setLocalization("tc.research_text.IT_TRANSIRIDIUM", "[IT] Transformation of metals to Iridium");
Research.addPage("IT_TRANSIRIDIUM", "kirara.research_page.IT_TRANSIRIDIUM.1");
game.setLocalization("kirara.research_page.IT_TRANSIRIDIUM.1", "You have discovered a way to multiply Iridium by steeping Iridium nuggets in metallum harvested from other metals.<BR>This transmutation is quite costly, requiring a whole ingot of platinum's worth in nebrisum to create a mere nugget of iridium. Perhaps if you could discover an alternative source for this essentia...");
// Crucible.addRecipe("IT_TRANSIRIDIUM", <gregtech:gt.meta.nugget:770> * 3, <gregtech:gt.meta.dustTiny:770>, "lucrum 1, nebrisum 1, metallum 2, machina 1");
// Research.addCruciblePage("IT_TRANSIRIDIUM", <gregtech:gt.meta.nugget:770>);
// Crucible.removeRecipe(<gregtech:gt.meta.nugget:770>);
Crucible.addRecipe("IT_TRANSIRIDIUM", <gregtech:gt.meta.dustTiny:770> * 3, <gregtech:gt.meta.dustTiny:770>, "lucrum 1, nebrisum 1, metallum 2, machina 1");
Research.addCruciblePage("IT_TRANSIRIDIUM", <gregtech:gt.meta.dustTiny:770>);
Research.addPrereq("IT_TRANSIRIDIUM", "IT_TRANSPLATINUM", false); 
Research.setConcealed("IT_TRANSIRIDIUM", true);
Warp.addToResearch("IT_TRANSIRIDIUM", 2);

// Titanium
Research.addResearch("IT_TRANSTITANIUM", "ALCHEMY", "metallum 5, tutamen 3, permutatio 3, ordo 3, instrumentum 3", 19, 16, 3, <gregtech:gt.meta.nugget:220>);
game.setLocalization("tc.research_name.IT_TRANSTITANIUM", "Titanium Transmutation");
game.setLocalization("tc.research_text.IT_TRANSTITANIUM", "[IT] Transformation of metals to Titanium");
Research.addPage("IT_TRANSTITANIUM", "kirara.research_page.IT_TRANSTITANIUM.1");
game.setLocalization("kirara.research_page.IT_TRANSTITANIUM.1", "You have discovered a way to multiply Titanium by steeping Titanium nuggets in metallum harvested from other metals.<BR>Unfortunately, this process leaves the material in an oxidized form, requiring further processing via non-Thaumaturgical means.");
Crucible.addRecipe("IT_TRANSTITANIUM", <gregtech:gt.meta.dustTiny:9192> * 3, <gregtech:gt.meta.nugget:220>, "metallum 2, tutamen 1, permutatio 1, machina 1");
Research.addCruciblePage("IT_TRANSTITANIUM", <gregtech:gt.meta.dustTiny:9192>);
Research.addPrereq("IT_TRANSTITANIUM", "GT_ADVANCEDMETALLURGY", false); 
Research.addPrereq("IT_TRANSTITANIUM", "IT_TRANSPLATINUM", true); 
Research.setConcealed("IT_TRANSTITANIUM", true);
Warp.addToResearch("IT_TRANSTITANIUM", 1);

// Tungsten
Research.addResearch("IT_TRANSTUNGSTEN", "ALCHEMY", "metallum 5, tutamen 3, permutatio 3, sano 3, lux 3", 19, 17, 3, <gregtech:gt.meta.nugget:740>);
game.setLocalization("tc.research_name.IT_TRANSTUNGSTEN", "Tungsten Transmutation");
game.setLocalization("tc.research_text.IT_TRANSTUNGSTEN", "[IT] Transformation of metals to Tungsten");
Research.addPage("IT_TRANSTUNGSTEN", "kirara.research_page.IT_TRANSTUNGSTEN.1");
game.setLocalization("kirara.research_page.IT_TRANSTUNGSTEN.1", "You have discovered a way to multiply Tungsten by steeping Tungsten nuggets in metallum harvested from other metals.<BR>Unfortunately, this process leaves the material in an oxidized form, requiring further processing via non-Thaumaturgical means.");
Crucible.addRecipe("IT_TRANSTUNGSTEN", <gregtech:gt.meta.dustTiny:8026> * 12, <ore:nuggetAnyTungsten>, "metallum 2, tutamen 1, sano 1, lux 1");
Research.addCruciblePage("IT_TRANSTUNGSTEN", <gregtech:gt.meta.dustTiny:8026>);
Research.addPrereq("IT_TRANSTUNGSTEN", "GT_ADVANCEDMETALLURGY", true); 
Research.addPrereq("IT_TRANSTUNGSTEN", "IT_TRANSTITANIUM", false); 
Research.setConcealed("IT_TRANSTUNGSTEN", true);
Warp.addToResearch("IT_TRANSTUNGSTEN", 1);

// Uranium
Research.addResearch("IT_TRANSURANIUM", "ALCHEMY", "metallum 5, radio 3, permutatio 3, venenum 3, potentia 3", 21, 16, 3, <gregtech:gt.meta.nugget:920>);
game.setLocalization("tc.research_name.IT_TRANSURANIUM", "Uranium Transmutation");
game.setLocalization("tc.research_text.IT_TRANSURANIUM", "[IT] Transformation of metals to Uranium");
Research.addPage("IT_TRANSURANIUM", "kirara.research_page.IT_TRANSURANIUM.1");
game.setLocalization("kirara.research_page.IT_TRANSURANIUM.1", "You have discovered a way to multiply Uranium by steeping Uranium nuggets in a vast number of different essentia.<BR>Unfortunately, this process leaves the material in an oxidized form, inviting further processing via non-Thaumaturgical means.");
Crucible.addRecipe("IT_TRANSURANIUM", <gregtech:gt.meta.dustTiny:9134> * 3, <ore:nuggetUranium>, "potentia 1, radio 1, metallum 2, venenum 1");
Research.addCruciblePage("IT_TRANSURANIUM", <gregtech:gt.meta.dustTiny:9134>);
Research.addPrereq("IT_TRANSURANIUM", "IT_TRANSPLATINUM", false); 
Research.addPrereq("IT_TRANSURANIUM", "IT_TRANSTITANIUM", false); 
Research.addPrereq("IT_TRANSURANIUM", "IT_TRANSTUNGSTEN", false); 
Research.setConcealed("IT_TRANSURANIUM", true);
Warp.addToResearch("IT_TRANSURANIUM", 4);

// Chromium
Research.addResearch("IT_TRANSCHROMIUM", "ALCHEMY", "metallum 5, machina 3, permutatio 3, nebrisum 3, lucrum 3", 19, 13, 2, <gregtech:gt.meta.nugget:240>);
game.setLocalization("tc.research_name.IT_TRANSCHROMIUM", "Chromium Transmutation");
game.setLocalization("tc.research_text.IT_TRANSCHROMIUM", "[IT] Transformation of metals to Chromium");
Research.addPage("IT_TRANSCHROMIUM", "kirara.research_page.IT_TRANSCHROMIUM.1");
game.setLocalization("kirara.research_page.IT_TRANSCHROMIUM.1", "You have discovered a way to multiply Chromium by steeping Chromium nuggets in metallum harvested from other metals.<BR>This transmutation is quite costly, requiring a large quantity of rare essentia to produce a tiny pile of chrome dust.<BR>While not the most worthwhile recipe by itself, you wonder if this discovery could lead to other, far more valuable transmutations.");
// Crucible.addRecipe("IT_TRANSCHROMIUM", <gregtech:gt.meta.nugget:240> * 3, <gregtech:gt.meta.nugget:240>, "machina 1, nebrisum 1, metallum 2, auram 1");
// Research.addCruciblePage("IT_TRANSCHROMIUM", <gregtech:gt.meta.nugget:240>);
// Crucible.removeRecipe(<gregtech:gt.meta.nugget:240>);
Crucible.addRecipe("IT_TRANSCHROMIUM", <gregtech:gt.meta.dustTiny:240> * 3, <gregtech:gt.meta.nugget:240>, "machina 1, nebrisum 1, metallum 2, auram 1");
Research.addCruciblePage("IT_TRANSCHROMIUM", <gregtech:gt.meta.dustTiny:240>);
Research.addPrereq("IT_TRANSCHROMIUM", "GT_TRANSALUMINIUM", true);
Research.addPrereq("IT_TRANSCHROMIUM", "GT_ADVANCEDMETALLURGY", false); 
Research.setConcealed("IT_TRANSCHROMIUM", true);

// Manganese
Research.addResearch("IT_TRANSMANGANESE", "ALCHEMY", "metallum 5, tenebrae 3, permutatio 3, nebrisum 3, volatus 3", 19, 12, 2, <gregtech:gt.meta.nugget:250>);
game.setLocalization("tc.research_name.IT_TRANSMANGANESE", "Manganese Transmutation");
game.setLocalization("tc.research_text.IT_TRANSMANGANESE", "[IT] Transformation of metals to Manganese");
Research.addPage("IT_TRANSMANGANESE", "kirara.research_page.IT_TRANSMANGANESE.1");
game.setLocalization("kirara.research_page.IT_TRANSMANGANESE.1", "You have discovered a way to multiply Manganese by steeping Manganese nuggets in metallum harvested from other metals.<BR>It was a lucky break with this, the recipe coming to you in a dream, unfortunately as dreams are want to things got exaggerated a tad, in reality only nuggets may be used.");
Crucible.addRecipe("IT_TRANSMANGANESE", <gregtech:gt.meta.nugget:250> * 3, <gregtech:gt.meta.nugget:250>, "tenebrae 1, vitreus 1, volatus 1, metallum 2");
Research.addCruciblePage("IT_TRANSMANGANESE", <gregtech:gt.meta.nugget:250>);
Research.addPrereq("IT_TRANSMANGANESE", "IT_TRANSCHROMIUM", true); 
Research.addPrereq("IT_TRANSMANGANESE", "GT_ADVANCEDMETALLURGY", false); 
Research.setConcealed("IT_TRANSMANGANESE", true);

// Stainless Steel
Research.addResearch("IT_TRANSSTAINLESS", "ALCHEMY", "metallum 5, permutatio 3, machina 3, ordo 3, ignis 3", 21, 12, 3, <gregtech:gt.meta.nugget:8636>);
game.setLocalization("tc.research_name.IT_TRANSSTAINLESS", "Stainless Steel Transmutation");
game.setLocalization("tc.research_text.IT_TRANSSTAINLESS", "[IT] Transformation of metals to stainless steel");
Research.addPage("IT_TRANSSTAINLESS", "kirara.research_page.IT_TRANSSTAINLESS.1");
game.setLocalization("kirara.research_page.IT_TRANSSTAINLESS.1", "After much experimentation with refining Nickel, Invar, Chrome, and Manganese, you have discovered a way to multiply the complex stainless steel alloy by steeping its nuggets in metallum harvested from other metals.<BR>This transmutation is significantly harder to achieve, as stainless steel is a complex alloy with a large number of components.");
Crucible.addRecipe("IT_TRANSSTAINLESS", <gregtech:gt.meta.nugget:8636> * 3, <gregtech:gt.meta.nugget:8636>, "ignis 1, metallum 2, volatus 1, nebrisum 1, machina 1, tenebrae 1, ordo 1");
Research.addCruciblePage("IT_TRANSSTAINLESS", <gregtech:gt.meta.nugget:8636>);
Research.addPrereq("IT_TRANSSTAINLESS", "IT_TRANSCHROMIUM", false); 
Research.addPrereq("IT_TRANSSTAINLESS", "IT_TRANSMANGANESE", false); 
Research.setConcealed("IT_TRANSSTAINLESS", true);
Warp.addToResearch("IT_TRANSSTAINLESS", 2);
/*
// Aluminum
Research.clearPages("GT_TRANSALUMINIUM");
Research.addPage("GT_TRANSALUMINIUM", "kirara.research_page.GT_TRANSALUMINIUM.1");
Crucible.addRecipe("GT_TRANSALUMINIUM", <gregtech:gt.meta.nugget:8008> *8, <ore:nuggetAluminium>, "ignis 1, ordo 1, volatus 1, metallum 2");
Research.addCruciblePage("GT_TRANSALUMINIUM", <gregtech:gt.meta.nugget:8008>);
*/
print('Transmutation Initialized');

// Equal Trade
Research.clearPages("FOCUSTRADE"); 
Research.addPage("FOCUSTRADE", "tc.research_page.FOCUSTRADE.1");
Arcane.removeRecipe(<Thaumcraft:FocusTrade>);
Infusion.addRecipe("FOCUSTRADE", <gregtech:gt.meta.lens:8319>, [<gregtech:gt.meta.ring:8676>, <Thaumcraft:ItemShard:6>, <gregtech:gt.meta.ring:8676>, <Thaumcraft:ItemShard:6>, <gregtech:gt.meta.ring:8676>, <Thaumcraft:ItemShard:6>, <gregtech:gt.meta.ring:8676>, <Thaumcraft:ItemShard:6>], "perditio 16, iter 16, permutatio 16", <Thaumcraft:FocusTrade>, 3);
Research.addInfusionPage("FOCUSTRADE", <Thaumcraft:FocusTrade>);
Research.addPrereq("FOCUSTRADE", "IT_TRANSASTRALSILVER", true);

// Primal
Research.addPrereq("FOCUSPRIMAL", "INFUSION", true);
Research.clearPages("FOCUSPRIMAL"); 
Research.addPage("FOCUSPRIMAL", "tc.research_page.FOCUSPRIMAL.1");
Arcane.removeRecipe(<Thaumcraft:FocusPrimal>);
Infusion.addRecipe("FOCUSPRIMAL", <gregtech:gt.meta.lens:8358>, [<gregtech:gt.meta.ring:8710>, charmPrimal, <gregtech:gt.meta.ring:8710>, charmPrimal, <gregtech:gt.meta.ring:8710>, charmPrimal, <gregtech:gt.meta.ring:8710>, charmPrimal], "aer 32, aqua 32, terra 32, ignis 32, ordo 32, perditio 32", <Thaumcraft:FocusPrimal>, 6);
Research.addInfusionPage("FOCUSPRIMAL", <Thaumcraft:FocusPrimal>);

// Excavation
Research.addPrereq("FOCUSEXCAVATION", "INFUSION", true);
Research.clearPages("FOCUSEXCAVATION"); 
Research.addPage("FOCUSEXCAVATION", "tc.research_page.FOCUSEXCAVATION.1");
Arcane.removeRecipe(<Thaumcraft:FocusExcavation>);
Infusion.addRecipe("FOCUSEXCAVATION", <gregtech:gt.meta.lens:8301>, [<gregtech:gt.meta.ring:220>, <Thaumcraft:ItemShard:3>, <gregtech:gt.meta.ring:220>, <gregtech:gt.meta.toolHeadPickaxe:8679>, <gregtech:gt.meta.ring:220>, <Thaumcraft:ItemShard:3>, <gregtech:gt.meta.ring:220>, <gregtech:gt.meta.toolHeadPickaxe:8679>], "ordo 25, perditio 25, perfodio 10, terra 10", <Thaumcraft:FocusExcavation>, 3);
Research.addInfusionPage("FOCUSEXCAVATION", <Thaumcraft:FocusExcavation>);

// Warding Focus
Research.clearPages("FOCUSWARDING");
Research.addPage("FOCUSWARDING", "tc.research_page.FOCUSWARDING.1");
Infusion.removeRecipe(<Thaumcraft:FocusWarding>);
Infusion.addRecipe("FOCUSWARDING", <gregtech:gt.meta.plateGem:8320>, [<gregtech:gt.meta.ring:770>, <Thaumcraft:ItemResource:3>, <gregtech:gt.meta.ring:770>, <Thaumcraft:ItemShard:5>, <gregtech:gt.meta.ring:770>, <Thaumcraft:ItemResource:3>, <gregtech:gt.meta.ring:770>, <Thaumcraft:ItemShard:5>], "cognitio 10, ordo 25, terra 25, tutamen 25", <Thaumcraft:FocusWarding>, 5);
Research.addInfusionPage("FOCUSWARDING", <Thaumcraft:FocusWarding>);

// Fire Focus
Research.clearPages("FOCUSFIRE");
Research.addPage("FOCUSFIRE", "tc.research_page.FOCUSFIRE.1");
Research.addPage("FOCUSFIRE", "tc.research_page.FOCUSFIRE.2");
Arcane.removeRecipe(<Thaumcraft:FocusFire>);
Arcane.addShaped("FOCUSFIRE", <Thaumcraft:FocusFire>, "ignis 20, perditio 10", 
	[[<minecraft:fire_charge>, <ore:ringInvar>, <minecraft:fire_charge>],
	[<ore:ringInvar>, <ore:lensInfusedFire>, <ore:ringInvar>],
	[<minecraft:fire_charge>, <ore:ringInvar>, <minecraft:fire_charge>]]);
Research.addArcanePage("FOCUSFIRE", <Thaumcraft:FocusFire>);

// Frost Focus
Research.clearPages("FOCUSFROST");
Research.addPage("FOCUSFROST", "tc.research_page.FOCUSFROST.1");
Arcane.removeRecipe(<Thaumcraft:FocusFrost>);
Arcane.addShaped("FOCUSFROST", <Thaumcraft:FocusFrost>, "aqua 10, ordo 10, perditio 10", 
	[[<minecraft:packed_ice>, <ore:ringAluminium>, <minecraft:packed_ice>], 
	[<ore:ringAluminium>, <ore:lensDiamond>, <ore:ringAluminium>],
	[<minecraft:packed_ice>, <ore:ringAluminium>, <minecraft:packed_ice>]]);
Research.addArcanePage("FOCUSFROST", <Thaumcraft:FocusFrost>);

// Shock Focus
Research.clearPages("FOCUSSHOCK");
Research.addPage("FOCUSSHOCK", "tc.research_page.FOCUSSHOCK.1");
Arcane.removeRecipe(<Thaumcraft:FocusShock>);
Arcane.addShaped("FOCUSSHOCK", <Thaumcraft:FocusShock>, "aer 10, ordo 10, perditio 10", 
	[[<minecraft:potato>, <ore:ringNeodymium>, <minecraft:redstone>], 
	[<ore:ringNeodymium>, <ore:lensInfusedAir>, <ore:ringNeodymium>], 
	[<minecraft:redstone>, <ore:ringNeodymium>, <minecraft:potato>]]);
Research.addArcanePage("FOCUSSHOCK", <Thaumcraft:FocusShock>);

// Hellbat Focus
Research.clearPages("FOCUSHELLBAT");
Research.addPage("FOCUSHELLBAT", "tc.research_page.FOCUSHELLBAT.1");
Infusion.removeRecipe(<Thaumcraft:FocusHellbat>);
Infusion.addRecipe("FOCUSHELLBAT", <gregtech:gt.meta.lens:8310>, [<gregtech:gt.meta.ring:8632>, <Thaumcraft:ItemShard:1>, <gregtech:gt.meta.ring:8632>, <Thaumcraft:ItemShard:0>, <gregtech:gt.meta.ring:8632>, <Thaumcraft:ItemShard:5>, <gregtech:gt.meta.ring:8632>, <Thaumcraft:ItemShard:0>], "aer 15, bestia 15, ignis 25, perditio 25", <Thaumcraft:FocusHellbat>, 3);
Research.addInfusionPage("FOCUSHELLBAT", <Thaumcraft:FocusHellbat>);

// Portable Hole Focus
Research.clearPages("FOCUSPORTABLEHOLE");
Research.addPage("FOCUSPORTABLEHOLE", "tc.research_page.FOCUSPORTABLEHOLE.1");
Infusion.removeRecipe(<Thaumcraft:FocusPortableHole>);
Infusion.addRecipe("FOCUSPORTABLEHOLE", <gregtech:gt.meta.lens:8318>, [<gregtech:gt.meta.ring:820>, <minecraft:trapdoor>, <gregtech:gt.meta.ring:8710>, <Thaumcraft:ItemShard:5>, <gregtech:gt.meta.ring:820>, <minecraft:trapdoor>, <gregtech:gt.meta.ring:8710>, <Thaumcraft:ItemShard:5>], "alienis 10, iter 25, perditio 25, permutatio 10", <Thaumcraft:FocusPortableHole>, 3);
Research.addInfusionPage("FOCUSPORTABLEHOLE", <Thaumcraft:FocusPortableHole>);

// Efreet's Flame Focus
Research.addPrereq("FOCUS_SMELT", "IT_TRANSFIERYSTEEL", true);
Arcane.removeRecipe(<ThaumicTinkerer:focusSmelt>);
Arcane.addShaped("FOCUS_SMELT", <ThaumicTinkerer:focusSmelt>, "ignis 10, perditio 6, ordo 5", [[null, <ore:stickFierySteel>, null], [<Thaumcraft:FocusFire>, <ore:ringSteelMagnetic>, <Thaumcraft:FocusExcavation>], [null, <ore:stickFierySteel>, null]]);
Research.refreshResearchRecipe("FOCUS_SMELT");

// Uprising Focus
Infusion.removeRecipe(<ThaumicTinkerer:focusFlight>);
Infusion.addRecipe("FOCUS_FLIGHT", <gregtech:gt.meta.lens:8352>, [<gregtech:gt.meta.ring:830>, <minecraft:feather>, <gregtech:gt.meta.ring:830>, <minecraft:ender_pearl>, <gregtech:gt.meta.ring:830>, <minecraft:feather>, <gregtech:gt.meta.ring:830>, <minecraft:ender_pearl>], "aer 15, iter 10, motus 20", <ThaumicTinkerer:focusFlight>, 3);
Research.refreshResearchRecipe("FOCUS_FLIGHT");

// Telekinesis Focus
// Research.addPrereq("FOCUS_TELEKINESIS", "IT_TRANSSTEELEAF", true);
Infusion.removeRecipe(<ThaumicTinkerer:focusTelekinesis>);
Infusion.addRecipe("FOCUS_TELEKINESIS", <gregtech:gt.meta.lens:9101>, [<gregtech:gt.meta.ring:8673>, <minecraft:ender_pearl>, <gregtech:gt.meta.ring:8673>, <minecraft:gold_ingot>, <gregtech:gt.meta.ring:8673>, <minecraft:ender_pearl>, <gregtech:gt.meta.ring:8673>, <minecraft:gold_ingot>], "aer 20, cognitio 10, iter 10, motus 10, perditio 20", <ThaumicTinkerer:focusTelekinesis>, 5);
Research.refreshResearchRecipe("FOCUS_TELEKINESIS");
Infusion.addRecipe("FOCUS_TELEKINESIS", <gregtech:gt.meta.lens:9127>, [<gregtech:gt.meta.ring:8673>, <minecraft:ender_pearl>, <gregtech:gt.meta.ring:8673>, <minecraft:gold_ingot>, <gregtech:gt.meta.ring:8673>, <minecraft:ender_pearl>, <gregtech:gt.meta.ring:8673>, <minecraft:gold_ingot>], "aer 20, cognitio 10, iter 10, motus 10, perditio 20", <ThaumicTinkerer:focusTelekinesis>, 5);
Infusion.addRecipe("FOCUS_TELEKINESIS", <gregtech:gt.meta.lens:9129>, [<gregtech:gt.meta.ring:8673>, <minecraft:ender_pearl>, <gregtech:gt.meta.ring:8673>, <minecraft:gold_ingot>, <gregtech:gt.meta.ring:8673>, <minecraft:ender_pearl>, <gregtech:gt.meta.ring:8673>, <minecraft:gold_ingot>], "aer 20, cognitio 10, iter 10, motus 10, perditio 20", <ThaumicTinkerer:focusTelekinesis>, 5);

// Dislocation Focus
Infusion.removeRecipe(<ThaumicTinkerer:focusDislocation>);
Infusion.addRecipe("FOCUS_DISLOCATION", <gregtech:gt.meta.lens:8319>, [<gregtech:gt.meta.ring:8710>, <minecraft:diamond>, <gregtech:gt.meta.ring:8710>, <Thaumcraft:blockCosmeticOpaque>, <gregtech:gt.meta.ring:8710>, <minecraft:diamond>, <gregtech:gt.meta.ring:8710>, <Thaumcraft:blockCosmeticOpaque>], "alienis 20, praecantatio 20, tenebrae 10, vacuos 25, vitium 5", <ThaumicTinkerer:focusDislocation>, 10);
Research.refreshResearchRecipe("FOCUS_DISLOCATION");
Research.addPrereq("FOCUS_DISLOCATION", "IT_TRANSENDERIUM", true);

// Deflect Focus
Infusion.removeRecipe(<ThaumicTinkerer:focusDeflect>);
Infusion.addRecipe("FOCUS_DEFLECT", <gregtech:gt.meta.lens:304>, [<gregtech:gt.meta.ring:780>, <Thaumcraft:blockCosmeticSolid:3>, <gregtech:gt.meta.ring:780>, <Thaumcraft:ItemResource:3>, <gregtech:gt.meta.ring:780>, <Thaumcraft:blockCosmeticSolid:3>, <gregtech:gt.meta.ring:780>, <Thaumcraft:ItemResource:3>], "ordo 20, aer 15, tutamen 5", <ThaumicTinkerer:focusDeflect>, 5);
Research.refreshResearchRecipe("FOCUS_DEFLECT");

// Mending Focus
Infusion.removeRecipe(<ThaumicTinkerer:focusHeal>);
Infusion.addRecipe("FOCUS_HEAL", <Thaumcraft:FocusPech>, [<gregtech:gt.meta.ring:470>, <minecraft:golden_carrot>, <gregtech:gt.meta.ring:290>, <minecraft:speckled_melon>, <gregtech:gt.meta.ring:470>, <minecraft:golden_carrot>, <gregtech:gt.meta.ring:290>, <minecraft:speckled_melon>], "sano 20, spiritus 10, victus 15", <ThaumicTinkerer:focusHeal>, 5);
Research.refreshResearchRecipe("FOCUS_HEAL");

// Ender Rift Focus
Research.addPrereq("FOCUS_ENDER_CHEST", "AM_GEMVINTEUM", true);
Arcane.removeRecipe(<ThaumicTinkerer:focusEnderChest>);
Arcane.addShaped("FOCUS_ENDER_CHEST", <ThaumicTinkerer:focusEnderChest>, "ordo 20, perditio 20", [[<ore:gemVinteum>, <ore:ringNaquadah>, <minecraft:ender_pearl>], [<ore:ringNaquadah>, <ore:lensEnderEye>, <ore:ringNaquadah>], [<minecraft:ender_pearl>, <ore:ringNaquadah>, <ore:gemVinteum>]]);
Research.refreshResearchRecipe("FOCUS_ENDER_CHEST");

// Wrench Focus
Research.clearPages("thaumicenergistics.TEFOCUSWRENCH");
Research.addPage("thaumicenergistics.TEFOCUSWRENCH", "kirara.research_page.TEFOCUSWRENCH.1");
game.setLocalization("kirara.research_page.TEFOCUSWRENCH.1", "This wand focus interacts with blocks and machinery as if it were an AE2 wrench. Interestingly the incredible complexity of such an interaction prevents you from using your normal lenses instead requiring the use of carefully created crystals attuned to the machines.<BR>Sneak + left click: Rotate.<BR>Sneak + right click: Dismantle.");
Arcane.removeRecipe(<thaumicenergistics:focus.aewrench>);
Arcane.addShaped("thaumicenergistics.TEFOCUSWRENCH", <thaumicenergistics:focus.aewrench>, "aer 10, ignis 10", [[<ore:crystalNetherQuartz>, <ore:ringGalvanizedSteel>, <ore:crystalCertusQuartz>], [<ore:ringGalvanizedSteel>, <ore:crystalPureFluix>, <ore:ringStainlessSteel>], [<ore:crystalCertusQuartz>, <ore:ringStainlessSteel>, <ore:crystalNetherQuartz>]]);
Research.addArcanePage("thaumicenergistics.TEFOCUSWRENCH", <thaumicenergistics:focus.aewrench>);

// // Crafting Focus
// Arcane.removeRecipe(<Automagy:focusCrafting>);
// Arcane.addShaped("FOCUSCRAFTING", <Automagy:focusCrafting>, "ordo 30, terra 10, perditio 5", [[<ore:craftingTableWood>, <ore:ringBeryllium>, <Thaumcraft:blockTable:15>], [<ore:ringBeryllium>, <ore:lensOlivine>, <ore:ringBeryllium>], [<ewysworkshop:WorkshopTable>, <ore:ringBeryllium>, <BiblioCraft:BiblioWorkbench>]]);
// Research.refreshResearchRecipe("FOCUSCRAFTING");

// Blink Focus
Infusion.removeRecipe(<ForbiddenMagic:BlinkFocus>);
Infusion.addRecipe("FOCUSBLINK", <gregtech:gt.meta.lens:8318>, [<ForbiddenMagic:NetherShard:5>, <gregtech:gt.meta.ring:8710>, <ForbiddenMagic:NetherShard:5>, <gregtech:gt.meta.ring:8710>, <ForbiddenMagic:NetherShard:5>, <gregtech:gt.meta.ring:8710>, <ForbiddenMagic:NetherShard:5>, <gregtech:gt.meta.ring:8710>], "iter 25, perditio 20, desidia 15, infernum 10", <ForbiddenMagic:BlinkFocus>, 3);
Research.refreshResearchRecipe("FOCUSBLINK");

// Celestial Recall
Infusion.removeRecipe(<ThaumicTinkerer:focusRecall>);
Infusion.addRecipe("FOCUS_RECALL", <gregtech:gt.meta.lens:8300>, [<gregtech:gt.meta.ring:8710>, <ThaumicTinkerer:skyPearl>, ringIchor, <Thaumcraft:FocusPortableHole>, ringGold, <ThaumicTinkerer:skyPearl>, ringIchor, <Thaumcraft:blockMirror:0>], "iter 128, alienis 64, praecantatio 64", <ThaumicTinkerer:focusRecall>, 12);
Research.refreshResearchRecipe("FOCUS_RECALL");

// Experience Drain Focus
Infusion.removeRecipe(<ThaumicTinkerer:focusXPDrain>);
Infusion.addRecipe("FOCUS_XP_DRAIN", <gregtech:gt.meta.gem:8316>, [<ForbiddenMagic:GluttonyShard>, <ThaumicTinkerer:xpTalisman>, ringIchor, <ThaumicTinkerer:enchanter>, ringGold, <OpenComputers:item:52>, ringIchor, <minecraft:experience_bottle>], "cognitio 128, auram 64, praecantatio 64, vitium 64", <ThaumicTinkerer:focusXPDrain>, 10);
Research.refreshResearchRecipe("FOCUS_XP_DRAIN");

// Shadowbeam Focus
Infusion.removeRecipe(<ThaumicTinkerer:focusShadowbeam>);
Infusion.addRecipe("FOCUS_SHADOWBEAM", <gregtech:gt.meta.lens:8313>, [<gregtech:gt.meta.ring:8681>, <Thaumcraft:FocusExcavation>, ringIchor, <Thaumcraft:FocusFire>, ringGold, <ThaumicTinkerer:focusDeflect>, ringIchor, <Thaumcraft:FocusShock>], "tenebrae 128, telum 64, praecantatio 64, alienis 64", <ThaumicTinkerer:focusShadowbeam>, 11);
Research.refreshResearchRecipe("FOCUS_SHADOWBEAM");
Warp.addToItem(<ThaumicTinkerer:focusShadowbeam>, 1);

print('Foci reconfigured');

//********************
// Localizing Strings
//********************

game.setLocalization("potion.potency.4", "V");
game.setLocalization("potion.potency.5", "VI");
game.setLocalization("potion.potency.6", "VII");
game.setLocalization("potion.potency.7", "VIII");
game.setLocalization("potion.potency.8", "IX");
game.setLocalization("potion.potency.9", "X");
// game.setLocalization("tile.extrautils:pureLove.name", "Pure Love");
// game.setLocalization("item.TravellersGear.simpleGear.cloak.name","Simple Cloak");


//*************************
// Adding Warp to Research
//*************************

Warp.addToResearch("RUNICARMOR", 3);
Warp.addToResearch("INFERNALFURNACE", 2);
Warp.addToResearch("BONEBOW", 1);
Warp.addToResearch("MIRROR", 2);

// Thaumonomicon Change
recipes.addShaped(<Thaumcraft:ItemThaumonomicon>, [[<ore:stickBrass>, <ore:craftingLeather>, <Thaumcraft:ItemShard:*>], [<ore:springSmallBrass>, <BiblioCraft:item.BigBook>, <ore:plateTinyAnyIron>], [<ore:ringBrass>, <ore:craftingLeather>, <Thaumcraft:ItemShard:*>]]);
Research.addCraftingPage("THAUMONOMICON", <Thaumcraft:ItemThaumonomicon>);

print('Names added and Thaumonomicon craftable');

//******************************
// Adding tweaked GT/TC Recipes
//******************************

// RC item aspects
Aspects.set(<Railcraft:fluid.steam.bottle>, "ignis 1, aqua 1");
Aspects.set(<Railcraft:fluid.creosote.bottle>, "ignis 1, potentia 1");

Aspects.set(dustPyrotheum, "praecantatio 3, ignis 3, lux 1, auram 1");

// Vanilla items
Aspects.set(<minecraft:iron_bars>, "metallum 1, fabrico 1");
Aspects.set(<minecraft:bread>, "messis 4, fames 3");

// Fix cinderpearls
recipes.addShapeless(<minecraft:blaze_powder>, [<Thaumcraft:blockCustomPlant:3>]);

// Decorative	# GT done 6.07.06
// Assembler.addRecipe(<Thaumcraft:blockCandle> * 8, <Thaumcraft:ItemResource:4> * 4, <Forestry:craftingMaterial:2>, <liquid:water> * 125, 16, 16);
// Arcane.addShaped("TALLOW", <Thaumcraft:blockCandle>, "aer 5, ignis 5", [[null, <minecraft:string>, null], [null, <Thaumcraft:ItemResource:4>, null], [null, <Thaumcraft:ItemResource:4>, null]]);
// Research.clearPages("TALLOW"); 
// Research.addPage("TALLOW", "kirara.research_page.TALLOW.1");
// game.setLocalization("kirara.research_page.TALLOW.1", "By processing and heating flesh in a crucible, you can create a mystical tallow suited for many arcane uses.<BR>This tallow can be used with silk and water to craft candles in an \u00A75Assembling Machine\u00A70, or with just string and a touch of magic on your table.");
// Research.addCruciblePage("TALLOW", <Thaumcraft:ItemResource:4>);
// Research.addArcanePage("TALLOW", <Thaumcraft:blockCandle>);

for ink in [<liquid:squidink> *100, <liquid:dye.watermixed.black> *250, <liquid:dye.flower.black> *100, <liquid:dye.chemical.black> *250] as ILiquidStack[] {
MTUtilsGT.addCustomRecipe("gt.recipe.printer", false, 8, 40, [10000], [<minecraft:paper> *16, <Thaumcraft:ItemEssence:*> *0], [ink, <liquid:glue>*250] as ILiquidStack[], [null] as ILiquidStack[], [tcLabel *16]);
MTUtilsGT.addCustomRecipe("gt.recipe.printer", false, 8, 40, [10000], [<minecraft:paper> *12, <minecraft:slime_ball>], ink, null, [tcLabel *12]);}

MTUtilsGT.addCustomRecipe("gt.recipe.lathe", true, 16, 400, [10000, 10000], [<Thaumcraft:blockCosmeticSolid:6> * 3], [<Thaumcraft:blockStoneDevice:1> * 2, <gregtech:gt.meta.dustSmall:8500>]);

// Arcane Lamp
Arcane.addShaped("ARCANELAMP", <Thaumcraft:blockMetalDevice:7> * 2, "ignis 12, aer 12, aqua 6, perditio 6",
	[[dustPyrotheum, <minecraft:daylight_detector>, dustPyrotheum], 
	[dustPyrotheum, <ImmersiveEngineering:metalDevice2:3>, dustPyrotheum],
	[dustPyrotheum, <Thaumcraft:ItemResource:1>, dustPyrotheum]]);

// Arcane Bellows
Research.addPrereq("BELLOWS", "IT_PYROTHEUM", true);
Arcane.addShaped("BELLOWS", <Thaumcraft:blockWoodenDevice>, "aer 24, ordo 24", 
	[[dustPyrotheum, <ore:plankWood>, <ore:plankWood>],
	[<ore:ingotKanthal>, <ore:dustInfusedAir>, <ore:craftingLeather>],
	[dustPyrotheum, <ore:plankWood>, <ore:plankWood>]]);

// Brain in a Jar
MTUtilsGT.addCustomRecipe("gt.recipe.canner", true, 24, 100, [10000], [<Thaumcraft:blockJar:0>, <Thaumcraft:ItemZombieBrain>], [<Thaumcraft:blockJar:1>]);
MTUtilsGT.addCustomRecipe("gt.recipe.canner", true, 48, 60, [10000, 9000], [<Thaumcraft:blockJar:1>], [<Thaumcraft:blockJar:0>, <Thaumcraft:ItemZombieBrain>]);

// Mirrored Glass
MTUtilsGT.addCustomRecipe("gt.recipe.laminator", true, 16, 80, [10000], [<minecraft:glass_pane>, <gregtech:gt.meta.foil:130>], [<Thaumcraft:ItemResource:10>]);

Research.clearPages("BASICARTIFACE");
Research.addPage("BASICARTIFACE", "tc.research_page.BASICARTIFACE.1");
Research.addArcanePage("BASICARTIFACE", <Thaumcraft:ItemResource:15>);
Research.addCraftingPage("BASICARTIFACE", <Thaumcraft:ItemBaubleBlanks:0>);
Research.addCraftingPage("BASICARTIFACE", <Thaumcraft:ItemBaubleBlanks:1>);
Research.addCraftingPage("BASICARTIFACE", <Thaumcraft:ItemBaubleBlanks:2>);


// Goggles of Revealing
Arcane.addShaped("GOGGLES", <Thaumcraft:ItemGoggles>, "ordo 5, perditio 5, terra 5, aqua 5, ignis 5, aer 5", [[<minecraft:leather>, <ore:springSmallGold>, <minecraft:leather>], [<minecraft:leather>, null, <minecraft:leather>], [<Thaumcraft:ItemThaumometer>, <ore:boltGold>, <Thaumcraft:ItemThaumometer>]]);

// Focus Pouch
Research.addPrereq("FOCUSPOUCH", "THAUMIUM", true);
Arcane.addShaped("FOCUSPOUCH", <Thaumcraft:FocusPouch>, "ordo 10, perditio 10, terra 10, aqua 10, ignis 10, aer 10", 
	[[<minecraft:leather>, <ore:ingotThaumium>, <minecraft:leather>], 
	[<minecraft:leather>, <ore:craftingChest>, <minecraft:leather>],
	[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>]]);

// Hungry Chest
Research.addPrereq("HUNGRYCHEST", "THAUMIUM", true);
Arcane.addShaped("HUNGRYCHEST", <Thaumcraft:blockChestHungry>, "aer 12, perditio 4, ordo 4",
	[[<Thaumcraft:blockMagicalLog:0>, <ore:ingotThaumium>, <Thaumcraft:blockMagicalLog:0>], 
	[<Thaumcraft:blockMagicalLog:0>, <ore:craftingChest>, <Thaumcraft:blockMagicalLog:0>],
	[<Thaumcraft:blockMagicalLog:0>, <Thaumcraft:blockMagicalLog:0>, <Thaumcraft:blockMagicalLog:0>]]);

// Enchanted Fabric
Arcane.addShaped("ENCHFABRIC", <Thaumcraft:ItemResource:7>, "ordo 1, perditio 1, terra 1, aqua 1, ignis 1, aer 1", 
	[[null, <minecraft:string>, null], 
	[<minecraft:string>, <ore:blockWoolWhite>, <minecraft:string>], 
	[null, <minecraft:string>, null]]);

// Boots of the Traveller
Infusion.addRecipe("BOOTSTRAVELLER", <harvestcraft:hardenedleatherbootsItem>, [<Thaumcraft:ItemResource:7>, <Thaumcraft:ItemResource:7>, <gregtech:gt.multiitem.technological:12061>, <OpenComputers:item:49>, <Thaumcraft:ItemShard>, <minecraft:fish:*>], "iter 32, volatus 32", <Thaumcraft:BootsTraveller>, 1);

MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 16, [10000], [<Thaumcraft:ItemResource:5>], <liquid:fishoil> * 10, null, [<Thaumcraft:ItemZombieBrain>]);
game.setLocalization("item.ItemResource.5.name", "Dull Zombie Brain");

print('Artifice mildly Gregged');

// Thaumium
Crucible.addRecipe("THAUMIUM", <gregtech:gt.meta.nugget:8679> * 3, <ore:dustTinyAnyThaumicCrystal>, "metallum 3, praecantatio 1");
Arcane.addShaped("THAUMIUM", <Railcraft:tool.crowbar.magic>, "ordo 8", [[null, <ore:dyeRed>, <ore:ingotThaumium>], [<ore:dyeRed>, <ore:ingotThaumium>, <ore:dyeRed>], [<ore:ingotThaumium>, <ore:dyeRed>, null]]);
Research.clearPages("THAUMIUM");
Research.addPage("THAUMIUM", "tc.research_page.THAUMIUM.1");
Research.addCruciblePage("THAUMIUM", <gregtech:gt.meta.nugget:8679>);
Research.addCraftingPage("THAUMIUM", <Thaumcraft:ItemAxeThaumium>);
Research.addCraftingPage("THAUMIUM", <Thaumcraft:ItemSwordThaumium>);
Research.addCraftingPage("THAUMIUM", <Thaumcraft:ItemPickThaumium>);
Research.addCraftingPage("THAUMIUM", <Thaumcraft:ItemShovelThaumium>);
Research.addCraftingPage("THAUMIUM", <Thaumcraft:ItemHoeThaumium>);
Research.addCraftingPage("THAUMIUM", <Thaumcraft:ItemHelmetThaumium>);
Research.addCraftingPage("THAUMIUM", <Thaumcraft:ItemChestplateThaumium>);
Research.addCraftingPage("THAUMIUM", <Thaumcraft:ItemLeggingsThaumium>);
Research.addCraftingPage("THAUMIUM", <Thaumcraft:ItemBootsThaumium>);
Research.addArcanePage("THAUMIUM", <Railcraft:tool.crowbar.magic>);

// Basic Infusion Tools
Infusion.addRecipe("ELEMENTALPICK", <gregtech:gt.meta.stick:8636>, [<Thaumcraft:ItemShard:1>, <Thaumcraft:ItemShard:1>, <gregtech:gt.meta.toolHeadPickaxe:8679>, salisMundus], "ignis 64, perfodio 64, sensus 64", <Thaumcraft:ItemPickaxeElemental>, 5);
Infusion.addRecipe("ELEMENTALAXE", <gregtech:gt.meta.stick:8636>, [<Thaumcraft:ItemShard:2>, <Thaumcraft:ItemShard:2>, <gregtech:gt.meta.toolHeadAxe:8679>, salisMundus], "aqua 128, arbor 64", <Thaumcraft:ItemAxeElemental>, 5);
Infusion.addRecipe("ELEMENTALSWORD", <gregtech:gt.meta.stick:8636>, [<Thaumcraft:ItemShard:0>, <Thaumcraft:ItemShard:0>, <gregtech:gt.meta.toolHeadSword:8679>, salisMundus], "aer 64, motus 64, potentia 64", <Thaumcraft:ItemSwordElemental>, 5);
Infusion.addRecipe("ELEMENTALSHOVEL", <gregtech:gt.meta.stick:8636>, [<Thaumcraft:ItemShard:3>, <Thaumcraft:ItemShard:3>, <gregtech:gt.meta.toolHeadShovel:8679>, salisMundus], "fabrico 64, terra 128", <Thaumcraft:ItemShovelElemental>, 5);
Infusion.addRecipe("ELEMENTALHOE", <gregtech:gt.meta.stick:8636>, [<Thaumcraft:ItemShard:4>, <Thaumcraft:ItemShard:5>, <gregtech:gt.meta.toolHeadHoe:8679>, salisMundus], "herba 64, meto 64, terra 64", <Thaumcraft:ItemHoeElemental>, 5);

// Arcane Bore
Infusion.addRecipe("ARCANEBORE", <Thaumcraft:FocusExcavation>, [<minecraft:diamond_axe>, <Thaumcraft:ItemShard:0>, <Thaumcraft:ItemShard:1>, <minecraft:diamond_pickaxe>, <Thaumcraft:ItemShard:2>, <Thaumcraft:ItemShard:3>, <minecraft:diamond_shovel>, <Thaumcraft:ItemShard:4>, <Thaumcraft:ItemShard:5>], "machina 64, motus 32, perfodio 64, potentia 32, vacuos 32", <Thaumcraft:blockWoodenDevice:5>, 7);
Arcane.addShaped("ARCANEBORE", <Thaumcraft:blockWoodenDevice:4>, "aer 25, ordo 25", [[<ore:plateThaumium>, <gregtech:gt.multiitem.technological:12043>, <ore:plateThaumium>], [<ore:pipeMediumPlatinum>, <Thaumcraft:blockWoodenDevice:6>, <gregtech:gt.multiitem.technological:12043>], [<ore:plateThaumium>, <Thaumcraft:blockTube:0>, <ore:plateThaumium>]]);
Research.clearPages("ARCANEBORE");
Research.addPage("ARCANEBORE", "tc.research_page.ARCANEBORE.1");
Research.addInfusionPage("ARCANEBORE", <Thaumcraft:blockWoodenDevice:5>);
Research.addPage("ARCANEBORE", "tc.research_page.ARCANEBORE.2");
Research.addArcanePage("ARCANEBORE", <Thaumcraft:blockWoodenDevice:4>);
Research.addPage("ARCANEBORE", "tc.research_page.ARCANEBORE.3");

// Thaumostatic Harness
Infusion.addRecipe("HOVERHARNESS", <GalaxySpace:item.JetPack>, [<Thaumcraft:BlockJarFilledItem>.withTag({Aspects: [{amount: 64, key: "potentia"}]}), <Thaumcraft:blockTube:1>, <gregtech:gt.meta.rotor:130>, <Thaumcraft:ItemShard:0>, <gregtech:gt.meta.plateDouble:8679>, <Thaumcraft:ItemShard:0>, <gregtech:gt.meta.rotor:130>, <Thaumcraft:blockTube:1>], "iter 32, machina 32, potentia 32, volatus 96", <Thaumcraft:HoverHarness>, 6);
//Infusion.addRecipe("HOVERHARNESS", <RotaryCraft:rotarycraft_item_jetpack>, [<Thaumcraft:BlockJarFilledItem>.withTag({Aspects: [{amount: 64, key: "potentia"}]}), <Thaumcraft:blockTube:1>, <gregtech:gt.meta.rotor:130>, <Thaumcraft:ItemShard:0>, <gregtech:gt.meta.plateDouble:8679>, <Thaumcraft:ItemShard:0>, <gregtech:gt.meta.rotor:130>, <Thaumcraft:blockTube:1>], "iter 32, machina 32, potentia 32, volatus 96", <Thaumcraft:HoverHarness>, 6);
Infusion.addRecipe("HOVERGIRDLE", <Thaumcraft:ItemBaubleBlanks:2>, [<Thaumcraft:blockCrystal:0>, <chisel:cloud>, <gregtech:gt.meta.storage.solid:8217>, <gregtech:gt.multiitem.technological:12103>, <Thaumcraft:blockCrystal:3>, <Thaumcraft:blockCrystal:0>, <chisel:cloud>, <gregtech:gt.meta.storage.solid:8217>, <gregtech:gt.multiitem.technological:12103>, <Thaumcraft:blockCrystal:3>], "aer 48, iter 32, potentia 48, volatus 32", <Thaumcraft:ItemGirdleHover>, 8);

// Infusion Altar
Research.addPrereq("INFUSION", "AM_GEMVINTEUM", true);
Arcane.addShaped("INFUSION", <Thaumcraft:blockStoneDevice:2>, "ordo 40", 
	[[<Thaumcraft:blockCosmeticSolid:6>, <Thaumcraft:ItemShard:*>, <Thaumcraft:blockCosmeticSolid:6>],
	[<Thaumcraft:ItemShard:*>, <ore:gemVinteum>, <Thaumcraft:ItemShard:*>], 
	[<Thaumcraft:blockCosmeticSolid:6>,	<Thaumcraft:ItemShard:*>, <Thaumcraft:blockCosmeticSolid:6>]]);
Arcane.addShaped("INFUSION", <Thaumcraft:blockStoneDevice:1> *2, "aer 15, ordo 15, ignis 3, aqua 3, terra 3, perditio 3",[[<Thaumcraft:blockCosmeticSolid:6>, <Thaumcraft:blockCosmeticSolid:6>, <Thaumcraft:blockCosmeticSolid:6>], [null, <Thaumcraft:blockCosmeticSolid:6>, null], [<Thaumcraft:blockCosmeticSolid:6>, <Thaumcraft:blockCosmeticSolid:6>, <Thaumcraft:blockCosmeticSolid:6>]]);

// Warded Arcana
Arcane.addShaped("WARDEDARCANA", <Thaumcraft:blockCosmeticOpaque:2> * 8, "ordo 30, aqua 15, terra 15, ignis 15", [[<ore:blockGlassColorless>, <ore:blockGlassColorless>, <ore:blockGlassColorless>], 
	[<Thaumcraft:blockWoodenDevice:6>, <ore:gt:circuit3>, <Thaumcraft:blockWoodenDevice:6>],
	[<ore:blockGlassColorless>, <ore:blockGlassColorless>, <ore:blockGlassColorless>]]);
Arcane.addShaped("WARDEDARCANA", <Thaumcraft:ItemArcaneDoor>, "aqua 20, ordo 10, terra 10, ignis 10",
	[[<ore:plateThaumium>, <Thaumcraft:blockWoodenDevice:6>, <ore:plateThaumium>], 
	[<Thaumcraft:blockWoodenDevice:6>, <ore:gt:circuit3>, <Thaumcraft:blockWoodenDevice:6>],
	[<ore:plateThaumium>, <Thaumcraft:blockWoodenDevice:6>, <ore:plateThaumium>]]);
Arcane.addShaped("WARDEDARCANA", <Thaumcraft:blockWoodenDevice:2>, "aqua 20, ordo 10, terra 10, ignis 5", 
	[[null, <ore:gt:circuit3>, null], 
	[<Thaumcraft:blockWoodenDevice:6>, <ore:plateThaumium>, <Thaumcraft:blockWoodenDevice:6>]]);

print('Artifice Majorly Gregged');

// Thaumic Restorer
Research.addPrereq("REPAIRER", "IT_TRANSFIERYSTEEL", true);
Research.addPrereq("REPAIRER", "VOIDMETAL", true);
Infusion.addRecipe("REPAIRER", <OpenBlocks:autoanvil>, [<gregtech:gt.meta.plate:8610>, <gregtech:gt.meta.plate:8630>, <gregtech:gt.meta.plate:790>, <gregtech:gt.meta.plate:8675>, <gregtech:gt.meta.plate:8673>, <chisel:ballomoss>, <harvestcraft:hardenedleatherItem>, <Thaumcraft:ItemResource:7>, <NuclearCraft:parts:3>, <gregtech:gt.meta.plate:8679>, <gregtech:gt.meta.plate:8681>, <gregtech:gt.meta.plate:8669>], "fabrico 50, instrumentum 20, ordo 15, praecantatio 20", <ThaumicTinkerer:repairer>, 8);

// Dynamism Tablet
Research.addPrereq("ANIMATION_TABLET", "COREUSE", true);
Arcane.addShaped("ANIMATION_TABLET", <ThaumicTinkerer:animationTablet>, "aer 50, ordo 30, ignis 20", [[<ore:plateGold>, <ore:plateIron>, <ore:plateGold>], [<ore:plateIron>, <Thaumcraft:ItemGolemCore:8>, <ore:plateIron>]]);

print('Thaumics Tinkered');

// Thaumium Grafter/Scoop
Arcane.addShaped("MB_Grafter", <MagicBees:item.thaumiumGrafter>, "ordo 5", [[null, <ore:stickWood>, null], [<ore:craftingToolHardHammer>, <ore:stickWood>, null], [<ore:plateThaumium>, <ore:ingotThaumium>, <ore:craftingToolFile>]]);
Arcane.addShaped("MB_Scoop", <MagicBees:item.thaumiumScoop>, "ordo 5", [[<ore:stickThaumium>, <ore:blockWool>, <ore:stickThaumium>], [<ore:stickThaumium>, <ore:stickThaumium>, <ore:stickThaumium>], [<ore:craftingToolHardHammer>, <ore:stickThaumium>, <ore:craftingToolWireCutter>]]);

print('Gregorious Princess');

// Quartzite Transmutation - gem dupe
Crucible.addRecipe("thaumicenergistics.TECERTUSDUPE", <gregtech:gt.meta.gem:9180> * 2, <gregtech:gt.meta.gem:9180>, "aqua 2, vitreus 2");
Research.addCruciblePage("thaumicenergistics.TECERTUSDUPE", <gregtech:gt.meta.gem:9180>);

// Duplicating Recipes
Research.clearPages("ALCHEMICALDUPLICATION"); 
Research.addPage("ALCHEMICALDUPLICATION", "tc.research_page.ALCHEMICALDUPLICATION.1");
Research.addCruciblePage("ALCHEMICALDUPLICATION", <minecraft:slime_ball>);
Research.addCruciblePage("ALCHEMICALDUPLICATION", <minecraft:clay_ball>);
Research.addCruciblePage("ALCHEMICALDUPLICATION", <minecraft:dye:0>);
Crucible.addRecipe("ALCHEMICALDUPLICATION", <minecraft:dye:2> * 2, <minecraft:dye:2>, "aqua 1, herba 2");
Research.addCruciblePage("ALCHEMICALDUPLICATION", <minecraft:dye:2>);
Crucible.addRecipe("ALCHEMICALDUPLICATION", <minecraft:dye:4> * 2, <minecraft:dye:4>, "lucrum 1, sensus 2");
Research.addCruciblePage("ALCHEMICALDUPLICATION", <minecraft:dye:4>);

// no longer duplicating
Crucible.addRecipe("ALCHEMICALMANUFACTURE", <minecraft:gunpowder> * 2, <ore:dustSaltpeter>, "potentia 4, ignis 4, perditio 2");
Research.addCruciblePage("ALCHEMICALMANUFACTURE", <minecraft:gunpowder>);

Crucible.addRecipe("ALCHEMICALMANUFACTURE", <minecraft:glowstone_dust>, <minecraft:redstone>, "lux 2");
Research.addCruciblePage("ALCHEMICALMANUFACTURE", <minecraft:glowstone_dust>);

// Research Aspects
// Research.clearSiblings("GOLEMSTRAW");
// Research.addPrereq("COREGATHER", "GOLEMSTRAW", false);
Research.addPrereq("GOLEMSTRAW", "INFUSION", true);
// Research.addPrereq("GOLEMBELL", "GOLEMSTRAW", false);
// Research.setAspects("COREGATHER", "lucrum 3, electrum 3, iter 3");
// Research.setAspects("GOLEMBELL", "ordo 4, vinculum 2, sensus 2");
// Research.setComplexity("COREGATHER", 3);
// Research.setComplexity("GOLEMBELL", 2);

// Golem gating
Arcane.addShaped("COREGATHER", <Thaumcraft:ItemGolemCore:100>, "ordo 10, ignis 10", [[null, <ore:concrete>, null], [<ore:concrete>, <Thaumcraft:ItemResource:1>, <ore:concrete>], [null, <ore:concrete>, null]]);

// T2 cores
Arcane.addShaped("COREHARVEST", <Thaumcraft:ItemGolemCore:3>, "aqua 10, terra 10, ordo 20", [[null, <ore:oc:circuitChip2>, null], [<Thaumcraft:ItemHoeThaumium>, <Thaumcraft:ItemGolemCore:100>, <Thaumcraft:ItemHoeThaumium>], [null, <minecraft:hay_block>, null]]);
Arcane.addShaped("COREGUARD", <Thaumcraft:ItemGolemCore:4>, "aqua 10, terra 10, perditio 20", [[null, <ore:oc:circuitChip2>, null], [<Thaumcraft:ItemSwordThaumium>, <Thaumcraft:ItemGolemCore:100>, <OpenBlocks:beartrap>], [null, <minecraft:spider_eye>, null]]);
Arcane.addShaped("COREBUTCHER", <Thaumcraft:ItemGolemCore:9>, "aqua 10, terra 10, ordo 20", [[null, <ore:oc:circuitChip2>, null], [<Thaumcraft:ItemSwordThaumium>, <Thaumcraft:ItemGolemCore:100>, <Thaumcraft:ItemAxeThaumium>], [null, <minecraft:porkchop>, null]]);

// T3 cores
Infusion.addRecipe("COREALCHEMY", <Thaumcraft:ItemGolemCore:5>, [<Thaumcraft:blockJar>, <minecraft:potion:32>, <gregtech:gt.multiitem.technological:12023>, <minecraft:potion:64>], "aqua 16, motus 16, praecantatio 32, electrum 8", <Thaumcraft:ItemGolemCore:6>, 5);
Infusion.addRecipe("CORELUMBER", <Thaumcraft:ItemGolemCore:3>, [<Thaumcraft:ItemAxeElemental>, <gregtech:gt.meta.toolHeadAxe:8634>, <gregtech:gt.multiitem.technological:12083>, <gregtech:gt.meta.toolHeadAxe:8673>], "arbor 16, instrumentum 16, meto 32, electrum 8", <Thaumcraft:ItemGolemCore:7>, 5);
Infusion.addRecipe("COREUSE", <Thaumcraft:ItemGolemCore:1>, [<gregtech:gt.multiitem.randomtools:9000>, <OpenComputers:item:42>, <gregtech:gt.multiitem.technological:12083>, <gregtech:gt.meta.toolHeadWrench:8679>], "machina 16, instrumentum 16, humanus 32, electrum 8", <Thaumcraft:ItemGolemCore:8>, 5);
Infusion.addRecipe("CORESORTING", <Thaumcraft:ItemGolemCore:1>, [<Thaumcraft:ItemZombieBrain>, <minecraft:writable_book>, <gregtech:gt.multiitem.technological:12082>, <gregtech:gt.multiitem.technological:12143>], "cognitio 16, vacuos 16, permutatio 32, electrum 8", <Thaumcraft:ItemGolemCore:10>, 5);
Infusion.addRecipe("COREFISHING", <Thaumcraft:ItemGolemCore:3>, [<minecraft:fishing_rod>, <harvestcraft:calamarirawItem>, <gregtech:gt.multiitem.technological:12003>, <gregtech:gt.multiitem.bottles:1006>, <minecraft:fish>, <Thaumcraft:ItemNuggetFish>], "aqua 16, bestia 16, meto 32, electrum 8", <Thaumcraft:ItemGolemCore:11>, 5);
Infusion.addRecipe("COREFISHING", <Thaumcraft:ItemGolemCore:3>, [<minecraft:fishing_rod>, <harvestcraft:calamarirawItem>, <gregtech:gt.multiitem.technological:12003>, <gregtech:gt.multiitem.bottles:1006>, <minecraft:fish:1>, <Thaumcraft:ItemNuggetFish>], "aqua 16, bestia 16, meto 32, electrum 8", <Thaumcraft:ItemGolemCore:11>, 5);
Infusion.addRecipe("COREFISHING", <Thaumcraft:ItemGolemCore:3>, [<minecraft:fishing_rod>, <harvestcraft:calamarirawItem>, <gregtech:gt.multiitem.technological:12003>, <gregtech:gt.multiitem.bottles:1006>, <minecraft:fish:2>, <Thaumcraft:ItemNuggetFish>], "aqua 16, bestia 16, meto 32, electrum 8", <Thaumcraft:ItemGolemCore:11>, 5);
Infusion.addRecipe("COREFISHING", <Thaumcraft:ItemGolemCore:3>, [<minecraft:fishing_rod>, <harvestcraft:calamarirawItem>, <gregtech:gt.multiitem.technological:12003>, <gregtech:gt.multiitem.bottles:1006>, <minecraft:fish:3>, <Thaumcraft:ItemNuggetFish>], "aqua 16, bestia 16, meto 32, electrum 8", <Thaumcraft:ItemGolemCore:11>, 5);

// Golem Upgrade Recipes
Arcane.removeRecipe(<Thaumcraft:ItemGolemUpgrade:0>);
Arcane.removeRecipe(<Thaumcraft:ItemGolemUpgrade:1>);
Arcane.removeRecipe(<Thaumcraft:ItemGolemUpgrade:2>);
Arcane.removeRecipe(<Thaumcraft:ItemGolemUpgrade:3>);
Arcane.removeRecipe(<Thaumcraft:ItemGolemUpgrade:4>);
Arcane.removeRecipe(<Thaumcraft:ItemGolemUpgrade:5>);

Arcane.addShaped("UPGRADEAIR", <Thaumcraft:ItemGolemUpgrade:0>, "aer 10", [[null, <Thaumcraft:ItemShard:0>, null], [<Thaumcraft:ItemShard:0>, <ore:ringGold>, <Thaumcraft:ItemShard:0>], [null, <Thaumcraft:ItemShard:0>, null]]);
Arcane.addShaped("UPGRADEEARTH", <Thaumcraft:ItemGolemUpgrade:1>, "terra 10", [[null, <Thaumcraft:ItemShard:3>, null], [<Thaumcraft:ItemShard:3>, <ore:ringGold>, <Thaumcraft:ItemShard:3>], [null, <Thaumcraft:ItemShard:3>, null]]);
Arcane.addShaped("UPGRADEFIRE", <Thaumcraft:ItemGolemUpgrade:2>, "ignis 10", [[null, <Thaumcraft:ItemShard:1>, null], [<Thaumcraft:ItemShard:1>, <ore:ringGold>, <Thaumcraft:ItemShard:1>], [null, <Thaumcraft:ItemShard:1>, null]]);
Arcane.addShaped("UPGRADEWATER", <Thaumcraft:ItemGolemUpgrade:3>, "aqua 10", [[null, <Thaumcraft:ItemShard:2>, null], [<Thaumcraft:ItemShard:2>, <ore:ringGold>, <Thaumcraft:ItemShard:2>], [null, <Thaumcraft:ItemShard:2>, null]]);
Arcane.addShaped("UPGRADEORDER", <Thaumcraft:ItemGolemUpgrade:4>, "ordo 10", [[null, <Thaumcraft:ItemShard:4>, null], [<Thaumcraft:ItemShard:4>, <ore:ringGold>, <Thaumcraft:ItemShard:4>], [null, <Thaumcraft:ItemShard:4>, null]]);
Arcane.addShaped("UPGRADEENTROPY", <Thaumcraft:ItemGolemUpgrade:5>, "perditio 10", [[null, <Thaumcraft:ItemShard:5>, null], [<Thaumcraft:ItemShard:5>, <ore:ringGold>, <Thaumcraft:ItemShard:5>], [null, <Thaumcraft:ItemShard:5>, null]]);

// Add unused items for golem placers
furnace.addRecipe(<minecraft:netherbrick>, <ore:dustNetherBrick>);

// Golem Recipes
Infusion.addRecipe("GOLEMSTRAW", <minecraft:hay_block>, 
	[<OpenComputers:eeprom>, <gregtech:gt.meta.gearGtSmall:8221>, <gregtech:gt.meta.springSmall:500>, <gregtech:gt.meta.gearGtSmall:8221>],
	"spiritus 8, humanus 8, motus 8", <Thaumcraft:ItemGolemPlacer:0>, 2);
Infusion.addRecipe("GOLEMWOOD", <Thaumcraft:blockMagicalLog:0>, 
	[<OpenComputers:eeprom>, <gregtech:gt.meta.gearGtSmall:8222>, <gregtech:gt.meta.springSmall:8610>, <gregtech:gt.meta.gearGtSmall:8222>],
	"spiritus 8, humanus 8, motus 8", <Thaumcraft:ItemGolemPlacer:1>, 2);
Infusion.addRecipe("GOLEMFLESH", <Thaumcraft:blockTaint:2>, 
	[<OpenComputers:eeprom>, <gregtech:gt.meta.gearGtSmall:8620>, <gregtech:gt.meta.springSmall:8620>, <gregtech:gt.meta.gearGtSmall:8620>],
	"spiritus 16, humanus 16, motus 16", <Thaumcraft:ItemGolemPlacer:4>, 4);
Infusion.addRecipe("GOLEMCLAY", <minecraft:brick_block>, 
	[<OpenComputers:eeprom>, <gregtech:gt.meta.gearGtSmall:8662>, <gregtech:gt.meta.springSmall:8662>, <gregtech:gt.meta.gearGtSmall:8662>],
	"spiritus 8, humanus 8, motus 8", <Thaumcraft:ItemGolemPlacer:3>, 2);
Infusion.addRecipe("GOLEMTALLOW", <Thaumcraft:blockCosmeticSolid:5>, 
	[<gregtech:gt.multiitem.technological:32011>, <OpenComputers:eeprom>, <gregtech:gt.meta.gearGtSmall:8600>, <gregtech:gt.meta.springSmall:8600>, <gregtech:gt.meta.gearGtSmall:8600>, <OpenComputers:item:1>],
	"spiritus 16, humanus 16, motus 16", <Thaumcraft:ItemGolemPlacer:2>, 4);
Infusion.addRecipe("GOLEMSTONE", <minecraft:stonebrick>,
	[<OpenComputers:eeprom>, <gregtech:gt.meta.gearGtSmall:8500>, <gregtech:gt.meta.springSmall:260>, <gregtech:gt.meta.gearGtSmall:8500>], 
	"spiritus 8, humanus 8, motus 8", <Thaumcraft:ItemGolemPlacer:5>, 2);
Infusion.addRecipe("GOLEMIRON", <minecraft:iron_block>, 
	[<OpenComputers:eeprom>, <gregtech:gt.meta.gearGtSmall:8643>, <gregtech:gt.meta.springSmall:8643>, <gregtech:gt.meta.gearGtSmall:8643>],
	"spiritus 8, humanus 8, motus 8", <Thaumcraft:ItemGolemPlacer:6>, 2);
Infusion.addRecipe("GOLEMTHAUMIUM", <Thaumcraft:blockCosmeticSolid:4>,
	[<Thaumcraft:ItemResource:14>, <OpenComputers:eeprom>, <gregtech:gt.meta.gearGtSmall:8679>, <gregtech:gt.meta.springSmall:8679>, <gregtech:gt.meta.gearGtSmall:8679>, <OpenComputers:item:1>],
	"spiritus 16, humanus 16, motus 16", <Thaumcraft:ItemGolemPlacer:7>, 4);

// Golem Thaumonomicon Entries
Research.clearPages("GOLEMSTRAW"); 
Research.addPage("GOLEMSTRAW", "tc.research_page.GOLEMSTRAW.1");
Research.addPage("GOLEMSTRAW", "tc.research_page.GOLEMSTRAW.2");
Research.addInfusionPage("GOLEMSTRAW", <Thaumcraft:ItemGolemPlacer:0>);
Research.addPage("GOLEMSTRAW", "tc.research_page.GOLEMSTRAW.3");

Research.clearPages("GOLEMWOOD"); 
Research.addPage("GOLEMWOOD", "tc.research_page.GOLEMWOOD.1");
Research.addInfusionPage("GOLEMWOOD", <Thaumcraft:ItemGolemPlacer:1>);

Research.clearPages("GOLEMFLESH"); 
Research.addPage("GOLEMFLESH", "tc.research_page.GOLEMFLESH.1");
Research.addInfusionPage("GOLEMFLESH", <Thaumcraft:ItemGolemPlacer:4>);

Research.clearPages("GOLEMCLAY"); 
Research.addPage("GOLEMCLAY", "tc.research_page.GOLEMCLAY.1");
Research.addInfusionPage("GOLEMCLAY", <Thaumcraft:ItemGolemPlacer:3>);

Research.clearPages("GOLEMTALLOW"); 
Research.addPage("GOLEMTALLOW", "tc.research_page.GOLEMTALLOW.1");
Research.addInfusionPage("GOLEMTALLOW", <Thaumcraft:ItemGolemPlacer:2>);

Research.clearPages("GOLEMSTONE"); 
Research.addPage("GOLEMSTONE", "tc.research_page.GOLEMSTONE.1");
Research.addInfusionPage("GOLEMSTONE", <Thaumcraft:ItemGolemPlacer:5>);

Research.clearPages("GOLEMIRON"); 
Research.addPage("GOLEMIRON", "tc.research_page.GOLEMIRON.1");
Research.addInfusionPage("GOLEMIRON", <Thaumcraft:ItemGolemPlacer:6>);

Research.clearPages("GOLEMTHAUMIUM"); 
Research.addPage("GOLEMTHAUMIUM", "tc.research_page.GOLEMTHAUMIUM.1");
Research.addInfusionPage("GOLEMTHAUMIUM", <Thaumcraft:ItemGolemPlacer:7>);

// Golem Upgrade Thaumonomicon Entries
Research.refreshResearchRecipe("UPGRADEAIR");
Research.refreshResearchRecipe("UPGRADEFIRE");
Research.refreshResearchRecipe("UPGRADEORDER");
Research.refreshResearchRecipe("UPGRADEWATER");
Research.refreshResearchRecipe("UPGRADEEARTH");
Research.refreshResearchRecipe("UPGRADEENTROPY");


// Golem Animation Core Thaumonomicon Entries
// Research.clearPages("COREFILL"); 
// Research.addPage("COREFILL", "tc.research_page.COREFILL.1");
// Research.addInfusionPage("COREFILL", <Thaumcraft:ItemGolemCore:0>);

// Research.clearPages("COREEMPTY"); 
// Research.addPage("COREEMPTY", "tc.research_page.COREEMPTY.1");
// Research.addInfusionPage("COREEMPTY", <Thaumcraft:ItemGolemCore:1>);

// Research.clearPages("COREGATHER"); 
// Research.addPage("COREGATHER", "tc.research_page.COREGATHER.1");
// Research.addInfusionPage("COREGATHER", <Thaumcraft:ItemGolemCore:2>);
// Research.addPage("COREGATHER", "kirara.research_page.IT_COREGATHER.1");
// game.setLocalization("kirara.research_page.IT_COREGATHER.1", "Simply right-click on a freshly placed golem with a core to attach it to the golem.<BR>The precision required for the basic animation core means the thaumaturge must channel a very large amount of ordo vis into a block of redstone circuit in a very short amount of time - perhaps more than what your wand can currently handle.<BR>Maybe an alternative manufacturing method using precise assembly machinery could adequately substitute...");
// Research.addArcanePage("COREGATHER", <Thaumcraft:ItemGolemCore:100>);

Research.clearPages("COREHARVEST"); 
Research.addPage("COREHARVEST", "tc.research_page.COREHARVEST.1");
Research.addArcanePage("COREHARVEST", <Thaumcraft:ItemGolemCore:3>);
Research.addPage("COREHARVEST", "tc.research_page.COREHARVEST.2");

Research.clearPages("COREGUARD"); 
Research.addPage("COREGUARD", "tc.research_page.COREGUARD.1");
Research.addArcanePage("COREGUARD", <Thaumcraft:ItemGolemCore:4>);
Research.addPage("COREGUARD", "tc.research_page.COREGUARD.2");

//Research.clearPages("CORELIQUID"); 
//Research.addPage("CORELIQUID", "tc.research_page.CORELIQUID.1");
//Research.addInfusionPage("CORELIQUID", <Thaumcraft:ItemGolemCore:5>);
//Research.addPage("CORELIQUID", "tc.research_page.CORELIQUID.2");

Research.clearPages("COREALCHEMY"); 
Research.addPage("COREALCHEMY", "tc.research_page.COREALCHEMY.1");
Research.addInfusionPage("COREALCHEMY", <Thaumcraft:ItemGolemCore:6>);
Research.addPage("COREALCHEMY", "tc.research_page.COREALCHEMY.2");

Research.refreshResearchRecipe("CORELUMBER");
Research.refreshResearchRecipe("COREFISHING");

Research.clearPages("COREUSE"); 
Research.addPage("COREUSE", "tc.research_page.COREUSE.1");
Research.addPage("COREUSE", "tc.research_page.COREUSE.2");
Research.addInfusionPage("COREUSE", <Thaumcraft:ItemGolemCore:8>);
Research.addPage("COREUSE", "tc.research_page.COREUSE.3");

Research.clearPages("COREBUTCHER"); 
Research.addPage("COREBUTCHER", "tc.research_page.COREBUTCHER.1");
Research.addArcanePage("COREBUTCHER", <Thaumcraft:ItemGolemCore:9>);

Research.clearPages("CORESORTING"); 
Research.addPage("CORESORTING", "tc.research_page.CORESORTING.1");
Research.addInfusionPage("CORESORTING", <Thaumcraft:ItemGolemCore:10>);

print('Golems restyled');

// Deconstructor
Arcane.addShaped("DECONSTRUCTOR", <Thaumcraft:blockTable:14>, "perditio 20, ordo 20", 
	[[null, <Thaumcraft:ItemThaumometer>, null], 
    [<minecraft:golden_axe>, <Thaumcraft:blockTable>, <minecraft:golden_pickaxe>]]);

// Vis Filter
Arcane.addShaped("DISTILESSENTIA", <Thaumcraft:ItemResource:8>, "ordo 5, aqua 5", [[<ore:plateGold>, <Thaumcraft:blockWoodenDevice:7>, <ore:plateGold>]]);

// Alembic
Arcane.addShaped("DISTILESSENTIA", <Thaumcraft:blockMetalDevice:1>, "aer 5, aqua 5", 
	[[<Thaumcraft:ItemResource:8>, <ore:plateIron>, <ore:plateCurvedGold>], 
	[<ore:plateIron>, <ore:bucketEmpty>, <ore:plateIron>], 
	[<ore:plateIron>, null, <ore:plateIron>]]);

// Crystallizer
Arcane.addShaped("ESSENTIACRYSTAL", <Thaumcraft:blockTube:7>, "terra 15, aqua 5, ordo 5", 
	[[null, <gregtech:gt.multitileentity:22004>, null], 
	[<Thaumcraft:ItemShard:6>, <Thaumcraft:blockMetalDevice:9>, <Thaumcraft:ItemShard:6>],
	[null, <Thaumcraft:blockTube:0>, null]]);

print('Alchemical Greggery');

// Copper Wand Cap ( RECIPE NOW IN INFINITY CORE - FIX CONSUMPTION OF THAUMONOMICON )	# will not MT
recipes.addShaped(<Thaumcraft:WandCap:3>, [[null, <ore:roundCopper>, null], [<ore:craftingToolChisel>, <ore:ringCopper>, <ore:craftingToolHardHammer>], [null, <ore:ringCopper>, null]]);
// also try .giveBack(xXx) .reuse(xXx), or .transformReplace(Thaunomicon) xXx none work

// Wood + Copper Wand
recipes.addShaped(<Thaumcraft:WandCasting:2>.withTag({cap: "copper", rod: "wood"}), [[null, null, <Thaumcraft:WandCap:3>], [null, <ore:stickLongWood>, null], [<Thaumcraft:WandCap:3>, null, null]]);

// Silver Wand Cap
Arcane.addShaped("CAP_silver", <Thaumcraft:WandCap:5>, "ordo 5, ignis 5, aer 5", [[null, <ore:roundSilver>, null], [null, <ore:ringSilver>, <ore:craftingToolHardHammer>], [null, <ore:ringSilver>, null]]);
Crucible.addRecipe("CAP_silver", <Thaumcraft:WandCap:4>, <Thaumcraft:WandCap:5>, "auram 2, potentia 8");

// Thaumium Wand Cap
Arcane.addShaped("CAP_thaumium", <Thaumcraft:WandCap:6>, "ordo 10, ignis 10, aer 10", [[null, <ore:roundThaumium>, null], [null, <ore:ringThaumium>, <ore:craftingToolHardHammer>],[null, <ore:ringThaumium>,null]]);
Infusion.addRecipe("CAP_thaumium", <Thaumcraft:WandCap:6>, [salisMundus, salisMundus], "auram 8, potentia 16", <Thaumcraft:WandCap:2>, 3);

// Voidmetal Wand Cap
Arcane.addShaped("CAP_void", <Thaumcraft:WandCap:8> * 2, "perditio 200, ordo 200, ignis 200, terra 200, aqua 200, aer 200", 
	[[null, <ore:plateVoid>, null], 
	[<ore:plateCurvedVoid>, <ore:craftingToolHardHammer>, <ore:plateCurvedVoid>]]);
Infusion.addRecipe("CAP_void", <Thaumcraft:WandCap:8>, [salisMundus, salisMundus, salisMundus, salisMundus], "alienis 32, auram 32, potentia 32, vacuos 32", <Thaumcraft:WandCap:7>, 9);

// Greatwood Rod
Arcane.addShaped("ROD_greatwood_staff", <Thaumcraft:WandRod:50>, "terra 62", [[null, null, charmPrimal], [null, <Thaumcraft:WandRod:0>, null], [<Thaumcraft:WandRod:0>, null, null]]);

// Adjust NEI to match
NEI.addEntry(<Thaumcraft:WandCasting:2>.withTag({cap: "copper", rod: "wood", aqua: 2500, terra: 2500, ignis: 2500, ordo: 2500, perditio: 2500, aer: 2500}));
NEI.addEntry(<Thaumcraft:WandCasting:12>.withTag({cap: "silver", rod: "greatwood", aqua: 5000, terra: 5000, ignis: 5000, ordo: 5000, perditio: 5000, aer: 5000}));
NEI.addEntry(<Thaumcraft:WandCasting:54>.withTag({aqua: 10000, terra: 10000, ignis: 10000, cap: "thaumium", rod: "silverwood", ordo: 10000, perditio: 10000, aer: 10000}));
NEI.addEntry(<Thaumcraft:WandCasting:128>.withTag({aqua: 15000, terra: 15000, ignis: 15000, cap: "thaumium", rod: "silverwood", ordo: 15000, sceptre: 1 as byte, perditio: 15000, aer: 15000}));

// Obsidian Rod
Infusion.addRecipe("ROD_obsidian", <gregtech:gt.meta.stickLong:8214>, [<Thaumcraft:ItemShard:6>, <Thaumcraft:ItemShard:3>], "praecantatio 48, tenebrae 48, terra 96", <Thaumcraft:WandRod:1>, 2);
Arcane.addShaped("ROD_obsidian_staff", <Thaumcraft:WandRod:51>, "terra 100", [[null, null, charmPrimal], [null, <Thaumcraft:WandRod:1>, null], [<Thaumcraft:WandRod:1>, null, null]]);

// Icy Rod
Infusion.addRecipe("ROD_ice", <gregtech:gt.meta.stickLong:9802>, [<Thaumcraft:ItemShard:6>, <Thaumcraft:ItemShard:2>], "aqua 96, gelum 48, praecantatio 48", <Thaumcraft:WandRod:3>, 2);
Arcane.addShaped("ROD_ice_staff", <Thaumcraft:WandRod:53>, "aqua 100", [[null, null, charmPrimal], [null, <Thaumcraft:WandRod:3>, null], [<Thaumcraft:WandRod:3>, null, null]]);

// Quartz Rod
Infusion.addRecipe("ROD_quartz", <gregtech:gt.meta.stickLong:9180>, [<Thaumcraft:ItemShard:6>, <Thaumcraft:ItemShard:4>], "ordo 96, praecantatio 48, vitreus 48", <Thaumcraft:WandRod:4>, 2);
Arcane.addShaped("ROD_quartz_staff", <Thaumcraft:WandRod:54>, "ordo 100", [[null, null, charmPrimal], [null, <Thaumcraft:WandRod:4>, null], [<Thaumcraft:WandRod:4>, null, null]]);

// Reed Rod
Infusion.addRecipe("ROD_reed", <minecraft:reeds>, [<Thaumcraft:ItemShard:6>, <Thaumcraft:ItemShard>], "aer 96, motus 48, praecantatio 48", <Thaumcraft:WandRod:5>, 2);
Arcane.addShaped("ROD_reed_staff", <Thaumcraft:WandRod:55>, "aer 100", [[null, null, charmPrimal], [null, <Thaumcraft:WandRod:5>, null], [<Thaumcraft:WandRod:5>, null, null]]);

// Blazing Rod
Infusion.addRecipe("ROD_blaze", <minecraft:blaze_rod>, [<Thaumcraft:ItemShard:6>, <Thaumcraft:ItemShard:1>], "bestia 48, ignis 96, praecantatio 48", <Thaumcraft:WandRod:6>, 2);
Arcane.addShaped("ROD_blaze_staff", <Thaumcraft:WandRod:56>, "ignis 100", [[null, null, charmPrimal], [null, <Thaumcraft:WandRod:6>, null], [<Thaumcraft:WandRod:6>, null, null]]);

// Bone Rod
Infusion.addRecipe("ROD_bone", <minecraft:bone>, [<Thaumcraft:ItemShard:6>, <Thaumcraft:ItemShard:5>], "exanimis 48, perditio 96, praecantatio 48", <Thaumcraft:WandRod:7>, 2);
Arcane.addShaped("ROD_bone_staff", <Thaumcraft:WandRod:57>, "perditio 100", [[null, null, charmPrimal], [null, <Thaumcraft:WandRod:7>, null], [<Thaumcraft:WandRod:7>, null, null]]);

// Silverwood Rod
Arcane.addShaped("ROD_silverwood_staff", <Thaumcraft:WandRod:52>, "ordo 132", [[null, null, charmPrimal], [null, <Thaumcraft:WandRod:2>, null], [<Thaumcraft:WandRod:2>, null, null]]);

// Sceptre
Research.removeResearch("CAP_gold");
Research.removeResearch("CAP_copper");
Research.clearPrereqs("CAP_silver");
Research.clearPrereqs("CAP_thaumium");
Research.clearPrereqs("ROD_silverwood");
Research.clearPrereqs("ROD_greatwood_staff");
Research.clearPrereqs("SCEPTRE");
Research.addPrereq("SCEPTRE", "CAP_thaumium", false);
Research.addPrereq("CAP_silver", "BASICTHAUMATURGY", false);
Research.moveResearch("CAP_silver", "THAUMATURGY", 2, 1);
Research.addPrereq("CAP_thaumium", "CAP_silver", false);
Research.addPrereq("CAP_thaumium", "THAUMIUM", true);
Research.addPrereq("ROD_silverwood", "ROD_greatwood", false);
Research.addPrereq("ROD_silverwood_staff", "ROD_silverwood", false);
Research.addPrereq("ROD_silverwood", "ROD_obsidian", true);
Research.addPrereq("ROD_silverwood", "ROD_ice", true);
Research.addPrereq("ROD_silverwood", "ROD_blaze", true);
Research.addPrereq("ROD_silverwood", "ROD_quartz", true);
Research.addPrereq("ROD_silverwood", "ROD_reed", true);
Research.addPrereq("ROD_silverwood", "ROD_bone", true);
Research.setConcealed("ROD_silverwood", true);
Research.moveResearch("ROD_silverwood", "THAUMATURGY", -3, 4);
Research.moveResearch("ROD_quartz_staff", "THAUMATURGY", -5, 6);
Research.moveResearch("ROD_silverwood_staff", "THAUMATURGY", -2, 5);
Research.addPrereq("ROD_greatwood_staff", "ROD_greatwood", false);
Research.moveResearch("ROD_greatwood_staff", "THAUMATURGY", -2, 2);
Research.setConcealed("ROD_greatwood_staff", true);
Research.setConcealed("CAP_thaumium", true);
Research.moveResearch("CAP_thaumium", "THAUMATURGY", 2, 3);
Research.addPrereq("SCEPTRE", "ROD_silverwood_staff", false);
Research.moveResearch("SCEPTRE", "THAUMATURGY", 0, 4);

print('Wands warped');

/* // Change Magic Energy/Absorber Generators - don't exist in GT6 (yet)
// Research.addPrereq("GT_MAGICENERGY", "IT_TRANSFIERYSTEEL", true);
// Infusion.removeRecipe(<gregtech:gt.blockmachines:1123>);
// Infusion.addRecipe("GT_MAGICENERGY", <gregtech:gt.blockmachines:11>, [<minecraft:beacon>, <gregtech:gt.metaitem.01:32702>, <gregtech:gt.metaitem.01:17346>, <gregtech:gt.metaitem.01:32690>, <Thaumcraft:blockStoneDevice:0>, <gregtech:gt.metaitem.01:32702>, <gregtech:gt.metaitem.01:17346>, <gregtech:gt.metaitem.01:32690>], "potentia 16, machina 32, praecantatio 16, electrum 32", <gregtech:gt.blockmachines:1123>, 5);
// Research.refreshResearchRecipe("GT_MAGICENERGY");

// Infusion.removeRecipe(<gregtech:gt.blockmachines:1124>);
// Infusion.addRecipe("GT_MAGICENERGY2", <gregtech:gt.blockmachines:12>, [<gregtech:gt.metaitem.01:32672>, <IC2:itemPartCircuitAdv>, <gregtech:gt.metaitem.01:17321>, <gregtech:gt.metaitem.01:32691>, <Thaumcraft:blockStoneDevice:0>, <IC2:itemPartCircuitAdv>, <gregtech:gt.metaitem.01:17321>, <gregtech:gt.metaitem.01:32691>], "potentia 32, machina 64, praecantatio 32, electrum 64", <gregtech:gt.blockmachines:1124>, 7);
// Research.refreshResearchRecipe("GT_MAGICENERGY2");

// Research.addPrereq("GT_MAGICENERGY3", "IT_TRANSADAMANTIUM", true);
// Infusion.removeRecipe(<gregtech:gt.blockmachines:1125>);
// Infusion.addRecipe("GT_MAGICENERGY3", <gregtech:gt.blockmachines:13>, [<gregtech:gt.metaitem.01:32673>, <gregtech:gt.metaitem.01:32705>, <gregtech:gt.metaitem.01:17319>, <gregtech:gt.metaitem.01:32692>, <Thaumcraft:blockStoneDevice:0>, <gregtech:gt.metaitem.01:32705>, <gregtech:gt.metaitem.01:17319>, <gregtech:gt.metaitem.01:32692>], "potentia 64, machina 128, praecantatio 64, electrum 128", <gregtech:gt.blockmachines:1125>, 9);
// Research.refreshResearchRecipe("GT_MAGICENERGY3");

// Research.addPrereq("GT_MAGICABSORB", "WANDPED", true);
// Infusion.removeRecipe(<gregtech:gt.blockmachines:1127>);
// Infusion.addRecipe("GT_MAGICABSORB", <gregtech:gt.blockmachines:11>, [<minecraft:beacon>, <gregtech:gt.metaitem.01:32702>, <gregtech:gt.metaitem.01:17346>, <gregtech:gt.metaitem.01:32690>, <Thaumcraft:blockStoneDevice:5>, <gregtech:gt.metaitem.01:32702>, <gregtech:gt.metaitem.01:17346>, <gregtech:gt.metaitem.01:32690>], "potentia 16, machina 32, praecantatio 16, electrum 32, instrumentum 32, vacuos 16", <gregtech:gt.blockmachines:1127>, 6);
// Research.refreshResearchRecipe("GT_MAGICABSORB");
// Infusion.removeRecipe(<gregtech:gt.blockmachines:1128>);
// Infusion.addRecipe("GT_MAGICABSORB", <gregtech:gt.blockmachines:12>, [<gregtech:gt.metaitem.01:32672>, <IC2:itemPartCircuitAdv>, <gregtech:gt.metaitem.01:17321>, <gregtech:gt.metaitem.01:32691>, <Thaumcraft:blockStoneDevice:5>, <IC2:itemPartCircuitAdv>, <gregtech:gt.metaitem.01:17321>, <gregtech:gt.metaitem.01:32691>], "potentia 32, machina 64, praecantatio 32, electrum 64, instrumentum 64, vacuos 32", <gregtech:gt.blockmachines:1128>, 8);
// Research.addInfusionPage("GT_MAGICABSORB", <gregtech:gt.blockmachines:1128>);

// Research.addPrereq("GT_MAGICABSORB2", "IT_TRANSADAMANTIUM", true);
// Research.clearPages("GT_MAGICABSORB2");
// Research.addPage("GT_MAGICABSORB2", "gt.research.page.1.GT_MAGICABSORB2");
// Infusion.removeRecipe(<gregtech:gt.blockmachines:1129>);
// Infusion.addRecipe("GT_MAGICABSORB2", <gregtech:gt.blockmachines:13>, [<gregtech:gt.metaitem.01:32673>, <gregtech:gt.metaitem.01:32705>, <gregtech:gt.metaitem.01:17319>, <gregtech:gt.metaitem.01:32692>, <Thaumcraft:blockStoneDevice:5>, <gregtech:gt.metaitem.01:32705>, <gregtech:gt.metaitem.01:17319>, <gregtech:gt.metaitem.01:32692>], "potentia 64, machina 128, praecantatio 64, electrum 128, instrumentum 128, vacuos 64", <gregtech:gt.blockmachines:1129>, 10);
// Infusion.removeRecipe(<gregtech:gt.blockmachines:1130>);
// Infusion.addRecipe("GT_MAGICABSORB2", <gregtech:gt.blockmachines:14>, [<gregtech:gt.metaitem.01:32674>, <gregtech:gt.metaitem.01:32706>, <gregtech:gt.metaitem.01:17070>, <gregtech:gt.metaitem.01:32693>, <Thaumcraft:blockStoneDevice:5>, <gregtech:gt.metaitem.01:32706>, <gregtech:gt.metaitem.01:17070>, <gregtech:gt.metaitem.01:32693>], "potentia 128, machina 256, praecantatio 128, electrum 256, instrumentum 256, vacuos 128, strontio 16, radio 32", <gregtech:gt.blockmachines:1130>, 12);
// Research.addInfusionPage("GT_MAGICABSORB2", <gregtech:gt.blockmachines:1129>);
// Research.addInfusionPage("GT_MAGICABSORB2", <gregtech:gt.blockmachines:1130>);

// print('Magic Generators Unfuseable');	*/

// Naquadah
Research.addResearch("IT_TRANSNAQUADAH", "ELDRITCH", "auram 2, radio 2, alienis 2, tenebrae 2, vitreus 2, nebrisum 2", -3, 0, 1, <gregtech:gt.meta.nugget:1740>);
game.setLocalization("tc.research_name.IT_TRANSNAQUADAH", "Naquadah Transmutation");
game.setLocalization("tc.research_text.IT_TRANSNAQUADAH", "[IT] And now I understand, for I decided to learn of nothing except the void");
Research.addPage("IT_TRANSNAQUADAH", "kirara.research_page.IT_TRANSNAQUADAH.1");
game.setLocalization("kirara.research_page.IT_TRANSNAQUADAH.1", "This is it, THIS IS IT!<BR>Long they have scorned me for daring to expose my mind to the beyond, but these fools shall now understand the true power of the void.<BR>To imagine that merely modifying void metal could create a substance that pedestrian alchemists cannot even imagine in their wildest dreams - harder than diamond, yet malleable; dense and crystalline, while superconductive; and most importantly, it seems to contain a ludicrous amount of energy.<BR>And to think all it took was a piece of my sanity.");
Research.addPrereq("IT_TRANSNAQUADAH", "ELDRITCHMAJOR", false);
Research.addPrereq("IT_TRANSNAQUADAH", "VOIDMETAL", true);
Research.addPrereq("IT_TRANSNAQUADAH", "IT_TRANSIRIDIUM", true);
Research.addPrereq("IT_TRANSNAQUADAH", "IT_TRANSURANIUM", true);
Infusion.addRecipe("IT_TRANSNAQUADAH", <gregtech:gt.meta.dustSmall:950>, [<Thaumcraft:ItemResource:17>, <Thaumcraft:ItemResource:17>], "auram 3, radio 3, alienis 3, nebrisum 3, tenebrae 3, electrum 3", <gregtech:gt.meta.dust:1740>, 5);
Research.addInfusionPage("IT_TRANSNAQUADAH", <gregtech:gt.meta.dust:1740>);
Research.setConcealed("IT_TRANSNAQUADAH", true);
Warp.addToResearch("IT_TRANSNAQUADAH", 5);

Research.addResearch("IT_TRANSNAQUADAH2", "ELDRITCH", "iter 4, vacuos 4, tenebrae 4, lucrum 4, perditio 4, machina 4, radio 4, strontio 4, potentia 4", 2, 7, 1, <gregtech:gt.meta.ingot:1740>);
game.setLocalization("tc.research_name.IT_TRANSNAQUADAH2", "Advanced Naquadah Transmutation");
game.setLocalization("tc.research_text.IT_TRANSNAQUADAH2", "[IT] Beyond the void there was chaos");
Research.addPage("IT_TRANSNAQUADAH2", "kirara.research_page.IT_TRANSNAQUADAH2.1");
game.setLocalization("kirara.research_page.IT_TRANSNAQUADAH2.1", "While your current methods of producing naquadah work they are far from simple, noxious fumes and rare ingredients abound. However using the power of a pearl you can advance things further, greatly simplifying the process.");
Research.addPrereq("IT_TRANSNAQUADAH2", "PRIMPEARL", false);
Research.addPrereq("IT_TRANSNAQUADAH2", "IT_TRANSNAQUADAH", true);
Infusion.addRecipe("IT_TRANSNAQUADAH2", <gregtech:gt.meta.dust:950>, [<Thaumcraft:ItemEldritchObject:3>, <Thaumcraft:ItemEldritchObject:3>], "vacuos 6, potentia 6, tenebrae 6, lucrum 6, perditio 6, machina 6", <gregtech:gt.meta.storage.solid:1740>, 7);
Research.addInfusionPage("IT_TRANSNAQUADAH2", <gregtech:gt.meta.storage.solid:1740>);
Research.setConcealed("IT_TRANSNAQUADAH2", true);
Warp.addToResearch("IT_TRANSNAQUADAH2", 1);

// Vinteum Crystal
Research.addResearch("AM_GEMVINTEUM", "ALCHEMY", "praecantatio 2, auram 2, tenebrae 2, alienis 2, permutatio 2, vitreus 2", -11, -2, 2, gemVinteum);
game.setLocalization("tc.research_name.AM_GEMVINTEUM", "Vinteum Crystal");
game.setLocalization("tc.research_text.AM_GEMVINTEUM", "[AM] Not quite the philosopher's stone");
Research.addPage("AM_GEMVINTEUM", "kirara.research_page.AM_GEMVINTEUM.1");
game.setLocalization("kirara.research_page.AM_GEMVINTEUM.1", "Your thorough understanding of the recrystallisation process has led you to discover a way to further infuse balanced shards with compound essentia, transmuting them into an entirely different form, although still receptive to the recrystallisation process from which it was derived.<BR>The resulting material is of disappointing structural integrity and gives off an unpleasant, otherworldly aura, though you wonder if it could have interesting thaumaturgical applications...");
Research.addPrereq("AM_GEMVINTEUM", "GT_CRYSTALLISATION", false);
Crucible.addRecipe("AM_GEMVINTEUM", gemVinteum, <Thaumcraft:ItemShard:6>, "praecantatio 2, auram 2, tenebrae 2, alienis 2, permutatio 2, vitreus 2");
Research.addCruciblePage("AM_GEMVINTEUM", gemVinteum);
Crucible.addRecipe("AM_GEMVINTEUM", gemVinteum, <ore:dustVinteumPurified>, "vitreus 4");
Research.setConcealed("AM_GEMVINTEUM", true);
Warp.addToResearch("AM_GEMVINTEUM", 1);

// Node Transducer
Research.clearPages("VISPOWER");
Research.addPage("VISPOWER", "tc.research_page.VISPOWER.1");
Arcane.removeRecipe(<Thaumcraft:blockStoneDevice:11>);
Arcane.addShaped("VISPOWER", <Thaumcraft:blockStoneDevice:11>, "ignis 32, aer 32, perditio 32", 
	[[<ore:blockRedstone>, <gregtech:gt.multiitem.technological:12122>, <ore:blockRedstone>], 
	[<ore:dustSmallNaquadah>, <Thaumcraft:blockStoneDevice:9>, <ore:dustSmallNaquadah>],
	[<ore:blockRedstone>, <gregtech:gt.multiitem.technological:12102>, <ore:blockRedstone>]]);
Research.addArcanePage("VISPOWER", <Thaumcraft:blockStoneDevice:11>);
Arcane.removeRecipe(<Thaumcraft:blockStoneDevice:11>);
Arcane.addShaped("VISPOWER", <Thaumcraft:blockStoneDevice:11>, "ignis 32, aer 32, perditio 32", 
	[[<ore:blockRedstone>, <gregtech:gt.multiitem.technological:12122>, <ore:blockRedstone>], 
	[<Thaumcraft:FocusPech>, <Thaumcraft:blockStoneDevice:9>, <Thaumcraft:FocusPech>],
	[<ore:blockRedstone>, <gregtech:gt.multiitem.technological:12102>, <ore:blockRedstone>]]);
Research.addArcanePage("VISPOWER", <Thaumcraft:blockStoneDevice:11>);
Arcane.addShaped("VISPOWER", <Thaumcraft:blockStoneDevice:11>, "ignis 32, aer 32, perditio 32", 
	[[<ore:blockRedstone>, <gregtech:gt.multiitem.technological:12122>, <ore:blockRedstone>], 
	[<ore:dustSmallNaquadah>, <Thaumcraft:blockStoneDevice:9>, <ore:dustSmallNaquadah>],
	[<ore:blockRedstone>, <gregtech:gt.multiitem.technological:12102>, <ore:blockRedstone>]]);
Research.addPage("VISPOWER", "tc.research_page.VISPOWER.2");
Research.addPage("VISPOWER", "tc.research_page.VISPOWER.3");
Research.addArcanePage("VISPOWER", <Thaumcraft:blockMetalDevice:14>);
Research.addPage("VISPOWER", "tc.research_page.VISPOWER.4");
Research.addPage("VISPOWER", "tc.research_page.VISPOWER.5");

// Bone Bow
Research.clearPages("BONEBOW"); 
Research.addPage("BONEBOW", "tc.research_page.BONEBOW.1");
Infusion.addRecipe("BONEBOW", <gregtech:gt.meta.stickLong:8636>, [<minecraft:bone>, gemVinteum, <minecraft:string>, <Thaumcraft:ItemShard:5>, <minecraft:bone>, gemVinteum, <minecraft:string>, <Thaumcraft:ItemShard:5>], "perditio 48, aer 24, telum 48, exanimis 24", <Thaumcraft:ItemBowBone>, 6);
Research.addInfusionPage("BONEBOW", <Thaumcraft:ItemBowBone>);
Research.addPrereq("BONEBOW", "AM_GEMVINTEUM", true);
Research.addPrereq("BONEBOW", "INFUSION", true);

// Mirrors
Research.addPrereq("MIRROR", "AM_GEMVINTEUM", true);
Infusion.addRecipe("MIRROR", <Thaumcraft:ItemResource:10>, [<arsmagica2:itemOre:3>, <minecraft:ender_chest>, <minecraft:gold_ingot>, <gregtech:gt.meta.lens:8318>], "iter 32, permutatio 32, tenebrae 32", <Thaumcraft:blockMirror:0>, 3);
Infusion.addRecipe("MIRRORHAND", <Thaumcraft:blockMirror:0>, [<gregtech:gt.meta.stick:8630>, <erebus:homingBeecon>, <minecraft:map>, <minecraft:ender_pearl>], "iter 64, instrumentum 64", <Thaumcraft:HandMirror>, 6);
Infusion.addRecipe("MIRRORESSENTIA", <Thaumcraft:ItemResource:10>, [gemVinteum, <gregtech:gt.meta.lens:8318>, <minecraft:iron_ingot>, <Thaumcraft:blockJar>], "iter 16, permutatio 16, tenebrae 16", <Thaumcraft:blockMirror:6>, 3);

Infusion.addRecipe("ENCHANTER", <minecraft:enchanting_table>, 
	[<gregtech:gt.meta.plate:2220>, <ThaumicTinkerer:spellCloth>, <gregtech:gt.meta.plate:2220>, <Thaumcraft:ItemResource:2>, <gregtech:gt.meta.plate:2220>, <ThaumicTinkerer:spellCloth>, <gregtech:gt.meta.plate:2220>, <Thaumcraft:ItemResource:2>], 
	"alienis 32, cognitio 12, potentia 32, praecantatio 64, vacuos 24", <ThaumicTinkerer:enchanter>, 11);
Research.addPrereq("ENCHANTER", "IT_TRANSADAMANTIUM", true);

print('Mirrors reflecting and radiation irradiating');

// Skip Infusion Enchantment
Research.clearPrereqs("ARMORFORTRESS");
Research.addPrereq("ARMORFORTRESS", "JARBRAIN", false);
Research.addPrereq("ARMORFORTRESS", "THAUMIUM", true);

// Potion value declarations
val potionSwift3 = <minecraft:potion:8290>.withTag({CustomPotionEffects: [{Duration: 4800, Id: 1, Amplifier: 2}], display: {Name: "\u00A7rPotion of Swiftness"}});
val potionSwift4 = <minecraft:potion:8354>.withTag({CustomPotionEffects: [{Duration: 9600, Id: 1, Amplifier: 3}], display: {Name: "\u00A7rPotion of Swiftness"}});
val potionFireResist3 = <minecraft:potion:8323>.withTag({CustomPotionEffects: [{Duration: 24000, Id: 12}], display: {Name: "\u00A7rPotion of Fire Resistance"}});
val potionFireResist4 = <minecraft:potion:8387>.withTag({CustomPotionEffects: [{Duration: 72000, Id: 12}], display: {Name: "\u00A7rPotion of Fire Resistance"}});
val potionAbsorption1 = <minecraft:potion:8451>.withTag({CustomPotionEffects: [{Duration: 7200, Id: 22, Amplifier: 0}], display: {Name: "\u00A7rPotion of Absorption"}});
val potionAbsorption2 = <minecraft:potion:8515>.withTag({CustomPotionEffects: [{Duration: 8400, Id: 22, Amplifier: 1}], display: {Name: "\u00A7rPotion of Absorption"}});
val potionAbsorption3 = <minecraft:potion:8579>.withTag({CustomPotionEffects: [{Duration: 9600, Id: 22, Amplifier: 2}], display: {Name: "\u00A7rPotion of Absorption"}});
val potionAbsorption4 = <minecraft:potion:8643>.withTag({CustomPotionEffects: [{Duration: 10800, Id: 22, Amplifier: 3}], display: {Name: "\u00A7rPotion of Absorption"}});
val potionAbsorption5 = <minecraft:potion:8707>.withTag({CustomPotionEffects: [{Duration: 12000, Id: 22, Amplifier: 4}], display: {Name: "\u00A7rPotion of Absorption"}});
val potionHealing3 = <minecraft:potion:8293>.withTag({CustomPotionEffects: [{Id: 6, Amplifier: 2}], display: {Name: "\u00A7rPotion of Healing"}});
val potionHealing4 = <minecraft:potion:8357>.withTag({CustomPotionEffects: [{Id: 6, Amplifier: 3}], display: {Name: "\u00A7rPotion of Healing"}});
val potionHealing3S = <minecraft:potion:16485>.withTag({CustomPotionEffects: [{Id: 6, Amplifier: 2}], display: {Name: "\u00A7rSplash Potion of Healing"}});
val potionHealing4S = <minecraft:potion:16549>.withTag({CustomPotionEffects: [{Id: 6, Amplifier: 3}], display: {Name: "\u00A7rSplash Potion of Healing"}});
val potionRegeneration3 = <minecraft:potion:8289>.withTag({CustomPotionEffects: [{Duration: 2400, Id: 10, Amplifier: 1}], display: {Name: "\u00A7rPotion of Regeneration"}});
val potionRegeneration4 = <minecraft:potion:8353>.withTag({CustomPotionEffects: [{Duration: 2400, Id: 10, Amplifier: 2}], display: {Name: "\u00A7rPotion of Regeneration"}});
val potionHaste1 = <minecraft:potion:8260>.withTag({CustomPotionEffects: [{Duration: 900, Id: 3, Amplifier: 0}], display: {Name: "\u00A7rPotion of Haste"}});
val potionHaste2 = <minecraft:potion:8324>.withTag({CustomPotionEffects: [{Duration: 2400, Id: 3, Amplifier: 1}], display: {Name: "\u00A7rPotion of Haste"}});
val potionHaste3 = <minecraft:potion:8388>.withTag({CustomPotionEffects: [{Duration: 6000, Id: 3, Amplifier: 2}], display: {Name: "\u00A7rPotion of Haste"}});
val potionHaste4 = <minecraft:potion:8452>.withTag({CustomPotionEffects: [{Duration: 14400, Id: 3, Amplifier: 3}], display: {Name: "\u00A7rPotion of Haste"}});
// val potionJump1 = <minecraft:potion:8298>.withTag({CustomPotionEffects: [{Duration: 900, Id: 8, Amplifier: 1}], display: {Name: "\u00A7rPotion of Leaping"}});
val potionJump2 = <minecraft:potion:8362>.withTag({CustomPotionEffects: [{Duration: 2400, Id: 8, Amplifier: 3}], display: {Name: "\u00A7rPotion of Leaping"}});
val potionJump3 = <minecraft:potion:8426>.withTag({CustomPotionEffects: [{Duration: 4800, Id: 8, Amplifier: 5}], display: {Name: "\u00A7rPotion of Leaping"}});
val potionJump4 = <minecraft:potion:8490>.withTag({CustomPotionEffects: [{Duration: 9600, Id: 8, Amplifier: 7}], display: {Name: "\u00A7rPotion of Leaping"}});
val potionTravel1 = <minecraft:potion:8298>.withTag({CustomPotionEffects: [{Duration: 1200, Id: 1, Amplifier: 2}, {Duration: 1200, Id: 8, Amplifier: 3}], display: {Name: "\u00A7rPotion of Travel"}});
val potionTravel2 = <minecraft:potion:8362>.withTag({CustomPotionEffects: [{Duration: 2400, Id: 1, Amplifier: 2}, {Duration: 2400, Id: 8, Amplifier: 3}], display: {Name: "\u00A7rPotion of Travel"}});
val potionTravel3 = <minecraft:potion:8426>.withTag({CustomPotionEffects: [{Duration: 4800, Id: 1, Amplifier: 2}, {Duration: 4800, Id: 8, Amplifier: 3}], display: {Name: "\u00A7rPotion of Travel"}});
val potionTravel4 = <minecraft:potion:8490>.withTag({CustomPotionEffects: [{Duration: 9600, Id: 1, Amplifier: 2}, {Duration: 9600, Id: 8, Amplifier: 3}], display: {Name: "\u00A7rPotion of Travel"}});


// Thaumcraft Potions
Research.addResearch("IT_BREWING", "ALCHEMY", "fabrico 4, praecantatio 4, aqua 4", 1, -3, 1, <minecraft:brewing_stand>);
game.setLocalization("tc.research_name.IT_BREWING", "Potion Brewing");
game.setLocalization("tc.research_text.IT_BREWING", "Hellfire Elixirs");
Research.addPage("IT_BREWING", "kirara.research_page.IT_BREWING.1");
game.setLocalization("kirara.research_page.IT_BREWING.1", "There had been rumors of course, but you've discovered the secret to potion brewing now, the refined essence of magical fire taken from the blazes of the nether.");
Research.addPrereq("IT_BREWING", "PHIAL", false);
recipes.remove(<minecraft:brewing_stand>);
Arcane.addShaped("IT_BREWING", <minecraft:brewing_stand>, "aqua 30", 
	[[null, <minecraft:blaze_rod>, null], 
	[<Thaumcraft:blockCosmeticSolid:6>, <Thaumcraft:blockCosmeticSolid:6>, <Thaumcraft:blockCosmeticSolid:6>]]);
Research.addArcanePage("IT_BREWING", <minecraft:brewing_stand>);

Research.addResearch("IT_ADVANCED_BREWING", "ALCHEMY", "fabrico 8, auram 4, praecantatio 4, aqua 4", 1, -5, 3, <minecraft:potion:8259>);
game.setLocalization("tc.research_name.IT_ADVANCED_BREWING", "Advanced Brewing");
game.setLocalization("tc.research_text.IT_ADVANCED_BREWING", "Infusing potions with essentia");
Research.addPage("IT_ADVANCED_BREWING", "kirara.research_page.IT_ADVANCED_BREWING.1");
game.setLocalization("kirara.research_page.IT_ADVANCED_BREWING.1", "The mundane, wasteful method of potion brewery is quite limited in its ability to mix powerful concoctions.<BR>Advanced thaumaturgy via the infusion altar allows you to surpass the limitations of flimsy brewing stands, though the precision required in the infusion process makes it difficult to automate mass production of potions in this manner.");
Research.addPrereq("IT_ADVANCED_BREWING", "IT_BREWING", false);
Research.addPrereq("IT_ADVANCED_BREWING", "INFUSION", true);
Infusion.addRecipe("IT_ADVANCED_BREWING", <minecraft:potion:8226>, [salisMundus, <minecraft:redstone>, <minecraft:glowstone_dust>], "auram 4, motus 8, praecantatio 8", potionSwift3, 2);
Research.addInfusionPage("IT_ADVANCED_BREWING", potionSwift3);
Infusion.addRecipe("IT_ADVANCED_BREWING", potionSwift3, [salisMundus, <minecraft:redstone>, <minecraft:glowstone_dust>], "auram 8, motus 16, praecantatio 16", potionSwift4, 5);
Research.addInfusionPage("IT_ADVANCED_BREWING", potionSwift4);
Infusion.addRecipe("IT_ADVANCED_BREWING", <minecraft:potion:8259>, [salisMundus, <minecraft:redstone>, <minecraft:magma_cream>], "auram 4, ignis 8, praecantatio 8", potionFireResist3, 2);
Research.addInfusionPage("IT_ADVANCED_BREWING", potionFireResist3);
Infusion.addRecipe("IT_ADVANCED_BREWING", potionFireResist3, [salisMundus, <minecraft:redstone>, <minecraft:magma_cream>], "auram 8, ignis 16, praecantatio 16", potionFireResist4, 5);
Research.addInfusionPage("IT_ADVANCED_BREWING", potionFireResist4);
// Erebus leaping potion
Infusion.addRecipe("IT_ADVANCED_BREWING", <minecraft:potion:8203>, [salisMundus, <minecraft:redstone>, <minecraft:glowstone_dust>], "auram 2, volatus 4, praecantatio 4", potionJump2, 3);
Research.addInfusionPage("IT_ADVANCED_BREWING", potionJump2);
Infusion.addRecipe("IT_ADVANCED_BREWING", potionJump2, [salisMundus, <minecraft:redstone>, <minecraft:glowstone_dust>], "auram 3, volatus 8, praecantatio 6", potionJump3, 5);
Research.addInfusionPage("IT_ADVANCED_BREWING", potionJump3);
Infusion.addRecipe("IT_ADVANCED_BREWING", potionJump3, [salisMundus, <minecraft:redstone>, <minecraft:glowstone_dust>], "auram 4, volatus 12, praecantatio 8", potionJump4, 7);
Research.addInfusionPage("IT_ADVANCED_BREWING", potionJump4);
Research.setConcealed("IT_ADVANCED_BREWING", true);

// Healing
Research.addResearch("IT_BREWHEAL", "ALCHEMY", "sano 4, auram 2, victus 2", -1, -5, 2, <minecraft:potion:8197>);
game.setLocalization("tc.research_name.IT_BREWHEAL", "Potion of Healing");
game.setLocalization("tc.research_text.IT_BREWHEAL", "Improved Potion of Healing");
Research.addPage("IT_BREWHEAL", "kirara.research_page.IT_BREWHEAL.1");
game.setLocalization("kirara.research_page.IT_BREWHEAL.1", "You have discovered a way of significantly improving the efficacy of Potions of Healing by infusing them with essentia.");
Research.addPrereq("IT_BREWHEAL", "IT_ADVANCED_BREWING", false);
Infusion.addRecipe("IT_BREWHEAL", <minecraft:potion:8229>, [salisMundus, <minecraft:glowstone_dust>, <minecraft:speckled_melon>], "auram 4, sano 8, praecantatio 8", potionHealing3, 2);
Research.addInfusionPage("IT_BREWHEAL", potionHealing3);
Infusion.addRecipe("IT_BREWHEAL", potionHealing3, [salisMundus, <minecraft:glowstone_dust>, <minecraft:speckled_melon>], "auram 8, sano 16, praecantatio 16", potionHealing4, 5);
Research.addInfusionPage("IT_BREWHEAL", potionHealing4);
Infusion.addRecipe("IT_BREWHEAL", <minecraft:potion:16421>, [salisMundus, <minecraft:glowstone_dust>, <minecraft:speckled_melon>], "auram 4, sano 8, praecantatio 8", potionHealing3S, 2);
Research.addInfusionPage("IT_BREWHEAL", potionHealing3S);
Infusion.addRecipe("IT_BREWHEAL", potionHealing3S, [salisMundus, <minecraft:glowstone_dust>, <minecraft:speckled_melon>], "auram 8, sano 16, praecantatio 16", potionHealing4S, 5);
Research.addInfusionPage("IT_BREWHEAL", potionHealing4S);
Research.setConcealed("IT_BREWHEAL", true);

// Regeneration
Research.addResearch("IT_BREWREGEN", "ALCHEMY", "sano 4, auram 2, humanus 2", 0, -6, 2, <minecraft:potion:8193>);
game.setLocalization("tc.research_name.IT_BREWREGEN", "Potion of Regeneration");
game.setLocalization("tc.research_text.IT_BREWREGEN", "Improved Potion of Regeneration");
Research.addPage("IT_BREWREGEN", "kirara.research_page.IT_BREWREGEN.1");
game.setLocalization("kirara.research_page.IT_BREWREGEN.1", "You have discovered a way of significantly improving the efficacy of Potions of Regeneration by infusing them with essentia.");
Research.addPrereq("IT_BREWREGEN", "IT_ADVANCED_BREWING", false);
Infusion.addRecipe("IT_BREWREGEN", <minecraft:potion:8225>, [salisMundus, <minecraft:redstone>, <minecraft:ghast_tear>], "auram 4, sano 8, praecantatio 8", potionRegeneration3, 2);
Research.addInfusionPage("IT_BREWREGEN", potionRegeneration3);
Infusion.addRecipe("IT_BREWREGEN", potionRegeneration3, [salisMundus, <minecraft:glowstone_dust>, <minecraft:ghast_tear>], "auram 8, sano 16, praecantatio 16", potionRegeneration4, 5);
Research.addInfusionPage("IT_BREWREGEN", potionRegeneration4);
Research.setConcealed("IT_BREWREGEN", true);

// Absorption
Research.addResearch("IT_BREWABSORPTION", "ALCHEMY", "permutatio 4, auram 2, volatus 2", 1, -7, 2, <minecraft:potion:8195>);
game.setLocalization("tc.research_name.IT_BREWABSORPTION", "Potion of Absorption");
game.setLocalization("tc.research_text.IT_BREWABSORPTION", "An apple a day keeps the doctor away");
Research.addPage("IT_BREWABSORPTION", "kirara.research_page.IT_BREWABSORPTION.1");
game.setLocalization("kirara.research_page.IT_BREWABSORPTION.1", "You have discovered a way of decanting the absorption effect provided by golden apples into a potion, significantly increasing its duration. However, this concoction does not refill hunger nor provides regeneration.");
Research.addPrereq("IT_BREWABSORPTION", "IT_ADVANCED_BREWING", false);
Infusion.addRecipe("IT_BREWABSORPTION", <minecraft:potion:16>, [salisMundus, <minecraft:golden_apple>], "auram 2, praecantatio 2, tutamen 2", potionAbsorption1, 2);
Research.addInfusionPage("IT_BREWABSORPTION", potionAbsorption1);
Infusion.addRecipe("IT_BREWABSORPTION", potionAbsorption1, [salisMundus, <minecraft:golden_apple>, <minecraft:glowstone_dust>, <minecraft:redstone>], "auram 4, praecantatio 4, tutamen 4", potionAbsorption2, 3);
Research.addInfusionPage("IT_BREWABSORPTION", potionAbsorption2);
Infusion.addRecipe("IT_BREWABSORPTION", potionAbsorption2, [salisMundus, <minecraft:golden_apple>, <minecraft:glowstone_dust>, <minecraft:redstone>], "auram 6, praecantatio 6, tutamen 6", potionAbsorption3, 4);
Research.addInfusionPage("IT_BREWABSORPTION", potionAbsorption3);
Infusion.addRecipe("IT_BREWABSORPTION", potionAbsorption3, [salisMundus, <minecraft:golden_apple>, <minecraft:glowstone_dust>, <minecraft:redstone>], "auram 8, praecantatio 8, tutamen 8", potionAbsorption4, 5);
Research.addInfusionPage("IT_BREWABSORPTION", potionAbsorption4);
Infusion.addRecipe("IT_BREWABSORPTION", potionAbsorption4, [salisMundus, <minecraft:golden_apple>, <minecraft:glowstone_dust>, <minecraft:redstone>], "auram 10, praecantatio 10, tutamen 10", potionAbsorption5, 6);
Research.addInfusionPage("IT_BREWABSORPTION", potionAbsorption5);
Research.setConcealed("IT_BREWABSORPTION", true);

// Haste
Research.addResearch("IT_BREWHASTE", "ALCHEMY", "permutatio 4, auram 2, perfodio 2", 2, -6, 2, <minecraft:potion:8228>);
game.setLocalization("tc.research_name.IT_BREWHASTE", "Potion of Haste");
game.setLocalization("tc.research_text.IT_BREWHASTE", "Furiously move your arm up and down");
Research.addPage("IT_BREWHASTE", "kirara.research_page.IT_BREWHASTE.1");
game.setLocalization("kirara.research_page.IT_BREWHASTE.1", "You have discovered a way of creating a potion that improves the speed at which you mine blocks, by corrupting the effects of a potion of poison.");
Research.addPrereq("IT_BREWHASTE", "IT_ADVANCED_BREWING", false);
Infusion.addRecipe("IT_BREWHASTE", <minecraft:potion:8228>, [salisMundus, <minecraft:fermented_spider_eye>], "auram 2, perfodio 4, permutatio 2", potionHaste1, 2);
Research.addInfusionPage("IT_BREWHASTE", potionHaste1);
Infusion.addRecipe("IT_BREWHASTE", potionHaste1, [salisMundus, <minecraft:glowstone_dust>, <minecraft:redstone>], "auram 4, praecantatio 8, perfodio 8", potionHaste2, 3);
Research.addInfusionPage("IT_BREWHASTE", potionHaste2);
Infusion.addRecipe("IT_BREWHASTE", potionHaste2, [salisMundus, <minecraft:glowstone_dust>, <minecraft:redstone>], "auram 6, praecantatio 12, perfodio 12", potionHaste3, 4);
Research.addInfusionPage("IT_BREWHASTE", potionHaste3);
Infusion.addRecipe("IT_BREWHASTE", potionHaste3, [salisMundus, <minecraft:glowstone_dust>, <minecraft:redstone>], "auram 8, praecantatio 16, perfodio 16", potionHaste4, 5);
Research.addInfusionPage("IT_BREWHASTE", potionHaste4);
Research.setConcealed("IT_BREWHASTE", true);
Warp.addToResearch("IT_BREWHASTE", 1);

// // Jump
// Research.addResearch("IT_BREWJUMP", "ALCHEMY", "permutatio 4, auram 2, volatus 2", 3, -5, 2, <minecraft:potion:8232>);
// game.setLocalization("tc.research_name.IT_BREWJUMP", "Potion of Jump");
// game.setLocalization("tc.research_text.IT_BREWJUMP", "Getting high off a mysterious liquid");
// Research.addPage("IT_BREWJUMP", "kirara.research_page.IT_BREWJUMP.1");
// game.setLocalization("kirara.research_page.IT_BREWJUMP.1", "By existentially re-inverting a potion of slowness you have discovered a brew that greatly strengthens leg muscles and cardiovascular conditioning.");
// Research.addPrereq("IT_BREWJUMP", "IT_ADVANCED_BREWING", false);
// Infusion.addRecipe("IT_BREWJUMP", <minecraft:potion:8202>, [salisMundus, <minecraft:fermented_spider_eye>], "auram 2, volatus 2, permutatio 2", potionJump1, 2);
// Research.addInfusionPage("IT_BREWJUMP", potionJump1);
// Infusion.addRecipe("IT_BREWJUMP", potionJump1, [salisMundus, <minecraft:glowstone_dust>, <minecraft:redstone>], "auram 2, praecantatio 4, volatus 4", potionJump2, 3);
// Research.addInfusionPage("IT_BREWJUMP", potionJump2);
// Infusion.addRecipe("IT_BREWJUMP", potionJump2, [salisMundus, <minecraft:glowstone_dust>, <minecraft:redstone>], "auram 3, praecantatio 6, volatus 6", potionJump3, 4);
// Research.addInfusionPage("IT_BREWJUMP", potionJump3);
// Infusion.addRecipe("IT_BREWJUMP", potionJump3, [salisMundus, <minecraft:glowstone_dust>, <minecraft:redstone>], "auram 4, praecantatio 8, volatus 8", potionJump4, 5);
// Research.addInfusionPage("IT_BREWJUMP", potionJump4);
// Research.setConcealed("IT_BREWJUMP", true);

// Travel
Research.addResearch("IT_BREWTRAVEL", "ALCHEMY", "permutatio 4, auram 2, volatus 2", 3, -5, 2, <minecraft:potion:8258>);
game.setLocalization("tc.research_name.IT_BREWTRAVEL", "Potion of Travel");
game.setLocalization("tc.research_text.IT_BREWTRAVEL", "Getting high off a mysterious liquid");
Research.addPage("IT_BREWTRAVEL", "kirara.research_page.IT_BREWTRAVEL.1");
game.setLocalization("kirara.research_page.IT_BREWTRAVEL.1", "By existentially re-inverting a potion of slowness you have discovered a brew that greatly strengthens leg muscles and cardiovascular conditioning.");
Research.addPrereq("IT_BREWTRAVEL", "IT_ADVANCED_BREWING", false);
Infusion.addRecipe("IT_BREWTRAVEL", <minecraft:potion:8202>, [salisMundus, <minecraft:fermented_spider_eye>], "auram 2, volatus 2, iter 2", potionTravel1, 2);
Research.addInfusionPage("IT_BREWTRAVEL", potionTravel1);
Infusion.addRecipe("IT_BREWTRAVEL", potionTravel1, [salisMundus, <minecraft:glowstone_dust>, <minecraft:redstone>], "auram 2, praecantatio 4, iter 4", potionTravel2, 3);
Research.addInfusionPage("IT_BREWTRAVEL", potionTravel2);
Infusion.addRecipe("IT_BREWTRAVEL", potionTravel2, [salisMundus, <minecraft:glowstone_dust>, <minecraft:redstone>], "auram 3, praecantatio 6, iter 6", potionTravel3, 4);
Research.addInfusionPage("IT_BREWTRAVEL", potionTravel3);
Infusion.addRecipe("IT_BREWTRAVEL", potionTravel3, [salisMundus, <minecraft:glowstone_dust>, <minecraft:redstone>], "auram 4, praecantatio 8, iter 8", potionTravel4, 5);
Research.addInfusionPage("IT_BREWTRAVEL", potionTravel4);

print('Potions brewed');

// // Pure Love
// Research.addResearch("PURELOVE", "ARTIFICE", "victus 3, praecantatio 3, bestia 3, tempus 3", -3, 3, 3, <ExtraUtilities:pureLove>);
// game.setLocalization("tc.research_name.PURELOVE", "Pure Love");
// game.setLocalization("tc.research_text.PURELOVE", "[IT] Romance in a box");
// Research.addPage("PURELOVE", "kirara.research_page.PURELOVE.1");
// game.setLocalization("kirara.research_page.PURELOVE.1", "Constantly plagued by the difficulties of acquiring and supplying the vast amounts of victus needed for your lamps you toiled over a solution, and you stumbled across this. <BR> By infusing massive amounts of victus and bestia into a series of lamps you created a lamp of fertility that would run without a supply of victus, enhancing it with even more bestia and adding some tempus you created your masterpiece, and while lower range it is far, far more effective than your past creations.");
// Infusion.addRecipe("PURELOVE", <ExtraUtilities:decorativeBlock2:8>, [<Thaumcraft:blockMetalDevice:13>, <ThaumicTinkerer:mobAspect:29>, <Forestry:cratedWheat>, <Thaumcraft:blockMetalDevice:13>, <ThaumicTinkerer:mobAspect:29>, <Forestry:cratedSeeds>, <Thaumcraft:blockMetalDevice:13>, <ThaumicTinkerer:mobAspect:29>, <Forestry:cratedApples>, <Thaumcraft:blockMetalDevice:13>, <ThaumicTinkerer:mobAspect:29>, <Forestry:cratedCarrots>], "victus 256, bestia 64, tempus 32", <ExtraUtilities:pureLove>, 8);
// Research.addInfusionPage("PURELOVE", <ExtraUtilities:pureLove>);
// Research.addPrereq("PURELOVE", "LAMPFERTILITY", false);
// Research.setConcealed("PURELOVE", true);

Research.moveResearch("RUNICAUGMENTATION", "ARTIFICE", 12, 4);
Research.moveResearch("RUNICARMOR", "ARTIFICE", 9, 4);
Research.moveResearch("RUNICEMERGENCY", "ARTIFICE", 10, 5);
Research.moveResearch("RUNICCHARGED", "ARTIFICE", 8, 3);
Research.moveResearch("RUNICHEALING", "ARTIFICE", 10, 3);
Research.moveResearch("RUNICKINETIC", "ARTIFICE", 8, 5);

// Mundane Accessories
Research.addResearch("IT_APPRENTICE_ARTIFICING", "ARTIFICE", "praecantatio 3, instrumentum 3", 3, 4, 2, <Thaumcraft:ItemBaubleBlanks:1>);
game.setLocalization("tc.research_name.IT_APPRENTICE_ARTIFICING", "Apprentice Artificing");
game.setLocalization("tc.research_text.IT_APPRENTICE_ARTIFICING", "Controlling ancient artifacts");
Research.addPage("IT_APPRENTICE_ARTIFICING", "kirara.research_page.IT_APPRENTICE_ARTIFICING.1");
game.setLocalization("kirara.research_page.IT_APPRENTICE_ARTIFICING.1", "Many ancient artifacts lurk within the unexplored corners of the world, some of which are imbued with particular thaumic energy that constantly leak into the surrounding environment.<BR>You have learned that channeling ordo vis to such artifacts when they're encased in enchanted fabric can force their energies to lay dormant, but an inert ring is of little use to you... for now.");
Research.addPrereq("IT_APPRENTICE_ARTIFICING", "ENCHFABRIC", false);
Arcane.addShapeless("IT_APPRENTICE_ARTIFICING", <Thaumcraft:ItemBaubleBlanks:1>, "ordo 4", [<Thaumcraft:ItemBaubleBlanks:3>, <Thaumcraft:ItemResource:7>]);
Arcane.addShapeless("IT_APPRENTICE_ARTIFICING", <Thaumcraft:ItemBaubleBlanks:1>, "ordo 4", [<Thaumcraft:ItemBaubleBlanks:4>, <Thaumcraft:ItemResource:7>]);
Arcane.addShapeless("IT_APPRENTICE_ARTIFICING", <Thaumcraft:ItemBaubleBlanks:1>, "ordo 4", [<Thaumcraft:ItemBaubleBlanks:5>, <Thaumcraft:ItemResource:7>]);
Arcane.addShapeless("IT_APPRENTICE_ARTIFICING", <Thaumcraft:ItemBaubleBlanks:1>, "ordo 4", [<Thaumcraft:ItemBaubleBlanks:6>, <Thaumcraft:ItemResource:7>]);
Arcane.addShapeless("IT_APPRENTICE_ARTIFICING", <Thaumcraft:ItemBaubleBlanks:1>, "ordo 4", [<Thaumcraft:ItemBaubleBlanks:7>, <Thaumcraft:ItemResource:7>]);
Arcane.addShapeless("IT_APPRENTICE_ARTIFICING", <Thaumcraft:ItemBaubleBlanks:1>, "ordo 4", [<Thaumcraft:ItemBaubleBlanks:8>, <Thaumcraft:ItemResource:7>]);
Research.addArcanePage("IT_APPRENTICE_ARTIFICING", <Thaumcraft:ItemBaubleBlanks:1>);
Research.setConcealed("IT_APPRENTICE_ARTIFICING", true);

// Vis Stone
Research.addResearch("IT_VISSTONE", "ARTIFICE", "praecantatio 3, instrumentum 3, vinculum 3", 6, 4, 2, <Thaumcraft:ItemAmuletVis>);
game.setLocalization("tc.research_name.IT_VISSTONE", "Vis Stone");
game.setLocalization("tc.research_text.IT_VISSTONE", "Storing vis for later use");
Research.addPage("IT_VISSTONE", "kirara.research_page.IT_VISSTONE.1");
game.setLocalization("kirara.research_page.IT_VISSTONE.1", "You have discovered a way of storing a small quantity of vis in a necklace by imbuing it with a mixed crystal cluster, though this process is quite lossy due to the imperfect mechanism via which the vis is transferred.<BR>Depleted amulets may be recharged in an arcane worktable at no additional material cost.");
Research.addPrereq("IT_VISSTONE", "IT_APPRENTICE_ARTIFICING", false);
Arcane.addShapeless("IT_VISSTONE", <Thaumcraft:ItemAmuletVis>.withTag({aqua: 2500, ignis: 2500, terra: 2500, ordo: 2500, perditio: 2500, aer: 2500}), "aqua 50, ignis 50, terra 50, ordo 50, perditio 50, aer 50", [<Thaumcraft:ItemBaubleBlanks>, <Thaumcraft:blockCrystal:6>]);
Research.addArcanePage("IT_VISSTONE", <Thaumcraft:ItemAmuletVis>);
Arcane.addShapeless("IT_VISSTONE", <Thaumcraft:ItemAmuletVis>.withTag({aqua: 2500, ignis: 2500, terra: 2500, ordo: 2500, perditio: 2500, aer: 2500}), "aqua 37, ignis 37, terra 37, ordo 37, perditio 37, aer 37", [<Thaumcraft:ItemAmuletVis>]);
Research.setConcealed("IT_VISSTONE", true);

// Apprentice Ring of Aer
Research.addResearch("IT_APPRENTICE_AER", "ARTIFICE", "praecantatio 3, instrumentum 1, aer 1", 2, 3, 1, <Thaumcraft:ItemBaubleBlanks:3>);
game.setLocalization("tc.research_name.IT_APPRENTICE_AER", "Apprentice Ring of Aer");
game.setLocalization("tc.research_text.IT_APPRENTICE_AER", "Imbuing an inert ring with the essence of air");
Research.addPage("IT_APPRENTICE_AER", "kirara.research_page.IT_APPRENTICE_AER.1");
game.setLocalization("kirara.research_page.IT_APPRENTICE_AER.1", "By infusing an inert ring with aer, you have created a trinket that reduces your aer vis consumption by a small amount.");
Research.addPrereq("IT_APPRENTICE_AER", "IT_APPRENTICE_ARTIFICING", false);
Research.addPrereq("IT_APPRENTICE_AER", "INFUSION", true);
Infusion.addRecipe("IT_APPRENTICE_AER", <Thaumcraft:ItemBaubleBlanks:1>, [<Thaumcraft:ItemShard:0>, <minecraft:feather>], "aer 8, praecantatio 4", <Thaumcraft:ItemBaubleBlanks:3>, 0);
Research.addInfusionPage("IT_APPRENTICE_AER", <Thaumcraft:ItemBaubleBlanks:3>);
Research.setSecondary("IT_APPRENTICE_AER", true);
Research.setConcealed("IT_APPRENTICE_AER", true);

// Apprentice Ring of Terra
Research.addResearch("IT_APPRENTICE_TERRA", "ARTIFICE", "praecantatio 3, instrumentum 1, terra 1", 3, 2, 1, <Thaumcraft:ItemBaubleBlanks:4>);
game.setLocalization("tc.research_name.IT_APPRENTICE_TERRA", "Apprentice Ring of Terra");
game.setLocalization("tc.research_text.IT_APPRENTICE_TERRA", "Imbuing an inert ring with the essence of earth");
Research.addPage("IT_APPRENTICE_TERRA", "kirara.research_page.IT_APPRENTICE_TERRA.1");
game.setLocalization("kirara.research_page.IT_APPRENTICE_TERRA.1", "By infusing an inert ring with terra, you have created a trinket that reduces your terra vis consumption by a small amount.");
Research.addPrereq("IT_APPRENTICE_TERRA", "IT_APPRENTICE_ARTIFICING", false);
Research.addPrereq("IT_APPRENTICE_TERRA", "INFUSION", true);
Infusion.addRecipe("IT_APPRENTICE_TERRA", <Thaumcraft:ItemBaubleBlanks:1>, [<Thaumcraft:ItemShard:3>, <minecraft:dirt>], "terra 8, praecantatio 4", <Thaumcraft:ItemBaubleBlanks:4>, 0);
Research.addInfusionPage("IT_APPRENTICE_TERRA", <Thaumcraft:ItemBaubleBlanks:4>);
Research.setSecondary("IT_APPRENTICE_TERRA", true);
Research.setConcealed("IT_APPRENTICE_TERRA", true);

// Apprentice Ring of Ignis
Research.addResearch("IT_APPRENTICE_IGNIS", "ARTIFICE", "praecantatio 3, instrumentum 1, ignis 1", 4, 3, 1, <Thaumcraft:ItemBaubleBlanks:5>);
game.setLocalization("tc.research_name.IT_APPRENTICE_IGNIS", "Apprentice Ring of Ignis");
game.setLocalization("tc.research_text.IT_APPRENTICE_IGNIS", "Imbuing an inert ring with the essence of fire");
Research.addPage("IT_APPRENTICE_IGNIS", "kirara.research_page.IT_APPRENTICE_IGNIS.1");
game.setLocalization("kirara.research_page.IT_APPRENTICE_IGNIS.1", "By infusing an inert ring with ignis, you have created a trinket that reduces your ignis vis consumption by a small amount.");
Research.addPrereq("IT_APPRENTICE_IGNIS", "IT_APPRENTICE_ARTIFICING", false);
Research.addPrereq("IT_APPRENTICE_IGNIS", "INFUSION", true);
Infusion.addRecipe("IT_APPRENTICE_IGNIS", <Thaumcraft:ItemBaubleBlanks:1>, [<Thaumcraft:ItemShard:1>, <minecraft:torch>], "ignis 8, praecantatio 4", <Thaumcraft:ItemBaubleBlanks:5>, 0);
Research.addInfusionPage("IT_APPRENTICE_IGNIS", <Thaumcraft:ItemBaubleBlanks:5>);
Research.setSecondary("IT_APPRENTICE_IGNIS", true);
Research.setConcealed("IT_APPRENTICE_IGNIS", true);

// Apprentice Ring of Aqua
Research.addResearch("IT_APPRENTICE_AQUA", "ARTIFICE", "praecantatio 3, instrumentum 1, aqua 1", 2, 5, 1, <Thaumcraft:ItemBaubleBlanks:6>);
game.setLocalization("tc.research_name.IT_APPRENTICE_AQUA", "Apprentice Ring of Aqua");
game.setLocalization("tc.research_text.IT_APPRENTICE_AQUA", "Imbuing an inert ring with the essence of water");
Research.addPage("IT_APPRENTICE_AQUA", "kirara.research_page.IT_APPRENTICE_AQUA.1");
game.setLocalization("kirara.research_page.IT_APPRENTICE_AQUA.1", "By infusing an inert ring with aqua, you have created a trinket that reduces your aqua vis consumption by a small amount.");
Research.addPrereq("IT_APPRENTICE_AQUA", "IT_APPRENTICE_ARTIFICING", false);
Research.addPrereq("IT_APPRENTICE_AQUA", "INFUSION", true);
Infusion.addRecipe("IT_APPRENTICE_AQUA", <Thaumcraft:ItemBaubleBlanks:1>, [<Thaumcraft:ItemShard:2>, <minecraft:potion:0>], "aqua 8, praecantatio 4", <Thaumcraft:ItemBaubleBlanks:6>, 0);
Research.addInfusionPage("IT_APPRENTICE_AQUA", <Thaumcraft:ItemBaubleBlanks:6>);
Research.setSecondary("IT_APPRENTICE_AQUA", true);
Research.setConcealed("IT_APPRENTICE_AQUA", true);

// Apprentice Ring of Ordo
Research.addResearch("IT_APPRENTICE_ORDO", "ARTIFICE", "praecantatio 3, instrumentum 1, ordo 1", 3, 6, 1, <Thaumcraft:ItemBaubleBlanks:7>);
game.setLocalization("tc.research_name.IT_APPRENTICE_ORDO", "Apprentice Ring of Ordo");
game.setLocalization("tc.research_text.IT_APPRENTICE_ORDO", "Imbuing an inert ring with the essence of order");
Research.addPage("IT_APPRENTICE_ORDO", "kirara.research_page.IT_APPRENTICE_ORDO.1");
game.setLocalization("kirara.research_page.IT_APPRENTICE_ORDO.1", "By infusing an inert ring with ordo, you have created a trinket that reduces your ordo vis consumption by a small amount.");
Research.addPrereq("IT_APPRENTICE_ORDO", "IT_APPRENTICE_ARTIFICING", false);
Research.addPrereq("IT_APPRENTICE_ORDO", "INFUSION", true);
Infusion.addRecipe("IT_APPRENTICE_ORDO", <Thaumcraft:ItemBaubleBlanks:1>, [<Thaumcraft:ItemShard:4>, <minecraft:sandstone:2>], "ordo 8, praecantatio 4", <Thaumcraft:ItemBaubleBlanks:7>, 0);
Research.addInfusionPage("IT_APPRENTICE_ORDO", <Thaumcraft:ItemBaubleBlanks:7>);
Research.setSecondary("IT_APPRENTICE_ORDO", true);
Research.setConcealed("IT_APPRENTICE_ORDO", true);

// Apprentice Ring of Perditio
Research.addResearch("IT_APPRENTICE_PERDITIO", "ARTIFICE", "praecantatio 3, instrumentum 1, perditio 1", 4, 5, 1, <Thaumcraft:ItemBaubleBlanks:8>);
game.setLocalization("tc.research_name.IT_APPRENTICE_PERDITIO", "Apprentice Ring of Perditio");
game.setLocalization("tc.research_text.IT_APPRENTICE_PERDITIO", "Imbuing an inert ring with the essence of entropy");
Research.addPage("IT_APPRENTICE_PERDITIO", "kirara.research_page.IT_APPRENTICE_PERDITIO.1");
game.setLocalization("kirara.research_page.IT_APPRENTICE_PERDITIO.1", "By infusing an inert ring with perditio, you have created a trinket that reduces your perditio vis consumption by a small amount.");
Research.addPrereq("IT_APPRENTICE_PERDITIO", "IT_APPRENTICE_ARTIFICING", false);
Research.addPrereq("IT_APPRENTICE_PERDITIO", "INFUSION", true);
Infusion.addRecipe("IT_APPRENTICE_PERDITIO", <Thaumcraft:ItemBaubleBlanks:1>, [<Thaumcraft:ItemShard:5>, <minecraft:cobblestone>], "perditio 8, praecantatio 4", <Thaumcraft:ItemBaubleBlanks:8>, 0);
Research.addInfusionPage("IT_APPRENTICE_PERDITIO", <Thaumcraft:ItemBaubleBlanks:8>);
Research.setSecondary("IT_APPRENTICE_PERDITIO", true);
Research.setConcealed("IT_APPRENTICE_PERDITIO", true);

print('Apprenticeship completed');

// Runic Shielding tweaks
Research.clearPrereqs("RUNICARMOR");
Research.addPrereq("RUNICARMOR", "INFUSION", true);
Research.addPrereq("RUNICARMOR", "AM_GEMVINTEUM", true);
Research.addPrereq("RUNICARMOR", "IT_VISSTONE", false);

Research.addPrereq("RUNICAUGMENTATION", "RUNICEMERGENCY", true);
Research.addPrereq("RUNICAUGMENTATION", "RUNICCHARGED", true);
Research.addPrereq("RUNICAUGMENTATION", "RUNICHEALING", true);
Research.addPrereq("RUNICAUGMENTATION", "RUNICKINETIC", true);

Research.addPrereq("RUNICCHARGED", "IT_APPRENTICE_IGNIS", true);
Research.addPrereq("RUNICHEALING", "IT_APPRENTICE_AQUA", true);
Research.addPrereq("RUNICKINETIC", "IT_APPRENTICE_AER", true);
Research.addPrereq("RUNICEMERGENCY", "IT_APPRENTICE_TERRA", true);

Infusion.removeRecipe(<Thaumcraft:ItemRingRunic:1>);
Infusion.addRecipe("RUNICARMOR", <Thaumcraft:ItemBaubleBlanks:1>, 
	[<chisel:voidstoneRunic:8>, charmPrimal, gemVinteum, <Thaumcraft:ItemResource:6>, <chisel:voidstoneRunic:1>, <Thaumcraft:ItemResource:7>, dustPyrotheum, <Thaumcraft:ItemResource:1>], 
	"potentia 32, praecantatio 32, tutamen 16, auram 5", <Thaumcraft:ItemRingRunic:1>, 6);
Infusion.removeRecipe(<Thaumcraft:ItemAmuletRunic:0>);
Infusion.addRecipe("RUNICARMOR", <Thaumcraft:ItemBaubleBlanks:0>, 
	[<chisel:voidstoneRunic:8>, charmPrimal, gemVinteum, <Thaumcraft:ItemResource:6>, <chisel:voidstoneRunic:2>, <Thaumcraft:ItemResource:7>, dustPyrotheum, <Thaumcraft:ItemResource:1>], 
	"potentia 48, praecantatio 48, tutamen 24, auram 8", <Thaumcraft:ItemAmuletRunic:0>, 6);
Infusion.removeRecipe(<Thaumcraft:ItemGirdleRunic:0>);
Infusion.addRecipe("RUNICARMOR", <Thaumcraft:ItemBaubleBlanks:2>, 
	[<chisel:voidstoneRunic:8>, charmPrimal, gemVinteum, <Thaumcraft:ItemResource:6>, <chisel:voidstoneRunic:12>, <Thaumcraft:ItemResource:7>, dustPyrotheum, <Thaumcraft:ItemResource:1>], 
	"potentia 64, praecantatio 64, tutamen 32, auram 10", <Thaumcraft:ItemGirdleRunic:0>, 6);

Infusion.removeRecipe(<Thaumcraft:ItemRingRunic:2>);
Infusion.addRecipe("RUNICCHARGED", <Thaumcraft:ItemRingRunic:1>, [<Thaumcraft:ItemShard:6>, <Thaumcraft:ItemShard:1>, <Thaumcraft:ItemShard:1>, <Thaumcraft:ItemBaubleBlanks:5>, <Thaumcraft:ItemShard:1>, <Thaumcraft:ItemShard:1>], "potentia 64, praecantatio 32, tutamen 32, auram 4", <Thaumcraft:ItemRingRunic:2>, 8);
Infusion.removeRecipe(<Thaumcraft:ItemRingRunic:3>);
Infusion.addRecipe("RUNICHEALING", <Thaumcraft:ItemRingRunic:1>, [<Thaumcraft:ItemShard:6>, <Thaumcraft:ItemShard:2>, <Thaumcraft:ItemShard:2>, <Thaumcraft:ItemBaubleBlanks:6>, <Thaumcraft:ItemShard:2>, <Thaumcraft:ItemShard:2>], "aqua 64, praecantatio 32, sano 64, auram 4", <Thaumcraft:ItemRingRunic:3>, 8);
Infusion.removeRecipe(<Thaumcraft:ItemAmuletRunic:1>);
Infusion.addRecipe("RUNICEMERGENCY", <Thaumcraft:ItemAmuletRunic:0>, [<Thaumcraft:ItemShard:6>, <Thaumcraft:ItemShard:3>, <Thaumcraft:ItemShard:3>, <Thaumcraft:ItemBaubleBlanks:4>, <Thaumcraft:ItemShard:3>, <Thaumcraft:ItemShard:3>], "vacuos 64, praecantatio 32, tutamen 32, terra 32, auram 7", <Thaumcraft:ItemAmuletRunic:1>, 8);
Infusion.removeRecipe(<Thaumcraft:ItemGirdleRunic:1>);
Infusion.addRecipe("RUNICKINETIC", <Thaumcraft:ItemGirdleRunic:0>, [<Thaumcraft:ItemShard:6>, <Thaumcraft:ItemShard:0>, <Thaumcraft:ItemShard:0>, <Thaumcraft:ItemBaubleBlanks:3>, <Thaumcraft:ItemShard:0>, <Thaumcraft:ItemShard:0>], "aer 64, praecantatio 64, tutamen 32, auram 9", <Thaumcraft:ItemGirdleRunic:1>, 8);

print('Runes inscribed');

// Farmland
Research.addResearch("IT_FARMLAND", "ALCHEMY", "messis 2, aqua 2, ordo 2", 4, 1, 2, <minecraft:farmland:7>);
game.setLocalization("tc.research_name.IT_FARMLAND", "Preparing Farmland");
game.setLocalization("tc.research_text.IT_FARMLAND", "[IT] Pre-tilled, hydrated dirt");
Research.addPage("IT_FARMLAND", "kirara.research_page.IT_FARMLAND.1");
game.setLocalization("kirara.research_page.IT_FARMLAND.1", "You have discovered a way of infusing dirt with aqua essentia to create a patch of damp, hydrated farmland that can immediately be used to plant crops without tilling.");
Research.addPrereq("IT_FARMLAND", "GT_FILL_WATER_BUCKET", false);
Research.setConcealed("IT_FARMLAND", true);

// Pyrotheum
Research.addResearch("IT_PYROTHEUM", "ALCHEMY", "ignis 2, potentia 2, ordo 2", 3, -3, 2, dustPyrotheum);
game.setLocalization("tc.research_name.IT_PYROTHEUM", "Pyrotheum");
game.setLocalization("tc.research_text.IT_PYROTHEUM", "[IT] Eternal heat - of sorts");
Research.addPage("IT_PYROTHEUM", "kirara.research_page.IT_PYROTHEUM.1");
game.setLocalization("kirara.research_page.IT_PYROTHEUM.1", "The eternally burning nitor flame may be a poor energy source, but the fact that this light can be coaxed from mundane glowstone has led you to theorize that the same could be done for the residual heat trapped within the many dusts with energetic affinity.<BR>The alchemical cauldron is not a suitable environment for the mixing of volatile materials in precise portions, but the introduction of ordo vis allows you to perform this delicate operation on a standard arcane worktable.<BR>The resulting dust is extremely hot to the touch and will require a full hazmat suit to handle safely.");
Research.addPrereq("IT_PYROTHEUM", "NITOR", false);
Arcane.addShapeless("IT_PYROTHEUM", dustPyrotheum * 2, "ordo 2, ignis 4", [<ore:dustRedstone>, <ore:dustSulfur>, <ore:dustCoal>, <ore:dustBlaze>]);
furnace.setFuel(dustPyrotheum, 4000);
Research.setConcealed("IT_PYROTHEUM", true);

Research.addPrereq("ARCANELAMP", "IT_PYROTHEUM", true);
Research.addPrereq("RUNICARMOR", "IT_PYROTHEUM", true);

// Milk
Research.addResearch("IT_FILL_MILK_BUCKET", "ALCHEMY", "sano 4, fames 2, aqua 2, permutatio 2", 6, 1, 2, <minecraft:milk_bucket>);
game.setLocalization("tc.research_name.IT_FILL_MILK_BUCKET", "Milk Transmutation");
game.setLocalization("tc.research_text.IT_FILL_MILK_BUCKET", "[IT] Filling buckets with milk");
Research.addPage("IT_FILL_MILK_BUCKET", "kirara.research_page.IT_FILL_MILK_BUCKET.1");
game.setLocalization("kirara.research_page.IT_FILL_MILK_BUCKET.1", "You have discovered a way of filling a water bucket with various essentia in order to get a white, nutritious fluid that strongly resembles milk.");
Research.addPrereq("IT_FILL_MILK_BUCKET", "GT_FILL_WATER_BUCKET", false);
Crucible.addRecipe("IT_FILL_MILK_BUCKET", <minecraft:milk_bucket>, <minecraft:water_bucket>, "sano 2, fames 2");
Research.addCruciblePage("IT_FILL_MILK_BUCKET", <minecraft:milk_bucket>);
Research.setConcealed("IT_FILL_MILK_BUCKET", true);

// Lava
Research.addResearch("IT_FILL_LAVA_BUCKET", "ALCHEMY", "ignis 8, tenebrae 4, terra 6, permutatio 4", 6, 3, 2, <minecraft:lava_bucket>);
game.setLocalization("tc.research_name.IT_FILL_LAVA_BUCKET", "Lava Transmutation");
game.setLocalization("tc.research_text.IT_FILL_LAVA_BUCKET", "[IT] Filling buckets with lava");
Research.addPage("IT_FILL_LAVA_BUCKET", "kirara.research_page.IT_FILL_LAVA_BUCKET.1");
game.setLocalization("kirara.research_page.IT_FILL_LAVA_BUCKET.1", "After refining the method through which you used a bucket as a vehicle to transform aqua essentia into water, you have discovered a way of filling a bucket with various energetic essentia in order to get lava.");
Research.addPrereq("IT_FILL_LAVA_BUCKET", "GT_FILL_WATER_BUCKET", false);
Research.addPrereq("IT_FILL_LAVA_BUCKET", "NITOR", true);
Crucible.addRecipe("IT_FILL_LAVA_BUCKET", <minecraft:lava_bucket>, <minecraft:bucket>, "ignis 8, potentia 8, lux 2, perditio 2, terra 2");
Research.addCruciblePage("IT_FILL_LAVA_BUCKET", <minecraft:lava_bucket>);
Research.setConcealed("IT_FILL_LAVA_BUCKET", true);

// Rare Earth
Research.addResearch("IT_RAREEARTH", "ALCHEMY", "ignis 8, perditio 4, terra 4, permutatio 4, lucrum 4, vitreus 2", 8, 2, 3, <gregtech:gt.meta.dustSmall:9100>);
game.setLocalization("tc.research_name.IT_RAREEARTH", "Rare Earth Transmutation");
game.setLocalization("tc.research_text.IT_RAREEARTH", "[IT] Getting your money's worth");
Research.addPage("IT_RAREEARTH", "kirara.research_page.IT_RAREEARTH.1");
game.setLocalization("kirara.research_page.IT_RAREEARTH.1", "Centrifugation is only able to bring out the most abundant components of molten lava, a melange of many different valuable elements. Even allowing the lava to cool into obsidian renders much of its mass unsalvageable.<BR>Thaumaturgists can approach this matter rather differently, forcing some of the rarest metals to precipitate by sacrificing the rest. This process requires the lava be contained in a nonmetallic casing, however. Unfortunately the magical capsules devised interfere with the process somewhat.");
Research.addPrereq("IT_RAREEARTH", "IT_FILL_LAVA_BUCKET", false);
Research.addPrereq("IT_RAREEARTH", "GT_ADVANCEDMETALLURGY", true);
Crucible.addRecipe("IT_RAREEARTH", <gregtech:gt.meta.dustTiny:9100> * 3, <MagicBees:capsule.magic:2>, "ignis 4, perditio 4, terra 2, permutatio 2, lucrum 2, vitreus 2");
Crucible.addRecipe("IT_RAREEARTH", <gregtech:gt.meta.dustSmall:9100>, <Forestry:refractoryLava>, "ignis 2, perditio 2, terra 1, permutatio 1, lucrum 1, vitreus 1");
Research.addCruciblePage("IT_RAREEARTH", <gregtech:gt.meta.dustSmall:9100>);
Research.addCruciblePage("IT_RAREEARTH", <gregtech:gt.meta.dustTiny:9100>);
Research.setConcealed("IT_RAREEARTH", true);

// Firestone
Research.addResearch("IT_FIRESTONE", "ALCHEMY", "ignis 8, perditio 4, potentia 6, permutatio 4", 8, 4, 3, <Railcraft:firestone.raw>);
game.setLocalization("tc.research_name.IT_FIRESTONE", "Firestone");
game.setLocalization("tc.research_text.IT_FIRESTONE", "[IT] Harnessing the power of concentrated flame");
Research.addPage("IT_FIRESTONE", "kirara.research_page.IT_FIRESTONE.1");
game.setLocalization("kirara.research_page.IT_FIRESTONE.1", "As transmuting of even red-hot lava has not satisfied your quest for power, you have devised a method of concentrating vast amounts of raw primal ignis essentia into a vessel no larger than a single piece of quartz.<BR>The firestone is an extremely potent fuel source, and until its powers are culled, will indiscriminately set surrounding blocks on fire. A blazing inferno strikes you as an appropriate herald of success, the infusion altar stones will be fine.");
Research.addPrereq("IT_FIRESTONE", "IT_FILL_LAVA_BUCKET", false);
Research.addPrereq("IT_FIRESTONE", "IT_PYROTHEUM", true);
Research.addPrereq("IT_FIRESTONE", "INFUSION", true);
Infusion.addRecipe("IT_FIRESTONE", <minecraft:quartz>, [<minecraft:lava_bucket>, <minecraft:lava_bucket>, <minecraft:lava_bucket>, <minecraft:lava_bucket>], "ignis 32, instrumentum 32, potentia 32, permutatio 32, vacuos 8, lux 8, nebrisum 8, fames 8", <Railcraft:firestone.raw>, 10);
Research.addInfusionPage("IT_FIRESTONE", <Railcraft:firestone.raw>);
Infusion.addRecipe("IT_FIRESTONE", <Railcraft:firestone.raw>, [<minecraft:diamond>, <Thaumcraft:ItemShard:1>, <minecraft:diamond>, <Thaumcraft:ItemShard:1>, <minecraft:diamond>, <Thaumcraft:ItemShard:1>, <minecraft:diamond>, <Thaumcraft:ItemShard:1>], "vitreus 64, praecantatio 64, gelum 64", <Railcraft:firestone.cut>, 5);
Research.addInfusionPage("IT_FIRESTONE", <Railcraft:firestone.cut>);
Infusion.addRecipe("IT_FIRESTONE", <Railcraft:firestone.cut>, [<chisel:redstone_block:12>, <chisel:redstone_block:12>, <chisel:redstone_block:12>, <chisel:redstone_block:12>], "vinculum 64", <Railcraft:firestone.refined:4998>, 7);
Research.addInfusionPage("IT_FIRESTONE", <Railcraft:firestone.refined:4998>);
Infusion.addRecipe("IT_FIRESTONE", <Railcraft:firestone.refined:*>, [dustPyrotheum, dustPyrotheum, dustPyrotheum, dustPyrotheum], "ignis 2048, potentia 2048", <Railcraft:firestone.refined:0>, 3);
Research.addInfusionPage("IT_FIRESTONE", <Railcraft:firestone.refined:0>);
Infusion.addRecipe("IT_FIRESTONE", <Railcraft:firestone.cracked:*>, [dustPyrotheum, dustPyrotheum, dustPyrotheum, dustPyrotheum], "ignis 32, praecantatio 64, vitreus 32", <Railcraft:firestone.refined:4999>, 3);
Research.addInfusionPage("IT_FIRESTONE", <Railcraft:firestone.refined:4999>);
Research.setConcealed("IT_FIRESTONE", true);
Warp.addToResearch("IT_FIRESTONE", 2);
Warp.addToItem(<Railcraft:firestone.raw>, 2);

// Basic Wand Craft Thaumonomicon Entry
Research.clearPages("BASICTHAUMATURGY"); 
Research.addPage("BASICTHAUMATURGY", "tc.research_page.BASICTHAUMATURGY.1");
Research.addPage("BASICTHAUMATURGY", "kirara.research_page.BASICTHAUMATURGY.1");
game.setLocalization("kirara.research_page.BASICTHAUMATURGY.1", "Holding shift will display exact numbers held by the wand and any possible discounts you have to performing magical tasks.<BR>Wands are always constructed by the combination of a rod and two end-caps. As you progress with your studies, you are sure you will discover different materials that you can use to craft rods and caps to make powerful wands. Only the basic wands can be made in a normal crafting table, the others will require the \u00A75Arcane Workbench\u00A70 and will cost vis to construct.<BR>The basic wand is constructed from carefully shaped mundane wood and copper, both of which make poor materials for working magic.");
Research.addCraftingPage("BASICTHAUMATURGY", <Thaumcraft:WandCap:3>);
Research.addCraftingPage("BASICTHAUMATURGY", <Thaumcraft:WandCasting:2>);

// Silver Wand Caps
Research.clearPages("CAP_silver");
Research.addPage("CAP_silver", "tc.research_page.CAP_silver.1");
Research.addArcanePage("CAP_silver", <Thaumcraft:WandCap:5>);
Research.addCruciblePage("CAP_silver", <Thaumcraft:WandCap:4>);

// Quarried Stone
Research.addResearch("RC_QUARRIED_STONE", "ALCHEMY", "ordo 2, permutatio 1, terra 2", -7, -3, 1, <Railcraft:cube:7>);
game.setLocalization("tc.research_name.RC_QUARRIED_STONE", "Quarried Stone");
game.setLocalization("tc.research_text.RC_QUARRIED_STONE", "[RC] Stone to marble in one simple step");
Research.addPage("RC_QUARRIED_STONE", "kirara.research_page.RC_QUARRIED_STONE.1");
game.setLocalization("kirara.research_page.RC_QUARRIED_STONE.1", "You have found a way to imbue simple stone with lux essentia to transform its exterior appearance.<BR>The resulting product has a very unique refined look and feel to it; perhaps the addition of other essentia types may yield something completely different...");
Research.addPrereq("RC_QUARRIED_STONE", "ALCHEMICALMANUFACTURE", false);
Crucible.addRecipe("RC_QUARRIED_STONE", <Railcraft:cube:7>, <minecraft:stone>, "lux 2");
Research.addCruciblePage("RC_QUARRIED_STONE", <Railcraft:cube:7>);
Research.setConcealed("RC_QUARRIED_STONE", true);

// Abyssal Stone
Research.addResearch("RC_ABYSSAL_STONE", "ALCHEMY", "ordo 2, permutatio 1, terra 2", -9, -3, 1, <Railcraft:cube:6>);
game.setLocalization("tc.research_name.RC_ABYSSAL_STONE", "Abyssal Stone");
game.setLocalization("tc.research_text.RC_ABYSSAL_STONE", "[RC] Stone to darker marble(?) in one simple step");
Research.addPage("RC_ABYSSAL_STONE", "kirara.research_page.RC_ABYSSAL_STONE.1");
game.setLocalization("kirara.research_page.RC_ABYSSAL_STONE.1", "By imbuing stone with tenebrae essentia, you have produced an equivalent material that is aesthetically similar to quarried stone, but far darker in appearance.<BR>You are sure that the faint screams you seem to hear from the tenebrous block are just your imagination.");
Research.addPrereq("RC_ABYSSAL_STONE", "RC_QUARRIED_STONE", false);
Crucible.addRecipe("RC_ABYSSAL_STONE", <Railcraft:cube:6>, <minecraft:stone>, "tenebrae 2");
Research.addCruciblePage("RC_ABYSSAL_STONE", <Railcraft:cube:6>);
Research.setConcealed("RC_ABYSSAL_STONE", true);

// Peat
Research.addResearch("IT_MATURE_PEAT", "ALCHEMY", "ignis 3, aqua 1, permutatio 1, potentia 3", -7, -1, 2, <Forestry:peat>);
game.setLocalization("tc.research_name.IT_MATURE_PEAT", "Alchemical Peat Formation");
game.setLocalization("tc.research_text.IT_MATURE_PEAT", "[IT] Technomagical peat manufacture");
Research.addPage("IT_MATURE_PEAT", "kirara.research_page.IT_MATURE_PEAT.1");
game.setLocalization("kirara.research_page.IT_MATURE_PEAT.1", "Waiting for peat to mature tried your patience like no other task. Now, you have found a way to instantly turn bog earth into precious, mature peat fuel inside a crucible.<BR>The careful addition of Ignis, Aqua, and Terra essentia completes the process instantaneously, though the rushed alchemical manufacture of peat in this fashion will not return usable blocks of dirt.");
Research.addPrereq("IT_MATURE_PEAT", "GT_FILL_WATER_BUCKET", true);
Research.addPrereq("IT_MATURE_PEAT", "ALCHEMICALMANUFACTURE", false);
Crucible.addRecipe("IT_MATURE_PEAT", <Forestry:peat>, <Forestry:soil:1>, "ignis 2, aqua 2, terra 1");
Research.addCruciblePage("IT_MATURE_PEAT", <Forestry:peat>);
Research.setConcealed("IT_MATURE_PEAT", true);

// Bituminous peat
Research.addResearch("IT_BITUMINOUS_PEAT", "ALCHEMY", "ignis 6, perditio 3, permutatio 3, terra 3, potentia 6", -9, -1, 2, <Forestry:bituminousPeat>);
game.setLocalization("tc.research_name.IT_BITUMINOUS_PEAT", "Alchemical Peat Refining");
game.setLocalization("tc.research_text.IT_BITUMINOUS_PEAT", "[IT] Alchemically treated peat");
Research.addPage("IT_BITUMINOUS_PEAT", "kirara.research_page.IT_BITUMINOUS_PEAT.1");
game.setLocalization("kirara.research_page.IT_BITUMINOUS_PEAT.1", "Regular peat is not a great source of energy, but you have found that the addition of biomass in the form of Herba essentia can vastly improve its effectiveness.<BR>Additional energy input in the form of Ignis and Potentia essentia is of course required, but the gains from refining the peat block into a rich, bituminous form far outweighs the initial cost.");
Research.addPrereq("IT_BITUMINOUS_PEAT", "IT_MATURE_PEAT", false);
Crucible.addRecipe("IT_BITUMINOUS_PEAT", <Forestry:bituminousPeat>, <Forestry:peat>, "herba 8, ignis 2, potentia 1");
Research.addCruciblePage("IT_BITUMINOUS_PEAT", <Forestry:bituminousPeat>);
Research.setConcealed("IT_BITUMINOUS_PEAT", true);

// Coal coke
Research.moveResearch("ETHEREALBLOOM", "ALCHEMY", -2, -4); 

Research.addResearch("IT_COAL_COKE", "ALCHEMY", "ignis 5, permutatio 5, terra 2, potentia 5", -3, -2, 2, <Railcraft:fuel.coke>);
game.setLocalization("tc.research_name.IT_COAL_COKE", "Refining Coal");
game.setLocalization("tc.research_text.IT_COAL_COKE", "[IT] Alchemically refining coal");
Research.addPage("IT_COAL_COKE", "kirara.research_page.IT_COAL_COKE.1");
game.setLocalization("kirara.research_page.IT_COAL_COKE.1", "Regular coal often contains many impurities that prevent proper combustion, and thus efficient usage of its potential energy. By infusing raw coal with a large quantity of ignis and perditio essentia, that impurity can be driven off and coaxed out of the coal mass.<BR>What you are left with is a grey, porous material that burns far better than raw coal, much akin to the coal coke produced via industrial processes in special ovens. Unfortunately, unlike those industrial processes, the thaumaturgical refining of coal will not produce any byproduct.");
Research.addPrereq("IT_COAL_COKE", "ALCHEMICALMANUFACTURE", false);
Crucible.addRecipe("IT_COAL_COKE", <Railcraft:fuel.coke>, <minecraft:coal>, "ignis 4, perditio 2, potentia 2");
Research.addCruciblePage("IT_COAL_COKE", <Railcraft:fuel.coke>);
Research.setConcealed("IT_COAL_COKE", true);

print('Rudimentary Alchemy Complete');

// Voidmetal
Crucible.addRecipe("VOIDMETAL", <Thaumcraft:ItemNugget:7> * 3, <Thaumcraft:ItemResource:17>, "metallum 3");
Arcane.addShaped("VOIDMETAL", <Thaumcraft:ItemPickVoid>, "perditio 5", [[<ore:plateVoid>, <ore:ingotVoid>, <ore:ingotVoid>], [<ore:craftingToolFile>, <ore:stickEnderium>, <ore:craftingToolHardHammer>]]);
Arcane.addShaped("VOIDMETAL", <Thaumcraft:ItemShovelVoid>, "perditio 5", [[<ore:craftingToolFile>, <ore:plateVoid>, <ore:craftingToolHardHammer>], [null, <ore:stickEnderium>, null]]);
Arcane.addShaped("VOIDMETAL", <Thaumcraft:ItemHoeVoid>, "perditio 5", [[<ore:plateVoid>, <ore:ingotVoid>, <ore:craftingToolHardHammer>], [<ore:craftingToolFile>, <ore:stickEnderium>, null]]);
Arcane.addShaped("VOIDMETAL", <Thaumcraft:ItemAxeVoid>, "perditio 5", [[<ore:plateVoid>, <ore:ingotVoid>, <ore:craftingToolHardHammer>], [<ore:plateVoid>, <ore:stickEnderium>, null], [<ore:craftingToolFile>, null, null]]);
Arcane.addShaped("VOIDMETAL", <Thaumcraft:ItemSwordVoid>, "perditio 5", [[null, <ore:plateVoid>, null], [<ore:craftingToolFile>, <ore:plateVoid>, <ore:craftingToolHardHammer>], [null, <ore:stickEnderium>, null]]);
Arcane.addShaped("VOIDMETAL", <Thaumcraft:ItemChestplateVoid>, "perditio 5", [[<ore:plateCurvedEnderium>, <ore:craftingToolHardHammer>, <ore:plateCurvedEnderium>], [<ore:plateCurvedVoid>, <ore:plateVoid>, <ore:plateCurvedVoid>], [<ore:plateCurvedVoid>, <ore:plateVoid>, <ore:plateCurvedVoid>]]);
Arcane.addShaped("VOIDMETAL", <Thaumcraft:ItemLeggingsVoid>, "perditio 5", [[<ore:plateCurvedVoid>, <ore:plateVoid>, <ore:plateCurvedVoid>], [<ore:plateCurvedEnderium>, <ore:craftingToolHardHammer>, <ore:plateCurvedEnderium>], [<ore:plateCurvedVoid>, null, <ore:plateCurvedVoid>]]);
Arcane.addShaped("VOIDMETAL", <Thaumcraft:ItemHelmetVoid>, "perditio 5", [[<ore:plateCurvedVoid>, <ore:plateCurvedVoid>, <ore:plateCurvedVoid>], [<ore:plateEnderium>, <ore:craftingToolHardHammer>, <ore:plateEnderium>]]);
Arcane.addShaped("VOIDMETAL", <Thaumcraft:ItemBootsVoid>, "perditio 5", [[<ore:plateCurvedVoid>, null, <ore:plateCurvedVoid>], [<ore:plateEnderium>, <ore:craftingToolHardHammer>, <ore:plateEnderium>]]);
Arcane.addShaped("VOIDMETAL", <Railcraft:tool.crowbar.void>, "perditio 50", [[null, <ore:dyeRed>, <ore:ingotVoid>], [<ore:dyeRed>, <ore:ingotVoid>, <ore:dyeRed>], [<ore:ingotVoid>, <ore:dyeRed>, null]]);

Research.clearPages("VOIDMETAL");
Research.addPage("VOIDMETAL", "tc.research_page.VOIDMETAL.1");
Research.addCruciblePage("VOIDMETAL", <Thaumcraft:ItemNugget:7>);
Research.addPage("VOIDMETAL", "tc.research_page.VOIDMETAL.2");
Research.addCraftingPage("VOIDMETAL", ingotVoid);
Research.addArcanePage("VOIDMETAL", <Thaumcraft:ItemShovelVoid>);
Research.addArcanePage("VOIDMETAL", <Thaumcraft:ItemPickVoid>);
Research.addArcanePage("VOIDMETAL", <Thaumcraft:ItemAxeVoid>);
Research.addArcanePage("VOIDMETAL", <Thaumcraft:ItemSwordVoid>);
Research.addArcanePage("VOIDMETAL", <Thaumcraft:ItemHoeVoid>);
Research.addArcanePage("VOIDMETAL", <Thaumcraft:ItemHelmetVoid>);
Research.addArcanePage("VOIDMETAL", <Thaumcraft:ItemChestplateVoid>);
Research.addArcanePage("VOIDMETAL", <Thaumcraft:ItemLeggingsVoid>);
Research.addArcanePage("VOIDMETAL", <Thaumcraft:ItemBootsVoid>);
Research.addArcanePage("VOIDMETAL", <Railcraft:tool.crowbar.void>);

// // Fix Infused Crops
// Research.orphanResearch("INFUSED_POTIONS");
// Research.removeResearch("INFUSED_POTIONS");
// Research.addResearch("IT_INFUSED_POTIONS", "TT_CATEGORY", "aqua 5, perditio 5", 7, -5, 2, <ThaumicTinkerer:infusedSeeds>.withTag({mainAspect: {Aspects: [{amount: 1, key: "ignis"}]}}));
// game.setLocalization("tc.research_name.IT_INFUSED_POTIONS", "Infused Crops");
// game.setLocalization("tc.research_text.IT_INFUSED_POTIONS", "[TT] Who said bees? No one said bees.");
// Research.addPrereq("IT_INFUSED_POTIONS", "BRIGHT_NITOR", false);
// Research.addPrereq("IT_INFUSED_POTIONS", "INFUSION", true);
// Infusion.removeRecipe(<ThaumicTinkerer:infusedSeeds>);
// Infusion.addRecipe("IT_INFUSED_POTIONS", <minecraft:wheat_seeds>, [<Thaumcraft:ItemShard:6>, <Thaumcraft:ItemShard:6>, <Thaumcraft:ItemShard:6>, <Thaumcraft:ItemShard:6>], "meto 32, messis 32", <InfinityCore:itemMaterial:17>, 5);
// Crucible.addRecipe("IT_INFUSED_POTIONS", <ThaumicTinkerer:infusedSeeds>.withTag({mainAspect: {Aspects: [{amount: 1, key: "aer"}]}, aspectTendencies: {Aspects: []}}), <InfinityCore:itemMaterial:17>, "aer 8");
// Crucible.addRecipe("IT_INFUSED_POTIONS", <ThaumicTinkerer:infusedSeeds>.withTag({mainAspect: {Aspects: [{amount: 1, key: "ignis"}]}, aspectTendencies: {Aspects: []}}), <InfinityCore:itemMaterial:17>, "ignis 8");
// Crucible.addRecipe("IT_INFUSED_POTIONS", <ThaumicTinkerer:infusedSeeds>.withTag({mainAspect: {Aspects: [{amount: 1, key: "aqua"}]}, aspectTendencies: {Aspects: []}}), <InfinityCore:itemMaterial:17>, "aqua 8");
// Crucible.addRecipe("IT_INFUSED_POTIONS", <ThaumicTinkerer:infusedSeeds>.withTag({mainAspect: {Aspects: [{amount: 1, key: "terra"}]}, aspectTendencies: {Aspects: []}}), <InfinityCore:itemMaterial:17>, "terra 8");
// Crucible.addRecipe("IT_INFUSED_POTIONS", <ThaumicTinkerer:infusedSeeds>.withTag({mainAspect: {Aspects: [{amount: 1, key: "ordo"}]}, aspectTendencies: {Aspects: []}}), <InfinityCore:itemMaterial:17>, "ordo 8");
// Crucible.addRecipe("IT_INFUSED_POTIONS", <ThaumicTinkerer:infusedSeeds>.withTag({mainAspect: {Aspects: [{amount: 1, key: "perditio"}]}, aspectTendencies: {Aspects: []}}), <InfinityCore:itemMaterial:17>, "perditio 8");
// Research.clearPages("IT_INFUSED_POTIONS");
// Research.addPage("IT_INFUSED_POTIONS", "ttresearch.page.INFUSED_POTIONS.0");
// Research.addPage("IT_INFUSED_POTIONS", "ttresearch.page.INFUSED_POTIONS.1");
// Research.addPage("IT_INFUSED_POTIONS", "ttresearch.page.INFUSED_POTIONS.2");
// Research.addPage("IT_INFUSED_POTIONS", "ttresearch.page.INFUSED_POTIONS.3");
// Research.addPage("IT_INFUSED_POTIONS", "ttresearch.page.INFUSED_POTIONS.4");
// Research.addPage("IT_INFUSED_POTIONS", "ttresearch.page.INFUSED_POTIONS.5");
// Research.addInfusionPage("IT_INFUSED_POTIONS", <InfinityCore:itemMaterial:17>);
// Research.addCruciblePage("IT_INFUSED_POTIONS", <ThaumicTinkerer:infusedSeeds>);
// Research.addCruciblePage("IT_INFUSED_POTIONS", <ThaumicTinkerer:infusedPotion:0>);
// Research.addCruciblePage("IT_INFUSED_POTIONS", <ThaumicTinkerer:infusedPotion:1>);
// Research.addCruciblePage("IT_INFUSED_POTIONS", <ThaumicTinkerer:infusedPotion:2>);
// Research.addCruciblePage("IT_INFUSED_POTIONS", <ThaumicTinkerer:infusedPotion:3>);
// Research.setConcealed("IT_INFUSED_POTIONS", true);

// Refresh Recipes
Research.refreshResearchRecipe("COREGATHER");
Research.refreshResearchRecipe("PLANTS");
Research.refreshResearchRecipe("INFUSION");
Research.refreshResearchRecipe("THAUMONOMICON");
Research.refreshResearchRecipe("GOGGLES");
Research.refreshResearchRecipe("BELLOWS");
Research.refreshResearchRecipe("DISTILESSENTIA");
Research.refreshResearchRecipe("ESSENTIACRYSTAL");
Research.refreshResearchRecipe("WARDEDARCANA");
Research.refreshResearchRecipe("HUNGRYCHEST");
Research.refreshResearchRecipe("FOCUSPOUCH");
Research.refreshResearchRecipe("ENCHFABRIC");
Research.refreshResearchRecipe("BOOTSTRAVELLER");
Research.refreshResearchRecipe("DECONSTRUCTOR");
Research.refreshResearchRecipe("ARCANELAMP");
Research.refreshResearchRecipe("ELEMENTALPICK");
Research.refreshResearchRecipe("ELEMENTALAXE");
Research.refreshResearchRecipe("ELEMENTALSWORD");
Research.refreshResearchRecipe("ELEMENTALSHOVEL");
Research.refreshResearchRecipe("ELEMENTALHOE");
Research.refreshResearchRecipe("RUNICARMOR");
Research.refreshResearchRecipe("RUNICEMERGENCY");
Research.refreshResearchRecipe("RUNICCHARGED");
Research.refreshResearchRecipe("RUNICHEALING");
Research.refreshResearchRecipe("RUNICKINETIC");
Research.refreshResearchRecipe("MIRROR");
Research.refreshResearchRecipe("MIRRORHAND");
Research.refreshResearchRecipe("MIRRORESSENTIA");
Research.refreshResearchRecipe("HOVERHARNESS");
Research.refreshResearchRecipe("HOVERGIRDLE");
Research.refreshResearchRecipe("COREGATHER");
Research.refreshResearchRecipe("CAP_silver");
Research.refreshResearchRecipe("CAP_thaumium");	
Research.refreshResearchRecipe("CAP_void");
Research.refreshResearchRecipe("ROD_greatwood");
Research.refreshResearchRecipe("ROD_silverwood");
Research.refreshResearchRecipe("ROD_obsidian");
Research.refreshResearchRecipe("ROD_ice");
Research.refreshResearchRecipe("ROD_quartz");
Research.refreshResearchRecipe("ROD_reed");
Research.refreshResearchRecipe("ROD_blaze");
Research.refreshResearchRecipe("ROD_bone");
Research.refreshResearchRecipe("ROD_greatwood_staff");
Research.refreshResearchRecipe("ROD_silverwood_staff");
Research.refreshResearchRecipe("ROD_obsidian_staff");
Research.refreshResearchRecipe("ROD_ice_staff");
Research.refreshResearchRecipe("ROD_quartz_staff");
Research.refreshResearchRecipe("ROD_reed_staff");
Research.refreshResearchRecipe("ROD_blaze_staff");
Research.refreshResearchRecipe("ROD_bone_staff");
// Research.refreshResearchRecipe("AUTOHANDMIRROR");
Research.refreshResearchRecipe("ENCHANTER");
// Research.refreshResearchRecipe("SPINNINGWHEEL");
// Research.refreshResearchRecipe("ENDERBAG");
Research.refreshResearchRecipe("REPAIRER");
Research.refreshResearchRecipe("MB_Scoop");
Research.refreshResearchRecipe("MB_Grafter");
// Research.refreshResearchRecipe("ALCHEMYBOILER");
// Research.refreshResearchRecipe("THIRSTYTANK");
// Research.refreshResearchRecipe("PRIMORDIALARMOR");
// Research.refreshResearchRecipe("PRIMORDIALWEAPONRY");
Research.refreshResearchRecipe("ANIMATION_TABLET");

print("Refreshed researches");

print("Finished Thaumcraft Changes");

// --------------------------------------------------

var pinchTrinium = <gregtech:gt.meta.dustSmall:1260>;
var netherStar = <minecraft:nether_star>;
var plateTitanium = <gregtech:gt.meta.plate:220>;
var plateChrome = <gregtech:gt.meta.plate:240>;
var plateVoid = <gregtech:gt.meta.plate:8681>;
var plateCurvedEnderium = <gregtech:gt.meta.plateCurved:8710>;

// Naquadria
Research.addResearch("GHA_TRANSNAQUADAH", "ALCHEMY", "venenum 7, perditio 5, radio 3, potentia 3", -8, -5, 2, <gregtech:gt.meta.crushedPurifiedTiny:1740>);
game.setLocalization("tc.research_name.GHA_TRANSNAQUADAH", "Naquadah Multiplication");
game.setLocalization("tc.research_text.GHA_TRANSNAQUADAH", "[GHA] Expanding your Naquadah supply");
Research.addPage("GHA_TRANSNAQUADAH", "kirara.research_page.GHA_TRANSNAQUADAH.1");
game.setLocalization("kirara.research_page.GHA_TRANSNAQUADAH.1", "Making Naquadah directly has proven extremely expensive. Perhaps by leveraging ferro-silico-mantic methods of material processing you can expand both the amount and the variety of non-musical power-metal in your ear- pockets. <BR>Some by-products may be absurdly harmful to everything nearby. Something about the density of radio essentia...");
Crucible.addRecipe("GHA_TRANSNAQUADAH", <gregtech:gt.meta.crushedTiny:1740> * 3, <ore:nuggetNaquadah>, "radio 3, metallum 2, superbia 1, terra 3, venenum 1");
Research.addCruciblePage("GHA_TRANSNAQUADAH", <gregtech:gt.meta.crushedTiny:1740>);
Research.addPrereq("GHA_TRANSNAQUADAH", "IT_TRANSNAQUADAH2", true); 
Research.addPrereq("GHA_TRANSNAQUADAH", "IT_TRANSADAMANTIUM", true); 
Research.addPrereq("GHA_TRANSNAQUADAH", "ALCHEMICALMANUFACTURE", false); 
Research.setConcealed("GHA_TRANSNAQUADAH", true);
Warp.addToResearch("GHA_TRANSNAQUADAH", 7);

// Stargate Core and Control Crystals
Research.addResearch("GHA_SGCRYSTALS", "ELDRITCH", "iter 16, alienis 4, vitreus 4, cognitio 2, nebrisum 1", -5, -2, 2, <SGCraft:sgCoreCrystal>);
Research.addPrereq("GHA_SGCRYSTALS", "WARP_GATE", true);
Research.addPrereq("GHA_SGCRYSTALS", "GHA_TRINIUM", true);
game.setLocalization("tc.research_name.GHA_SGCRYSTALS", "Stargate Crystals");
game.setLocalization("tc.research_text.GHA_SGCRYSTALS", "[SGC] Alteran programming");
Research.addPage("GHA_SGCRYSTALS", "kirara.research_page.GHA_SGCRYSTALS.1");
game.setLocalization("kirara.research_page.GHA_SGCRYSTALS.1", "Even undead brains decay. Manipulating the internal structure of a crystal to interact with colours of light should hold for millenia. Maybe this is how planets think...");
Infusion.addRecipe("GHA_SGCRYSTALS", clusterAer, [<gregtech:gt.meta.lens:8310>, dislocator, <Thaumcraft:ItemZombieBrain>, <gregtech:gt.meta.lens:8384>, pavingTravel, focusHole], "iter 32, alienis 32, vitreus 16, machina 8, cognitio 8", <SGCraft:sgControllerCrystal>, 9);
Research.addInfusionPage("GHA_SGCRYSTALS", <SGCraft:sgControllerCrystal>);
Infusion.addRecipe("GHA_SGCRYSTALS", clusterAqua, [<gregtech:gt.meta.lens:8307>, shardNether, pavingTravel, <gregtech:gt.meta.lens:8328>, focusExcavation, shardEnder], "iter 64, alienis 32, machina 32, perditio 16, aqua 8, ignis 8, perfodio 8", <SGCraft:sgCoreCrystal>, 8);
Research.addInfusionPage("GHA_SGCRYSTALS", <SGCraft:sgCoreCrystal>);
Research.setConcealed("GHA_SGCRYSTALS", true);
Warp.addToResearch("GHA_SGCRYSTALS", 1);

// Trinium transmutation
Research.addResearch("GHA_TRINIUM", "ALCHEMY", "metallum 8, luxuria 2, nebrisum 2, superbia 2", 16, 7, 1, <gregtech:gt.meta.chunkGt:1260>);
Research.addPrereq("GHA_TRINIUM", "IT_TRANSNAQUADAH", true);
Research.addPrereq("GHA_TRINIUM", "IT_TRANSADAMANTIUM", false);
Research.addPrereq("GHA_TRINIUM", "GT_ADVANCEDMETALLURGY", false);
game.setLocalization("tc.research_name.GHA_TRINIUM", "Trinium Transmutation");
game.setLocalization("tc.research_text.GHA_TRINIUM", "[GHA] Spiritual metalworks");
Research.addPage("GHA_TRINIUM", "kirara.research_page.GHA_TRINIUM.1");
game.setLocalization("kirara.research_page.GHA_TRINIUM.1", "Sometimes softness is a power all unto itself. Having created the ultimate Yin metal from beyond the stars, perhaps it needs to be married to a Yang power inside every living being... <BR>Odd, what substance can be salvaged from this process shines with starlight like the silver it is made from, how yin. Yet you are certain it is the complement to Naquadah anyway, somehow.");
Crucible.addRecipe("GHA_TRINIUM", pinchTrinium *2, <gregtech:gt.meta.ingot:8676>, "spiritus 4, metallum 2, tutamen 2, volatus 2, nebrisum 1");
Research.addCruciblePage("GHA_TRINIUM", pinchTrinium);
Research.setConcealed("GHA_TRINIUM", true);
Warp.addToResearch("GHA_TRINIUM", 2);

// Stargate construction
Research.addResearch("GHA_GATEBUILDER", "ARTIFICE", "iter 5, fabrico 3, tempus 1", 2, -4, 2, <SGCraft:stargateRing:1>);
Research.addPrereq("GHA_GATEBUILDER", "GHA_SGCRYSTALS", true);
Research.addPrereq("GHA_GATEBUILDER", "GHA_TRINIUM", true);
Research.addPrereq("GHA_GATEBUILDER", "IT_TRANSNAQUADAH", true);
Research.addPrereq("GHA_GATEBUILDER", "PAVETRAVEL", false);
game.setLocalization("tc.research_name.GHA_GATEBUILDER", "Stargate Construction");
game.setLocalization("tc.research_text.GHA_GATEBUILDER", "[SGC] We are the Ancients");
Research.addPage("GHA_GATEBUILDER", "kirara.research_page.GHA_GATEBUILDER.1");
game.setLocalization("kirara.research_page.GHA_GATEBUILDER.1", "The keystone portals you have seen some spell-weavers build have so many options for improvement through thaumaturgy...<BR>Alas, the best you could invent seems almost technological. At least the purpose of Trinium finally makes sense: it pins the raw power of Naquadah to the weave of reality. Build a spinning ring of the alloy and we could bore a tunnel straight through, provided another such device exists to anchor the far end.");
Arcane.addShapeless("GHA_GATEBUILDER", plateNaquadahAlloy, "ordo 15, terra 5", [pinchTrinium, pinchTrinium, pinchTrinium, <ore:dustSmallNaquadah>]);
Research.addArcanePage("GHA_GATEBUILDER", plateNaquadahAlloy);
Infusion.addRecipe("GHA_GATEBUILDER", <SGCraft:sgCoreCrystal>, [plateNaquadahAlloy, netherStar, plateTitanium, pavingTravel, plateNaquadahAlloy, netherStar, plateTitanium, pavingTravel], "iter 32, perfodio 16, alienis 8, machina 8", <SGCraft:stargateBase>, 8);
Research.addInfusionPage("GHA_GATEBUILDER", <SGCraft:stargateBase>);
Arcane.addShaped("GHA_GATEBUILDER", <SGCraft:stargateRing:0>, "aer 5, aqua 5, perditio 5", [
	[plateChrome, plateNaquadahAlloy, plateChrome], [shardEnder, <Thaumcraft:ItemAxeElemental>, shardEnder], [plateChrome, plateNaquadahAlloy, plateChrome]]);
Research.addArcanePage("GHA_GATEBUILDER", <SGCraft:stargateRing:0>);
Arcane.addShaped("GHA_GATEBUILDER", <SGCraft:stargateRing:1>, "ignis 5, terra 5, ordo 5", [
	[plateChrome, <Thaumcraft:ItemPickaxeElemental>, plateChrome], [plateNaquadahAlloy, pavingTravel, plateNaquadahAlloy], [plateChrome, shardEnder, plateChrome]]);
Research.addArcanePage("GHA_GATEBUILDER", <SGCraft:stargateRing:1>);
Research.addPage("GHA_GATEBUILDER", "kirara.research_page.GHA_GATEBUILDER.2");
game.setLocalization("kirara.research_page.GHA_GATEBUILDER.2", "A square ring of seven Chevrons and eight ring blocks centred over the controller appears able to reach anywhere on the same world when the controlling DHD is present and fueled with more naquadah. Unlike the spell-weaver\u0027s keystone portal, this Stargate cannot blindly link to all others - it must be deliberately set to a known passcode. <BR><BR>Finding seven symbols barely covers the scale of a single world, trans-dimensional travel will require passcodes to have nine glyphs - this upgrade to the core must therefore be present on both ends.");
Infusion.addRecipe("GHA_GATEBUILDER", <SGCraft:sgControllerCrystal>, [<minecraft:obsidian>, <minecraft:stone_button>, plateVoid, <minecraft:stone_button>, <minecraft:obsidian>, <minecraft:stone_button>, plateVoid, <minecraft:stone_button>], "cognitio 64, alienis 16, tempus 16", <SGCraft:stargateController>, 10);
Research.addInfusionPage("GHA_GATEBUILDER", <SGCraft:stargateController>);
Arcane.addShaped("GHA_GATEBUILDER", <SGCraft:sgChevronUpgrade>, "aer 15, ordo 15, perditio 10, terra 5", [
	[plateChrome, pavingTravel, plateCurvedEnderium],
	[shardEnder, <Thaumcraft:ItemEldritchObject:0>, shardEnder],
	[plateCurvedEnderium, pavingTravel, plateChrome]]);
Research.addArcanePage("GHA_GATEBUILDER", <SGCraft:sgChevronUpgrade>);
Research.setConcealed("GHA_GATEBUILDER", false);

print("Thaumic Cha'pa'ai");