#modloaded StevesCarts gregapi_post

// Edited by Canis Artorus
// for Gregorious hexii Artorus
// a Gregtech 6 pack

// --- Created by DarknessShadow ---
// --- InfiTech2 script for Steve's Carts 2 ---

# import mods.MTUtilsGT;
// import mods.ic2.Compressor;
// import mods.ic2.Macerator;
// import mods.gregtech.ArcFurnace;
// import mods.gregtech.BlastFurnace;
// import mods.gregtech.VacuumFreezer;
// import mods.gregtech.ChemicalReactor;
// import mods.gregtech.Assembler;
// import mods.gregtech.FormingPress;
// import mods.gregtech.Extruder;


# Aliases

//type: hull
var woodhull            = <StevesCarts:CartModule:37>;
var pighull             = <StevesCarts:CartModule:62>;
var standardhull        = <StevesCarts:CartModule:38>;
var reinforcedhull      = <StevesCarts:CartModule:39>;
var galgadorianhull     = <StevesCarts:CartModule:81>;
var minecart            = <minecraft:minecart>;

//type: Addon
var chunkloader         = <StevesCarts:CartModule:49>;
var divineShield		= <StevesCarts:CartModule:32>;

//type: Engine
var tinycoalengine      = <StevesCarts:CartModule:44>;
var coalengine          = <StevesCarts:CartModule>;
var thermalengine       = <StevesCarts:CartModule:69>;
var advthermalengine    = <StevesCarts:CartModule:70>;
var basicsolarengine    = <StevesCarts:CartModule:45>;
var solarengine         = <StevesCarts:CartModule:1>;
var compactsolarengine  = <StevesCarts:CartModule:56>;

//type: Tool
var basicfarmer         = <StevesCarts:CartModule:14>;
var galgadorianfarmer   = <StevesCarts:CartModule:84>;
var basiccutter         = <StevesCarts:CartModule:15>;
var hardenedcutter      = <StevesCarts:CartModule:79>;
var galgadoriancutter   = <StevesCarts:CartModule:80>;
var irondrill           = <StevesCarts:CartModule:42>;
var basicdrill          = <StevesCarts:CartModule:8>;
var reinforceddrill     = <StevesCarts:CartModule:43>;
var galgadoriandrill    = <StevesCarts:CartModule:9>;

//type: Storage
var advtank             = <StevesCarts:CartModule:66>;

//wheels
var wheelswood          = <StevesCarts:ModuleComponents>;
var wheelsiron          = <StevesCarts:ModuleComponents:1>;
var wheelsreinforced    = <StevesCarts:ModuleComponents:23>;
var wheelsgalgadorian   = <StevesCarts:ModuleComponents:82>;
var gtwheelsiron        = <gregtech:gt.meta.minecartWheels:260>;	// item.01:32100>;
var gtwheelssteel       = <gregtech:gt.meta.minecartWheels:8630>;	// item.01:32101>;

//tools
var Wrench              = <ore:craftingToolWrench>;
var HHammer             = <ore:craftingToolHardHammer>;
var SHammer             = <ore:craftingToolSoftHammer>;
var screwdriver         = <ore:craftingToolScrewdriver>;
var file                = <ore:craftingToolFile>;
var entityAnalyzer      = <StevesCarts:ModuleComponents:27>;
var Saw					= <ore:craftingToolSaw>;

//Blocks
var cartassembler       = <StevesCarts:BlockCartAssembler>;
var advdetectorrail     = <StevesCarts:BlockAdvDetector>;
// var junctionrail        = <StevesCarts:BlockJunction>;
var liquidmanager       = <StevesCarts:BlockLiquidManager>;
// var reinforcedmetalblock= <StevesCarts:BlockMetalStorage>;
var galgadorianblock1   = <StevesCarts:BlockMetalStorage:1>;
// var galgadorianblock2   = <StevesCarts:BlockMetalStorage:2>;

//Upgrade
var upgradesolarpanel   = <StevesCarts:upgrade:19>;
var upgradebattery      = <StevesCarts:upgrade>;
var upgradepowercrystal = <StevesCarts:upgrade:1>;
var upgradecreative     = <StevesCarts:upgrade:14>;
var upgradenewera       = <StevesCarts:upgrade:5>;

