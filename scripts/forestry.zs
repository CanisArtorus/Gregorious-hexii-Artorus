#modloaded Forestry gregapi_post harvestcraft

// --- Created by Jason McRay ---
// --- Few scripts created by DreamMasterXXL ---
// --- InfiTech2 script for Forestry ---
// Edited for Gregorious hexii Artorus; a pack in GT6
//	by Canis Artorus

//import mods.gregtech.Assembler;
//import mods.gregtech.Mixer;
# requires MTUTilsGT
import mods.forestry.Carpenter;
import mods.forestry.ThermionicFabricator;
import mods.nei.NEI;

# Aliases
var HHammer = <ore:craftingToolHardHammer>;
// var analyzer = <Forestry:core>;
var axis = <gregtech:gt.meta.bolt:8630>;	//no motors in other ffarm blocks	#steel bolt
var basicChip = <gregtech:gt.multiitem.technological:30301>;	//<IC2:itemPartCircuit>
var bcTank = <BuildCraft|Factory:tankBlock>;
var beealyzer = <Forestry:beealyzer>;
var bioGenerator = <Forestry:engine:3>;
var blockGlass = <ore:blockGlass>;
var bogEarth = <Forestry:soil:1>;
var book = <minecraft:book>;
var bottler = <Forestry:factory>;
var bronzeItemCasing = <gregtech:gt.meta.casingSmall:8610>;	//<IC2:itemCasing:2>;
var bronzePlate	= <gregtech:gt.meta.plate:8610>;
var carpenter = <Forestry:factory:1>;
var cauldron = <minecraft:cauldron>;
var centrifuge = <Forestry:factory:2>;
var chestWood = <minecraft:chest>;
var circBoardCu = <gregtech:gt.multiitem.technological:30002>;	//metaitem.01:32710 ???
var circBoardAu	= <gregtech:gt.multiitem.technological:30004>;	//metaitem.01:32711 ???
var circPart1 = <gregtech:gt.multiitem.technological:30101>;	//metaitem.01:32700 ???
var circPart3 = <gregtech:gt.multiitem.technological:30103>;	//metaitem.01:32715 ???
var clasp = <gregtech:gt.meta.ring:8610>;
var compost = <Forestry:fertilizerBio>;
var conveyorLV = <gregtech:gt.multiitem.technological:12040>;	//metaitem.01:32630>	#ULV
var copperItemCasing = <gregtech:gt.meta.casingSmall:290>;	//<IC2:itemCasing>;
var cottonWeave = <harvestcraft:wovencottonItem>;
var craftingTable = <minecraft:crafting_table>;
var craftingToolSaw = <ore:craftingToolSaw>;
var craftingToolScrewdriver = <ore:craftingToolScrewdriver>;
// var crateBogEarth = <Forestry:cratedBogearth>;
// var crateHumus = <Forestry:cratedHumus>;
var cuirboulli = <harvestcraft:hardenedleatherItem>;
// var darkIronBars = <EnderIO:blockDarkIronBars>;
var diamond = <ore:gemDiamond>;
var dirtAny = <minecraft:dirt:*>;
var dustRedstone = <minecraft:redstone>;
// var electricMotorEV = <gregtech:gt.multiitem.technological:12004>;	//metaitem.01:32603>;
var electricMotorLV = <gregtech:gt.multiitem.technological:12001>;	//metaitem.01:32600>;
var electricPistonMV = <gregtech:gt.multiitem.technological:12062>;	//metaitem.01:32641>;
var emitterMV = <gregtech:gt.multiitem.technological:12122>;	//metaitem.01:32681>;
// var endStone = <minecraft:end_stone>;
// var enderEye = <minecraft:ender_eye>;
var engineBiogas = <Forestry:engine:2>;
var engineClock = <Forestry:engine:4>;
var engineElectrical = <Forestry:engine>;
var enginePeat = <Forestry:engine:1>;
var filter = <gregtech:gt.multitileentity:30256>;	//blockmachines:1246>??? #filter(items)extender
var fAsh = <Forestry:ash>;
var fGearBronze = <Forestry:gearBronze>;
var fGearCopper = <Forestry:gearCopper>;
var fGearTin = <Forestry:gearTin>;
var fermenter = <Forestry:factory:3>;
// var flutterlyzer = <Forestry:flutterlyzer>;	# disabled
var foilIron  = <gregtech:gt.meta.foil:260>;	//metaitem.01:29032>
var foilBronze= <gregtech:gt.meta.foil:8610>;
var foilGold	= <gregtech:gt.meta.foil:790>;
var foilInvar = <gregtech:gt.meta.foil:8661>;
var foilSteel = <gregtech:gt.meta.foil:8630>;
var foilTin		= <gregtech:gt.meta.foil:500>;
var gasket = <gregtech:gt.meta.ring:8217>;	//metaitem.01:28880> #??? rubber
var gearBronze = <ore:gearBronze>;
var gearCopper = <ore:gearCopper>;
var gearGtSmallAluminium = <ore:gearGtSmallAluminium>;
// var gearGtSmallFierySteel = <ore:gearGtSmallFierySteel>;	//<gregtech:gt.metaitem.02:20346>;
var gearGtSmallSteel = <ore:gearGtSmallSteel>;
var gearTin = <ore:gearTin>;
var generatorBio = <Forestry:engine:3>;
var gtAsh = <gregtech:gt.meta.dust:8200>;	//metaitem.01:2815>;
var hardenedCasing = <Forestry:hardenedMachine>;
var humus = <Forestry:soil>;
// var icAsh = <IC2:itemDust2:3>;
var icCoil = <ImmersiveEngineering:coil:0>;	//<IC2:itemRecipePart>;
var impregnatedCasing = <Forestry:impregnatedCasing>;
var impregnatedStick = <Forestry:oakStick>;
// var ironBars = <minecraft:iron_bars>;
var ironItemCasing = <gregtech:gt.meta.casingSmall:260>;
var letter = <Forestry:letters>;
// var liquidSeedOil = <liquid:seedoil>;
var liquidWater = <liquid:water>;
// var mcString = <minecraft:string>;
var moistener = <Forestry:factory:4>;
// var moltenGlass = <liquid:molten.glass>;
var paneGlass = <ore:paneGlass>;
var pipeStainlessTiny = <gregtech:gt.multitileentity:26160>;
var piston = <minecraft:piston>;
var plank = <ore:plankWood>;
var plateBronze = <ore:plateBronze>;
var plateCopper = <ore:plateCopper>;
var plateCupronickel = <ore:plateCupronickel>;
var plateIron = <ore:plateAnyIron>;
// var plateNaquadah = <ore:plateNaquadah>;
var pulpWood = <Forestry:woodPulp>;
var pulsatingMesh = <Forestry:craftingMaterial:1>;
var pumpULV = <gregtech:gt.multiitem.technological:12020>;	//metaitem.01.32610
var rainMaker = <Forestry:factory:7>;
var rainTank = <Forestry:factory2:1>;
var ringIron = <ore:ringAnyIron>;
var robotArmLV = <gregtech:gt.multiitem.technological:12081>;	//metaitem.01:32650>;
var rs = <minecraft:redstone>;
var rsLiq = <liquid:molten.redstone>;
var scoopFT = <Forestry:scoop>;
var screwIron = <ore:screwAnyIron>;
var screwFe	= <gregtech:gt.meta.screw:260>;	//metaitem.01:27032>
var screwBronze	= <gregtech:gt.meta.screw:8610>;
var screwGold	= <gregtech:gt.meta.screw:790>;
var screwInvar	= <gregtech:gt.meta.screw:8661>;
var screwTin	= <gregtech:gt.meta.screw:500>;
var sensorMV = <gregtech:gt.multiitem.technological:12142>;	//metaitem.01:32691>;
var silkWisp = <Forestry:craftingMaterial:2>;
var silkWoven = <Forestry:craftingMaterial:3>;
var squeezer = <Forestry:factory:5>;
var steelGearS = <gregtech:gt.meta.gearGtSmall:8630>;	//item.02:20305>
var steelScrew = <gregtech:gt.meta.screw:8630>;	//metaitem.01:27305>;
var still = <Forestry:factory:6>;
var sturdyCasing = <Forestry:sturdyMachine>;
var thermionicFabricator = <Forestry:factory2>;
var tinItemCasing = <gregtech:gt.meta.casingSmall:500>;	//<IC2:itemCasing:1>;
var tinRotor = <gregtech:gt.meta.rotor:500>;	//metaitem.02:21057>;
var treealyzer = <Forestry:treealyzer>;
var tripleTinAlloy = <gregtech:gt.meta.plateTriple:8667>;
var tubeApatine = <Forestry:thermionicTubes:10>;
var tubeBlaze = <Forestry:thermionicTubes:7>;
var tubeBronze = <Forestry:thermionicTubes:2>;
var tubeCopper = <Forestry:thermionicTubes>;
var tubeDiamond = <Forestry:thermionicTubes:5>;
var tubeEmerald = <Forestry:thermionicTubes:9>;
var tubeEnder = <Forestry:thermionicTubes:12>;
var tubeGold = <Forestry:thermionicTubes:4>;
var tubeIron = <Forestry:thermionicTubes:3>;
var tubeLapis = <Forestry:thermionicTubes:11>;
var tubeObsidian = <Forestry:thermionicTubes:6>;
var tubeRubber = <Forestry:thermionicTubes:8>;
var tubeTin = <Forestry:thermionicTubes:1>;
// var unlitCandle = <Forestry:candle>;
var waxMagic = <MagicBees:wax>;
var wheat = <minecraft:wheat>;
var woodDust = <ore:dustWood>;
var woodpulp = <ore:pulpWood>;
var worktable = <Forestry:factory2:2>;
var wrench = <ore:craftingToolWrench>;

