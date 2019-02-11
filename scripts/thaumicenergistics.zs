#modloaded thaumicenergistics gregapi_post

// --- Created by Jason McRay ---

import mods.thaumcraft.Arcane;
import mods.thaumcraft.Research;

# Aliases
var wifiGolemBackpack	= <thaumicenergistics:golem.wifi.backpack>;
var ingotThaumium	= <ore:ingotThaumium>;
var MEInterface	= <appliedenergistics2:item.ItemMultiPart:440>;
var nitor	= <Thaumcraft:ItemResource:1>;
var wifiReceiver	= <appliedenergistics2:item.ItemMultiMaterial:41>;
var crystalFluix	= <ore:crystalFluix>;
var energyCell	= <appliedenergistics2:tile.BlockEnergyCell>;
var wardGlass	= <Thaumcraft:blockCosmeticOpaque:2>;
var logicProc	= <appliedenergistics2:item.ItemMultiMaterial:22>;
var calcProc	= <appliedenergistics2:item.ItemMultiMaterial:23>;
var enggProc	= <appliedenergistics2:item.ItemMultiMaterial:24>;
var thauWire	= <ore:wireFineThaumium>;
var thauCirc	= <gregtech:gt.multiitem.technological:30011>;
var wisp		= <Thaumcraft:ItemWispEssence:*>;
var salis		= <Thaumcraft:ItemResource:14>;

# Recipe Fixes
Arcane.removeRecipe(wifiGolemBackpack);
mods.thaumcraft.Arcane.addShaped("thaumicenergistics.TEGOLEMWIFIBACKPACK", wifiGolemBackpack, "aer 6, ignis 4, ordo 3", [
[ingotThaumium, MEInterface, ingotThaumium],
[nitor, wifiReceiver, nitor],
[crystalFluix, energyCell, crystalFluix]]);

//---- by Xavion

// Thaumic Energistics
Arcane.removeRecipe(<thaumicenergistics:part.base:5>);
recipes.removeShaped(<thaumicenergistics:storage.casing>);
recipes.removeShaped(<thaumicenergistics:storage.essentia:0>);
recipes.removeShaped(<thaumicenergistics:storage.essentia:1>);
recipes.removeShaped(<thaumicenergistics:storage.essentia:2>);
recipes.removeShaped(<thaumicenergistics:storage.essentia:3>);
Arcane.removeRecipe(<thaumicenergistics:storage.component:0>);
Arcane.removeRecipe(<thaumicenergistics:storage.component:1>);
Arcane.removeRecipe(<thaumicenergistics:storage.component:2>);
Arcane.removeRecipe(<thaumicenergistics:storage.component:3>);
recipes.removeShaped(<thaumicenergistics:thaumicenergistics.block.essentia.cell.workbench>);
Arcane.removeRecipe(<thaumicenergistics:material:2>);	// iron gear
// Arcane.removeRecipe(<thaumicenergistics:part.base:4>);
// recipes.removeShaped(<thaumicenergistics:wireless.essentia.terminal>);

// Arcane crafting terminal
Arcane.addShaped("thaumicenergistics.TEARCANETERM", <thaumicenergistics:part.base:5>, "ordo 10, perditio 10, aqua 10, ignis 10, terra 10, aer 10", 
	[[<ore:craftingToolScrewdriver>, <appliedenergistics2:item.ItemMultiPart:380>, <ore:craftingToolSoftHammer>], 
	[<ore:screwCertusQuartz>, <Thaumcraft:blockTable:15>, <ore:screwCertusQuartz>], 
	[<ore:plateNetherQuartz>, calcProc, <ore:plateNetherQuartz>]]);