//gregtech + ic2
var gearWood            = <ore:gearGtWood>;
var plateIron           = <ore:plateAnyIron>;
var plateAluminium      = <ore:plateAluminium>;
var plateSteel          = <ore:plateSteel>;
var plateGold           = <ore:plateGold>;
// var plateNeodymium      = <ore:plateNeodymium>;
var rodSteel            = <ore:stickSteel>;
var platestainlesssteel = <ore:plateStainlessSteel>;
var sawStainlessSteel   = <gregtech:gt.meta.toolHeadChainsaw:8636>;	// item.02:7306>;
// var gearSteel           = <ore:gearGtSteel>;
var drillIron           = <ore:toolHeadDrillIron>;
// var basiccircuit        = <ore:gt:circuit1>;	// circuitBasic>;
var advcircuit          = <ore:gt:circuit3>;	// circuitAdvanced>;
// var energyflowcircuit   = <gregtech:gt.multiitem.technological:30402>;	// metaitem.01:32706>;	# control ruby
var robotarmlv          = <gregtech:gt.multiitem.technological:12081>;	// metaitem.01:32650>;
// var conveyorlv          = <gregtech:gt.multiitem.technological:12041>;	// metaitem.01:32630>;
var motorlv             = <gregtech:gt.multiitem.technological:12001>;	// metaitem.01:32600>;
var motormv             = <gregtech:gt.multiitem.technological:12002>;	// metaitem.01:32601>;
var pumplv              = <gregtech:gt.multiitem.technological:12021>;	// metaitem.01:32610>;
var pumpmv              = <gregtech:gt.multiitem.technological:12022>;	// metaitem.01:32611>;
// var pistonlv            = <gregtech:gt.multiitem.technological:12061>;	// metaitem.01:32640>;
var pistonmv            = <gregtech:gt.multiitem.technological:12062>;	// metaitem.01:32641>;
// var pistonhv            = <gregtech:gt.multiitem.technological:12063>;	// metaitem.01:32642>;
// var fieldgenMV          = <gregtech:gt.multiitem.technological:12102>;	// metaitem.01:32671>;
// var fieldgenEV          = <gregtech:gt.multiitem.technological:12104>;	// metaitem.01:32673>;
var pressurelavaboiler  = <gregtech:gt.multitileentity:9103>;	// invar liquid heat exchanger 18101>;	// <gregtech:gt.blockmachines:102>;	# super-boiler heat acceptor part
var NAND                = <ore:oc:circuit1>;	// <ore:circuitPrimitive>;
var refineditemcasing   = <gregtech:gt.meta.casingSmall:8630>;	// <IC2:itemCasing:5>;
var smallsteelpipe      = <ore:pipeSmallSteel>;
var smallstainlesspipe  = <ore:pipeSmallStainlessSteel>;
var ironfurnace         = <gregtech:gt.multitileentity:1100>;	// <ore:craftingIronFurnace>;	# burning box lead
var largebronzeboiler   = <gregtech:gt.multitileentity:1202>;	// blockmachines:1020>;	# common, not dense
var solarboiler         = <gregtech:gt.multitileentity:10050>;	// blockmachines:105>;	# solar panel = ULV
var solarpanelULV       = <NuclearCraft:solarPanel>;	// <GalacticraftCore:item.basicItem:0>;	// <gregtech:gt.metaitem.01:32750>;
// var battery             = <ore:gt:re-battery1>;	// batteryBasic>;	# LV
// var advbattery          = <ore:gt:re-battery2>;	// batteryAdvanced>;	# MV
// var ducttape            = <StorageDrawers:tape>;	// <ore:craftingDuctTape>;
var geothermal          = <ore:craftingGeothermalGenerator>;
geothermal.add(<ImmersiveEngineering:metalDevice:10>);	// Thermo-electric generator
geothermal.add(thermalengine);
geothermal.add(<gregtech:gt.multitileentity:9107>);	// Tungsten heat exchanger
// geothermal.add(<ReactorCraft:reactorcraft_item_placer:20>);	# fluid heat exchange machine
// var dusttungsten        = <ore:dustTungsten>;
var dustdiamond         = <ore:dustDiamond>;	// metaitem.01:2500>;
// var diasawblade         = <ore:craftingDiamondBlade>;
var stainlesssteeltip   = <ore:toolHeadDrillStainlessSteel>;
var tungstensteeltip    = <ore:toolHeadDrillTungstenSteel>;
// var oxygen              = <liquid:oxygen>;
var fieryBlood          = <liquid:fieryblood>;
// var liquidGlowstone     = <liquid:molten.glowstone>;	# n/a
var moltenBlueSteel     = <liquid:molten.bluesteel>;
var strongSwiftnessBrew = <liquid:potion.speed.strong>;
var foilPolycap         = <ore:foilWaxParaffin>;	// <ore:foilPolycaprolactam>;
var steelItemCasing     = <ore:casingSmallAnyIronSteel>;	// <IC2:itemCasing:5>;
var plateGlass			= <ore:plateGemGlass>;
var moltenSteel			= <liquid:molten.steel>;