# Item removal
var disText = format.red(format.bold("This item is DISABLED!"));

recipes.remove(engineClock);
// engineClock.addTooltip(disText);
recipes.addShaped(engineClock, [
	[plank, plank, plank],
	[HHammer, blockGlass, wrench],
	[gearCopper, piston, <gregtech:gt.meta.spring:290>]]);

// recipes.remove(analyzer);
// analyzer.addTooltip(disText);

recipes.remove(engineElectrical);
engineElectrical.addTooltip(disText);

recipes.remove(bottler);
bottler.addTooltip(disText);

recipes.remove(squeezer);
// squeezer.addTooltip(disText);
recipes.addShaped(squeezer, [
	[plateCopper, <gregtech:gt.meta.spring:8610>, plateCopper],
	[tripleTinAlloy, sturdyCasing, tripleTinAlloy],
	[gearGtSmallSteel, electricMotorLV, gearGtSmallSteel]]);

recipes.remove(still);
// still.addTooltip(disText);
recipes.addShaped(still, [
	[plateCopper, pipeStainlessTiny, plateCopper],
	[bcTank, sturdyCasing, bcTank],
	[gearGtSmallSteel, electricMotorLV, gearGtSmallSteel]]);

recipes.remove(fGearBronze);
gearBronze.remove(fGearBronze);
fGearBronze.addTooltip(disText);