/*
// Essentia terminals
Arcane.addShaped("thaumicenergistics.TEESSTERM", <thaumicenergistics:part.base:4>, "aqua 5, ordo 2, ignis 1", 
	[[<ore:stickNetherQuartz>, <thaumicenergistics:material:0>, <ore:stickNetherQuartz>], 
	[<ore:itemIlluminatedPanel>, <ore:gt:circuit2>, <Thaumcraft:ItemResource:8>], 
	[<ore:stickNetherQuartz>, <thaumicenergistics:material:1>, <ore:stickNetherQuartz>]]);
recipes.addShaped(<thaumicenergistics:wireless.essentia.terminal>, 
	[[<appliedenergistics2:item.ItemMultiMaterial:41>, <thaumicenergistics:part.base:4>, <appliedenergistics2:item.ItemMultiMaterial:41>], 
	[<ore:plateNetherQuartz>, <appliedenergistics2:item.ItemMultiMaterial:24>, <ore:plateNetherQuartz>], 
	[<ore:plateNetherQuartz>, <appliedenergistics2:tile.BlockDenseEnergyCell>, <ore:plateNetherQuartz>]]);
*/
// // Storage Component
// Research.addPrereq("thaumicenergistics.TESTORAGE", "AM_GEMVINTEUM", true);
Arcane.addShaped("thaumicenergistics.TESTORAGE",<thaumicenergistics:storage.component:0>, "ignis 3, ordo 1", 
	[[thauWire, <ore:itemCertusQuartz>, wisp], 
	[<ore:itemCertusQuartz>, <gregtech:gt.multiitem.technological:30311>, <ore:itemCertusQuartz>], 
 	[wisp, <ore:itemCertusQuartz>, thauWire]]);
Arcane.addShaped("thaumicenergistics.TESTORAGE",<thaumicenergistics:storage.component:1>, "ignis 3, ordo 2", 
	[[salis, calcProc, thauWire],
	[<thaumicenergistics:storage.component:0>, wardGlass, <thaumicenergistics:storage.component:0>],
	[thauWire, <thaumicenergistics:storage.component:0>, salis]]);
//	[[<ore:dustInfusedOrder>, <thaumicenergistics:storage.component:0>, <ore:dustInfusedOrder>], 
//	[<thaumicenergistics:storage.component:0>, <appliedenergistics2:item.ItemMultiMaterial:23>, <thaumicenergistics:storage.component:0>], 
//	[<ore:dustInfusedOrder>, <thaumicenergistics:storage.component:0>, <ore:dustInfusedOrder>]]);
Arcane.addShaped("thaumicenergistics.TESTORAGE",<thaumicenergistics:storage.component:2>, "ignis 3, ordo 4", 
	[[salis, calcProc, salis],
	[<thaumicenergistics:storage.component:1>, wisp, <thaumicenergistics:storage.component:1>],
	[salis, <thaumicenergistics:storage.component:1>, salis]]);
//	[[<Thaumcraft:ItemResource:14>, <thaumicenergistics:storage.component:1>, <Thaumcraft:ItemResource:14>], 
//	[<thaumicenergistics:storage.component:1>, <appliedenergistics2:item.ItemMultiMaterial:24>, <thaumicenergistics:storage.component:1>], 
//	[<Thaumcraft:ItemResource:14>, <thaumicenergistics:storage.component:1>, <Thaumcraft:ItemResource:14>]]);
Arcane.addShaped("thaumicenergistics.TESTORAGE",<thaumicenergistics:storage.component:3>, "ignis 3, ordo 8", 
	[[thauCirc, enggProc, wisp],
	[<thaumicenergistics:storage.component:2>, <ore:dustVinteumPurified>, <thaumicenergistics:storage.component:2>],
	[wisp, <thaumicenergistics:storage.component:2>, thauCirc]]);
//	[[<ore:dustVinteum>, <thaumicenergistics:storage.component:2>, <ore:dustVinteum>], 
//	[<thaumicenergistics:storage.component:2>, <appliedenergistics2:item.ItemMultiMaterial:24>, <thaumicenergistics:storage.component:2>], 
//	[<ore:dustVinteum>, <thaumicenergistics:storage.component:2>, <ore:dustVinteum>]]);

// Cell housing
recipes.addShaped(<thaumicenergistics:storage.casing>, 
	[[<ore:craftingToolScrewdriver>, <ore:plateGemCertusQuartz>, <ore:screwQuartzite>],
	[<ore:wireFineThaumium>, wardGlass, <ore:wireFineThaumium>],
	[<ore:screwQuartzite>, <ore:plateThaumium>, <ore:craftingToolHardHammer>]]);

