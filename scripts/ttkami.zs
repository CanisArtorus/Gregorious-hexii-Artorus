#modloaded ThaumicTinkerer ForbiddenMagic gregapi_post 

/*
By CanisArtorus
based on ITTweak - kami 
	by Xavion
*/

import minetweaker.item.IIngredient;
import mods.nei.NEI;
import mods.thaumcraft.Arcane;
// import mods.thaumcraft.Aspects;
// import mods.thaumcraft.Crucible;
import mods.thaumcraft.Infusion;
import mods.thaumcraft.Research;
import mods.thaumcraft.Warp;

// Item Definitions

// Kami
var ichor               = <ThaumicTinkerer:kamiResource:0>;
var ichorcloth          = <ThaumicTinkerer:kamiResource:1>;
var ichorium            = <ThaumicTinkerer:kamiResource:2>;
var capIchor            = <ThaumicTinkerer:kamiResource:4>;
var rodIchor            = <ThaumicTinkerer:kamiResource:5>;
var shardNether         = <ThaumicTinkerer:kamiResource:6>;
var shardEnder          = <ThaumicTinkerer:kamiResource:7>;
var felineAmulet        = <ThaumicTinkerer:catAmulet>;
var bottomlessPouch     = <ThaumicTinkerer:ichorPouch>;
// var focusXPDrain        = <ThaumicTinkerer:focusXPDrain>;
// var focusShadowbeam     = <ThaumicTinkerer:focusShadowbeam>;
// var focusRecall         = <ThaumicTinkerer:focusRecall>;
var pickIchor           = <ThaumicTinkerer:ichorPick>;
var shovelIchor         = <ThaumicTinkerer:ichorShovel>;
var axeIchor            = <ThaumicTinkerer:ichorAxe>;
var swordIchor          = <ThaumicTinkerer:ichorSword>;
var pickIchorAwake      = <ThaumicTinkerer:ichorPickGem>;
var shovelIchorAwake    = <ThaumicTinkerer:ichorShovelGem>;
var axeIchorAwake       = <ThaumicTinkerer:ichorAxeGem>;
var swordIchorAwake     = <ThaumicTinkerer:ichorSwordGem>;
var helmIchor           = <ThaumicTinkerer:ichorclothHelm>;
var chestplateIchor     = <ThaumicTinkerer:ichorclothChest>;
var legsIchor           = <ThaumicTinkerer:ichorclothLegs>;
var bootsIchor          = <ThaumicTinkerer:ichorclothBoots>;
var helmIchorGem        = <ThaumicTinkerer:ichorclothHelmGem>;
var chestplateIchorGem  = <ThaumicTinkerer:ichorclothChestGem>;
var legsIchorGem        = <ThaumicTinkerer:ichorclothLegsGem>;
var bootsIchorGem       = <ThaumicTinkerer:ichorclothBootsGem>;
// var protoclay           = <ThaumicTinkerer:protoclay>;
var blackholeRing       = <ThaumicTinkerer:blockTalisman>;
var worldshaperGlass    = <ThaumicTinkerer:placementMirror>.withTag({size: 3, blockName: "minecraft:dirt", blockMeta: 0});
var celestialGateway    = <ThaumicTinkerer:warpGate>;
var celestialPearl      = <ThaumicTinkerer:skyPearl>;