recipes.remove(fGearCopper);
gearCopper.remove(fGearCopper);
fGearCopper.addTooltip(disText);

recipes.remove(fGearTin);
gearTin.remove(fGearTin);
fGearTin.addTooltip(disText);

recipes.remove(generatorBio);
generatorBio.addTooltip(disText);

recipes.remove(scoopFT);
scoopFT.addTooltip(disText);

# Recipe Tweaks

recipes.remove(centrifuge);
// centrifuge.addTooltip(disText);
recipes.addShaped(centrifuge, [
	[plateCopper, electricMotorLV, plateCopper],
	[chestWood, sturdyCasing, bcTank],
	[gearGtSmallSteel, electricMotorLV, gearGtSmallSteel]]);
// recipes.addShaped(centrifuge, [
    // [plateNaquadah, electricMotorEV, plateNaquadah],
    // [darkIronBars, sturdyCasing, darkIronBars],
    // [gearGtSmallFierySteel, electricMotorEV, gearGtSmallFierySteel]]);
recipes.remove(enginePeat);
recipes.addShaped(enginePeat, [
	[plateCopper, plateCopper, plateCopper],
	[HHammer, blockGlass, wrench],
	[gearCopper, piston, gearCopper]]);
recipes.remove(engineBiogas);
recipes.addShaped(engineBiogas, [
	[plateBronze, plateBronze, plateBronze],
	[HHammer, blockGlass, wrench],
	[gearBronze, piston, gearBronze]]);
recipes.remove(carpenter);
recipes.addShaped(carpenter, [
	[plateCopper, bcTank, plateCopper],
	[robotArmLV, sturdyCasing, robotArmLV],
	[gearGtSmallSteel, electricMotorLV, gearGtSmallSteel]]);
recipes.remove(fermenter);
recipes.addShaped(fermenter, [
	[plateCopper, tinRotor, plateCopper],
	[bcTank, sturdyCasing, bcTank],
	[gearGtSmallSteel, electricMotorLV, gearGtSmallSteel]]);
recipes.remove(moistener);
recipes.addShaped(moistener, [
	[plateCopper, bcTank, plateCopper],
	[tinRotor, sturdyCasing, tinRotor],
	[gearGtSmallSteel, electricMotorLV, gearGtSmallSteel]]);
recipes.remove(rainMaker);
recipes.addShaped(rainMaker, [
	[plateCupronickel, sensorMV, plateCupronickel],
	[electricPistonMV, hardenedCasing, electricPistonMV],
	[gearGtSmallAluminium, emitterMV, gearGtSmallAluminium]]);
recipes.remove(thermionicFabricator);
Carpenter.addRecipe(thermionicFabricator, [[steelScrew, bcTank, steelScrew],
                                           [icCoil, sturdyCasing, icCoil],
                                           [steelScrew, electricMotorLV, steelScrew]], rsLiq * 1008, 300, worktable);
recipes.remove(rainTank);
recipes.addShaped(rainTank, [
	[plateIron, ringIron, plateIron],
	[plateIron, HHammer, plateIron],
	[plateIron, cauldron, plateIron]]);
recipes.remove(worktable);
recipes.addShaped(worktable, [
	[screwIron, book, screwIron],
	[craftingToolSaw, craftingTable, craftingToolScrewdriver],
	[screwIron, chestWood, screwIron]]);
	
# GT Integration
//Carpenter.addRecipe(output, [recipe], fluidInput, time, box); new
//Assembler.addRecipe(output, input1, input2, liquid, durationTicks, euPerTick);
Carpenter.removeRecipe(beealyzer);
Carpenter.addRecipe(beealyzer, [[tinItemCasing, paneGlass, tinItemCasing],
                                [tinItemCasing, paneGlass, tinItemCasing],
                                [dustRedstone, diamond, dustRedstone]], liquidWater * 2000, 500);
Carpenter.removeRecipe(treealyzer);
Carpenter.addRecipe(treealyzer, [[copperItemCasing, paneGlass, copperItemCasing],
                                [copperItemCasing, paneGlass, copperItemCasing],
                                [dustRedstone, diamond, dustRedstone]], liquidWater * 2000, 500);
// Carpenter.removeRecipe(flutterlyzer);	# is disabled
// Carpenter.addRecipe(flutterlyzer, [[bronzeItemCasing, paneGlass, bronzeItemCasing],
                                // [bronzeItemCasing, paneGlass, bronzeItemCasing],
                                // [dustRedstone, diamond, dustRedstone]], liquidWater * 2000, 500);
// recipes.remove(humus);	# n/a	mixer
// Carpenter.removeRecipe(humus);
// Carpenter.addRecipe(humus * 9, [[crateHumus, null, null],
//                                [null, null, null], 
//                                [null, null, null]], 5);
// recipes.remove(bogEarth);	# n/a	mixer
// Carpenter.removeRecipe(bogEarth);
// Carpenter.addRecipe(bogEarth * 9, [[crateBogEarth, null, null],
//                                   [null, null, null],
//                                   [null, null, null]], 5);
Carpenter.removeRecipe(letter);
Carpenter.addRecipe(letter,[[woodpulp, woodpulp, woodpulp],
                            [woodpulp, woodpulp, woodpulp],
                            [null, null, null]], liquidWater * 250, 5);