//railcraft
var standardrail        = <Railcraft:part.rail>;
var stonetie            = <Railcraft:part.tie:1>;
var detectorlocomotive  = <Railcraft:detector:15>;
var worldanchor         = <Railcraft:machine.alpha:0>;

//steves cart crafting
var hardenedmesh        = <StevesCarts:ModuleComponents:20>;
var stabilizedmetal     = <StevesCarts:ModuleComponents:21>;
var reinforcedmetal     = <StevesCarts:ModuleComponents:22>;
var galgadorianmetal    = <StevesCarts:ModuleComponents:47>;
var galgadorianmetal2   = <StevesCarts:ModuleComponents:49>;
var simplepcb           = <StevesCarts:ModuleComponents:9>;
var advpcb              = <StevesCarts:ModuleComponents:16>;
var tankvalve           = <StevesCarts:ModuleComponents:60>;
var tankpane            = <StevesCarts:ModuleComponents:61>;
var largetankpane       = <StevesCarts:ModuleComponents:62>;
var hugetankpane        = <StevesCarts:ModuleComponents:63>;
var chestpane           = <StevesCarts:ModuleComponents:30>;
var largechestpane      = <StevesCarts:ModuleComponents:31>;
var hugechestpane       = <StevesCarts:ModuleComponents:32>;
var chestlock           = <StevesCarts:ModuleComponents:33>;
var ironpane            = <StevesCarts:ModuleComponents:34>;
var largeironpane       = <StevesCarts:ModuleComponents:35>;
var hugeironpane        = <StevesCarts:ModuleComponents:36>;
var dynamicpane         = <StevesCarts:ModuleComponents:37>;
var largedynamicpane    = <StevesCarts:ModuleComponents:38>;
var hugedynamicpane     = <StevesCarts:ModuleComponents:39>;
var rawhardener         = <StevesCarts:ModuleComponents:18>;
var refinedhardener     = <StevesCarts:ModuleComponents:19>;
var solarpanel          = <StevesCarts:ModuleComponents:44>;
var advsolarpanel       = <StevesCarts:ModuleComponents:58>;
var galgadoreye         = <StevesCarts:ModuleComponents:45>;
var sawblade            = <StevesCarts:ModuleComponents:15>;
var hardendsawblade     = <StevesCarts:ModuleComponents:80>;
var galgadoriansawblade = <StevesCarts:ModuleComponents:81>;
var woodcuttingcore     = <StevesCarts:ModuleComponents:17>;
var blankupgrade        = <StevesCarts:ModuleComponents:59>;
var dynamite            = <StevesCarts:ModuleComponents:6>;
var fuse                = <StevesCarts:ModuleComponents:43>;
var ironblade           = <StevesCarts:ModuleComponents:83>;

//
var stickWood           = <ore:stickWood>;
var pork                = <minecraft:porkchop>;
var plankWood           = <ore:plankWood>;
// var logWood             = <ore:logWood>;
var redstone            = <ore:dustRedstone>;
// var pcb                 = <ore:oc:materialCircuitBoardPrinted>;
// var barsIron            = <ore:barsIron>;
// var glass               = <ore:blockGlass>;
// var paneglass           = <ore:paneGlass>;
var pearlEnder          = <ore:pearlEnder>;
// var lavabucket          = <ore:bucketLava>;
var obsidian            = <minecraft:obsidian>;
var glowstonedust       = <ore:dustGlowstone>;
var dustElectrotine     = <ore:dustElectrotine>;	// <ProjRed|Core:projectred.core.part:56>;
var diamond             = <ore:gemDiamond>;
var diamondblock        = <ore:blockDiamond>;
var treesapling         = <ore:treeSapling>;
var ingotIron           = <ore:ingotAnyIron>;
var voidMetal			= <ore:ingotVoidMetal>;