// TC
var salisMundus         = <Thaumcraft:ItemResource:14>;
var capVoid             = <Thaumcraft:WandCap:7>;
var blankAmulet         = <Thaumcraft:ItemBaubleBlanks:0>;
var soulConTerra        = <ThaumicTinkerer:mobAspect:31>;
var soulConAlienis      = <ThaumicTinkerer:mobAspect:32>;
var soulConBestia       = <ThaumicTinkerer:mobAspect:29>;
var pouchFocus          = <Thaumcraft:FocusPouch>;
var focusHole           = <Thaumcraft:FocusPortableHole>;
// var focusShock          = <Thaumcraft:FocusShock>;
var focusExcavation     = <Thaumcraft:FocusExcavation>;
// var focusFire           = <Thaumcraft:FocusFire>;
var focusFrost          = <Thaumcraft:FocusFrost>;
var focusPrimal         = <Thaumcraft:FocusPrimal>;
var focusDistortion     = <ThaumicTinkerer:focusDeflect>;
var focusUprising       = <ThaumicTinkerer:focusFlight>;
var focusEfreet         = <ThaumicTinkerer:focusSmelt>;
var essentiaReservoir   = <Thaumcraft:blockEssentiaReservoir>;
// var talismanWithold     = <ThaumicTinkerer:xpTalisman>;
// var osmoticEnchanter    = <ThaumicTinkerer:enchanter>;
var rodSilverwood       = <Thaumcraft:WandRod:2>;
var visAmulet           = <Thaumcraft:ItemAmuletVis:1>;
var pickElemental       = <Thaumcraft:ItemPickaxeElemental>;
var shovelElemental     = <Thaumcraft:ItemShovelElemental>;
var axeElemental        = <Thaumcraft:ItemAxeElemental>;
var swordElemental      = <Thaumcraft:ItemSwordElemental>;
var thaumonomicon       = <Thaumcraft:ItemThaumonomicon>;
var helmRevealing       = <Thaumcraft:ItemGoggles>;
var thaumostaticHarness = <Thaumcraft:HoverHarness>;
var nitorHyper          = <ThaumicTinkerer:brightNitor>;
var arcaneBore          = <Thaumcraft:blockWoodenDevice:5>;
var saplingSilverwood   = <Thaumcraft:blockCustomPlant:1>;
var bootsTraveller      = <Thaumcraft:BootsTraveller>;
var taintedGoo          = <Thaumcraft:ItemResource:11>;
var voidJar             = <Thaumcraft:blockJar:3>;
var pavingTravel        = <Thaumcraft:blockCosmeticSolid:2>;
var dislocator          = <ThaumicTinkerer:dislocator>;
// var magicMirror         = <Thaumcraft:blockMirror>;
var vintuemWandCore		= <ForbiddenMagic:WandCores:4>;
var shardGluttony		= <ForbiddenMagic:GluttonyShard>;
var shardWrath			= <ForbiddenMagic:NetherShard:0>;
var shardEnvy			= <ForbiddenMagic:NetherShard:1>;
// var shardTaint			= <ForbiddenMagic:NetherShard:2>;
var shardPride			= <ForbiddenMagic:NetherShard:3>;
var shardLust			= <ForbiddenMagic:NetherShard:4>;
var shardSloth			= <ForbiddenMagic:NetherShard:5>;
var shardGreed			= <ForbiddenMagic:NetherShard:6>;
var clusterIron			= <Thaumcraft:ItemNugget:16>;
var clusterGold			= <Thaumcraft:ItemNugget:31>;
var clusterSilver		= <Thaumcraft:ItemNugget:19>;
var clusterTin			= <Thaumcraft:ItemNugget:18>;
var clusterLead			= <Thaumcraft:ItemNugget:20>;
var clusterCopper		= <Thaumcraft:ItemNugget:17>;
var clusterHg			= <Thaumcraft:ItemNugget:21>;