Carpenter.addRecipe(letter,[[woodDust, woodDust, woodDust],
                            [woodDust, woodDust, woodDust],
                            [null, null, null]], liquidWater * 250, 5);
// recipes.remove(unlitCandle);
// Carpenter.removeRecipe(unlitCandle);
// Assembler.addRecipe(unlitCandle * 8, waxMagic * 2, silkWisp, liquidWater * 200, 16, 8);
// Assembler.addRecipe(unlitCandle * 24, waxMagic * 6, mcString, liquidWater * 600, 64, 8);

recipes.remove(<Forestry:ffarm:*>);
// --- Farm Block
Carpenter.addRecipe(<Forestry:ffarm>.withTag({FarmBlock:0}), 
	[[steelScrew, copperItemCasing, steelScrew],[copperItemCasing, tubeTin, copperItemCasing],
	[steelScrew, copperItemCasing, steelScrew]], rsLiq * 144, 150, <minecraft:stonebrick>);
Carpenter.addRecipe(<Forestry:ffarm>.withTag({FarmBlock:1}), 
	[[steelScrew, copperItemCasing, steelScrew],[copperItemCasing, tubeTin, copperItemCasing],
	[steelScrew, copperItemCasing, steelScrew]], rsLiq * 144, 150, <minecraft:stonebrick:1>);
Carpenter.addRecipe(<Forestry:ffarm>.withTag({FarmBlock:2}), 
	[[steelScrew, copperItemCasing, steelScrew], [copperItemCasing, tubeTin, copperItemCasing],
	[steelScrew, copperItemCasing, steelScrew]], rsLiq * 144, 150, <minecraft:stonebrick:2>);
Carpenter.addRecipe(<Forestry:ffarm>.withTag({FarmBlock:3}), 
	[[steelScrew, copperItemCasing, steelScrew], [copperItemCasing, tubeTin, copperItemCasing],
	[steelScrew, copperItemCasing, steelScrew]], rsLiq * 144, 150, <minecraft:brick_block>);
Carpenter.addRecipe(<Forestry:ffarm>.withTag({FarmBlock:4}), 
	[[steelScrew, copperItemCasing, steelScrew], [copperItemCasing, tubeTin, copperItemCasing],
	[steelScrew, copperItemCasing, steelScrew]], rsLiq * 144, 150, <minecraft:sandstone:2>);
Carpenter.addRecipe(<Forestry:ffarm>.withTag({FarmBlock:5}), 
	[[steelScrew, copperItemCasing, steelScrew], [copperItemCasing, tubeTin, copperItemCasing],
	[steelScrew, copperItemCasing, steelScrew]], rsLiq * 144, 150, <minecraft:sandstone:1>);
Carpenter.addRecipe(<Forestry:ffarm>.withTag({FarmBlock:6}), 
	[[steelScrew, copperItemCasing, steelScrew], [copperItemCasing, tubeTin, copperItemCasing],
	[steelScrew, copperItemCasing, steelScrew]], rsLiq * 144, 150, <minecraft:nether_brick>);
Carpenter.addRecipe(<Forestry:ffarm>.withTag({FarmBlock:7}), 
	[[steelScrew, copperItemCasing, steelScrew], [copperItemCasing, tubeTin, copperItemCasing],
	[steelScrew, copperItemCasing, steelScrew]], rsLiq * 144, 150, <minecraft:stonebrick:3>);
Carpenter.addRecipe(<Forestry:ffarm>.withTag({FarmBlock:8}), 
	[[steelScrew, copperItemCasing, steelScrew], [copperItemCasing, tubeTin, copperItemCasing],
	[steelScrew, copperItemCasing, steelScrew]], rsLiq * 144, 150, <minecraft:quartz_block>);
Carpenter.addRecipe(<Forestry:ffarm>.withTag({FarmBlock:9}), 
	[[steelScrew, copperItemCasing, steelScrew], [copperItemCasing, tubeTin, copperItemCasing],
	[steelScrew, copperItemCasing, steelScrew]], rsLiq * 144, 150, <minecraft:quartz_block:1>);
Carpenter.addRecipe(<Forestry:ffarm>.withTag({FarmBlock:10}), 
	[[steelScrew, copperItemCasing, steelScrew], [copperItemCasing, tubeTin, copperItemCasing],
	[steelScrew, copperItemCasing, steelScrew]], rsLiq * 144, 150, <minecraft:quartz_block:2>);
// --- Farm Gearbox
Carpenter.addRecipe(<Forestry:ffarm:2>.withTag({FarmBlock:0}), [[null, steelGearS, null],
	[steelGearS, electricMotorLV, steelGearS],
	[null, steelGearS, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:0}));
Carpenter.addRecipe(<Forestry:ffarm:2>.withTag({FarmBlock:1}), [[null, steelGearS, null],
	[steelGearS, electricMotorLV, steelGearS],
	[null, steelGearS, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:1}));
Carpenter.addRecipe(<Forestry:ffarm:2>.withTag({FarmBlock:2}), [[null, steelGearS, null],
	[steelGearS, electricMotorLV, steelGearS],
	[null, steelGearS, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:2}));
Carpenter.addRecipe(<Forestry:ffarm:2>.withTag({FarmBlock:3}), [[null, steelGearS, null],
	[steelGearS, electricMotorLV, steelGearS],
	[null, steelGearS, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:3}));
Carpenter.addRecipe(<Forestry:ffarm:2>.withTag({FarmBlock:4}), [[null, steelGearS, null],
	[steelGearS, electricMotorLV, steelGearS],
	[null, steelGearS, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:4}));