// Non-oredict GT/Vanilla items
var dustRedstone		= <minecraft:redstone>;
var ghastTear           = <minecraft:ghast_tear>;
var eyeEnder            = <minecraft:ender_eye>;
//var xblPlanks           = <ExtrabiomesXL:planks:*>;
// var forPlanks           = <Forestry:planks:*>;
// var planks              = <minecraft:planks:*>;
// var plateIronNOD        = <gregtech:gt.meta.plate:260>;	// item.01:17032>;
var paneGlassNOD        = <minecraft:glass_pane>;
var ringSteel           = <gregtech:gt.meta.ring:8630>;	// item.01:28305>;
var HVassembler         = <gregtech:gt.multitileentity:20335>;	// blockmachines:213>;	# T5 Laser Welder
// var MVwiring            = ;	// metaitem.01:32716>;
// var pcbNOD              = <gregtech:gt.multiitem.technological:30004>;	// <PneumaticCraft:printedCircuitBoard>;	# blank gold
// var hotgalgadorianmetal = <InfinityCore:itemMaterial:12>;
var machinecasingLV     = <gregtech:gt.meta.machine:8651>;	// blockcasings:1>;	# Galvanized Steel
// var ingotSteel          = <gregtech:gt.meta.ingot:8630>;	// item.01:11305>;
var paper               = <minecraft:paper>;
var ingotShape          = <gregtech:gt.multiitem.technological:10006>;	// metaitem.01:32355>;
var NANDNOD             = <OpenComputers:item:24>;	// <gregtech:gt.metaitem.01:32700>;	# ocChip1
// var forFireproofPlanks  = <Forestry:planksFireproof:*>;
// var exuPlanks           = <ExtraUtilities:colorWoodPlanks:*>;
// var silverwoodPlank     = <Thaumcraft:blockWoodenDevice:7>;
// var greatwoodPlank      = <Thaumcraft:blockWoodenDevice:6>;
var dustdiamondNOD		= <gregtech:gt.meta.dustSmall:8300>;
var glowstonedustNOD	= <minecraft:glowstone_dust>;

var disText = format.red(format.bold("This item is DISABLED!"));

# Blocks/Items Removal

recipes.remove(upgradesolarpanel);
upgradesolarpanel.addTooltip(disText);

recipes.remove(upgradebattery);
upgradebattery.addTooltip(disText);

recipes.remove(upgradepowercrystal);
upgradepowercrystal.addTooltip(disText);

recipes.remove(wheelsiron);
wheelsiron.addTooltip(disText);

rawhardener.addTooltip(disText);

hardenedmesh.addTooltip(disText);

stabilizedmetal.addTooltip(disText);

refinedhardener.addTooltip(disText);

<StevesCarts:ModuleComponents:46>.addTooltip(disText);

<StevesCarts:ModuleComponents:48>.addTooltip(disText);

# Recipe Fix

recipes.removeShaped(minecart);
recipes.addShaped(minecart, [
    [null, Wrench, null],
    [plateIron, HHammer, plateIron],
    [gtwheelsiron, plateIron, gtwheelsiron]]);
recipes.addShaped(minecart, [
    [null, Wrench, null],
    [plateSteel, HHammer, plateSteel],
    [gtwheelssteel, plateSteel, gtwheelssteel]]);
    
# Recipe Tweaks

recipes.remove(entityAnalyzer);
recipes.addShaped(entityAnalyzer, [
    [steelItemCasing, redstone, steelItemCasing],
    [steelItemCasing, simplepcb, steelItemCasing],
    [steelItemCasing, steelItemCasing, steelItemCasing]]);

recipes.remove(wheelswood);
recipes.addShaped(wheelswood, [
    [null, HHammer, null],
    [gearWood, stickWood, gearWood],
    [null, Wrench, null]]);

recipes.remove(woodhull);
recipes.addShaped(woodhull, [
    [null, SHammer, null],
    [plankWood, Wrench, plankWood],
    [wheelswood, plankWood, wheelswood]]);

recipes.remove(pighull);
recipes.addShaped(pighull, [
    [null, SHammer, null],
    [pork, Wrench, pork],
    [gtwheelsiron, pork, gtwheelsiron]]);

recipes.remove(standardhull);
recipes.addShaped(standardhull, [
    [null, HHammer, null],
    [plateIron, Wrench, plateIron],
    [gtwheelsiron, plateIron, gtwheelsiron]]);

recipes.remove(reinforcedhull);
recipes.addShaped(reinforcedhull, [
    [null, HHammer, null],
    [reinforcedmetal, Wrench, reinforcedmetal],
    [wheelsreinforced, reinforcedmetal, wheelsreinforced]]);