// GT
var ingotMidasium       = <gregtech:gt.meta.ingot:8677>;	//- 01:11332>;
var ingotRoseGold       = <gregtech:gt.meta.ingot:8602>;
var ingotEnderium       = <gregtech:gt.meta.ingot:8710>;	//- 01:11321>;
var ingotAdamantium     = <gregtech:gt.meta.ingot:2220>;	//-	01:11319>;
var diamondFlawless     = <gregtech:gt.meta.gemFlawless:8300>;	//-	02:29500>;
var lensGlass           = <gregtech:gt.meta.lens:8001>;	//-	01:24890>;
// var lensDiamond         = <gregtech:gt.meta.lens:8300>;	//-	01:24500>;
var diamondExquisite	= <gregtech:gt.meta.gemExquisite:8300>;
var emeraldExquisite    = <gregtech:gt.meta.gemExquisite:8301>;	//-	02:30501>;
var sapphireExquisite   = <gregtech:gt.meta.gemExquisite:8328>;	//-	02:30503>;
var YGarnetExquisite    = <gregtech:gt.meta.gemExquisite:8384>;	//-	02:30528>;	#Heliodor (emerald)
var GSapphireExquisite  = <gregtech:gt.meta.gemExquisite:8305>;	//-	02:30504>;
var rubyExquisite       = <gregtech:gt.meta.gemExquisite:8303>;	//-	02:30502>;
var blueTopazExquisite	= <gregtech:gt.meta.gemExquisite:8307>;
var redgemExquisite		= <gregtech:gt.meta.gemExquisite:8333>;
var arrowNaquadria      = <gregtech:gt.meta.arrowGtPlastic:1742>;	//-	02:26327>;
var plateDamasc			= <gregtech:gt.meta.plate:8634>;
var blockLazurite       = <gregtech:gt.meta.storage.dust:8330>;	//- gem2:0>;
var massStorageThaum	= <gregtech:gt.multitileentity:4027>;	//comp drawer, thaum
var plateDimAlloy		= <gregtech:gt.meta.plateDouble:8710>;	#enderium
var eyeLens				= <gregtech:gt.meta.lens:8319>;

// Other
var netherStar          = <minecraft:nether_star>;
var ingotEGalgador      = <StevesCarts:ModuleComponents:47>;	// 49>;	# normal galgador
var ingotVoid           = <Thaumcraft:ItemResource:16>;
var cocoa               = <minecraft:dye:3>;
var greanheartFish      = <harvestcraft:greenheartfishItem>;
var leaveJungle         = <minecraft:leaves:3>;
var energyCrystal       = <gregtech:gt.meta.gemFlawless:8298>;// <ElectriCraft:electricraft_item_crystal:2>;
var dragonEgg           = <minecraft:dragon_egg>;
var eel                 = <harvestcraft:eelrawItem>;
var cakePineapple       = <harvestcraft:pineappleupsidedowncakeItem>;
var beeQueen            = <Forestry:beeQueenGE>;
var bumblePrincess		= <gregtech:gt.multiitem.bumblebee:1>;	#wild
var clayBall            = <minecraft:clay_ball>;
var grass               = <minecraft:grass>;
var ringSilver          = <gregtech:gt.meta.ring:470>;
var devnull             = <OpenBlocks:devnull>;
var storageUpgrade13    = <StorageDrawers:upgrade:5>;
var dropper             = <minecraft:dropper>;
var blazePowder         = <minecraft:blaze_powder>;
var feather             = <minecraft:feather>;
var ingotDesh			= <GalacticraftMars:item.null:2>;
var ingotBedAlloy		= <NuclearCraft:material:7>;	// <RotaryCraft:rotarycraft_item_compacts:3>; # tough Alloy
var potionNVisonLong	= <minecraft:potion:8262>;
// var potionNVisonLong2	= <minecraft:potion	>;
var potionFResistLong	= <minecraft:potion:8259>;
// var potionFResistLong2	= <minecraft:potion	>;
var eyeGolden			= <OpenBlocks:goldenEye>;
var Firestone			= <Railcraft:firestone.refined>;
var igneousRock			= <erebus:gneiss>;
var fluxBoots			= <arsmagica2:battlemageBoots>;
var fluxChestplate		= <TwilightForest:item.phantomPlate>;
var fluxHelmet			= <TwilightForest:item.arcticHelm>;
var fluxLegs			= <TwilightForest:item.fieryLegs>;
var sky					= <OpenBlocks:sky>;
var ravenFeather		= <TwilightForest:item.tfFeather>;