Carpenter.addRecipe(<Forestry:ffarm:2>.withTag({FarmBlock:5}), [[null, steelGearS, null],
	[steelGearS, electricMotorLV, steelGearS],
	[null, steelGearS, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:5}));
Carpenter.addRecipe(<Forestry:ffarm:2>.withTag({FarmBlock:6}), [[null, steelGearS, null],
	[steelGearS, electricMotorLV, steelGearS],
	[null, steelGearS, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:6}));
Carpenter.addRecipe(<Forestry:ffarm:2>.withTag({FarmBlock:7}), [[null, steelGearS, null],
	[steelGearS, electricMotorLV, steelGearS],
	[null, steelGearS, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:7}));
Carpenter.addRecipe(<Forestry:ffarm:2>.withTag({FarmBlock:8}), [[null, steelGearS, null],
	[steelGearS, electricMotorLV, steelGearS],
	[null, steelGearS, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:8}));
Carpenter.addRecipe(<Forestry:ffarm:2>.withTag({FarmBlock:9}), [[null, steelGearS, null],
	[steelGearS, electricMotorLV, steelGearS],
	[null, steelGearS, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:9}));
Carpenter.addRecipe(<Forestry:ffarm:2>.withTag({FarmBlock:10}), [[null, steelGearS, null],
	[steelGearS, electricMotorLV, steelGearS],
	[null, steelGearS, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:10}));
// --- Farm Hatch
Carpenter.addRecipe(<Forestry:ffarm:3>.withTag({FarmBlock:0}), 
	[[null, steelGearS, null], [conveyorLV, axis, conveyorLV],
	[null, <ore:caHopper>, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:0}));
Carpenter.addRecipe(<Forestry:ffarm:3>.withTag({FarmBlock:1}), 
	[[null, steelGearS, null], [conveyorLV, axis, conveyorLV],
	[null, <ore:caHopper>, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:1}));
Carpenter.addRecipe(<Forestry:ffarm:3>.withTag({FarmBlock:2}), 
	[[null, steelGearS, null], [conveyorLV, axis, conveyorLV],
	[null, <ore:caHopper>, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:2}));
Carpenter.addRecipe(<Forestry:ffarm:3>.withTag({FarmBlock:3}), 
	[[null, steelGearS, null], [conveyorLV, axis, conveyorLV],
	[null, <ore:caHopper>, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:3}));
Carpenter.addRecipe(<Forestry:ffarm:3>.withTag({FarmBlock:4}), 
	[[null, steelGearS, null], [conveyorLV, axis, conveyorLV],
	[null, <ore:caHopper>, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:4}));
Carpenter.addRecipe(<Forestry:ffarm:3>.withTag({FarmBlock:5}), 
	[[null, steelGearS, null], [conveyorLV, axis, conveyorLV],
	[null, <ore:caHopper>, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:5}));
Carpenter.addRecipe(<Forestry:ffarm:3>.withTag({FarmBlock:6}), 
	[[null, steelGearS, null], [conveyorLV, axis, conveyorLV],
	[null, <ore:caHopper>, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:6}));
Carpenter.addRecipe(<Forestry:ffarm:3>.withTag({FarmBlock:7}),
	[[null, steelGearS, null], [conveyorLV, axis, conveyorLV],
	[null, <ore:caHopper>, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:7}));
Carpenter.addRecipe(<Forestry:ffarm:3>.withTag({FarmBlock:8}),
	[[null, steelGearS, null], [conveyorLV, axis, conveyorLV],
	[null, <ore:caHopper>, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:8}));
Carpenter.addRecipe(<Forestry:ffarm:3>.withTag({FarmBlock:9}),
	[[null, steelGearS, null], [conveyorLV, axis, conveyorLV],
	[null, <ore:caHopper>, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:9}));
Carpenter.addRecipe(<Forestry:ffarm:3>.withTag({FarmBlock:10}),
	[[null, steelGearS, null], [conveyorLV, axis, conveyorLV],
	[null, <ore:caHopper>, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:10}));
// --- Farm Valve
Carpenter.addRecipe(<Forestry:ffarm:4>.withTag({FarmBlock:0}), [[null, steelGearS, null],
	[pumpULV, axis, pumpULV], [null, gasket, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:0}));
Carpenter.addRecipe(<Forestry:ffarm:4>.withTag({FarmBlock:1}), [[null, steelGearS, null],
	[pumpULV, axis, pumpULV], [null, gasket, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:1}));
Carpenter.addRecipe(<Forestry:ffarm:4>.withTag({FarmBlock:2}), [[null, steelGearS, null],
	[pumpULV, axis, pumpULV], [null, gasket, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:2}));
Carpenter.addRecipe(<Forestry:ffarm:4>.withTag({FarmBlock:3}), [[null, steelGearS, null],
	[pumpULV, axis, pumpULV], [null, gasket, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:3}));
Carpenter.addRecipe(<Forestry:ffarm:4>.withTag({FarmBlock:4}), [[null, steelGearS, null],
	[pumpULV, axis, pumpULV], [null, gasket, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:4}));
Carpenter.addRecipe(<Forestry:ffarm:4>.withTag({FarmBlock:5}), [[null, steelGearS, null],
	[pumpULV, axis, pumpULV], [null, gasket, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:5}));
Carpenter.addRecipe(<Forestry:ffarm:4>.withTag({FarmBlock:6}), [[null, steelGearS, null],
	[pumpULV, axis, pumpULV], [null, gasket, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:6}));