recipes.remove(galgadorianhull);
recipes.addShaped(galgadorianhull, [
    [null, HHammer, null],
    [galgadorianmetal, Wrench, galgadorianmetal],
    [wheelsgalgadorian, galgadorianmetal, wheelsgalgadorian]]);

recipes.remove(wheelsreinforced);
recipes.addShaped(wheelsreinforced, [
    [null, HHammer, null],
    [reinforcedmetal, gtwheelssteel, reinforcedmetal],
    [null, screwdriver, null]]);

recipes.remove(wheelsgalgadorian);
recipes.addShaped(wheelsgalgadorian, [
    [null, HHammer, null],
    [galgadorianmetal, wheelsreinforced, galgadorianmetal],
    [null, screwdriver, null]]);

recipes.remove(chunkloader);
recipes.addShaped(chunkloader, [
    [null, pearlEnder, null],
    [simplepcb, worldanchor, simplepcb],
    [reinforcedmetal, advpcb, reinforcedmetal]]);
	
recipes.remove(divineShield);
recipes.addShaped(divineShield, [[obsidian, reinforcedmetal, obsidian], [voidMetal, diamond, voidMetal], [Wrench, obsidian, HHammer]]);

recipes.remove(simplepcb);
recipes.addShaped(simplepcb, [[redstone, NAND, redstone], [NAND, plateSteel, NAND], [redstone, NAND, redstone]]);
// Assembler.addRecipe(simplepcb, refineditemcasing, NANDNOD * 3, <liquid:molten.redstone> * 432, 32, 16);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.press", true, 16, 32, [10000], [refineditemcasing, NANDNOD *3, dustRedstone *3], simplepcb);

recipes.remove(advpcb);
recipes.addShapeless(advpcb, [advcircuit]);
// FormingPress.addRecipe(advpcb, pcbNOD, MVwiring * 4, 32, 16);
// mods.MTUtilsGT.addCustomRecipe("gt.recipe.press", true, 16, 32, [10000], [pcbNOD, MVwiring *4], advpcb);

// recipes.remove(tankvalve);
// Assembler.addRecipe(tankvalve, tankpane, ringSteel, null, 60, 8);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.press", true, 8, 60, [10000], [ringSteel, tankpane], tankvalve);

// recipes.remove(chestlock);
// Assembler.addRecipe(chestlock, ironpane, ringSteel, null, 60, 8);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.press", true, 8, 60, [10000], [ringSteel, ironpane], chestlock);

recipes.remove(tankpane);
recipes.addShaped(tankpane *20, [[plateGlass, null, plateGlass],[null, SHammer, null],[plateGlass, null, plateGlass]]);
// Assembler.addRecipe(tankpane, paneGlassNOD, <gregtech:gt.integrated_circuit:10> * 0, null, 60, 8);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.extruder", false, 8, 60, [10000], [paneGlassNOD *2, <gregtech:gt.multiitem.technological:10225> *0], tankpane *5);

recipes.remove(largetankpane);
// Assembler.addRecipe(largetankpane, tankpane * 4, <gregtech:gt.integrated_circuit:4> * 0, null, 60, 8);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.boxinator", true, 8, 60, [10000], [tankpane *4, <gregapi:gt.integrated_circuit:4> *0], largetankpane);

recipes.remove(hugetankpane);
// Assembler.addRecipe(hugetankpane, tankpane * 9, <gregtech:gt.integrated_circuit:9> * 0, null, 60, 8);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.boxinator", true, 8, 60, [10000], [tankpane *9, <gregapi:gt.integrated_circuit:9> *0], hugetankpane);

recipes.remove(chestpane);
// Assembler.addRecipe(chestpane, planks, <gregtech:gt.integrated_circuit:10> * 0, null, 60, 8);
// Assembler.addRecipe(chestpane, xblPlanks, <gregtech:gt.integrated_circuit:10> * 0, null, 60, 8);
// Assembler.addRecipe(chestpane, forPlanks, <gregtech:gt.integrated_circuit:10> * 0, null, 60, 8);
// Assembler.addRecipe(chestpane, forFireproofPlanks, <gregtech:gt.integrated_circuit:10> * 0, null, 60, 8);
// Assembler.addRecipe(chestpane, exuPlanks, <gregtech:gt.integrated_circuit:10> * 0, null, 60, 8);
// Assembler.addRecipe(chestpane, silverwoodPlank, <gregtech:gt.integrated_circuit:10> * 0, null, 60, 8);
// Assembler.addRecipe(chestpane, greatwoodPlank, <gregtech:gt.integrated_circuit:10> * 0, null, 60, 8);
recipes.addShaped(chestpane *10, [[plankWood, plankWood, SHammer],[plankWood, plankWood, Saw]]);