// Removing recipes
Infusion.removeRecipe(ichor);
Arcane.removeRecipe(ichorium);
Arcane.removeRecipe(capIchor);
Infusion.removeRecipe(rodIchor);
Infusion.removeRecipe(felineAmulet);
Infusion.removeRecipe(bottomlessPouch);
// Infusion.removeRecipe(focusXPDrain);
// Infusion.removeRecipe(focusShadowbeam);
Arcane.removeRecipe(pickIchor);
Arcane.removeRecipe(shovelIchor);
Arcane.removeRecipe(axeIchor);
Arcane.removeRecipe(swordIchor);
Infusion.removeRecipe(pickIchorAwake);
Infusion.removeRecipe(shovelIchorAwake);
Infusion.removeRecipe(axeIchorAwake);
Infusion.removeRecipe(swordIchorAwake);
Arcane.removeRecipe(helmIchor);
Arcane.removeRecipe(chestplateIchor);
Arcane.removeRecipe(legsIchor);
Arcane.removeRecipe(bootsIchor);
Infusion.removeRecipe(helmIchorGem);
Infusion.removeRecipe(chestplateIchorGem);
Infusion.removeRecipe(legsIchorGem);
Infusion.removeRecipe(bootsIchorGem);
// Infusion.removeRecipe(protoclay);
Infusion.removeRecipe(blackholeRing);
Infusion.removeRecipe(worldshaperGlass);
Infusion.removeRecipe(celestialPearl);
Infusion.removeRecipe(celestialGateway);
// Infusion.removeRecipe(focusRecall);

// The reshaping

Research.clearPrereqs("DIMENSION_SHARDS");
Research.setAutoUnlock("DIMENSION_SHARDS", true);

Research.moveResearch("ICHOR", "TT_CATEGORY", 9, 8);
Warp.addToResearch("ICHOR", 5);
Infusion.addRecipe("ICHOR", netherStar, [shardEnder, shardGluttony, shardLust, shardPride, shardNether, shardGreed, shardEnvy, shardWrath], "superbia 8, nebrisum 8, infernus 64, auram 32, spiritus 32", ichor, 10);
Warp.addToItem(ichor, 1);
Research.refreshResearchRecipe("ICHOR");

// Ichorium
Research.moveResearch("ICHORIUM", "TT_CATEGORY", 11, 9);
Research.clearPages("ICHORIUM");
Research.addPage("ICHORIUM", "ttresearch.page.ICHORIUM.0");
Research.addPage("ICHORIUM", "kirara.research_page.IT_ICHORIUM.1");
game.setLocalization("kirara.research_page.IT_ICHORIUM.1", "Constructing this divine metal requires combining supreme ingots from diverse fields of study. Yet, no metal you have ever encountered has the... raw greed to absorb them all. Hence you have had to invent the divine distillate of Lucrum - Midasium, it may also prove a useful in it\u0027s own right.");
Arcane.addShaped("ICHORIUM", ingotMidasium, "aer 5, ignis 5, aqua 5, terra 5, ordo 5, perditio 5", [[ichor, ichor, ichor], [ichor, ingotRoseGold, ichor], [ichor, ichor, ichor]]);
Research.addArcanePage("ICHORIUM", ingotMidasium);
Infusion.addRecipe("ICHORIUM", ingotMidasium, [ingotEGalgador, ingotVoid, ingotDesh, ingotBedAlloy, ingotEnderium, ingotAdamantium], "ordo 96", ichorium * 3, 15);
Research.addInfusionPage("ICHORIUM", ichorium);

// Ichorium Wand Caps
Research.moveResearch("CAP_ICHOR", "TT_CATEGORY", 11, 11);
Arcane.addShaped("CAP_ICHOR", capIchor * 2, "aer 275, ignis 275, aqua 275, terra 275, ordo 275, perditio 275", [[ichor, capVoid, ichor], [ichorium, ichorium, ichorium], [ichor, capVoid, ichor]]);
Research.refreshResearchRecipe("CAP_ICHOR");