Carpenter.addRecipe(<Forestry:ffarm:4>.withTag({FarmBlock:7}), [[null, steelGearS, null],
	[pumpULV, axis, pumpULV], [null, gasket, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:7}));
Carpenter.addRecipe(<Forestry:ffarm:4>.withTag({FarmBlock:8}), [[null, steelGearS, null],
	[pumpULV, axis, pumpULV], [null, gasket, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:8}));
Carpenter.addRecipe(<Forestry:ffarm:4>.withTag({FarmBlock:9}), [[null, steelGearS, null],
	[pumpULV, axis, pumpULV], [null, gasket, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:9}));
Carpenter.addRecipe(<Forestry:ffarm:4>.withTag({FarmBlock:10}), [[null, steelGearS, null],
	[pumpULV, axis, pumpULV], [null, gasket, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:10}));
// --- Farm Control
Carpenter.addRecipe(<Forestry:ffarm:5>.withTag({FarmBlock:0}), [[null, steelGearS, null],
	[basicChip, axis, basicChip],[null, filter, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:0}));
Carpenter.addRecipe(<Forestry:ffarm:5>.withTag({FarmBlock:1}), [[null, steelGearS, null],
	[basicChip, axis, basicChip],[null, filter, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:1}));
Carpenter.addRecipe(<Forestry:ffarm:5>.withTag({FarmBlock:2}), [[null, steelGearS, null],
	[basicChip, axis, basicChip],[null, filter, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:2}));
Carpenter.addRecipe(<Forestry:ffarm:5>.withTag({FarmBlock:3}), [[null, steelGearS, null],
	[basicChip, axis, basicChip],[null, filter, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:3}));
Carpenter.addRecipe(<Forestry:ffarm:5>.withTag({FarmBlock:4}), [[null, steelGearS, null],
	[basicChip, axis, basicChip],[null, filter, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:4}));
Carpenter.addRecipe(<Forestry:ffarm:5>.withTag({FarmBlock:5}), [[null, steelGearS, null],
	[basicChip, axis, basicChip],[null, filter, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:5}));
Carpenter.addRecipe(<Forestry:ffarm:5>.withTag({FarmBlock:6}), [[null, steelGearS, null],
	[basicChip, axis, basicChip],[null, filter, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:6}));
Carpenter.addRecipe(<Forestry:ffarm:5>.withTag({FarmBlock:7}), [[null, steelGearS, null],
	[basicChip, axis, basicChip],[null, filter, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:7}));
Carpenter.addRecipe(<Forestry:ffarm:5>.withTag({FarmBlock:8}), [[null, steelGearS, null],
	[basicChip, axis, basicChip],[null, filter, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:8}));
Carpenter.addRecipe(<Forestry:ffarm:5>.withTag({FarmBlock:9}), [[null, steelGearS, null],
	[basicChip, axis, basicChip],[null, filter, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:9}));
Carpenter.addRecipe(<Forestry:ffarm:5>.withTag({FarmBlock:10}), [[null, steelGearS, null],
	[basicChip, axis, basicChip],[null, filter, null]], rsLiq * 144, 300, <Forestry:ffarm>.withTag({FarmBlock:10}));
//Mixer.addRecipe(output, liquidOutput, [input1, input2, input3, input4], liquidInput, durationTicks, euPerTick);
/*
recipes.remove(compost);	# n/a	mixer
// Mixer.addRecipe (compost, null, [wheat * 4, dirtAny], liquidWater * 100, 64, 8);
// Mixer.addRecipe (compost, null, [fAsh * 4, dirtAny], liquidWater * 100, 64, 8);
// Mixer.addRecipe (compost, null, [gtAsh * 4, dirtAny], liquidWater * 100, 64, 8);
// Mixer.addRecipe (compost, null, [icAsh * 4, dirtAny], liquidWater * 100, 64, 8);
*/
recipes.remove(sturdyCasing);
recipes.addShaped(sturdyCasing, [
	[null, craftingToolScrewdriver, null],
	[<ore:screwBronze>, <gregtech:gt.meta.machine:8610>, <ore:screwBronze>],
	[null, <ore:screwBronze>, null]]);
// Assembler.addRecipe(<Forestry:sturdyMachine>, <gregtech:gt.blockcasings:1>, <gregtech:gt.metaitem.01:17300> * 4, 800, 32);
Carpenter.addRecipe(sturdyCasing, [[null, null, null],
	[null, <gregtech:gt.meta.machine:8610>, null], [null, null, null]], 
	liquidWater *1000, 100, null);
// Carpenter.removeRecipe(hardenedCasing);
// Carpenter.removeRecipe(impregnatedCasing);
// recipes.remove(pulsatingMesh);	# n/a	loom
// Carpenter.removeRecipe(silkWoven);	# n/a	loom