recipes.remove(largechestpane);
// Assembler.addRecipe(largechestpane, chestpane * 4, <gregtech:gt.integrated_circuit:4> * 0, null, 60, 8);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.boxinator", true, 8, 60, [10000], [chestpane *4, <gregapi:gt.integrated_circuit:4> *0], largechestpane);

recipes.remove(hugechestpane);
// Assembler.addRecipe(hugechestpane, chestpane * 9, <gregtech:gt.integrated_circuit:9> * 0, null, 60, 8);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.boxinator", true, 8, 60, [10000], [chestpane *9, <gregapi:gt.integrated_circuit:9> *0], hugechestpane);

recipes.remove(ironpane);
// Assembler.addRecipe(ironpane, plateIronNOD, <gregtech:gt.integrated_circuit:10> * 0, null, 60, 8);
recipes.addShaped(ironpane *20, [[plateIron, null, plateIron],[null, HHammer, null],[plateIron, null, plateIron]]);

recipes.remove(largeironpane);
// Assembler.addRecipe(largeironpane, ironpane * 4, <gregtech:gt.integrated_circuit:4> * 0, null, 60, 8);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.boxinator", true, 8, 60, [10000], [ironpane *4, <gregapi:gt.integrated_circuit:4> *0], largeironpane);

recipes.remove(hugeironpane);
// Assembler.addRecipe(hugeironpane, ironpane * 9, <gregtech:gt.integrated_circuit:9> * 0, null, 60, 8);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.boxinator", true, 8, 60, [10000], [ironpane *9, <gregapi:gt.integrated_circuit:9> *0], hugeironpane);

recipes.remove(dynamicpane);
// Assembler.addRecipe(dynamicpane, ironpane, <gregtech:gt.integrated_circuit:10> * 0, <liquid:molten.redstone> * 144, 60, 8);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 16, [10000], [ironpane], <liquid:molten.redstone> *144, null, dynamicpane);

recipes.remove(largedynamicpane);
// Assembler.addRecipe(largedynamicpane, dynamicpane * 4, <gregtech:gt.integrated_circuit:4> * 0, null, 60, 8);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.boxinator", true, 8, 60, [10000], [dynamicpane *4, <gregapi:gt.integrated_circuit:4> *0], largedynamicpane);

recipes.remove(hugedynamicpane);
// Assembler.addRecipe(hugedynamicpane, dynamicpane * 9, <gregtech:gt.integrated_circuit:9> * 0, null, 60, 8);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.boxinator", true, 8, 60, [10000], [dynamicpane *9, <gregapi:gt.integrated_circuit:9> *0], hugedynamicpane);

recipes.remove(dynamite);
// ChemicalReactor.addRecipe(dynamite, null, paper, fuse, <liquid:glyceryl> * 150, 20);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.mixer", false, 0, 20, [10000], [paper, fuse], <liquid:glyceryl> *150, null, [dynamite]);

recipes.remove(advdetectorrail);
recipes.addShaped(advdetectorrail * 4, [
    [standardrail, stonetie, standardrail],
    [standardrail, detectorlocomotive, standardrail],
    [standardrail, stonetie, standardrail]]);

recipes.remove(tinycoalengine);
recipes.addShaped(tinycoalengine, [
    [plateSteel, simplepcb, plateSteel],
    [plateSteel, motorlv, plateSteel],
    [plateSteel, ironfurnace, plateSteel]]);

recipes.remove(coalengine);
recipes.addShaped(coalengine, [
    [plateAluminium, advpcb, plateAluminium],
    [plateAluminium, motormv, plateAluminium],
    [plateAluminium, largebronzeboiler, plateAluminium]]);

recipes.remove(thermalengine);
recipes.addShaped(thermalengine, [
    [plateSteel, simplepcb, plateSteel],
    [pumplv, smallsteelpipe, pumplv],
    [plateSteel, pressurelavaboiler, plateSteel]]);

recipes.remove(advthermalengine);
recipes.addShaped(advthermalengine, [
    [plateAluminium, advpcb, plateAluminium],
    [pumpmv, smallstainlesspipe, pumpmv],
    [plateAluminium, geothermal, plateAluminium]]);

recipes.remove(solarpanel);
recipes.addShaped(solarpanel, [
    [glowstonedust, dustElectrotine, glowstonedust],
    [dustElectrotine, solarpanelULV, dustElectrotine],
    [glowstonedust, dustElectrotine, glowstonedust]]);