// Ichor Wand Core
Research.clearPrereqs("ROD_ICHORCLOTH");
Research.addPrereq("ROD_ICHORCLOTH", "ICHOR_CLOTH", false);
Infusion.addRecipe("ROD_ICHORCLOTH", rodSilverwood, [ichor, salisMundus, ichorcloth, salisMundus, vintuemWandCore, salisMundus, energyCrystal, salisMundus, visAmulet, salisMundus, ichorcloth, salisMundus], "instrumentum 64, superbia 32, praecantatio 256", rodIchor, 20);
Research.refreshResearchRecipe("ROD_ICHORCLOTH");

// Feline Amulet
Infusion.addRecipe("CAT_AMULET", blankAmulet, [ichor, soulConTerra, cocoa, soulConBestia, eyeLens, greanheartFish, soulConAlienis, leaveJungle], "cognitio 32, ordo 64, tenebrae 64", felineAmulet, 12);
Research.refreshResearchRecipe("CAT_AMULET");

// Bottomless Pouch
Research.clearPrereqs("ICHOR_POUCH");
Research.addPrereq("ICHOR_POUCH", "ICHOR_CLOTH", false);
Infusion.addRecipe("ICHOR_POUCH", pouchFocus, [ichorcloth, focusHole, diamondFlawless, ichorcloth, essentiaReservoir, massStorageThaum], "aer 64, alienis 32, humanus 32, pannus 64, vacuos 128", bottomlessPouch, 8);
Research.refreshResearchRecipe("ICHOR_POUCH");

// Awakened Tools
Research.moveResearch("ICHOR_TOOLS", "TT_CATEGORY", 13, 12);
Research.clearPages("ICHOR_TOOLS");
Research.addPage("ICHOR_TOOLS", "ttresearch.page.ICHOR_TOOLS.0");

Arcane.addShaped("ICHOR_TOOLS", pickIchor, "ignis 2000", [[ichorium, ichorium, ichorium], [null, rodSilverwood, null], [null, rodSilverwood, null]]);
Arcane.addShaped("ICHOR_TOOLS", shovelIchor, "terra 2000", [[null, ichorium, null], [null, rodSilverwood, null], [null, rodSilverwood, null]]);
Arcane.addShaped("ICHOR_TOOLS", axeIchor, "aqua 2000", [[ichorium, ichorium, null], [ichor, rodSilverwood, null], [null, rodSilverwood, null]]);
Arcane.addShaped("ICHOR_TOOLS", swordIchor, "aer 2000", [[null, ichorium, null], [null, ichorium, null], [null, rodSilverwood, null]]);

Research.addArcanePage("ICHOR_TOOLS", pickIchor);
Research.addArcanePage("ICHOR_TOOLS", shovelIchor);
Research.addArcanePage("ICHOR_TOOLS", axeIchor);
Research.addArcanePage("ICHOR_TOOLS", swordIchor);

Infusion.addRecipe("ICHOR_PICK_GEM", pickIchor, [ichorium, ichor, focusExcavation, clusterIron, clusterCopper, clusterGold, clusterHg, clusterLead, clusterSilver, clusterTin, shardGreed, diamondExquisite, pickElemental, ichorcloth], "ignis 128, nebrisum 32, lucrum 32, metallum 64, superbia 32, perfodio 128, terra 64, invidia 32, gula 32, magneto 64", pickIchorAwake, 25);
Research.refreshResearchRecipe("ICHOR_PICK_GEM");

Infusion.addRecipe("ICHOR_SHOVEL_GEM", shovelIchor, [ichorium, ichor, focusExcavation, shardLust, emeraldExquisite, shovelElemental, ichorcloth], "nebrisum 32, vinculum 32, instrumentum 64, superbia 16, perfodio 128, sensus 32, terra 196, gula 16, meto 32", shovelIchorAwake, 25);
Research.refreshResearchRecipe("ICHOR_SHOVEL_GEM");

Infusion.addRecipe("ICHOR_AXE_GEM", axeIchor, [ichorium, ichor, focusExcavation, shardSloth, blueTopazExquisite, axeElemental, ichorcloth], "aqua 128, messis 32, nebrisum 32, instrumentum 64, superbia 16, perfodio 128, invidia 32, arbor 64, desidia 32, magneto 32, luxuria 16, tempus 32", axeIchorAwake, 25);
Research.refreshResearchRecipe("ICHOR_AXE_GEM");