Carpenter.removeRecipe(<Forestry:chipsets:*>);
/*
mods.MTUtilsGT.removeAllRecipes("gt.recipe.press", <Forestry:chipsets:0>);
mods.MTUtilsGT.removeAllRecipes("gt.recipe.press", <Forestry:chipsets:1>);
mods.MTUtilsGT.removeAllRecipes("gt.recipe.press", <Forestry:chipsets:2>);
mods.MTUtilsGT.removeAllRecipes("gt.recipe.press", <Forestry:chipsets:3>);
Carpenter.addRecipe(<Forestry:chipsets>, [[screwFe, foilIron, screwFe],
	[circPart1, <gregtech:gt.meta.plateTiny:260>, circPart1],
	[screwFe, foilIron, screwFe]],rsLiq * 720, 100, circBoardCu);
Carpenter.addRecipe(<Forestry:chipsets:1>, [[screwBronze, foilBronze, screwBronze],
	[circPart1, <gregtech:gt.meta.plateTiny:8610>, circPart1],
	[screwBronze, foilBronze, screwBronze]], rsLiq * 720, 400, circBoardCu);
Carpenter.addRecipe(<Forestry:chipsets:2>, [[steelScrew, foilSteel, steelScrew],
	[circPart3, <gregtech:gt.meta.plateTiny:8630>, circPart3],
	[steelScrew, foilSteel, steelScrew]], rsLiq * 720, 400, circBoardAu);
Carpenter.addRecipe(<Forestry:chipsets:3>, [[screwInvar, foilInvar, screwInvar],
	[circPart3, <gregtech:gt.meta.plateTiny:8661>, circPart3],
	[screwInvar, foilInvar, screwInvar]], rsLiq * 720, 400, circBoardAu);
*/
// recycling exploit

Carpenter.addRecipe(<Forestry:chipsets:0>, [[screwTin, foilTin, screwTin],
	[null, <gregtech:gt.meta.casingSmall:500>, null],[screwTin, foilTin, screwTin]],
	rsLiq * 864, 50, circBoardCu);
Carpenter.addRecipe(<Forestry:chipsets:1>, [[foilBronze, bronzeItemCasing, screwBronze],
	[circPart1, bronzePlate, circPart1],[screwBronze, bronzeItemCasing, foilBronze]],
	rsLiq * 864, 200, circBoardCu);
Carpenter.addRecipe(<Forestry:chipsets:2>, [[foilIron, ironItemCasing, screwFe],
	[circPart3, plateIron, circPart3], [screwFe, ironItemCasing, foilIron]],
	rsLiq *864, 200, circBoardAu);
Carpenter.addRecipe(<Forestry:chipsets:3>, [[screwGold, foilGold, screwGold],
	[circPart3, <gregtech:gt.meta.plate:790>, circPart3], [screwGold, foilGold, screwGold]],
	rsLiq * 864, 150,circBoardAu);


// Integrated chipsets
recipes.remove(<Genetics:misc:9>);
Carpenter.addRecipe(<Genetics:misc:9>, [[screwInvar, foilInvar, <minecraft:glowstone_dust>],
	[circPart3, <gregtech:gt.meta.casingSmall:8661>, circPart3], [<minecraft:glowstone_dust>, foilInvar, screwInvar]], rsLiq * 720, 100, circBoardCu);

ThermionicFabricator.removeCast(tubeCopper);
ThermionicFabricator.removeCast(tubeTin);
ThermionicFabricator.removeCast(tubeBronze);
ThermionicFabricator.removeCast(tubeIron);
ThermionicFabricator.removeCast(tubeGold);
ThermionicFabricator.removeCast(tubeDiamond);
ThermionicFabricator.removeCast(tubeObsidian);
ThermionicFabricator.removeCast(tubeBlaze);
if (loadedMods in "IC2") {
  ThermionicFabricator.removeCast(tubeRubber);
}
ThermionicFabricator.removeCast(tubeEmerald);
ThermionicFabricator.removeCast(tubeApatine);
ThermionicFabricator.removeCast(tubeLapis);
ThermionicFabricator.removeCast(tubeEnder);
// Carpenter.removeRecipe(impregnatedStick);	# n/a	bath
Carpenter.removeRecipe(pulpWood);	# shredder
recipes.remove(<Forestry:canEmpty>);
// Assembler.addRecipe(<Forestry:canEmpty>, <gregtech:gt.metaitem.01:17057> * 2, <minecraft:glass_pane>, 120, 8);
// Assembler.addRecipe(tubeEnder * 4, enderEye * 2, endStone * 5, moltenGlass * 72, 64, 32);
<Forestry:canEmpty>.addTooltip(disText);

// --- Backs ---
recipes.remove(<Forestry:adventurerBag>);
recipes.remove(<Forestry:apiaristBag>);
recipes.remove(<Forestry:minerBag>);
recipes.remove(<Forestry:diggerBag>);
recipes.remove(<Forestry:foresterBag>);
recipes.remove(<Forestry:hunterBag>);
recipes.remove(<Forestry:builderBag>);
// recipes.remove(<Forestry:lepidopteristBag>);
recipes.addShapeless(<Forestry:minerBag>, [<Forestry:minerBag>]);
recipes.addShapeless(<Forestry:diggerBag>, [<Forestry:diggerBag>]);
recipes.addShapeless(<Forestry:foresterBag>, [<Forestry:foresterBag>]);
recipes.addShapeless(<Forestry:hunterBag>, [<Forestry:hunterBag>]);
recipes.addShapeless(<Forestry:builderBag>, [<Forestry:builderBag>]);
recipes.addShapeless(<Forestry:adventurerBag>, [<Forestry:adventurerBag>]);
Carpenter.removeRecipe(<Forestry:adventurerBagT2>);
Carpenter.removeRecipe(<Forestry:minerBagT2>);
Carpenter.removeRecipe(<Forestry:diggerBagT2>);
Carpenter.removeRecipe(<Forestry:foresterBagT2>);
Carpenter.removeRecipe(<Forestry:hunterBagT2>);
Carpenter.removeRecipe(<Forestry:builderBagT2>);
// --- Adventurer's Backpack
recipes.addShaped(<Forestry:adventurerBag>, [
	[cottonWeave, <minecraft:bone>, cottonWeave],
	[cuirboulli, <minecraft:bone>, cuirboulli],
	[cuirboulli, cuirboulli, cuirboulli]]);