// Essentia cell workbench
recipes.addShaped(<thaumicenergistics:thaumicenergistics.block.essentia.cell.workbench>, 
	[[<Thaumcraft:ItemResource:7>, <gregtech:gt.multiitem.technological:30012>, <Thaumcraft:ItemResource:7>], 
	[<ore:plateThaumium>, calcProc, <ore:plateThaumium>], 
	[<ore:plateThaumium>, <ore:plateThaumium>, <ore:plateThaumium>]]);

Research.clearPages("thaumicenergistics.TESTORAGE");
Research.addPage("thaumicenergistics.TESTORAGE", "thaumicenergistics.research_page.TESTORAGE.1");
Research.addPage("thaumicenergistics.TESTORAGE", "thaumicenergistics.research_page.TESTORAGE.2");
Research.addArcanePage("thaumicenergistics.TESTORAGE", <thaumicenergistics:storage.component:0>);
Research.addArcanePage("thaumicenergistics.TESTORAGE", <thaumicenergistics:storage.component:1>);
Research.addArcanePage("thaumicenergistics.TESTORAGE", <thaumicenergistics:storage.component:2>);
Research.addArcanePage("thaumicenergistics.TESTORAGE", <thaumicenergistics:storage.component:3>);
Research.addCraftingPage("thaumicenergistics.TESTORAGE", <thaumicenergistics:storage.casing>);
Research.addCraftingPage("thaumicenergistics.TESTORAGE", <thaumicenergistics:storage.essentia>);
Research.addCraftingPage("thaumicenergistics.TESTORAGE", <thaumicenergistics:thaumicenergistics.block.essentia.cell.workbench>);

// Gearbox
Research.clearPages("thaumicenergistics.TEIRONGEARBOX");
Research.addPage("thaumicenergistics.TEIRONGEARBOX", "thaumicenergistics.research_page.TEIRONGEARBOX.1");
Research.addPage("thaumicenergistics.TEIRONGEARBOX", "thaumicenergistics.research_page.TEIRONGEARBOX.2");
Research.addArcanePage("thaumicenergistics.TEIRONGEARBOX", <thaumicenergistics:thaumicenergistics.block.gear.box>);

print('GregEnergistics');

Research.refreshResearchRecipe("thaumicenergistics.TEGOLEMWIFIBACKPACK");
Research.refreshResearchRecipe("thaumicenergistics.TEARCANETERM");
Research.refreshResearchRecipe("thaumicenergistics.TEESSTERM");

/*
[00:26:44] [Client thread/INFO]: Could not register "Inscriber Name Press" for TC scanning.
[00:26:44] [Client thread/INFO]: Could not register "Basic Card" for TC scanning.
[00:26:44] [Client thread/INFO]: Could not register "Advanced Card" for TC scanning.
[00:26:44] [Client thread/INFO]: Could not register "Basic Card" for TC scanning.
[00:26:44] [Client thread/INFO]: Could not register "Advanced Card" for TC scanning.
[00:26:44] [Client thread/INFO]: Could not register "Certus Quartz Wrench" for TC scanning.
[00:26:44] [Client thread/INFO]: Could not register "Nether Quartz Wrench" for TC scanning.
[00:26:44] [Client thread/INFO]: Could not register "Network Tool" for TC scanning.
[00:26:44] [Client thread/INFO]: Could not register "Creative ME Storage Cell" for TC scanning.
[00:26:44] [Client thread/INFO]: Could not register "Matrix Frame" for TC scanning.
[00:26:44] [Client thread/INFO]: Could not register "Certus Quartz Wrench" for TC scanning.
[00:26:44] [Client thread/INFO]: Could not register "Creative Energy Cell" for TC scanning.
[00:26:44] [Client thread/INFO]: Could not register "tile.appliedenergistics2.BlockPaint.name" for TC scanning.
[00:26:44] [Client thread/INFO]: Could not register "ME Storage Bus" for TC scanning.
[00:26:44] [Client thread/INFO]: Could not register "ME Annihilation Plane" for TC scanning.
[00:26:44] [Client thread/INFO]: Could not register "ME Annihilation Plane" for TC scanning.
[00:26:44] [Client thread/INFO]: Could not register "ME Formation Plane" for TC scanning.
[00:26:44] [Client thread/INFO]: Could not register "P2P Tunnel - OpenComputers" for TC scanning.
[00:26:44] [Client thread/INFO]: Could not register "P2P Tunnel - Pressure" for TC scanning.
*/