Infusion.addRecipe("ICHOR_SWORD_GEM", swordIchor, [ichorium, ichor, focusFrost, shardWrath, shardPride, shardEnvy, redgemExquisite, swordElemental, ichorcloth], "aer 128, ordo 32, nebrisum 32, telum 64, ira 64, potentia 64, fames 128, vitreus 32, infernus 64, superbia 16", swordIchorAwake, 25);
Research.refreshResearchRecipe("ICHOR_SWORD_GEM");

// Armour
Research.clearPrereqs("ICHORCLOTH_ARMOR");
Research.addPrereq("ICHORCLOTH_ARMOR", "ICHOR_CLOTH", false);
Arcane.addShaped("ICHORCLOTH_ARMOR", helmIchor, "aqua 2000", [[ichorcloth, ichorcloth, ichorcloth], [ichorcloth, null, ichorcloth], [null, null, null]]);
Arcane.addShaped("ICHORCLOTH_ARMOR", chestplateIchor, "aer 2000", [[ichorcloth, null, ichorcloth], [ichorcloth, ichorcloth, ichorcloth], [ichorcloth, ichorcloth, ichorcloth]]);
Arcane.addShaped("ICHORCLOTH_ARMOR", legsIchor, "ignis 2000", [[ichorcloth, ichorcloth, ichorcloth], [ichorcloth, null, ichorcloth], [ichorcloth, null, ichorcloth]]);
Arcane.addShaped("ICHORCLOTH_ARMOR", bootsIchor, "terra 2000", [[ichorcloth, null, ichorcloth], [ichorcloth, null, ichorcloth], [null, null, null]]);
Research.refreshResearchRecipe("ICHORCLOTH_ARMOR");

Research.clearPrereqs("ICHORCLOTH_HELM_GEM");
Research.addPrereq("ICHORCLOTH_HELM_GEM", "ICHORCLOTH_ARMOR", false);
Infusion.addRecipe("ICHORCLOTH_HELM_GEM", helmIchor, [sapphireExquisite, ichor, ichor, thaumonomicon, focusPrimal, fluxHelmet, potionNVisonLong, helmRevealing, dragonEgg, eel, cakePineapple, eyeGolden], "nebrisum 16, tempus 16, aqua 128, auram 64, cognitio 32, corpus 32, fames 32, lux 128, tutamen 128", helmIchorGem, 30);
// Infusion.addRecipe("ICHORCLOTH_HELM_GEM", helmIchor, [sapphireExquisite, ichor, ichor, thaumonomicon, focusPrimal, fluxHelmet, potionNVisonLong2, helmRevealing, dragonEgg, eel, cakePineapple, eyeGolden], "nebrisum 16, tempus 16, aqua 128, auram 64, cognitio 32, corpus 32, fames 32, lux 128, tutamen 128", helmIchorGem, 30);
Research.refreshResearchRecipe("ICHORCLOTH_HELM_GEM");

Research.clearPrereqs("ICHORCLOTH_CHEST_GEM");
Research.addPrereq("ICHORCLOTH_CHEST_GEM", "ICHORCLOTH_ARMOR", false);
Infusion.addRecipe("ICHORCLOTH_CHEST_GEM", chestplateIchor, [YGarnetExquisite, ichor, ichor, thaumonomicon, focusPrimal, fluxChestplate, focusUprising, thaumostaticHarness, focusDistortion, plateDamasc, dragonEgg, arrowNaquadria], "nebrisum 16, superbia 8, aer 128, volatus 64, alienis 32, sensus 32, ordo 64, lux 128, tutamen 128", chestplateIchorGem, 30);
Research.refreshResearchRecipe("ICHORCLOTH_CHEST_GEM");