recipes.remove(advsolarpanel);
recipes.addShaped(advsolarpanel, [
    [solarpanel, rodSteel, solarpanel],
    [rodSteel, simplepcb, rodSteel],
    [solarpanel, rodSteel, solarpanel]]);

recipes.remove(basicsolarengine);
recipes.addShaped(basicsolarengine, [
    [plateSteel, simplepcb, plateSteel],
    [plateSteel, motorlv, plateSteel],
    [plateSteel, solarboiler, plateSteel]]);

recipes.remove(solarengine);
recipes.addShaped(solarengine, [
    [plateAluminium, advpcb, plateAluminium],
    [solarpanel, motormv, solarpanel],
    [plateAluminium, solarpanel, plateAluminium]]);

recipes.remove(compactsolarengine);
recipes.addShaped(compactsolarengine, [
    [advsolarpanel, platestainlesssteel, advsolarpanel],
    [advpcb, pistonmv, advpcb],
    [platestainlesssteel, motormv, platestainlesssteel]]);

recipes.remove(sawblade);
recipes.addShaped(sawblade, [
    [sawStainlessSteel, dustdiamond, null],
    [file, HHammer, null],
    [null, null, null]]);

recipes.remove(hardendsawblade);
recipes.addShaped(hardendsawblade, [
    [reinforcedmetal, sawblade, null],
    [file, HHammer, null],
    [null, null, null]]);

recipes.remove(galgadoriansawblade);
recipes.addShaped(galgadoriansawblade, [
    [galgadorianmetal, hardendsawblade, null],
    [file, HHammer, null],
    [null, null, null]]);

recipes.remove(basicfarmer);
recipes.addShaped(basicfarmer, [
    [diamond, diamond, diamond],
    [null, plateSteel, null],
    [simplepcb, plateGold, simplepcb]]);

recipes.remove(galgadorianfarmer);
recipes.addShaped(galgadorianfarmer, [
    [galgadorianmetal, galgadorianmetal, galgadorianmetal],
    [screwdriver, basicfarmer, HHammer],
    [null, advpcb, null]]);

recipes.remove(basiccutter);
recipes.addShaped(basiccutter, [
    // [sawblade, sawblade, sawblade],
    // [sawblade, diasawblade, sawblade],
	[sawStainlessSteel, sawStainlessSteel, sawStainlessSteel],
	[sawStainlessSteel, sawblade, sawStainlessSteel],
    [simplepcb, woodcuttingcore, simplepcb]]);

recipes.remove(hardenedcutter);
recipes.addShaped(hardenedcutter, [
    [reinforcedmetal, reinforcedmetal, reinforcedmetal],
    [reinforcedmetal, basiccutter, reinforcedmetal],
    [screwdriver, advpcb, HHammer]]);
recipes.addShaped(hardenedcutter, [
    // [hardendsawblade, hardendsawblade, hardendsawblade],
    // [hardendsawblade, diasawblade, hardendsawblade],
	[reinforcedmetal, reinforcedmetal, reinforcedmetal],
	[reinforcedmetal, hardendsawblade, reinforcedmetal],
    [advpcb, woodcuttingcore, advpcb]]);

recipes.remove(galgadoriancutter);
recipes.addShaped(galgadoriancutter, [
    // [galgadoriansawblade, galgadoriansawblade, galgadoriansawblade],
    // [galgadoriansawblade, diasawblade, galgadoriansawblade],
	[galgadorianmetal, galgadorianmetal, galgadorianmetal],
	[galgadorianmetal, galgadoriansawblade, galgadorianmetal],
    [advpcb, woodcuttingcore, advpcb]]);
recipes.addShaped(galgadoriancutter, [
    [galgadorianmetal, galgadorianmetal, galgadorianmetal],
    [galgadorianmetal, hardenedcutter, galgadorianmetal],
    [screwdriver, advpcb, HHammer]]);

recipes.remove(irondrill);
recipes.addShaped(irondrill, [
    [plateIron, plateIron, null],
    [null, plateIron, drillIron],
    [plateIron, plateIron, null]]);

recipes.remove(basicdrill);
recipes.addShaped(basicdrill, [
    [plateSteel, plateSteel, null],
    [null, <ore:blockSolidAnyIron>, <ore:toolHeadDrillDiamond>],
    [plateSteel, plateSteel, null]]);