// --- Adventurer's Backpack Woven
Carpenter.addRecipe(<Forestry:adventurerBagT2>, [[silkWoven, clasp, silkWoven],
	[silkWoven, silkWoven, silkWoven],
	[silkWoven, silkWoven, silkWoven]],
	<liquid:seedoil> * 500, 600, <Forestry:adventurerBag>);
// --- Apiarist's Backpack
recipes.addShaped(<Forestry:apiaristBag>, [
	[cottonWeave, <Forestry:apicultureChest>, cottonWeave],
	[cuirboulli, cottonWeave, cuirboulli],
	[cuirboulli, cuirboulli, cuirboulli]]);
// // --- Lepidopterist's Backpack
// recipes.addShaped(<Forestry:lepidopteristBag>, [
	// [cottonWeave, <Forestry:lepidopterology>, cottonWeave],
	// [cuirboulli, cottonWeave, cuirboulli],
	// [cuirboulli, cuirboulli, cuirboulli]]);
// --- Miner's Backpack
recipes.addShaped(<Forestry:minerBag>, [
//	[cottonWeave, <ore:crushedPurifiedLignite>, cottonWeave],
//	[cuirboulli, <ore:crushedPurifiedLignite>, cuirboulli],
	[cottonWeave, <gregtech:gt.meta.crushed:*>, cottonWeave],
	[cuirboulli, <gregtech:gt.meta.crushed:*>, cuirboulli],
	[cuirboulli, cuirboulli, cuirboulli]]);
// --- Miner's Backpack Woven
Carpenter.addRecipe(<Forestry:minerBagT2>, [[silkWoven, clasp, silkWoven],
	[silkWoven, silkWoven, silkWoven],
	[silkWoven, silkWoven, silkWoven]],
	<liquid:seedoil> * 500, 600, <Forestry:minerBag>);
// --- Digger's Backpack
recipes.addShaped(<Forestry:diggerBag>, [
	[cottonWeave, <ore:stoneAnyStone>, cottonWeave],
	[cuirboulli, <ore:stoneAnyStone>, cuirboulli],
	[cuirboulli, cuirboulli, cuirboulli]]);
// --- Digger's Backpack Woven
Carpenter.addRecipe(<Forestry:diggerBagT2>, [[silkWoven, clasp, silkWoven],
	[silkWoven, silkWoven, silkWoven],
	[silkWoven, silkWoven, silkWoven]],
	<liquid:seedoil> * 500, 600, <Forestry:diggerBag>);
// --- Forester's Backpack
recipes.addShaped(<Forestry:foresterBag>, [
	[cottonWeave, <ore:logWood>, cottonWeave],
	[cuirboulli, <ore:logWood>, cuirboulli],
	[cuirboulli, cuirboulli, cuirboulli]]);
// --- Forester's Backpack Woven
Carpenter.addRecipe(<Forestry:foresterBagT2>, [[silkWoven, clasp, silkWoven],
	[silkWoven, silkWoven, silkWoven],
	[silkWoven, silkWoven, silkWoven]],
	<liquid:seedoil> * 500, 600, <Forestry:foresterBag>);
// --- Hunter's Backpack
recipes.addShaped(<Forestry:hunterBag>, [
	[cottonWeave, <minecraft:feather>, cottonWeave],
	[cuirboulli, <minecraft:feather>, cuirboulli],
	[cuirboulli, cuirboulli, cuirboulli]]);
// --- Hunter's Backpack Woven
Carpenter.addRecipe(<Forestry:hunterBagT2>, [[silkWoven, clasp, silkWoven],
	[silkWoven, silkWoven, silkWoven],
	[silkWoven, silkWoven, silkWoven]],
	<liquid:seedoil> * 500, 600, <Forestry:hunterBag>);
// --- Builder's Backpack
recipes.addShaped(<Forestry:builderBag>, [
	[cottonWeave, <minecraft:fence>, cottonWeave],
	[cuirboulli, <minecraft:fence>, cuirboulli],
	[cuirboulli, cuirboulli, cuirboulli]]);
// --- Builder's Backpack Woven
Carpenter.addRecipe(<Forestry:builderBagT2>, [[silkWoven, clasp, silkWoven],
	[silkWoven, silkWoven, silkWoven],
	[silkWoven, silkWoven, silkWoven]],
	<liquid:seedoil> * 500, 600, <Forestry:builderBag>);


// --- Loot tables ---
vanilla.loot.removeChestLoot("naturalistChest", scoopFT);


// mods.forestry.Centrifuge.addRecipe([item %t], itemIn, tTime)
// mods.forestry.Fermenter.addRecipe(fluidOut, itemIn, fluidInID, tAmount, fMultiple )
// mods.forestry.Fermenter.addFuel(thing, tProcessRate, tDurationUsed)
// mods.forestry.Moistener.addRecipe(dirt, raw, tTime)
// mods.forestry.Squeezer.addRecipe(fluidOut, [output %t], [inputs], tTime)
// mods.forestry.Still.addRecipe(liqour, mash, tTime)

// Reinforced casing
recipes.addShaped(<Genetics:misc:0>, [[plateIron, plateIron, plateIron],[<ore:craftingToolScrewdriver>, sturdyCasing, <ore:craftingToolHardHammer>], [plateIron, plateIron, plateIron]]);