Research.clearPrereqs("ICHORCLOTH_LEGS_GEM");
Research.addPrereq("ICHORCLOTH_LEGS_GEM", "ICHORCLOTH_ARMOR", false);
Infusion.addRecipe("ICHORCLOTH_LEGS_GEM", legsIchor, [rubyExquisite, ichor, ichor, thaumonomicon, focusPrimal, fluxLegs, potionFResistLong, focusEfreet, nitorHyper, Firestone, dragonEgg, igneousRock], "nebrisum 16, infernus 128, ignis 128, sano 64, lucrum 32, potentia 64, alienis 32, lux 128, tutamen 128", legsIchorGem, 30);
// Infusion.addRecipe("ICHORCLOTH_LEGS_GEM", legsIchor, [rubyExquisite, ichor, ichor, thaumonomicon, focusPrimal, fluxLegs, potionFResistLong2, focusEfreet, nitorHyper, Firestone, dragonEgg, igneousRock], "nebrisum 16, infernus 128, ignis 128, sano 64, lucrum 32, potentia 64, alienis 32, lux 128, tutamen 128", legsIchorGem, 30);
Research.refreshResearchRecipe("ICHORCLOTH_LEGS_GEM");

Research.clearPrereqs("ICHORCLOTH_BOOTS_GEM");
Research.addPrereq("ICHORCLOTH_BOOTS_GEM", "ICHORCLOTH_ARMOR", false);
Infusion.addRecipe("ICHORCLOTH_BOOTS_GEM", bootsIchor, [GSapphireExquisite, ichor, ichor, thaumonomicon, focusPrimal, fluxBoots, bumblePrincess, arcaneBore, beeQueen, saplingSilverwood, dragonEgg, bootsTraveller], "nebrisum 16, luxuria 4, terra 128, perfodio 64, motus 64, herba 32, iter 32, lux 128, tutamen 128", bootsIchorGem, 30);
Research.refreshResearchRecipe("ICHORCLOTH_BOOTS_GEM");

// Assorted Tool+ Items

Research.clearPrereqs("BLOCK_TALISMAN");
Research.addPrereq("BLOCK_TALISMAN", "ICHOR_PICK_GEM", false);
Research.addPrereq("BLOCK_TALISMAN", "ICHOR_SHOVEL_GEM", false);
Infusion.addRecipe("BLOCK_TALISMAN", ringSilver, [ichor, storageUpgrade13, devnull, focusHole, taintedGoo, voidJar], "alienis 24, praecantatio 48, tenebrae 24, vacuos 64", blackholeRing, 9);
Research.refreshResearchRecipe("BLOCK_TALISMAN");

Research.clearPrereqs("PLACEMENT_MIRROR");
Research.addPrereq("PLACEMENT_MIRROR", "BLOCK_TALISMAN", false);
Infusion.addRecipe("PLACEMENT_MIRROR", blackholeRing, [shardSloth, dropper, lensGlass, blazePowder], "cognitio 16, fabrico 32, praecantatio 24, vitreus 16", worldshaperGlass, 10);
Research.refreshResearchRecipe("PLACEMENT_MIRROR");

// Celestial Teleportation
Research.clearPrereqs("WARP_GATE");
Research.addPrereq("WARP_GATE", "ICHORCLOTH_CHEST_GEM", false);
Infusion.addRecipe("WARP_GATE", pavingTravel, [ichor, shardEnder, shardSloth, dislocator, plateDimAlloy, ichor, shardNether, shardSloth, feather, plateDimAlloy], "alienis 64, iter 64, volatus 64", celestialGateway, 15);

Infusion.addRecipe("WARP_GATE", ravenFeather, [ichor, sky, shardEnder, blockLazurite], "aer 16, iter 32, alienis 32, volatus 32", celestialPearl, 12);
Research.refreshResearchRecipe("WARP_GATE");


// reload proofing???!???
<ore:plankSealedWood>.addAll(<ore:plankTreatedWood>);
<ore:plankAnyWood>.addAll(<ore:plankTreatedWood>);
<ore:plankTreatedWood>.mirror(<ore:plankSealedWood>);