recipes.remove(reinforceddrill);
recipes.addShaped(reinforceddrill, [
    [reinforcedmetal, reinforcedmetal, null],
    // [diamondblock, basicdrill, stainlesssteeltip],
	[diamond, basicdrill, stainlesssteeltip],
    [reinforcedmetal, reinforcedmetal, null]]);

recipes.remove(galgadoriandrill);
recipes.addShaped(galgadoriandrill, [
	[galgadorianmetal2, galgadorianmetal2, null],
    // [galgadorianmetal2, galgadorianblock2, null],
    [diamondblock, reinforceddrill, tungstensteeltip],
    // [galgadorianmetal2, galgadorianblock2, null]]);
	[galgadorianmetal2, galgadorianmetal2, null]]);

recipes.remove(woodcuttingcore);
recipes.addShaped(woodcuttingcore, [
    [treesapling, foilPolycap, treesapling],
    [foilPolycap, simplepcb, foilPolycap],
    [treesapling, foilPolycap, treesapling]]);

recipes.remove(blankupgrade);
recipes.addShaped(blankupgrade, [
    [plateSteel, plateSteel, plateSteel],
    [plateSteel, reinforcedmetal, plateSteel],
    [plateSteel, advpcb, plateSteel]]);

recipes.remove(liquidmanager);
recipes.addShaped(liquidmanager, [
    [advtank, plateSteel, advtank],
    [plateSteel, simplepcb, plateSteel],
    [advtank, plateSteel, advtank]]);

recipes.remove(cartassembler);
recipes.addShaped(cartassembler, [
    [plateSteel, plateSteel, plateSteel],
    [plateSteel, machinecasingLV, plateSteel],
    [simplepcb, robotarmlv, simplepcb]]);
    
recipes.remove(ironblade);
recipes.addShaped(ironblade * 4, [
    [null, file, null],
    [ingotIron, ingotIron, ingotIron],
    [null, ingotIron, null]]);

// Assembler.addRecipe(upgradecreative, upgradenewera * 4, HVassembler, strongSwiftnessBrew * 10000, 6000, 500);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.burnmixer", true, 256, 600, [10000], [upgradenewera *4, HVassembler], strongSwiftnessBrew * 2500, null, [upgradecreative]);

recipes.remove(galgadoreye);
// ChemicalReactor.addRecipe(galgadoreye, null, eyeEnder, ghastTear * 2, fieryBlood * 200, 200);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.mixer", true, 8, 64, [10000], [eyeEnder, ghastTear *2], fieryBlood *144, null, [galgadoreye]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.mixer", true, 8, 64, [10000], [eyeEnder, ghastTear], <liquid:fierytears> *288, null, [galgadoreye]);

furnace.remove(galgadorianmetal);
recipes.remove(<StevesCarts:ModuleComponents:46>);
// BlastFurnace.addRecipe([hotgalgadorianmetal], liquidGlowstone * 144, [reinforcedmetal, galgadoreye], 3600, 120, 1920);
// VacuumFreezer.addRecipe(galgadorianmetal, hotgalgadorianmetal, 300);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.burnmixer", true, 128, 256, [10000], [reinforcedmetal, galgadoreye, glowstonedustNOD], [galgadorianmetal]);

furnace.remove(galgadorianmetal2);
recipes.remove(<StevesCarts:ModuleComponents:48>);
// Extruder.addRecipe(galgadorianmetal2, galgadorianblock1, ingotShape * 0, 200, 256);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.extruder", false, 512, 128, [10000], [galgadorianblock1, ingotShape *0], galgadorianmetal2);

recipes.remove(rawhardener);
furnace.remove(refinedhardener);
furnace.remove(reinforcedmetal);
recipes.remove(stabilizedmetal);
recipes.remove(hardenedmesh);
// ChemicalReactor.addRecipe(refinedhardener * 2, null, dustdiamond, obsidian * 4, moltenBlueSteel * 72, 200);
// BlastFurnace.addRecipe([reinforcedmetal], null, [ingotSteel, refinedhardener], 827, 120, 400);
// mods.MTUtilsGT.addCustomRecipe("gt.recipe.burnmixer", true, 128, 512, [10000], [dustdiamondNOD *2, obsidian *2], [moltenBlueSteel *36, moltenSteel *144], null, [reinforcedmetal]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.burnmixer", true, 128, 512, [10000], [dustdiamondNOD *2, obsidian *2, <gregtech:gt.meta.dustSmall:8633>], moltenSteel *144, null, [reinforcedmetal]);
